#include "global.h"
#include "comfy_anim.h"
#include "main.h"
#include "palette.h"
#include "scanline_effect.h"
#include "task.h"
#include "title_screen.h"
#include "libgcnmultiboot.h"
#include "malloc.h"
#include "gpu_regs.h"
#include "link.h"
#include "multiboot_pokemon_colosseum.h"
#include "load_save.h"
#include "save.h"
#include "new_game.h"
#include "m4a.h"
#include "random.h"
#include "decompress.h"
#include "constants/songs.h"
#include "intro_credits_graphics.h"
#include "trig.h"
#include "intro.h"
#include "graphics.h"
#include "sound.h"
#include "util.h"
#include "title_screen.h"
#include "expansion_intro.h"
#include "constants/rgb.h"
#include "constants/battle_anim.h"
#include "hwl_intro.h"

/*
    The intro is grouped into the following scenes
    Scene 0. Copyright screen
    Scene 1. GF Logo, pan up over plants, Flygon silhouette goes by
    Scene 2. Player biking on path, joined by Pokémon
    Scene 3. A fight between Groudon/Kyogre ends with Rayquaza

    After this it progresses to the title screen
*/

// Scene 1 main tasks
static void Task_Scene1_FadeIn(u8);
static void Task_Scene1_WaterDrops(u8);
static void Task_Scene1_PanUp(u8);
static void Task_Scene1_End(u8);

// Scene 1 supplemental functions
static void IntroResetGpuRegs(void);
static u8 CreateGameFreakLogoSprites(s16, s16, s16);
static void Task_BlendLogoIn(u8);
static void Task_BlendLogoOut(u8);
static void Task_CreateSparkles(u8);
static u8 CreateWaterDrop(s16, s16, u16, u16, u16, u8);
static void SpriteCB_WaterDrop(struct Sprite *sprite);
static void SpriteCB_WaterDrop_Slide(struct Sprite *);
static void SpriteCB_WaterDrop_ReachLeafEnd(struct Sprite *);
static void SpriteCB_WaterDrop_DangleFromLeaf(struct Sprite *);
static void SpriteCB_WaterDrop_Fall(struct Sprite *);
static void SpriteCB_WaterDrop_Ripple(struct Sprite *);
static void SpriteCB_Sparkle(struct Sprite *sprite);
static void SpriteCB_LogoLetter(struct Sprite *sprite);
static void SpriteCB_GameFreakLogo(struct Sprite *sprite);
static void SpriteCB_FlygonSilhouette(struct Sprite *sprite);

// Scene 2 main tasks
static void Task_Scene2_Load(u8);
static void Task_Scene2_CreateSprites(u8);
static void Task_Scene2_BikeRide(u8);
static void Task_Scene2_End(u8);

// Scene 2 supplemental functions
static void SpriteCB_Torchic(struct Sprite *sprite);
static void SpriteCB_Manectric(struct Sprite *sprite);
static void SpriteCB_Volbeat(struct Sprite *sprite);
static void SpriteCB_Flygon(struct Sprite *);
static void SpriteCB_PlayerOnBicycle(struct Sprite *);

// Scene 3 main tasks
static void Task_Scene3_Load(u8);
static void Task_Scene3_SpinPokeball(u8);
static void Task_Scene3_WaitGroudon(u8);
static void Task_Scene3_LoadGroudon(u8);
static void Task_Scene3_InitGroudonBg(u8);
static void Task_Scene3_NarrowWindow(u8);
static void Task_Scene3_EndNarrowWindow(u8);
static void Task_Scene3_StartGroudon(u8);
static void Task_Scene3_Groudon(u8);
static void Task_Scene3_LoadKyogre(u8);
static void Task_Scene3_Kyogre(u8);
static void Task_Scene3_LoadClouds1(u8);
static void Task_Scene3_LoadClouds2(u8);
static void Task_Scene3_InitClouds(u8);
static void Task_Scene3_Clouds(u8);
static void Task_Scene3_LoadLightning(u8);
static void Task_Scene3_Lightning(u8);
static void Task_Scene3_LoadRayquazaAttack(u8);
static void Task_Scene3_Rayquaza(u8);
static void Task_EndIntroMovie(u8);

// Scene 3 supplemental functions
static void CreateGroudonRockSprites(u8);
static void CreateKyogreBubbleSprites_Body(u8);
static void CreateKyogreBubbleSprites_Fins(void);
static void Task_RayquazaAttack(u8);
static void SpriteCB_GroudonRocks(struct Sprite *);
static void SpriteCB_KyogreBubbles(struct Sprite *sprite);
static void SpriteCB_Lightning(struct Sprite *sprite);
static void SpriteCB_RayquazaOrb(struct Sprite *sprite);

static void MainCB2_EndIntro(void);

// =========================================================================
// Scene 0 (Pre-intro) — task forward declarations
// =========================================================================
// Task_Scene0_Load and CB2_Scene0Intro are non-static — called from expansion_intro.c
void Task_Scene0_Load(u8);
void CB2_Scene0Intro(void);
static void Task_Scene0_Main(u8);

// Scene 0 helper functions
static void Scene0_LoadBgSet(u8 setIndex);
static void Scene0_LoadSet03(void);
static void SpriteCB_Scene0Shrine(struct Sprite *sprite);
static void SpriteCB_Scene0Moon(struct Sprite *sprite);
static void SpriteCB_Scene0Celebi(struct Sprite *sprite);
static void SpriteCB_Scene0Jirachi(struct Sprite *sprite);
static void SpriteCB_Scene0Comet(struct Sprite *sprite);
static void SpriteCB_Scene0Sparkle(struct Sprite *sprite);

extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct SpritePalette gBattleAnimPaletteTable[];
extern const struct SpriteTemplate gAncientPowerRockSpriteTemplate;

enum {
    COPYRIGHT_INITIALIZE,
    COPYRIGHT_EMULATOR_BLEND,
    COPYRIGHT_START_FADE = 140,
    COPYRIGHT_START_INTRO,
};

#define TAG_VOLBEAT   1500
#define TAG_TORCHIC   1501
#define TAG_MANECTRIC 1502
#define TAG_LIGHTNING 1503
#define TAG_BUBBLES   1504
#define TAG_SPARKLE   1505

#define GFXTAG_DROPS_LOGO 2000
#define PALTAG_DROPS      2000
#define PALTAG_LOGO       2001

#define TAG_FLYGON_SILHOUETTE 2002
#define TAG_RAYQUAZA_ORB      2003

// Scene 0 (pre-intro) sprite tags — range 1600-1603, safe from existing 1500-1505, 2000-2003
#define TAG_SCENE0_SHRINE     1600
#define TAG_SCENE0_CELEBI     1601
#define TAG_SCENE0_JIRACHI    1602
#define TAG_SCENE0_MOON       1603   // lua central (64x64, glow)
#define TAG_SCENE0_COMET      1604   // novo cometa 4×64×64
#define TAG_SCENE0_SPARKLE    1605   // sparkles durante o cometa (reutiliza gIntroSparkle_Gfx)
// 1604 reservado para uso futuro

#define COLOSSEUM_GAME_CODE 0x65366347 // "Gc6e" in ASCII

// Used by various tasks and sprites
#define tState data[0]
#define sState data[0]

/*
    gIntroFrameCounter is used as a persistent timer throughout the
    intro cinematic. At various points it's used to determine when
    to trigger actions or progress through the cutscene.
    The values for these are defined contiguously below.
*/
#define TIMER_BIG_DROP_START             76
#define TIMER_LOGO_APPEAR               128
#define TIMER_LOGO_LETTERS_COLOR        144
#define TIMER_BIG_DROP_FALLS            251
#define TIMER_LOGO_BLEND_OUT            256
#define TIMER_LOGO_DISAPPEAR            272
#define TIMER_SMALL_DROP_1              368
#define TIMER_SMALL_DROP_2              384
#define TIMER_SPARKLES                  560
#define TIMER_FLYGON_SILHOUETTE_APPEAR  832
#define TIMER_END_PAN_UP                904
#define TIMER_END_SCENE_1              1007
#define TIMER_START_SCENE_2            1026
#define TIMER_MANECTRIC_ENTER          1088
#define TIMER_PLAYER_DRIFT_BACK        1109
#define TIMER_MANECTRIC_RUN_CIRCULAR   1168
#define TIMER_PLAYER_MOVE_FORWARD      1214
#define TIMER_TORCHIC_ENTER            1224
#define TIMER_FLYGON_ENTER             1394
#define TIMER_PLAYER_MOVE_BACKWARD     1398
#define TIMER_PLAYER_HOLD_POSITION     1576
#define TIMER_PLAYER_EXIT              1727
#define TIMER_TORCHIC_SPEED_UP         1735
#define TIMER_TORCHIC_EXIT             1856
#define TIMER_END_SCENE_2              1946
#define TIMER_START_SCENE_3            2068
// timer is reset for scene 3
#define TIMER_POKEBALL_FADE              28
#define TIMER_START_LEGENDARIES          43

static EWRAM_DATA u16 sIntroCharacterGender = 0;
static EWRAM_DATA u16 sFlygonYOffset = 0;

COMMON_DATA u32 gIntroFrameCounter = 0;
COMMON_DATA struct GcmbStruct gMultibootProgramStruct = {0};

// =========================================================================
// Scene 0 (Pre-intro) — graphics assets
// All graphics live in graphics/intro/scene_0/
//
// BG naming convention:
//   bgsky0N = sky background (full 16-color palette, no transparency needed)
//   bg0N    = forest foreground (transparent color 0 reveals the sky behind)
//
// Tileset format: 256×160 px, 4bpp, 16 colors
// Both bg and bgsky are rendered together per set (GBA only allows 16 colors per layer)
// =========================================================================

// --- Set 00: opening sky + forest (shrine visible) ---
static const u16 sScene0BgSky00_Pal[]     = INCBIN_U16("graphics/intro/scene_0/bgsky00.gbapal");
static const u32 sScene0BgSky00_Gfx[]     = INCBIN_U32("graphics/intro/scene_0/bgsky00.4bpp.smol");
static const u32 sScene0BgSky00_Map[]     = INCBIN_U32("graphics/intro/scene_0/bgsky00.bin");
static const u16 sScene0Bg00_Pal[]        = INCBIN_U16("graphics/intro/scene_0/bg00.gbapal");
static const u32 sScene0Bg00_Gfx[]        = INCBIN_U32("graphics/intro/scene_0/bg00.4bpp.smol");
static const u32 sScene0Bg00_Map[]        = INCBIN_U32("graphics/intro/scene_0/bg00.bin");

// --- Set 01: middle sky + forest (transition mood) ---
static const u16 sScene0BgSky01_Pal[]     = INCBIN_U16("graphics/intro/scene_0/bgsky01.gbapal");
static const u32 sScene0BgSky01_Gfx[]     = INCBIN_U32("graphics/intro/scene_0/bgsky01.4bpp.smol");
static const u32 sScene0BgSky01_Map[]     = INCBIN_U32("graphics/intro/scene_0/bgsky01.bin");
static const u16 sScene0Bg01_Pal[]        = INCBIN_U16("graphics/intro/scene_0/bg01.gbapal");
static const u32 sScene0Bg01_Gfx[]        = INCBIN_U32("graphics/intro/scene_0/bg01.4bpp.smol");
static const u32 sScene0Bg01_Map[]        = INCBIN_U32("graphics/intro/scene_0/bg01.bin");

// --- Set 02: final sky (star-filled / dawn) + forest — holds longest ---
static const u16 sScene0BgSky02_Pal[]     = INCBIN_U16("graphics/intro/scene_0/bgsky02.gbapal");
static const u32 sScene0BgSky02_Gfx[]     = INCBIN_U32("graphics/intro/scene_0/bgsky02.4bpp.smol");
static const u32 sScene0BgSky02_Map[]     = INCBIN_U32("graphics/intro/scene_0/bgsky02.bin");
static const u16 sScene0Bg02_Pal[]        = INCBIN_U16("graphics/intro/scene_0/bg02.gbapal");
static const u32 sScene0Bg02_Gfx[]        = INCBIN_U32("graphics/intro/scene_0/bg02.4bpp.smol");
static const u32 sScene0Bg02_Map[]        = INCBIN_U32("graphics/intro/scene_0/bg02.bin");

// --- Shrine (static 64×64 sprite, centered in scene) ---
static const u16 sScene0Shrine_Pal[]      = INCBIN_U16("graphics/intro/scene_0/shrine.gbapal");
static const u32 sScene0Shrine_Gfx[]      = INCBIN_U32("graphics/intro/scene_0/shrine.4bpp.smol");

// --- Celebi (4-frame fly anim, sheet = 64×256, same layout as HWL logo) ---
static const u16 sScene0Celebi_Pal[]      = INCBIN_U16("graphics/intro/scene_0/celebi.gbapal");
static const u32 sScene0Celebi_Gfx[]      = INCBIN_U32("graphics/intro/scene_0/celebi.4bpp.smol");

// --- Jirachi (4-frame fly anim, sheet = 64×256) ---
static const u16 sScene0Jirachi_Pal[]     = INCBIN_U16("graphics/intro/scene_0/jirachi.gbapal");
static const u32 sScene0Jirachi_Gfx[]     = INCBIN_U32("graphics/intro/scene_0/jirachi.4bpp.smol");

// --- Set 03: ceu noturno com lua (cena do cometa) ---
static const u16 sScene0Bg03_Pal[]    = INCBIN_U16("graphics/intro/scene_0/bg03.gbapal");
static const u32 sScene0Bg03_Gfx[]    = INCBIN_U32("graphics/intro/scene_0/bg03.4bpp.smol");
static const u32 sScene0Bg03_Map[]    = INCBIN_U32("graphics/intro/scene_0/bg03.bin");

// --- Nuvens: camada sobre bg03, com scroll lento ---
static const u16 sScene0Clouds_Pal[]  = INCBIN_U16("graphics/intro/scene_0/clouds.gbapal");
static const u32 sScene0Clouds_Gfx[]  = INCBIN_U32("graphics/intro/scene_0/clouds.4bpp.smol");
static const u32 sScene0Clouds_Map[]  = INCBIN_U32("graphics/intro/scene_0/clouds.bin");

// --- Lua: sprite 64x64 estatica com glow centralizado ---
static const u16 sScene0Moon_Pal[]    = INCBIN_U16("graphics/intro/scene_0/moon.gbapal");
static const u32 sScene0Moon_Gfx[]    = INCBIN_U32("graphics/intro/scene_0/moon.4bpp.smol");

// --- Cometa: 4 frames 64x64, cruza diagonal direita->esquerda rapido ---
static const u16 sScene0Comet_Pal[]   = INCBIN_U16("graphics/intro/scene_0/comet.gbapal");
static const u32 sScene0Comet_Gfx[]   = INCBIN_U32("graphics/intro/scene_0/comet.4bpp.smol");

// --- Big overlay tilesets (aparece sobre o bg depois do voo) ---
// Ambos em 4bpp, tilemaps crus (.bin = raw 16-bit entries, sem header).
// jirachibig vai no charbase 1 (reutiliza slot do sky) e
// celebibig vai no charbase 2 (reutiliza slot da floresta),
// carregados enquanto a tela está preta para evitar glitch.
static const u16 sScene0JirachiBig_Pal[]  = INCBIN_U16("graphics/intro/scene_0/jirachibig.gbapal");
static const u32 sScene0JirachiBig_Gfx[]  = INCBIN_U32("graphics/intro/scene_0/jirachibig.4bpp.smol");
static const u32 sScene0JirachiBig_Map[]  = INCBIN_U32("graphics/intro/scene_0/jirachibig.bin");
static const u16 sScene0CelebiBig_Pal[]   = INCBIN_U16("graphics/intro/scene_0/celebibig.gbapal");
static const u32 sScene0CelebiBig_Gfx[]   = INCBIN_U32("graphics/intro/scene_0/celebibig.4bpp.smol");
static const u32 sScene0CelebiBig_Map[]   = INCBIN_U32("graphics/intro/scene_0/celebibig.bin");

