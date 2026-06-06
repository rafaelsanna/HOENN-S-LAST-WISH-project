/*
 * src/time_warp_scene.c
 *
 * Cutscene triggered from Mt. Pyre Summit after the old lady gives the Magma Emblem.
 *
 * Flow:
 *   1. Load BG (graphics/time_warp/bg)
 *   2. Warp sprite (64x64) grows from small to full size (PA: 768 -> 256) then spins
 *   3. One character (Brendan if male save, May if female) appears at the bottom
 *      and is sucked upward into the warp (PA: 256 -> large, i.e. visually shrinks)
 *   4. Fade to black -> return to field
 *
 * GBA affine matrix scale reminder:
 *   PA=PD=256  -> 100% size (normal)
 *   PA=PD=768  -> ~33% size (small)  -- start value for grow effect
 *   PA=PD=128  -> 200% size (large)
 *   To GROW a sprite: start PA high (768) and decrease toward 256.
 *   To SHRINK (suck) a sprite: start PA at 256 and increase toward a large value.
 *   This is the exact same pattern used by SpriteCB_Scene0Moon in intro.c.
 *
 * Graphics (4bpp 16-color, same pipeline as intro.c / scene_0):
 *   graphics/time_warp/bg.gbapal
 *   graphics/time_warp/bg.4bpp.smol
 *   graphics/time_warp/bg.bin            (raw u16 tilemap, DmaCopy16)
 *   graphics/time_warp/warp.gbapal
 *   graphics/time_warp/warp.4bpp.smol    (64x64)
 *   graphics/time_warp/may.gbapal
 *   graphics/time_warp/may.4bpp.smol     (64x64)
 *   graphics/time_warp/brendan.gbapal
 *   graphics/time_warp/brendan.4bpp.smol (64x64)
 *
 * All comments in English.
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
#include "field_screen_effect.h"
#include "save.h"
#include "trig.h"
#include "overworld.h"
#include "time_warp_scene.h"

/* --------------------------------------------------------------------------
 * Graphics assets — INCBIN directly here, exactly like intro.c / scene_0
 * -------------------------------------------------------------------------- */
static const u16 sTimeWarpBg_Pal[]      = INCBIN_U16("graphics/time_warp/bg.gbapal");
static const u32 sTimeWarpBg_Gfx[]      = INCBIN_U32("graphics/time_warp/bg.4bpp.smol");
static const u16 sTimeWarpBg_Map[]      = INCBIN_U16("graphics/time_warp/bg.bin");

static const u16 sTimeWarpWarp_Pal[]    = INCBIN_U16("graphics/time_warp/warp.gbapal");
static const u32 sTimeWarpWarp_Gfx[]    = INCBIN_U32("graphics/time_warp/warp.4bpp.smol");

static const u16 sTimeWarpMay_Pal[]     = INCBIN_U16("graphics/time_warp/may.gbapal");
static const u32 sTimeWarpMay_Gfx[]     = INCBIN_U32("graphics/time_warp/may.4bpp.smol");

static const u16 sTimeWarpBrendan_Pal[] = INCBIN_U16("graphics/time_warp/brendan.gbapal");
static const u32 sTimeWarpBrendan_Gfx[] = INCBIN_U32("graphics/time_warp/brendan.4bpp.smol");

/* --------------------------------------------------------------------------
 * Sprite tags
 * -------------------------------------------------------------------------- */
#define TAG_WARP 0x5A00
#define TAG_CHAR 0x5A01   /* shared tag for whichever character is shown */

/* --------------------------------------------------------------------------
 * Scene states
 * -------------------------------------------------------------------------- */
enum
{
    TWS_LOAD,       /* one-shot setup                                          */
    TWS_GROW,       /* warp grows from small (PA=768) to full size (PA=256)    */
    TWS_FADEIN,     /* fade in from black while warp spins at full size        */
    TWS_SPIN_WAIT,  /* warp spins alone for SPIN_FRAMES before char appears    */
    TWS_SUCK,       /* character PA increases (visually shrinks) into warp     */
    TWS_FADEOUT,    /* fade to black                                           */
    TWS_DONE,       /* restore field                                           */
};

/* Warp grow: PA starts at WARP_SCALE_START, decreases 3/frame toward 256.
 * (768-256)/3 = 171 frames ~= 2.85 s — same rate as the moon in intro.c */
#define WARP_SCALE_START  768
#define WARP_SCALE_FULL   256
#define WARP_GROW_SPEED     3

/* Frames the warp spins alone (at full size) before the character appears */
#define SPIN_FRAMES 90

/* Warp centre position on screen — GBA screen is 240x160, centre = (120, 80) */
#define WARP_CENTER_X 120
#define WARP_CENTER_Y  90

/* Character start position (bottom-centre) */
#define CHAR_START_X  120
#define CHAR_START_Y  148

