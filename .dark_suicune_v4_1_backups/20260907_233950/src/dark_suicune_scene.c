/*
 * Dark Suicune cutscene V4
 *
 * Flow:
 * - bg01 scrolls right-to-left and accelerates as Suicune's run animation speeds up.
 * - bg02 mountains stay as the original static BG for the entire running shot.
 * - Suicune enters from the right, keeps running in place at centre while only
 *   Suicune receives a slow affine zoom, then decelerates to a stop while its
 *   palette turns progressively red.
 * - A black flash changes to the reconstructed black-background close-up, which
 *   zooms in slowly before the scene fades back to black.
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

// The source close.bin is a normal text-BG tilemap and contains H/V flip bits.
// Affine BG maps cannot encode those flips, so close_affine.8bpp/.bin are a
// pre-flattened version of close.png + close.bin: flipped tiles are materialized
// as extra 8bpp tiles and the affine map contains only 8-bit tile indices.
static const u16 sDarkSuicuneClose_Pal[] = INCBIN_U16("graphics/dark_suicune/close.gbapal");
static const u32 sDarkSuicuneCloseAffine_Gfx[] = INCBIN_U32("graphics/dark_suicune/close_affine.8bpp");
static const u32 sDarkSuicuneCloseAffine_Map[] = INCBIN_U32("graphics/dark_suicune/close_affine.bin");

// -------------------------------------------------------------------------
// VRAM layout
// -------------------------------------------------------------------------

#define DARK_SUICUNE_BG01_CHARBASE       0
#define DARK_SUICUNE_BG02_CHARBASE       1
#define DARK_SUICUNE_BG01_SCREENBASE     28
#define DARK_SUICUNE_BG02_SCREENBASE     30

#define DARK_SUICUNE_CLOSE_CHARBASE      0
#define DARK_SUICUNE_CLOSE_SCREENBASE    24

// close_affine.bin is a 32x32 affine map. The original 240x160 composition
// occupies its upper-left 30x20 tiles. Center the affine transform on the
// Suicune face rather than the 256x256 texture center.
#define DARK_SUICUNE_CLOSE_TEXTURE_CX   120
#define DARK_SUICUNE_CLOSE_TEXTURE_CY    90

// The supplied text maps are 30x20 (240x160).
#define DARK_SUICUNE_MAP_WIDTH           30
#define DARK_SUICUNE_MAP_HEIGHT          20
#define DARK_SUICUNE_HW_MAP_WIDTH        32

// bg01 is not authored as a seamless 240px texture. A 256px hardware BG with
// a manual 240px reset necessarily exposes a discontinuity. Instead BG0 is
// 512px wide and is built as a palindromic strip: the whole source panorama,
// a short reflected turnaround, then the exact horizontal mirror. This keeps
// motion always right-to-left while making both wrap boundaries pixel-perfect.
#define DARK_SUICUNE_BG01_LOOP_WIDTH    512
#define DARK_SUICUNE_BG01_HALF_TILES     32

// -------------------------------------------------------------------------
// Animation constants
// -------------------------------------------------------------------------

#define TAG_DARK_SUICUNE_RUN              0xD640
#define DARK_SUICUNE_RUN_START_X          (DISPLAY_WIDTH + 32)
#define DARK_SUICUNE_RUN_CENTER_X         (DISPLAY_WIDTH / 2)
#define DARK_SUICUNE_RUN_Y                128
#define DARK_SUICUNE_RUN_MOVE_SPEED         2

#define DARK_SUICUNE_SCROLL_START_SPEED     4
#define DARK_SUICUNE_SCROLL_MAX_SPEED      14
#define DARK_SUICUNE_SCROLL_ACCEL_FRAMES   18
#define DARK_SUICUNE_SCROLL_DECEL_FRAMES    6

#define DARK_SUICUNE_SPRINT_FRAMES        216
#define DARK_SUICUNE_RUN_ZOOM_END_SCALE   192
#define DARK_SUICUNE_RUN_ZOOM_STEP_FRAMES   3

#define DARK_SUICUNE_RED_STEP_FRAMES        4
#define DARK_SUICUNE_RED_STOP_HOLD_FRAMES  30

#define DARK_SUICUNE_BLACK_FLASH_FRAMES     8
#define DARK_SUICUNE_CLOSE_START_SCALE     256
#define DARK_SUICUNE_CLOSE_END_SCALE       160
#define DARK_SUICUNE_CLOSE_ZOOM_SPEED        1
#define DARK_SUICUNE_CLOSE_HOLD_FRAMES     180

enum
{
    DARK_SUICUNE_RUN_ANIM_NORMAL,
    DARK_SUICUNE_RUN_ANIM_QUICK,
    DARK_SUICUNE_RUN_ANIM_FAST,
    DARK_SUICUNE_RUN_ANIM_FASTER,
    DARK_SUICUNE_RUN_ANIM_SPRINT,
    DARK_SUICUNE_RUN_ANIM_STOP,
};

enum
{
    DARK_SUICUNE_SCENE_INIT,
    DARK_SUICUNE_SCENE_FADE_IN,
    DARK_SUICUNE_SCENE_RUN_IN,
    DARK_SUICUNE_SCENE_SPRINT,
    DARK_SUICUNE_SCENE_RED_STOP,
    DARK_SUICUNE_SCENE_FLASH_TO_BLACK,
    DARK_SUICUNE_SCENE_BLACK_FLASH,
    DARK_SUICUNE_SCENE_CLOSE_FADE_IN,
    DARK_SUICUNE_SCENE_CLOSE_ZOOM,
    DARK_SUICUNE_SCENE_CLOSE_HOLD,
    DARK_SUICUNE_SCENE_FINAL_FADE,
    DARK_SUICUNE_SCENE_DONE,
};

#define tState          data[0]
#define tTimer          data[1]
#define tRunSprite      data[2]
#define tRunX           data[3]
#define tBgScroll       data[4]
#define tCloseScale     data[5]
#define tRunZoomScale   data[6]
#define tZoomTimer      data[7]
#define tBgSpeed        data[8]
#define tAccelTimer     data[9]
#define tRunAnimLevel   data[10]
#define tRedLevel       data[11]
#define tRedTimer       data[12]

EWRAM_DATA static u8 sDarkSuicuneRunMatrix = 0;

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

#define DARK_SUICUNE_RUN_ANIM(name, delay) \
static const union AnimCmd sAnim_DarkSuicuneRun_##name[] = \
{ \
    ANIMCMD_FRAME(0,   delay), \
    ANIMCMD_FRAME(64,  delay), \
    ANIMCMD_FRAME(128, delay), \
    ANIMCMD_FRAME(192, delay), \
    ANIMCMD_JUMP(0), \
}

DARK_SUICUNE_RUN_ANIM(Normal, 6);
DARK_SUICUNE_RUN_ANIM(Quick, 5);
DARK_SUICUNE_RUN_ANIM(Fast, 4);
DARK_SUICUNE_RUN_ANIM(Faster, 3);
DARK_SUICUNE_RUN_ANIM(Sprint, 2);

static const union AnimCmd sAnim_DarkSuicuneRun_Stop[] =
{
    ANIMCMD_FRAME(0, 255),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_DarkSuicuneRun[] =
{
    sAnim_DarkSuicuneRun_Normal,
    sAnim_DarkSuicuneRun_Quick,
    sAnim_DarkSuicuneRun_Fast,
    sAnim_DarkSuicuneRun_Faster,
    sAnim_DarkSuicuneRun_Sprint,
    sAnim_DarkSuicuneRun_Stop,
};

#undef DARK_SUICUNE_RUN_ANIM

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

static void SetDarkSuicuneRunScale(u16 scale)
{
    if (sDarkSuicuneRunMatrix != 0xFF)
        SetOamMatrix(sDarkSuicuneRunMatrix, scale, 0, 0, scale);
}

static void InitDarkSuicuneRunAffine(u8 spriteId)
{
    if (spriteId == MAX_SPRITES)
        return;

    sDarkSuicuneRunMatrix = AllocOamMatrix();
    if (sDarkSuicuneRunMatrix == 0xFF)
        return;

    SetDarkSuicuneRunScale(256);
    gSprites[spriteId].oam.affineMode = ST_OAM_AFFINE_DOUBLE;
    gSprites[spriteId].oam.matrixNum = sDarkSuicuneRunMatrix;
    CalcCenterToCornerVec(&gSprites[spriteId],
                          gSprites[spriteId].oam.shape,
                          gSprites[spriteId].oam.size,
                          gSprites[spriteId].oam.affineMode);
}

static u8 GetDarkSuicuneRunAnimForSpeed(u16 speed)
{
    if (speed >= 12)
        return DARK_SUICUNE_RUN_ANIM_SPRINT;
    if (speed >= 10)
        return DARK_SUICUNE_RUN_ANIM_FASTER;
    if (speed >= 8)
        return DARK_SUICUNE_RUN_ANIM_FAST;
    if (speed >= 6)
        return DARK_SUICUNE_RUN_ANIM_QUICK;
    return DARK_SUICUNE_RUN_ANIM_NORMAL;
}

static void SetDarkSuicuneRunAnimForSpeed(s16 *data)
{
    u8 anim;

    if (tRunSprite == MAX_SPRITES)
        return;

    anim = GetDarkSuicuneRunAnimForSpeed(tBgSpeed);
    if (tRunAnimLevel != anim)
    {
        tRunAnimLevel = anim;
        StartSpriteAnim(&gSprites[tRunSprite], anim);
    }
}

static void ApplyDarkSuicuneRedTint(s16 *data)
{
    u8 paletteNum;

    if (tRunSprite == MAX_SPRITES)
        return;

    paletteNum = gSprites[tRunSprite].oam.paletteNum;
    BlendPalette(OBJ_PLTT_ID(paletteNum), 16, tRedLevel, RGB_RED);

    // At coefficient 16 make the unfaded source red too. The following
    // fade-to-black then starts from the red silhouette instead of snapping
    // back to the original purple palette for one frame.
    if (tRedLevel >= 16)
        FillPalette(RGB_RED, OBJ_PLTT_ID(paletteNum) + 1, 15 * sizeof(u16));
}

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

static void CopyDarkSuicuneTextMap(u16 *dest, const u16 *src, u8 paletteNum)
{
    u32 row;
    u32 col;

    CpuFill16(0, dest, BG_SCREEN_SIZE);
    for (row = 0; row < DARK_SUICUNE_MAP_HEIGHT; row++)
    {
        for (col = 0; col < DARK_SUICUNE_MAP_WIDTH; col++)
        {
            u16 entry = src[row * DARK_SUICUNE_MAP_WIDTH + col];

            dest[row * DARK_SUICUNE_HW_MAP_WIDTH + col]
                = (entry & 0x0FFF) | (paletteNum << 12);
        }
    }
}

static u16 MirrorDarkSuicuneTextEntry(u16 entry)
{
    // Text BG bit 10 is horizontal flip. Toggling it mirrors the tile while
    // preserving tile number, vertical flip and palette number.
    return entry ^ (1 << 10);
}

static void SetDarkSuicuneWideMapEntry(u16 *dest, u32 x, u32 y, u16 entry)
{
    // A 512x256 text BG is two 32x32 screenblocks laid side by side.
    u32 screenBlock = x / 32;
    u32 localX = x % 32;

    dest[screenBlock * 32 * 32 + y * 32 + localX] = entry;
}

static void CopyDarkSuicuneLoopingBg01Map(u16 *dest, const u16 *src, u8 paletteNum)
{
    u32 row;
    u32 col;
    u16 halfRow[DARK_SUICUNE_BG01_HALF_TILES];

    // BG0 occupies screenblocks 28 and 29.
    CpuFill16(0, dest, BG_SCREEN_SIZE * 2);

    for (row = 0; row < DARK_SUICUNE_MAP_HEIGHT; row++)
    {
        // Preserve the entire original 30-tile row.
        for (col = 0; col < DARK_SUICUNE_MAP_WIDTH; col++)
        {
            u16 entry = src[row * DARK_SUICUNE_MAP_WIDTH + col];

            halfRow[col] = (entry & 0x0FFF) | (paletteNum << 12);
        }

        // Extend 240 -> 256 px with a reflected 16 px turnaround. This avoids
        // inserting an unrelated strip before the mirrored half begins.
        halfRow[30] = MirrorDarkSuicuneTextEntry(halfRow[29]);
        halfRow[31] = MirrorDarkSuicuneTextEntry(halfRow[28]);

        // First 256 px.
        for (col = 0; col < DARK_SUICUNE_BG01_HALF_TILES; col++)
            SetDarkSuicuneWideMapEntry(dest, col, row, halfRow[col]);

        // Second 256 px is the exact horizontal mirror of the first half.
        // Therefore x=255->256 and x=511->0 are both seamless reflection axes.
        for (col = 0; col < DARK_SUICUNE_BG01_HALF_TILES; col++)
        {
            u16 entry = MirrorDarkSuicuneTextEntry(
                halfRow[DARK_SUICUNE_BG01_HALF_TILES - 1 - col]);

            SetDarkSuicuneWideMapEntry(
                dest,
                DARK_SUICUNE_BG01_HALF_TILES + col,
                row,
                entry);
        }
    }
}

static void LoadDarkSuicuneRunningBgs(void)
{
    DecompressDataWithHeaderVram(sDarkSuicuneBg01_Gfx, (void *)BG_CHAR_ADDR(DARK_SUICUNE_BG01_CHARBASE));
    DecompressDataWithHeaderVram(sDarkSuicuneBg02_Gfx, (void *)BG_CHAR_ADDR(DARK_SUICUNE_BG02_CHARBASE));

    CopyDarkSuicuneLoopingBg01Map(
        (u16 *)BG_SCREEN_ADDR(DARK_SUICUNE_BG01_SCREENBASE),
        sDarkSuicuneBg01_Map,
        0);
    CopyDarkSuicuneTextMap(
        (u16 *)BG_SCREEN_ADDR(DARK_SUICUNE_BG02_SCREENBASE),
        sDarkSuicuneBg02_Map,
        1);

    LoadPalette(sDarkSuicuneBg01_Pal, BG_PLTT_ID(0), PLTT_SIZE_4BPP);
    LoadPalette(sDarkSuicuneBg02_Pal, BG_PLTT_ID(1), PLTT_SIZE_4BPP);

    SetGpuReg(REG_OFFSET_BG0CNT,
              BGCNT_PRIORITY(1) | BGCNT_CHARBASE(DARK_SUICUNE_BG01_CHARBASE)
              | BGCNT_SCREENBASE(DARK_SUICUNE_BG01_SCREENBASE)
              | BGCNT_16COLOR | BGCNT_TXT512x256);
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

static void AdvanceDarkSuicuneRunningBg(s16 *data)
{
    tBgScroll += tBgSpeed;
    while (tBgScroll >= DARK_SUICUNE_BG01_LOOP_WIDTH)
        tBgScroll -= DARK_SUICUNE_BG01_LOOP_WIDTH;

    SetGpuReg(REG_OFFSET_BG0HOFS, tBgScroll);
}

static void AccelerateDarkSuicuneRunningBg(s16 *data)
{
    if (++tAccelTimer >= DARK_SUICUNE_SCROLL_ACCEL_FRAMES)
    {
        tAccelTimer = 0;
        if (tBgSpeed < DARK_SUICUNE_SCROLL_MAX_SPEED)
            tBgSpeed++;
        SetDarkSuicuneRunAnimForSpeed(data);
    }

    AdvanceDarkSuicuneRunningBg(data);
}

static void DecelerateDarkSuicuneRunningBg(s16 *data)
{
    if (++tAccelTimer >= DARK_SUICUNE_SCROLL_DECEL_FRAMES)
    {
        tAccelTimer = 0;
        if (tBgSpeed > 0)
            tBgSpeed--;
        SetDarkSuicuneRunAnimForSpeed(data);
    }

    AdvanceDarkSuicuneRunningBg(data);
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
    void *charData = (void *)BG_CHAR_ADDR(DARK_SUICUNE_CLOSE_CHARBASE);
    void *tilemap = (void *)BG_SCREEN_ADDR(DARK_SUICUNE_CLOSE_SCREENBASE);

    // IMPORTANT: close.png is a TILESET, not the final picture. close.bin is
    // what reconstructs the 240x160 Suicune composition. The old code ignored
    // close.bin and placed tiles 0..159 sequentially, which is exactly why the
    // close-up appeared as broken horizontal chunks.
    //
    // close_affine.* is that correct composition converted for an affine BG.
    CpuCopy32(sDarkSuicuneCloseAffine_Gfx,
              charData,
              sizeof(sDarkSuicuneCloseAffine_Gfx));
    CpuFill32(0, tilemap, BG_SCREEN_SIZE);
    CpuCopy32(sDarkSuicuneCloseAffine_Map,
              tilemap,
              sizeof(sDarkSuicuneCloseAffine_Map));

    LoadPalette(sDarkSuicuneClose_Pal, BG_PLTT_ID(0), sizeof(sDarkSuicuneClose_Pal));

    // close.png uses palette index 0 as the green transparency guide. On this
    // isolated close-up the desired backdrop is black, so index 0 becomes black.
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

        sDarkSuicuneRunMatrix = 0xFF;
        InitDarkSuicuneRunAffine(spriteId);

        tTimer = 0;
        tBgScroll = 0;
        tRunZoomScale = 256;
        tZoomTimer = 0;
        tBgSpeed = DARK_SUICUNE_SCROLL_START_SPEED;
        tAccelTimer = 0;
        tRunAnimLevel = DARK_SUICUNE_RUN_ANIM_NORMAL;
        tRedLevel = 0;
        tRedTimer = 0;
        SetVBlankCallback(VBlankCB_DarkSuicuneScene);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        SetMainCallback2(CB2_DarkSuicuneScene);
        tState = DARK_SUICUNE_SCENE_FADE_IN;
        break;
    }

    case DARK_SUICUNE_SCENE_FADE_IN:
        AdvanceDarkSuicuneRunningBg(data);
        if (!gPaletteFade.active)
        {
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].invisible = FALSE;
            tState = DARK_SUICUNE_SCENE_RUN_IN;
        }
        break;

    case DARK_SUICUNE_SCENE_RUN_IN:
        AccelerateDarkSuicuneRunningBg(data);
        tRunX -= DARK_SUICUNE_RUN_MOVE_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;

        if (tRunX <= DARK_SUICUNE_RUN_CENTER_X)
        {
            tRunX = DARK_SUICUNE_RUN_CENTER_X;
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].x = tRunX;

            // No static pause. Suicune immediately keeps sprinting in place,
            // while the panorama and leg animation continue to accelerate.
            tTimer = 0;
            tZoomTimer = 0;
            tRunZoomScale = 256;
            tState = DARK_SUICUNE_SCENE_SPRINT;
        }
        break;

    case DARK_SUICUNE_SCENE_SPRINT:
        AccelerateDarkSuicuneRunningBg(data);

        // Zoom only Suicune. BG1 remains the original static mountain layer,
        // so it never disappears or gets converted into OBJ chunks.
        if (++tZoomTimer >= DARK_SUICUNE_RUN_ZOOM_STEP_FRAMES)
        {
            tZoomTimer = 0;
            if (tRunZoomScale > DARK_SUICUNE_RUN_ZOOM_END_SCALE)
            {
                tRunZoomScale--;
                SetDarkSuicuneRunScale(tRunZoomScale);
            }
        }

        if (++tTimer >= DARK_SUICUNE_SPRINT_FRAMES)
        {
            tTimer = 0;
            tAccelTimer = 0;
            tRedLevel = 0;
            tRedTimer = 0;
            tState = DARK_SUICUNE_SCENE_RED_STOP;
        }
        break;

    case DARK_SUICUNE_SCENE_RED_STOP:
        // The climax is dynamic too: the apparent world speed brakes to zero
        // while Suicune turns progressively red. Only when both reach their
        // endpoints does the running animation finally freeze.
        DecelerateDarkSuicuneRunningBg(data);

        if (tRedLevel < 16 && ++tRedTimer >= DARK_SUICUNE_RED_STEP_FRAMES)
        {
            tRedTimer = 0;
            tRedLevel++;
        }
        ApplyDarkSuicuneRedTint(data);

        if (tBgSpeed == 0 && tRedLevel >= 16)
        {
            if (tTimer == 0 && tRunSprite != MAX_SPRITES)
                StartSpriteAnim(&gSprites[tRunSprite], DARK_SUICUNE_RUN_ANIM_STOP);

            if (++tTimer >= DARK_SUICUNE_RED_STOP_HOLD_FRAMES)
            {
                BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
                tState = DARK_SUICUNE_SCENE_FLASH_TO_BLACK;
            }
        }
        else
        {
            tTimer = 0;
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
#undef tRunZoomScale
#undef tZoomTimer
#undef tBgSpeed
#undef tAccelTimer
#undef tRunAnimLevel
#undef tRedLevel
#undef tRedTimer