static const u16 sIntroDrops_Pal[]            = INCBIN_U16("graphics/intro/scene_1/drops.gbapal");
static const u16 sIntroLogo_Pal[]             = INCBIN_U16("graphics/intro/scene_1/logo.gbapal");
static const u32 sIntroDropsLogo_Gfx[]        = INCBIN_U32("graphics/intro/scene_1/drops_logo.4bpp.smol");
static const u16 sIntro1Bg_Pal[]              = INCBIN_U16("graphics/intro/scene_1/bg.gbapal"); // 16 x 16
static const u16 sIntro1Bg0_Tilemap[]         = INCBIN_U16("graphics/intro/scene_1/bg0_map.bin");
static const u16 sIntro1Bg1_Tilemap[]         = INCBIN_U16("graphics/intro/scene_1/bg1_map.bin");
static const u16 sIntro1Bg2_Tilemap[]         = INCBIN_U16("graphics/intro/scene_1/bg2_map.bin");
static const u16 sIntro1Bg3_Tilemap[]         = INCBIN_U16("graphics/intro/scene_1/bg3_map.bin");
static const u32 sIntro1Bg_Gfx[]              = INCBIN_U32("graphics/intro/scene_1/bg.4bpp.smol");
static const u16 sIntroPokeball_Pal[]         = INCBIN_U16("graphics/intro/scene_3/pokeball.gbapal");
static const u16 sIntroPokeball_Tilemap[]     = INCBIN_U16("graphics/intro/scene_3/pokeball_map.bin");
static const u32 sIntroPokeball_Gfx[]         = INCBIN_U32("graphics/intro/scene_3/pokeball.8bpp.smol");
static const u16 sIntroStreaks_Pal[]          = INCBIN_U16("graphics/intro/scene_3/streaks.gbapal"); // Unused
static const u32 sIntroStreaks_Gfx[]          = INCBIN_U32("graphics/intro/scene_3/streaks.4bpp.smol"); // Unused
static const u32 sIntroStreaks_Tilemap[]      = INCBIN_U32("graphics/intro/scene_3/streaks_map.bin"); // Unused
static const u16 sIntroRayquzaOrb_Pal[]       = INCBIN_U16("graphics/intro/scene_3/rayquaza_orb.gbapal");
static const u16 sIntroMisc_Pal[]             = INCBIN_U16("graphics/intro/scene_3/misc.gbapal"); // Unused
static const u32 sIntroMisc_Gfx[]             = INCBIN_U32("graphics/intro/scene_3/misc.4bpp.smol"); // Rayquza orb, and misc unused gfx
static const u16 sIntroFlygonSilhouette_Pal[] = INCBIN_U16("graphics/intro/scene_1/flygon.gbapal");
static const u32 sIntroLati_Gfx[]             = INCBIN_U32("graphics/intro/scene_1/lati.4bpp.smol"); // Unused
static const u8 sUnusedData[] = {
    0x02, 0x03, 0x04, 0x05, 0x01, 0x01, 0x01, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x02, 0x0D,
    0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x02, 0x0D, 0x0E, 0x0F,
    0x10, 0x11, 0x12, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x02, 0x0D, 0x0E, 0x0F, 0x10,
    0x11, 0x12, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x00
};
static const struct CompressedSpriteSheet sSpriteSheet_Sparkle[] =
{
    {gIntroSparkle_Gfx, 0x400, TAG_SPARKLE},
    {},
};
static const struct SpritePalette sSpritePalette_Sparkle[] =
{
    {gIntroLightning_Pal, TAG_SPARKLE}, // Lightning palette re-used
    {},
};
static const struct OamData sOamData_Sparkle =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(16x16),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(16x16),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Sparkle[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(4, 2),
    ANIMCMD_FRAME(8, 2),
    ANIMCMD_FRAME(12, 2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Sparkle[] =
{
    sAnim_Sparkle,
};
static const struct SpriteTemplate sSpriteTemplate_Sparkle =
{
    .tileTag = TAG_SPARKLE,
    .paletteTag = TAG_SPARKLE,
    .oam = &sOamData_Sparkle,
    .anims = sAnims_Sparkle,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Sparkle,
};
static const u8 sSparkleCoords[][2] =
{
    {124, 40},
    {102, 30},
    { 77, 30},
    { 54, 15},
    {148,  9},
    { 63, 28},
    { 93, 40},
    {148, 32},
    {173, 41},
    { 94, 20},
    {208, 38},
    {},
};
static const struct CompressedSpriteSheet sSpriteSheet_RunningPokemon[] =
{
    {gIntroVolbeat_Gfx, 0x400, TAG_VOLBEAT},
    {gIntroTorchic_Gfx, 0xC00, TAG_TORCHIC},
    {gIntroManectric_Gfx, 0x2000, TAG_MANECTRIC},
    {},
};
static const struct SpritePalette sSpritePalettes_RunningPokemon[] =
{
    {gIntroVolbeat_Pal, TAG_VOLBEAT},
    {gIntroTorchic_Pal, TAG_TORCHIC},
    {gIntroManectric_Pal, TAG_MANECTRIC},
    {},
};
static const struct OamData sOamData_Volbeat =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(32x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Volbeat[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Volbeat[] =
{
    sAnim_Volbeat,
};
static const struct SpriteTemplate sSpriteTemplate_Volbeat =
{
    .tileTag = TAG_VOLBEAT,
    .paletteTag = TAG_VOLBEAT,
    .oam = &sOamData_Volbeat,
    .anims = sAnims_Volbeat,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Volbeat,
};
static const struct OamData sOamData_Torchic =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(32x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Torchic_Walk[] =
{
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(32, 5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd sAnim_Torchic_Run[] =
{
    ANIMCMD_FRAME(0, 3),
    ANIMCMD_FRAME(16, 3),
    ANIMCMD_FRAME(32, 3),
    ANIMCMD_FRAME(16, 3),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd sAnim_Torchic_Trip[] =
{
    ANIMCMD_FRAME(48, 4),
    ANIMCMD_FRAME(64, 6),
    ANIMCMD_FRAME(80, 0),
    ANIMCMD_END,
};
enum {
    TORCHIC_ANIM_WALK,
    TORCHIC_ANIM_RUN,
    TORCHIC_ANIM_TRIP,
};
static const union AnimCmd *const sAnims_Torchic[] =
{
    [TORCHIC_ANIM_WALK] = sAnim_Torchic_Walk,
    [TORCHIC_ANIM_RUN]  = sAnim_Torchic_Run,
    [TORCHIC_ANIM_TRIP] = sAnim_Torchic_Trip,
};
static const struct SpriteTemplate sSpriteTemplate_Torchic =
{
    .tileTag = TAG_TORCHIC,
    .paletteTag = TAG_TORCHIC,
    .oam = &sOamData_Torchic,
    .anims = sAnims_Torchic,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Torchic,
};
static const struct OamData sOamData_Manectric =
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
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Manectric[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(64, 4),
    ANIMCMD_FRAME(128, 4),
    ANIMCMD_FRAME(192, 4),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Manectric[] =
{
    sAnim_Manectric,
};
static const struct SpriteTemplate sSpriteTemplate_Manectric =
{
    .tileTag = TAG_MANECTRIC,
    .paletteTag = TAG_MANECTRIC,
    .oam = &sOamData_Manectric,
    .anims = sAnims_Manectric,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Manectric,
};
static const struct CompressedSpriteSheet sSpriteSheet_Lightning[] =
{
    {gIntroLightning_Gfx, 0xC00, TAG_LIGHTNING},
    {},
};
static const struct SpritePalette sSpritePalette_Lightning[] =
{
    {gIntroLightning_Pal, TAG_LIGHTNING},
    {},
};
static const struct OamData sOamData_Lightning =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(32x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Lightning_Top[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(48, 2),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Lightning_Middle[] =
{
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_FRAME(64, 2),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_Lightning_Bottom[] =
{
    ANIMCMD_FRAME(32, 2),
    ANIMCMD_FRAME(80, 2),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Lightning[] =
{
    sAnim_Lightning_Top,
    sAnim_Lightning_Middle,
    sAnim_Lightning_Bottom,
};
static const struct SpriteTemplate sSpriteTemplate_Lightning =
{
    .tileTag = TAG_LIGHTNING,
    .paletteTag = TAG_LIGHTNING,
    .oam = &sOamData_Lightning,
    .anims = sAnims_Lightning,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Lightning,
};
// x coord, anim number, speed
// Smaller anim numbers are larger rocks, and are given slower speeds
static const s16 sGroudonRockData[][3] =
{
    {104, 0, 0x0C0},
    {142, 3, 0x280},
    { 83, 1, 0x180},
    {155, 0, 0x080},
    { 56, 2, 0x200},
    {174, 1, 0x100},
};
static const struct CompressedSpriteSheet sSpriteSheet_Bubbles[] =
{
    {gIntroBubbles_Gfx, 0x600, TAG_BUBBLES},
    {},
};
static const struct SpritePalette sSpritePalette_Bubbles[] =
{
    {gIntroBubbles_Pal, TAG_BUBBLES},
    {},
};
#define NUM_BUBBLES_IN_SET 6
// x coord, y coord, delay before animation
// Can be produced in two different sets depending on the function called to create the sprites
static const s16 sKyogreBubbleData[NUM_BUBBLES_IN_SET * 2][3] =
{
    // Set 1, for Kyogre's body
    { 66,  64,  1},
    { 96,  96,  8},
    {128,  64,  1},
    {144,  48,  8},
    {160,  72,  1},
    {176,  96,  8},
    // Set 2, for Kyogre's fins
    { 96,  96,  4},
    {112, 104,  8},
    {128,  96,  4},
    { 88,  32,  4},
    {104,  24,  8},
    {120,  32,  4},
};
static const struct OamData sOamData_Bubbles =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(16x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(16x32),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Bubbles[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(8, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(24, 4),
    ANIMCMD_FRAME(32, 4),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Bubbles[] =
{
    sAnim_Bubbles,
};
static const struct SpriteTemplate sSpriteTemplate_Bubbles =
{
    .tileTag = TAG_BUBBLES,
    .paletteTag = TAG_BUBBLES,
    .oam = &sOamData_Bubbles,
    .anims = sAnims_Bubbles,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_KyogreBubbles,
};
static const struct OamData sOamData_WaterDrop =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(32x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
enum {
    DROP_ANIM_UPPER_HALF,
    DROP_ANIM_LOWER_HALF,
    DROP_ANIM_REFLECTION,
    DROP_ANIM_RIPPLE,
};
static const union AnimCmd sAnim_WaterDrop_UpperHalf[] =
{
    ANIMCMD_FRAME(16, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_WaterDrop_LowerHalf[] =
{
    ANIMCMD_FRAME(24, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_WaterDrop_Reflection[] =
{
    ANIMCMD_FRAME(0, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_WaterDrop_Ripple[] =
{
    ANIMCMD_FRAME(48, 8),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_WaterDrop[] =
{
    [DROP_ANIM_UPPER_HALF] = sAnim_WaterDrop_UpperHalf,
    [DROP_ANIM_LOWER_HALF] = sAnim_WaterDrop_LowerHalf,
    [DROP_ANIM_REFLECTION] = sAnim_WaterDrop_Reflection,
    [DROP_ANIM_RIPPLE]     = sAnim_WaterDrop_Ripple,
};
static const struct SpriteTemplate sSpriteTemplate_WaterDrop =
{
    .tileTag = GFXTAG_DROPS_LOGO,
    .paletteTag = PALTAG_DROPS,
    .oam = &sOamData_WaterDrop,
    .anims = sAnims_WaterDrop,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_WaterDrop,
};
static const union AnimCmd sAnim_PlayerBicycle_Fast[] =
{
    ANIMCMD_FRAME(0, 4),
    ANIMCMD_FRAME(64, 4),
    ANIMCMD_FRAME(128, 4),
    ANIMCMD_FRAME(192, 4),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd sAnim_PlayerBicycle_Slow[] =
{
    ANIMCMD_FRAME(0, 8),
    ANIMCMD_FRAME(64, 8),
    ANIMCMD_FRAME(128, 8),
    ANIMCMD_FRAME(192, 8),
    ANIMCMD_JUMP(0),
};
// The below two animations appear to be copied from the Credits version
// of the player graphic, where additional frames are present to show
// the player turning around to look at their rival.
// They go unused here, and if they were used they'd overflow beyond
// the player graphics data.
// The above sAnim_PlayerBicycle_Slow, while valid, is likewise unused
static const union AnimCmd sAnim_PlayerBicycle_LookBack[] =
{
    ANIMCMD_FRAME(256, 4),
    ANIMCMD_FRAME(320, 4),
    ANIMCMD_FRAME(384, 4),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PlayerBicycle_LookForward[] =
{
    ANIMCMD_FRAME(384, 16),
    ANIMCMD_FRAME(320, 16),
    ANIMCMD_FRAME(256, 16),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_PlayerBicycle[] =
{
    sAnim_PlayerBicycle_Fast,
    sAnim_PlayerBicycle_Slow,
    sAnim_PlayerBicycle_LookBack,
    sAnim_PlayerBicycle_LookForward,
};
static const struct OamData sOamData_GameFreakLetter =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_DOUBLE,
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
static const struct OamData sOamData_PresentsLetter =
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
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const struct OamData sOamData_GameFreakLogo =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_DOUBLE,
    .objMode = ST_OAM_OBJ_BLEND,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(32x64),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(32x64),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_GameFreakLetter_G[] =
{
    ANIMCMD_FRAME(80, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLetter_A[] =
{
    ANIMCMD_FRAME(84, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLetter_M[] =
{
    ANIMCMD_FRAME(88, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLetter_E[] =
{
    ANIMCMD_FRAME(92, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLetter_F[] =
{
    ANIMCMD_FRAME(96, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLetter_R[] =
{
    ANIMCMD_FRAME(100, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLetter_K[] =
{
    ANIMCMD_FRAME(104, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PresentsLetter_P[] =
{
    ANIMCMD_FRAME(112, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PresentsLetter_R[] =
{
    ANIMCMD_FRAME(113, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PresentsLetter_E[] =
{
    ANIMCMD_FRAME(114, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PresentsLetter_S[] =
{
    ANIMCMD_FRAME(115, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PresentsLetter_N[] =
{
    ANIMCMD_FRAME(116, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_PresentsLetter_T[] =
{
    ANIMCMD_FRAME(117, 8),
    ANIMCMD_END,
};
static const union AnimCmd sAnim_GameFreakLogo[] =
{
    ANIMCMD_FRAME(128, 8),
    ANIMCMD_END,
};

enum {
    GAMEFREAK_G,
    GAMEFREAK_A,
    GAMEFREAK_M,
    GAMEFREAK_E,
    GAMEFREAK_F,
    GAMEFREAK_R,
    GAMEFREAK_K,
};
enum {
    PRESENTS_P,
    PRESENTS_R,
    PRESENTS_E,
    PRESENTS_S,
    PRESENTS_N,
    PRESENTS_T,
};
static const union AnimCmd *const sAnims_GameFreakLetter[] =
{
    [GAMEFREAK_G] = sAnim_GameFreakLetter_G,
    [GAMEFREAK_A] = sAnim_GameFreakLetter_A,
    [GAMEFREAK_M] = sAnim_GameFreakLetter_M,
    [GAMEFREAK_E] = sAnim_GameFreakLetter_E,
    [GAMEFREAK_F] = sAnim_GameFreakLetter_F,
    [GAMEFREAK_R] = sAnim_GameFreakLetter_R,
    [GAMEFREAK_K] = sAnim_GameFreakLetter_K,
};
static const union AnimCmd *const sAnims_PresentsLetter[] =
{
    [PRESENTS_P] = sAnim_PresentsLetter_P,
    [PRESENTS_R] = sAnim_PresentsLetter_R,
    [PRESENTS_E] = sAnim_PresentsLetter_E,
    [PRESENTS_S] = sAnim_PresentsLetter_S,
    [PRESENTS_N] = sAnim_PresentsLetter_N,
    [PRESENTS_T] = sAnim_PresentsLetter_T,
};
static const union AnimCmd *const sAnims_GameFreakLogo[] =
{
    sAnim_GameFreakLogo,
};
#define NUM_GF_LETTERS 9 // Letters in "Game Freak"
static const s16 sGameFreakLetterData[NUM_GF_LETTERS][2] =
{
    // Letter,   x offset
    {GAMEFREAK_G, -72},
    {GAMEFREAK_A, -56},
    {GAMEFREAK_M, -40},
    {GAMEFREAK_E, -24},
    {GAMEFREAK_F,   8},
    {GAMEFREAK_R,  24},
    {GAMEFREAK_E,  40},
    {GAMEFREAK_A,  56},
    {GAMEFREAK_K,  72},
};
static const s16 sPresentsLetterData[][2] =
{
    // Letter,   x offset
    {PRESENTS_P, -28},
    {PRESENTS_R, -20},
    {PRESENTS_E, -12},
    {PRESENTS_S,  -4},
    {PRESENTS_E,   4},
    {PRESENTS_N,  12},
    {PRESENTS_T,  20},
    {PRESENTS_S,  28},
};
static const union AffineAnimCmd sAffineAnim_GameFreak_Small[] =
{
    AFFINEANIMCMD_FRAME(128, 128, 0, 0),
    AFFINEANIMCMD_END,
};
static const union AffineAnimCmd sAffineAnim_GameFreak_GrowAndShrink[] =
{
    AFFINEANIMCMD_FRAME(128, 128, 0, 0),
    AFFINEANIMCMD_FRAME(16, 16, 0, 16),
    AFFINEANIMCMD_FRAME(-16, -16, 0, 8),
    AFFINEANIMCMD_END,
};
static const union AffineAnimCmd sAffineAnim_GameFreak_GrowBig[] =
{
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_FRAME(8, 8, 0, 48),
    AFFINEANIMCMD_END,
};
static const union AffineAnimCmd sAffineAnim_GameFreak_GrowMedium[] =
{
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_FRAME(2, 2, 0, 48),
    AFFINEANIMCMD_END,
};
static const union AffineAnimCmd *const sAffineAnims_GameFreak[] =
{
    sAffineAnim_GameFreak_Small,         // Initialize letters while still invisible
    sAffineAnim_GameFreak_GrowAndShrink, // For letters appearing. Logo does this too, but while it's invisible
    sAffineAnim_GameFreak_GrowBig,       // For letters disappearing
    sAffineAnim_GameFreak_GrowMedium,    // For logo disappearing
};
static const u16 sGameFreakLettersMoveSpeed[NUM_GF_LETTERS] =
{
    256, // G
    192, // A
    128, // M
     64, // E
      0, // F
     64, // R
    128, // E
    192, // A
    256  // K
};
static const struct SpriteTemplate sSpriteTemplate_GameFreakLetter =
{
    .tileTag = GFXTAG_DROPS_LOGO,
    .paletteTag = PALTAG_LOGO,
    .oam = &sOamData_GameFreakLetter,
    .anims = sAnims_GameFreakLetter,
    .images = NULL,
    .affineAnims = sAffineAnims_GameFreak,
    .callback = SpriteCB_LogoLetter,
};
// Unused
static const struct SpriteTemplate sSpriteTemplate_PresentsLetter =
{
    .tileTag = GFXTAG_DROPS_LOGO,
    .paletteTag = PALTAG_LOGO,
    .oam = &sOamData_PresentsLetter,
    .anims = sAnims_PresentsLetter,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_LogoLetter,
};
static const struct SpriteTemplate sSpriteTemplate_GameFreakLogo =
{
    .tileTag = GFXTAG_DROPS_LOGO,
    .paletteTag = PALTAG_LOGO,
    .oam = &sOamData_GameFreakLogo,
    .anims = sAnims_GameFreakLogo,
    .images = NULL,
    .affineAnims = sAffineAnims_GameFreak,
    .callback = SpriteCB_GameFreakLogo,
};
static const u8 sGameFreakLetterStartDelays[NUM_GF_LETTERS] =
{
    0,  // G
    23, // A
    23, // M
    49, // E
    62, // F
    36, // R
    36, // E
    10, // A
    10  // K
};
static const struct OamData sOamData_FlygonSilhouette =
{
    .y = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(64x32),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(64x32),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_FlygonSilhouette[] =
{
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_FlygonSilhouette[] =
{
    sAnim_FlygonSilhouette,
};
static const struct SpriteTemplate sSpriteTemplate_FlygonSilhouette =
{
    .tileTag = TAG_FLYGON_SILHOUETTE,
    .paletteTag = TAG_FLYGON_SILHOUETTE,
    .oam = &sOamData_FlygonSilhouette,
    .anims = sAnims_FlygonSilhouette,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_FlygonSilhouette,
};
static const struct CompressedSpriteSheet sSpriteSheet_WaterDropsAndLogo[] =
{
    {sIntroDropsLogo_Gfx, 0x1400, GFXTAG_DROPS_LOGO},
    {},
};
static const struct CompressedSpriteSheet sSpriteSheet_FlygonSilhouette[] =
{
    {gIntroFlygonSilhouette_Gfx, 0x400, TAG_FLYGON_SILHOUETTE},
    {},
};
static const struct SpritePalette sSpritePalettes_Intro1[] =
{
    {sIntroDrops_Pal, PALTAG_DROPS},
    {sIntroLogo_Pal, PALTAG_LOGO},
    {sIntroFlygonSilhouette_Pal, TAG_FLYGON_SILHOUETTE},
    {},
};
static const struct OamData sOamData_RayquazaOrb =
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
static const union AnimCmd sAnim_RayquazaOrb[] =
{
    ANIMCMD_FRAME(16, 8),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_RayquazaOrb[] =
{
    sAnim_RayquazaOrb,
};
static const struct SpriteTemplate sSpriteTemplate_RayquazaOrb =
{
    .tileTag = TAG_RAYQUAZA_ORB,
    .paletteTag = TAG_RAYQUAZA_ORB,
    .oam = &sOamData_RayquazaOrb,
    .anims = sAnims_RayquazaOrb,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_RayquazaOrb,
};
static const struct CompressedSpriteSheet sSpriteSheet_RayquazaOrb[] =
{
    {sIntroMisc_Gfx, 0xA00, TAG_RAYQUAZA_ORB},
    {},
};
static const struct SpritePalette sSpritePalette_RayquazaOrb[] =
{
    {sIntroRayquzaOrb_Pal, TAG_RAYQUAZA_ORB},
    {},
};


// =========================================================================
// Scene 0 — sprite data tables
// =========================================================================

// ---------------------------------------------------------------------------
// Shrine — static 64×64, sits in front of the forest BG layer
//   OAM priority 0 so it renders above BG1 (forest, BG priority 0)
// ---------------------------------------------------------------------------
static const struct OamData sOamData_Scene0Shrine =
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
    .priority = 0,   // in front of all BGs
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd sAnim_Scene0Shrine[] =
{
    ANIMCMD_FRAME(0, 8),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Scene0Shrine[] =
{
    sAnim_Scene0Shrine,
};
static const struct CompressedSpriteSheet sSpriteSheet_Scene0Shrine[] =
{
    // 64×64 px, 4bpp = 2048 bytes (0x800)
    {sScene0Shrine_Gfx, 0x800, TAG_SCENE0_SHRINE},
    {},
};
static const struct SpritePalette sSpritePalette_Scene0Shrine[] =
{
    {sScene0Shrine_Pal, TAG_SCENE0_SHRINE},
    {},
};
static const struct SpriteTemplate sSpriteTemplate_Scene0Shrine =
{
    .tileTag = TAG_SCENE0_SHRINE,
    .paletteTag = TAG_SCENE0_SHRINE,
    .oam = &sOamData_Scene0Shrine,
    .anims = sAnims_Scene0Shrine,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Scene0Shrine,
};

// ---------------------------------------------------------------------------
// Celebi — 4 frames × 64×64, fly animation (same layout as HWL logo sprites)
//   Sheet: 64 px wide × 256 px tall (4 frames stacked vertically)
//   Each frame tile offset: 0, 64, 128, 192 (in 8×8 tile units)
// ---------------------------------------------------------------------------
static const struct OamData sOamData_Scene0Celebi =
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
static const union AnimCmd sAnim_Scene0Celebi_Fly[] =
{
    ANIMCMD_FRAME(0,   20),
    ANIMCMD_FRAME(64,  20),
    ANIMCMD_FRAME(128, 20),
    ANIMCMD_FRAME(192, 20),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Scene0Celebi[] =
{
    sAnim_Scene0Celebi_Fly,
};
static const struct CompressedSpriteSheet sSpriteSheet_Scene0Celebi[] =
{
    // 4 frames × 64×64 px, 4bpp = 4 × 2048 = 8192 bytes (0x2000)
    {sScene0Celebi_Gfx, 0x2000, TAG_SCENE0_CELEBI},
    {},
};
static const struct SpritePalette sSpritePalette_Scene0Celebi[] =
{
    {sScene0Celebi_Pal, TAG_SCENE0_CELEBI},
    {},
};
static const struct SpriteTemplate sSpriteTemplate_Scene0Celebi =
{
    .tileTag = TAG_SCENE0_CELEBI,
    .paletteTag = TAG_SCENE0_CELEBI,
    .oam = &sOamData_Scene0Celebi,
    .anims = sAnims_Scene0Celebi,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Scene0Celebi,
};

// ---------------------------------------------------------------------------
// Jirachi — same structure as Celebi
// ---------------------------------------------------------------------------
static const struct OamData sOamData_Scene0Jirachi =
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
static const union AnimCmd sAnim_Scene0Jirachi_Fly[] =
{
    ANIMCMD_FRAME(0,   20),
    ANIMCMD_FRAME(64,  20),
    ANIMCMD_FRAME(128, 20),
    ANIMCMD_FRAME(192, 20),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Scene0Jirachi[] =
{
    sAnim_Scene0Jirachi_Fly,
};
static const struct CompressedSpriteSheet sSpriteSheet_Scene0Jirachi[] =
{
    {sScene0Jirachi_Gfx, 0x2000, TAG_SCENE0_JIRACHI},
    {},
};
static const struct SpritePalette sSpritePalette_Scene0Jirachi[] =
{
    {sScene0Jirachi_Pal, TAG_SCENE0_JIRACHI},
    {},
};
static const struct SpriteTemplate sSpriteTemplate_Scene0Jirachi =
{
    .tileTag = TAG_SCENE0_JIRACHI,
    .paletteTag = TAG_SCENE0_JIRACHI,
    .oam = &sOamData_Scene0Jirachi,
    .anims = sAnims_Scene0Jirachi,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_Scene0Jirachi,
};

// ---------------------------------------------------------------------------
// Moon — sprite 64x64 centralizado, glow estatico
// ---------------------------------------------------------------------------
// Moon — OAM com affine normal para o grow manual via SetOamMatrix
// O grow é controlado diretamente no SpriteCB_Scene0Moon (data[1] = escala PA).
// SetOamMatrix(matrixNum, PA, PB, PC, PD):
//   PA=PD=256 → 1:1 (tamanho real). PA=PD=768 → 1/3 do tamanho.
//   Decrementamos PA/PD de 768→256 a 4px/frame = ~128 frames (~2.1s) de crescimento.
static const struct OamData sOamData_Scene0Moon =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_NORMAL, // affinematrix controlada manualmente
    .objMode    = ST_OAM_OBJ_BLEND,    // hardware lighten glow (BLDY)
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .matrixNum  = 0,
    .priority   = 1,
};
static const union AnimCmd sAnim_Scene0Moon[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Scene0Moon[] =
{
    sAnim_Scene0Moon,
};
static const struct CompressedSpriteSheet sSpriteSheet_Scene0Moon[] =
{
    {sScene0Moon_Gfx, 0x800, TAG_SCENE0_MOON},   // 1 frame 64x64 = 2048 bytes
    {},
};
static const struct SpritePalette sSpritePalette_Scene0Moon[] =
{
    {sScene0Moon_Pal, TAG_SCENE0_MOON},
    {},
};
static const struct SpriteTemplate sSpriteTemplate_Scene0Moon =
{
    .tileTag     = TAG_SCENE0_MOON,
    .paletteTag  = TAG_SCENE0_MOON,
    .oam         = &sOamData_Scene0Moon,
    .anims       = sAnims_Scene0Moon,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable, // grow é manual, não via affine anim
    .callback    = SpriteCB_Scene0Moon,
};

// ---------------------------------------------------------------------------
// Cometa — 4 frames 64x64, animacao rapida, cruza diagonal direita->esquerda
//   Sheet: 4 × 64×64 × 4bpp = 4 × 2048 = 8192 = 0x2000 bytes
//   Tile offsets: 0, 64, 128, 192
// ---------------------------------------------------------------------------
static const struct OamData sOamData_Scene0Comet =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .priority   = 0,
};
static const union AnimCmd sAnim_Scene0Comet[] =
{
    ANIMCMD_FRAME(  0, 3),   // rapido: 3 frames cada = ~20fps
    ANIMCMD_FRAME( 64, 3),
    ANIMCMD_FRAME(128, 3),
    ANIMCMD_FRAME(192, 3),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Scene0Comet[] =
{
    sAnim_Scene0Comet,
};
static const struct CompressedSpriteSheet sSpriteSheet_Scene0Comet[] =
{
    {sScene0Comet_Gfx, 0x2000, TAG_SCENE0_COMET},
    {},
};
static const struct SpritePalette sSpritePalette_Scene0Comet[] =
{
    {sScene0Comet_Pal, TAG_SCENE0_COMET},
    {},
};
static const struct SpriteTemplate sSpriteTemplate_Scene0Comet =
{
    .tileTag     = TAG_SCENE0_COMET,
    .paletteTag  = TAG_SCENE0_COMET,
    .oam         = &sOamData_Scene0Comet,
    .anims       = sAnims_Scene0Comet,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCB_Scene0Comet,
};

// ---------------------------------------------------------------------------
// Sparkle — reutiliza gIntroSparkle_Gfx (ja compilado no jogo)
//   Aparece em posicoes aleatorias durante a passagem do cometa
// ---------------------------------------------------------------------------
static const struct OamData sOamData_Scene0Sparkle =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(16x32),
    .size       = SPRITE_SIZE(16x32),
    .priority   = 0,
};
static const union AnimCmd sAnim_Scene0Sparkle[] =
{
    ANIMCMD_FRAME( 0, 4),
    ANIMCMD_FRAME( 8, 4),
    ANIMCMD_FRAME(16, 4),
    ANIMCMD_FRAME(24, 4),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Scene0Sparkle[] =
{
    sAnim_Scene0Sparkle,
};
static const struct CompressedSpriteSheet sSpriteSheet_Scene0Sparkle[] =
{
    {gIntroSparkle_Gfx, 0x400, TAG_SCENE0_SPARKLE},
    {},
};
static const struct SpritePalette sSpritePalette_Scene0Sparkle[] =
{
    {gIntroLightning_Pal, TAG_SCENE0_SPARKLE},
    {},
};
static const struct SpriteTemplate sSpriteTemplate_Scene0Sparkle =
{
    .tileTag     = TAG_SCENE0_SPARKLE,
    .paletteTag  = TAG_SCENE0_SPARKLE,
    .oam         = &sOamData_Scene0Sparkle,
    .anims       = sAnims_Scene0Sparkle,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCB_Scene0Sparkle,
};

static void VBlankCB_Intro(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    ScanlineEffect_InitHBlankDmaTransfer();
}

void MainCB2_Intro(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
    if (gMain.newKeys != 0 && !gPaletteFade.active)
        SetMainCallback2(MainCB2_EndIntro);
    else if (gIntroFrameCounter != -1)
        gIntroFrameCounter++;
}

static void MainCB2_EndIntro(void)
{
    if (!UpdatePaletteFade())
        SetMainCallback2(CB2_InitTitleScreen);
}

static void LoadCopyrightGraphics(u16 tilesetAddress, u16 tilemapAddress, u16 paletteOffset)
{
    DecompressDataWithHeaderVram(gIntroCopyright_Gfx, (void *)(VRAM + tilesetAddress));
    DecompressDataWithHeaderVram(gIntroCopyright_Tilemap, (void *)(VRAM + tilemapAddress));
    LoadPalette(gIntroCopyright_Pal, paletteOffset, PLTT_SIZE_4BPP);
}

static void SerialCB_CopyrightScreen(void)
{
    GameCubeMultiBoot_HandleSerialInterrupt(&gMultibootProgramStruct);
}

static u8 SetUpCopyrightScreen(void)
{
    switch (gMain.state)
    {
    case COPYRIGHT_INITIALIZE:
        SetVBlankCallback(NULL);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        *(u16 *)PLTT = RGB_WHITE;
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_BG0HOFS, 0);
        SetGpuReg(REG_OFFSET_BG0VOFS, 0);
        CpuFill32(0, (void *)VRAM, VRAM_SIZE);
        CpuFill32(0, (void *)OAM, OAM_SIZE);
        CpuFill16(0, (void *)(PLTT + 2), PLTT_SIZE - 2);
        ResetPaletteFade();
        LoadCopyrightGraphics(0, 0x3800, BG_PLTT_ID(0));
        ScanlineEffect_Stop();
        ResetTasks();
        ReleaseComfyAnims();
        ResetSpriteData();
        FreeAllSpritePalettes();
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_WHITEALPHA);
        SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_PRIORITY(0)
                                   | BGCNT_CHARBASE(0)
                                   | BGCNT_SCREENBASE(7)
                                   | BGCNT_16COLOR
                                   | BGCNT_TXT256x256);
        EnableInterrupts(INTR_FLAG_VBLANK);
        SetVBlankCallback(VBlankCB_Intro);
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON;
        SetSerialCallback(SerialCB_CopyrightScreen);
        GameCubeMultiBoot_Init(&gMultibootProgramStruct);
    // REG_DISPCNT needs to be overwritten the second time, because otherwise the intro won't show up on VBA 1.7.2 and John GBA Lite emulators.
    // The REG_DISPCNT overwrite is NOT needed in m-GBA, No$GBA, VBA 1.8.0, My Boy and Pizza Boy GBA emulators.
    case COPYRIGHT_EMULATOR_BLEND:
        REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON;
    default:
        UpdatePaletteFade();
        gMain.state++;
        GameCubeMultiBoot_Main(&gMultibootProgramStruct);
        break;
    case COPYRIGHT_START_FADE:
        GameCubeMultiBoot_Main(&gMultibootProgramStruct);
        if (gMultibootProgramStruct.gcmb_field_2 != 1)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            gMain.state++;
        }
        break;
    case COPYRIGHT_START_INTRO:
        if (UpdatePaletteFade())
            break;
#if EXPANSION_INTRO == TRUE
        // CB2_HWLIntro → CB2_ExpansionIntro → CB2_Scene0Intro (in expansion_intro.c)
        // CB2_Scene0Intro calls CreateTask(Task_Scene0_Load, 0) + SetMainCallback2(MainCB2_Intro)
        SetMainCallback2(CB2_HWLIntro);
#else
        // Non-expansion path: Scene 0 → Scene 1 directly
        CreateTask(Task_Scene0_Load, 0);
        SetMainCallback2(MainCB2_Intro);
#endif
        if (gMultibootProgramStruct.gcmb_field_2 != 0)
        {
            if (gMultibootProgramStruct.gcmb_field_2 == 2)
            {
                // check the multiboot ROM header game code to see if we already did this
                if (*(u32 *)(EWRAM_START + 0xAC) == COLOSSEUM_GAME_CODE)
                {
                    CpuCopy16(&gMultiBootProgram_PokemonColosseum_Start, (void *)EWRAM_START, sizeof(gMultiBootProgram_PokemonColosseum_Start));
                    *(u32 *)(EWRAM_START + 0xAC) = COLOSSEUM_GAME_CODE;
                }
                GameCubeMultiBoot_ExecuteProgram(&gMultibootProgramStruct);
            }
        }
        else
        {
            GameCubeMultiBoot_Quit();
            SetSerialCallback(SerialCB);
        }
        return 0;
    }

    return 1;
}

void CB2_InitCopyrightScreenAfterBootup(void)
{
    if (!SetUpCopyrightScreen())
    {
        SetSaveBlocksPointers(GetSaveBlocksPointersBaseOffset());
        ResetMenuAndMonGlobals();
        Save_ResetSaveCounters();
        LoadGameSave(SAVE_NORMAL);
        if (gSaveFileStatus == SAVE_STATUS_EMPTY || gSaveFileStatus == SAVE_STATUS_CORRUPT)
            Sav2_ClearSetDefault();
        SetPokemonCryStereo(gSaveBlock2Ptr->optionsSound);
        InitHeap(gHeap, HEAP_SIZE);
    }
}

void CB2_InitCopyrightScreenAfterTitleScreen(void)
{
    SetUpCopyrightScreen();
}

#define sBigDropSpriteId data[0]

void Task_Scene1_Load(u8 taskId)
{
    SetVBlankCallback(NULL);
    // FIX: Scene0 deixa tiles OBJ alocados na VRAM. Sem este reset, os
    // LoadCompressedSpriteSheet da Scene1 carregam nos offsets errados
    // (o alocador continua de onde parou) causando o glitch visual.
    ResetSpriteData();
    FreeAllSpritePalettes();
    IntroResetGpuRegs();  // RESET GPU antes de usar VRAM
    sIntroCharacterGender = MOD(Random(), GENDER_COUNT);
    SetGpuReg(REG_OFFSET_BG3VOFS, 0);

    SetGpuReg(REG_OFFSET_BG2VOFS, 80);
    SetGpuReg(REG_OFFSET_BG1VOFS, 24);
    SetGpuReg(REG_OFFSET_BG0VOFS, 40);
    DecompressDataWithHeaderVram(sIntro1Bg_Gfx, (void *)VRAM);
    DmaCopy16(3, sIntro1Bg0_Tilemap, (void *)(BG_SCREEN_ADDR(16)), BG_SCREEN_SIZE);
    DmaClear16(3, BG_SCREEN_ADDR(17), BG_SCREEN_SIZE);
    DmaCopy16(3, sIntro1Bg1_Tilemap, (void *)(BG_SCREEN_ADDR(18)), BG_SCREEN_SIZE);
    DmaClear16(3, BG_SCREEN_ADDR(19), BG_SCREEN_SIZE);
    DmaCopy16(3, sIntro1Bg2_Tilemap, (void *)(BG_SCREEN_ADDR(20)), BG_SCREEN_SIZE);
    DmaClear16(3, BG_SCREEN_ADDR(21), BG_SCREEN_SIZE);
    DmaCopy16(3, sIntro1Bg3_Tilemap, (void *)(BG_SCREEN_ADDR(22)), BG_SCREEN_SIZE);
    DmaClear16(3, BG_SCREEN_ADDR(23), BG_SCREEN_SIZE);
    LoadPalette(sIntro1Bg_Pal, BG_PLTT_ID(0), sizeof(sIntro1Bg_Pal));
    SetGpuReg(REG_OFFSET_BG3CNT, BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(22) | BGCNT_16COLOR | BGCNT_TXT256x512);
    SetGpuReg(REG_OFFSET_BG2CNT, BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(20) | BGCNT_16COLOR | BGCNT_TXT256x512);
    SetGpuReg(REG_OFFSET_BG1CNT, BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(18) | BGCNT_16COLOR | BGCNT_TXT256x512);
    SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(16) | BGCNT_16COLOR | BGCNT_TXT256x512);
    LoadCompressedSpriteSheet(sSpriteSheet_WaterDropsAndLogo);
    LoadCompressedSpriteSheet(sSpriteSheet_FlygonSilhouette);
    LoadSpritePalettes(sSpritePalettes_Intro1);
    LoadCompressedSpriteSheet(sSpriteSheet_Sparkle);
    LoadSpritePalettes(sSpritePalette_Sparkle);
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID(15) + 0], PLTT_SIZEOF(16 - 0));
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID(14) + 1], PLTT_SIZEOF(16 - 1) + 1); // Copying an extra half color?
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID(13) + 2], PLTT_SIZEOF(16 - 2));
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID(12) + 3], PLTT_SIZEOF(16 - 3));
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID(11) + 4], PLTT_SIZEOF(16 - 4));
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID(10) + 5], PLTT_SIZEOF(16 - 5));
    CpuCopy16(&gPlttBufferUnfaded[OBJ_PLTT_ID(0)], &gPlttBufferUnfaded[OBJ_PLTT_ID( 9) + 6], PLTT_SIZEOF(16 - 6));
    CreateGameFreakLogoSprites(DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 2, 0);
    gTasks[taskId].sBigDropSpriteId = CreateWaterDrop(236, -14, 0x200, 1, 0x78, FALSE);
    gTasks[taskId].func = Task_Scene1_FadeIn;
}

static void Task_Scene1_FadeIn(u8 taskId)
{
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    SetVBlankCallback(VBlankCB_Intro);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON);
    gTasks[taskId].func = Task_Scene1_WaterDrops;
    gIntroFrameCounter = 0;
    m4aSongNumStart(MUS_INTRO);
    ResetSerial();
}

// Task data for Task_Scene1_PanUp
#define tBg2PosHi data[1]
#define tBg2PosLo data[2]
#define tBg1PosHi data[3]
#define tBg1PosLo data[4]
#define tBg3PosHi data[5]
#define tBg3PosLo data[6]

static void Task_Scene1_WaterDrops(u8 taskId)
{
    if (gIntroFrameCounter == TIMER_BIG_DROP_START)
        gSprites[gTasks[taskId].sBigDropSpriteId].sState = 1;

    if (gIntroFrameCounter == TIMER_LOGO_APPEAR)
        CreateTask(Task_BlendLogoIn, 0);

    if (gIntroFrameCounter == TIMER_BIG_DROP_FALLS)
        gSprites[gTasks[taskId].sBigDropSpriteId].sState = 2;

    if (gIntroFrameCounter == TIMER_LOGO_BLEND_OUT)
        CreateTask(Task_BlendLogoOut, 0);

    if (gIntroFrameCounter == TIMER_SMALL_DROP_1)
        CreateWaterDrop(48, 0, 0x400, 5, 0x70, TRUE);

    if (gIntroFrameCounter == TIMER_SMALL_DROP_2)
        CreateWaterDrop(200, 60, 0x400, 9, 0x80, TRUE);

    if (gIntroFrameCounter == TIMER_SPARKLES)
        CreateTask(Task_CreateSparkles, 0);

    if (gIntroFrameCounter > TIMER_SPARKLES)
    {
        gTasks[taskId].tBg2PosHi = 80;
        gTasks[taskId].tBg2PosLo = 0;
        gTasks[taskId].tBg1PosHi = 24;
        gTasks[taskId].tBg1PosLo = 0;
        gTasks[taskId].tBg3PosHi = 40;
        gTasks[taskId].tBg3PosLo = 0;
        gTasks[taskId].func = Task_Scene1_PanUp;
    }
}

#define tDelay       data[1]
#define tTimer       data[2]
#define tTimerSteps  data[3]
#define tNumSparkles data[4]

static void Task_CreateSparkles(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (++tTimer & 1)
        tTimerSteps++;

    switch (tState)
    {
    case 0:
        CreateSprite(&sSpriteTemplate_Sparkle, sSparkleCoords[tNumSparkles][0], sSparkleCoords[tNumSparkles][1] + tTimerSteps, 0);
        tState++;
        tDelay = 12;
        tNumSparkles++;
        break;
    case 1:
        if (--tDelay == 0)
            tState = 0;
        break;
    }

    if (tTimerSteps > 60)
        DestroyTask(taskId);
}

#undef tDelay
#undef tTimer
#undef tTimerSteps
#undef tNumSparkles

#define sTimer data[0]
static void SpriteCB_Sparkle(struct Sprite *sprite)
{
    if (++sprite->sTimer == 12)
        DestroySprite(sprite);
}
#undef sTimer

static void Task_Scene1_PanUp(u8 taskId)
{
    if (gIntroFrameCounter < TIMER_END_PAN_UP)
    {
        s32 offset;

        // Slide bg 2 downward
        offset = (gTasks[taskId].tBg2PosHi << 16) + (u16)gTasks[taskId].tBg2PosLo;
        offset -= 0x6000;
        gTasks[taskId].tBg2PosHi = offset >> 16;
        gTasks[taskId].tBg2PosLo = offset;
        SetGpuReg(REG_OFFSET_BG2VOFS, gTasks[taskId].tBg2PosHi);

        // Slide bg 1 downward
        offset = (gTasks[taskId].tBg1PosHi << 16) + (u16)gTasks[taskId].tBg1PosLo;
        offset -= 0x8000;
        gTasks[taskId].tBg1PosHi = offset >> 16;
        gTasks[taskId].tBg1PosLo = offset;
        SetGpuReg(REG_OFFSET_BG1VOFS, gTasks[taskId].tBg1PosHi);

        // Slide bg 3 downward
        offset = (gTasks[taskId].tBg3PosHi << 16) + (u16)gTasks[taskId].tBg3PosLo;
        offset -= 0xC000;
        gTasks[taskId].tBg3PosHi = offset >> 16;
        gTasks[taskId].tBg3PosLo = offset;
        SetGpuReg(REG_OFFSET_BG0VOFS, gTasks[taskId].tBg3PosHi);

        if (gIntroFrameCounter == TIMER_FLYGON_SILHOUETTE_APPEAR)
        {
            // Show Flygon silhouette
            u8 spriteId = CreateSprite(&sSpriteTemplate_FlygonSilhouette, 120, DISPLAY_HEIGHT, 10);
            gSprites[spriteId].invisible = TRUE;
        }
    }
    else
    {
        if (gIntroFrameCounter > TIMER_END_SCENE_1)
        {
            // Fade to white
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_WHITEALPHA);
            gTasks[taskId].func = Task_Scene1_End;
        }
    }
}

static void Task_Scene1_End(u8 taskId)
{
    if (gIntroFrameCounter > TIMER_START_SCENE_2)
        gTasks[taskId].func = Task_Scene2_Load;
}

static void Task_Scene2_Load(u8 taskId)
{
    IntroResetGpuRegs();
    SetVBlankCallback(NULL);
    ResetSpriteData();
    FreeAllSpritePalettes();
    gIntroCredits_MovingSceneryVBase = 0;
    gIntroCredits_MovingSceneryVOffset = 0;
    sFlygonYOffset = 0;
    LoadIntroPart2Graphics(1);
    gTasks[taskId].func = Task_Scene2_CreateSprites;
}

#define tBgAnimTaskId   data[0]
#define tPlayerSpriteId data[1]
#define tFlygonSpriteId data[2]
#define tFlygonTimer    data[3]

static void Task_Scene2_CreateSprites(u8 taskId)
{
    u8 spriteId;

    // Load sprite sheets
    if (sIntroCharacterGender == MALE)
        LoadCompressedSpriteSheet(gSpriteSheet_IntroBrendan);
    else
        LoadCompressedSpriteSheet(gSpriteSheet_IntroMay);

    LoadCompressedSpriteSheet(gSpriteSheet_IntroBicycle);
    LoadCompressedSpriteSheet(gSpriteSheet_IntroFlygon);

    // Load sprite palettes
    for (spriteId = 0; spriteId < ARRAY_COUNT(sSpriteSheet_RunningPokemon) - 1; spriteId++)
        LoadCompressedSpriteSheet(&sSpriteSheet_RunningPokemon[spriteId]);

    LoadSpritePalettes(gSpritePalettes_IntroPlayerFlygon);
    LoadSpritePalettes(sSpritePalettes_RunningPokemon);

    // Create Pokémon and player sprites
    CreateSprite(&sSpriteTemplate_Manectric, DISPLAY_WIDTH + 32, 128, 0);
    CreateSprite(&sSpriteTemplate_Torchic, DISPLAY_WIDTH + 48, 110, 1);

    if (sIntroCharacterGender == MALE)
        spriteId = CreateIntroBrendanSprite(DISPLAY_WIDTH + 32, 100);
    else
        spriteId = CreateIntroMaySprite(DISPLAY_WIDTH + 32, 100);

    gSprites[spriteId].callback = SpriteCB_PlayerOnBicycle;
    gSprites[spriteId].anims = sAnims_PlayerBicycle;
    gTasks[taskId].tPlayerSpriteId = spriteId;
    CreateSprite(&sSpriteTemplate_Volbeat, DISPLAY_WIDTH + 32, 80, 4);
    spriteId = CreateIntroFlygonSprite(-64, 60);
    gSprites[spriteId].callback = SpriteCB_Flygon;
    gTasks[taskId].tFlygonSpriteId = spriteId;

    // Fade in and start bike ride
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_WHITEALPHA);
    SetVBlankCallback(VBlankCB_Intro);
    gTasks[taskId].tBgAnimTaskId = CreateBicycleBgAnimationTask(1, 0x4000, 0x400, 0x10);
    SetIntroPart2BgCnt(1);
    gTasks[taskId].func = Task_Scene2_BikeRide;
}

static void Task_Scene2_BikeRide(u8 taskId)
{
    u16 offset;

    if (gIntroFrameCounter == TIMER_TORCHIC_EXIT)
    {
        // Stop the moving scenery/backgrounds, for when the camera fixes on Torchic
        gIntroCredits_MovingSceneryState = INTROCRED_SCENERY_FROZEN;
        DestroyTask(gTasks[taskId].tBgAnimTaskId);
    }

    if (gIntroFrameCounter > TIMER_END_SCENE_2)
    {
        // Fade out to next scene
        BeginNormalPaletteFade(PALETTES_ALL, 8, 0, 16, RGB_WHITEALPHA);
        gTasks[taskId].func = Task_Scene2_End;
    }

    // Check for updates to player/flygon sprites
    // These states are for SpriteCB_PlayerOnBicycle and SpriteCB_Flygon respectively
    if (gIntroFrameCounter == TIMER_PLAYER_DRIFT_BACK)
        gSprites[gTasks[taskId].tPlayerSpriteId].sState = 1;
    if (gIntroFrameCounter == TIMER_PLAYER_MOVE_FORWARD)
        gSprites[gTasks[taskId].tPlayerSpriteId].sState = 0;
    if (gIntroFrameCounter == TIMER_FLYGON_ENTER)
        gSprites[gTasks[taskId].tFlygonSpriteId].sState = 1;
    if (gIntroFrameCounter == TIMER_PLAYER_MOVE_BACKWARD)
        gSprites[gTasks[taskId].tPlayerSpriteId].sState = 2;
    if (gIntroFrameCounter == TIMER_PLAYER_HOLD_POSITION)
        gSprites[gTasks[taskId].tPlayerSpriteId].sState = 3;
    if (gIntroFrameCounter == TIMER_PLAYER_EXIT)
        gSprites[gTasks[taskId].tPlayerSpriteId].sState = 4;

    // Handle flygon's y movement
    offset = Sin(gTasks[taskId].tFlygonTimer >> 2 & 0x7F, 48);
    sFlygonYOffset = offset;
    if (gTasks[taskId].tFlygonTimer < 512)
        gTasks[taskId].tFlygonTimer++;

    // Alternate colors of the trees
    CycleSceneryPalette(0);
}

static void Task_Scene2_End(u8 taskId)
{
    if (gIntroFrameCounter > TIMER_START_SCENE_3)
        gTasks[taskId].func = Task_Scene3_Load;
}

#define sStateDelay data[1]
#define sNextState  data[2]
#define sCosYIdx    data[3]
#define sSinXIdx    data[4]
#define sSinYIdx    data[5]
#define sFig8Loops  data[6]

enum {
    VOLBEAT_WAIT_ENTER,
    VOLBEAT_ENTER,
    VOLBEAT_ZIP_BACKWARD,
    VOLBEAT_ZIP_DOWN,
    VOLBEAT_ZIP_FORWARD,
    VOLBEAT_INIT_FIGURE_8,
    VOLBEAT_FIGURE_8,
    VOLBEAT_EXIT,
    VOLBEAT_WAIT_STATE
};

static void SpriteCB_Volbeat(struct Sprite *sprite)
{
    sprite->sCosYIdx += 4;
    switch (sprite->sState)
    {
    case VOLBEAT_WAIT_ENTER:
        if (++sprite->sStateDelay < 180)
            break;
        sprite->sState++;
        // fallthrough
    case VOLBEAT_ENTER:
        sprite->x -= 4;
        if (sprite->x == 60)
        {
            sprite->sState = VOLBEAT_WAIT_STATE;
            sprite->sStateDelay = 20;
            sprite->sNextState = VOLBEAT_ZIP_BACKWARD;
        }
        break;
    case VOLBEAT_ZIP_BACKWARD:
        sprite->x += 8;
        sprite->y -= 2;
        if (sprite->x == 124)
        {
            sprite->sState = VOLBEAT_WAIT_STATE;
            sprite->sStateDelay = 20;
            sprite->sNextState = VOLBEAT_ZIP_DOWN;
        }
        break;
    case VOLBEAT_ZIP_DOWN:
        sprite->y += 4;
        if (sprite->y == 80)
        {
            sprite->sState = VOLBEAT_WAIT_STATE;
            sprite->sStateDelay = 10;
            sprite->sNextState = VOLBEAT_ZIP_FORWARD;
        }
        break;
    case VOLBEAT_ZIP_FORWARD:
        sprite->x -= 8;
        sprite->y -= 2;
        if (sprite->x == 60)
        {
            sprite->sState = VOLBEAT_WAIT_STATE;
            sprite->sStateDelay = 10;
            sprite->sNextState = VOLBEAT_INIT_FIGURE_8;
        }
        break;
    case VOLBEAT_INIT_FIGURE_8:
        sprite->x += 60;
        sprite->sSinXIdx = 0xC0;
        sprite->sSinYIdx = 0x80;
        sprite->sFig8Loops = 3;
        sprite->sState++;
        // fallthrough
    case VOLBEAT_FIGURE_8:
        sprite->x2 = Sin((u8)sprite->sSinXIdx, 0x3C);
        sprite->y2 = Sin((u8)sprite->sSinYIdx, 0x14);
        sprite->sSinXIdx += 2;
        sprite->sSinYIdx += 4;
        if ((sprite->sSinXIdx & 0xFF) == 64)
        {
            sprite->hFlip = FALSE;
            if (--sprite->sFig8Loops == 0)
            {
                sprite->x += sprite->x2;
                sprite->x2 = 0;
                sprite->sState++;
            }
        }
        break;
    case VOLBEAT_EXIT:
        sprite->x -= 2;
        sprite->y2 = Sin((u8)sprite->sSinYIdx, 0x14);
        sprite->sSinYIdx += 4;
        if (sprite->x < -16)
            DestroySprite(sprite);
        break;
    case VOLBEAT_WAIT_STATE:
        // Wait for state progression, fly idly until then
        sprite->y2 = Cos((u8)sprite->sCosYIdx, 2);
        if (!--sprite->sStateDelay)
            sprite->sState = sprite->sNextState;
        break;
    }
}

#undef sStateDelay
#undef sNextState
#undef sCosYIdx
#undef sSinXIdx
#undef sSinYIdx
#undef sFig8Loops

#define sMoveTimer data[1]
#define sDelay     data[2]

static void SpriteCB_Torchic(struct Sprite *sprite)
{
    switch (sprite->sState)
    {
    case 0:
        if (gIntroFrameCounter == TIMER_TORCHIC_ENTER)
        {
            StartSpriteAnim(sprite, TORCHIC_ANIM_RUN);
            sprite->sState++;
        }
        break;
    case 1:
        if (gIntroFrameCounter == TIMER_PLAYER_HOLD_POSITION)
        {
            StartSpriteAnim(sprite, TORCHIC_ANIM_WALK);
            sprite->sState++;
        }
        else
        {
            sprite->sMoveTimer += 64;
            if (sprite->sMoveTimer & 0xFF00)
            {
                sprite->x--;
                sprite->sMoveTimer &= 0xFF;
            }
        }
        break;
    case 2:
        if (gIntroFrameCounter != TIMER_TORCHIC_SPEED_UP)
        {
            sprite->sMoveTimer += 32;
            if (sprite->sMoveTimer & 0xFF00)
            {
                sprite->x++;
                sprite->sMoveTimer &= 0xFF;
            }
        }
        else
        {
            StartSpriteAnim(sprite, TORCHIC_ANIM_RUN);
            sprite->sState++;
            sprite->sDelay = 80;
        }
        break;
    case 3:
        if (--sprite->sDelay)
        {
            sprite->sMoveTimer += 64;
            if (sprite->sMoveTimer & 0xFF00)
            {
                sprite->x--;
                sprite->sMoveTimer &= 0xFF;
            }
        }
        else
        {
            StartSpriteAnim(sprite, TORCHIC_ANIM_TRIP);
            sprite->sState++;
        }
        break;
    case 4:
        if (sprite->animEnded)
            sprite->x += 4;

        if (sprite->x > 336)
        {
            StartSpriteAnim(sprite, TORCHIC_ANIM_RUN);
            sprite->sState++;
        }
        break;
    case 5:
        if (gIntroFrameCounter >= TIMER_TORCHIC_EXIT)
            sprite->x -= 2;
        break;
    }
}

#undef sMoveTimer
#undef sDelay

#define sSinIdx data[1]
#define sCosIdx data[2]

static void SpriteCB_Manectric(struct Sprite *sprite)
{
    switch (sprite->sState)
    {
    case 0:
        if (gIntroFrameCounter == TIMER_MANECTRIC_ENTER)
            sprite->sState++;
        break;
    case 1:
        sprite->x -= 2;
        if (gIntroFrameCounter != TIMER_MANECTRIC_RUN_CIRCULAR)
            break;

        // Initialize circular pattern running
        sprite->y -= 12;
        sprite->sSinIdx = 0x80;
        sprite->sCosIdx = 0;
        sprite->sState++;
        // fallthrough
    case 2:
        if (sprite->x + sprite->x2 <= -32)
        {
            // Manectric is offscreen now, destroy it
            DestroySprite(sprite);
        }
        else
        {
            // Run in circular pattern
            if ((sprite->sSinIdx & 0xFF) < 64)
            {
                sprite->x2 = Sin((u8)sprite->sSinIdx, 16);
            }
            else
            {
                if ((sprite->sSinIdx & 0xFF) == 64)
                    sprite->x -= 48;
                sprite->x2 = Sin((u8)sprite->sSinIdx, 64);
            }
            sprite->sSinIdx++;
            sprite->y2 = Cos((u8)sprite->sCosIdx, 12);
            sprite->sCosIdx++;
        }
        break;
    }
}

#undef sSinIdx
#undef sCosIdx

#define tAlpha        data[0]
#define tZoomDiv      data[1]
#define tZoomDivSpeed data[2]

static void Task_Scene3_Load(u8 taskId)
{
    IntroResetGpuRegs();
    DecompressDataWithHeaderVram(sIntroPokeball_Gfx, (void *)VRAM);
    DmaCopy16(3, sIntroPokeball_Tilemap, (void *)(BG_SCREEN_ADDR(8)), 0x400);
    LoadPalette(sIntroPokeball_Pal, BG_PLTT_ID(0), sizeof(sIntroPokeball_Pal));
    gTasks[taskId].tAlpha = 0;
    gTasks[taskId].tZoomDiv = 0;
    gTasks[taskId].tZoomDivSpeed = 0;
    gTasks[taskId].data[3] = 0;
    PanFadeAndZoomScreen(DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 2, 0, 0);
    ResetSpriteData();
    FreeAllSpritePalettes();
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_WHITEALPHA);
    SetGpuReg(REG_OFFSET_BG2CNT, BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(8) | BGCNT_256COLOR | BGCNT_AFF256x256);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG2_ON | DISPCNT_OBJ_ON);
    gTasks[taskId].func = Task_Scene3_SpinPokeball;
    gIntroFrameCounter = 0;
    m4aSongNumStart(MUS_INTRO_BATTLE);
}
static void Task_Scene3_SpinPokeball(u8 taskId)
{
    gTasks[taskId].tAlpha += 0x400;

    if (gTasks[taskId].tZoomDiv <= 0x6BF)
    {
        gTasks[taskId].tZoomDiv += gTasks[taskId].tZoomDivSpeed;
        gTasks[taskId].tZoomDivSpeed += 2;
    }
    else
    {
        gTasks[taskId].func = Task_Scene3_WaitGroudon;
    }

    PanFadeAndZoomScreen(DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 2, SAFE_DIV(0x10000, gTasks[taskId].tZoomDiv), gTasks[taskId].tAlpha);

    if (gIntroFrameCounter == TIMER_POKEBALL_FADE)
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_WHITEALPHA);
}

#undef tAlpha
#undef tZoomDiv
#undef tZoomDivSpeed

static void Task_Scene3_WaitGroudon(u8 taskId)
{
    if (gIntroFrameCounter > TIMER_START_LEGENDARIES)
        gTasks[taskId].func = Task_Scene3_LoadGroudon;
}

static void Task_Scene3_LoadGroudon(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        IntroResetGpuRegs();
        ResetSpriteData();
        FreeAllSpritePalettes();
        gReservedSpritePaletteCount = 8;
        DecompressDataWithHeaderVram(gIntroGroudon_Gfx, (void *)VRAM);
        DecompressDataWithHeaderVram(gIntroGroudon_Tilemap, (void *)(BG_SCREEN_ADDR(24)));
        DecompressDataWithHeaderVram(gIntroLegendBg_Gfx, (void *)(BG_CHAR_ADDR(1)));
        DecompressDataWithHeaderVram(gIntroGroudonBg_Tilemap, (void *)(BG_SCREEN_ADDR(28)));
        LoadCompressedSpriteSheetUsingHeap(&gBattleAnimPicTable[GET_TRUE_SPRITE_INDEX(ANIM_TAG_ROCKS)]);
        LoadSpritePalette(&gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(ANIM_TAG_ROCKS)]);
        CpuCopy16(gIntro3Bg_Pal, gPlttBufferUnfaded, sizeof(gIntro3Bg_Pal));
        gTasks[taskId].func = Task_Scene3_InitGroudonBg;
    }
}

#define tWinPos  data[0]
#define tScreenX data[1]
#define tScreenY data[2]
#define tZoom    data[3]

static void Task_Scene3_InitGroudonBg(u8 taskId)
{
    SetGpuReg(REG_OFFSET_WIN0H, DISPLAY_WIDTH);
    SetGpuReg(REG_OFFSET_WIN0V, DISPLAY_HEIGHT);
    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_ALL);
    SetGpuReg(REG_OFFSET_WINOUT, 0);
    SetGpuReg(REG_OFFSET_BG2CNT, BGCNT_PRIORITY(0)
                               | BGCNT_CHARBASE(0)
                               | BGCNT_SCREENBASE(24)
                               | BGCNT_256COLOR
                               | BGCNT_WRAP
                               | BGCNT_AFF512x512);
    SetGpuReg(REG_OFFSET_BG1CNT, BGCNT_PRIORITY(1)
                               | BGCNT_CHARBASE(1)
                               | BGCNT_SCREENBASE(28)
                               | BGCNT_16COLOR
                               | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_1
                                | DISPCNT_OBJ_1D_MAP
                                | DISPCNT_BG1_ON
                                | DISPCNT_BG2_ON
                                | DISPCNT_OBJ_ON
                                | DISPCNT_WIN0_ON);
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_WHITEALPHA);
    gTasks[taskId].tWinPos = 0;
    gTasks[taskId].tScreenX = 0xFFA0;
    gTasks[taskId].tScreenY = 0xFF51;
    gTasks[taskId].tZoom = 0x100;
    PanFadeAndZoomScreen(gTasks[taskId].tScreenX, gTasks[taskId].tScreenY, gTasks[taskId].tZoom, 0);
    gTasks[taskId].func = Task_Scene3_NarrowWindow;
}

// Before the Groudon scene starts, the black top/bottom edges of the screen
// come inward for a more 'cinematic' look
#define NARROW_HEIGHT 32
static void Task_Scene3_NarrowWindow(u8 taskId)
{
    if (gTasks[taskId].tWinPos != NARROW_HEIGHT)
    {
        gTasks[taskId].tWinPos += 4;
        SetGpuReg(REG_OFFSET_WIN0V, (gTasks[taskId].tWinPos * 256) - (gTasks[taskId].tWinPos - DISPLAY_HEIGHT));
    }
    else
    {
        SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(NARROW_HEIGHT, DISPLAY_HEIGHT - NARROW_HEIGHT));
        gTasks[taskId].func = Task_Scene3_EndNarrowWindow;
    }
}
#undef tWinPos
#undef tScreenX
#undef tScreenY
#undef tZoom

static void Task_Scene3_EndNarrowWindow(u8 taskId)
{
    gTasks[taskId].func = Task_Scene3_StartGroudon;
}

static void Task_Scene3_StartGroudon(u8 taskId)
{
    gTasks[taskId].tState = 0;
    gTasks[taskId].func = Task_Scene3_Groudon;
    ScanlineEffect_InitWave(0, DISPLAY_HEIGHT, 4, 4, 1, SCANLINE_EFFECT_REG_BG1HOFS, FALSE);
}

#define tScreenX data[1]
#define tScreenY data[2]
#define tZoom    data[3]
#define tYShake  data[4]
#define tTimer   data[5]
#define tDelay   data[6]
#define tTrigIdx data[6] // Re-used
#define tPalIdx  data[7]

// Treats gIntro3Bg_Pal as u8* and iterates by 1
#define INTRO3_RAW_PTR(palId)(((void *) &gIntro3Bg_Pal) + palId)

static void Task_Scene3_Groudon(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    tTimer++;
    if ((tState >= 1 && tState <= 7) && tTimer % 2 == 0)
        tYShake ^= 3;
    PanFadeAndZoomScreen(tScreenX, tScreenY + tYShake, tZoom, 0);
    switch (tState)
    {
    case 0:
        tScreenX += 16;
        if (tScreenX == 160)
        {
            tState++;
            tDelay = 2;
            tPalIdx = 0x1E2;
            CreateGroudonRockSprites(taskId);
        }
        break;
    case 1:
        if (--tDelay == 0)
        {
            tDelay = 2;
            CpuCopy16(INTRO3_RAW_PTR(tPalIdx), &gPlttBufferFaded[BG_PLTT_ID(1) + 15], PLTT_SIZEOF(1));
            tPalIdx += 2;
            if (tPalIdx == 0x1EC)
                tState++;
        }
        break;
    case 2:
        if (--tDelay == 0)
        {
            tDelay = 2;
            tState++;
        }
        break;
    case 3:
        if (--tDelay == 0)
        {
            tDelay = 2;
            CpuCopy16(INTRO3_RAW_PTR(tPalIdx), &gPlttBufferFaded[BG_PLTT_ID(1) + 15], PLTT_SIZEOF(1));
            tPalIdx -= 2;
            if (tPalIdx == 0x1E0)
            {
                tDelay = 8;
                tState++;
            }
        }
        break;
    case 4:
        if (--tDelay == 0)
        {
            tScreenX = -96;
            tScreenY = 169;
            tDelay = 3;
            tState++;
        }
        break;
    case 5:
        if (--tDelay == 0)
        {
            tScreenX = 80;
            tScreenY = 41;
            tDelay = 16;
            PlayCryInternal(SPECIES_GROUDON, 0, 100, CRY_PRIORITY_NORMAL, CRY_MODE_NORMAL);
            tState++;
        }
        break;
    case 6:
        if (--tDelay == 0)
        {
            tScreenX = 80;
            tScreenY = 40;
            tState++;
        }
        break;
    case 7:
        tScreenX += 4;
        tScreenY += 4;
        tTrigIdx += 0x666;
        tZoom = Sin((tTrigIdx & 0xFF00) >> 8, 64) + 256;
        if (tScreenX == 120)
        {
            BeginNormalPaletteFade(PALETTES_ALL & ~1, 3, 0, 16, RGB_WHITE);
            tZoom = 256;
            tYShake = 0;
            tState++;
        }
        break;
    case 8:
        if (tZoom)
            tZoom -= 8;
        else
            tState++;
        break;
    case 9:
        if (!gPaletteFade.active)
        {
            gTasks[taskId].func = Task_Scene3_LoadKyogre;
            gScanlineEffect.state = 3;
        }
        break;
    }
}

#undef tScreenX
#undef tScreenY
#undef tZoom
#undef tYShake
#undef tTimer
#undef tDelay
#undef tTrigIdx
#undef tPalIdx

#define sRockId data[1]
#define sSpeed  data[2]
#define sTimer  data[3]
#define sTaskId data[4]

static void CreateGroudonRockSprites(u8 taskId)
{
    int i;
    u8 spriteId;

    for (i = 0; i < (int)ARRAY_COUNT(sGroudonRockData); i++)
    {
        spriteId = CreateSprite(&gAncientPowerRockSpriteTemplate, sGroudonRockData[i][0], DISPLAY_HEIGHT, i);
        gSprites[spriteId].callback = SpriteCB_GroudonRocks;
        gSprites[spriteId].oam.priority = 0;
        gSprites[spriteId].sRockId = i;
        gSprites[spriteId].sTaskId = taskId;
        StartSpriteAnim(&gSprites[spriteId], sGroudonRockData[i][1]);
    }
}

static void SpriteCB_GroudonRocks(struct Sprite *sprite)
{
    // Introduce some wobble to the floating
    sprite->sTimer++;
    if (sprite->sTimer % 2 == 0)
        sprite->y2 ^= 3;

    switch(sprite->sState)
    {
    case 0:
        // Rock floats up
        sprite->sSpeed += sGroudonRockData[sprite->sRockId][2];
        sprite->y -= (sprite->sSpeed & 0xFF00) >> 8;
        sprite->sSpeed &= 0xFF;

        // Check if Groudon scene is ending
        if (gTasks[sprite->sTaskId].tState > 7)
            sprite->sState++;
        break;
    case 1:
        // Scene zooms in, move rock offscreen
        if (sprite->x < DISPLAY_WIDTH / 2)
            sprite->x -= 2;
        else
            sprite->x += 2;

        if (sprite->y < DISPLAY_HEIGHT / 2)
            sprite->y -= 2;
        else
            sprite->y += 2;
        break;
    }
}

#undef sRockId
#undef sSpeed
#undef sTimer
#undef sTaskId

#define tScreenX data[1]
#define tScreenY data[2]
#define tZoom    data[3]
#define tDelay   data[6]
#define tTrigIdx data[6] // Re-used
#define tPalIdx  data[7]

static void Task_Scene3_LoadKyogre(u8 taskId)
{
    ResetSpriteData();
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = 8;
    DecompressDataWithHeaderVram(gIntroKyogre_Gfx, (void *)VRAM);
    DecompressDataWithHeaderVram(gIntroKyogre_Tilemap, (void *)(BG_SCREEN_ADDR(24)));
    DecompressDataWithHeaderVram(gIntroKyogreBg_Tilemap, (void *)(BG_SCREEN_ADDR(28)));
    LoadCompressedSpriteSheet(sSpriteSheet_Bubbles);
    LoadSpritePalette(sSpritePalette_Bubbles);
    BeginNormalPaletteFade(PALETTES_ALL & ~1, 0, 16, 0, RGB_WHITEALPHA);
    gTasks[taskId].func = Task_Scene3_Kyogre;
    gTasks[taskId].tState = 0;
    gTasks[taskId].tScreenX = 336;
    gTasks[taskId].tScreenY = 80;
    gTasks[taskId].tDelay = 16;
    gTasks[taskId].tZoom = 256;
    PanFadeAndZoomScreen(gTasks[taskId].tScreenX, gTasks[taskId].tScreenY, gTasks[taskId].tZoom, 0);
    ScanlineEffect_InitWave(0, DISPLAY_HEIGHT, 4, 4, 1, SCANLINE_EFFECT_REG_BG1VOFS, FALSE);
}

static void Task_Scene3_Kyogre(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    PanFadeAndZoomScreen(tScreenX, tScreenY, tZoom, 0);

    switch (tState)
    {
    case 0:
        if (--tDelay != 0)
            break;
        tState++;
    case 1:
        tTrigIdx += 4;
        gTasks[taskId].tScreenX = 344 - Sin(tTrigIdx, 0x100);
        gTasks[taskId].tScreenY = 84 - Cos(tTrigIdx, 0x40);
        if (tTrigIdx == 64)
        {
            tDelay = 0x19;
            tPalIdx = 1;
            tState++;
            CreateKyogreBubbleSprites_Body(0);
        }
        break;
    case 2:
        if (--tDelay == 0)
        {
            gTasks[taskId].tScreenX += 256;
            gTasks[taskId].tScreenY -= 258;
            tDelay = 8;
            tState++;
            CreateKyogreBubbleSprites_Body(0);
            CreateKyogreBubbleSprites_Fins();
        }
        break;
    case 3:
        if (--tDelay == 0)
        {
            gTasks[taskId].tScreenX -= 256;
            gTasks[taskId].tScreenY += 258;
            tDelay = 8;
            tState++;
        }
        break;
    case 4:
        if (--tDelay == 0)
        {
            gTasks[taskId].tScreenY -= 252;
            tDelay = 8;
            tState++;
        }
        break;
    case 5:
        if (--tDelay == 0)
        {
            gTasks[taskId].tScreenY += 252;
            if (tPalIdx != 0)
            {
                tDelay = 12;
                tPalIdx--;
                tState = 2;
            }
            else
            {
                tDelay = 1;
                tState++;
                PlayCryInternal(SPECIES_KYOGRE, 0, 120, CRY_PRIORITY_NORMAL, CRY_MODE_NORMAL);
            }
        }
        break;
    case 6:
        if (--tDelay == 0)
        {
            tDelay = 4;
            tPalIdx = 0x1EA;
            tState++;
        }
        break;
    case 7:
        if (--tDelay == 0)
        {
            tDelay = 4;
            CpuCopy16(INTRO3_RAW_PTR(tPalIdx), &gPlttBufferFaded[BG_PLTT_ID(2) + 15], PLTT_SIZEOF(1));
            tPalIdx -= 2;
            if (tPalIdx == 0x1E0)
                tState++;
        }
        break;
    case 8:
        if (--tDelay == 0)
        {
            tDelay = 4;
            tPalIdx = 0x1E2;
            tState++;
        }
        break;
    case 9:
        if (--tDelay == 0)
        {
            tDelay = 4;
            CpuCopy16(INTRO3_RAW_PTR(tPalIdx), &gPlttBufferFaded[BG_PLTT_ID(2) + 15], PLTT_SIZEOF(1));
            tPalIdx += 2;
            if (tPalIdx == 0x1EE)
            {
                tDelay = 16;
                tState++;
            }
        }
        break;
    case 10:
        if (--tDelay == 0)
        {
            tTrigIdx = 0;
            tState++;
            CreateKyogreBubbleSprites_Body(taskId);
        }
        break;
    case 11:
        tTrigIdx += 4;
        tZoom -= 8;
        gTasks[taskId].tScreenX = Sin(tTrigIdx, 0x3C) + 88;
        if (tTrigIdx == 64)
        {
            BeginNormalPaletteFade(PALETTES_ALL & ~1, 3, 0, 16, RGB_WHITE);
            tState++;
        }
        break;
    case 12:
        tTrigIdx += 4;
        tZoom -= 8;
        gTasks[taskId].tScreenX = Sin(tTrigIdx, 0x14) + 128;
        if (tTrigIdx == 128)
            tState++;
        break;
    case 13:
        if (!gPaletteFade.active)
        {
            gTasks[taskId].func = Task_Scene3_LoadClouds1;
            gScanlineEffect.state = 3;
        }
        break;
    }
}

#undef tScreenX
#undef tScreenY
#undef tZoom
#undef tDelay
#undef tTrigIdx
#undef tPalIdx

#define sSinIdx data[1]
#define sBaseY  data[2]
#define sTaskId data[5]
#define sDelay  data[6]
#define sUnk    data[7] // Never read

// taskId is used inconsistently for these two functions.
// The sprite callback for the bubbles will always read it, unless delay is 0 to
// start (it never is), but the first function is often passed 0 instead of a
// taskId, and the second function doesn't take/assign a taskId at all.
// The only time an actual taskId is given is when it actually needs the
// result of reading it, to zoom in at the end of the scene.

// Creates bubbles at positions spread across Kyogre's body
static void CreateKyogreBubbleSprites_Body(u8 taskId)
{
    int i;
    u8 spriteId;

    for (i = 0; i < NUM_BUBBLES_IN_SET; i++)
    {
        spriteId = CreateSprite(&sSpriteTemplate_Bubbles,
                                sKyogreBubbleData[i][0],
                                sKyogreBubbleData[i][1],
                                i);
        gSprites[spriteId].invisible = TRUE;
        gSprites[spriteId].sTaskId = taskId;
        gSprites[spriteId].sDelay = sKyogreBubbleData[i][2];
        gSprites[spriteId].sUnk = 64;
    }
}

// Creates bubbles at positions around Kyogre's fins, for when it's moving them
static void CreateKyogreBubbleSprites_Fins(void)
{
    int i;
    u8 spriteId;

    for (i = 0; i < NUM_BUBBLES_IN_SET; i++)
    {
        spriteId = CreateSprite(&sSpriteTemplate_Bubbles,
                                sKyogreBubbleData[i + NUM_BUBBLES_IN_SET][0],
                                sKyogreBubbleData[i + NUM_BUBBLES_IN_SET][1],
                                i);
        gSprites[spriteId].invisible = TRUE;
        gSprites[spriteId].sDelay = sKyogreBubbleData[i + NUM_BUBBLES_IN_SET][2];
        gSprites[spriteId].sUnk = 64;
    }
}

static void SpriteCB_KyogreBubbles(struct Sprite *sprite)
{
    switch(sprite->sState)
    {
    case 0:
        if (sprite->sDelay == 0)
        {
            // Animation has started, float bubbles up
            sprite->sSinIdx = (sprite->sSinIdx + 11) & 0xFF;
            sprite->x2 = Sin(sprite->sSinIdx, 4);
            sprite->sBaseY += 48;
            sprite->y2 = -(sprite->sBaseY >> 8);
            if (sprite->animEnded)
                DestroySprite(sprite);
        }
        else if (--sprite->sDelay == 0)
        {
            // Start bubble animation after delay has finished
            StartSpriteAnim(sprite, 0);
            sprite->invisible = FALSE;
        }

        // Check if Kyogre scene is ending
        // For all but the last bubbles, sTaskId isn't actually set
        if (gTasks[sprite->sTaskId].tState > 11)
            sprite->sState++;
        break;
    case 1:
        // Scene zooms in, move bubbles offscreen
        if (sprite->x < DISPLAY_WIDTH / 2)
            sprite->x -= 3;
        else
            sprite->x += 3;

        if (sprite->y < DISPLAY_HEIGHT / 2)
            sprite->y -= 3;
        else
            sprite->y += 3;

        if ((u16)(sprite->y - 20) > DISPLAY_HEIGHT - 20)
            DestroySprite(sprite);
        break;
    }
}

#undef sSinIdx
#undef sBaseY
#undef sTaskId
#undef sDelay
#undef sUnk

static void Task_Scene3_LoadClouds1(u8 taskId)
{
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG0
                               | BLDCNT_TGT1_BG1
                               | BLDCNT_TGT1_BG2
                               | BLDCNT_EFFECT_LIGHTEN);
    SetGpuReg(REG_OFFSET_BLDALPHA, BLDALPHA_BLEND(31, 31));
    SetGpuReg(REG_OFFSET_BLDY, 31);
    SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_PRIORITY(0)
                               | BGCNT_CHARBASE(0)
                               | BGCNT_SCREENBASE(24)
                               | BGCNT_16COLOR
                               | BGCNT_TXT512x256);
    SetGpuReg(REG_OFFSET_BG1CNT, BGCNT_PRIORITY(0)
                               | BGCNT_CHARBASE(1)
                               | BGCNT_SCREENBASE(26)
                               | BGCNT_16COLOR
                               | BGCNT_TXT512x256);
    SetGpuReg(REG_OFFSET_BG2CNT, BGCNT_PRIORITY(2)
                               | BGCNT_CHARBASE(1)
                               | BGCNT_SCREENBASE(28)
                               | BGCNT_16COLOR
                               | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0
                                | DISPCNT_OBJ_1D_MAP
                                | DISPCNT_BG0_ON
                                | DISPCNT_BG1_ON
                                | DISPCNT_BG2_ON
                                | DISPCNT_OBJ_ON
                                | DISPCNT_WIN0_ON);
    SetGpuReg(REG_OFFSET_BG0HOFS, 80);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG1HOFS, -80);
    SetGpuReg(REG_OFFSET_BG1VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);
    DecompressDataWithHeaderVram(gIntroClouds_Gfx, (void *)VRAM);
    DecompressDataWithHeaderVram(gIntroClouds_Gfx, (void *)(BG_CHAR_ADDR(1)));
    DecompressDataWithHeaderVram(gIntroCloudsSun_Tilemap, (void *)(BG_SCREEN_ADDR(28)));
    gTasks[taskId].func = Task_Scene3_LoadClouds2;
}

static void Task_Scene3_LoadClouds2(u8 taskId)
{
    DecompressDataWithHeaderVram(gIntroCloudsLeft_Tilemap, (void *)(BG_SCREEN_ADDR(24)));
    DecompressDataWithHeaderVram(gIntroCloudsRight_Tilemap, (void *)(BG_SCREEN_ADDR(26)));
    gTasks[taskId].func = Task_Scene3_InitClouds;
}

#define tCloudPos data[6]

static void Task_Scene3_InitClouds(u8 taskId)
{
    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_BLDY, 0);
    gTasks[taskId].func = Task_Scene3_Clouds;
    gTasks[taskId].tState = 0;
    gTasks[taskId].tCloudPos = 16;
}

// Clouds coming in from the sides before Rayquaza appears
static void Task_Scene3_Clouds(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    // Left clouds are on BG0, right clouds are on BG1
    SetGpuReg(REG_OFFSET_BG0HOFS, (tCloudPos >> 8));
    SetGpuReg(REG_OFFSET_BG1HOFS, -(tCloudPos >> 8));

    switch (tState)
    {
    case 0:
        // Cloud position is used briefly as a delay, before
        // the scene has faded in from white
        if (--tCloudPos == 0)
        {
            // Start fade in from white, set cloud starting positions
            BeginNormalPaletteFade(PALETTES_ALL & ~1, 0, 16, 0, RGB_WHITEALPHA);
            tCloudPos = 80 << 8;
            tState++;
        }
        break;
    case 1:
        // Start fading out
        if (tCloudPos == 40 << 8)
            BeginNormalPaletteFade(PALETTES_BG & ~1, 3, 0, 16, RGB(9, 10, 10));

        // Move clouds inward toward each other
        if (tCloudPos != 0)
            tCloudPos -= 128;
        else if (!gPaletteFade.active)
            gTasks[taskId].func = Task_Scene3_LoadLightning;
        break;
    }
}
#undef tCloudPos

#define tDelay data[6]
#define tTimer data[7]

static void Task_Scene3_LoadLightning(u8 taskId)
{
    DecompressDataWithHeaderVram(gIntroRayquaza_Tilemap, (void *)(BG_SCREEN_ADDR(28)));
    DecompressDataWithHeaderVram(gIntroRayquazaClouds_Tilemap, (void *)(BG_SCREEN_ADDR(24)));
    DecompressDataWithHeaderVram(gIntroRayquaza_Gfx, (void *)(BG_CHAR_ADDR(1)));
    DecompressDataWithHeaderVram(gIntroRayquazaClouds_Gfx, (void *)VRAM);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0
                                | DISPCNT_OBJ_1D_MAP
                                | DISPCNT_BG0_ON
                                | DISPCNT_BG2_ON
                                | DISPCNT_OBJ_ON
                                | DISPCNT_WIN0_ON);
    gTasks[taskId].func = Task_Scene3_Lightning;
    gTasks[taskId].tState = 0;
    gTasks[taskId].tDelay = 1;
    gTasks[taskId].tTimer = 0;
    LoadCompressedSpriteSheetUsingHeap(sSpriteSheet_Lightning);
    LoadSpritePalettes(sSpritePalette_Lightning);
}

static void Task_Scene3_Lightning(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u8 spriteId;

    switch (tState)
    {
    case 0:
        if (--tDelay == 0)
        {
            // Do first lightning bolt
            CreateSprite(&sSpriteTemplate_Lightning, 200, 48, 0);
            spriteId = CreateSprite(&sSpriteTemplate_Lightning, 200, 80, 1);
            StartSpriteAnim(&gSprites[spriteId], 1);
            spriteId = CreateSprite(&sSpriteTemplate_Lightning, 200, 112, 2);
            StartSpriteAnim(&gSprites[spriteId], 2);
            tState++;
            tDelay = 72;
        }
        break;
    case 1:
        if (--tDelay == 0)
        {
            // Do second lightning bolt
            CreateSprite(&sSpriteTemplate_Lightning, 40, 48, 0);
            spriteId = CreateSprite(&sSpriteTemplate_Lightning, 40, 80, 1);
            StartSpriteAnim(&gSprites[spriteId], 1);
            spriteId = CreateSprite(&sSpriteTemplate_Lightning, 40, 112, 2);
            StartSpriteAnim(&gSprites[spriteId], 2);
            tState++;
            tDelay = 48;
        }
        break;
    case 2:
        if (--tDelay == 0)
            gTasks[taskId].func = Task_Scene3_LoadRayquazaAttack;
        break;
    }
}

#define sPalIdx data[1]
#define sDelay data[2]

static void SpriteCB_Lightning(struct Sprite *sprite)
{
    if (sprite->animEnded)
        sprite->invisible = TRUE;

    switch(sprite->sState)
    {
    case 0:
        sprite->sPalIdx = 0x1C2;
        sprite->sState++;
    case 1:
        CpuCopy16(INTRO3_RAW_PTR(sprite->sPalIdx), &gPlttBufferFaded[BG_PLTT_ID(5) + 13], PLTT_SIZEOF(1));
        sprite->sPalIdx += 2;
        if (sprite->sPalIdx != 0x1CE)
            break;
        sprite->sPalIdx = 0x1CC;
        sprite->sDelay = 4;
        sprite->sState++;
    case 2:
        if (--sprite->sDelay == 0)
        {
            sprite->sDelay = 4;
            CpuCopy16(INTRO3_RAW_PTR(sprite->sPalIdx), &gPlttBufferFaded[BG_PLTT_ID(5) + 13], PLTT_SIZEOF(1));
            sprite->sPalIdx -= 2;
            if (sprite->sPalIdx == 0x1C0)
                DestroySprite(sprite);
        }
        break;
    }
}

#undef sPalIdx
#undef sDelay

#define tRayquazaTaskId data[4]

static void Task_Scene3_LoadRayquazaAttack(u8 taskId)
{
    u8 attackTaskId;

    LoadCompressedSpriteSheet(sSpriteSheet_RayquazaOrb);
    LoadSpritePalettes(sSpritePalette_RayquazaOrb);
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0
                                | DISPCNT_OBJ_1D_MAP
                                | DISPCNT_BG0_ON
                                | DISPCNT_BG2_ON
                                | DISPCNT_OBJ_ON
                                | DISPCNT_WIN0_ON);
    gTasks[taskId].func = Task_Scene3_Rayquaza;
    BeginNormalPaletteFade(PALETTES_BG & ~(0x21), 0, 16, 0, RGB(9, 10, 10));
    gTasks[taskId].tState = 0;
    gTasks[taskId].data[1] = 0xA8;
    gTasks[taskId].data[2] = -0x10;
    gTasks[taskId].data[3] = -0x88;
    gTasks[taskId].data[4] = -0x10;
    attackTaskId = CreateTask(Task_RayquazaAttack, 0);
    gTasks[attackTaskId].tRayquazaTaskId = taskId;
}

static void Task_Scene3_Rayquaza(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (tTimer % 2 == 0)
        data[6] ^= 2;

    tTimer++;

    switch(tState)
    {
    case 0:
        if ((tTimer & 1) != 0)
        {
            data[1] -= 2;
            data[2]++;
            data[3] += 2;
            data[4]++;
        }
        if (data[1] == 0x68)
        {
            tState++;
            data[5] = 1;
        }
        break;
    case 1:
        tState++;
        data[5] = 4;
        break;
    case 2:
        data[1] += 4;
        data[2] -= 2;
        data[3] -= 4;
        data[4] -= 2;
        if (!gPaletteFade.active)
        {
            data[5] = 0x8C;
            tState++;
        }
        break;
    case 3:
        if (--data[5] == 0)
            gTasks[taskId].func = Task_EndIntroMovie;
        break;
    }
}
#undef tDelay
#undef tTimer

static void Task_EndIntroMovie(u8 taskId)
{
    DestroyTask(taskId);
    SetMainCallback2(MainCB2_EndIntro);
}

static void Task_RayquazaAttack(u8 taskId)
{
    u8 spriteId;
    s16 *data = gTasks[taskId].data;
    data[2]++;

    switch(tState)
    {
    case 0:
        if ((data[2] & 1) != 0)
        {
            CpuCopy16(INTRO3_RAW_PTR(0x1A2 + data[1] * 2), &gPlttBufferFaded[BG_PLTT_ID(5) + 14], PLTT_SIZEOF(1));
            data[1]++;
        }
        if (data[1] == 6)
        {
            tState++;
            data[1] = 0;
            data[3] = 10;
        }
        break;
    case 1:
        if (data[3] == 0)
        {
            if ((data[2] & 1) != 0)
            {
                CpuCopy16(INTRO3_RAW_PTR(0x1A2 + data[1] * 2), &gPlttBufferFaded[BG_PLTT_ID(5) + 8], PLTT_SIZEOF(1));
                data[1]++;
            }
            if (data[1] == 6)
            {
                tState++;
                data[3] = 10;
            }
        }
        else
        {
            data[3]--;
        }
        break;
    case 2:
        if (data[3] == 0)
        {
            if ((data[2] & 1) != 0)
            {
                CpuCopy16(INTRO3_RAW_PTR(0x182 + data[1] * 2), &gPlttBufferFaded[BG_PLTT_ID(5) + 12], PLTT_SIZEOF(1));
                data[1]++;
            }
            if (data[1] == 6)
            {
                spriteId = CreateSprite(&sSpriteTemplate_RayquazaOrb, 120, 88, 15);
                PlaySE(SE_INTRO_BLAST);
                gSprites[spriteId].invisible = TRUE;
                gSprites[spriteId].data[3] = tRayquazaTaskId;
                tState++;
                data[3] = 16;
            }
        }
        else
        {
            data[3]--;
        }
        break;
    case 3:
        if ((data[2] & 1) != 0)
        {
            if (--data[3] != 0)
            {
                BlendPalette(BG_PLTT_ID(5), 16, data[3], RGB(9, 10, 10));
                CpuCopy16(INTRO3_RAW_PTR(428), &gPlttBufferFaded[BG_PLTT_ID(5) + 14], PLTT_SIZEOF(1));
                CpuCopy16(INTRO3_RAW_PTR(428), &gPlttBufferFaded[BG_PLTT_ID(5) + 8], PLTT_SIZEOF(1));
                CpuCopy16(INTRO3_RAW_PTR(396), &gPlttBufferFaded[BG_PLTT_ID(5) + 12], PLTT_SIZEOF(1));
            }
            else
            {
                tState++;
                data[3] = 53;
            }
        }
        break;
    case 4:
        if (--data[3] == 0)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_WHITE);
            tState++;
        }
        break;
    case 5:
        if (!gPaletteFade.active)
            DestroyTask(taskId);
        break;
    }
}

static void IntroResetGpuRegs(void)
{
    SetGpuReg(REG_OFFSET_DISPCNT, 0);
    SetGpuReg(REG_OFFSET_BG3HOFS, 0);
    SetGpuReg(REG_OFFSET_BG3VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);
    SetGpuReg(REG_OFFSET_BG1HOFS, 0);
    SetGpuReg(REG_OFFSET_BG1VOFS, 0);
    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_BLDY, 0);
}

static void Task_BlendLogoIn(u8 taskId)
{
    switch (gTasks[taskId].tState)
    {
    case 0:
    default:
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_EFFECT_BLEND
                                   | BLDCNT_TGT2_BG0
                                   | BLDCNT_TGT2_BG1
                                   | BLDCNT_TGT2_BG2
                                   | BLDCNT_TGT2_BG3
                                   | BLDCNT_TGT2_OBJ
                                   | BLDCNT_TGT2_BD);
        SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[31]);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        gTasks[taskId].data[1] = ARRAY_COUNT(gTitleScreenAlphaBlend);
        gTasks[taskId].tState++;
        break;
    case 1:
        if (gTasks[taskId].data[1] != 0)
        {
            u8 tmp;

            gTasks[taskId].data[1]--;
            tmp = gTasks[taskId].data[1] / 2;
            SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[tmp]);
        }
        else
        {
            SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[0]);
            gTasks[taskId].data[1] = ARRAY_COUNT(gTitleScreenAlphaBlend) / 4;
            gTasks[taskId].tState++;
        }
        break;
    case 2:
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        DestroyTask(taskId);
        break;
    }
}

static void Task_BlendLogoOut(u8 taskId)
{
    switch (gTasks[taskId].tState)
    {
    case 0:
    default:
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_EFFECT_BLEND
                                   | BLDCNT_TGT2_BG0
                                   | BLDCNT_TGT2_BG1
                                   | BLDCNT_TGT2_BG2
                                   | BLDCNT_TGT2_BG3
                                   | BLDCNT_TGT2_OBJ
                                   | BLDCNT_TGT2_BD);
        SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[0]);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        gTasks[taskId].data[1] = 0;
        gTasks[taskId].tState++;
        break;
    case 1:
        if (gTasks[taskId].data[1] < (int)ARRAY_COUNT(gTitleScreenAlphaBlend) - 2)
        {
            u8 tmp;

            gTasks[taskId].data[1]++;
            tmp = gTasks[taskId].data[1] / 2;
            SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[tmp]);
        }
        else
        {
            SetGpuReg(REG_OFFSET_BLDALPHA, gTitleScreenAlphaBlend[31]);
            gTasks[taskId].data[1] = ARRAY_COUNT(gTitleScreenAlphaBlend) / 4;
            gTasks[taskId].tState++;
        }
        break;
    case 2:
        if (gTasks[taskId].data[1] != 0)
        {
            gTasks[taskId].data[1]--;
        }
        else
        {
            SetGpuReg(REG_OFFSET_BLDCNT, 0);
            SetGpuReg(REG_OFFSET_BLDALPHA, 0);
            SetGpuReg(REG_OFFSET_BLDY, 0);
            DestroyTask(taskId);
        }
        break;
    }
}

void PanFadeAndZoomScreen(u16 screenX, u16 screenY, u16 zoom, u16 alpha)
{
    struct BgAffineSrcData src;
    struct BgAffineDstData dest;

    src.texX = 0x8000;
    src.texY = 0x8000;
    src.scrX = screenX;
    src.scrY = screenY;
    src.sx = zoom;
    src.sy = zoom;
    src.alpha = alpha;
    BgAffineSet(&src, &dest, 1);
    SetGpuReg(REG_OFFSET_BG2PA, dest.pa);
    SetGpuReg(REG_OFFSET_BG2PB, dest.pb);
    SetGpuReg(REG_OFFSET_BG2PC, dest.pc);
    SetGpuReg(REG_OFFSET_BG2PD, dest.pd);
    SetGpuReg(REG_OFFSET_BG2X_L, dest.dx);
    SetGpuReg(REG_OFFSET_BG2X_H, dest.dx >> 16);
    SetGpuReg(REG_OFFSET_BG2Y_L, dest.dy);
    SetGpuReg(REG_OFFSET_BG2Y_H, dest.dy >> 16);
}

static void SpriteCB_WaterDrop_Ripple(struct Sprite *sprite)
{
    u8 palNum;

    if (sprite->data[2] >= 192)
    {
        if (sprite->data[3] != 0)
        {
            sprite->data[3]--;
        }
        else
        {
            sprite->invisible = FALSE;
            SetOamMatrix(sprite->data[1], sprite->data[2], 0, 0, sprite->data[2]);
            sprite->data[2] = (sprite->data[2] * 95) / 100;
            palNum = (sprite->data[2] - 192) / 128 + 9;
            if (palNum > 15)
                palNum = 15;
            sprite->oam.paletteNum = palNum;
        }
    }
    else
    {
        DestroySprite(sprite);
    }
}

static void SpriteCB_WaterDropHalf(struct Sprite *sprite)
{
    if (gSprites[sprite->data[7]].data[7] != 0)
    {
        sprite->invisible = TRUE;
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        StartSpriteAnim(sprite, DROP_ANIM_RIPPLE);
        sprite->data[2] = 1024;
        sprite->data[3] = 8 * (sprite->data[1] & 3);
        sprite->callback = SpriteCB_WaterDrop_Ripple;
        sprite->oam.shape = SPRITE_SHAPE(64x32);
        sprite->oam.size = SPRITE_SIZE(64x32);
        CalcCenterToCornerVec(sprite, SPRITE_SHAPE(64x32), SPRITE_SIZE(64x32), ST_OAM_AFFINE_ERASE);
    }
    else
    {
        sprite->x2 = gSprites[sprite->data[7]].x2;
        sprite->y2 = gSprites[sprite->data[7]].y2;
        sprite->x = gSprites[sprite->data[7]].x;
        sprite->y = gSprites[sprite->data[7]].y;
    }
}

static void SpriteCB_WaterDrop(struct Sprite *sprite)
{
    // Wait for sState to be modified by Task_Scene1_WaterDrops
    if (sprite->sState != 0)
        sprite->callback = SpriteCB_WaterDrop_Slide;
}

static void SpriteCB_WaterDrop_Slide(struct Sprite *sprite)
{
    if (sprite->x <= 116)
    {
        sprite->y += sprite->y2;
        sprite->y2 = 0;
        sprite->x += 4;
        sprite->x2 = -4;
        sprite->data[4] = 128;
        sprite->callback = SpriteCB_WaterDrop_ReachLeafEnd;
    }
    else
    {
        u16 data2;
        u16 data3;
        u16 data4;
        s16 sin1;
        s16 sin2;
        s16 sin3;
        s16 sin4;
        s16 var1;
        s16 var2;
        s16 var3;
        s16 var4;
        s16 temp;

        data4 = sprite->data[4];
        sin1 = gSineTable[(u8)data4];
        sin2 = gSineTable[(u8)(data4 + 64)];
        sprite->data[4] += 2;
        sprite->y2 = sin1 / 32;
        sprite->x--;
        if (sprite->x & 1)
            sprite->y++;
        temp = -sin2 / 16;
        data2 = sprite->data[2];
        data3 = sprite->data[3];
        sin3 = gSineTable[(u8)(temp - 16)];
        sin4 = gSineTable[(u8)(temp + 48)];
        var1 = sin4 * data2 / 256;
        var2 = -sin3 * data3 / 256;
        var3 = sin3 * data2 / 256;
        var4 = sin4 * data3 / 256;
        SetOamMatrix(sprite->data[1], data2, 0, 0, data3);
        SetOamMatrix(sprite->data[1] + 1, var1, var3, var2, var4);
        SetOamMatrix(sprite->data[1] + 2, var1, var3, var2 * 2, var4 * 2);
    }
}

static void SpriteCB_WaterDrop_ReachLeafEnd(struct Sprite *sprite)
{
    SetOamMatrix(sprite->data[1], sprite->data[6] + 64, 0, 0, sprite->data[6] + 64);
    SetOamMatrix(sprite->data[1] + 1, sprite->data[6] + 64, 0, 0, sprite->data[6] + 64);
    SetOamMatrix(sprite->data[1] + 2, sprite->data[6] + 64, 0, 0, sprite->data[6] + 64);
    if (sprite->data[4] != MAX_SPRITES)
    {
        u16 sinIdx;
        sprite->data[4] -= 8;
        sinIdx = sprite->data[4];
        sprite->x2 = gSineTable[(u8)(sinIdx + 64)] / 64;
        sprite->y2 = gSineTable[(u8)sinIdx] / 64;
    }
    else
    {
        sprite->data[4] = 0;
        sprite->callback = SpriteCB_WaterDrop_DangleFromLeaf;
    }
}

static void SpriteCB_WaterDrop_DangleFromLeaf(struct Sprite *sprite)
{
    if (sprite->data[0] != 2)
    {
        s16 r2;

        sprite->data[4] += 8;
        r2 = gSineTable[(u8)sprite->data[4]] / 16 + 64;
        sprite->x2 = gSineTable[(u8)(r2 + 64)] / 64;
        sprite->y2 = gSineTable[(u8)r2] / 64;
    }
    else
    {
        sprite->callback = SpriteCB_WaterDrop_Fall;
    }
}

static void SpriteCB_WaterDrop_Fall(struct Sprite *sprite)
{
    if (sprite->y < sprite->data[5])
    {
        sprite->y += 4;
    }
    else
    {
        sprite->data[7] = 1;
        sprite->invisible = TRUE;
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        StartSpriteAnim(sprite, DROP_ANIM_RIPPLE);
        sprite->data[2] = 1024;
        sprite->data[3] = 8 * (sprite->data[1] & 3);
        sprite->callback = SpriteCB_WaterDrop_Ripple;
        sprite->oam.shape = SPRITE_SHAPE(64x32);
        sprite->oam.size = SPRITE_SIZE(64x32);
        CalcCenterToCornerVec(sprite, SPRITE_SHAPE(64x32), SPRITE_SIZE(64x32), ST_OAM_AFFINE_ERASE);
    }
}

// Identical to SpriteCB_WaterDrop_Fall
// Used by the 2nd and 3rd water drops to skip the leaf slide
static void SpriteCB_WaterDropShort(struct Sprite *sprite)
{
    if (sprite->y < sprite->data[5])
    {
        sprite->y += 4;
    }
    else
    {
        sprite->data[7] = 1;
        sprite->invisible = TRUE;
        sprite->x += sprite->x2;
        sprite->y += sprite->y2;
        StartSpriteAnim(sprite, DROP_ANIM_RIPPLE);
        sprite->data[2] = 1024;
        sprite->data[3] = 8 * (sprite->data[1] & 3);
        sprite->callback = SpriteCB_WaterDrop_Ripple;
        sprite->oam.shape = SPRITE_SHAPE(64x32);
        sprite->oam.size = SPRITE_SIZE(64x32);
        CalcCenterToCornerVec(sprite, SPRITE_SHAPE(64x32), SPRITE_SIZE(64x32), ST_OAM_AFFINE_ERASE);
    }
}

static u8 CreateWaterDrop(s16 x, s16 y, u16 c, u16 d, u16 e, u8 fallImmediately)
{
    u8 spriteId;
    u8 oldSpriteId;

    // Create water drop reflection
    spriteId = CreateSprite(&sSpriteTemplate_WaterDrop, x, y, 1);
    gSprites[spriteId].data[0] = 0;
    gSprites[spriteId].data[7] = 0;
    gSprites[spriteId].data[1] = d;
    gSprites[spriteId].data[2] = c;
    gSprites[spriteId].data[3] = c;
    gSprites[spriteId].data[5] = e;
    gSprites[spriteId].data[6] = c;
    gSprites[spriteId].oam.affineMode = ST_OAM_AFFINE_DOUBLE;
    gSprites[spriteId].oam.matrixNum = d;
    CalcCenterToCornerVec(&gSprites[spriteId], SPRITE_SHAPE(32x32), SPRITE_SIZE(32x32), ST_OAM_AFFINE_ERASE);
    StartSpriteAnim(&gSprites[spriteId], DROP_ANIM_REFLECTION);
    if (!fallImmediately)
        gSprites[spriteId].callback = SpriteCB_WaterDrop; // Do full anim, for 1st drop that slides along the leaf
    else
        gSprites[spriteId].callback = SpriteCB_WaterDropShort; // Skip to drop falling into the water, for 2nd and 3rd drops
    oldSpriteId = spriteId;

    // Create water drop upper half
    // Implicitly anim number 0, DROP_ANIM_UPPER_HALF
    spriteId = CreateSprite(&sSpriteTemplate_WaterDrop, x, y, 1);
    gSprites[spriteId].data[7] = oldSpriteId;
    gSprites[spriteId].data[1] = d + 1;
    gSprites[spriteId].oam.affineMode = ST_OAM_AFFINE_DOUBLE;
    gSprites[spriteId].oam.matrixNum = d + 1;
    CalcCenterToCornerVec(&gSprites[spriteId], SPRITE_SHAPE(32x32), SPRITE_SIZE(32x32), ST_OAM_AFFINE_ERASE);
    gSprites[spriteId].callback = SpriteCB_WaterDropHalf;

    // Create water drop lower half
    spriteId = CreateSprite(&sSpriteTemplate_WaterDrop, x, y, 1);
    gSprites[spriteId].data[7] = oldSpriteId;
    gSprites[spriteId].data[1] = d + 2;
    StartSpriteAnim(&gSprites[spriteId], DROP_ANIM_LOWER_HALF);
    gSprites[spriteId].oam.affineMode = ST_OAM_AFFINE_DOUBLE;
    gSprites[spriteId].oam.matrixNum = d + 2;
    CalcCenterToCornerVec(&gSprites[spriteId], SPRITE_SHAPE(32x32), SPRITE_SIZE(32x32), ST_OAM_AFFINE_ERASE);
    gSprites[spriteId].callback = SpriteCB_WaterDropHalf;

    SetOamMatrix(d, c + 32, 0, 0, c + 32);
    SetOamMatrix(d + 1, c + 32, 0, 0, c + 32);
    SetOamMatrix(d + 2, c + 32, 0, 0, 2 * (c + 32));

    return oldSpriteId;
}

// State is handled by Task_Scene2_BikeRide
static void SpriteCB_PlayerOnBicycle(struct Sprite *sprite)
{
    // Adjust x position
    switch (sprite->sState)
    {
    case 0:
        // Move forwards
        StartSpriteAnimIfDifferent(sprite, 0);
        sprite->x--;
        break;
    case 1:
        // Drift backwards slowly
        StartSpriteAnimIfDifferent(sprite, 0);
        if (gIntroFrameCounter & 7)
            return;
        sprite->x++;
        break;
    case 2:
        // Move backwards
        if (sprite->x <= 120 || gIntroFrameCounter & 7)
            sprite->x++;
        break;
    case 3:
        // Bike in place
        break;
    case 4:
        // Exit to the left
        if (sprite->x > -32)
            sprite->x -= 2;
        break;
    }

    if (gIntroFrameCounter & 7)
        return;

    // Adjust y position
    if (sprite->y2 != 0)
    {
        // Return to neutral after wobble
        sprite->y2 = 0;
    }
    else
    {
        // Random wobble on y axis
        switch (Random() & 3)
        {
        case 0:
            sprite->y2 = -1;
            break;
        case 1:
            sprite->y2 = 1;
            break;
        case 2:
        case 3:
            sprite->y2 = 0;
            break;
        }
    }
}

#define sSinIdx data[1]

// Movement is started by setting state to 1 in Task_Scene2_BikeRide
static void SpriteCB_Flygon(struct Sprite *sprite)
{
    switch (sprite->sState)
    {
    case 0:
        break;
    case 1:
        if (sprite->x2 + sprite->x < DISPLAY_WIDTH + 64)
            sprite->x2 += 8;
        else
            sprite->sState = 2;
        break;
    case 2:
        if (sprite->x2 + sprite->x > 120)
            sprite->x2 -= 1;
        else
            sprite->sState = 3;
        break;
    case 3:
        if (sprite->x2 > 0)
            sprite->x2 -= 2;
        break;
    }
    sprite->y2 = Sin((u8)sprite->sSinIdx, 8) - sFlygonYOffset;
    sprite->sSinIdx += 4;
}

#undef sSinIdx

#define sTimer      data[1]
#define sLetterId   data[2]
#define sColorDelay data[3]
#define sLetterX    data[3] // Re-used

#define COLOR_CHANGES 9 // Number of stages for changing the letter color

// For the letters in "Game Freak"
// Also intended for the letters in "Presents", which is never shown
static void SpriteCB_LogoLetter(struct Sprite *sprite)
{
    switch (sprite->sState)
    {
    case 0:
        if (sprite->sTimer != 0)
        {
            sprite->sTimer--;
        }
        else
        {
            // Start the grow and shrink appearance animation
            sprite->invisible = FALSE;
            StartSpriteAffineAnim(sprite, 1);
            sprite->sState++;
        }
        break;
    case 1:
        if (gIntroFrameCounter == TIMER_LOGO_LETTERS_COLOR)
        {
            // Initialize color fade
            sprite->sState++;
            sprite->sTimer = COLOR_CHANGES;
            sprite->sColorDelay = 2;
        }
        break;
    case 2:
        // Fade letters to blue
        if (sprite->sColorDelay == 0)
        {
            sprite->sColorDelay = 2;
            if (sprite->sTimer != 0)
            {
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer],      &gPlttBufferFaded[OBJ_PLTT_ID(1) + 15], PLTT_SIZEOF(1));
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer + 16], &gPlttBufferFaded[OBJ_PLTT_ID(1) + 4], PLTT_SIZEOF(1));
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer + 32], &gPlttBufferFaded[OBJ_PLTT_ID(1) + 10], PLTT_SIZEOF(1));
                sprite->sTimer--;
            }
            else
            {
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer],      &gPlttBufferFaded[OBJ_PLTT_ID(1) + 15], PLTT_SIZEOF(1));
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer + 16], &gPlttBufferFaded[OBJ_PLTT_ID(1) + 4], PLTT_SIZEOF(1));
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer + 32], &gPlttBufferFaded[OBJ_PLTT_ID(1) + 10], PLTT_SIZEOF(1));
                sprite->sState++;
            }
        }
        else
        {
            sprite->sColorDelay--;
        }
        break;
    case 3:
        // Fade letters back to white
        if (sprite->sColorDelay != 0)
        {
            sprite->sColorDelay--;
        }
        else
        {
            sprite->sColorDelay = 2;
            if (sprite->sTimer <= COLOR_CHANGES)
            {
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer],      &gPlttBufferFaded[OBJ_PLTT_ID(1) + 15], PLTT_SIZEOF(1));
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer + 16], &gPlttBufferFaded[OBJ_PLTT_ID(1) + 4], PLTT_SIZEOF(1));
                CpuCopy16(&gIntroGameFreakTextFade_Pal[sprite->sTimer + 32], &gPlttBufferFaded[OBJ_PLTT_ID(1) + 10], PLTT_SIZEOF(1));
                sprite->sTimer++;
            }
            else
            {
                sprite->sState++;
            }
        }
        break;
    case 4:
        if (gIntroFrameCounter == TIMER_LOGO_DISAPPEAR)
        {
            // Start the grow disappearance animation
            StartSpriteAffineAnim(sprite, 2);
            sprite->oam.objMode = ST_OAM_OBJ_BLEND;
            sprite->sState++;
        }
        break;
    case 5:
        // Spread the letters out as they grow
        sprite->sLetterX += sGameFreakLettersMoveSpeed[sprite->sLetterId];
        sprite->x2 = (sprite->sLetterX & 0xFF00) >> 8;
        if (sprite->sLetterId < 4)
        {
            // Is in first 4 letters, i.e. "Game"
            s16 temp = sprite->x2;
            sprite->x2 = -temp;
        }
        if (sprite->affineAnimEnded)
            DestroySprite(sprite);
        break;
    }
}

