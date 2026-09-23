#include "global.h"
#include "bg.h"
#include "decompress.h"
#include "palette.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "gpu_regs.h"
#include "main.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "hwl_intro.h"
#include "expansion_intro.h"

// ============================================================
// TAGS
// ============================================================
#define TAG_HWL_LOGO  20002
#define PAL_TAG_HWL   20003

#define HWL_LOGO_POS_X  120
#define HWL_LOGO_POS_Y   80
#define HWL_DISPLAY_FRAMES  90
#define HWL_AFFINE_MATRIX   0

// ============================================================
// ASSETS
// ============================================================
static const u32 sSpriteTiles_HWLLogo[] =
    INCBIN_U32("graphics/expansion_intro/sprites/logo.4bpp.lz");
static const u16 sSpritePal_HWLLogo[] =
    INCBIN_U16("graphics/expansion_intro/sprites/logo.gbapal");

static const struct CompressedSpriteSheet sSpriteSheet_HWLLogo = {
    .data = sSpriteTiles_HWLLogo,
    .size = 0x2800,
    .tag  = TAG_HWL_LOGO,
};
static const struct SpritePalette sSpritePalette_HWLLogo = {
    .data = sSpritePal_HWLLogo,
    .tag  = PAL_TAG_HWL,
};

// ============================================================
// DISCLAIMER INTRO V4 (integrated fade-only)
// Ordem: Copyright -> HLW -> Disclaimer -> Expansion Intro
// ============================================================
#define DISCLAIMER_BG               0
#define DISCLAIMER_HOLD_FRAMES      240
#define DISCLAIMER_TOTAL_COLUMNS    30
#define DISCLAIMER_TOTAL_ROWS       20

static const u32 sDisclaimer_Gfx[] =
    INCBIN_U32("graphics/disclaimer/disclaimer.4bpp");
static const u16 sDisclaimer_Pal[] =
    INCBIN_U16("graphics/disclaimer/disclaimer.gbapal");
static const u16 sDisclaimer_Tilemap[] =
    INCBIN_U16("graphics/disclaimer/disclaimer.bin");

static const struct BgTemplate sBgTemplates_Disclaimer[] =
{
    {
        .bg = DISCLAIMER_BG,
        .charBaseIndex = 0,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0
    },
};

// ============================================================
// OAM
// ============================================================
static const struct OamData sOamData_HWLLogo = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .mosaic     = FALSE,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .priority   = 0,
};

