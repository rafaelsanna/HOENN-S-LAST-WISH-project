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
    HWL_STATE_WAIT_FRAME,  // ← frame vazio: garante que o OAM e a VRAM
                            //   estao limpos antes de a proxima cena carregar
    HWL_STATE_DONE,
};

static void Task_HWLIntro(u8 taskId);
static void VBlankCB_HWL(void);
static void CB2_HWLMain(void);

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

            // Habilita AFFINE_DOUBLE para o shrink
            logo->oam.affineMode = ST_OAM_AFFINE_DOUBLE;
            logo->oam.matrixNum  = HWL_AFFINE_MATRIX;
            CalcCenterToCornerVec(logo,
                                  SPRITE_SHAPE(64x64),
                                  SPRITE_SIZE(64x64),
                                  ST_OAM_AFFINE_DOUBLE);

            StartSpriteAffineAnim(logo, 1);  // shrink

            // Fade de saida ligeiramente mais rapido que o shrink (delay=2)
            // assim a tela ja esta quase preta quando o sprite chega em 0x
            BeginNormalPaletteFade(PALETTES_ALL, 2, 0, 16, RGB_BLACK);

            data[0] = HWL_STATE_SHRINK;
        }
        break;

    case HWL_STATE_SHRINK:
        // Aguarda o fade de saida terminar (cobre o shrink)
        if (!gPaletteFade.active)
        {
            // Destroi sprite e libera memoria ENQUANTO a tela ja esta preta
            // (nao ha nada visivel, portanto nao aparece fragmento)
            if (data[1] != SPRITE_NONE)
                DestroySprite(&gSprites[data[1]]);
            FreeSpriteTilesByTag(TAG_HWL_LOGO);
            FreeSpritePaletteByTag(PAL_TAG_HWL);

            data[0] = HWL_STATE_WAIT_FRAME;
        }
        break;

    case HWL_STATE_WAIT_FRAME:
        // Espera UM frame para o OAM/VRAM processarem o DestroySprite antes
        // de entregar o controle para a proxima cena.
        // Isso elimina o fragmento visual na transicao.
        data[0] = HWL_STATE_DONE;
        break;

    case HWL_STATE_DONE:
        SetMainCallback2(CB2_ExpansionIntro);
        CreateTask(Task_HandleExpansionIntro, 0);
        DestroyTask(taskId);
        break;
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