static void SpriteCB_GameFreakLogo(struct Sprite *sprite)
{
    switch(sprite->sState)
    {
    case 0:
        if (gIntroFrameCounter == TIMER_LOGO_APPEAR)
        {
            sprite->invisible = FALSE;
            sprite->sState++;
        }
        break;
    case 1:
        if (gIntroFrameCounter == TIMER_LOGO_DISAPPEAR)
        {
            // Start the grow disappearance animation
            StartSpriteAffineAnim(sprite, 3);
            sprite->sState++;
        }
        break;
    case 2:
        if (sprite->affineAnimEnded)
            DestroySprite(sprite);
        break;
    }
}

static u8 CreateGameFreakLogoSprites(s16 x, s16 y, s16 unused)
{
    u16 i;
    u8 spriteId;

    // Create "Game Freak" letters
    for (i = 0; i < NUM_GF_LETTERS; i++)
    {
        spriteId = CreateSprite(&sSpriteTemplate_GameFreakLetter, sGameFreakLetterData[i][1] + x, y - 4, 0);
        gSprites[spriteId].sState = 0;
        gSprites[spriteId].sTimer = sGameFreakLetterStartDelays[i];
        gSprites[spriteId].sLetterId = i;
        gSprites[spriteId].invisible = TRUE;
        gSprites[spriteId].oam.matrixNum = i + 12;
        StartSpriteAnim(&gSprites[spriteId], sGameFreakLetterData[i][0]);
        StartSpriteAffineAnim(&gSprites[spriteId], 0);
    }

    // Create Game Freak logo
    spriteId = CreateSprite(&sSpriteTemplate_GameFreakLogo, 120, y - 6, 0);
    gSprites[spriteId].sState = 0;
    gSprites[spriteId].invisible = TRUE;
    gSprites[spriteId].oam.matrixNum = i + 12;
    StartSpriteAffineAnim(&gSprites[spriteId], 1);

    return spriteId;
}

