#include "global.h"
#include "achievements.h"
#include "bg.h"
#include "comfy_anim.h"
#include "decompress.h"
#include "event_data.h"
#include "graphics.h"
#include "gpu_regs.h"
#include "main.h"
#include "map_name_popup.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "script.h"
#include "sound.h"
#include "sprite.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "window.h"
#include "constants/songs.h"

extern bool32 RadioPopup_IsActive(void);

#define tState data[0]
#define tTimer data[1]
#define tWindowId data[2]
#define tAchievementId data[3]
#define tSpriteId data[4]
#define tAnimId data[5]
#define tYOffset data[6]
#define tSavedBg0VOffset data[7]
#define ACHIEVEMENT_POPUP_ICON_TAG 0xACE0
#define ACHIEVEMENT_POPUP_WINDOW_WIDTH 15
#define ACHIEVEMENT_POPUP_ICON_X 124
#define ACHIEVEMENT_POPUP_ICON_Y 32
#define ACHIEVEMENT_POPUP_OFFSCREEN_Y 48
#define ACHIEVEMENT_POPUP_SLIDE_DURATION 18
#define ACHIEVEMENT_POPUP_ICON_SIZE (4 * TILE_SIZE_4BPP)

static void Task_AchievementPopup(u8 taskId);
static u8 GetAchievementPopupTaskId(void);
static bool32 IsAchievementPopupActive(void);
static enum AchievementId PeekQueuedAchievement(void);
static bool32 RemoveQueuedAchievement(enum AchievementId id);
static void StartAchievementPopupSlide(u8 taskId, s16 from, s16 to, u16 duration, ComfyAnimEasingFunc easingFunc);
static bool8 UpdateAchievementPopupSlide(u8 taskId);
static void SetAchievementPopupOffset(u8 taskId, s16 yOffset);
static void DestroyAchievementPopup(u8 taskId);
static bool8 ShouldYieldAchievementPopup(void);
static u8 CreateAchievementPopupIcon(enum AchievementTier tier);

enum
{
    POPUP_STATE_INIT,
    POPUP_STATE_SLIDE_IN,
    POPUP_STATE_WAIT,
    POPUP_STATE_SLIDE_OUT,
    POPUP_STATE_CLEANUP,
    POPUP_STATE_DESTROY,
};

static const struct WindowTemplate sPopupWindowTemplate =
{
    .bg = 0,
    .tilemapLeft = 14,
    .tilemapTop = 1,
    .width = ACHIEVEMENT_POPUP_WINDOW_WIDTH,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x240,
};

struct AchievementBallIconGfx
{
    const u32 *tiles;
    const u16 *palette;
};

static const struct AchievementBallIconGfx sBallIconGfxByTier[] =
{
    [ACH_TIER_BRONZE] =
    {
        .tiles = gBallGfx_Poke,
        .palette = gBallPal_Poke,
    },
    [ACH_TIER_SILVER] =
    {
        .tiles = gBallGfx_Great,
        .palette = gBallPal_Great,
    },
    [ACH_TIER_GOLD] =
    {
        .tiles = gBallGfx_Ultra,
        .palette = gBallPal_Ultra,
    },
    [ACH_TIER_PLATINUM] =
    {
        .tiles = gBallGfx_Master,
        .palette = gBallPal_Master,
    },
};