/* Character suck: PA starts at 256, increases 6/frame until it is very large.
 * At PA=2048 the sprite is 256/2048 = 12.5% of original — effectively gone.
 * (2048-256)/6 = ~299 frames, but we stop rendering much earlier (invisible). */
#define CHAR_SUCK_SPEED   6
#define CHAR_SUCK_MAX  2048

/* --------------------------------------------------------------------------
 * Task data slots
 * -------------------------------------------------------------------------- */
#define tState      data[0]
#define tTimer      data[1]
#define tWarpId     data[2]
#define tCharId     data[3]
#define tWarpScale  data[4]   /* current PA/PD for warp  (256 = 100%)      */
#define tCharScale  data[5]   /* current PA/PD for char  (256 = 100%)      */
#define tRotAngle   data[6]   /* warp rotation accumulator (0-255 wrapping) */

/* --------------------------------------------------------------------------
 * OAM data — 64x64 AFFINE_NORMAL (same as moon in intro.c).
 * AFFINE_DOUBLE is NOT used: we never need to render outside the bounding box.
 * -------------------------------------------------------------------------- */
static const struct OamData sOam_64x64_Affine =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_NORMAL,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .mosaic     = FALSE,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .x          = 0,
    .matrixNum  = 0,
    .size       = SPRITE_SIZE(64x64),
    .tileNum    = 0,
    .priority   = 1,
    .paletteNum = 0,
    .affineParam = 0,
};