#undef sTimer
#undef sLetterId
#undef sColorDelay
#undef sLetterX
#undef COLOR_CHANGES

#define sScale   data[1]
#define sRot     data[2]
#define sPos     data[3]
#define sTimer   data[7]

static void SpriteCB_FlygonSilhouette(struct Sprite *sprite)
{
    sprite->sTimer++;

    if (sprite->sState != 0)
    {
        s16 sin;
        s16 cos;

        s16 a, b, c, d;
        // Determines rotation of the sprite
        sin = gSineTable[(u8)sprite->sRot];
        cos = gSineTable[(u8)(sprite->sRot + 64)];
        // Converts rotation and scale into the OAM matrix
        d = Q_8_8_TO_INT( cos * sprite->sScale);
        c = Q_8_8_TO_INT(-sin * sprite->sScale);
        b = Q_8_8_TO_INT( sin * sprite->sScale);
        a = Q_8_8_TO_INT( cos * sprite->sScale);

        SetOamMatrix(1, a, b, c, d);
    }

    switch (sprite->sState)
    {
    case 0:
    default:
        sprite->oam.affineMode = ST_OAM_AFFINE_DOUBLE;
        sprite->oam.matrixNum = 1;
        CalcCenterToCornerVec(sprite, SPRITE_SHAPE(64x32), SPRITE_SIZE(64x32), ST_OAM_AFFINE_DOUBLE);
        sprite->invisible = FALSE;
        sprite->sState = 1;
        sprite->sScale = 128;
        sprite->sRot = 0;
        sprite->sPos = 0;
        break;
    case 1:
        sprite->x2 = -Sin((u8)sprite->sPos, 140);
        sprite->y2 = -Sin((u8)sprite->sPos, 120);
        sprite->sScale += 7;
        sprite->sPos += 3;
        if (sprite->x + sprite->x2 <= -16)
        {
            sprite->oam.priority = 3;
            sprite->sState++;
            sprite->x = 20;
            sprite->y = 40;
            sprite->sScale = 512;
            sprite->sRot = 0;
            sprite->sPos = 16;
        }
        break;
    case 2:
        sprite->x2 = Sin((u8)sprite->sPos, 34);
        sprite->y2 = -Cos((u8)sprite->sPos, 60);
        sprite->sScale += 2;
        if (sprite->sTimer % 5 == 0)
            sprite->sPos++;
        break;
    }
}

