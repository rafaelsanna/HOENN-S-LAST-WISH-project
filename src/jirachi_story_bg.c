#include "global.h"
#include "event_object_movement.h"
#include "gpu_regs.h"
#include "malloc.h"
#include "palette.h"
#include "sprite.h"
#include "task.h"
#include "constants/rgb.h"

// ============================================================================
// Jirachi / Celebi story static background
//
// This file is intentionally independent from ui_main_menu.c and painting.c.
// It uses a dedicated 128x128 repeating background supplied for the story.
//
// IMPORTANT:
// - Overworld BG1/BG2/BG3 all use charblock 0.
// - BG0 windows/text use charblock 2.
// - showmonpic creates an OBJ Pokémon plus a BG0 window (baseBlock 100).
// - Therefore charblock 3 is the clean bank for the story art.
// - The 0x2000-byte story tiles occupy screenblocks 24..27 inside charblock 3;
//   screenblock 28 starts immediately after them and is used for our tilemap.
//   BG1/BG2 are hidden while the story is active.
//
// Script flow:
//   fadescreen FADE_TO_BLACK
//   callnative HLW_StartJirachiStoryBackground
//   fadescreen FADE_FROM_BLACK
//   ... showmonpic / msgbox sequence ...
//   fadescreen FADE_TO_BLACK
//   callnative HLW_StopJirachiStoryBackground
//   fadescreen FADE_FROM_BLACK
//
// While active, overworld object events are made invisible at the ObjectEvent
// level, so player/NPC sprites stay hidden even while showmonpic is repeatedly
// created/destroyed. Their original invisibility states are restored afterward.
// ============================================================================

#define STORY_BG_CHARBASE            3
#define STORY_BG_MAPBASE             28
#define STORY_BG_PRIORITY            3
#define STORY_BG_PALETTE_SLOT        1

#define STORY_BG_GFX_SIZE            0x2000
#define STORY_BG_MAP_SIZE            0x0800
#define STORY_BG_BACKUP_SIZE         STORY_BG_MAP_SIZE

#define STORY_BG_CNT \
    (STORY_BG_PRIORITY | (STORY_BG_CHARBASE << 2) | (STORY_BG_MAPBASE << 8))

#define STORY_BG_CHAR_ADDR \
    ((void *)(VRAM + (STORY_BG_CHARBASE * 0x4000)))

#define STORY_BG_MAP_ADDR \
    ((void *)(VRAM + (STORY_BG_MAPBASE * 0x0800)))

static const u32 sStoryBgTiles[] =
    INCBIN_U32("graphics/story/jirachi_story_bg.4bpp");
static const u16 sStoryBgTilemap[] =
    INCBIN_U16("graphics/story/jirachi_story_bg.bin");
static const u16 sStoryBgPalette[] =
    INCBIN_U16("graphics/story/jirachi_story_bg.gbapal");

struct StoryBgState
{
    bool8 active;
    u8 taskId;

    u16 savedDispcnt;
    u16 savedBg3Cnt;
    u16 savedBg3Hofs;
    u16 savedBg3Vofs;

    u16 savedPalette[PLTT_SIZE_4BPP / sizeof(u16)];
    bool8 savedObjectInvisible[OBJECT_EVENTS_COUNT];

    void *vramBackup;
};

static EWRAM_DATA struct StoryBgState sStoryBgState = {0};
static EWRAM_DATA u16 sStoryBgMapWithPalette[BG_SCREEN_SIZE / sizeof(u16)];

static void BuildStoryTilemap(void)
{
    u32 i;

    for (i = 0; i < ARRAY_COUNT(sStoryBgMapWithPalette); i++)
    {
        sStoryBgMapWithPalette[i] =
            (sStoryBgTilemap[i] & 0x0FFF)
            | (STORY_BG_PALETTE_SLOT << 12);
    }
}

static void HideStoryObjectEvents(void)
{
    u32 i;

    for (i = 0; i < OBJECT_EVENTS_COUNT; i++)
    {
        if (!gObjectEvents[i].active)
            continue;

        // Persistently hide at the ObjectEvent level.
        gObjectEvents[i].invisible = TRUE;

        // Also force the current sprite invisible immediately.
        if (gObjectEvents[i].spriteId < MAX_SPRITES
         && gSprites[gObjectEvents[i].spriteId].inUse)
        {
            gSprites[gObjectEvents[i].spriteId].invisible = TRUE;
        }
    }
}

static void Task_KeepJirachiStoryBackground(u8 taskId)
{
    if (!sStoryBgState.active)
    {
        DestroyTask(taskId);
        return;
    }

    // Use BG3 as the dedicated story plane. The overworld's BG0 remains
    // untouched for msgbox/showmonpic UI, while BG1/BG2 are hidden.
    SetGpuReg(REG_OFFSET_BG3CNT, STORY_BG_CNT);
    SetGpuReg(REG_OFFSET_BG3HOFS, 0);
    SetGpuReg(REG_OFFSET_BG3VOFS, 0);

    SetGpuReg(
        REG_OFFSET_DISPCNT,
        (sStoryBgState.savedDispcnt & ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON))
        | DISPCNT_BG0_ON
        | DISPCNT_BG3_ON
        | DISPCNT_OBJ_ON
    );

    HideStoryObjectEvents();
}

