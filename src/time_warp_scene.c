/*
 * src/time_warp_scene.c
 *
 * Cutscene triggered from Mt. Pyre Summit after the old lady gives the Magma Emblem.
 *
 * Flow:
 *   1. Load BG (graphics/time_warp/bg)
 *   2. Warp sprite (64x64) grows from small to full size (PA: 768 -> 256) WHILE
 *      spinning simultaneously from frame 1 — rotation and scale are combined.
 *   3. Warp holds at full size spinning for SPIN_FRAMES frames.
 *   4. Character (Brendan/May) appears at bottom and is sucked into the warp
 *      (PA: 256 -> large, visually shrinks toward center).
 *   5. Fade to black.
 *   6. TWS_DONE: SetWarpDestination + WarpIntoMap teleport directly to
 *      MAP_NIGHTMARE_REALM_1 (x=10, y=10) — no script engine dependency.
 *
 * GBA affine matrix combined scale + rotation:
 *   PA =  cos * scale / 256
 *   PB = -sin * scale / 256
 *   PC =  sin * scale / 256
 *   PD =  cos * scale / 256
 *   Where scale=256 means 100%, scale=768 means ~33% (small), etc.
 *   sin/cos come from gSineTable[angle] where angle 0-255 = full circle.
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
#include "script.h"
#include "time_warp_scene.h"

/* Warp script defined in data/maps/MtPyre_Summit/scripts.pory.
 * Executed by ScriptContext_SetupScript in TWS_DONE to teleport
 * the player to MAP_NIGHTMARE_REALM_1 after the cutscene ends. */
extern const u8 NightmareRealm1_WarpIn[];

/* --------------------------------------------------------------------------
 * Graphics assets
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
#define TAG_CHAR 0x5A01

/* --------------------------------------------------------------------------
 * Scene states
 * -------------------------------------------------------------------------- */
enum
{
    TWS_LOAD,       /* one-shot setup                                          */
    TWS_GROW,       /* warp grows (PA 768->256) WHILE spinning simultaneously  */
    TWS_SPIN_WAIT,  /* warp spins at full size before character appears         */
    TWS_SUCK,       /* character shrinks/moves into warp center                */
    TWS_FADEOUT,    /* fade to black                                           */
    TWS_DONE,       /* warp directly to MAP_NIGHTMARE_REALM_1 via C             */
};

/* Warp grow: PA starts at WARP_SCALE_START, decreases WARP_GROW_SPEED/frame */
#define WARP_SCALE_START  768
#define WARP_SCALE_FULL   256
#define WARP_GROW_SPEED     4

/* Slow rotation speed during grow phase (units out of 256 per frame) */
#define WARP_ROT_GROW     2
/* Normal spin speed once fully grown */
#define WARP_ROT_SPIN     3
/* Fast spin speed during suck and fadeout */
#define WARP_ROT_FAST     5

/* Frames the warp spins alone at full size before character appears */
#define SPIN_FRAMES 90

/* Warp center position on screen */
#define WARP_CENTER_X 120
#define WARP_CENTER_Y 100

/* Character start position (bottom-centre) */
#define CHAR_START_X  120
#define CHAR_START_Y  148

/* Character suck: PA 256 -> CHAR_SUCK_MAX (visually shrinks to nothing) */
#define CHAR_SUCK_SPEED   6
#define CHAR_SUCK_MAX  2048

/* --------------------------------------------------------------------------
 * Task data slots
 * -------------------------------------------------------------------------- */
#define tState      data[0]
#define tTimer      data[1]
#define tWarpId     data[2]
#define tCharId     data[3]
#define tWarpScale  data[4]
#define tCharScale  data[5]
#define tRotAngle   data[6]

/* --------------------------------------------------------------------------
 * OAM data — 64x64 affine normal
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

static const union AnimCmd sAnim_Single[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Single[] = { sAnim_Single };

static const struct CompressedSpriteSheet sSpriteSheet_Warp =
    { sTimeWarpWarp_Gfx, 0x800, TAG_WARP };
static const struct SpritePalette sSpritePal_Warp =
    { sTimeWarpWarp_Pal, TAG_WARP };
static const struct SpriteTemplate sSpriteTemplate_Warp =
{
    .tileTag = TAG_WARP, .paletteTag = TAG_WARP,
    .oam = &sOam_64x64_Affine, .anims = sAnims_Single,
    .images = NULL, .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct CompressedSpriteSheet sSpriteSheet_May =
    { sTimeWarpMay_Gfx, 0x800, TAG_CHAR };
static const struct SpritePalette sSpritePal_May =
    { sTimeWarpMay_Pal, TAG_CHAR };
static const struct SpriteTemplate sSpriteTemplate_May =
{
    .tileTag = TAG_CHAR, .paletteTag = TAG_CHAR,
    .oam = &sOam_64x64_Affine, .anims = sAnims_Single,
    .images = NULL, .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct CompressedSpriteSheet sSpriteSheet_Brendan =
    { sTimeWarpBrendan_Gfx, 0x800, TAG_CHAR };
static const struct SpritePalette sSpritePal_Brendan =
    { sTimeWarpBrendan_Pal, TAG_CHAR };
static const struct SpriteTemplate sSpriteTemplate_Brendan =
{
    .tileTag = TAG_CHAR, .paletteTag = TAG_CHAR,
    .oam = &sOam_64x64_Affine, .anims = sAnims_Single,
    .images = NULL, .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

/* --------------------------------------------------------------------------
 * VBlank / main callbacks
 * -------------------------------------------------------------------------- */