// ============================================================
// ANIMACAO DE FRAMES -- toca UMA vez e trava no ultimo frame
// ============================================================
static const union AnimCmd sAnim_HWLLogo_Once[] = {
    ANIMCMD_FRAME(  0, 10),
    ANIMCMD_FRAME( 64, 10),
    ANIMCMD_FRAME(128, 10),
    ANIMCMD_FRAME(192, 10),
    ANIMCMD_FRAME(256, 10),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_HWLLogo[] = {
    sAnim_HWLLogo_Once,
};

// ============================================================
// ANIMACOES AFFINE
//
//   index 0 - Normal: mantem 1x (idle)
//   index 1 - Shrink: encolhe suavemente ate quase desaparecer
//             256 + (-5 x 48) = 16  -> quase invisivel
//             O fade simultaneo cobre o resto
// ============================================================
static const union AffineAnimCmd sAffineAnim_HWLLogo_Normal[] = {
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_JUMP(0),
};
static const union AffineAnimCmd sAffineAnim_HWLLogo_Shrink[] = {
    AFFINEANIMCMD_FRAME(256, 256,  0,  0),  // comeca em 1x
    AFFINEANIMCMD_FRAME( -5,  -5,  0, 48), // -5 por frame x 48 = escala final 16 (~0x)
    AFFINEANIMCMD_END,
};
static const union AffineAnimCmd *const sAffineAnims_HWLLogo[] = {
    [0] = sAffineAnim_HWLLogo_Normal,
    [1] = sAffineAnim_HWLLogo_Shrink,
};

// ============================================================
// TEMPLATE
// ============================================================
static const struct SpriteTemplate sSpriteTemplate_HWLLogo = {
    .tileTag     = TAG_HWL_LOGO,
    .paletteTag  = PAL_TAG_HWL,
    .oam         = &sOamData_HWLLogo,
    .anims       = sAnims_HWLLogo,
    .images      = NULL,
    .affineAnims = sAffineAnims_HWLLogo,
    .callback    = SpriteCallbackDummy,
};

// ============================================================
// STATES
// ============================================================
enum {
    HWL_STATE_FADE_IN = 0,
    HWL_STATE_SHOW,
    HWL_STATE_SHRINK,
    HWL_STATE_WAIT_FRAME,
    HWL_STATE_DISCLAIMER_SETUP,
    HWL_STATE_DISCLAIMER_FADE_IN,
    HWL_STATE_DISCLAIMER_HOLD,
    HWL_STATE_DISCLAIMER_FADE_OUT,
    HWL_STATE_DONE,
};

static void Task_HWLIntro(u8 taskId);
static void VBlankCB_HWL(void);
static void CB2_HWLMain(void);

static void DisclaimerIntro_InitBgs(void);
static void DisclaimerIntro_LoadGraphics(void);
static void DisclaimerIntro_LoadTilemapToVram(void);

// ============================================================
// ENTRY POINT
// ============================================================
void CB2_HWLIntro(void)
{
    SetVBlankCallback(NULL);
    ResetBgsAndClearDma3BusyFlags(0);

    SetGpuReg(REG_OFFSET_DISPCNT,
              DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON);

    LoadCompressedSpriteSheet(&sSpriteSheet_HWLLogo);
    LoadSpritePalette(&sSpritePalette_HWLLogo);

    u8 spriteId = CreateSprite(&sSpriteTemplate_HWLLogo,
                               HWL_LOGO_POS_X, HWL_LOGO_POS_Y, 10);

    StartSpriteAffineAnim(&gSprites[spriteId], 0);
    StartSpriteAnim(&gSprites[spriteId], 0);

    u8 taskId = CreateTask(Task_HWLIntro, 0);
    gTasks[taskId].data[0] = HWL_STATE_FADE_IN;
    gTasks[taskId].data[1] = spriteId;
    gTasks[taskId].data[2] = 0;

    SetVBlankCallback(VBlankCB_HWL);
    SetMainCallback2(CB2_HWLMain);

    BeginNormalPaletteFade(PALETTES_ALL, 4, 16, 0, RGB_BLACK);
}

// ============================================================
// TASK PRINCIPAL
// ============================================================
static void Task_HWLIntro(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (data[0])
    {
    case HWL_STATE_FADE_IN:
        if (!gPaletteFade.active)
            data[0] = HWL_STATE_SHOW;
        break;

    case HWL_STATE_SHOW:
        data[2]++;
        if (data[2] >= HWL_DISPLAY_FRAMES || gMain.newKeys)
        {
            struct Sprite *logo = &gSprites[data[1]];

            logo->oam.affineMode = ST_OAM_AFFINE_DOUBLE;
            logo->oam.matrixNum  = HWL_AFFINE_MATRIX;
            CalcCenterToCornerVec(logo,
                                  SPRITE_SHAPE(64x64),
                                  SPRITE_SIZE(64x64),
                                  ST_OAM_AFFINE_DOUBLE);

            StartSpriteAffineAnim(logo, 1);
            BeginNormalPaletteFade(PALETTES_ALL, 2, 0, 16, RGB_BLACK);

            data[0] = HWL_STATE_SHRINK;
        }
        break;

    case HWL_STATE_SHRINK:
        if (!gPaletteFade.active)
        {
            if (data[1] != SPRITE_NONE)
                DestroySprite(&gSprites[data[1]]);

            FreeSpriteTilesByTag(TAG_HWL_LOGO);
            FreeSpritePaletteByTag(PAL_TAG_HWL);

            data[1] = SPRITE_NONE;
            data[2] = 0;
            data[0] = HWL_STATE_WAIT_FRAME;
        }
        break;

    case HWL_STATE_WAIT_FRAME:
        // One empty frame lets OAM settle after DestroySprite.
        data[0] = HWL_STATE_DISCLAIMER_SETUP;
        break;

    case HWL_STATE_DISCLAIMER_SETUP:
        /*
         * IMPORTANT:
         * The disclaimer is NOT a new callback and NOT a new task.
         * It is just more states inside the already-working HWL task.
         */
        DisclaimerIntro_InitBgs();
        DisclaimerIntro_LoadGraphics();
        DisclaimerIntro_LoadTilemapToVram();

        ShowBg(DISCLAIMER_BG);

        data[2] = 0;
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        data[0] = HWL_STATE_DISCLAIMER_FADE_IN;
        break;

    case HWL_STATE_DISCLAIMER_FADE_IN:
        if (!gPaletteFade.active)
        {
            data[2] = 0;
            data[0] = HWL_STATE_DISCLAIMER_HOLD;
        }
        break;

    case HWL_STATE_DISCLAIMER_HOLD:
        if (++data[2] >= DISCLAIMER_HOLD_FRAMES
         || (gMain.newKeys & (A_BUTTON | B_BUTTON | START_BUTTON)))
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            data[0] = HWL_STATE_DISCLAIMER_FADE_OUT;
        }
        break;

    case HWL_STATE_DISCLAIMER_FADE_OUT:
        if (!gPaletteFade.active)
            data[0] = HWL_STATE_DONE;
        break;

    case HWL_STATE_DONE:
    {
        u8 i;

        /*
         * Reuse THIS SAME task slot as Task_HandleExpansionIntro.
         * No DestroyTask/CreateTask pair, no intermediate callback, and no
         * chance to recycle a task slot while RunTasks is traversing it.
         */
        SetVBlankCallback(NULL);

        for (i = 0; i < 16; i++)
            data[i] = 0;

        gTasks[taskId].func = Task_HandleExpansionIntro;
        SetMainCallback2(CB2_ExpansionIntro);
        break;
    }
    }
}