#undef sScale
#undef sRot
#undef sPos
#undef sTimer

static void SpriteCB_RayquazaOrb(struct Sprite *sprite)
{
    u16 foo;
    switch (sprite->sState)
    {
    case 0:
    default:
        sprite->invisible = FALSE;
        sprite->oam.affineMode = ST_OAM_AFFINE_DOUBLE;
        sprite->oam.matrixNum = 18;
        CalcCenterToCornerVec(sprite, SPRITE_SHAPE(64x64), SPRITE_SIZE(64x64), ST_OAM_AFFINE_DOUBLE);
        sprite->data[1] = 0;
        sprite->sState = 1;
        //fall through
    case 1:
        sprite->data[7]++;
        if (sprite->data[7] & 1)
        {
            sprite->invisible = TRUE;
        }
        else
        {
            sprite->invisible = FALSE;
            if (sprite->data[1] < 64)
                sprite->data[1]++;
        }
        foo = 256 - gSineTable[(u8)sprite->data[1]] / 2;
        SetOamMatrix(18, foo, 0, 0, foo);
        break;
    }
}

// =========================================================================
// Task data layout for Task_Scene0_Main:
//   data[0] = tState
//   data[1] = tTimer        — contador generico de frames
//   data[2] = tBgSet        — BG set atual (0/1/2/3)
//   data[3] = tShrineId     — sprite do shrine (set 0/1/2)
//   data[4] = tMoonId       — sprite da lua (set 3)
//   data[5] = tCelebiId
//   data[6] = tJirachiId
//   data[7] = tCometId
//   data[8] = tCloudScroll  — sub-pixel scroll das nuvens (1/2 pixel por frame)
//   data[9] = tSparkleTimer — frame counter para spawn de sparkles
// =========================================================================
#define tState        data[0]
#define tTimer        data[1]
#define tBgSet        data[2]
#define tShrineId     data[3]
#define tMoonId       data[4]
#define tCelebiId     data[5]
#define tJirachiId    data[6]
#define tCometId      data[7]
#define tCloudScroll  data[8]
#define tSparkleTimer data[9]

