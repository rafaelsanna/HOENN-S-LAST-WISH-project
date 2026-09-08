/*
 * Dark Suicune cutscene
 *
 * Flow:
 * - bg01 scrolls quickly right-to-left behind the static bg02 mountains.
 * - Dark Suicune runs in from the right, pauses in the centre, then exits left.
 * - A black flash changes to the black-background close-up, which zooms in
 *   through an affine BG before the scene fades back to black.
 *
 * Entry: special StartDarkSuicuneScene
 */

#include "global.h"
#include "bg.h"
#include "dark_suicune_scene.h"
#include "decompress.h"
#include "gpu_regs.h"
#include "main.h"
#include "menu.h"
#include "menu_helpers.h"
#include "overworld.h"
#include "palette.h"
#include "scanline_effect.h"
#include "script.h"
#include "sprite.h"
#include "task.h"
#include "util.h"
#include "constants/rgb.h"

// -------------------------------------------------------------------------
// Graphics
// -------------------------------------------------------------------------

static const u16 sDarkSuicuneBg01_Pal[] = INCBIN_U16("graphics/dark_suicune/bg01.gbapal");
static const u32 sDarkSuicuneBg01_Gfx[] = INCBIN_U32("graphics/dark_suicune/bg01.4bpp.smol");
static const u16 sDarkSuicuneBg01_Map[] = INCBIN_U16("graphics/dark_suicune/bg01.bin");

static const u16 sDarkSuicuneBg02_Pal[] = INCBIN_U16("graphics/dark_suicune/bg02.gbapal");
static const u32 sDarkSuicuneBg02_Gfx[] = INCBIN_U32("graphics/dark_suicune/bg02.4bpp.smol");
static const u16 sDarkSuicuneBg02_Map[] = INCBIN_U16("graphics/dark_suicune/bg02.bin");

static const u16 sDarkSuicuneRun_Pal[] = INCBIN_U16("graphics/dark_suicune/run.gbapal");
static const u32 sDarkSuicuneRun_Gfx[] = INCBIN_U32("graphics/dark_suicune/run.4bpp.smol");

// The close-up uses an affine 8bpp BG so it can actually zoom in. Its source
// PNG's palette index 0 is the transparent green guide color; we replace that
// palette entry with black when this part of the scene is loaded.
static const u16 sDarkSuicuneClose_Pal[] = INCBIN_U16("graphics/dark_suicune/close.gbapal");
static const u32 sDarkSuicuneClose_Gfx[] = INCBIN_U32("graphics/dark_suicune/close.8bpp.smol");

// -------------------------------------------------------------------------
// VRAM layout
// -------------------------------------------------------------------------

#define DARK_SUICUNE_BG01_CHARBASE       0
#define DARK_SUICUNE_BG02_CHARBASE       1
#define DARK_SUICUNE_BG01_SCREENBASE     28
#define DARK_SUICUNE_BG02_SCREENBASE     30

#define DARK_SUICUNE_CLOSE_CHARBASE      0
#define DARK_SUICUNE_CLOSE_SCREENBASE    24
#define DARK_SUICUNE_CLOSE_ART_WIDTH     16
#define DARK_SUICUNE_CLOSE_ART_HEIGHT    10
#define DARK_SUICUNE_CLOSE_ART_X          8
#define DARK_SUICUNE_CLOSE_ART_Y         11
#define DARK_SUICUNE_CLOSE_TEXTURE_CX   128
#define DARK_SUICUNE_CLOSE_TEXTURE_CY   128

// The supplied bg tilemaps are 30 x 20 (240 x 160), whereas GBA text BGs
// have a 32-tile stride. The final two columns duplicate the left edge of
// bg01, allowing a clean 240-pixel horizontal loop without a blank seam.
#define DARK_SUICUNE_MAP_WIDTH           30
#define DARK_SUICUNE_MAP_HEIGHT          20
#define DARK_SUICUNE_HW_MAP_WIDTH        32

// -------------------------------------------------------------------------
// Animation constants
// -------------------------------------------------------------------------

