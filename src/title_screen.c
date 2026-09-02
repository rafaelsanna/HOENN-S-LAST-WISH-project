#include "global.h"
#include "comfy_anim.h"
#include "battle.h"
#include "title_screen.h"
#include "sprite.h"
#include "gba/m4a_internal.h"
#include "clear_save_data_menu.h"
#include "decompress.h"
#include "event_data.h"
#include "intro.h"
#include "m4a.h"
#include "main.h"
#include "main_menu.h"
#include "palette.h"
#include "reset_rtc_screen.h"
#include "berry_fix_program.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "scanline_effect.h"
#include "gpu_regs.h"
#include "trig.h"
#include "graphics.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "constants/flags.h"

enum {
    TAG_VERSION = 1000,
    TAG_PRESS_START_COPYRIGHT,
    TAG_LOGO_SHINE,
    TAG_TITLE_STARS,
    TAG_TITLE_COMET,
};

#define VERSION_BANNER_RIGHT_TILEOFFSET 64
#define VERSION_BANNER_LEFT_X 88
#define VERSION_BANNER_RIGHT_X 152
#define VERSION_BANNER_Y 2
#define VERSION_BANNER_Y_GOAL 60
#define START_BANNER_X 128

// Falling stars: same visual language used by the other custom UI screens.
// OBJ palette slots 12-15 are intentionally isolated from the title UI.
#define NUM_TITLE_STARS              30
#define TITLE_STAR_PRIORITY           2
#define TITLE_STAR_PALETTE_FIRST     12

// Title comet: same 4-frame animation and diagonal trajectory as Scene 0.
#define TITLE_COMET_FIRST_DELAY      180   // ~3 seconds at 60 FPS
#define TITLE_COMET_REPEAT_DELAY    1800   // ~30 seconds at 60 FPS
#define TITLE_COMET_START_X          232
#define TITLE_COMET_START_Y          -32
#define TITLE_COMET_PRIORITY           2   // same OBJ priority as falling stars

enum
{
    TITLE_STAR_SIZE_MEDIUM,
    TITLE_STAR_SIZE_LARGE,
    TITLE_STAR_SIZE_COUNT,
};

#define CLEAR_SAVE_BUTTON_COMBO (B_BUTTON | SELECT_BUTTON | DPAD_UP)
#define RESET_RTC_BUTTON_COMBO (B_BUTTON | SELECT_BUTTON | DPAD_LEFT)
#define BERRY_UPDATE_BUTTON_COMBO (B_BUTTON | SELECT_BUTTON)
#define A_B_START_SELECT (A_BUTTON | B_BUTTON | START_BUTTON | SELECT_BUTTON)

// After this story flag is set, the title screen keeps the exact same
// animation/UI but swaps the legendary background and its palette glow.
//
// Define this globally in include/constants/flags.h as well so scripts / other
// C files can reference the same flag symbol.
#ifndef FLAG_ENCOUNTER_MEGA_RAY
#define FLAG_ENCOUNTER_MEGA_RAY 0x28C
#endif

#define MEGA_RAY_BG_PALETTE          14
#define MEGA_RAY_BG_MAP_WIDTH        32
#define MEGA_RAY_BG_MAP_HEIGHT       20
#define MEGA_RAY_BG_MAP_ENTRIES      (MEGA_RAY_BG_MAP_WIDTH * MEGA_RAY_BG_MAP_HEIGHT)

// Verified directly from the indexed megaraybg.png supplied for this screen:
// palette index 1 = yellow glow mask
// palette index 9 = red glow mask
#define MEGA_RAY_GLOW_YELLOW_INDEX    1
#define MEGA_RAY_GLOW_RED_INDEX       9

static void MainCB2(void);
static void Task_TitleScreenPhase1(u8);
static void Task_TitleScreenPhase2(u8);
static void Task_TitleScreenPhase3(u8);
static void CB2_GoToMainMenu(void);
static void CB2_GoToClearSaveDataScreen(void);
static void CB2_GoToResetRtcScreen(void);
static void CB2_GoToBerryFixScreen(void);
static void CB2_GoToCopyrightScreen(void);
static void UpdateLegendaryMarkingColor(u8);
static void UpdateMegaRayGlow(u8 frameNum);
static void LoadMegaRayTitleBackground(void);
static void LoadTitleStarGfx(void);
static void CreateTitleStars(void);
static void Task_TitleStars(u8 taskId);
static void LoadTitleCometGfx(void);
static void CreateTitleComet(void);
static void SpriteCB_TitleComet(struct Sprite *sprite);

static void SpriteCB_VersionBannerLeft(struct Sprite *sprite);
static void SpriteCB_VersionBannerRight(struct Sprite *sprite);
static void SpriteCB_PressStartCopyrightBanner(struct Sprite *sprite);
static void SpriteCB_PokemonLogoShine(struct Sprite *sprite);

// const rom data
static const u16 sUnusedUnknownPal[] = INCBIN_U16("graphics/title_screen/unused.gbapal");

static const u32 sTitleScreenRayquazaGfx[] = INCBIN_U32("graphics/title_screen/rayquaza-shines-tiles.4bpp.smol");
static const u32 sTitleScreenRayquazaTilemap[] = INCBIN_U32("graphics/title_screen/rayquaza-shines-tiles.bin.smolTM");

// Alternate post-Mega-Rayquaza background.
// gbagfx generates megaraybg.4bpp and megaraybg.gbapal from megaraybg.png.
// megaraybg.bin is the supplied raw 32x20 tilemap.
static const u32 sTitleScreenMegaRayGfx[] = INCBIN_U32("graphics/title_screen/megaraybg.4bpp");
static const u16 sTitleScreenMegaRayTilemap[] = INCBIN_U16("graphics/title_screen/megaraybg.bin");
static const u16 sTitleScreenMegaRayPal[] = INCBIN_U16("graphics/title_screen/megaraybg.gbapal");

static const u32 sTitleScreenLogoShineGfx[] = INCBIN_U32("graphics/title_screen/logo_shine.4bpp.smol");
static const u32 sTitleScreenCloudsGfx[] = INCBIN_U32("graphics/title_screen/clouds.4bpp.smol");