enum {
    S0_FADE_IN_SET00 = 0,
    S0_HOLD_SET00,
    S0_FADE_TO_SET01,
    S0_HOLD_SET01,
    S0_FADE_TO_SET02,
    S0_HOLD_SET02,
    S0_LAUNCH_SPRITES,     // Jirachi + Celebi voam (com cry)
    S0_WAIT_SPRITES,
    S0_FADE_TO_SET03,      // tela preta -> carrega bg03 + clouds + moon
    S0_HOLD_SET03,         // fade in do set03, nuvens comecam a mover
    S0_LAUNCH_COMET,       // cometa cruza + sparkles espalhados
    S0_WAIT_COMET,
    S0_FADE_OUT,
    S0_DONE,
};

#define S0_SKY_CHARBASE    0
#define S0_FOREST_CHARBASE 1
#define S0_SKY_SCREEN      24
#define S0_FOREST_SCREEN   28
#define S0_SKY_PAL_SLOT    0
#define S0_FOREST_PAL_SLOT 1

// =========================================================================
// Scene0_LoadBgSet — sets 0, 1, 2 (floresta + ceu)
// =========================================================================
static void Scene0_LoadBgSet(u8 setIndex)
{
    const u16 *skyPal, *fgPal;
    const u32 *skyGfx, *fgGfx;
    const void *skyMap, *fgMap;

    switch (setIndex)
    {
    default:
    case 0:
        skyPal = sScene0BgSky00_Pal; fgPal = sScene0Bg00_Pal;
        skyGfx = sScene0BgSky00_Gfx; fgGfx = sScene0Bg00_Gfx;
        skyMap = sScene0BgSky00_Map; fgMap = sScene0Bg00_Map;
        break;
    case 1:
        skyPal = sScene0BgSky01_Pal; fgPal = sScene0Bg01_Pal;
        skyGfx = sScene0BgSky01_Gfx; fgGfx = sScene0Bg01_Gfx;
        skyMap = sScene0BgSky01_Map; fgMap = sScene0Bg01_Map;
        break;
    case 2:
        skyPal = sScene0BgSky02_Pal; fgPal = sScene0Bg02_Pal;
        skyGfx = sScene0BgSky02_Gfx; fgGfx = sScene0Bg02_Gfx;
        skyMap = sScene0BgSky02_Map; fgMap = sScene0Bg02_Map;
        break;
    }

    DecompressDataWithHeaderVram(skyGfx, (void *)(BG_CHAR_ADDR(S0_SKY_CHARBASE)));
    DecompressDataWithHeaderVram(fgGfx,  (void *)(BG_CHAR_ADDR(S0_FOREST_CHARBASE)));
    CpuFill16(0, (void *)(BG_SCREEN_ADDR(S0_SKY_SCREEN)),    BG_SCREEN_SIZE);
    CpuFill16(0, (void *)(BG_SCREEN_ADDR(S0_FOREST_SCREEN)), BG_SCREEN_SIZE);
    CpuCopy16(skyMap, (void *)(BG_SCREEN_ADDR(S0_SKY_SCREEN)),    32 * 20 * 2);
    CpuCopy16(fgMap,  (void *)(BG_SCREEN_ADDR(S0_FOREST_SCREEN)), 32 * 20 * 2);
    {
        u16 *screenSky = (u16 *)BG_SCREEN_ADDR(S0_SKY_SCREEN);
        u16 *screenFg  = (u16 *)BG_SCREEN_ADDR(S0_FOREST_SCREEN);
        u16 i;
        for (i = 0; i < 32 * 32; i++)
            screenSky[i] = (screenSky[i] & 0x0FFF) | (0 << 12);
        for (i = 0; i < 32 * 32; i++)
            screenFg[i]  = (screenFg[i]  & 0x0FFF) | (1 << 12);
    }
    LoadPalette(skyPal, BG_PLTT_ID(S0_SKY_PAL_SLOT),    PLTT_SIZE_4BPP);
    LoadPalette(fgPal,  BG_PLTT_ID(S0_FOREST_PAL_SLOT), PLTT_SIZE_4BPP);
}