// Script-callable.
void HLW_StartJirachiStoryBackground(void)
{
    u32 i;
    u16 paletteOffset;

    if (sStoryBgState.active)
        return;

    memset(&sStoryBgState, 0, sizeof(sStoryBgState));
    sStoryBgState.taskId = TASK_NONE;

    // Only screenblock 28 belongs to the field (BG2 tilemap), so preserve
    // that 2 KB. Charblock 3 itself is intentionally unused by the normal
    // overworld layout and does not need an 8 KB backup.
    sStoryBgState.vramBackup = Alloc(STORY_BG_BACKUP_SIZE);
    if (sStoryBgState.vramBackup == NULL)
        return;

    CpuCopy16(
        STORY_BG_MAP_ADDR,
        sStoryBgState.vramBackup,
        STORY_BG_MAP_SIZE
    );

    sStoryBgState.savedDispcnt = GetGpuReg(REG_OFFSET_DISPCNT);
    sStoryBgState.savedBg3Cnt = GetGpuReg(REG_OFFSET_BG3CNT);
    sStoryBgState.savedBg3Hofs = GetGpuReg(REG_OFFSET_BG3HOFS);
    sStoryBgState.savedBg3Vofs = GetGpuReg(REG_OFFSET_BG3VOFS);

    paletteOffset = BG_PLTT_ID(STORY_BG_PALETTE_SLOT);
    for (i = 0; i < ARRAY_COUNT(sStoryBgState.savedPalette); i++)
        sStoryBgState.savedPalette[i] = gPlttBufferUnfaded[paletteOffset + i];

    for (i = 0; i < OBJECT_EVENTS_COUNT; i++)
        sStoryBgState.savedObjectInvisible[i] = gObjectEvents[i].invisible;

    BuildStoryTilemap();

    // IMPORTANT: charblock 3 is isolated from showmonpic's BG0 window data.
    // Previous revisions used charblock 1/0 and were visibly overwritten
    // whenever the Pokémon picture window changed.
    CpuCopy16(
        sStoryBgTiles,
        STORY_BG_CHAR_ADDR,
        STORY_BG_GFX_SIZE
    );
    CpuCopy16(
        sStoryBgMapWithPalette,
        STORY_BG_MAP_ADDR,
        STORY_BG_MAP_SIZE
    );

    LoadPalette(
        sStoryBgPalette,
        BG_PLTT_ID(STORY_BG_PALETTE_SLOT),
        PLTT_SIZE_4BPP
    );

    // The caller is already fully black. Keep this bank black until the
    // following FADE_FROM_BLACK begins.
    BlendPalettes(1u << STORY_BG_PALETTE_SLOT, 16, RGB_BLACK);

    sStoryBgState.active = TRUE;

    SetGpuReg(REG_OFFSET_BG3CNT, STORY_BG_CNT);
    SetGpuReg(REG_OFFSET_BG3HOFS, 0);
    SetGpuReg(REG_OFFSET_BG3VOFS, 0);
    SetGpuReg(
        REG_OFFSET_DISPCNT,
        (sStoryBgState.savedDispcnt & ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON))
        | DISPCNT_BG0_ON
        | DISPCNT_BG3_ON
        | DISPCNT_OBJ_ON
    );

    HideStoryObjectEvents();

    // Run after normal field/script tasks. This prevents object-event refreshes
    // from making the player/NPCs visible for a frame between showmonpic swaps.
    sStoryBgState.taskId = CreateTask(Task_KeepJirachiStoryBackground, 255);
}

// Script-callable.
void HLW_StopJirachiStoryBackground(void)
{
    u32 i;
    u16 paletteOffset;

    if (!sStoryBgState.active)
        return;

    sStoryBgState.active = FALSE;

    if (sStoryBgState.taskId != TASK_NONE
     && sStoryBgState.taskId < NUM_TASKS
     && gTasks[sStoryBgState.taskId].isActive)
    {
        DestroyTask(sStoryBgState.taskId);
    }

    // Restore the field BG2 tilemap we borrowed at screenblock 28.
    CpuCopy16(
        sStoryBgState.vramBackup,
        STORY_BG_MAP_ADDR,
        STORY_BG_MAP_SIZE
    );

    Free(sStoryBgState.vramBackup);
    sStoryBgState.vramBackup = NULL;

    SetGpuReg(REG_OFFSET_BG3CNT, sStoryBgState.savedBg3Cnt);
    SetGpuReg(REG_OFFSET_BG3HOFS, sStoryBgState.savedBg3Hofs);
    SetGpuReg(REG_OFFSET_BG3VOFS, sStoryBgState.savedBg3Vofs);
    SetGpuReg(REG_OFFSET_DISPCNT, sStoryBgState.savedDispcnt);

    paletteOffset = BG_PLTT_ID(STORY_BG_PALETTE_SLOT);
    CpuCopy16(
        sStoryBgState.savedPalette,
        &gPlttBufferUnfaded[paletteOffset],
        PLTT_SIZE_4BPP
    );

    // We are still inside FADE_TO_BLACK here. Keep the restored bank black;
    // the next FADE_FROM_BLACK will reveal the original field palette.
    FillPalette(RGB_BLACK, BG_PLTT_ID(STORY_BG_PALETTE_SLOT), PLTT_SIZE_4BPP);

    // Restore each active object's previous invisibility state.
    for (i = 0; i < OBJECT_EVENTS_COUNT; i++)
    {
        if (!gObjectEvents[i].active)
            continue;

        gObjectEvents[i].invisible = sStoryBgState.savedObjectInvisible[i];

        if (gObjectEvents[i].spriteId < MAX_SPRITES
         && gSprites[gObjectEvents[i].spriteId].inUse)
        {
            gSprites[gObjectEvents[i].spriteId].invisible =
                sStoryBgState.savedObjectInvisible[i];
        }
    }

    memset(&sStoryBgState, 0, sizeof(sStoryBgState));
}