// Same 4-frame 64x64 comet format used by the custom intro.
// graphics/title_screen/comet.png is converted by the normal graphics rules.
static const u32 sTitleScreenCometGfx[] = INCBIN_U32("graphics/title_screen/comet.4bpp.smol");
static const u16 sTitleScreenCometPal[] = INCBIN_U16("graphics/title_screen/comet.gbapal");

static u8 sTitleStarSpriteIds[NUM_TITLE_STARS];

// Cached once when entering the title screen. This prevents the visual mode
// from changing mid-animation if some unrelated code touches flags later.
static bool8 sUseMegaRayTitleBackground;



// Used to blend "Emerald Version" as it passes over over the Pokémon banner.
// Also used by the intro to blend the Game Freak name/logo in and out as they appear and disappear
const u16 gTitleScreenAlphaBlend[64] =
{
    BLDALPHA_BLEND(16, 0),
    BLDALPHA_BLEND(16, 1),
    BLDALPHA_BLEND(16, 2),
    BLDALPHA_BLEND(16, 3),
    BLDALPHA_BLEND(16, 4),
    BLDALPHA_BLEND(16, 5),
    BLDALPHA_BLEND(16, 6),
    BLDALPHA_BLEND(16, 7),
    BLDALPHA_BLEND(16, 8),
    BLDALPHA_BLEND(16, 9),
    BLDALPHA_BLEND(16, 10),
    BLDALPHA_BLEND(16, 11),
    BLDALPHA_BLEND(16, 12),
    BLDALPHA_BLEND(16, 13),
    BLDALPHA_BLEND(16, 14),
    BLDALPHA_BLEND(16, 15),
    BLDALPHA_BLEND(15, 16),
    BLDALPHA_BLEND(14, 16),
    BLDALPHA_BLEND(13, 16),
    BLDALPHA_BLEND(12, 16),
    BLDALPHA_BLEND(11, 16),
    BLDALPHA_BLEND(10, 16),
    BLDALPHA_BLEND(9, 16),
    BLDALPHA_BLEND(8, 16),
    BLDALPHA_BLEND(7, 16),
    BLDALPHA_BLEND(6, 16),
    BLDALPHA_BLEND(5, 16),
    BLDALPHA_BLEND(4, 16),
    BLDALPHA_BLEND(3, 16),
    BLDALPHA_BLEND(2, 16),
    BLDALPHA_BLEND(1, 16),
    BLDALPHA_BLEND(0, 16),
    [32 ... 63] = BLDALPHA_BLEND(0, 16)
};