// =========================================================================
// Scene0_LoadSet03 — bg03 (ceu noturno) + clouds (overlay com scroll)
// Chamado enquanto a tela esta preta (dentro de S0_FADE_TO_SET03)
// BG0 = bg03, BG1 = clouds
// =========================================================================
static void Scene0_LoadSet03(void)
{
    // bg03 — ceu noturno com lua: charbase 0, screenbase 24
    DecompressDataWithHeaderVram(sScene0Bg03_Gfx, (void *)(BG_CHAR_ADDR(S0_SKY_CHARBASE)));
    CpuFill16(0, (void *)(BG_SCREEN_ADDR(S0_SKY_SCREEN)), BG_SCREEN_SIZE);
    CpuCopy16(sScene0Bg03_Map, (void *)(BG_SCREEN_ADDR(S0_SKY_SCREEN)), 32 * 20 * 2);
    LoadPalette(sScene0Bg03_Pal, BG_PLTT_ID(S0_SKY_PAL_SLOT), PLTT_SIZE_4BPP);

    // clouds — overlay semitransparente: charbase 1, screenbase 28
    DecompressDataWithHeaderVram(sScene0Clouds_Gfx, (void *)(BG_CHAR_ADDR(S0_FOREST_CHARBASE)));
    CpuFill16(0, (void *)(BG_SCREEN_ADDR(S0_FOREST_SCREEN)), BG_SCREEN_SIZE);
    CpuCopy16(sScene0Clouds_Map, (void *)(BG_SCREEN_ADDR(S0_FOREST_SCREEN)), 32 * 20 * 2);
    LoadPalette(sScene0Clouds_Pal, BG_PLTT_ID(S0_FOREST_PAL_SLOT), PLTT_SIZE_4BPP);

    SetGpuReg(REG_OFFSET_BG0CNT,
        BGCNT_PRIORITY(1)
        | BGCNT_CHARBASE(S0_SKY_CHARBASE)
        | BGCNT_SCREENBASE(S0_SKY_SCREEN)
        | BGCNT_16COLOR
        | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG1CNT,
        BGCNT_PRIORITY(0)
        | BGCNT_CHARBASE(S0_FOREST_CHARBASE)
        | BGCNT_SCREENBASE(S0_FOREST_SCREEN)
        | BGCNT_16COLOR
        | BGCNT_TXT256x256);

    SetGpuReg(REG_OFFSET_BG1HOFS, 0);
}

