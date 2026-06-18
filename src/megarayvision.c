/*
 * src/megarayvision.c
 *
 * Cutscene: Mega Ray Vision
 *
 * Flow:
 *   1. Fade in: BG (BG0, palette slot 0) + Celebi bottom-left + Jirachi bottom-right.
 *   2. Meteor (64x64 sprite) enters top-left corner, crosses diagonally to bottom-right.
 *      Celebi and Jirachi remain static throughout.
 *   3. RayFly BG tileset (BG1, palette slot 1) spawns below the screen and flies
 *      upward rapidly across the full screen. Fade to WHITE once it exits.
 *   4. While white: swap BG1 to Ray tileset centred on screen (palette slot 1).
 *      Fade back in: Ray + Celebi + Jirachi visible.
 *   5. Hold. Gentle fade to black. Scene ends.
 *
 * Palette layout:
 *   BG_PLTT_ID(0)  -> bg.gbapal         (16 colours for BG0)
 *   BG_PLTT_ID(1)  -> rayfly/ray.gbapal (16 colours for BG1 overlay)
 *   The BG1 tile entries have bits 12-15 forced to palette slot 1 directly
 *   in code right after the tilemap is copied to VRAM (see LoadMRVRayFly /
 *   LoadMRVRay), so this no longer relies on the .bin exporter setting the
 *   right palette bits.
 *
 * Graphics: graphics/megarayvision/
 * Entry:    special StartMegaRayVisionScene
 *           (register in src/data/specials.inc -> SPECIAL(StartMegaRayVisionScene))
 */

#include "global.h"
#include "main.h"
#include "palette.h"
#include "task.h"
#include "sprite.h"
#include "gpu_regs.h"
#include "decompress.h"
#include "sound.h"
#include "constants/songs.h"
#include "constants/rgb.h"
#include "scanline_effect.h"
#include "script.h"
#include "overworld.h"
#include "megarayvision.h"

/* --------------------------------------------------------------------------
 * Graphics assets  (all in graphics/megarayvision/)
 * -------------------------------------------------------------------------- */

static const u16 sMRVBg_Pal[]       = INCBIN_U16("graphics/megarayvision/bg.gbapal");
static const u32 sMRVBg_Gfx[]       = INCBIN_U32("graphics/megarayvision/bg.4bpp.smol");
static const u16 sMRVBg_Map[]       = INCBIN_U16("graphics/megarayvision/bg.bin");

static const u16 sMRVCelebi_Pal[]   = INCBIN_U16("graphics/megarayvision/celebi.gbapal");
static const u32 sMRVCelebi_Gfx[]   = INCBIN_U32("graphics/megarayvision/celebi.4bpp.smol");

static const u16 sMRVJirachi_Pal[]  = INCBIN_U16("graphics/megarayvision/jirachi.gbapal");
static const u32 sMRVJirachi_Gfx[]  = INCBIN_U32("graphics/megarayvision/jirachi.4bpp.smol");

static const u16 sMRVMeteor_Pal[]   = INCBIN_U16("graphics/megarayvision/meteor.gbapal");
static const u32 sMRVMeteor_Gfx[]   = INCBIN_U32("graphics/megarayvision/meteor.4bpp.smol");

/* RayFly: large horizontal tileset that flies upward through the screen */
static const u16 sMRVRayFly_Pal[]   = INCBIN_U16("graphics/megarayvision/rayfly.gbapal");
static const u32 sMRVRayFly_Gfx[]   = INCBIN_U32("graphics/megarayvision/rayfly.4bpp.smol");
static const u16 sMRVRayFly_Map[]   = INCBIN_U16("graphics/megarayvision/rayfly.bin");

/* Ray: static tileset centred after RayFly exits */
static const u16 sMRVRay_Pal[]      = INCBIN_U16("graphics/megarayvision/ray.gbapal");
static const u32 sMRVRay_Gfx[]      = INCBIN_U32("graphics/megarayvision/ray.4bpp.smol");
static const u16 sMRVRay_Map[]      = INCBIN_U16("graphics/megarayvision/ray.bin");