// -----------------------------------------------------------------------------
// FALLING STAR PARTICLES
// -----------------------------------------------------------------------------
// Two 8x8 silhouette shapes are stored directly in ROM. Palette index 0 stays
// transparent; index 1 is the visible star pixel.
//
// Four OBJ palette slots provide two brightness states for each depth/size.
// The task swaps paletteNum over time to create a soft twinkle without
// modifying global palette data every frame.
static const u32 sTitleStarTiles[][8] =
{
    // Medium star: compact 3x3 cross.
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
    // Large star: wider 5x5 cross.
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

static const u16 sTitleStarPal0[4] =
{
    RGB(0, 0, 0), RGB(7, 9, 14), RGB(0, 0, 0), RGB(0, 0, 0)
};

static const u16 sTitleStarPal1[4] =
{
    RGB(0, 0, 0), RGB(14, 16, 22), RGB(0, 0, 0), RGB(0, 0, 0)
};

static const u16 sTitleStarPal2[4] =
{
    RGB(0, 0, 0), RGB(22, 24, 29), RGB(0, 0, 0), RGB(0, 0, 0)
};

static const u16 sTitleStarPal3[4] =
{
    RGB(0, 0, 0), RGB(31, 31, 31), RGB(0, 0, 0), RGB(0, 0, 0)
};

static const struct SpriteSheet sTitleStarSheet =
{
    .data = sTitleStarTiles,
    .size = sizeof(sTitleStarTiles),
    .tag = TAG_TITLE_STARS,
};

// The palette registered to the tag is only a valid initial palette.
// Runtime twinkle uses the isolated OBJ slots 12-15 below.
static const u16 sTitleStarDummyPal[16] =
{
    RGB(0, 0, 0), RGB(31, 31, 31),
};

static const struct SpritePalette sTitleStarDummyPalette =
{
    .data = sTitleStarDummyPal,
    .tag = TAG_TITLE_STARS,
};

static const struct OamData sTitleStarOamData =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(8x8),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(8x8),
    .tileNum = 0,
    .priority = TITLE_STAR_PRIORITY,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sTitleStarAnimMedium[] =
{
    ANIMCMD_FRAME(TITLE_STAR_SIZE_MEDIUM, 0),
    ANIMCMD_END,
};

static const union AnimCmd sTitleStarAnimLarge[] =
{
    ANIMCMD_FRAME(TITLE_STAR_SIZE_LARGE, 0),
    ANIMCMD_END,
};

static const union AnimCmd *const sTitleStarAnimTable[] =
{
    sTitleStarAnimMedium,
    sTitleStarAnimLarge,
};

static const struct SpriteTemplate sTitleStarTemplate =
{
    .tileTag = TAG_TITLE_STARS,
    .paletteTag = TAG_TITLE_STARS,
    .oam = &sTitleStarOamData,
    .anims = sTitleStarAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

// -----------------------------------------------------------------------------
// TITLE COMET
// -----------------------------------------------------------------------------
// Matches the Scene 0 comet:
//   4 frames, 64x64, tile offsets 0/64/128/192, 3 game frames per image.
// It is intentionally assigned the same OBJ priority as the falling stars.
static const struct OamData sTitleCometOamData =
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
    .priority = TITLE_COMET_PRIORITY,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sTitleCometAnim[] =
{
    ANIMCMD_FRAME(  0, 3),
    ANIMCMD_FRAME( 64, 3),
    ANIMCMD_FRAME(128, 3),
    ANIMCMD_FRAME(192, 3),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sTitleCometAnimTable[] =
{
    sTitleCometAnim,
};

static const struct CompressedSpriteSheet sTitleCometSpriteSheet[] =
{
    {
        .data = sTitleScreenCometGfx,
        .size = 0x2000,
        .tag = TAG_TITLE_COMET,
    },
    {},
};

static const struct SpritePalette sTitleCometSpritePalette[] =
{
    {
        .data = sTitleScreenCometPal,
        .tag = TAG_TITLE_COMET,
    },
    {},
};

static const struct SpriteTemplate sTitleCometSpriteTemplate =
{
    .tileTag = TAG_TITLE_COMET,
    .paletteTag = TAG_TITLE_COMET,
    .oam = &sTitleCometOamData,
    .anims = sTitleCometAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_TitleComet,
};

static const struct OamData sVersionBannerLeftOamData =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_8BPP,
    .shape = SPRITE_SHAPE(64x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(64x32),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const struct OamData sVersionBannerRightOamData =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_8BPP,
    .shape = SPRITE_SHAPE(64x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(64x32),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sVersionBannerLeftAnimSequence[] =
{
    ANIMCMD_FRAME(0, 30),
    ANIMCMD_END,
};

static const union AnimCmd sVersionBannerRightAnimSequence[] =
{
    ANIMCMD_FRAME(VERSION_BANNER_RIGHT_TILEOFFSET, 30),
    ANIMCMD_END,
};

static const union AnimCmd *const sVersionBannerLeftAnimTable[] =
{
    sVersionBannerLeftAnimSequence,
};

static const union AnimCmd *const sVersionBannerRightAnimTable[] =
{
    sVersionBannerRightAnimSequence,
};

static const struct SpriteTemplate sVersionBannerLeftSpriteTemplate =
{
    .tileTag = TAG_VERSION,
    .paletteTag = TAG_VERSION,
    .oam = &sVersionBannerLeftOamData,
    .anims = sVersionBannerLeftAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_VersionBannerLeft,
};

static const struct SpriteTemplate sVersionBannerRightSpriteTemplate =
{
    .tileTag = TAG_VERSION,
    .paletteTag = TAG_VERSION,
    .oam = &sVersionBannerRightOamData,
    .anims = sVersionBannerRightAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_VersionBannerRight,
};

static const struct CompressedSpriteSheet sSpriteSheet_EmeraldVersion[] =
{
    {
        .data = gTitleScreenEmeraldVersionGfx,
        .size = 0x1000,
        .tag = TAG_VERSION
    },
    {},
};

static const struct OamData sOamData_CopyrightBanner =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(32x8),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(32x8),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sAnim_PressStart_0[] =
{
    ANIMCMD_FRAME(1, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PressStart_1[] =
{
    ANIMCMD_FRAME(5, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PressStart_2[] =
{
    ANIMCMD_FRAME(9, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PressStart_3[] =
{
    ANIMCMD_FRAME(13, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PressStart_4[] =
{
    ANIMCMD_FRAME(17, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Copyright_0[] =
{
    ANIMCMD_FRAME(21, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Copyright_1[] =
{
    ANIMCMD_FRAME(25, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Copyright_2[] =
{
    ANIMCMD_FRAME(29, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Copyright_3[] =
{
    ANIMCMD_FRAME(33, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Copyright_4[] =
{
    ANIMCMD_FRAME(37, 4),
    ANIMCMD_END,
};

// The "Press Start" and copyright graphics are each 5 32x8 segments long
#define NUM_PRESS_START_FRAMES 5
#define NUM_COPYRIGHT_FRAMES 5

static const union AnimCmd *const sStartCopyrightBannerAnimTable[NUM_PRESS_START_FRAMES + NUM_COPYRIGHT_FRAMES] =
{
    sAnim_PressStart_0,
    sAnim_PressStart_1,
    sAnim_PressStart_2,
    sAnim_PressStart_3,
    sAnim_PressStart_4,
    [NUM_PRESS_START_FRAMES] =
    sAnim_Copyright_0,
    sAnim_Copyright_1,
    sAnim_Copyright_2,
    sAnim_Copyright_3,
    sAnim_Copyright_4,
};

static const struct SpriteTemplate sStartCopyrightBannerSpriteTemplate =
{
    .tileTag = TAG_PRESS_START_COPYRIGHT,
    .paletteTag = TAG_PRESS_START_COPYRIGHT,
    .oam = &sOamData_CopyrightBanner,
    .anims = sStartCopyrightBannerAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_PressStartCopyrightBanner,
};

static const struct CompressedSpriteSheet sSpriteSheet_PressStart[] =
{
    {
        .data = gTitleScreenPressStartGfx,
        .size = 0x520,
        .tag = TAG_PRESS_START_COPYRIGHT
    },
    {},
};

static const struct SpritePalette sSpritePalette_PressStart[] =
{
    {
        .data = gTitleScreenPressStartPal,
        .tag = TAG_PRESS_START_COPYRIGHT
    },
    {},
};

static const struct OamData sPokemonLogoShineOamData =
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

static const union AnimCmd sPokemonLogoShineAnimSequence[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_END,
};

static const union AnimCmd *const sPokemonLogoShineAnimTable[] =
{
    sPokemonLogoShineAnimSequence,
};

static const struct SpriteTemplate sPokemonLogoShineSpriteTemplate =
{
    .tileTag = TAG_LOGO_SHINE,
    .paletteTag = TAG_PRESS_START_COPYRIGHT,
    .oam = &sPokemonLogoShineOamData,
    .anims = sPokemonLogoShineAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_PokemonLogoShine,
};

static const struct CompressedSpriteSheet sPokemonLogoShineSpriteSheet[] =
{
    {
        .data = sTitleScreenLogoShineGfx,
        .size = 0x800,
        .tag = TAG_LOGO_SHINE
    },
    {},
};

// Task data for the main title screen tasks (Task_TitleScreenPhase#)
#define tCounter    data[0]
#define tSkipToNext data[1]
#define tPointless  data[2] // Incremented but never used to do anything.
#define tBg2Y       data[3]
#define tBg1Y       data[4]

// Sprite data for sVersionBannerLeftSpriteTemplate / sVersionBannerRightSpriteTemplate
#define sAlphaBlendIdx data[0]
#define sParentTaskId  data[1]

static void SpriteCB_VersionBannerLeft(struct Sprite *sprite)
{
    if (gTasks[sprite->sParentTaskId].tSkipToNext)
    {
        sprite->oam.objMode = ST_OAM_OBJ_NORMAL;
        sprite->y = VERSION_BANNER_Y_GOAL;
    }
    else
    {
        if (sprite->y != VERSION_BANNER_Y_GOAL)
            sprite->y++;
        if (sprite->sAlphaBlendIdx != 0)
            sprite->sAlphaBlendIdx--;
        SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[sprite->sAlphaBlendIdx]);
    }
}

static void SpriteCB_VersionBannerRight(struct Sprite *sprite)
{
    if (gTasks[sprite->sParentTaskId].tSkipToNext)
    {
        sprite->oam.objMode = ST_OAM_OBJ_NORMAL;
        sprite->y = VERSION_BANNER_Y_GOAL;
    }
    else
    {
        if (sprite->y != VERSION_BANNER_Y_GOAL)
            sprite->y++;
    }
}

// Sprite data for SpriteCB_PressStartCopyrightBanner
#define sAnimate data[0]
#define sTimer   data[1]

static void SpriteCB_PressStartCopyrightBanner(struct Sprite *sprite)
{
    if (sprite->sAnimate == TRUE)
    {
        // Alternate between hidden and shown every 16th frame
        if (++sprite->sTimer & 16)
            sprite->invisible = FALSE;
        else
            sprite->invisible = TRUE;
    }
    else
    {
        sprite->invisible = FALSE;
    }
}

static void CreatePressStartBanner(s16 x, s16 y)
{
    u8 i;
    u8 spriteId;

    x -= 64;
    for (i = 0; i < NUM_PRESS_START_FRAMES; i++, x += 32)
    {
        spriteId = CreateSprite(&sStartCopyrightBannerSpriteTemplate, x, y, 0);
        StartSpriteAnim(&gSprites[spriteId], i);
        gSprites[spriteId].sAnimate = TRUE;
    }
}

static void CreateCopyrightBanner(s16 x, s16 y)
{
    u8 i;
    u8 spriteId;

    x -= 64;
    for (i = 0; i < NUM_COPYRIGHT_FRAMES; i++, x += 32)
    {
        spriteId = CreateSprite(&sStartCopyrightBannerSpriteTemplate, x, y, 0);
        StartSpriteAnim(&gSprites[spriteId], i + NUM_PRESS_START_FRAMES);
    }
}

#undef sAnimate
#undef sTimer

// Defines for SpriteCB_PokemonLogoShine
enum {
    SHINE_MODE_SINGLE_NO_BG_COLOR,
    SHINE_MODE_DOUBLE,
    SHINE_MODE_SINGLE,
};

#define SHINE_SPEED  4

#define sMode     data[0]
#define sBgColor  data[1]

static void SpriteCB_PokemonLogoShine(struct Sprite *sprite)
{
    if (sprite->x < DISPLAY_WIDTH + 32)
    {
        // In any mode except SHINE_MODE_SINGLE_NO_BG_COLOR the background
        // color will change, in addition to the shine sprite moving.
        if (sprite->sMode != SHINE_MODE_SINGLE_NO_BG_COLOR)
        {
            u16 backgroundColor;

            if (sprite->x < DISPLAY_WIDTH / 2)
            {
                // Brighten background color
                if (sprite->sBgColor < 31)
                    sprite->sBgColor++;
                if (sprite->sBgColor < 31)
                    sprite->sBgColor++;
            }
            else
            {
                // Darken background color
                if (sprite->sBgColor != 0)
                    sprite->sBgColor--;
                if (sprite->sBgColor != 0)
                    sprite->sBgColor--;
            }

            backgroundColor = _RGB(sprite->sBgColor, sprite->sBgColor, sprite->sBgColor);

            // Flash the background green for 4 frames of movement.
            // Otherwise use the updating color.
            if (sprite->x == DISPLAY_WIDTH / 2 + (3 * SHINE_SPEED)
             || sprite->x == DISPLAY_WIDTH / 2 + (4 * SHINE_SPEED)
             || sprite->x == DISPLAY_WIDTH / 2 + (5 * SHINE_SPEED)
             || sprite->x == DISPLAY_WIDTH / 2 + (6 * SHINE_SPEED))
                gPlttBufferFaded[0] = RGB(29, 22, 31); /// purple flash
            else
                gPlttBufferFaded[0] = backgroundColor;
        }

        sprite->x += SHINE_SPEED;
    }
    else
    {
        // Sprite has moved fully offscreen
        gPlttBufferFaded[0] = RGB_BLACK;
        DestroySprite(sprite);
    }
}

static void SpriteCB_PokemonLogoShine_Fast(struct Sprite *sprite)
{
    if (sprite->x < DISPLAY_WIDTH + 32)
        sprite->x += SHINE_SPEED * 2;
    else
        DestroySprite(sprite);
}

static void StartPokemonLogoShine(u8 mode)
{
    u8 spriteId;

    switch (mode)
    {
    case SHINE_MODE_SINGLE_NO_BG_COLOR:
    case SHINE_MODE_SINGLE:
        // Create one regular shine sprite.
        // If mode is SHINE_MODE_SINGLE it will also change the background color.
        spriteId = CreateSprite(&sPokemonLogoShineSpriteTemplate, 0, 68, 0);
        gSprites[spriteId].oam.objMode = ST_OAM_OBJ_WINDOW;
        gSprites[spriteId].sMode = mode;
        break;
    case SHINE_MODE_DOUBLE:
        // Create an invisible sprite with mode set to update the background color
        spriteId = CreateSprite(&sPokemonLogoShineSpriteTemplate, 0, 68, 0);
        gSprites[spriteId].oam.objMode = ST_OAM_OBJ_WINDOW;
        gSprites[spriteId].sMode = mode;
        gSprites[spriteId].invisible = TRUE;

        // Create two faster shine sprites
        spriteId = CreateSprite(&sPokemonLogoShineSpriteTemplate, 0, 68, 0);
        gSprites[spriteId].callback = SpriteCB_PokemonLogoShine_Fast;
        gSprites[spriteId].oam.objMode = ST_OAM_OBJ_WINDOW;

        spriteId = CreateSprite(&sPokemonLogoShineSpriteTemplate, -80, 68, 0);
        gSprites[spriteId].callback = SpriteCB_PokemonLogoShine_Fast;
        gSprites[spriteId].oam.objMode = ST_OAM_OBJ_WINDOW;
        break;
    }
}

#undef sMode
#undef sBgColor

static void LoadMegaRayTitleBackground(void)
{
    u16 i;
    u16 *dst = (u16 *)BG_SCREEN_ADDR(26);

    // BG0 already uses charblock 2 / screenblock 26 in the normal title.
    // Keep that exact VRAM layout so every other title-screen element remains
    // untouched. Only the legendary background data is replaced.
    DmaCopy16(
        3,
        sTitleScreenMegaRayGfx,
        (void *)BG_CHAR_ADDR(2),
        sizeof(sTitleScreenMegaRayGfx)
    );

    // The supplied tilemap is authored with palette 0. Remap every entry to
    // dedicated BG palette slot 14 while preserving tile IDs and H/V flip bits.
    for (i = 0; i < MEGA_RAY_BG_MAP_ENTRIES; i++)
    {
        dst[i] = (sTitleScreenMegaRayTilemap[i] & 0x0FFF)
               | (MEGA_RAY_BG_PALETTE << 12);
    }

    LoadPalette(
        sTitleScreenMegaRayPal,
        BG_PLTT_ID(MEGA_RAY_BG_PALETTE),
        PLTT_SIZE_4BPP
    );
}

static void LoadTitleCometGfx(void)
{
    LoadCompressedSpriteSheet(&sTitleCometSpriteSheet[0]);
    LoadSpritePalette(&sTitleCometSpritePalette[0]);
}

static void CreateTitleComet(void)
{
    u8 spriteId;

    LoadTitleCometGfx();

    spriteId = CreateSprite(
        &sTitleCometSpriteTemplate,
        TITLE_COMET_START_X,
        TITLE_COMET_START_Y,
        TITLE_COMET_PRIORITY
    );

    if (spriteId == MAX_SPRITES)
        return;

    // data[0] = delay before the next pass.
    // data[1] = 0 while waiting, 1 while flying.
    gSprites[spriteId].data[0] = TITLE_COMET_FIRST_DELAY;
    gSprites[spriteId].data[1] = 0;
    gSprites[spriteId].invisible = TRUE;
}

static void SpriteCB_TitleComet(struct Sprite *sprite)
{
    if (sprite->data[1] == 0)
    {
        // Waiting between passes.
        if (sprite->data[0] != 0)
        {
            sprite->data[0]--;
            return;
        }

        // Always restart at the exact same Scene 0 trajectory.
        sprite->x = TITLE_COMET_START_X;
        sprite->y = TITLE_COMET_START_Y;
        sprite->invisible = FALSE;
        sprite->data[1] = 1;
        StartSpriteAnim(sprite, 0);
        return;
    }

    // Exact Scene 0 movement: fast 45-degree diagonal, upper-right to lower-left.
    sprite->x -= 5;
    sprite->y += 5;

    if (sprite->x < -64 || sprite->y > DISPLAY_HEIGHT + 64)
    {
        sprite->invisible = TRUE;
        sprite->data[1] = 0;
        sprite->data[0] = TITLE_COMET_REPEAT_DELAY;

        // Reset now so there can never be a one-frame flash at the old position.
        sprite->x = TITLE_COMET_START_X;
        sprite->y = TITLE_COMET_START_Y;
    }
}

static void LoadTitleStarGfx(void)
{
    LoadSpriteSheet(&sTitleStarSheet);
    LoadSpritePalette(&sTitleStarDummyPalette);

    // Keep all four glow levels isolated from the normal title-screen sprites.
    LoadPalette(
        sTitleStarPal0,
        OBJ_PLTT_ID(TITLE_STAR_PALETTE_FIRST + 0),
        sizeof(sTitleStarPal0)
    );
    LoadPalette(
        sTitleStarPal1,
        OBJ_PLTT_ID(TITLE_STAR_PALETTE_FIRST + 1),
        sizeof(sTitleStarPal1)
    );
    LoadPalette(
        sTitleStarPal2,
        OBJ_PLTT_ID(TITLE_STAR_PALETTE_FIRST + 2),
        sizeof(sTitleStarPal2)
    );
    LoadPalette(
        sTitleStarPal3,
        OBJ_PLTT_ID(TITLE_STAR_PALETTE_FIRST + 3),
        sizeof(sTitleStarPal3)
    );
}

static void CreateTitleStars(void)
{
    u8 i;

    LoadTitleStarGfx();

    for (i = 0; i < NUM_TITLE_STARS; i++)
    {
        u8 spriteId;
        u8 sizeType;

        sTitleStarSpriteIds[i] = SPRITE_NONE;

        spriteId = CreateSprite(
            &sTitleStarTemplate,
            Random2() % DISPLAY_WIDTH,
            Random2() % DISPLAY_HEIGHT,
            TITLE_STAR_PRIORITY
        );

        if (spriteId == MAX_SPRITES)
            continue;

        sTitleStarSpriteIds[i] = spriteId;

        // Roughly 60% medium stars and 40% large stars.
        sizeType = (Random2() % 10 < 6)
                 ? TITLE_STAR_SIZE_MEDIUM
                 : TITLE_STAR_SIZE_LARGE;

        StartSpriteAnim(&gSprites[spriteId], sizeType);

        // data[0]: random glow phase offset.
        gSprites[spriteId].data[0] = Random2() & 0xFF;

        // data[1]: glow timer.
        gSprites[spriteId].data[1] = 0;

        // data[2]: fall interval. Large stars drift a little slower.
        gSprites[spriteId].data[2] =
            (sizeType == TITLE_STAR_SIZE_MEDIUM) ? 1 : 2;

        // data[3]: fall-delay counter.
        gSprites[spriteId].data[3] = 0;

        // data[4]: visual depth / size class.
        gSprites[spriteId].data[4] = sizeType;
    }

    // Priority 1 keeps the main title task at priority 0 while the particles
    // are updated immediately afterward each frame.
    CreateTask(Task_TitleStars, 1);
}

static void Task_TitleStars(u8 taskId)
{
    u8 i;

    (void)taskId;

    for (i = 0; i < NUM_TITLE_STARS; i++)
    {
        struct Sprite *sprite;
        u8 phase;
        u8 triangle;
        u8 brightStep;
        u8 depth;

        if (sTitleStarSpriteIds[i] == SPRITE_NONE)
            continue;

        sprite = &gSprites[sTitleStarSpriteIds[i]];

        if (!sprite->inUse)
            continue;

        // Slow vertical fall. The two star sizes use slightly different speeds
        // so the field does not look like one rigid layer.
        sprite->data[3]++;
        if (sprite->data[3] >= sprite->data[2] * 4)
        {
            sprite->y++;
            sprite->data[3] = 0;
        }

        // Recycle the star above the screen at a new random X position.
        if (sprite->y > DISPLAY_HEIGHT + 16)
        {
            sprite->y = -8;
            sprite->x = Random2() % DISPLAY_WIDTH;
        }

        // Soft triangular twinkle cycle.
        sprite->data[1] = (sprite->data[1] + 1) & 0xFF;
        phase = (sprite->data[1] + sprite->data[0]) & 0xFF;
        triangle = (phase < 128) ? phase : (255 - phase);
        brightStep = (triangle >= 64) ? 1 : 0;

        // Medium stars use slots 12/13; large stars use 13/14.
        // Slot 15 remains loaded as an extra bright level for easy tweaking.
        depth = sprite->data[4];
        sprite->oam.paletteNum =
            TITLE_STAR_PALETTE_FIRST + depth + brightStep;
    }
}

static void VBlankCB(void)
{
    ScanlineEffect_InitHBlankDmaTransfer();
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    SetGpuReg(REG_OFFSET_BG1VOFS, gBattle_BG1_Y);
}

void CB2_InitTitleScreen(void)
{
    switch (gMain.state)
    {
    default:
    case 0:
        SetVBlankCallback(NULL);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        *((u16 *)PLTT) = RGB_WHITE;
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_BG2CNT, 0);
        SetGpuReg(REG_OFFSET_BG1CNT, 0);
        SetGpuReg(REG_OFFSET_BG0CNT, 0);
        SetGpuReg(REG_OFFSET_BG2HOFS, 0);
        SetGpuReg(REG_OFFSET_BG2VOFS, 0);
        SetGpuReg(REG_OFFSET_BG1HOFS, 0);
        SetGpuReg(REG_OFFSET_BG1VOFS, 0);
        SetGpuReg(REG_OFFSET_BG0HOFS, 0);
        SetGpuReg(REG_OFFSET_BG0VOFS, 0);
        DmaFill16(3, 0, (void *)VRAM, VRAM_SIZE);
        DmaFill32(3, 0, (void *)OAM, OAM_SIZE);
        DmaFill16(3, 0, (void *)(PLTT + 2), PLTT_SIZE - 2);
        ResetPaletteFade();
        gMain.state = 1;
        break;
    case 1:
        // bg2
        DecompressDataWithHeaderVram(gTitleScreenPokemonLogoGfx, (void *)(BG_CHAR_ADDR(0)));
        DecompressDataWithHeaderVram(gTitleScreenPokemonLogoTilemap, (void *)(BG_SCREEN_ADDR(9)));
        LoadPalette(gTitleScreenBgPalettes, BG_PLTT_ID(0), 15 * PLTT_SIZE_4BPP);
        // Legendary BG (BG0).
        //
        // Before FLAG_ENCOUNTER_MEGA_RAY is set, this is byte-for-byte the
        // original title behavior. After the flag is set, only this background
        // layer changes; logo, clouds, version banner, Press Start, copyright,
        // stars, timings, music, and transitions remain exactly the same.
        sUseMegaRayTitleBackground = FlagGet(FLAG_ENCOUNTER_MEGA_RAY);

        if (sUseMegaRayTitleBackground)
        {
            LoadMegaRayTitleBackground();
        }
        else
        {
            DecompressDataWithHeaderVram(sTitleScreenRayquazaGfx, (void *)(BG_CHAR_ADDR(2)));
            DecompressDataWithHeaderVram(sTitleScreenRayquazaTilemap, (void *)(BG_SCREEN_ADDR(26)));
        }

        // bg1
        DecompressDataWithHeaderVram(sTitleScreenCloudsGfx, (void *)(BG_CHAR_ADDR(3)));
        DecompressDataWithHeaderVram(gTitleScreenCloudsTilemap, (void *)(BG_SCREEN_ADDR(27)));
        ScanlineEffect_Stop();
        ResetTasks();
        ReleaseComfyAnims();
        ResetSpriteData();
        FreeAllSpritePalettes();
        gReservedSpritePaletteCount = 9;
        LoadCompressedSpriteSheet(&sSpriteSheet_EmeraldVersion[0]);
        LoadCompressedSpriteSheet(&sSpriteSheet_PressStart[0]);
        LoadCompressedSpriteSheet(&sPokemonLogoShineSpriteSheet[0]);
        LoadPalette(gTitleScreenEmeraldVersionPal, OBJ_PLTT_ID(0), PLTT_SIZE_4BPP);
        LoadSpritePalette(&sSpritePalette_PressStart[0]);
        gMain.state = 2;
        break;
    case 2:
    {
        u8 taskId = CreateTask(Task_TitleScreenPhase1, 0);

        gTasks[taskId].tCounter = 256;
        gTasks[taskId].tSkipToNext = FALSE;
        gTasks[taskId].tPointless = -16;
        gTasks[taskId].tBg2Y = -32;

        // Decorative falling stars are active for the complete title-screen
        // sequence, including the initial logo animation.
        CreateTitleStars();

        // The comet first crosses after ~3 seconds, then repeats on the same
        // fixed trajectory after a much longer ~60 second delay.
        CreateTitleComet();

        gMain.state = 3;
        break;
    }
    case 3:
        BeginNormalPaletteFade(PALETTES_ALL, 1, 16, 0, RGB_WHITEALPHA);
        SetVBlankCallback(VBlankCB);
        gMain.state = 4;
        break;
    case 4:
        PanFadeAndZoomScreen(DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 2, 0x100, 0);
        SetGpuReg(REG_OFFSET_BG2X_L, -29 * 256);
        SetGpuReg(REG_OFFSET_BG2X_H, -1);
        SetGpuReg(REG_OFFSET_BG2Y_L, -32 * 256);
        SetGpuReg(REG_OFFSET_BG2Y_H, -1);
        SetGpuReg(REG_OFFSET_WIN0H, 0);
        SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WIN1H, 0);
        SetGpuReg(REG_OFFSET_WIN1V, 0);
        SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN1_BG_ALL | WININ_WIN1_OBJ);
        SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_ALL);
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_LIGHTEN);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 12);
        SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_PRIORITY(3) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(26) | BGCNT_16COLOR | BGCNT_TXT256x256);
        SetGpuReg(REG_OFFSET_BG1CNT, BGCNT_PRIORITY(2) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(27) | BGCNT_16COLOR | BGCNT_TXT256x256);
        SetGpuReg(REG_OFFSET_BG2CNT, BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(9) | BGCNT_256COLOR | BGCNT_AFF256x256);
        EnableInterrupts(INTR_FLAG_VBLANK);
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_1
                                    | DISPCNT_OBJ_1D_MAP
                                    | DISPCNT_BG2_ON
                                    | DISPCNT_OBJ_ON
                                    | DISPCNT_WIN0_ON
                                    | DISPCNT_OBJWIN_ON);
        m4aSongNumStart(MUS_THROUGH_THE_SEA_OF_TIME);
        gMain.state = 5;
        break;
    case 5:
        if (!UpdatePaletteFade())
        {
            StartPokemonLogoShine(SHINE_MODE_SINGLE_NO_BG_COLOR);
            ScanlineEffect_InitWave(0, DISPLAY_HEIGHT, 4, 4, 0, SCANLINE_EFFECT_REG_BG1HOFS, TRUE);
            SetMainCallback2(MainCB2);
        }
        break;
    }
}

static void MainCB2(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

// Shine the Pokémon logo two more times, and fade in the version banner
static void Task_TitleScreenPhase1(u8 taskId)
{
    // Skip to next phase when A, B, Start, or Select is pressed
    if (JOY_NEW(A_B_START_SELECT) || gTasks[taskId].tSkipToNext)
    {
        gTasks[taskId].tSkipToNext = TRUE;
        gTasks[taskId].tCounter = 0;
    }

    if (gTasks[taskId].tCounter != 0)
    {
        u16 frameNum = gTasks[taskId].tCounter;
        if (frameNum == 176)
            StartPokemonLogoShine(SHINE_MODE_DOUBLE);
        else if (frameNum == 64)
            StartPokemonLogoShine(SHINE_MODE_SINGLE);

        gTasks[taskId].tCounter--;
    }
    else
    {
        u8 spriteId;

        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG2_ON | DISPCNT_OBJ_ON);
        SetGpuReg(REG_OFFSET_WININ, 0);
        SetGpuReg(REG_OFFSET_WINOUT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_ALL);
        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(16, 0));
        SetGpuReg(REG_OFFSET_BLDY, 0);

        // Create left side of version banner
        spriteId = CreateSprite(&sVersionBannerLeftSpriteTemplate, VERSION_BANNER_LEFT_X, VERSION_BANNER_Y, 0);
        gSprites[spriteId].sAlphaBlendIdx = ARRAY_COUNT(gTitleScreenAlphaBlend);
        gSprites[spriteId].sParentTaskId = taskId;

        // Create right side of version banner
        spriteId = CreateSprite(&sVersionBannerRightSpriteTemplate, VERSION_BANNER_RIGHT_X, VERSION_BANNER_Y, 0);
        gSprites[spriteId].sParentTaskId = taskId;

        gTasks[taskId].tCounter = 144;
        gTasks[taskId].func = Task_TitleScreenPhase2;
    }
}

#undef sParentTaskId
#undef sAlphaBlendIdx

// Create "Press Start" and copyright banners, and slide Pokémon logo up
static void Task_TitleScreenPhase2(u8 taskId)
{
    u32 yPos;

    // Skip to next phase when A, B, Start, or Select is pressed
    if (JOY_NEW(A_B_START_SELECT) || gTasks[taskId].tSkipToNext)
    {
        gTasks[taskId].tSkipToNext = TRUE;
        gTasks[taskId].tCounter = 0;
    }

    if (gTasks[taskId].tCounter != 0)
    {
        gTasks[taskId].tCounter--;
    }
    else
    {
        gTasks[taskId].tSkipToNext = TRUE;
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BD);
        SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(6, 15));
        SetGpuReg(REG_OFFSET_BLDY, 0);
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_1
                                    | DISPCNT_OBJ_1D_MAP
                                    | DISPCNT_BG0_ON
                                    | DISPCNT_BG1_ON
                                    | DISPCNT_BG2_ON
                                    | DISPCNT_OBJ_ON);
        CreatePressStartBanner(START_BANNER_X, 108);
        CreateCopyrightBanner(START_BANNER_X, 148);
        gTasks[taskId].tBg1Y = 0;
        gTasks[taskId].func = Task_TitleScreenPhase3;
    }

    if (!(gTasks[taskId].tCounter & 3) && gTasks[taskId].tPointless != 0)
        gTasks[taskId].tPointless++;
    if (!(gTasks[taskId].tCounter & 1) && gTasks[taskId].tBg2Y != 0)
        gTasks[taskId].tBg2Y++;

    // Slide Pokémon logo up
    yPos = gTasks[taskId].tBg2Y * 256;
    SetGpuReg(REG_OFFSET_BG2Y_L, yPos);
    SetGpuReg(REG_OFFSET_BG2Y_H, yPos / 0x10000);

    gTasks[taskId].data[5] = 15; // Unused
    gTasks[taskId].data[6] = 6;  // Unused
}

// Show Rayquaza silhouette and process main title screen input
static void Task_TitleScreenPhase3(u8 taskId)
{
    if (JOY_NEW(A_BUTTON) || JOY_NEW(START_BUTTON))
    {
        FadeOutBGM(4);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK); // Novo menu carrega sobre fundo preto
        SetMainCallback2(CB2_GoToMainMenu);
    }
    else if (JOY_HELD(CLEAR_SAVE_BUTTON_COMBO) == CLEAR_SAVE_BUTTON_COMBO)
    {
        SetMainCallback2(CB2_GoToClearSaveDataScreen);
    }
    else if (JOY_HELD(RESET_RTC_BUTTON_COMBO) == RESET_RTC_BUTTON_COMBO
      && CanResetRTC() == TRUE)
    {
        FadeOutBGM(4);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        SetMainCallback2(CB2_GoToResetRtcScreen);
    }
    else if (JOY_HELD(BERRY_UPDATE_BUTTON_COMBO) == BERRY_UPDATE_BUTTON_COMBO)
    {
        FadeOutBGM(4);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        SetMainCallback2(CB2_GoToBerryFixScreen);
    }
    else
    {
        SetGpuReg(REG_OFFSET_BG2Y_L, 0);
        SetGpuReg(REG_OFFSET_BG2Y_H, 0);
        if (++gTasks[taskId].tCounter & 1)
        {
            gTasks[taskId].tBg1Y++;
            gBattle_BG1_Y = gTasks[taskId].tBg1Y / 2;
            gBattle_BG1_X = 0;
        }
        UpdateLegendaryMarkingColor(gTasks[taskId].tCounter);
        if ((gMPlayInfo_BGM.status & 0xFFFF) == 0)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_WHITEALPHA);
            SetMainCallback2(CB2_GoToCopyrightScreen);
        }
    }
}

static void CB2_GoToMainMenu(void)
{
    if (!UpdatePaletteFade())
        SetMainCallback2(CB2_InitMainMenu);
}

static void CB2_GoToCopyrightScreen(void)
{
    if (!UpdatePaletteFade())
        SetMainCallback2(CB2_InitCopyrightScreenAfterTitleScreen);
}

static void CB2_GoToClearSaveDataScreen(void)
{
    if (!UpdatePaletteFade())
        SetMainCallback2(CB2_InitClearSaveDataScreen);
}

static void CB2_GoToResetRtcScreen(void)
{
    if (!UpdatePaletteFade())
        SetMainCallback2(CB2_InitResetRtcScreen);
}

static void CB2_GoToBerryFixScreen(void)
{
    if (!UpdatePaletteFade())
    {
        m4aMPlayAllStop();
        SetMainCallback2(CB2_InitBerryFixProgram);
    }
}

//aqui
static void UpdateMegaRayGlow(u8 frameNum)
{
    if ((frameNum % 4) == 0)
    {
        // Both glow masks use the exact SAME vanilla timing and phase.
        //
        // Bright endpoints come from the authored megaraybg palette:
        //   yellow index 1 -> RGB5(31, 23, 1)
        //   red    index 9 -> RGB5(27,  2, 2)
        //
        // Both colors fade toward the same dark teal used by the vanilla
        // Rayquaza glow at its "hidden" point:
        //   #004A63 ~= RGB5(0, 9, 12)
        //
        // Therefore both markings disappear into the background together,
        // then return to their own yellow/red colors together.
        s32 intensity = Cos(frameNum, 128) + 128; // 0 = bright, 256 = hidden

        const s32 hiddenR = 0;
        const s32 hiddenG = 9;
        const s32 hiddenB = 12;

        const s32 yellowBrightR = 31;
        const s32 yellowBrightG = 23;
        const s32 yellowBrightB = 1;

        const s32 redBrightR = 27;
        const s32 redBrightG = 2;
        const s32 redBrightB = 2;

        s32 yellowR = yellowBrightR
                    + ((hiddenR - yellowBrightR) * intensity) / 256;
        s32 yellowG = yellowBrightG
                    + ((hiddenG - yellowBrightG) * intensity) / 256;
        s32 yellowB = yellowBrightB
                    + ((hiddenB - yellowBrightB) * intensity) / 256;

        s32 redR = redBrightR
                 + ((hiddenR - redBrightR) * intensity) / 256;
        s32 redG = redBrightG
                 + ((hiddenG - redBrightG) * intensity) / 256;
        s32 redB = redBrightB
                 + ((hiddenB - redBrightB) * intensity) / 256;

        u16 yellowColor = RGB(yellowR, yellowG, yellowB);
        u16 redColor = RGB(redR, redG, redB);

        LoadPalette(
            &yellowColor,
            BG_PLTT_ID(MEGA_RAY_BG_PALETTE) + MEGA_RAY_GLOW_YELLOW_INDEX,
            sizeof(yellowColor)
        );

        LoadPalette(
            &redColor,
            BG_PLTT_ID(MEGA_RAY_BG_PALETTE) + MEGA_RAY_GLOW_RED_INDEX,
            sizeof(redColor)
        );
    }
}


static void UpdateLegendaryMarkingColor(u8 frameNum)
{
    if (sUseMegaRayTitleBackground)
    {
        UpdateMegaRayGlow(frameNum);
    }
    else if ((frameNum % 4) == 0)
    {
        // Original Rayquaza title-screen glow. Kept unchanged for the title
        // shown before FLAG_ENCOUNTER_MEGA_RAY is set.
        s32 intensity = Cos(frameNum, 128) + 128;
        s32 r = 31 - ((intensity * 32 - intensity) / 256);
        s32 g = 31 - (intensity * 22 / 256);
        s32 b = 12;

        u16 color = RGB(r, g, b);
        LoadPalette(&color, BG_PLTT_ID(14) + 15, sizeof(color));
    }
}