#define TAG_DARK_SUICUNE_RUN          0xD640
#define DARK_SUICUNE_RUN_START_X      (DISPLAY_WIDTH + 32)
#define DARK_SUICUNE_RUN_CENTER_X     (DISPLAY_WIDTH / 2)
#define DARK_SUICUNE_RUN_END_X        (-32)
#define DARK_SUICUNE_RUN_Y            128
#define DARK_SUICUNE_RUN_SPEED          4
#define DARK_SUICUNE_SCROLL_SPEED       5
#define DARK_SUICUNE_RUN_PAUSE_FRAMES  48
#define DARK_SUICUNE_BLACK_FLASH_FRAMES 8
#define DARK_SUICUNE_CLOSE_START_SCALE 256
#define DARK_SUICUNE_CLOSE_END_SCALE   160
#define DARK_SUICUNE_CLOSE_ZOOM_SPEED    2
#define DARK_SUICUNE_CLOSE_HOLD_FRAMES  90

enum
{
    DARK_SUICUNE_SCENE_INIT,
    DARK_SUICUNE_SCENE_FADE_IN,
    DARK_SUICUNE_SCENE_RUN_IN,
    DARK_SUICUNE_SCENE_RUN_PAUSE,
    DARK_SUICUNE_SCENE_RUN_OUT,
    DARK_SUICUNE_SCENE_FLASH_TO_BLACK,
    DARK_SUICUNE_SCENE_BLACK_FLASH,
    DARK_SUICUNE_SCENE_CLOSE_FADE_IN,
    DARK_SUICUNE_SCENE_CLOSE_ZOOM,
    DARK_SUICUNE_SCENE_CLOSE_HOLD,
    DARK_SUICUNE_SCENE_FINAL_FADE,
    DARK_SUICUNE_SCENE_DONE,
};

#define tState      data[0]
#define tTimer      data[1]
#define tRunSprite  data[2]
#define tRunX       data[3]
#define tBgScroll   data[4]
#define tCloseScale data[5]

// -------------------------------------------------------------------------
// Running sprite
// -------------------------------------------------------------------------