// ============================================================
// CALLBACKS
// ============================================================
static void VBlankCB_HWL(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_HWLMain(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

// ============================================================
// DISCLAIMER - integrated into Task_HWLIntro
// ============================================================
static void DisclaimerIntro_InitBgs(void)
{
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sBgTemplates_Disclaimer, ARRAY_COUNT(sBgTemplates_Disclaimer));

    HideBg(0);
    HideBg(1);
    HideBg(2);
    HideBg(3);

    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_BLDY, 0);
    SetGpuReg(REG_OFFSET_WININ, 0);
    SetGpuReg(REG_OFFSET_WINOUT, 0);

    // Plain BG only. No windows, wipe, or extra callback.
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0 | DISPCNT_BG0_ON);
}

static void DisclaimerIntro_LoadGraphics(void)
{
    // Tile 0 stays blank. Disclaimer graphics start at tile 1.
    LoadBgTiles(DISCLAIMER_BG, sDisclaimer_Gfx, sizeof(sDisclaimer_Gfx), 1);
    LoadPalette(sDisclaimer_Pal, BG_PLTT_ID(0), PLTT_SIZE_4BPP);

    // The source PNG's palette index 0 is pink. On a text BG that entry is
    // the backdrop/transparent color, so force it to black.
    gPlttBufferUnfaded[BG_PLTT_ID(0)] = RGB_BLACK;
    gPlttBufferFaded[BG_PLTT_ID(0)] = RGB_BLACK;
}

static void DisclaimerIntro_LoadTilemapToVram(void)
{
    u16 x;
    u16 y;
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(31);

    /*
     * Write directly to the 32x32 screenblock. This removes the old 2 KB
     * RAM tilemap buffer and SetBgTilemapBuffer/CopyBgTilemapBufferToVram
     * path entirely.
     */
    for (y = 0; y < 32; y++)
    {
        for (x = 0; x < 32; x++)
            dst[y * 32 + x] = 0;
    }

    // disclaimer.bin is a packed 30x20 tilemap.
    for (y = 0; y < DISCLAIMER_TOTAL_ROWS; y++)
    {
        for (x = 0; x < DISCLAIMER_TOTAL_COLUMNS; x++)
        {
            u16 entry = sDisclaimer_Tilemap[y * DISCLAIMER_TOTAL_COLUMNS + x];
            u16 tileNum = (entry & 0x03FF) + 1;

            dst[y * 32 + x] = (entry & 0xFC00) | tileNum;
        }
    }
}