/* Single looping frame — no animation needed */
static const union AnimCmd sAnim_Single[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Single[] = { sAnim_Single };

/* --- Warp --- */
static const struct CompressedSpriteSheet sSpriteSheet_Warp =
{
    sTimeWarpWarp_Gfx, 0x800, TAG_WARP   /* 64x64 x 4bpp = 2048 bytes */
};
static const struct SpritePalette sSpritePal_Warp =
{
    sTimeWarpWarp_Pal, TAG_WARP
};
static const struct SpriteTemplate sSpriteTemplate_Warp =
{
    .tileTag     = TAG_WARP,
    .paletteTag  = TAG_WARP,
    .oam         = &sOam_64x64_Affine,
    .anims       = sAnims_Single,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

/* --- May --- */
static const struct CompressedSpriteSheet sSpriteSheet_May =
{
    sTimeWarpMay_Gfx, 0x800, TAG_CHAR
};
static const struct SpritePalette sSpritePal_May =
{
    sTimeWarpMay_Pal, TAG_CHAR
};
static const struct SpriteTemplate sSpriteTemplate_May =
{
    .tileTag     = TAG_CHAR,
    .paletteTag  = TAG_CHAR,
    .oam         = &sOam_64x64_Affine,
    .anims       = sAnims_Single,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

/* --- Brendan --- */
static const struct CompressedSpriteSheet sSpriteSheet_Brendan =
{
    sTimeWarpBrendan_Gfx, 0x800, TAG_CHAR
};
static const struct SpritePalette sSpritePal_Brendan =
{
    sTimeWarpBrendan_Pal, TAG_CHAR
};
static const struct SpriteTemplate sSpriteTemplate_Brendan =
{
    .tileTag     = TAG_CHAR,
    .paletteTag  = TAG_CHAR,
    .oam         = &sOam_64x64_Affine,
    .anims       = sAnims_Single,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

/* --------------------------------------------------------------------------
 * VBlank callback
 * -------------------------------------------------------------------------- */
static void VBlankCB_TimeWarp(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

/* --------------------------------------------------------------------------
 * Main callback
 * -------------------------------------------------------------------------- */
static void CB2_TimeWarp(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

/* --------------------------------------------------------------------------
 * ApplyWarpMatrix — pure rotation at 100% scale.
 * PA = cos*256>>8, PB = -sin*256>>8, PC = sin*256>>8, PD = cos*256>>8
 * angle 0-255 = full circle (same gSineTable usage as intro.c).
 * -------------------------------------------------------------------------- */
static void ApplyWarpRotation(u8 matrixNum, u8 angle)
{
    s16 sin = gSineTable[angle];
    s16 cos = gSineTable[(angle + 64) & 0xFF];
    /* PA=(cos*256)>>8=cos, PB=-sin, PC=sin, PD=cos at 100% scale */
    SetOamMatrix(matrixNum, cos, -sin, sin, cos);
}

/* --------------------------------------------------------------------------
 * ApplyWarpGrow — scale only, no rotation, for the grow phase.
 * scalePA: 768 (small) -> 256 (full). Same as moon: SetOamMatrix(n,PA,0,0,PD).
 * -------------------------------------------------------------------------- */
static void ApplyWarpGrow(u8 matrixNum, s16 scalePA)
{
    SetOamMatrix(matrixNum, (u16)scalePA, 0, 0, (u16)scalePA);
}

/* --------------------------------------------------------------------------
 * ApplyCharSuck — scale only, no rotation.
 * scalePA: 256 (full) -> 2048+ (vanished). PA=PD increase = visually smaller.
 * -------------------------------------------------------------------------- */
static void ApplyCharSuck(u8 matrixNum, s16 scalePA)
{
    SetOamMatrix(matrixNum, (u16)scalePA, 0, 0, (u16)scalePA);
}

/* --------------------------------------------------------------------------
 * Main scene task
 * -------------------------------------------------------------------------- */
static void Task_TimeWarpScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (tState)
    {
    /* ------------------------------------------------------------------ */
    case TWS_LOAD:
    {
        /* Reset GPU, sprites, and palette — same pattern as intro.c scenes */
        SetVBlankCallback(NULL);
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        CpuFill32(0, (void *)OAM, OAM_SIZE);
        ResetPaletteFade();
        ResetSpriteData();
        FreeAllSpritePalettes();
        ScanlineEffect_Stop();

        /* --- BG layer (mode 0, BG0) ---
         * Tileset -> BG_CHAR_ADDR(0), tilemap -> BG_SCREEN_ADDR(28) */
        DecompressDataWithHeaderVram(sTimeWarpBg_Gfx, (void *)(BG_CHAR_ADDR(0)));
        DmaCopy16(3, sTimeWarpBg_Map, (void *)(BG_SCREEN_ADDR(28)), BG_SCREEN_SIZE);
        LoadPalette(sTimeWarpBg_Pal, BG_PLTT_ID(0), sizeof(sTimeWarpBg_Pal));

        SetGpuReg(REG_OFFSET_BG0CNT,
                  BGCNT_PRIORITY(3)
                  | BGCNT_CHARBASE(0)
                  | BGCNT_SCREENBASE(28)
                  | BGCNT_16COLOR
                  | BGCNT_TXT256x256);
        SetGpuReg(REG_OFFSET_BG0HOFS, 0);
        SetGpuReg(REG_OFFSET_BG0VOFS, 0);

        /* --- Warp sprite — matrix slot 0 ---
         * Starts small: scalePA = WARP_SCALE_START (768).
         * No rotation yet — grow phase is pure scale. */
        LoadCompressedSpriteSheet(&sSpriteSheet_Warp);
        LoadSpritePalette(&sSpritePal_Warp);
        {
            u8 id = CreateSprite(&sSpriteTemplate_Warp,
                                 WARP_CENTER_X, WARP_CENTER_Y, 0);
            gSprites[id].oam.matrixNum = 0;
            tWarpId = id;
        }
        tWarpScale = WARP_SCALE_START;
        ApplyWarpGrow(0, tWarpScale);

        /* --- Character sprite — matrix slot 1 ---
         * Invisible until after SPIN_WAIT. gSaveBlock2Ptr->playerGender:
         * MALE=0 (Brendan), FEMALE=1 (May). */
        if (gSaveBlock2Ptr->playerGender == MALE)
        {
            LoadCompressedSpriteSheet(&sSpriteSheet_Brendan);
            LoadSpritePalette(&sSpritePal_Brendan);
            tCharId = CreateSprite(&sSpriteTemplate_Brendan,
                                   CHAR_START_X, CHAR_START_Y, 1);
        }
        else
        {
            LoadCompressedSpriteSheet(&sSpriteSheet_May);
            LoadSpritePalette(&sSpritePal_May);
            tCharId = CreateSprite(&sSpriteTemplate_May,
                                   CHAR_START_X, CHAR_START_Y, 1);
        }
        gSprites[tCharId].invisible     = TRUE;
        gSprites[tCharId].oam.matrixNum = 1;
        tCharScale = WARP_SCALE_FULL;    /* character starts at 100% when revealed */
        ApplyCharSuck(1, tCharScale);

        tRotAngle = 0;
        tTimer    = 0;

        /* Enable GPU — palette still all black (fade-in happens in TWS_FADEIN) */
        SetVBlankCallback(VBlankCB_TimeWarp);
        SetGpuReg(REG_OFFSET_DISPCNT,
                  DISPCNT_MODE_0
                  | DISPCNT_OBJ_1D_MAP
                  | DISPCNT_BG0_ON
                  | DISPCNT_OBJ_ON);
        /* Keep palette blacked out — grow happens before the fade-in */
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        SetMainCallback2(CB2_TimeWarp);

        tState = TWS_GROW;
        break;
    }

    /* ------------------------------------------------------------------ */
    case TWS_GROW:
        /* Warp grows from small to full size (PA: 768 -> 256), no spin yet.
         * Rate: -3/frame, same as the moon in intro.c. ~171 frames to finish. */
        if (tWarpScale > WARP_SCALE_FULL)
        {
            tWarpScale -= WARP_GROW_SPEED;
            if (tWarpScale < WARP_SCALE_FULL)
                tWarpScale = WARP_SCALE_FULL;
            ApplyWarpGrow(0, tWarpScale);
        }
        else
        {
            /* Warp is full size — begin fade-in and start spinning */
            BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
            tRotAngle = 0;
            tState = TWS_FADEIN;
        }
        break;

    /* ------------------------------------------------------------------ */
    case TWS_FADEIN:
        /* Spin slowly while fading in from black */
        tRotAngle = (tRotAngle + 3) & 0xFF;
        ApplyWarpRotation(0, (u8)tRotAngle);
        if (!gPaletteFade.active)
        {
            tTimer = 0;
            tState = TWS_SPIN_WAIT;
        }
        break;

    /* ------------------------------------------------------------------ */
    case TWS_SPIN_WAIT:
        /* Warp spins alone at full size for SPIN_FRAMES before char appears */
        tRotAngle = (tRotAngle + 3) & 0xFF;
        ApplyWarpRotation(0, (u8)tRotAngle);
        if (++tTimer >= SPIN_FRAMES)
        {
            /* Reveal the character at full size, bottom-centre */
            gSprites[tCharId].invisible = FALSE;
            gSprites[tCharId].x = CHAR_START_X;
            gSprites[tCharId].y = CHAR_START_Y;
            tCharScale = WARP_SCALE_FULL;
            ApplyCharSuck(1, tCharScale);
            tTimer = 0;
            tState = TWS_SUCK;
        }
        break;

    /* ------------------------------------------------------------------ */
    case TWS_SUCK:
    {
        /* Warp spins faster once sucking starts */
        tRotAngle = (tRotAngle + 5) & 0xFF;
        ApplyWarpRotation(0, (u8)tRotAngle);

        /* Suck: increase PA each frame -> sprite appears smaller.
         * PA=256 (100%) -> PA=CHAR_SUCK_MAX (12.5%) over ~299 frames.
         * We declare invisible once PA > a visible threshold (~512 = 50%). */
        if (tCharScale < CHAR_SUCK_MAX)
        {
            tCharScale += CHAR_SUCK_SPEED;
            if (tCharScale > CHAR_SUCK_MAX)
                tCharScale = CHAR_SUCK_MAX;

            /* Lerp position toward the warp centre as the sprite shrinks.
             * frac = (PA - 256) / (CHAR_SUCK_MAX - 256):
             *   at PA=256 -> frac=0 (stays at CHAR_START),
             *   at PA=CHAR_SUCK_MAX -> frac=256 (reaches WARP_CENTER). */
            {
                s32 frac = ((s32)(tCharScale - WARP_SCALE_FULL) * 256)
                            / (CHAR_SUCK_MAX - WARP_SCALE_FULL);
                s16 cx = (s16)(CHAR_START_X
                               + (((s32)(WARP_CENTER_X - CHAR_START_X) * frac) >> 8));
                s16 cy = (s16)(CHAR_START_Y
                               + (((s32)(WARP_CENTER_Y - CHAR_START_Y) * frac) >> 8));
                gSprites[tCharId].x = cx;
                gSprites[tCharId].y = cy;
            }
            ApplyCharSuck(1, tCharScale);

            /* Hide the sprite once it is small enough to be invisible */
            if (tCharScale >= CHAR_SUCK_MAX / 2)
                gSprites[tCharId].invisible = TRUE;
        }
        else
        {
            /* Character has fully vanished — hold ~1 s then fade out */
            gSprites[tCharId].invisible = TRUE;
            if (++tTimer >= 60)
            {
                BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
                tState = TWS_FADEOUT;
            }
        }
        break;
    }

    /* ------------------------------------------------------------------ */
    case TWS_FADEOUT:
        /* Keep spinning through the fade */
        tRotAngle = (tRotAngle + 5) & 0xFF;
        ApplyWarpRotation(0, (u8)tRotAngle);
        if (!gPaletteFade.active)
            tState = TWS_DONE;
        break;

    /* ------------------------------------------------------------------ */
    case TWS_DONE:
    default:
        SetVBlankCallback(NULL);
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        DestroyTask(taskId);
        /* Hand control back to the overworld */
        SetMainCallback2(CB2_ReturnToField);
        break;
    }
}

/* --------------------------------------------------------------------------
 * Entry point — called by the script via  `special StartTimeWarpScene`
 * Add  SPECIAL(StartTimeWarpScene)  to src/data/specials.inc
 * -------------------------------------------------------------------------- */
void StartTimeWarpScene(void)
{
    CreateTask(Task_TimeWarpScene, 0);
}

#undef tState
#undef tTimer
#undef tWarpId
#undef tCharId
#undef tWarpScale
#undef tCharScale
#undef tRotAngle