/* --------------------------------------------------------------------------
 * Sprite tags
 * -------------------------------------------------------------------------- */
#define TAG_MRV_CELEBI  0x6100
#define TAG_MRV_JIRACHI 0x6101
#define TAG_MRV_METEOR  0x6102

/* --------------------------------------------------------------------------
 * BG layout
 *   BG0  charbase 0, screenbase 28, priority 3  -- static background
 *        bg.4bpp is larger than one charblock, so it also uses part of
 *        charbase 1. Keep BG1's graphics in charbase 2 to avoid corrupting
 *        the lower BG0 tiles.
 *   BG1  charbase 2, screenbase 24, priority 1  -- RayFly / Ray overlay
 * -------------------------------------------------------------------------- */
#define MRV_BG_CHARBASE     0
#define MRV_BG_SCREENBASE   28
#define MRV_OVL_CHARBASE    2
#define MRV_OVL_SCREENBASE  24

/* --------------------------------------------------------------------------
 * Scene state machine
 * -------------------------------------------------------------------------- */
enum
{
    MRV_LOAD,
    MRV_FADEIN,
    MRV_HOLD,
    MRV_METEOR,
    MRV_WAIT_METEOR,
    MRV_RAYFLY_INIT,
    MRV_RAYFLY,
    MRV_FADE_WHITE,
    MRV_RAY_LOAD,
    MRV_RAY_SHOW,
    MRV_RAY_HOLD,
    MRV_FADE_BLACK,
    MRV_DONE,
};

/* --------------------------------------------------------------------------
 * Timing  (frames @ 60 fps)
 * -------------------------------------------------------------------------- */
#define HOLD_FRAMES            60
#define METEOR_SPEED_X          6
#define METEOR_SPEED_Y          6
#define WAIT_AFTER_METEOR      20

/*
 * RayFly scroll (vertical, bottom to top):
 *
 *   rayfly.bin is a 32-tile-wide tilemap. Its height is inferred from the
 *   asset size instead of hardcoded: entries / 32 rows * 8 pixels. The map is
 *   copied into a cleared 256x512 BG1 canvas after one screen of blank rows:
 *
 *       rows  0-19  blank starting area
 *       rows 20-39  RayFly art
 *       rows 40-63  blank exit area
 *
 *   BG1VOFS starts at 0, so the art begins just below the bottom edge. It
 *   then scrolls to SCREEN_H + RayFly height without ever touching the
 *   512px hardware wrap point.
 *
 *   BG1VOFS itself wraps in hardware, so tTimer tracks the non-wrapping
 *   distance travelled. When that reaches screen height + RayFly art height,
 *   the creature has fully entered from below and fully exited above.
 */
