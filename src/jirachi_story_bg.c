#include "global.h"
#include "bg.h"
#include "gpu_regs.h"
#include "main.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "random.h"
#include "script.h"
#include "sprite.h"
#include "task.h"
#include "text.h"
#include "constants/rgb.h"

// ============================================================================
// HLW Jirachi / Celebi story scene
//
// IMPORTANT DESIGN:
// This is NOT an overlay on the live overworld anymore.
//
// The previous experiments corrupted the field because the overworld already
// owns the normal BG VRAM regions. This version temporarily owns the rendering
// callback while the story is running, draws one static BG, keeps BG0 + OBJ
// available for msgbox/showmonpic, and then asks the normal field-return code
// to reload the map completely when the story ends.
//
// No ui_main_menu.c.
// No painting.c modifications.
// No scroll.
// No attempt to manually restore field tile graphics.
// ============================================================================

#define STORY_BG_CHARBASE       0
#define STORY_BG_MAPBASE        30
#define STORY_BG_PRIORITY       3
#define STORY_BG_PALETTE_SLOT   13

#define STORY_STAR_TAG           5610
#define STORY_STAR_COUNT         16
#define STORY_STAR_PRIORITY      2

#define STORY_MAP_WIDTH         30
#define STORY_MAP_HEIGHT        20
#define STORY_HW_MAP_WIDTH      32
#define STORY_HW_MAP_HEIGHT     32

#define STORY_BG_CNT \
    (STORY_BG_PRIORITY | (STORY_BG_CHARBASE << 2) | (STORY_BG_MAPBASE << 8))

#define STORY_BG_CHAR_ADDR \
    ((void *)(VRAM + STORY_BG_CHARBASE * 0x4000))

#define STORY_BG_MAP_ADDR \
    ((volatile u16 *)(VRAM + STORY_BG_MAPBASE * 0x0800))

// Generated automatically by the normal graphics rules from the PNG.
static const u32 sStoryBgTiles[] =
    INCBIN_U32("graphics/story/jirachi_story_bg.4bpp");

static const u16 sStoryBgPalette[] =
    INCBIN_U16("graphics/story/jirachi_story_bg.gbapal");


// Small standalone falling stars. These are intentionally local to this story
// scene; no ui_main_menu.c code or assets are reused.
static const u32 sStoryStarTiles[][8] =
{
    // Small cross
    {
        0x00000000,
        0x00010000,
        0x00111000,
        0x00010000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
    },
    // Larger sparkle
    {
        0x00010000,
        0x00010000,
        0x00111000,
        0x01111100,
        0x00111000,
        0x00010000,
        0x00010000,
        0x00000000,
    },
};

static const u16 sStoryStarPalette[] =
{
    RGB(0, 0, 0),
    RGB(31, 31, 31),
    RGB(22, 24, 31),
    RGB(0, 0, 0),
};

static const struct SpriteSheet sStoryStarSheet =
{
    .data = sStoryStarTiles,
    .size = sizeof(sStoryStarTiles),
    .tag = STORY_STAR_TAG,
};

static const struct SpritePalette sStoryStarSpritePalette =
{
    .data = sStoryStarPalette,
    .tag = STORY_STAR_TAG,
};

static const struct OamData sStoryStarOam =
{
    .shape = SPRITE_SHAPE(8x8),
    .size = SPRITE_SIZE(8x8),
    .priority = STORY_STAR_PRIORITY,
};

static const union AnimCmd sStoryStarAnimSmall[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END,
};

static const union AnimCmd sStoryStarAnimLarge[] =
{
    ANIMCMD_FRAME(1, 0),
    ANIMCMD_END,
};

static const union AnimCmd *const sStoryStarAnimTable[] =
{
    sStoryStarAnimSmall,
    sStoryStarAnimLarge,
};

static void SpriteCB_JirachiStoryStar(struct Sprite *sprite);

static const struct SpriteTemplate sStoryStarTemplate =
{
    .tileTag = STORY_STAR_TAG,
    .paletteTag = STORY_STAR_TAG,
    .oam = &sStoryStarOam,
    .anims = sStoryStarAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_JirachiStoryStar,
};

static EWRAM_DATA u8 sStoryStarSpriteIds[STORY_STAR_COUNT];

// Authored 30x20 map supplied by the user.
static const u16 sStoryBgMap30x20[] =
    INCBIN_U16("graphics/story/jirachi_story_bg.bin");

// Snapshot of sprites that existed before entering the story.
// showmonpic sprites are created later, so they are intentionally not hidden.
#define STORY_SPRITE_MASK_WORDS ((MAX_SPRITES + 31) / 32)
static EWRAM_DATA u32 sStoryOldSpriteMask[STORY_SPRITE_MASK_WORDS];
static EWRAM_DATA bool8 sStorySceneActive = FALSE;