static const struct OamData sOam_DarkSuicuneRun =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(64x64),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(64x64),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sAnim_DarkSuicuneRun[] =
{
    ANIMCMD_FRAME(0,   6),
    ANIMCMD_FRAME(64,  6),
    ANIMCMD_FRAME(128, 6),
    ANIMCMD_FRAME(192, 6),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_DarkSuicuneRun[] =
{
    sAnim_DarkSuicuneRun,
};

static const struct CompressedSpriteSheet sSpriteSheet_DarkSuicuneRun =
{
    .data = sDarkSuicuneRun_Gfx,
    .size = 0x2000, // 4 frames x 64x64 pixels, 4bpp
    .tag = TAG_DARK_SUICUNE_RUN,
};

static const struct SpritePalette sSpritePal_DarkSuicuneRun =
{
    .data = sDarkSuicuneRun_Pal,
    .tag = TAG_DARK_SUICUNE_RUN,
};

static const struct SpriteTemplate sSpriteTemplate_DarkSuicuneRun =
{
    .tileTag = TAG_DARK_SUICUNE_RUN,
    .paletteTag = TAG_DARK_SUICUNE_RUN,
    .oam = &sOam_DarkSuicuneRun,
    .anims = sAnims_DarkSuicuneRun,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static void VBlankCB_DarkSuicuneScene(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_DarkSuicuneScene(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void CopyDarkSuicuneTextMap(u16 *dest, const u16 *src, u8 paletteNum, bool8 repeatHorizontally)
{
    u32 row;
    u32 col;

    CpuFill16(0, dest, BG_SCREEN_SIZE);
    for (row = 0; row < DARK_SUICUNE_MAP_HEIGHT; row++)
    {
        for (col = 0; col < DARK_SUICUNE_HW_MAP_WIDTH; col++)
        {
            u16 entry;

            if (col >= DARK_SUICUNE_MAP_WIDTH && !repeatHorizontally)
                continue;

            entry = src[row * DARK_SUICUNE_MAP_WIDTH + (col % DARK_SUICUNE_MAP_WIDTH)];
            dest[row * DARK_SUICUNE_HW_MAP_WIDTH + col] = (entry & 0x0FFF) | (paletteNum << 12);
        }
    }
}

static void LoadDarkSuicuneRunningBgs(void)
{
    DecompressDataWithHeaderVram(sDarkSuicuneBg01_Gfx, (void *)BG_CHAR_ADDR(DARK_SUICUNE_BG01_CHARBASE));
    DecompressDataWithHeaderVram(sDarkSuicuneBg02_Gfx, (void *)BG_CHAR_ADDR(DARK_SUICUNE_BG02_CHARBASE));

    CopyDarkSuicuneTextMap((u16 *)BG_SCREEN_ADDR(DARK_SUICUNE_BG01_SCREENBASE), sDarkSuicuneBg01_Map, 0, TRUE);
    CopyDarkSuicuneTextMap((u16 *)BG_SCREEN_ADDR(DARK_SUICUNE_BG02_SCREENBASE), sDarkSuicuneBg02_Map, 1, FALSE);

    LoadPalette(sDarkSuicuneBg01_Pal, BG_PLTT_ID(0), PLTT_SIZE_4BPP);
    LoadPalette(sDarkSuicuneBg02_Pal, BG_PLTT_ID(1), PLTT_SIZE_4BPP);

    SetGpuReg(REG_OFFSET_BG0CNT,
              BGCNT_PRIORITY(1) | BGCNT_CHARBASE(DARK_SUICUNE_BG01_CHARBASE)
              | BGCNT_SCREENBASE(DARK_SUICUNE_BG01_SCREENBASE)
              | BGCNT_16COLOR | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG1CNT,
              BGCNT_PRIORITY(0) | BGCNT_CHARBASE(DARK_SUICUNE_BG02_CHARBASE)
              | BGCNT_SCREENBASE(DARK_SUICUNE_BG02_SCREENBASE)
              | BGCNT_16COLOR | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG1HOFS, 0);
    SetGpuReg(REG_OFFSET_BG1VOFS, 0);
    SetGpuReg(REG_OFFSET_DISPCNT,
              DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP
              | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON);
}

static void UpdateDarkSuicuneRunningBg(s16 *data)
{
    tBgScroll += DARK_SUICUNE_SCROLL_SPEED;
    if (tBgScroll >= DISPLAY_WIDTH)
        tBgScroll -= DISPLAY_WIDTH;

    // Increasing HOFS moves the image left on screen.
    SetGpuReg(REG_OFFSET_BG0HOFS, tBgScroll);
}

static void SetDarkSuicuneCloseAffine(u16 scale)
{
    struct BgAffineDstData affine;

    DoBgAffineSet(&affine,
                  DARK_SUICUNE_CLOSE_TEXTURE_CX << 8,
                  DARK_SUICUNE_CLOSE_TEXTURE_CY << 8,
                  DISPLAY_WIDTH / 2,
                  DISPLAY_HEIGHT / 2,
                  scale,
                  scale,
                  0);
    SetGpuReg(REG_OFFSET_BG2PA, affine.pa);
    SetGpuReg(REG_OFFSET_BG2PB, affine.pb);
    SetGpuReg(REG_OFFSET_BG2PC, affine.pc);
    SetGpuReg(REG_OFFSET_BG2PD, affine.pd);
    SetGpuReg(REG_OFFSET_BG2X_L, (u16)affine.dx);
    SetGpuReg(REG_OFFSET_BG2X_H, (u16)(affine.dx >> 16));
    SetGpuReg(REG_OFFSET_BG2Y_L, (u16)affine.dy);
    SetGpuReg(REG_OFFSET_BG2Y_H, (u16)(affine.dy >> 16));
}

static void LoadDarkSuicuneCloseBg(void)
{
    u8 *tilemap = (u8 *)BG_SCREEN_ADDR(DARK_SUICUNE_CLOSE_SCREENBASE);
    u32 row;
    u32 col;

    // Tile 0 is a guaranteed empty/black tile. The artwork starts at tile 1,
    // so transparent regions outside the 128x80 close-up stay black even as
    // the affine BG zooms.
    CpuFill32(0, (void *)BG_CHAR_ADDR(DARK_SUICUNE_CLOSE_CHARBASE), 64);
    DecompressDataWithHeaderVram(sDarkSuicuneClose_Gfx,
                                 (u8 *)BG_CHAR_ADDR(DARK_SUICUNE_CLOSE_CHARBASE) + 64);
    CpuFill32(0, tilemap, 32 * 32);
    for (row = 0; row < DARK_SUICUNE_CLOSE_ART_HEIGHT; row++)
    {
        for (col = 0; col < DARK_SUICUNE_CLOSE_ART_WIDTH; col++)
        {
            tilemap[(DARK_SUICUNE_CLOSE_ART_Y + row) * 32 + DARK_SUICUNE_CLOSE_ART_X + col]
                = row * DARK_SUICUNE_CLOSE_ART_WIDTH + col + 1;
        }
    }

    LoadPalette(sDarkSuicuneClose_Pal, BG_PLTT_ID(0), sizeof(sDarkSuicuneClose_Pal));
    // The PNG's indexed transparency color is green. BG pixel zero is
    // transparent, but making the shared backdrop color black also protects
    // the empty affine map outside the artwork.
    FillPalette(RGB_BLACK, BG_PLTT_ID(0), sizeof(u16));

    SetGpuReg(REG_OFFSET_BG2CNT,
              BGCNT_PRIORITY(0) | BGCNT_CHARBASE(DARK_SUICUNE_CLOSE_CHARBASE)
              | BGCNT_SCREENBASE(DARK_SUICUNE_CLOSE_SCREENBASE)
              | BGCNT_256COLOR | BGCNT_AFF256x256);
    SetDarkSuicuneCloseAffine(DARK_SUICUNE_CLOSE_START_SCALE);
    SetGpuReg(REG_OFFSET_DISPCNT,
              DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG2_ON);
}

static void Task_DarkSuicuneScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (tState)
    {
    case DARK_SUICUNE_SCENE_INIT:
    {
        u8 spriteId;

        SetVBlankHBlankCallbacksToNull();
        ClearScheduledBgCopiesToVram();
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        SetGpuReg(REG_OFFSET_WININ, 0);
        SetGpuReg(REG_OFFSET_WINOUT, 0);
        SetGpuReg(REG_OFFSET_WIN0H, 0);
        SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WIN1H, 0);
        SetGpuReg(REG_OFFSET_WIN1V, 0);
        CpuFill32(0, (void *)OAM, OAM_SIZE);
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        ScanlineEffect_Stop();
        FillPalette(RGB_BLACK, 0, PLTT_SIZE);

        LoadDarkSuicuneRunningBgs();
        LoadCompressedSpriteSheet(&sSpriteSheet_DarkSuicuneRun);
        LoadSpritePalette(&sSpritePal_DarkSuicuneRun);
        spriteId = CreateSprite(&sSpriteTemplate_DarkSuicuneRun,
                                DARK_SUICUNE_RUN_START_X,
                                DARK_SUICUNE_RUN_Y,
                                0);
        tRunSprite = spriteId;
        tRunX = DARK_SUICUNE_RUN_START_X;
        if (spriteId != MAX_SPRITES)
            gSprites[spriteId].invisible = TRUE;

        tTimer = 0;
        tBgScroll = 0;
        SetVBlankCallback(VBlankCB_DarkSuicuneScene);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        SetMainCallback2(CB2_DarkSuicuneScene);
        tState = DARK_SUICUNE_SCENE_FADE_IN;
        break;
    }

    case DARK_SUICUNE_SCENE_FADE_IN:
        UpdateDarkSuicuneRunningBg(data);
        if (!gPaletteFade.active)
        {
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].invisible = FALSE;
            tState = DARK_SUICUNE_SCENE_RUN_IN;
        }
        break;

    case DARK_SUICUNE_SCENE_RUN_IN:
        UpdateDarkSuicuneRunningBg(data);
        tRunX -= DARK_SUICUNE_RUN_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;
        if (tRunX <= DARK_SUICUNE_RUN_CENTER_X)
        {
            tRunX = DARK_SUICUNE_RUN_CENTER_X;
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].x = tRunX;
            tTimer = 0;
            tState = DARK_SUICUNE_SCENE_RUN_PAUSE;
        }
        break;

    case DARK_SUICUNE_SCENE_RUN_PAUSE:
        UpdateDarkSuicuneRunningBg(data);
        if (++tTimer >= DARK_SUICUNE_RUN_PAUSE_FRAMES)
            tState = DARK_SUICUNE_SCENE_RUN_OUT;
        break;

    case DARK_SUICUNE_SCENE_RUN_OUT:
        UpdateDarkSuicuneRunningBg(data);
        tRunX -= DARK_SUICUNE_RUN_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;
        if (tRunX <= DARK_SUICUNE_RUN_END_X)
        {
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].invisible = TRUE;
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            tState = DARK_SUICUNE_SCENE_FLASH_TO_BLACK;
        }
        break;

    case DARK_SUICUNE_SCENE_FLASH_TO_BLACK:
        if (!gPaletteFade.active)
        {
            tTimer = 0;
            tState = DARK_SUICUNE_SCENE_BLACK_FLASH;
        }
        break;

    case DARK_SUICUNE_SCENE_BLACK_FLASH:
        if (++tTimer >= DARK_SUICUNE_BLACK_FLASH_FRAMES)
        {
            SetGpuReg(REG_OFFSET_DISPCNT, 0);
            LoadDarkSuicuneCloseBg();
            BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
            tState = DARK_SUICUNE_SCENE_CLOSE_FADE_IN;
        }
        break;

    case DARK_SUICUNE_SCENE_CLOSE_FADE_IN:
        if (!gPaletteFade.active)
        {
            tCloseScale = DARK_SUICUNE_CLOSE_START_SCALE;
            tTimer = 0;
            tState = DARK_SUICUNE_SCENE_CLOSE_ZOOM;
        }
        break;

    case DARK_SUICUNE_SCENE_CLOSE_ZOOM:
        if (tCloseScale > DARK_SUICUNE_CLOSE_END_SCALE)
        {
            tCloseScale -= DARK_SUICUNE_CLOSE_ZOOM_SPEED;
            if (tCloseScale < DARK_SUICUNE_CLOSE_END_SCALE)
                tCloseScale = DARK_SUICUNE_CLOSE_END_SCALE;
            SetDarkSuicuneCloseAffine(tCloseScale);
        }
        else
        {
            tTimer = 0;
            tState = DARK_SUICUNE_SCENE_CLOSE_HOLD;
        }
        break;

    case DARK_SUICUNE_SCENE_CLOSE_HOLD:
        if (++tTimer >= DARK_SUICUNE_CLOSE_HOLD_FRAMES)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            tState = DARK_SUICUNE_SCENE_FINAL_FADE;
        }
        break;

    case DARK_SUICUNE_SCENE_FINAL_FADE:
        if (!gPaletteFade.active)
            tState = DARK_SUICUNE_SCENE_DONE;
        break;

    case DARK_SUICUNE_SCENE_DONE:
    default:
        SetVBlankCallback(NULL);
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        DestroyTask(taskId);
        ScriptContext_Enable();
        SetMainCallback2(CB2_ReturnToField);
        break;
    }
}

void StartDarkSuicuneScene(void)
{
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    ScanlineEffect_Stop();
    CreateTask(Task_DarkSuicuneScene, 0);
}

#undef tState
#undef tTimer
#undef tRunSprite
#undef tRunX
#undef tBgScroll
#undef tCloseScale