static const struct OamData sOamData_BallIcon =
{
    .y = 0,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(16x16),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(16x16),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sAnim_BallIcon[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnims_BallIcon[] =
{
    sAnim_BallIcon,
};

static const struct SpriteTemplate sSpriteTemplate_BallIcon =
{
    .tileTag = ACHIEVEMENT_POPUP_ICON_TAG,
    .paletteTag = ACHIEVEMENT_POPUP_ICON_TAG,
    .oam = &sOamData_BallIcon,
    .anims = sAnims_BallIcon,
    .callback = SpriteCallbackDummy,
};

static u8 GetAchievementPopupTaskId(void)
{
    return FindTaskIdByFunc(Task_AchievementPopup);
}

static bool32 IsAchievementPopupActive(void)
{
    return GetAchievementPopupTaskId() != TASK_NONE;
}

bool32 AchievementPopup_IsActive(void)
{
    return IsAchievementPopupActive();
}

static enum AchievementId PeekQueuedAchievement(void)
{
    return gSaveBlock1Ptr->achievements.popupQueue[0] - 1;
}

static bool32 RemoveQueuedAchievement(enum AchievementId id)
{
    u8 i;

    if (gSaveBlock1Ptr->achievements.popupQueue[0] != id + 1)
        return FALSE;

    for (i = 1; i < ACHIEVEMENT_POPUP_QUEUE_SIZE; i++)
        gSaveBlock1Ptr->achievements.popupQueue[i - 1] = gSaveBlock1Ptr->achievements.popupQueue[i];
    gSaveBlock1Ptr->achievements.popupQueue[ACHIEVEMENT_POPUP_QUEUE_SIZE - 1] = 0;
    return TRUE;
}

void Achievement_TryShowQueuedPopup(void)
{
    u8 taskId;
    enum AchievementId id;

    Achievement_EnsureSaveInitialized();
    if (gSaveBlock1Ptr->achievements.popupQueue[0] == 0
     || IsAchievementPopupActive()
     || RadioPopup_IsActive()
     || GetMapNamePopUpWindowId() != WINDOW_NONE
     || GetStartMenuWindowId() != WINDOW_NONE
     || IsOverworldLinkActive()
     || gPaletteFade.active
     || ScriptContext_IsEnabled()
     || ArePlayerFieldControlsLocked()
     || gMain.callback2 != CB2_Overworld
     || GetTaskCount() >= NUM_TASKS)
        return;

    id = PeekQueuedAchievement();
    if (Achievement_GetById(id) == NULL)
    {
        RemoveQueuedAchievement(id);
        return;
    }
    taskId = CreateTask(Task_AchievementPopup, 0);
    gTasks[taskId].tWindowId = WINDOW_NONE;
    gTasks[taskId].tSpriteId = MAX_SPRITES;
    gTasks[taskId].tAnimId = INVALID_COMFY_ANIM;
    gTasks[taskId].tAchievementId = id;
    gTasks[taskId].tSavedBg0VOffset = GetGpuReg(REG_OFFSET_BG0VOFS);
}

void Achievement_HidePopup(void)
{
    u8 taskId = GetAchievementPopupTaskId();

    if (taskId != TASK_NONE)
        DestroyAchievementPopup(taskId);
}

static void DrawAchievementPopup(u8 windowId, enum AchievementId id)
{
    const struct Achievement *achievement = Achievement_GetById(id);
    u8 countX;

    FillWindowPixelBuffer(windowId, PIXEL_FILL(1));
    DrawStdWindowFrame(windowId, FALSE);
    AddTextPrinterParameterized(windowId, FONT_NORMAL, COMPOUND_STRING("New trophy!"), 8, 1, TEXT_SKIP_DRAW, NULL);
    AddTextPrinterParameterized(windowId, FONT_NORMAL, achievement->name, 22, 15, TEXT_SKIP_DRAW, NULL);

    ConvertIntToDecimalStringN(gStringVar1, Achievement_CountUnlocked(), STR_CONV_MODE_LEFT_ALIGN, 3);
    ConvertIntToDecimalStringN(gStringVar2, Achievement_GetCount(), STR_CONV_MODE_LEFT_ALIGN, 3);
    StringExpandPlaceholders(gStringVar4, COMPOUND_STRING("{STR_VAR_1}/{STR_VAR_2}"));
    countX = ACHIEVEMENT_POPUP_WINDOW_WIDTH * 8 - 8 - GetStringWidth(FONT_SMALL, gStringVar4, 0);
    AddTextPrinterParameterized(windowId, FONT_SMALL, gStringVar4, countX, 1, TEXT_SKIP_DRAW, NULL);
    CopyWindowToVram(windowId, COPYWIN_FULL);
}

static void Task_AchievementPopup(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    if (ShouldYieldAchievementPopup())
    {
        DestroyAchievementPopup(taskId);
        return;
    }

    switch (task->tState)
    {
    case POPUP_STATE_INIT:
        task->tWindowId = AddWindow(&sPopupWindowTemplate);
        if (task->tWindowId == WINDOW_NONE)
        {
            DestroyAchievementPopup(taskId);
            return;
        }
        if (!RemoveQueuedAchievement(task->tAchievementId))
        {
            DestroyAchievementPopup(taskId);
            return;
        }
        SetAchievementPopupOffset(taskId, ACHIEVEMENT_POPUP_OFFSCREEN_Y);
        PutWindowTilemap(task->tWindowId);
        DrawAchievementPopup(task->tWindowId, task->tAchievementId);
        PlaySE(SE_M_HARDEN);
        task->tSpriteId = CreateAchievementPopupIcon(Achievement_GetById(task->tAchievementId)->tier);
        if (task->tSpriteId != MAX_SPRITES)
        {
            gSprites[task->tSpriteId].x = ACHIEVEMENT_POPUP_ICON_X;
            gSprites[task->tSpriteId].y = ACHIEVEMENT_POPUP_ICON_Y - ACHIEVEMENT_POPUP_OFFSCREEN_Y;
            gSprites[task->tSpriteId].oam.priority = 0;
        }
        StartAchievementPopupSlide(taskId, ACHIEVEMENT_POPUP_OFFSCREEN_Y, 0, ACHIEVEMENT_POPUP_SLIDE_DURATION, ComfyAnimEasing_EaseOutCubic);
        task->tState = POPUP_STATE_SLIDE_IN;
        break;
    case POPUP_STATE_SLIDE_IN:
        if (UpdateAchievementPopupSlide(taskId))
        {
            task->tTimer = 0;
            task->tState = POPUP_STATE_WAIT;
        }
        break;
    case POPUP_STATE_WAIT:
        if (++task->tTimer > 150 || JOY_NEW(A_BUTTON | B_BUTTON))
        {
            StartAchievementPopupSlide(taskId, task->tYOffset, ACHIEVEMENT_POPUP_OFFSCREEN_Y, ACHIEVEMENT_POPUP_SLIDE_DURATION, ComfyAnimEasing_EaseInCubic);
            task->tState = POPUP_STATE_SLIDE_OUT;
        }
        break;
    case POPUP_STATE_SLIDE_OUT:
        if (UpdateAchievementPopupSlide(taskId))
            task->tState = POPUP_STATE_CLEANUP;
        break;
    case POPUP_STATE_CLEANUP:
        // Clear the window while it is offscreen, then wait for the queued
        // tilemap copy to reach VRAM before restoring the BG offset.
        if (task->tWindowId != WINDOW_NONE)
            ClearStdWindowAndFrame(task->tWindowId, TRUE);
        task->tState = POPUP_STATE_DESTROY;
        break;
    case POPUP_STATE_DESTROY:
        DestroyAchievementPopup(taskId);
        break;
    }
}

static void StartAchievementPopupSlide(u8 taskId, s16 from, s16 to, u16 duration, ComfyAnimEasingFunc easingFunc)
{
    struct ComfyAnimEasingConfig config;
    struct Task *task = &gTasks[taskId];

    if (task->tAnimId != INVALID_COMFY_ANIM)
        ReleaseComfyAnim(task->tAnimId);

    SetAchievementPopupOffset(taskId, from);
    InitComfyAnimConfig_Easing(&config);
    config.durationFrames = duration;
    config.easingFunc = easingFunc;
    config.from = Q_24_8(from);
    config.to = Q_24_8(to);
    task->tAnimId = CreateComfyAnim_Easing(&config);
    if (task->tAnimId == INVALID_COMFY_ANIM)
        SetAchievementPopupOffset(taskId, to);
}

static bool8 UpdateAchievementPopupSlide(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ComfyAnim *anim;

    if (task->tAnimId == INVALID_COMFY_ANIM)
        return TRUE;

    anim = &gComfyAnims[task->tAnimId];
    if (!anim->inUse)
    {
        task->tAnimId = INVALID_COMFY_ANIM;
        return TRUE;
    }

    TryAdvanceComfyAnim(anim);
    SetAchievementPopupOffset(taskId, ReadComfyAnimValueSmooth(anim));
    if (!anim->completed)
        return FALSE;

    ReleaseComfyAnim(task->tAnimId);
    task->tAnimId = INVALID_COMFY_ANIM;
    return TRUE;
}

static void SetAchievementPopupOffset(u8 taskId, s16 yOffset)
{
    struct Task *task = &gTasks[taskId];

    task->tYOffset = yOffset;
    SetGpuReg(REG_OFFSET_BG0VOFS, task->tSavedBg0VOffset + yOffset);
    if (task->tSpriteId != MAX_SPRITES)
        gSprites[task->tSpriteId].y = ACHIEVEMENT_POPUP_ICON_Y - yOffset;
}

static void DestroyAchievementPopup(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    if (task->tAnimId != INVALID_COMFY_ANIM)
    {
        ReleaseComfyAnim(task->tAnimId);
        task->tAnimId = INVALID_COMFY_ANIM;
    }
    if (task->tSpriteId != MAX_SPRITES)
    {
        FreeSpriteTilesByTag(ACHIEVEMENT_POPUP_ICON_TAG);
        FreeSpritePaletteByTag(ACHIEVEMENT_POPUP_ICON_TAG);
        DestroySprite(&gSprites[task->tSpriteId]);
        task->tSpriteId = MAX_SPRITES;
    }
    if (task->tWindowId != WINDOW_NONE)
    {
        if (task->tState != POPUP_STATE_DESTROY)
            ClearStdWindowAndFrame(task->tWindowId, TRUE);
        RemoveWindow(task->tWindowId);
        task->tWindowId = WINDOW_NONE;
    }
    SetGpuReg(REG_OFFSET_BG0VOFS, task->tSavedBg0VOffset);
    DestroyTask(taskId);
}

static bool8 ShouldYieldAchievementPopup(void)
{
    return gMain.callback2 != CB2_Overworld
        || RadioPopup_IsActive()
        || GetMapNamePopUpWindowId() != WINDOW_NONE
        || GetStartMenuWindowId() != WINDOW_NONE
        || IsOverworldLinkActive()
        || gPaletteFade.active
        || ScriptContext_IsEnabled()
        || ArePlayerFieldControlsLocked();
}

static u8 CreateAchievementPopupIcon(enum AchievementTier tier)
{
    struct CompressedSpriteSheet spriteSheet;
    struct SpritePalette spritePalette;
    u8 spriteId;

    if (tier >= ARRAY_COUNT(sBallIconGfxByTier))
        tier = ACH_TIER_BRONZE;

    spriteSheet.data = sBallIconGfxByTier[tier].tiles;
    spriteSheet.size = ACHIEVEMENT_POPUP_ICON_SIZE;
    spriteSheet.tag = ACHIEVEMENT_POPUP_ICON_TAG;
    LoadCompressedSpriteSheet(&spriteSheet);

    spritePalette.data = sBallIconGfxByTier[tier].palette;
    spritePalette.tag = ACHIEVEMENT_POPUP_ICON_TAG;
    LoadSpritePalette(&spritePalette);

    spriteId = CreateSprite(&sSpriteTemplate_BallIcon, 0, 0, 0);
    if (spriteId == MAX_SPRITES)
    {
        FreeSpriteTilesByTag(ACHIEVEMENT_POPUP_ICON_TAG);
        FreeSpritePaletteByTag(ACHIEVEMENT_POPUP_ICON_TAG);
    }
    return spriteId;
}

#undef tState
#undef tTimer
#undef tWindowId
#undef tAchievementId
#undef tSpriteId
#undef tAnimId
#undef tYOffset
#undef tSavedBg0VOffset
#undef ACHIEVEMENT_POPUP_ICON_TAG
#undef ACHIEVEMENT_POPUP_WINDOW_WIDTH
#undef ACHIEVEMENT_POPUP_ICON_X
#undef ACHIEVEMENT_POPUP_ICON_Y
#undef ACHIEVEMENT_POPUP_OFFSCREEN_Y
#undef ACHIEVEMENT_POPUP_SLIDE_DURATION
#undef ACHIEVEMENT_POPUP_ICON_SIZE