static void VBlankCB_TimeWarp(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_TimeWarp(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

/* --------------------------------------------------------------------------
 * ApplyWarpScaleRotation
 * Applies BOTH scale and rotation to a matrix slot simultaneously.
 *
 *   scale = PA value (256=100%, 768=~33%, etc.)
 *   angle = 0-255 full circle
 *
 * Combined affine matrix:
 *   PA =  (cos * scale) >> 8
 *   PB = -(sin * scale) >> 8
 *   PC =  (sin * scale) >> 8
 *   PD =  (cos * scale) >> 8
 *
 * When scale=256 this reduces to pure rotation (same as ApplyWarpRotation).
 * When angle=0   this reduces to pure scale (same as ApplyWarpGrow).
 * -------------------------------------------------------------------------- */
static void ApplyWarpScaleRotation(u8 matrixNum, s16 scale, u8 angle)
{
    s16 sinVal = gSineTable[angle];
    s16 cosVal = gSineTable[(angle + 64) & 0xFF];
    s16 pa = (s16)((cosVal * scale) >> 8);
    s16 pb = (s16)((-sinVal * scale) >> 8);
    s16 pc = (s16)((sinVal * scale) >> 8);
    s16 pd = (s16)((cosVal * scale) >> 8);
    SetOamMatrix(matrixNum, (u16)pa, (u16)pb, (u16)pc, (u16)pd);
}

/* Pure scale — used for character suck (no rotation on character) */
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

        /* BG layer */
        DecompressDataWithHeaderVram(sTimeWarpBg_Gfx, (void *)(BG_CHAR_ADDR(0)));
        DmaCopy16(3, sTimeWarpBg_Map, (void *)(BG_SCREEN_ADDR(28)), BG_SCREEN_SIZE);
        LoadPalette(sTimeWarpBg_Pal, BG_PLTT_ID(0), sizeof(sTimeWarpBg_Pal));
        SetGpuReg(REG_OFFSET_BG0CNT,
                  BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28)
                  | BGCNT_16COLOR | BGCNT_TXT256x256);
        SetGpuReg(REG_OFFSET_BG0HOFS, 0);
        SetGpuReg(REG_OFFSET_BG0VOFS, 0);

        /* Warp sprite — matrix slot 0, starts at WARP_SCALE_START, angle=0 */
        LoadCompressedSpriteSheet(&sSpriteSheet_Warp);
        LoadSpritePalette(&sSpritePal_Warp);
        {
            u8 id = CreateSprite(&sSpriteTemplate_Warp, WARP_CENTER_X, WARP_CENTER_Y, 0);
            gSprites[id].oam.matrixNum = 0;
            tWarpId = id;
        }
        tWarpScale = WARP_SCALE_START;
        tRotAngle  = 0;
        /* Apply initial combined matrix: scale=768, angle=0 */
        ApplyWarpScaleRotation(0, tWarpScale, (u8)tRotAngle);

        /* Character sprite — matrix slot 1, invisible until TWS_SPIN_WAIT ends */
        if (gSaveBlock2Ptr->playerGender == MALE)
        {
            LoadCompressedSpriteSheet(&sSpriteSheet_Brendan);
            LoadSpritePalette(&sSpritePal_Brendan);
            tCharId = CreateSprite(&sSpriteTemplate_Brendan, CHAR_START_X, CHAR_START_Y, 1);
        }
        else
        {
            LoadCompressedSpriteSheet(&sSpriteSheet_May);
            LoadSpritePalette(&sSpritePal_May);
            tCharId = CreateSprite(&sSpriteTemplate_May, CHAR_START_X, CHAR_START_Y, 1);
        }
        gSprites[tCharId].invisible     = TRUE;
        gSprites[tCharId].oam.matrixNum = 1;
        tCharScale = WARP_SCALE_FULL;
        ApplyCharSuck(1, tCharScale);

        tTimer = 0;

        /* Enable GPU, black out, begin fade-in (grow and fade-in simultaneous) */
        SetVBlankCallback(VBlankCB_TimeWarp);
        SetGpuReg(REG_OFFSET_DISPCNT,
                  DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_OBJ_ON);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        BeginNormalPaletteFade(PALETTES_ALL, 2, 16, 0, RGB_BLACK);
        SetMainCallback2(CB2_TimeWarp);

        tState = TWS_GROW;
        break;
    }

    /* ------------------------------------------------------------------ */
    case TWS_GROW:
        /*
         * Every frame: decrease scale toward WARP_SCALE_FULL AND advance angle.
         * ApplyWarpScaleRotation combines both into a single matrix write so the
         * sprite visually grows AND rotates at the same time from frame 1.
         */
        if (tWarpScale > WARP_SCALE_FULL)
        {
            tWarpScale -= WARP_GROW_SPEED;
            if (tWarpScale < WARP_SCALE_FULL)
                tWarpScale = WARP_SCALE_FULL;
        }
        tRotAngle = (tRotAngle + WARP_ROT_GROW) & 0xFF;
        ApplyWarpScaleRotation(0, tWarpScale, (u8)tRotAngle);

        /* Transition once fully grown AND fade-in finished */
        if (tWarpScale <= WARP_SCALE_FULL && !gPaletteFade.active)
        {
            tTimer = 0;
            tState = TWS_SPIN_WAIT;
        }
        break;

    /* ------------------------------------------------------------------ */
    case TWS_SPIN_WAIT:
        /* Warp spins alone at full size — scale locked at WARP_SCALE_FULL */
        tRotAngle = (tRotAngle + WARP_ROT_SPIN) & 0xFF;
        ApplyWarpScaleRotation(0, WARP_SCALE_FULL, (u8)tRotAngle);

        if (++tTimer >= SPIN_FRAMES)
        {
            /* Reveal character */
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
        /* Warp spins faster while character is being sucked */
        tRotAngle = (tRotAngle + WARP_ROT_FAST) & 0xFF;
        ApplyWarpScaleRotation(0, WARP_SCALE_FULL, (u8)tRotAngle);

        /* Increase character PA each frame — visually shrinks toward center */
        if (tCharScale < CHAR_SUCK_MAX)
        {
            tCharScale += CHAR_SUCK_SPEED;
            if (tCharScale > CHAR_SUCK_MAX)
                tCharScale = CHAR_SUCK_MAX;

            /* Lerp position toward warp center as sprite shrinks */
            {
                s32 frac = ((s32)(tCharScale - WARP_SCALE_FULL) * 256)
                            / (CHAR_SUCK_MAX - WARP_SCALE_FULL);
                gSprites[tCharId].x = (s16)(CHAR_START_X
                    + (((s32)(WARP_CENTER_X - CHAR_START_X) * frac) >> 8));
                gSprites[tCharId].y = (s16)(CHAR_START_Y
                    + (((s32)(WARP_CENTER_Y - CHAR_START_Y) * frac) >> 8));
            }
            ApplyCharSuck(1, tCharScale);

            if (tCharScale >= CHAR_SUCK_MAX / 2)
                gSprites[tCharId].invisible = TRUE;
        }
        else
        {
            /* Character fully vanished — hold briefly then fade out */
            gSprites[tCharId].invisible = TRUE;
            if (++tTimer >= 20)
            {
                BeginNormalPaletteFade(PALETTES_ALL, 1, 0, 16, RGB_BLACK);
                tState = TWS_FADEOUT;
            }
        }
        break;
    }

    /* ------------------------------------------------------------------ */
    case TWS_FADEOUT:
        tRotAngle = (tRotAngle + WARP_ROT_FAST) & 0xFF;
        ApplyWarpScaleRotation(0, WARP_SCALE_FULL, (u8)tRotAngle);
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
        /*
         * Hand off to the warp script NightmareRealm1_WarpIn (defined in
         * data/maps/MtPyre_Summit/scripts.pory). That script does:
         *   lockall -> warp MAP_NIGHTMARE_REALM_1, 10, 10
         *   -> waitstate -> releaseall -> end
         *
         * ScriptContext_SetupScript loads it into the script engine.
         * CB2_ReturnToField restores the overworld loop, which then ticks
         * the script engine and drives the warp + map load normally.
         * Screen is already black from TWS_FADEOUT, so there is no flash.
         */
        ScriptContext_SetupScript(NightmareRealm1_WarpIn);
        SetMainCallback2(CB2_ReturnToField);
        break;
    }
}

/* --------------------------------------------------------------------------
 * Entry point — `special StartTimeWarpScene` in poryscript
 * Register in src/data/specials.inc:
 *   SPECIAL(StartTimeWarpScene)
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
