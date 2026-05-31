#pragma GCC diagnostic ignored "-Wmissing-braces"
#pragma GCC diagnostic ignored "-Wmaybe-uninitialized"
#include "snowball.h"

// VAR that persists hi-score between sessions (mirrors flappybird's VAR_FLAPPY_HISCORE)
#ifndef VAR_SNOWBALL_HISCORE
#define VAR_SNOWBALL_HISCORE VAR_TEMP_6
#endif

#include "global.h"
#include "malloc.h"
#include "bg.h"
#include "decompress.h"
#include "event_data.h"
#include "gpu_regs.h"
#include "graphics.h"
#include "m4a.h"
#include "main.h"
#include "menu.h"
#include "menu_helpers.h"
#include "event_object_movement.h"
#include "overworld.h"
#include "palette.h"
#include "pokemon.h"
#include "random.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "text.h"
#include "window.h"
#include "scanline_effect.h"
#include "string_util.h"
#include "field_specials.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "constants/species.h"
#include "constants/vars.h"

// ============================================================
// Decompression buffers – one per sprite sheet so DMA sources
// stay valid across multiple LoadSpriteSheet calls.
// Sizes: BigSnow=0x200, BigSnowHit=0x800, SmallSnow=0x200,
//        SmallSnowHit=0x200, TextSprite (start/gameover)=0x800
// ============================================================


// ============================================================
// Game states
// ============================================================

enum {
    SNOWBALL_INIT,       // Start screen – waiting for A / START
    SNOWBALL_INIT_SWAP,  // Fading to black before swapping BG
    SNOWBALL_PLAYING,    // Active gameplay
    SNOWBALL_HIT,        // Player was hit; showing impact sprite
    SNOWBALL_GAMEOVER,   // Showing game-over banner
    SNOWBALL_HISCORE,    // New hi-score! Show score2 banner
    SNOWBALL_EXIT,       // Fade complete – return to field
};

// ============================================================
// Tuneable constants
// ============================================================

#define MAX_SNOWBALLS          4
#define PLAYER_X               65       // Fixed X of player (left side)
#define PLAYER_SPEED           2        // px/frame vertical
#define PLAYER_MIN_Y           8
#define PLAYER_MAX_Y           136
#define SPAWN_X                248      // Right edge spawn X
#define SMALL_SNOW_SPEED_BASE  6        // Fixed-point × 256
#define BIG_SNOW_SPEED_BASE    5
#define SPAWN_INTERVAL_MIN     30       // frames between spawns
#define SPAWN_INTERVAL_MAX     90
#define HIT_SHOW_DELAY         80       // frames to show impact sprite
#define GAMEOVER_SHOW_DELAY    150      // frames to show game-over banner

// Speed scaling (256 = 1.00×, increases by SPEED_SCALE_PER_BALL each throw)
#define SPEED_SCALE_BASE       256
#define SPEED_SCALE_PER_BALL   3
#define SPEED_SCALE_MAX        512

// ============================================================
// Game-state struct
// ============================================================

struct SnowballEntry {
    u8    spriteId;
    s16   x;
    u8    y;
    u16   speed256;   // fixed-point: actual px/frame = speed256 / 256
    bool8 active;
    bool8 isBig;
};

struct SnowballGame {
    u8   state;
    u8   playerSpriteId;
    s16  playerY;
    u8   hitSpriteId;
    u8   startSpriteId;
    u8   gameoverSpriteId;
    u8   score2SpriteId;   // hi-score banner sprite (score2.png)
    u16  spawnTimer;
    u16  delayTimer;
    u16  ballsThrown;
    u16  speedScale;
    u8   scoreWindowId;
    bool8 isNewHiScore;    // TRUE once player beats stored hi-score → red text
    s16  lastPlayerY;      // used for stale-player detection
    u8   noMoveBalls;      // balls thrown without player moving (task 4)
    u16  subX[MAX_SNOWBALLS];
    struct SnowballEntry balls[MAX_SNOWBALLS];

    // Decompression buffers – live only while the minigame is running.
    // Flappy/Snake pattern: embed in the heap-allocated struct, not static EWRAM.
    u32  bufBigSnow    [0x200 / 4];   // 0x200 bytes, u32-aligned for LZ77/CpuCopy32
    u32  bufBigSnowHit [0x800 / 4];
    u32  bufSmallSnow  [0x200 / 4];
    u32  bufSmallSnowHit[0x200 / 4];
    u32  bufTextSprite [0x800 / 4];   // shared: start OR gameover sprite
    u32  bufSpheal     [0x400];   // 8 frames × 0x200 bytes / 4 = 0x400 u32s
};

static EWRAM_DATA struct SnowballGame *sSnow = NULL;

// ============================================================
// Background graphics
// ============================================================

// ── Start screen (shown before the game begins) ─────────────
static const u32 StartScreen_BG_Img[]     = INCBIN_U32("graphics/snowball/startscreenbg.4bpp.lz");
static const u32 StartScreen_BG_Tilemap[] = INCBIN_U32("graphics/snowball/startscreenbg.bin.lz");
static const u16 StartScreen_BG_Pal[]     = INCBIN_U16("graphics/snowball/startscreenbg.gbapal");

// ── Snowfield (the actual game background) ──────────────────
static const u32 Snowfield_BG_Img[]     = INCBIN_U32("graphics/snowball/snowfield.4bpp.lz");
static const u32 Snowfield_BG_Tilemap[] = INCBIN_U32("graphics/snowball/snowfield.bin.lz");
static const u16 Snowfield_BG_Pal[]     = INCBIN_U16("graphics/snowball/snowfield.gbapal");