#define MRV_MAP_WIDTH_TILES     32
#define MRV_TILE_SIZE_PX         8
#define MRV_BG_MAP_ENTRIES     (sizeof(sMRVBg_Map) / sizeof(sMRVBg_Map[0]))
#define MRV_BG_MAP_SIZE        (MRV_BG_MAP_ENTRIES * sizeof(sMRVBg_Map[0]))
#define RAYFLY_SCROLL_SPEED     10
#define RAYFLY_CANVAS_ROWS      64
#define RAYFLY_CANVAS_H        (RAYFLY_CANVAS_ROWS * MRV_TILE_SIZE_PX)
#define RAYFLY_MAP_ENTRIES     (sizeof(sMRVRayFly_Map) / sizeof(sMRVRayFly_Map[0]))
#define RAYFLY_MAP_ROWS        (RAYFLY_MAP_ENTRIES / MRV_MAP_WIDTH_TILES)
#define RAYFLY_MAP_HEIGHT_PX   (RAYFLY_MAP_ROWS * MRV_TILE_SIZE_PX)
#define RAYFLY_MAP_SIZE        (RAYFLY_MAP_ENTRIES * sizeof(sMRVRayFly_Map[0]))
#define RAYFLY_CANVAS_SIZE     (RAYFLY_CANVAS_ROWS * MRV_MAP_WIDTH_TILES * sizeof(u16))
#define RAYFLY_START_ROW       (SCREEN_H / MRV_TILE_SIZE_PX)
#define RAYFLY_START_ENTRY     (RAYFLY_START_ROW * MRV_MAP_WIDTH_TILES)
#define RAYFLY_TILE_LEFT       11
#define RAYFLY_TILE_RIGHT      21
#define RAYFLY_TILE_TOP         0
#define RAYFLY_TILE_BOTTOM     20
#define RAYFLY_WINDOW_LEFT     88
#define RAYFLY_WINDOW_RIGHT    168
#define RAY_TILE_LEFT           8
#define RAY_TILE_RIGHT         23
#define RAY_TILE_TOP            4
#define RAY_TILE_BOTTOM        18
#define RAY_WINDOW_LEFT        64
#define RAY_WINDOW_RIGHT       184
#define RAY_WINDOW_TOP         32
#define RAY_WINDOW_BOTTOM      144
#define RAYFLY_INITIAL_VOFS    0
#define RAYFLY_TRAVEL_PX       (SCREEN_H + RAYFLY_MAP_HEIGHT_PX)
#define RAY_MAP_ENTRIES        (sizeof(sMRVRay_Map) / sizeof(sMRVRay_Map[0]))
#define RAY_MAP_SIZE           (RAY_MAP_ENTRIES * sizeof(sMRVRay_Map[0]))
#define RAY_HOLD_FRAMES       180
#define FADE_SPEED_NORMAL       4
#define FADE_SPEED_SLOW         8

/* --------------------------------------------------------------------------
 * Position constants
 * -------------------------------------------------------------------------- */
#define SCREEN_W  DISPLAY_WIDTH
#define SCREEN_H  DISPLAY_HEIGHT

#define CELEBI_X   32
#define CELEBI_Y  (SCREEN_H - 32)

#define JIRACHI_X (SCREEN_W - 32)
#define JIRACHI_Y (SCREEN_H - 32)

#define METEOR_START_X (-32)
#define METEOR_START_Y (-32)

/* --------------------------------------------------------------------------
 * Task data slots
 * -------------------------------------------------------------------------- */
#define tState       data[0]
#define tTimer       data[1]
#define tCelebiId    data[2]
#define tJirachiId   data[3]
#define tMeteorId    data[4]
#define tMeteorX     data[5]
#define tMeteorY     data[6]
#define tRayFlyVofs  data[7]

/* --------------------------------------------------------------------------
 * OAM data -- 64x64, no affine
 * -------------------------------------------------------------------------- */
static const struct OamData sOam_64x64 =
{
    .y           = DISPLAY_HEIGHT,
    .affineMode  = ST_OAM_AFFINE_OFF,
    .objMode     = ST_OAM_OBJ_NORMAL,
    .mosaic      = FALSE,
    .bpp         = ST_OAM_4BPP,
    .shape       = SPRITE_SHAPE(64x64),
    .x           = 0,
    .matrixNum   = 0,
    .size        = SPRITE_SIZE(64x64),
    .tileNum     = 0,
    .priority    = 0,
    .paletteNum  = 0,
    .affineParam = 0,
};