// =========================================================================
// Task_Scene0_Load
// =========================================================================
void Task_Scene0_Load(u8 taskId)
{
    SetVBlankCallback(NULL);
    m4aSongNumStart(MUS_RG_TITLE);
    IntroResetGpuRegs();

    // Blend hardware — TGT1=OBJ, EFFECT=LIGHTEN (BLDY).
    // Ativo durante toda a Scene0; BLDY é controlado individualmente
    // pela lua (pulso lento) e pelo cometa (flash rápido).
    // Zerado em S0_DONE antes de passar para a Scene1.
    SetGpuReg(REG_OFFSET_BLDCNT,
        BLDCNT_TGT1_OBJ
        | BLDCNT_EFFECT_LIGHTEN);
    SetGpuReg(REG_OFFSET_BLDY, 0);

    SetGpuReg(REG_OFFSET_BG0CNT,
        BGCNT_PRIORITY(1)
        | BGCNT_CHARBASE(S0_SKY_CHARBASE)
        | BGCNT_SCREENBASE(S0_SKY_SCREEN)
        | BGCNT_16COLOR
        | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG1CNT,
        BGCNT_PRIORITY(0)
        | BGCNT_CHARBASE(S0_FOREST_CHARBASE)
        | BGCNT_SCREENBASE(S0_FOREST_SCREEN)
        | BGCNT_16COLOR
        | BGCNT_TXT256x256);

    Scene0_LoadBgSet(0);

    // Sprites do set 0/1/2
    LoadCompressedSpriteSheet(sSpriteSheet_Scene0Shrine);
    LoadSpritePalettes(sSpritePalette_Scene0Shrine);
    LoadCompressedSpriteSheet(sSpriteSheet_Scene0Celebi);
    LoadSpritePalettes(sSpritePalette_Scene0Celebi);
    LoadCompressedSpriteSheet(sSpriteSheet_Scene0Jirachi);
    LoadSpritePalettes(sSpritePalette_Scene0Jirachi);

    gTasks[taskId].tShrineId    = CreateSprite(&sSpriteTemplate_Scene0Shrine,
                                               DISPLAY_WIDTH / 2,
                                               DISPLAY_HEIGHT - 40, 0);
    gTasks[taskId].tMoonId      = SPRITE_NONE;
    gTasks[taskId].tCelebiId    = SPRITE_NONE;
    gTasks[taskId].tJirachiId   = SPRITE_NONE;
    gTasks[taskId].tCometId     = SPRITE_NONE;
    gTasks[taskId].tState       = S0_FADE_IN_SET00;
    gTasks[taskId].tTimer       = 0;
    gTasks[taskId].tBgSet       = 0;
    gTasks[taskId].tCloudScroll = 0;
    gTasks[taskId].tSparkleTimer = 0;

    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    SetVBlankCallback(VBlankCB_Intro);
    SetGpuReg(REG_OFFSET_DISPCNT,
        DISPCNT_MODE_0
        | DISPCNT_OBJ_1D_MAP
        | DISPCNT_BG0_ON
        | DISPCNT_BG1_ON
        | DISPCNT_OBJ_ON);

    gTasks[taskId].func = Task_Scene0_Main;
}

// =========================================================================
// Task_Scene0_Main
// =========================================================================
static void Task_Scene0_Main(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    switch (task->tState)
    {
    // ------------------------------------------------------------------
    case S0_FADE_IN_SET00:
        if (!gPaletteFade.active)
        {
            task->tTimer = 0;
            task->tState = S0_HOLD_SET00;
        }
        break;

    // ------------------------------------------------------------------
    case S0_HOLD_SET00:
        if (++task->tTimer >= 180)   // ~3 s
        {
            BeginNormalPaletteFade(PALETTES_BG, 8, 0, 16, RGB_BLACK);
            task->tTimer = 0;
            task->tState = S0_FADE_TO_SET01;
        }
        break;

    // ------------------------------------------------------------------
    case S0_FADE_TO_SET01:
        if (!gPaletteFade.active)
        {
            Scene0_LoadBgSet(1);
            task->tBgSet = 1;
            BeginNormalPaletteFade(PALETTES_BG, 8, 16, 0, RGB_BLACK);
            task->tTimer = 0;
            task->tState = S0_HOLD_SET01;
        }
        break;

    // ------------------------------------------------------------------
    case S0_HOLD_SET01:
        if (gPaletteFade.active)
            break;
        if (++task->tTimer >= 150)   // ~2.5 s
        {
            BeginNormalPaletteFade(PALETTES_BG, 8, 0, 16, RGB_BLACK);
            task->tTimer = 0;
            task->tState = S0_FADE_TO_SET02;
        }
        break;

    // ------------------------------------------------------------------
    case S0_FADE_TO_SET02:
        if (!gPaletteFade.active)
        {
            Scene0_LoadBgSet(2);
            task->tBgSet = 2;
            BeginNormalPaletteFade(PALETTES_BG, 8, 16, 0, RGB_BLACK);
            task->tTimer = 0;
            task->tState = S0_HOLD_SET02;
        }
        break;

    // ------------------------------------------------------------------
    case S0_HOLD_SET02:
        if (gPaletteFade.active)
            break;
        if (++task->tTimer >= 150)   // ~2.5 s
        {
            task->tTimer = 0;
            task->tState = S0_LAUNCH_SPRITES;
        }
        break;

    // ------------------------------------------------------------------
    // Jirachi e Celebi voam pela tela com seus cries
    case S0_LAUNCH_SPRITES:
    {
        // Celebi: esquerda -> direita
        u8 celebiId = CreateSprite(&sSpriteTemplate_Scene0Celebi,
                                   -64, DISPLAY_HEIGHT / 2, 0);
        gSprites[celebiId].invisible = FALSE;
        task->tCelebiId = celebiId;

        // Jirachi: direita -> esquerda (espelhado)
        u8 jirachiId = CreateSprite(&sSpriteTemplate_Scene0Jirachi,
                                    DISPLAY_WIDTH + 32, DISPLAY_HEIGHT / 2 - 20, 0);
        gSprites[jirachiId].invisible = FALSE;
        gSprites[jirachiId].hFlip    = TRUE;
        task->tJirachiId = jirachiId;

        // Cries
        PlayCryInternal(SPECIES_CELEBI,  0, 120, 10, 0);
        PlayCryInternal(SPECIES_JIRACHI, 0, 120, 10, 0);

        task->tTimer = 0;
        task->tState = S0_WAIT_SPRITES;
        break;
    }

    // ------------------------------------------------------------------
    case S0_WAIT_SPRITES:
    {
        bool8 cDone = (task->tCelebiId  == SPRITE_NONE
                       || gSprites[task->tCelebiId].invisible);
        bool8 jDone = (task->tJirachiId == SPRITE_NONE
                       || gSprites[task->tJirachiId].invisible);

        if (cDone && jDone)
        {
            if (task->tCelebiId  != SPRITE_NONE)
                DestroySprite(&gSprites[task->tCelebiId]);
            if (task->tJirachiId != SPRITE_NONE)
                DestroySprite(&gSprites[task->tJirachiId]);
            task->tCelebiId  = SPRITE_NONE;
            task->tJirachiId = SPRITE_NONE;
            task->tTimer     = 0;
            task->tState     = S0_FADE_TO_SET03;
        }
        break;
    }

    // ------------------------------------------------------------------
    // Fade to black, libera sprites antigos, carrega set03 + moon + comet
    // Speed 8 = fade suave (~2.1s para escurecer completamente), RGB_BLACK
    case S0_FADE_TO_SET03:
        if (task->tTimer == 0)
            BeginNormalPaletteFade(PALETTES_ALL, 8, 0, 16, RGB_BLACK);
        task->tTimer++;
        if (!gPaletteFade.active && task->tTimer > 1)
        {
            // Limpa sprites dos sets anteriores
            if (task->tShrineId != SPRITE_NONE)
            {
                DestroySprite(&gSprites[task->tShrineId]);
                task->tShrineId = SPRITE_NONE;
            }
            // Desativa blend ANTES de limpar sprites/paletas —
            // evita o flash branco (EFFECT_LIGHTEN + paleta zerada = branco por 1 frame)
            SetGpuReg(REG_OFFSET_BLDCNT,   0);
            SetGpuReg(REG_OFFSET_BLDY,     0);
            SetGpuReg(REG_OFFSET_BLDALPHA, 0);

            ResetSpriteData();
            FreeAllSpritePalettes();

            // Carrega set03 + clouds
            Scene0_LoadSet03();

            // Restaura blend para o glow da lua (OBJ → lighten)
            SetGpuReg(REG_OFFSET_BLDCNT,
                BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_LIGHTEN);

            // Carrega sprites do set03
            LoadCompressedSpriteSheet(sSpriteSheet_Scene0Moon);
            LoadSpritePalettes(sSpritePalette_Scene0Moon);
            LoadCompressedSpriteSheet(sSpriteSheet_Scene0Comet);
            LoadSpritePalettes(sSpritePalette_Scene0Comet);
            LoadCompressedSpriteSheet(sSpriteSheet_Scene0Sparkle);
            LoadSpritePalettes(sSpritePalette_Scene0Sparkle);

            // Lua — começa pequena (escala 768 ≈ 1/3) e cresce manualmente via
            // SpriteCB_Scene0Moon que chama SetOamMatrix a cada frame.
            // data[1] = PA/PD atual (768→256). data[2] = fase do pulso BLDY.
            task->tMoonId = CreateSprite(&sSpriteTemplate_Scene0Moon,
                                         DISPLAY_WIDTH / 2, DISPLAY_HEIGHT / 2, 1);
            gSprites[task->tMoonId].invisible = FALSE;
            gSprites[task->tMoonId].data[1]   = 768;  // escala inicial: ~1/3 do tamanho real
            gSprites[task->tMoonId].data[2]   = 0;    // fase BLDY

            SetGpuReg(REG_OFFSET_DISPCNT,
                DISPCNT_MODE_0
                | DISPCNT_OBJ_1D_MAP
                | DISPCNT_BG0_ON
                | DISPCNT_BG1_ON
                | DISPCNT_OBJ_ON);

            task->tTimer        = 0;
            task->tCloudScroll  = 0;
            task->tSparkleTimer = 0;
            task->tState        = S0_HOLD_SET03;
        }
        break;

    // ------------------------------------------------------------------
    // Fade in do set03 igual aos outros sets: speed=8, timer só conta
    // depois que a tela abriu completamente (gPaletteFade.active == FALSE).
    // Aguarda ~3s limpos após o fade-in antes de lançar o cometa.
    case S0_HOLD_SET03:
        if (task->tTimer == 0)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 8, 16, 0, RGB_BLACK);
            PlaySE(SE_M_MOONLIGHT);
        }

        // Scroll lento das nuvens sempre
        task->tCloudScroll++;
        SetGpuReg(REG_OFFSET_BG1HOFS, (u16)(task->tCloudScroll >> 1));

        task->tTimer++;

        // Igual S0_HOLD_SET01/02: pausa até o fade-in terminar, depois conta
        if (gPaletteFade.active)
            break;
        if (task->tTimer >= 180)   // ~3s depois que a tela abriu
        {
            task->tTimer = 0;
            task->tState = S0_LAUNCH_COMET;
        }
        break;

    // ------------------------------------------------------------------
    case S0_LAUNCH_COMET:
    {
        // Trajetoria EXATA: diagonal 45 graus cruzando o quadrado central 160x160
        // GBA: 240x160. Quadrado central 160x160 ocupa x=[40,200], y=[0,160].
        // Entra pelo canto superior-direito (x=200, y=0) e sai pelo canto
        // inferior-esquerdo (x=40, y=160). Sprite 64x64, começa alem da borda.
        // vx=-3, vy=+3 → slope perfeitamente 1:1 (45 graus).
        u8 id = CreateSprite(&sSpriteTemplate_Scene0Comet,
                             232, -32, 0);   // fora da tela: x=200+32, y=-32
        gSprites[id].invisible = FALSE;
        PlaySE(SE_M_HYPER_BEAM2);            // som do cometa
        task->tCometId      = id;
        task->tTimer        = 0;
        task->tSparkleTimer = 0;
        task->tState        = S0_WAIT_COMET;
        break;
    }

    // ------------------------------------------------------------------
    case S0_WAIT_COMET:
    {
        // Scroll das nuvens continua
        task->tCloudScroll++;
        SetGpuReg(REG_OFFSET_BG1HOFS, (u16)(task->tCloudScroll >> 1));

        // Sparkles ao longo da trajetoria do cometa (menos frequentes — mais bonito)
        if (task->tCometId != SPRITE_NONE && ++task->tSparkleTimer % 8 == 0)
        {
            // Spawna perto da posicao atual do cometa para simular rastro
            s16 cx = gSprites[task->tCometId].x;
            s16 cy = gSprites[task->tCometId].y;
            s16 rx = cx + (s16)((Random() % 40) - 20);
            s16 ry = cy + (s16)((Random() % 40) - 20);
            u8 spk = CreateSprite(&sSpriteTemplate_Scene0Sparkle,
                                  rx, ry, 0);
            StartSpriteAnim(&gSprites[spk], 0);
        }

        // Verifica se o cometa saiu da tela
        if (task->tCometId != SPRITE_NONE
            && gSprites[task->tCometId].invisible)
        {
            DestroySprite(&gSprites[task->tCometId]);
            task->tCometId = SPRITE_NONE;
            task->tTimer   = 0;
            task->tState   = S0_FADE_OUT;
        }
        break;
    }

    // ------------------------------------------------------------------
    case S0_FADE_OUT:
        // Delay generoso apos o cometa: glow das estrelas + nuvens + lua por ~2.5s
        // Scroll das nuvens e lua continuam durante todo o delay
        task->tCloudScroll++;
        SetGpuReg(REG_OFFSET_BG1HOFS, (u16)(task->tCloudScroll >> 1));

        // Sparkles aleatorios continuam por mais um tempo
        if (++task->tSparkleTimer % 10 == 0 && task->tTimer < 120)
        {
            u16 rx = (u16)((Random() % 220) + 10);
            u16 ry = (u16)((Random() % 120) + 10);
            CreateSprite(&sSpriteTemplate_Scene0Sparkle, (s16)rx, (s16)ry, 0);
        }

        // Inicia o fade apenas apos ~4s de delay (240 frames)
        if (++task->tTimer == 240)
            BeginNormalPaletteFade(PALETTES_ALL, 8, 0, 16, RGB_BLACK);
        if (!gPaletteFade.active && task->tTimer > 240)
            task->tState = S0_DONE;
        break;

    // ------------------------------------------------------------------
    case S0_DONE:
    default:
        SetGpuReg(REG_OFFSET_DISPCNT,  0);
        SetGpuReg(REG_OFFSET_MOSAIC,   0);
        SetGpuReg(REG_OFFSET_BLDCNT,   0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY,     0);
        DmaClear16(3, (void *)BG_SCREEN_ADDR(S0_SKY_SCREEN),    2048);
        DmaClear16(3, (void *)BG_SCREEN_ADDR(S0_FOREST_SCREEN), 2048);
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        DestroyTask(taskId);
        CreateTask(Task_Scene1_Load, 0);
        break;
    }
}

#undef tState
#undef tTimer
#undef tBgSet
#undef tShrineId
#undef tMoonId
#undef tCelebiId
#undef tJirachiId
#undef tCometId
#undef tCloudScroll
#undef tSparkleTimer

// =========================================================================
// CB2_Scene0Intro
// =========================================================================
void CB2_Scene0Intro(void)
{
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    SetVBlankCallback(NULL);
    CreateTask(Task_Scene0_Load, 0);
    SetMainCallback2(MainCB2_Intro);
}

// =========================================================================
// SpriteCB_Scene0Shrine — estatico
// =========================================================================
static void SpriteCB_Scene0Shrine(struct Sprite *sprite)
{
    (void)sprite;
}

// =========================================================================
// SpriteCB_Scene0Celebi — esquerda->direita, deriva levemente para cima
// =========================================================================
static void SpriteCB_Scene0Celebi(struct Sprite *sprite)
{
    sprite->x += 3;
    if (++sprite->data[0] % 4 == 0)
        sprite->y -= 1;
    if (sprite->x > DISPLAY_WIDTH + 64)
        sprite->invisible = TRUE;
}

// =========================================================================
// SpriteCB_Scene0Jirachi — direita->esquerda, deriva levemente para cima
// =========================================================================
static void SpriteCB_Scene0Jirachi(struct Sprite *sprite)
{
    sprite->x -= 3;
    if (++sprite->data[0] % 4 == 0)
        sprite->y -= 1;
    if (sprite->x < -64)
        sprite->invisible = TRUE;
}

// =========================================================================
// =========================================================================
// SpriteCB_Scene0Comet — diagonal 45 graus, mais rápido com glow
// Velocidade: 5px/frame (era 3px) → cruzamento em ~33 frames (~0.55s)
// Glow: oscila BLDY entre 4 e 8 a cada 3 frames (flash rápido e brilhante)
// =========================================================================
static void SpriteCB_Scene0Comet(struct Sprite *sprite)
{
    // Movimento: 5px diagonal, mais rápido que antes
    sprite->x -= 5;
    sprite->y += 5;

    // Glow pulsante rápido: BLDY oscila 4→8→4 a cada 3 frames
    // data[1] = contador de frames para o glow
    {
        u8 phase = (u8)(++sprite->data[1] % 6);
        // 0,1,2 → sobe 4→6→8; 3,4,5 → desce 8→6→4
        static const u8 bldy_table[6] = {4, 5, 6, 7, 8, 7};
        SetGpuReg(REG_OFFSET_BLDY, bldy_table[phase]);
    }

    if (sprite->x < -64 || sprite->y > DISPLAY_HEIGHT + 64)
    {
        // Restaura BLDY para o pulso da lua ao sair da tela
        SetGpuReg(REG_OFFSET_BLDY, 0);
        sprite->invisible = TRUE;
    }
}

// =========================================================================
// SpriteCB_Scene0Sparkle — toca animacao uma vez e se destroi
// =========================================================================
static void SpriteCB_Scene0Sparkle(struct Sprite *sprite)
{
    // A animacao tem 4 frames x 4 game-frames = 16 frames total
    // ANIMCMD_END vai travar o sprite — destruimos apos 20 frames
    if (++sprite->data[0] >= 20)
        DestroySprite(sprite);
}

// =========================================================================
// SpriteCB_Scene0Moon
//
// GROW: data[1] guarda o valor atual de PA/PD (escala inversa do GBA).
//   PA=256 = tamanho 100%. PA=768 = ~33% (começa pequena).
//   Decrementamos 3 por frame até chegar em 256 → ~171 frames ≈ 2.85s de crescimento.
//   Depois que chegou em 256, o valor para de mudar.
//
// BLDY PULSE: data[2] = contador de fase (0..119).
//   Triângulo suave: 0→3→0 em 120 frames (2s por ciclo).
//   Só escreve BLDY se o cometa não está ativo (detectado por BLDY >= 4).
// =========================================================================
static void SpriteCB_Scene0Moon(struct Sprite *sprite)
{
    s16 scale;
    u8  phase;
    u8  bldy;

    if (sprite->invisible)
        return;

    // --- Grow suave: escala PA/PD de 768 → 256 a 3 por frame ---
    scale = sprite->data[1];
    if (scale > 256)
    {
        // data[3] = sub-contador: so decrementa nos frames pares
        // media: -1.5/frame → ~341 frames ≈ 5.7s (metade da velocidade anterior)
        if (++sprite->data[3] % 2 == 0)
        {
            scale -= 3;
            if (scale < 256)
                scale = 256;
            sprite->data[1] = scale;
        }
    }
    // SetOamMatrix(matrixNum, PA, PB, PC, PD)
    // PB=PC=0 (sem rotação/skew), PA=PD=scale (escala uniforme)
    SetOamMatrix((u8)sprite->oam.matrixNum, (u16)scale, 0, 0, (u16)scale);

    // --- Pulso BLDY suave: triângulo 0→3→0 em 120 frames ---
    phase = (u8)(++sprite->data[2]);
    if (sprite->data[2] >= 120)
        sprite->data[2] = 0;

    if (phase < 60)
        bldy = (u8)((phase * 3 + 29) / 59);
    else
        bldy = (u8)(((119 - phase) * 3 + 29) / 59);

    // Respeita o flash do cometa (cometa usa BLDY >= 4)
    if (GetGpuReg(REG_OFFSET_BLDY) < 4)
        SetGpuReg(REG_OFFSET_BLDY, bldy);
}