// ============================================================
// Sprite graphics – snowballs
// ============================================================

static const u32 BigSnowballGFX[]      = INCBIN_U32("graphics/snowball/bigsnowball.4bpp.lz");
static const u16 BigSnowballPAL[]      = INCBIN_U16("graphics/snowball/bigsnowball.gbapal");

static const u32 BigSnowballHitGFX[]   = INCBIN_U32("graphics/snowball/bigsnowballhit.4bpp.lz");
static const u16 BigSnowballHitPAL[]   = INCBIN_U16("graphics/snowball/bigsnowballhit.gbapal");

static const u32 SmallSnowballGFX[]    = INCBIN_U32("graphics/snowball/smallsnowball.4bpp.lz");
static const u16 SmallSnowballPAL[]    = INCBIN_U16("graphics/snowball/smallsnowball.gbapal");

static const u32 SmallSnowballHitGFX[] = INCBIN_U32("graphics/snowball/smallsnowballhit.4bpp.lz");
static const u16 SmallSnowballHitPAL[] = INCBIN_U16("graphics/snowball/smallsnowballhit.gbapal");

// ============================================================
// Sprite graphics – text (start / gameover)
// Same art as flappybird – copied into graphics/snowball/
// ============================================================

static const u32 SnowStartGFX[]    = INCBIN_U32("graphics/snowball/start.4bpp.lz");
static const u32 SnowGameOverGFX[] = INCBIN_U32("graphics/snowball/gameover.4bpp.lz");
static const u32 SnowScore2GFX[]   = INCBIN_U32("graphics/snowball/score2.4bpp.lz");  // hi-score banner
static const u16 SnowTextPAL[]     = INCBIN_U16("graphics/flappybird/text.gbapal");

// ============================================================
// Spheal overworld sprite (player)
// ============================================================

extern const u32 gObjectEventPic_Spheal[];
extern const u16 gOverworldPalette_Spheal[];

#define SPHEAL_FRAME_SIZE   0x200   // 16 tiles × 32 bytes (32×32 px frame)
#define SPHEAL_ROLL_FRAMES  8


// ============================================================
// GFX / PAL tags
// ============================================================

#define BIG_SNOW_GFXTAG         1
#define BIG_SNOW_HIT_GFXTAG     2
#define SMALL_SNOW_GFXTAG       3
#define SMALL_SNOW_HIT_GFXTAG   4
#define SPHEAL_GFXTAG           5
#define SNOW_START_GFXTAG       6
#define SNOW_GAMEOVER_GFXTAG    7
#define SNOW_SCORE2_GFXTAG      8   // hi-score banner

#define BIG_SNOW_PALTAG         1
#define BIG_SNOW_HIT_PALTAG     2
#define SMALL_SNOW_PALTAG       3
#define SMALL_SNOW_HIT_PALTAG   4
#define SPHEAL_PALTAG           5
#define SNOW_TEXT_PALTAG        6

// ============================================================
// Background layer
// ============================================================

#define SNOWBALL_BG 1

static const struct BgTemplate sSnowballBGTemplates[] = {
    {   // BG 0 – score text window (charBase 0 @ 0x06000000, map @ 0x0600B800)
        .bg            = 0,
        .charBaseIndex = 0,
        .mapBaseIndex  = 0x17,   
        .screenSize    = 0,
        .paletteMode   = 0,
        .priority      = 0,
        .baseTile      = 0,
    },
    {   // BG 1 – game background (charBase 1 @ 0x06004000, map @ 0x06007000)
        .bg            = SNOWBALL_BG,
        .charBaseIndex = 1,
        .mapBaseIndex  = 28,
        .screenSize    = 0,
        .paletteMode   = 0,
        .priority      = 3,
        .baseTile      = 0,
    },
};

// ============================================================
// Sprite palette table
// ============================================================

static const struct SpritePalette sSnowPalettes[] = {
    { .data = BigSnowballPAL,          .tag = BIG_SNOW_PALTAG      },
    { .data = BigSnowballHitPAL,       .tag = BIG_SNOW_HIT_PALTAG  },
    { .data = SmallSnowballPAL,        .tag = SMALL_SNOW_PALTAG    },
    { .data = SmallSnowballHitPAL,     .tag = SMALL_SNOW_HIT_PALTAG},
    { .data = gOverworldPalette_Spheal,.tag = SPHEAL_PALTAG        },
    { .data = SnowTextPAL,             .tag = SNOW_TEXT_PALTAG     },
    {},
};

// ============================================================
// OAM data
// ============================================================

// 16×16 – rolling snowballs (big + small) and small hit
static const struct OamData sOam_16x16 = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .shape      = SPRITE_SHAPE(16x16),
    .size       = SPRITE_SIZE(16x16),
    .priority   = 1,
};

// 32×32 – big snowball hit effect
static const struct OamData sOam_32x32 = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .shape      = SPRITE_SHAPE(32x32),
    .size       = SPRITE_SIZE(32x32),
    .priority   = 0,
};

// 32×32 – Spheal player sprite
static const struct OamData sOam_Spheal = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .mosaic     = FALSE,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(32x32),
    .size       = SPRITE_SIZE(32x32),
    .priority   = 1,
    .matrixNum  = 0,
    .tileNum    = 0,
    .paletteNum = 0,
};