static const union AnimCmd sAnim_Static[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Static[] = { sAnim_Static };

/* --------------------------------------------------------------------------
 * Celebi
 * -------------------------------------------------------------------------- */
static const struct CompressedSpriteSheet sSpriteSheet_MRVCelebi =
    { sMRVCelebi_Gfx, 0x800, TAG_MRV_CELEBI };
static const struct SpritePalette sSpritePal_MRVCelebi =
    { sMRVCelebi_Pal, TAG_MRV_CELEBI };
static const struct SpriteTemplate sSpriteTemplate_MRVCelebi =
{
    .tileTag     = TAG_MRV_CELEBI,
    .paletteTag  = TAG_MRV_CELEBI,
    .oam         = &sOam_64x64,
    .anims       = sAnims_Static,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

/* --------------------------------------------------------------------------
 * Jirachi
 * -------------------------------------------------------------------------- */
static const struct CompressedSpriteSheet sSpriteSheet_MRVJirachi =
    { sMRVJirachi_Gfx, 0x800, TAG_MRV_JIRACHI };
static const struct SpritePalette sSpritePal_MRVJirachi =
    { sMRVJirachi_Pal, TAG_MRV_JIRACHI };
static const struct SpriteTemplate sSpriteTemplate_MRVJirachi =
{
    .tileTag     = TAG_MRV_JIRACHI,
    .paletteTag  = TAG_MRV_JIRACHI,
    .oam         = &sOam_64x64,
    .anims       = sAnims_Static,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

/* --------------------------------------------------------------------------
 * Meteor
 * -------------------------------------------------------------------------- */
static const struct CompressedSpriteSheet sSpriteSheet_MRVMeteor =
    { sMRVMeteor_Gfx, 0x800, TAG_MRV_METEOR };
static const struct SpritePalette sSpritePal_MRVMeteor =
    { sMRVMeteor_Pal, TAG_MRV_METEOR };
static const struct SpriteTemplate sSpriteTemplate_MRVMeteor =
{
    .tileTag     = TAG_MRV_METEOR,
    .paletteTag  = TAG_MRV_METEOR,
    .oam         = &sOam_64x64,
    .anims       = sAnims_Static,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

/* --------------------------------------------------------------------------
 * VBlank / main callbacks
 * -------------------------------------------------------------------------- */
static void VBlankCB_MegaRayVision(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_MegaRayVision(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

/* --------------------------------------------------------------------------
 * LoadMRVBg0 -- static background, palette slot 0
 * -------------------------------------------------------------------------- */
static void LoadMRVBg0(void)
{
    u16 *screen = (u16 *)(BG_SCREEN_ADDR(MRV_BG_SCREENBASE));

    DecompressDataWithHeaderVram(sMRVBg_Gfx, (void *)(BG_CHAR_ADDR(MRV_BG_CHARBASE)));
    CpuFill32(0, screen, BG_SCREEN_SIZE);
    DmaCopy16(3, sMRVBg_Map, screen, MRV_BG_MAP_SIZE);
    LoadPalette(sMRVBg_Pal, BG_PLTT_ID(0), sizeof(sMRVBg_Pal));
    SetGpuReg(REG_OFFSET_BG0CNT,
              BGCNT_PRIORITY(3) | BGCNT_CHARBASE(MRV_BG_CHARBASE)
              | BGCNT_SCREENBASE(MRV_BG_SCREENBASE)
              | BGCNT_16COLOR | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
}

/* --------------------------------------------------------------------------
 * LoadMRVRayFly -- BG1 overlay, palette slot 1
 *
 * Palette slot 1 is forced directly on every tile entry after the tilemap
 * is copied to VRAM (see the loop below), so this no longer depends on the
 * .bin having been exported with the right palette bits baked in.
 * -------------------------------------------------------------------------- */
static void LoadMRVRayFly(void)
{
    u16 *screen = (u16 *)(BG_SCREEN_ADDR(MRV_OVL_SCREENBASE));
    u32 row, col;

    DecompressDataWithHeaderVram(sMRVRayFly_Gfx, (void *)(BG_CHAR_ADDR(MRV_OVL_CHARBASE)));
    CpuFill32(0, screen, RAYFLY_CANVAS_SIZE);

    /*
     * Only copy the rectangle that contains RayFly tiles. The source .bin is
     * a full-screen map, but its empty rows/columns can reveal old-looking
     * color noise when BG1 scrolls. Keeping the rest of the BG1 map cleared
     * makes it behave like the stacked tilemaps in intro.c.
     */
    for (row = RAYFLY_TILE_TOP; row < RAYFLY_TILE_BOTTOM; row++)
    {
        for (col = RAYFLY_TILE_LEFT; col < RAYFLY_TILE_RIGHT; col++)
        {
            u32 src = row * MRV_MAP_WIDTH_TILES + col;
            u32 dst = RAYFLY_START_ENTRY + src;

            screen[dst] = (sMRVRayFly_Map[src] & 0x0FFF) | (1 << 12);
        }
    }

    LoadPalette(sMRVRayFly_Pal, BG_PLTT_ID(1), sizeof(sMRVRayFly_Pal));
    SetGpuReg(REG_OFFSET_BG1CNT,
              BGCNT_PRIORITY(1) | BGCNT_CHARBASE(MRV_OVL_CHARBASE)
              | BGCNT_SCREENBASE(MRV_OVL_SCREENBASE)
              | BGCNT_16COLOR | BGCNT_TXT256x512);
    SetGpuReg(REG_OFFSET_BG1HOFS, 0);
    /* Start below the visible screen; we scroll upward each frame */
    SetGpuReg(REG_OFFSET_BG1VOFS, (u16)RAYFLY_INITIAL_VOFS);
}

/* --------------------------------------------------------------------------
 * LoadMRVRay -- BG1 overlay, palette slot 1, centred
 * -------------------------------------------------------------------------- */
static void LoadMRVRay(void)
{
    u16 *screen = (u16 *)(BG_SCREEN_ADDR(MRV_OVL_SCREENBASE));
    u32 row, col;

    DecompressDataWithHeaderVram(sMRVRay_Gfx, (void *)(BG_CHAR_ADDR(MRV_OVL_CHARBASE)));
    CpuFill32(0, screen, BG_SCREEN_SIZE);

    /* Same cropped copy and forced-palette-slot fix as LoadMRVRayFly. */
    for (row = RAY_TILE_TOP; row < RAY_TILE_BOTTOM; row++)
    {
        for (col = RAY_TILE_LEFT; col < RAY_TILE_RIGHT; col++)
        {
            u32 src = row * MRV_MAP_WIDTH_TILES + col;

            screen[src] = (sMRVRay_Map[src] & 0x0FFF) | (1 << 12);
        }
    }

    LoadPalette(sMRVRay_Pal, BG_PLTT_ID(1), sizeof(sMRVRay_Pal));
    SetGpuReg(REG_OFFSET_BG1CNT,
              BGCNT_PRIORITY(1) | BGCNT_CHARBASE(MRV_OVL_CHARBASE)
              | BGCNT_SCREENBASE(MRV_OVL_SCREENBASE)
              | BGCNT_16COLOR | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG1HOFS, 0);
    SetGpuReg(REG_OFFSET_BG1VOFS, 0);
    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(RAY_WINDOW_LEFT, RAY_WINDOW_RIGHT));
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(RAY_WINDOW_TOP, RAY_WINDOW_BOTTOM));
    SetGpuReg(REG_OFFSET_WININ,
              WININ_WIN0_BG0 | WININ_WIN0_BG1 | WININ_WIN0_OBJ | WININ_WIN0_CLR);
    SetGpuReg(REG_OFFSET_WINOUT,
              WINOUT_WIN01_BG0 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR);
}

static void SetRayFlyWindow(u16 distance)
{
    s16 top = SCREEN_H - distance;
    s16 bottom = top + RAYFLY_MAP_HEIGHT_PX;

    if (top < 0)
        top = 0;
    if (bottom > SCREEN_H)
        bottom = SCREEN_H;

    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(RAYFLY_WINDOW_LEFT, RAYFLY_WINDOW_RIGHT));
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(top, bottom));
}

/* --------------------------------------------------------------------------
 * Main scene task
 * -------------------------------------------------------------------------- */
static void Task_MegaRayVisionScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (tState)
    {
    /* ------------------------------------------------------------------ */
    case MRV_LOAD:
    {
        u8 id;

        SetVBlankCallback(NULL);
        SetGpuReg(REG_OFFSET_DISPCNT,  0);
        SetGpuReg(REG_OFFSET_BLDCNT,   0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY,     0);
        CpuFill32(0, (void *)OAM, OAM_SIZE);
        ResetPaletteFade();
        ResetSpriteData();
        FreeAllSpritePalettes();
        ScanlineEffect_Stop();

        LoadMRVBg0();

        LoadCompressedSpriteSheet(&sSpriteSheet_MRVCelebi);
        LoadSpritePalette(&sSpritePal_MRVCelebi);
        id = CreateSprite(&sSpriteTemplate_MRVCelebi, CELEBI_X, CELEBI_Y, 0);
        tCelebiId = id;

        LoadCompressedSpriteSheet(&sSpriteSheet_MRVJirachi);
        LoadSpritePalette(&sSpritePal_MRVJirachi);
        id = CreateSprite(&sSpriteTemplate_MRVJirachi, JIRACHI_X, JIRACHI_Y, 0);
        tJirachiId = id;

        LoadCompressedSpriteSheet(&sSpriteSheet_MRVMeteor);
        LoadSpritePalette(&sSpritePal_MRVMeteor);
        id = CreateSprite(&sSpriteTemplate_MRVMeteor, METEOR_START_X, METEOR_START_Y, 0);
        gSprites[id].invisible = TRUE;
        tMeteorId = id;
        tMeteorX  = METEOR_START_X;
        tMeteorY  = METEOR_START_Y;

        tTimer = 0;

        SetVBlankCallback(VBlankCB_MegaRayVision);
        SetGpuReg(REG_OFFSET_DISPCNT,
                  DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP
                  | DISPCNT_BG0_ON | DISPCNT_OBJ_ON);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        BeginNormalPaletteFade(PALETTES_ALL, FADE_SPEED_NORMAL, 16, 0, RGB_BLACK);
        SetMainCallback2(CB2_MegaRayVision);

        tState = MRV_FADEIN;
        break;
    }

    /* ------------------------------------------------------------------ */
    case MRV_FADEIN:
        if (!gPaletteFade.active)
        {
            tTimer = 0;
            tState = MRV_HOLD;
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_HOLD:
        if (++tTimer >= HOLD_FRAMES)
        {
            gSprites[tMeteorId].x         = METEOR_START_X;
            gSprites[tMeteorId].y         = METEOR_START_Y;
            gSprites[tMeteorId].invisible = FALSE;
            tMeteorX = METEOR_START_X;
            tMeteorY = METEOR_START_Y;
            tTimer   = 0;
            tState   = MRV_METEOR;
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_METEOR:
    {
        s16 mx, my;

        tMeteorX += METEOR_SPEED_X;
        tMeteorY += METEOR_SPEED_Y;
        mx = tMeteorX;
        my = tMeteorY;

        gSprites[tMeteorId].x = mx;
        gSprites[tMeteorId].y = my;

        if (mx > SCREEN_W + 32 || my > SCREEN_H + 32)
        {
            gSprites[tMeteorId].invisible = TRUE;
            tTimer = 0;
            tState = MRV_WAIT_METEOR;
        }
        break;
    }

    /* ------------------------------------------------------------------ */
    case MRV_WAIT_METEOR:
        if (++tTimer >= WAIT_AFTER_METEOR)
        {
            tTimer = 0;
            tState = MRV_RAYFLY_INIT;
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_RAYFLY_INIT:
        /*
         * Load RayFly into BG1 with VOFS = RAYFLY_INITIAL_VOFS so it starts
         * entirely below the visible screen. Each frame we INCREMENT VOFS by
         * RAYFLY_SCROLL_SPEED -- increasing VOFS moves the tilemap image
         * upward on screen. tTimer tracks total distance travelled (plain
         * counter, never wraps) so we know exactly when RayFly has fully
         * crossed and exited off the top, regardless of how BG1VOFS itself
         * wraps in hardware.
         */
        LoadMRVRayFly();
        SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(RAYFLY_WINDOW_LEFT, RAYFLY_WINDOW_RIGHT));
        SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WININ,
                  WININ_WIN0_BG0 | WININ_WIN0_BG1 | WININ_WIN0_OBJ | WININ_WIN0_CLR);
        SetGpuReg(REG_OFFSET_WINOUT,
                  WINOUT_WIN01_BG0 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR);
        SetGpuReg(REG_OFFSET_DISPCNT,
                  DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP
                  | DISPCNT_BG0_ON | DISPCNT_OBJ_ON);
        tRayFlyVofs = (s16)RAYFLY_INITIAL_VOFS;
        SetGpuReg(REG_OFFSET_BG1VOFS, (u16)tRayFlyVofs);
        tTimer = 0;
        tState = MRV_RAYFLY;
        break;

    /* ------------------------------------------------------------------ */
    case MRV_RAYFLY:
        /*
         * Scroll RayFly upward: increment VOFS each frame, and track the
         * distance travelled separately in tTimer to decide when it has
         * fully exited (avoids ever reading the wrapped register value).
         */
        tRayFlyVofs += RAYFLY_SCROLL_SPEED;
        SetGpuReg(REG_OFFSET_BG1VOFS, (u16)tRayFlyVofs);
        tTimer += RAYFLY_SCROLL_SPEED;

        if (tTimer >= RAYFLY_TRAVEL_PX)
        {
            SetGpuReg(REG_OFFSET_DISPCNT,
                      DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP
                      | DISPCNT_BG0_ON | DISPCNT_OBJ_ON);
            BeginNormalPaletteFade(PALETTES_ALL, FADE_SPEED_NORMAL, 0, 16, RGB_WHITE);
            tState = MRV_FADE_WHITE;
        }
        else
        {
            SetRayFlyWindow(tTimer);
            SetGpuReg(REG_OFFSET_DISPCNT,
                      DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP
                      | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON
                      | DISPCNT_WIN0_ON);
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_FADE_WHITE:
        if (!gPaletteFade.active)
        {
            SetGpuReg(REG_OFFSET_DISPCNT, 0);
            LoadMRVRay();
            SetGpuReg(REG_OFFSET_DISPCNT,
                      DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP
                      | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON
                      | DISPCNT_WIN0_ON);
            tState = MRV_RAY_LOAD;
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_RAY_LOAD:
        BeginNormalPaletteFade(PALETTES_ALL, FADE_SPEED_SLOW, 16, 0, RGB_WHITE);
        tTimer = 0;
        tState = MRV_RAY_SHOW;
        break;

    /* ------------------------------------------------------------------ */
    case MRV_RAY_SHOW:
        if (!gPaletteFade.active)
        {
            tTimer = 0;
            tState = MRV_RAY_HOLD;
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_RAY_HOLD:
        if (++tTimer >= RAY_HOLD_FRAMES)
        {
            BeginNormalPaletteFade(PALETTES_ALL, FADE_SPEED_SLOW, 0, 16, RGB_BLACK);
            tState = MRV_FADE_BLACK;
        }
        break;

    /* ------------------------------------------------------------------ */
    case MRV_FADE_BLACK:
        if (!gPaletteFade.active)
            tState = MRV_DONE;
        break;

    /* ------------------------------------------------------------------ */
    case MRV_DONE:
    default:
        SetVBlankCallback(NULL);
        SetGpuReg(REG_OFFSET_DISPCNT,  0);
        SetGpuReg(REG_OFFSET_BLDCNT,   0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY,     0);
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        DestroyTask(taskId);
        SetMainCallback2(CB2_ReturnToField);
        break;
    }
}

/* --------------------------------------------------------------------------
 * Entry point
 * special StartMegaRayVisionScene  (src/data/specials.inc)
 * -------------------------------------------------------------------------- */
void StartMegaRayVisionScene(void)
{
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    ScanlineEffect_Stop();
    CreateTask(Task_MegaRayVisionScene, 0);
}

#undef tState
#undef tTimer
#undef tCelebiId
#undef tJirachiId
#undef tMeteorId
#undef tMeteorX
#undef tMeteorY
#undef tRayFlyVofs