static void StoryMaskSet(u32 spriteId)
{
    sStoryOldSpriteMask[spriteId / 32] |= 1u << (spriteId % 32);
}

static bool8 StoryMaskGet(u32 spriteId)
{
    return (sStoryOldSpriteMask[spriteId / 32] & (1u << (spriteId % 32))) != 0;
}

static void HidePreStorySprites(void)
{
    u32 i;

    for (i = 0; i < MAX_SPRITES; i++)
    {
        if (StoryMaskGet(i) && gSprites[i].inUse)
            gSprites[i].invisible = TRUE;
    }
}

static void UploadStoryTilemap(void)
{
    u32 x;
    u32 y;
    volatile u16 *dst = STORY_BG_MAP_ADDR;

    // Hardware text BG is 32x32. Clear it, then copy exactly the authored
    // 30x20 visible area (240x160).
    for (y = 0; y < STORY_HW_MAP_HEIGHT; y++)
    {
        for (x = 0; x < STORY_HW_MAP_WIDTH; x++)
            dst[y * STORY_HW_MAP_WIDTH + x] = 0;
    }

    for (y = 0; y < STORY_MAP_HEIGHT; y++)
    {
        for (x = 0; x < STORY_MAP_WIDTH; x++)
        {
            u16 entry = sStoryBgMap30x20[y * STORY_MAP_WIDTH + x];

            dst[y * STORY_HW_MAP_WIDTH + x] =
                (entry & 0x0FFF)
                | (STORY_BG_PALETTE_SLOT << 12);
        }
    }
}


static void SpriteCB_JirachiStoryStar(struct Sprite *sprite)
{
    // data[0] = frames per downward pixel (1..4)
    // data[1] = movement timer
    if (++sprite->data[1] >= sprite->data[0])
    {
        sprite->data[1] = 0;
        sprite->y++;
    }

    // Tiny side drift so the fall does not look perfectly mechanical.
    if ((gMain.vblankCounter1 & 15) == (sprite->data[2] & 15))
    {
        if (sprite->data[3] == 0)
            sprite->x++;
        else if (sprite->data[3] == 1)
            sprite->x--;
    }

    if (sprite->y > DISPLAY_HEIGHT + 8)
    {
        sprite->y = -8 - (Random2() % 32);
        sprite->x = Random2() % DISPLAY_WIDTH;
        sprite->data[0] = 1 + (Random2() % 4);
        sprite->data[2] = Random2() & 15;
        sprite->data[3] = Random2() % 3; // right / left / no drift
        StartSpriteAnim(sprite, Random2() & 1);
    }

    if (sprite->x < -8)
        sprite->x = DISPLAY_WIDTH + 8;
    else if (sprite->x > DISPLAY_WIDTH + 8)
        sprite->x = -8;
}

static void CreateJirachiStoryStars(void)
{
    u32 i;

    LoadSpriteSheet(&sStoryStarSheet);
    LoadSpritePalette(&sStoryStarSpritePalette);

    for (i = 0; i < STORY_STAR_COUNT; i++)
    {
        u8 spriteId = CreateSprite(
            &sStoryStarTemplate,
            Random2() % DISPLAY_WIDTH,
            Random2() % DISPLAY_HEIGHT,
            100
        );

        sStoryStarSpriteIds[i] = spriteId;

        if (spriteId == MAX_SPRITES)
            continue;

        gSprites[spriteId].data[0] = 1 + (Random2() % 4);
        gSprites[spriteId].data[1] = 0;
        gSprites[spriteId].data[2] = Random2() & 15;
        gSprites[spriteId].data[3] = Random2() % 3;
        StartSpriteAnim(&gSprites[spriteId], Random2() & 1);
    }
}

static void DestroyJirachiStoryStars(void)
{
    u32 i;

    for (i = 0; i < STORY_STAR_COUNT; i++)
    {
        u8 spriteId = sStoryStarSpriteIds[i];

        if (spriteId != MAX_SPRITES
         && spriteId < MAX_SPRITES
         && gSprites[spriteId].inUse)
        {
            DestroySprite(&gSprites[spriteId]);
        }

        sStoryStarSpriteIds[i] = MAX_SPRITES;
    }

    FreeSpriteTilesByTag(STORY_STAR_TAG);
    FreeSpritePaletteByTag(STORY_STAR_TAG);
}