// 64×32 – START / GAME OVER text banners (identical to flappybird)
static const struct OamData sOam_TextBanner = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .shape      = SPRITE_SHAPE(64x32),
    .size       = SPRITE_SIZE(64x32),
    .tileNum    = 0,
    .priority   = 0,
};

// ============================================================
// Animation tables
// ============================================================

// 4-frame rolling loop for 16×16 sprites (4 tiles/frame)
static const union AnimCmd sAnim_Roll16[] = {
    ANIMCMD_FRAME(0,  4),
    ANIMCMD_FRAME(4,  4),
    ANIMCMD_FRAME(8,  4),
    ANIMCMD_FRAME(12, 4),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Roll16[] = { sAnim_Roll16 };

// 4-frame one-shot hit for 32×32 (16 tiles/frame)
static const union AnimCmd sAnim_Hit32[] = {
    ANIMCMD_FRAME(0,  5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(32, 5),
    ANIMCMD_FRAME(48, 5),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Hit32[] = { sAnim_Hit32 };

// 4-frame one-shot hit for 16×16
static const union AnimCmd sAnim_Hit16[] = {
    ANIMCMD_FRAME(0,  5),
    ANIMCMD_FRAME(4,  5),
    ANIMCMD_FRAME(8,  5),
    ANIMCMD_FRAME(12, 5),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Hit16[] = { sAnim_Hit16 };

// Spheal west-roll: 8 frames, each 16 tiles (32×32) in VRAM
static const union AnimCmd sAnim_SpealRoll[] = {
    ANIMCMD_FRAME(0,   2),
    ANIMCMD_FRAME(16,  2),
    ANIMCMD_FRAME(32,  2),
    ANIMCMD_FRAME(48,  2),
    ANIMCMD_FRAME(64,  2),
    ANIMCMD_FRAME(80,  2),
    ANIMCMD_FRAME(96,  2),
    ANIMCMD_FRAME(112, 2),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_SpealRoll[] = { sAnim_SpealRoll };

// 2-frame blink/pulse loop for text banners (same as flappybird's sTitleAnimCmd_0)
static const union AnimCmd sAnim_TextBlink[] = {
    ANIMCMD_FRAME(0,  10),
    ANIMCMD_FRAME(32, 10),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_TextBlink[] = { sAnim_TextBlink };

// ============================================================
// Sprite templates
// ============================================================

static const struct SpriteTemplate sSpriteTemplate_BigSnow = {
    .tileTag     = BIG_SNOW_GFXTAG,
    .paletteTag  = BIG_SNOW_PALTAG,
    .oam         = &sOam_16x16,
    .anims       = sAnims_Roll16,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_BigSnowHit = {
    .tileTag     = BIG_SNOW_HIT_GFXTAG,
    .paletteTag  = BIG_SNOW_HIT_PALTAG,
    .oam         = &sOam_32x32,
    .anims       = sAnims_Hit32,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_SmallSnow = {
    .tileTag     = SMALL_SNOW_GFXTAG,
    .paletteTag  = SMALL_SNOW_PALTAG,
    .oam         = &sOam_16x16,
    .anims       = sAnims_Roll16,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_SmallSnowHit = {
    .tileTag     = SMALL_SNOW_HIT_GFXTAG,
    .paletteTag  = SMALL_SNOW_HIT_PALTAG,
    .oam         = &sOam_16x16,
    .anims       = sAnims_Hit16,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Spheal = {
    .tileTag     = SPHEAL_GFXTAG,
    .paletteTag  = SPHEAL_PALTAG,
    .oam         = &sOam_Spheal,
    .anims       = sAnims_SpealRoll,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_SnowStart = {
    .tileTag     = SNOW_START_GFXTAG,
    .paletteTag  = SNOW_TEXT_PALTAG,
    .oam         = &sOam_TextBanner,
    .anims       = sAnims_TextBlink,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_SnowGameOver = {
    .tileTag     = SNOW_GAMEOVER_GFXTAG,
    .paletteTag  = SNOW_TEXT_PALTAG,
    .oam         = &sOam_TextBanner,
    .anims       = sAnims_TextBlink,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

// hi-score banner (score2.png) – same OAM as start/gameover, static (no blink)
static const union AnimCmd sAnim_Static[] = { ANIMCMD_FRAME(0, 1), ANIMCMD_END };
static const union AnimCmd *const sAnims_Static[] = { sAnim_Static };

static const struct SpriteTemplate sSpriteTemplate_SnowScore2 = {
    .tileTag     = SNOW_SCORE2_GFXTAG,
    .paletteTag  = SNOW_TEXT_PALTAG,
    .oam         = &sOam_TextBanner,
    .anims       = sAnims_Static,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

// ============================================================
// Score text window (top-left corner, BG 0)
// ============================================================

// Palette slot 15 for the score text window.
// Slot 0=transparent, 1=dark (text body), 2=light gray (shadow)
static const u16 sScoreFontPal[16] = {
    0x0000,            // 0 – transparent
    RGB( 0,  0,  0),   // 1 – black text
    RGB(18,18,18),     // 2 – gray shadow
    RGB(31,  0,  0),   // 3 – RED for hi-score text
    0,0,0,0, 0,0,0,0, 0,0,0,0,
};

// Score window definition is below, just before DrawScore()

// ============================================================
// Forward declarations
// ============================================================

static void FadeToSnowballScreen(u8 taskId);
static void InitSnowballScreen(void);
static void SnowballVBlankCallback(void);
static void SnowballMainCallback(void);
static void SnowballMain(u8 taskId);
static void ExitSnowballGame(void);
static void StartExitSnowballGame(void);
static void DrawScore(void);
static void LoadAllSnowSheets(void);
static void LoadBg1Direct(const u32 *gfx, const u32 *tilemapLZ, const u16 *pal, u32 palBytes);
static void LoadStartBg(void);
static void SwapBgToSnowfield(void);
static void CreatePlayerSprite(void);
static void CreateBigSnowball(u8 idx);
static void CreateSmallSnowball(u8 idx);
static void SpawnRandomSnowball(void);
static bool8 CheckCollision(u8 idx);
static void ShowHitEffect(u8 idx);
static void CreateStartSprite(void);
static void CreateGameOverSprite(void);

// ============================================================
// Entry point – called from NPC script
// ============================================================

void StartSnowballGame(void)
{
    sSnow = AllocZeroed(sizeof(struct SnowballGame));
    CreateTask(FadeToSnowballScreen, 0);
}

// ============================================================
// Fade out field → init minigame (identical to flappybird)
// ============================================================

static void FadeToSnowballScreen(u8 taskId)
{
    switch (gTasks[taskId].data[0])
    {
    case 0:
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
        gTasks[taskId].data[0]++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            SetMainCallback2(InitSnowballScreen);
            DestroyTask(taskId);
        }
        break;
    }
}

// ============================================================
// Callbacks
// ============================================================

static void SnowballVBlankCallback(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void SnowballMainCallback(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    RunTextPrinters();
    UpdatePaletteFade();
}

// ============================================================
// Exit
// ============================================================

static void StartExitSnowballGame(void)
{
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
    sSnow->state = SNOWBALL_EXIT;
}

static void ExitSnowballGame(void)
{
    if (!gPaletteFade.active)
    {
        Overworld_ResetMapMusic();
        FreeAllWindowBuffers();
        UnsetBgTilemapBuffer(0);
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        FREE_AND_SET_NULL(sSnow);
    }
}

// ============================================================
// BG helpers
// ============================================================

// ── Direct VRAM BG1 loader ──────────────────────────────────────────────────
// CopyToBgTilemapBuffer does NOT decompress LZ77 data – passing .bin.lz bytes
// directly feeds raw compressed bytes as tilemap entries → pink/glitch bug.
// LZ77UnCompVram decompresses straight into VRAM, matching intro.c's pattern.
// ───────────────────────────────────────────────────────────────────────────

static void LoadBg1Direct(const u32 *gfx, const u32 *tilemapLZ, const u16 *pal, u32 palBytes)
{
    LZ77UnCompVram(gfx,      (void *)BG_CHAR_ADDR(1));     // tiles → charBase 1
    LZ77UnCompVram(tilemapLZ,(void *)BG_SCREEN_ADDR(28));  // map   → screen block 28
    LoadPalette(pal, BG_PLTT_ID(0), palBytes);             // palette(s) → BG slot 0+
}

// Load the start-screen tileset/tilemap into BG1
static void LoadStartBg(void)
{
    LoadBg1Direct(StartScreen_BG_Img, StartScreen_BG_Tilemap,
                  StartScreen_BG_Pal, sizeof(StartScreen_BG_Pal));
}

// Swap BG1 to the actual game snowfield
static void SwapBgToSnowfield(void)
{
    LoadBg1Direct(Snowfield_BG_Img, Snowfield_BG_Tilemap,
                  Snowfield_BG_Pal, sizeof(Snowfield_BG_Pal));
    // Snowfield may have 16 palettes (256 colors) and overwrite ALL BG slots
    // including slot 15 where our font lives. Reload it now to be safe.
    LoadPalette(sScoreFontPal, BG_PLTT_ID(15), sizeof(sScoreFontPal));
}

// ============================================================
// Score text window – centered at top of screen
// ============================================================

// Window is 12 tiles wide, centered on 30-tile screen → left = (30-12)/2 = 9
// Score window: 14 tiles wide, centered on screen (30 cols → left = (30-14)/2 = 8)
static const struct WindowTemplate sScoreWindowTemplate = {
    .bg          = 0,
    .tilemapLeft  = 8,
    .tilemapTop   = 0,
    .width        = 14,
    .height       = 2,
    .paletteNum   = 15,
    .baseBlock    = 1,
};

static const struct WindowTemplate sSnowballWindowTemplates[] = {
    DUMMY_WIN_TEMPLATE,
};

static void DrawScore(void)
{
    static const u8 sScoreLabel[] = _("Score: ");
    // Normal colors: transparent bg, black text, gray shadow
    static const u8 sNormalColors[] = {0, 1, 2};
    // Hi-score colors: transparent bg, RED text (palette index 3), dark shadow
    static const u8 sHiColors[]     = {0, 3, 2};
    u8 text[24];
    u8 numStr[8];
    u16 textWidth;
    u8 xOffset;

    // Don't draw while on start screen – score stays hidden until game begins
    if (sSnow->state == SNOWBALL_INIT || sSnow->state == SNOWBALL_INIT_SWAP)
        return;

    ConvertIntToDecimalStringN(numStr, sSnow->ballsThrown, STR_CONV_MODE_LEFT_ALIGN, 4);
    StringCopy(text, sScoreLabel);
    StringAppend(text, numStr);

    textWidth = GetStringWidth(FONT_SMALL, text, 0);
    xOffset   = (u8)((112 - textWidth) / 2);
    if (xOffset > 112) xOffset = 0;

    FillWindowPixelBuffer(sSnow->scoreWindowId, PIXEL_FILL(0));
    // Use red palette entry (3) when player has beaten the stored hi-score
    AddTextPrinterParameterized3(sSnow->scoreWindowId, FONT_SMALL, xOffset, 2,
                                 sSnow->isNewHiScore ? sHiColors : sNormalColors,
                                 0, text);
    PutWindowTilemap(sSnow->scoreWindowId);
    CopyWindowToVram(sSnow->scoreWindowId, COPYWIN_GFX);
    CopyBgTilemapBufferToVram(0);
}

// ============================================================
// Screen initialisation
// ============================================================

static void InitSnowballScreen(void)
{
    u8 i;

    SetVBlankCallback(NULL);
    ResetAllBgsCoordinates();
    ResetVramOamAndBgCntRegs();
    ResetBgsAndClearDma3BusyFlags(0);

    // ── BG setup ────────────────────────────────────────────────
    // We only need InitBgsFromTemplates for BG0 (window/score system).
    // BG1 (game background) is loaded directly to VRAM below.
    InitBgsFromTemplates(0, sSnowballBGTemplates, ARRAY_COUNT(sSnowballBGTemplates));

    // AddWindow allocates the BG0 tilemap buffer used by the score window.
    // BG1 does NOT use a software tilemap buffer – we write tiles/map straight
    // to VRAM with LZ77UnCompVram.
    // Force both BG control registers to the exact values we need.
    // InitBgsFromTemplates may not write them before vblank enables.
    SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_PRIORITY(0)
                                | BGCNT_CHARBASE(0)
                                | BGCNT_SCREENBASE(0x17)
                                | BGCNT_16COLOR
                                | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG1CNT, BGCNT_PRIORITY(3)
                                | BGCNT_CHARBASE(1)
                                | BGCNT_SCREENBASE(28)
                                | BGCNT_16COLOR
                                | BGCNT_TXT256x256);

    ResetPaletteFade();

    // ── Start screen background ──────────────────────────────
    // LZ77UnCompVram decompresses directly into VRAM – no heap needed
    LoadStartBg();

    // ── Sprites ──────────────────────────────────────────────
    ResetSpriteData();
    FreeAllSpritePalettes();
    LoadSpritePalettes(sSnowPalettes);
    LoadAllSnowSheets();

    // ── Score window font palette ─────────────────────────────
    // BG palette slot 15 must contain font colors or text renders invisible.
    // Index 0 = transparent, 2 = text body (white), 3 = shadow (dark).
    LoadPalette(sScoreFontPal, BG_PLTT_ID(15), sizeof(sScoreFontPal));

    // ── Game state ───────────────────────────────────────────
    for (i = 0; i < MAX_SNOWBALLS; i++)
    {
        sSnow->balls[i].active = FALSE;
        sSnow->subX[i]         = 0;
    }

    sSnow->playerY      = 80;
    sSnow->spawnTimer   = 60;
    sSnow->delayTimer   = 0;
    sSnow->state        = SNOWBALL_INIT;
    sSnow->ballsThrown  = 0;
    sSnow->speedScale   = SPEED_SCALE_BASE;

    // ── Score window (BG 0) ──────────────────────────────────
    InitWindows(sSnowballWindowTemplates);
    DeactivateAllTextPrinters();
    sSnow->scoreWindowId = AddWindow(&sScoreWindowTemplate);
    DrawScore();
    ShowBg(0);

    // ── Player sprite – hidden during INIT ───────────────────
    CreatePlayerSprite();
    gSprites[sSnow->playerSpriteId].invisible = TRUE;

    // ── Start-screen banner sprite ───────────────────────────
    CreateStartSprite();

    // ── GPU ──────────────────────────────────────────────────
    SetGpuReg(REG_OFFSET_DISPCNT,
              DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON
              | DISPCNT_BG0_ON | DISPCNT_BG1_ON);

    // Ensure blend is off (no accidental alpha on snowball sprites)
    SetGpuReg(REG_OFFSET_BLDCNT,   0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_BLDY,     0);

    ShowBg(SNOWBALL_BG);
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, RGB_BLACK);
    SetVBlankCallback(SnowballVBlankCallback);
    SetMainCallback2(SnowballMainCallback);
    CreateTask(SnowballMain, 1);
}

// ============================================================
// Sheet loading – each sheet gets its own EWRAM buffer so the
// DMA source pointer stays valid after the next sheet loads.
// ============================================================

static void LoadAllSnowSheets(void)
{
    struct SpriteSheet s;

    LZ77UnCompWram(BigSnowballGFX, sSnow->bufBigSnow);
    s.data = sSnow->bufBigSnow;
    s.size = 0x200;
    s.tag  = BIG_SNOW_GFXTAG;
    LoadSpriteSheet(&s);

    LZ77UnCompWram(BigSnowballHitGFX, sSnow->bufBigSnowHit);
    s.data = sSnow->bufBigSnowHit;
    s.size = 0x800;
    s.tag  = BIG_SNOW_HIT_GFXTAG;
    LoadSpriteSheet(&s);

    LZ77UnCompWram(SmallSnowballGFX, sSnow->bufSmallSnow);
    s.data = sSnow->bufSmallSnow;
    s.size = 0x200;
    s.tag  = SMALL_SNOW_GFXTAG;
    LoadSpriteSheet(&s);

    LZ77UnCompWram(SmallSnowballHitGFX, sSnow->bufSmallSnowHit);
    s.data = sSnow->bufSmallSnowHit;
    s.size = 0x200;
    s.tag  = SMALL_SNOW_HIT_GFXTAG;
    LoadSpriteSheet(&s);

    // Spheal: copy 8 south/down frames (frames 3-10) from ROM → EWRAM
    {
        const u32 *src = gObjectEventPic_Spheal + (3 * SPHEAL_FRAME_SIZE / 4);
        CpuCopy32(src, (void *)sSnow->bufSpheal, SPHEAL_FRAME_SIZE * SPHEAL_ROLL_FRAMES);
        s.data = sSnow->bufSpheal;
        s.size = SPHEAL_FRAME_SIZE * SPHEAL_ROLL_FRAMES;
        s.tag  = SPHEAL_GFXTAG;
        LoadSpriteSheet(&s);
    }
}

// ============================================================
// Text-banner sprite helpers (pattern mirrors flappybird's
// CreateStart / CreateGameOver exactly)
// ============================================================

static void CreateStartSprite(void)
{
    struct SpriteSheet s;

    LoadSpritePalettes(sSnowPalettes);
    LZ77UnCompWram(SnowStartGFX, sSnow->bufTextSprite);
    s.data = sSnow->bufTextSprite;
    s.size = 0x800;
    s.tag  = SNOW_START_GFXTAG;
    LoadSpriteSheet(&s);

    // Centred on screen (120, 80)
    sSnow->startSpriteId = CreateSprite(&sSpriteTemplate_SnowStart, 120, 80, 0);
}

static void CreateGameOverSprite(void)
{
    struct SpriteSheet s;

    LoadSpritePalettes(sSnowPalettes);
    LZ77UnCompWram(SnowGameOverGFX, sSnow->bufTextSprite);
    s.data = sSnow->bufTextSprite;
    s.size = 0x800;
    s.tag  = SNOW_GAMEOVER_GFXTAG;
    LoadSpriteSheet(&s);

    sSnow->gameoverSpriteId = CreateSprite(&sSpriteTemplate_SnowGameOver, 120, 80, 0);
}

static void CreateScore2Sprite(void)
{
    struct SpriteSheet s;

    LoadSpritePalettes(sSnowPalettes);
    LZ77UnCompWram(SnowScore2GFX, sSnow->bufTextSprite);
    s.data = sSnow->bufTextSprite;
    s.size = 0x800;
    s.tag  = SNOW_SCORE2_GFXTAG;
    LoadSpriteSheet(&s);

    sSnow->score2SpriteId = CreateSprite(&sSpriteTemplate_SnowScore2, 120, 80, 0);
}

// ============================================================
// Player sprite
// ============================================================

static void CreatePlayerSprite(void)
{
    sSnow->playerSpriteId = CreateSprite(&sSpriteTemplate_Spheal,
                                         PLAYER_X, (s16)sSnow->playerY, 0);
}

// ============================================================
// Snowball creation
// ============================================================

static void CreateBigSnowball(u8 idx)
{
    u8  randY = (u8)((Random() % (PLAYER_MAX_Y - PLAYER_MIN_Y)) + PLAYER_MIN_Y);
    u16 spd   = (u16)(((u32)BIG_SNOW_SPEED_BASE * sSnow->speedScale) / SPEED_SCALE_BASE);
    if (spd < BIG_SNOW_SPEED_BASE) spd = BIG_SNOW_SPEED_BASE;

    sSnow->balls[idx].spriteId = CreateSprite(&sSpriteTemplate_BigSnow, SPAWN_X, randY, 1);
    sSnow->balls[idx].x        = SPAWN_X;
    sSnow->balls[idx].y        = randY;
    sSnow->balls[idx].speed256 = (u16)(spd * 256);
    sSnow->balls[idx].active   = TRUE;
    sSnow->balls[idx].isBig    = TRUE;
    sSnow->subX[idx]           = 0;

    sSnow->ballsThrown++;
    if (sSnow->speedScale < SPEED_SCALE_MAX)
        sSnow->speedScale += SPEED_SCALE_PER_BALL;
    // Turn score red if this ball beats the stored hi-score
    if (!sSnow->isNewHiScore && sSnow->ballsThrown > VarGet(VAR_SNOWBALL_HISCORE))
        sSnow->isNewHiScore = TRUE;
    DrawScore();
}

static void CreateSmallSnowball(u8 idx)
{
    u8  randY = (u8)((Random() % (PLAYER_MAX_Y - PLAYER_MIN_Y)) + PLAYER_MIN_Y);
    u16 spd   = (u16)(((u32)SMALL_SNOW_SPEED_BASE * sSnow->speedScale) / SPEED_SCALE_BASE);
    if (spd < SMALL_SNOW_SPEED_BASE) spd = SMALL_SNOW_SPEED_BASE;

    sSnow->balls[idx].spriteId = CreateSprite(&sSpriteTemplate_SmallSnow, SPAWN_X, randY, 1);
    sSnow->balls[idx].x        = SPAWN_X;
    sSnow->balls[idx].y        = randY;
    sSnow->balls[idx].speed256 = (u16)(spd * 256);
    sSnow->balls[idx].active   = TRUE;
    sSnow->balls[idx].isBig    = FALSE;
    sSnow->subX[idx]           = 0;

    sSnow->ballsThrown++;
    if (sSnow->speedScale < SPEED_SCALE_MAX)
        sSnow->speedScale += SPEED_SCALE_PER_BALL;
    // Turn score red if this ball beats the stored hi-score
    if (!sSnow->isNewHiScore && sSnow->ballsThrown > VarGet(VAR_SNOWBALL_HISCORE))
        sSnow->isNewHiScore = TRUE;
    DrawScore();
}

static void SpawnRandomSnowball(void)
{
    u8 i;
    for (i = 0; i < MAX_SNOWBALLS; i++)
    {
        if (!sSnow->balls[i].active)
        {
            if (Random() & 1)
                CreateBigSnowball(i);
            else
                CreateSmallSnowball(i);
            return;
        }
    }
}

// ============================================================
// Collision – AABB, player 16×16 vs snowball 16×16
// 4 px shrink each side for a little forgiveness
// ============================================================

static bool8 CheckCollision(u8 idx)
{
    s16 px = PLAYER_X;
    s16 py = sSnow->playerY;
    s16 bx = sSnow->balls[idx].x;
    s16 by = (s16)sSnow->balls[idx].y;

    if (bx + 12 < px + 4)  return FALSE;
    if (bx + 4  > px + 12) return FALSE;
    if (by + 12 < py + 4)  return FALSE;
    if (by + 4  > py + 12) return FALSE;
    return TRUE;
}

// ============================================================
// Show impact effect at player position
// ============================================================

static void ShowHitEffect(u8 idx)
{
    s16 x = PLAYER_X;
    s16 y = sSnow->playerY;

    if (sSnow->balls[idx].isBig)
        sSnow->hitSpriteId = CreateSprite(&sSpriteTemplate_BigSnowHit, x, y, 0);
    else
        sSnow->hitSpriteId = CreateSprite(&sSpriteTemplate_SmallSnowHit, x, y, 0);
}

// ============================================================
// Main game logic task
// ============================================================

static void SnowballMain(u8 taskId)
{
    u8  i;
    u16 moved;

    switch (sSnow->state)
    {
    // ----------------------------------------------------------
    // SNOWBALL_INIT – start screen, wait for A or START
    // ----------------------------------------------------------
    case SNOWBALL_INIT:
        if (gMain.newKeys & (A_BUTTON | START_BUTTON))
        {
            // Fade to black so LZ77UnCompVram doesn't flash during active scanlines
            BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
            sSnow->state = SNOWBALL_INIT_SWAP;
        }
        break;

    // ----------------------------------------------------------
    // SNOWBALL_INIT_SWAP – screen is black; safe to swap BG VRAM
    // ----------------------------------------------------------
    case SNOWBALL_INIT_SWAP:
        if (!gPaletteFade.active)
        {
            // Destroy start banner sprite
            DestroySpriteAndFreeResources(&gSprites[sSnow->startSpriteId]);

            // Swap BG1 to snowfield (VRAM write is safe: screen is black)
            SwapBgToSnowfield();

            // Reveal player and start spawning
            gSprites[sSnow->playerSpriteId].invisible = FALSE;
            sSnow->spawnTimer  = 60;
            sSnow->lastPlayerY = sSnow->playerY;
            sSnow->noMoveBalls = 0;

            // Music: switch to Pokemon Jump theme + Spheal cry
            PlayBGM(MUS_RG_POKE_JUMP);
            PlayCry_Normal(SPECIES_SPHEAL, 0);

            // Show score window now that game is starting
            PutWindowTilemap(sSnow->scoreWindowId);
            CopyBgTilemapBufferToVram(0);
            DrawScore();

            // Fade back in
            BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, RGB_BLACK);
            sSnow->state = SNOWBALL_PLAYING;
        }
        break;

    // ----------------------------------------------------------
    // SNOWBALL_PLAYING – active gameplay
    // ----------------------------------------------------------
    case SNOWBALL_PLAYING:

        // ── Player vertical movement ────────────────────────
        if (gMain.heldKeys & DPAD_UP)
        {
            sSnow->playerY -= PLAYER_SPEED;
            if (sSnow->playerY < PLAYER_MIN_Y)
                sSnow->playerY = PLAYER_MIN_Y;
        }
        if (gMain.heldKeys & DPAD_DOWN)
        {
            sSnow->playerY += PLAYER_SPEED;
            if (sSnow->playerY > PLAYER_MAX_Y)
                sSnow->playerY = PLAYER_MAX_Y;
        }
        gSprites[sSnow->playerSpriteId].y = sSnow->playerY;

        // ── Stale-player tracking (Task 4) ──────────────────
        // Reset counter whenever player moves ≥2px
        if (sSnow->playerY != sSnow->lastPlayerY)
            sSnow->noMoveBalls = 0;
        sSnow->lastPlayerY = sSnow->playerY;

        // ── Spawn timer ─────────────────────────────────────
        if (sSnow->spawnTimer == 0)
        {
            sSnow->noMoveBalls++;

            // Every 5 balls without moving → force a big ball at player's Y
            if (sSnow->noMoveBalls >= 5)
            {
                u8 idx;
                sSnow->noMoveBalls = 0;
                // Find a free slot
                for (idx = 0; idx < MAX_SNOWBALLS; idx++)
                    if (!sSnow->balls[idx].active) break;
                if (idx < MAX_SNOWBALLS)
                {
                    // Spawn big snowball directly at player's Y
                    u16 spd = (u16)(((u32)BIG_SNOW_SPEED_BASE * sSnow->speedScale) / SPEED_SCALE_BASE);
                    if (spd < BIG_SNOW_SPEED_BASE) spd = BIG_SNOW_SPEED_BASE;
                    sSnow->balls[idx].spriteId  = CreateSprite(&sSpriteTemplate_BigSnow, SPAWN_X, (u8)sSnow->playerY, 1);
                    sSnow->balls[idx].x         = SPAWN_X;
                    sSnow->balls[idx].y         = (u8)sSnow->playerY;
                    sSnow->balls[idx].speed256  = (u16)(spd * 256);
                    sSnow->balls[idx].active    = TRUE;
                    sSnow->balls[idx].isBig     = TRUE;
                    sSnow->subX[idx]            = 0;
                    sSnow->ballsThrown++;
                    if (sSnow->speedScale < SPEED_SCALE_MAX)
                        sSnow->speedScale += SPEED_SCALE_PER_BALL;
                    // Check new hi-score
                    if (!sSnow->isNewHiScore && sSnow->ballsThrown > VarGet(VAR_SNOWBALL_HISCORE))
                    {
                        sSnow->isNewHiScore = TRUE;
                    }
                    DrawScore();
                }
            }
            else
            {
                SpawnRandomSnowball();
            }
            sSnow->spawnTimer = (u16)(SPAWN_INTERVAL_MIN +
                                (Random() % (SPAWN_INTERVAL_MAX - SPAWN_INTERVAL_MIN)));
        }
        else
        {
            sSnow->spawnTimer--;
        }

        // ── Move snowballs + collision check ─────────────────
        for (i = 0; i < MAX_SNOWBALLS; i++)
        {
            if (!sSnow->balls[i].active)
                continue;

            sSnow->subX[i] += sSnow->balls[i].speed256;
            moved = sSnow->subX[i] >> 8;
            sSnow->subX[i] &= 0xFF;
            sSnow->balls[i].x -= (s16)moved;
            gSprites[sSnow->balls[i].spriteId].x = sSnow->balls[i].x;

            // Off-screen left → recycle slot
            if (sSnow->balls[i].x < -32)
            {
                DestroySprite(&gSprites[sSnow->balls[i].spriteId]);
                sSnow->balls[i].active = FALSE;
                continue;
            }

            // Collision with player
            if (CheckCollision(i))
            {
                DestroySprite(&gSprites[sSnow->balls[i].spriteId]);
                sSnow->balls[i].active = FALSE;

                ShowHitEffect(i);

                // ── Play Spheal cry + hit sound ─────────────
                PlayCry_Normal(SPECIES_SPHEAL, 0);
                PlaySE(SE_SUPER_EFFECTIVE);

                sSnow->delayTimer = HIT_SHOW_DELAY;
                sSnow->state      = SNOWBALL_HIT;
                break;
            }
        }
        break;

    // ----------------------------------------------------------
    // SNOWBALL_HIT – show impact sprite, then switch to gameover
    // ----------------------------------------------------------
    case SNOWBALL_HIT:
        if (sSnow->delayTimer > 0)
        {
            sSnow->delayTimer--;
        }
        else
        {
            // Remove impact sprite
            DestroySpriteAndFreeResources(&gSprites[sSnow->hitSpriteId]);

            // Save hi-score if beaten
            if (sSnow->ballsThrown > VarGet(VAR_SNOWBALL_HISCORE))
            {
                VarSet(VAR_SNOWBALL_HISCORE, sSnow->ballsThrown);
                // Show hi-score banner instead of regular gameover
                PlayFanfare(MUS_LEVEL_UP);
                CreateScore2Sprite();
                sSnow->delayTimer = GAMEOVER_SHOW_DELAY;
                sSnow->state      = SNOWBALL_HISCORE;
            }
            else
            {
                PlayFanfare(MUS_TOO_BAD);
                CreateGameOverSprite();
                sSnow->delayTimer = GAMEOVER_SHOW_DELAY;
                sSnow->state      = SNOWBALL_GAMEOVER;
            }
        }
        break;

    // ----------------------------------------------------------
    // SNOWBALL_HISCORE – new record! show score2 banner then exit
    // ----------------------------------------------------------
    case SNOWBALL_HISCORE:
        if (sSnow->delayTimer > 0)
        {
            sSnow->delayTimer--;
        }
        else
        {
            DestroySpriteAndFreeResources(&gSprites[sSnow->score2SpriteId]);
            StartExitSnowballGame();
        }
        break;

    // ----------------------------------------------------------
    // SNOWBALL_GAMEOVER – hold GAME OVER sprite then exit
    // ----------------------------------------------------------
    case SNOWBALL_GAMEOVER:
        if (sSnow->delayTimer > 0)
        {
            sSnow->delayTimer--;
        }
        else
        {
            DestroySpriteAndFreeResources(&gSprites[sSnow->gameoverSpriteId]);
            StartExitSnowballGame();
        }
        break;

    // ----------------------------------------------------------
    // SNOWBALL_EXIT – wait for fade then return to overworld
    // ----------------------------------------------------------
    case SNOWBALL_EXIT:
        ExitSnowballGame();
        break;
    }
}