static void VBlankCB_JirachiStory(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_JirachiStory(void)
{
    // This is the critical piece the previous version was missing:
    // the normal overworld calls ScriptContext_RunScript() every frame BEFORE
    // RunTasks(). Without it, waitmessage / waitbuttonpress never resume after
    // the first text box, which looks exactly like a softlock on A.
    ScriptContext_RunScript();

    // Match the normal overworld ordering. RunTasks() already runs
    // Task_DrawFieldMessage, which advances the field text printer exactly once
    // per frame. Do NOT call RunTextPrinters() again here or dialogue gets
    // double-ticked and can advance/disappear without the intended A/B wait.
    RunTasks();
    AnimateSprites();

    // Object-event sprites existed before this scene, so hide them after their
    // callbacks ran. showmonpic sprites were created later and remain visible.
    HidePreStorySprites();

    BuildOamBuffer();

    // Needed by BG0 windows used for dialogue/showmonpic.
    DoScheduledBgTilemapCopiesToVram();

    UpdatePaletteFade();

    // Keep the scene registers authoritative. We intentionally do NOT run the
    // overworld renderer while this callback owns the screen.
    SetGpuReg(REG_OFFSET_BG3CNT, STORY_BG_CNT);
    SetGpuReg(REG_OFFSET_BG3HOFS, 0);
    SetGpuReg(REG_OFFSET_BG3VOFS, 0);

    SetGpuReg(
        REG_OFFSET_DISPCNT,
        (GetGpuReg(REG_OFFSET_DISPCNT) & ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON))
        | DISPCNT_BG0_ON
        | DISPCNT_BG3_ON
        | DISPCNT_OBJ_ON
    );
}

// Script-callable.
// The script already calls this after FADE_TO_BLACK.
void HLW_StartJirachiStoryBackground(struct ScriptContext *ctx)
{
    u32 i;

    (void)ctx;

    if (sStorySceneActive)
        return;

    memset(sStoryOldSpriteMask, 0, sizeof(sStoryOldSpriteMask));

    // Remember only sprites that already exist now (player/NPCs/field effects).
    for (i = 0; i < MAX_SPRITES; i++)
    {
        if (gSprites[i].inUse)
            StoryMaskSet(i);
    }

    // We are taking ownership of BG rendering now. Discard pending field BG
    // copies so an old map copy cannot overwrite the story after we upload it.
    ClearScheduledBgCopiesToVram();

    // It is intentional to overwrite the field's BG charblock here.
    // At the end we DO NOT attempt to restore it manually; the normal
    // CB2_ReturnToFieldContinueScriptPlayMapMusic path reloads the map.
    CpuCopy16(sStoryBgTiles, STORY_BG_CHAR_ADDR, sizeof(sStoryBgTiles));
    UploadStoryTilemap();

    LoadPalette(
        sStoryBgPalette,
        BG_PLTT_ID(STORY_BG_PALETTE_SLOT),
        PLTT_SIZE_4BPP
    );

    // The caller is fully black at this point. Keep the new bank black until
    // the following FADE_FROM_BLACK command.
    BlendPalettes(1u << STORY_BG_PALETTE_SLOT, 16, RGB_BLACK);

    HidePreStorySprites();
    CreateJirachiStoryStars();

    SetGpuReg(REG_OFFSET_BG3CNT, STORY_BG_CNT);
    SetGpuReg(REG_OFFSET_BG3HOFS, 0);
    SetGpuReg(REG_OFFSET_BG3VOFS, 0);

    SetGpuReg(
        REG_OFFSET_DISPCNT,
        (GetGpuReg(REG_OFFSET_DISPCNT) & ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON))
        | DISPCNT_BG0_ON
        | DISPCNT_BG3_ON
        | DISPCNT_OBJ_ON
    );

    sStorySceneActive = TRUE;

    SetVBlankCallback(VBlankCB_JirachiStory);
    SetMainCallback2(CB2_JirachiStory);
}

// Script-callable.
// The script calls this after FADE_TO_BLACK at the end of the slideshow.
void HLW_StopJirachiStoryBackground(struct ScriptContext *ctx)
{
    (void)ctx;

    if (!sStorySceneActive)
        return;

    sStorySceneActive = FALSE;
    DestroyJirachiStoryStars();

    // This branch does not expose ScriptContext::waitAfterCallNative.
    // The Pory script places an explicit `waitstate` immediately after this
    // callnative, which yields the global script context while the field reloads.
    // ReturnToFieldLocal is a small state machine driven by gMain.state.
    // Start it from state 0 every time.
    gMain.state = 0;

    // Do NOT manually restore charblocks/screenblocks. That was the source of
    // the broken map in the previous versions. Ask the normal overworld return
    // path to rebuild the field from its real map/tileset data and continue
    // this same script afterward.
    SetVBlankCallback(NULL);
    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}
