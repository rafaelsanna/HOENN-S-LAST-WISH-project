#pragma GCC diagnostic ignored "-Wmissing-braces"
#pragma GCC diagnostic ignored "-Wmaybe-uninitialized"
#include "snowball.h"

#include "global.h"
#include "malloc.h"
#include "bg.h"
#include "decompress.h"
#include "event_data.h"
#include "gpu_regs.h"
#include "graphics.h"
#include "main.h"
#include "menu.h"
#include "menu_helpers.h"
#include "event_object_movement.h"
#include "overworld.h"
#include "palette.h"
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

// ============================================================
// Decompression buffer (same pattern as flappybird)
// ============================================================

// Each sheet needs its own stable buffer so LoadSpriteSheet's DMA pointer
// doesn't get overwritten when the next sheet is decompressed.
// Sizes: BigSnow=0x200, BigSnowHit=0x800, SmallSnow=0x200, SmallSnowHit=0x200
static EWRAM_DATA u8 sDecompBuf_BigSnow    [0x200] = {0};
static EWRAM_DATA u8 sDecompBuf_BigSnowHit [0x800] = {0};
static EWRAM_DATA u8 sDecompBuf_SmallSnow  [0x200] = {0};
static EWRAM_DATA u8 sDecompBuf_SmallSnowHit[0x200] = {0};

// ============================================================
// Game states
// ============================================================

enum {
    SNOWBALL_PLAYING,
    SNOWBALL_HIT,
    SNOWBALL_START_EXIT,
    SNOWBALL_EXIT,
};

// ============================================================
// Tuneable constants
// ============================================================

#define MAX_SNOWBALLS        4
#define PLAYER_X             60      // Fixed horizontal position of player (moved right to avoid trees)
#define PLAYER_SPEED         2       // Pixels per frame, vertical movement
#define PLAYER_MIN_Y         8       // Highest the player can go
#define PLAYER_MAX_Y         136     // Lowest the player can go
#define SPAWN_X              248     // Snowballs spawn here (right edge)
#define SMALL_SNOW_SPEED_BASE  6     // Base speed for small snowballs (pixels/frame × 256)
#define BIG_SNOW_SPEED_BASE    5     // Base speed for big snowballs   (pixels/frame × 256)
#define SPAWN_INTERVAL_MIN   30      // Minimum frames between spawns
#define SPAWN_INTERVAL_MAX   90      // Maximum frames between spawns
#define GAMEOVER_DELAY       80      // Frames to show hit sprite before exiting

// Speed scaling: 256 = 1.00x, 259 = ~1.01x per ball thrown
// We store speed as fixed-point (speed256 / 256 = pixels per frame).
// Each ball thrown adds 1% → multiply by 257/256 each time.
// Cap multiplier at ~2x (512) to prevent runaway.
#define SPEED_SCALE_BASE     256
#define SPEED_SCALE_PER_BALL   3    // +3/256 ≈ +1.17% per ball (close enough to 1%)
#define SPEED_SCALE_MAX      512    // 2× max

// ============================================================
// Game state struct
// ============================================================

struct SnowballEntry {
    u8   spriteId;
    s16  x;
    u8   y;
    u16  speed256;   // fixed-point speed: actual px/frame = speed256 / 256
    bool8 active;
    bool8 isBig;
};

struct SnowballGame {
    u8   state;
    u8   playerSpriteId;
    s16  playerY;
    u8   hitSpriteId;
    u16  spawnTimer;
    u16  gameoverTimer;
    u16  ballsThrown;   // score: total snowballs spawned
    u16  speedScale;    // fixed-point multiplier (256 = 1.00×)
    u8   scoreWindowId;
    u16  subX[MAX_SNOWBALLS]; // sub-pixel accumulator for each ball
    struct SnowballEntry balls[MAX_SNOWBALLS];
};

static EWRAM_DATA struct SnowballGame *sSnow = NULL;

// ============================================================
// Background graphics  (snowfield.png / snowfield.bin)
// ============================================================

static const u32 Snowfield_BG_Img[]     = INCBIN_U32("graphics/snowball/snowfield.4bpp.lz");
static const u8  Snowfield_BG_Tilemap[] = INCBIN_U8 ("graphics/snowball/snowfield.bin.lz");
static const u16 Snowfield_BG_Pal[]     = INCBIN_U16("graphics/snowball/snowfield.gbapal");

// ============================================================
// Sprite graphics
// ============================================================

// bigsnowball  – 16x64 (4 frames × 16x16)
static const u32 BigSnowballGFX[]     = INCBIN_U32("graphics/snowball/bigsnowball.4bpp.lz");
static const u16 BigSnowballPAL[]     = INCBIN_U16("graphics/snowball/bigsnowball.gbapal");

// bigsnowballhit – 32x128 (4 frames × 32x32)
static const u32 BigSnowballHitGFX[]  = INCBIN_U32("graphics/snowball/bigsnowballhit.4bpp.lz");
static const u16 BigSnowballHitPAL[]  = INCBIN_U16("graphics/snowball/bigsnowballhit.gbapal");

// smallsnowball – 16x64 (4 frames × 16x16)
static const u32 SmallSnowballGFX[]    = INCBIN_U32("graphics/snowball/smallsnowball.4bpp.lz");
static const u16 SmallSnowballPAL[]    = INCBIN_U16("graphics/snowball/smallsnowball.gbapal");

// smallsnowballhit – 16x64 (4 frames × 16x16)
static const u32 SmallSnowballHitGFX[] = INCBIN_U32("graphics/snowball/smallsnowballhit.4bpp.lz");
static const u16 SmallSnowballHitPAL[] = INCBIN_U16("graphics/snowball/smallsnowballhit.gbapal");

// Spheal overworld sprite – already compiled into the ROM.
// overworld_frame(pic, w, h, n): each frame is w×h tiles = 32×32px for Spheal (4×4 tiles).
// We load frames 19-26 (GoWest rolling) into a dedicated EWRAM buffer.
// Frame size: 4×4 tiles × 32 bytes = 0x200 bytes. 8 rolling frames = 0x1000 bytes total.
extern const u32 gObjectEventPic_Spheal[];
extern const u16 gOverworldPalette_Spheal[]; 

// We'll load only the 8 west-roll frames (frames 19-26) into VRAM.
// Each frame offset in the raw pic = frame_index × 0x200
#define SPHEAL_FRAME_SIZE   0x200   // 16 tiles × 32 bytes
#define SPHEAL_ROLL_FRAMES  8
static EWRAM_DATA u32 sDecompBuf_Spheal[(SPHEAL_FRAME_SIZE * SPHEAL_ROLL_FRAMES) / 4] = {0};

// ============================================================
// GFX / PAL tags
// ============================================================

#define BIG_SNOW_GFXTAG         1
#define BIG_SNOW_HIT_GFXTAG     2
#define SMALL_SNOW_GFXTAG       3
#define SMALL_SNOW_HIT_GFXTAG   4
#define SPHEAL_GFXTAG           5

#define BIG_SNOW_PALTAG         1
#define BIG_SNOW_HIT_PALTAG     2
#define SMALL_SNOW_PALTAG       3
#define SMALL_SNOW_HIT_PALTAG   4
#define SPHEAL_PALTAG           5

// ============================================================
// Background layer definition
// ============================================================

#define SNOWBALL_BG 1

static const struct BgTemplate sSnowballBGTemplates[] = {
    {
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
// Sprite palette table (mirrors flappybird sSpritePalettes)
// ============================================================

// Spheal's palette is stored alongside gObjectEventPic_Spheal.
// We declare it here and load it with tag SPHEAL_PALTAG.

static const struct SpritePalette sSnowPalettes[] = {
    { .data = BigSnowballPAL,      .tag = BIG_SNOW_PALTAG      },
    { .data = BigSnowballHitPAL,   .tag = BIG_SNOW_HIT_PALTAG  },
    { .data = SmallSnowballPAL,    .tag = SMALL_SNOW_PALTAG    },
    { .data = SmallSnowballHitPAL, .tag = SMALL_SNOW_HIT_PALTAG},
    { .data = gOverworldPalette_Spheal, .tag = SPHEAL_PALTAG   },
    {},
};

// ============================================================
// OAM data
// ============================================================

// 16x16 – rolling snowballs (big + small) and small hit
static const struct OamData sOam_16x16 = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .shape      = SPRITE_SHAPE(16x16),
    .size       = SPRITE_SIZE(16x16),
    .priority   = 1,
};

// 32x32 – big snowball hit sprite
static const struct OamData sOam_32x32 = {
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .shape      = SPRITE_SHAPE(32x32),
    .size       = SPRITE_SIZE(32x32),
    .priority   = 0,
};

// 32x32 – Spheal player sprite (4×4 tiles)
static const struct OamData sOam_Spheal =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .mosaic     = FALSE,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(32x32),
    .size       = SPRITE_SIZE(32x32),
    .priority   = 1,
};

// ============================================================
// Animation tables
// ============================================================

// 4-frame rolling loop for 16x16 sprites.
// Each 16x16 frame = 4 tiles, so tile offsets: 0, 4, 8, 12
static const union AnimCmd sAnim_Roll16[] = {
    ANIMCMD_FRAME(0,  4),
    ANIMCMD_FRAME(4,  4),
    ANIMCMD_FRAME(8,  4),
    ANIMCMD_FRAME(12, 4),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_Roll16[] = { sAnim_Roll16 };

// 4-frame one-shot hit for 32x32 sprites.
// Each 32x32 frame = 16 tiles, so offsets: 0, 16, 32, 48
static const union AnimCmd sAnim_Hit32[] = {
    ANIMCMD_FRAME(0,  5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(32, 5),
    ANIMCMD_FRAME(48, 5),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Hit32[] = { sAnim_Hit32 };

// 4-frame one-shot hit for 16x16 sprites.
static const union AnimCmd sAnim_Hit16[] = {
    ANIMCMD_FRAME(0,  5),
    ANIMCMD_FRAME(4,  5),
    ANIMCMD_FRAME(8,  5),
    ANIMCMD_FRAME(12, 5),
    ANIMCMD_END,
};
static const union AnimCmd *const sAnims_Hit16[] = { sAnim_Hit16 };

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

// Spheal rolling animation – 8 west-roll frames loaded sequentially (offsets 0-7 in our buffer)
// Each ANIMCMD_FRAME offset = frame index within the loaded sheet (0-7)
static const union AnimCmd sAnim_SpealRoll[] = {
    ANIMCMD_FRAME(0,  2),
    ANIMCMD_FRAME(16, 2),
    ANIMCMD_FRAME(32, 2),
    ANIMCMD_FRAME(48, 2),
    ANIMCMD_FRAME(64, 2),
    ANIMCMD_FRAME(80, 2),
    ANIMCMD_FRAME(96, 2),
    ANIMCMD_FRAME(112, 2),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_SpealRoll[] = { sAnim_SpealRoll };

static const struct SpriteTemplate sSpriteTemplate_Spheal = {
    .tileTag     = SPHEAL_GFXTAG,
    .paletteTag  = SPHEAL_PALTAG,
    .oam         = &sOam_Spheal,
    .anims       = sAnims_SpealRoll,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

// ============================================================
// Score window
// ============================================================

#define SCORE_WIN_LEFT    1
#define SCORE_WIN_TOP     0
#define SCORE_WIN_WIDTH   8
#define SCORE_WIN_HEIGHT  2

static const struct WindowTemplate sScoreWindowTemplate = {
    .bg          = 0,   // BG 0 hosts the text window
    .tilemapLeft  = SCORE_WIN_LEFT,
    .tilemapTop   = SCORE_WIN_TOP,
    .width        = SCORE_WIN_WIDTH,
    .height       = SCORE_WIN_HEIGHT,
    .paletteNum   = 15,
    .baseBlock    = 0x200,
};

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
static void CreatePlayerSprite(void);
static void CreateBigSnowball(u8 idx);
static void CreateSmallSnowball(u8 idx);
static void SpawnRandomSnowball(void);
static bool8 CheckCollision(u8 idx);
static void ShowHitEffect(u8 idx);

// ============================================================
// Entry point – called from NPC script
// ============================================================

void StartSnowballGame(void)
{
    sSnow = AllocZeroed(sizeof(struct SnowballGame));
    CreateTask(FadeToSnowballScreen, 0);
}

// ============================================================
// Fade out field → init minigame (identical pattern to flappybird)
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
// Callbacks  (identical structure to flappybird)
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

static void ExitSnowballGame(void)
{
    if (!gPaletteFade.active)
    {
        Overworld_ResetMapMusic();
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        FREE_AND_SET_NULL(sSnow);
    }
}

static void StartExitSnowballGame(void)
{
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
    sSnow->state = SNOWBALL_EXIT;
}

// ============================================================
// Sheet loading helper (mirrors flappybird Create* functions)
// ============================================================

// ============================================================
// Sheet loading – each sheet has its own EWRAM buffer so the
// DMA source pointer stays valid after the next sheet loads.
// ============================================================

static void LoadAllSnowSheets(void)
{
    struct SpriteSheet s;

    LZ77UnCompWram(BigSnowballGFX,     sDecompBuf_BigSnow);
    s.data = sDecompBuf_BigSnow;
    s.size = 0x200;
    s.tag  = BIG_SNOW_GFXTAG;
    LoadSpriteSheet(&s);

    LZ77UnCompWram(BigSnowballHitGFX,  sDecompBuf_BigSnowHit);
    s.data = sDecompBuf_BigSnowHit;
    s.size = 0x800;
    s.tag  = BIG_SNOW_HIT_GFXTAG;
    LoadSpriteSheet(&s);

    LZ77UnCompWram(SmallSnowballGFX,   sDecompBuf_SmallSnow);
    s.data = sDecompBuf_SmallSnow;
    s.size = 0x200;
    s.tag  = SMALL_SNOW_GFXTAG;
    LoadSpriteSheet(&s);

    LZ77UnCompWram(SmallSnowballHitGFX, sDecompBuf_SmallSnowHit);
    s.data = sDecompBuf_SmallSnowHit;
    s.size = 0x200;
    s.tag  = SMALL_SNOW_HIT_GFXTAG;
    LoadSpriteSheet(&s);

    // Spheal: copy 8 west-roll frames (frames 19-26) from ROM into EWRAM buffer.
    // gObjectEventPic_Spheal is uncompressed in ROM; each frame = SPHEAL_FRAME_SIZE bytes.
    {
        const u32 *src = gObjectEventPic_Spheal + (19 * SPHEAL_FRAME_SIZE / 4);
        CpuCopy32(src, sDecompBuf_Spheal, SPHEAL_FRAME_SIZE * SPHEAL_ROLL_FRAMES);
        s.data = sDecompBuf_Spheal;
        s.size = SPHEAL_FRAME_SIZE * SPHEAL_ROLL_FRAMES;
        s.tag  = SPHEAL_GFXTAG;
        LoadSpriteSheet(&s);
    }
}

// ============================================================
// Player sprite – Spheal rolling west
// ============================================================

static void CreatePlayerSprite(void)
{
    sSnow->playerSpriteId = CreateSprite(&sSpriteTemplate_Spheal,
                                         PLAYER_X, (s16)sSnow->playerY, 0);
}

// ============================================================
// Snowball creation (one slot from sSnow->balls[])
// ============================================================

static void CreateBigSnowball(u8 idx)
{
    u8 randY = (u8)((Random() % (PLAYER_MAX_Y - PLAYER_MIN_Y)) + PLAYER_MIN_Y);
    u16 spd  = (u16)(((u32)BIG_SNOW_SPEED_BASE * sSnow->speedScale) / SPEED_SCALE_BASE);
    if (spd < BIG_SNOW_SPEED_BASE) spd = BIG_SNOW_SPEED_BASE;

    sSnow->balls[idx].spriteId  = CreateSprite(&sSpriteTemplate_BigSnow, SPAWN_X, randY, 1);
    sSnow->balls[idx].x         = SPAWN_X;
    sSnow->balls[idx].y         = randY;
    sSnow->balls[idx].speed256  = (u16)(spd * 256);
    sSnow->balls[idx].active    = TRUE;
    sSnow->balls[idx].isBig     = TRUE;
    sSnow->subX[idx]            = 0;

    sSnow->ballsThrown++;
    if (sSnow->speedScale < SPEED_SCALE_MAX)
        sSnow->speedScale += SPEED_SCALE_PER_BALL;
    DrawScore();
}

static void CreateSmallSnowball(u8 idx)
{
    u8 randY = (u8)((Random() % (PLAYER_MAX_Y - PLAYER_MIN_Y)) + PLAYER_MIN_Y);
    u16 spd  = (u16)(((u32)SMALL_SNOW_SPEED_BASE * sSnow->speedScale) / SPEED_SCALE_BASE);
    if (spd < SMALL_SNOW_SPEED_BASE) spd = SMALL_SNOW_SPEED_BASE;

    sSnow->balls[idx].spriteId  = CreateSprite(&sSpriteTemplate_SmallSnow, SPAWN_X, randY, 1);
    sSnow->balls[idx].x         = SPAWN_X;
    sSnow->balls[idx].y         = randY;
    sSnow->balls[idx].speed256  = (u16)(spd * 256);
    sSnow->balls[idx].active    = TRUE;
    sSnow->balls[idx].isBig     = FALSE;
    sSnow->subX[idx]            = 0;

    sSnow->ballsThrown++;
    if (sSnow->speedScale < SPEED_SCALE_MAX)
        sSnow->speedScale += SPEED_SCALE_PER_BALL;
    DrawScore();
}

// Find a free slot and spawn a random snowball type
static void SpawnRandomSnowball(void)
{
    u8 i;

    for (i = 0; i < MAX_SNOWBALLS; i++)
    {
        if (!sSnow->balls[i].active)
        {
            if (Random() % 2 == 0)
            {
                CreateBigSnowball(i);
            }
            else
            {
                CreateSmallSnowball(i);
            }

            return;
        }
    }

    // All slots full – wait for next timer tick
}

// ============================================================
// Collision  – simple AABB, player 16×16 vs snowball 16×16
// ============================================================

static bool8 CheckCollision(u8 idx)
{
    s16 px = PLAYER_X;
    s16 py = sSnow->playerY;
    s16 bx = sSnow->balls[idx].x;
    s16 by = (s16)sSnow->balls[idx].y;

    // Shrink hitboxes by 4px each side for a little forgiveness
    if (bx + 12 < px + 4) return FALSE;
    if (bx + 4  > px + 12) return FALSE;
    if (by + 12 < py + 4) return FALSE;
    if (by + 4  > py + 12) return FALSE;
    return TRUE;
}

// ============================================================
// Show hit effect sprite at the player's position
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
// Score display
// ============================================================

static void DrawScore(void)
{
    // "NNN" – show balls thrown count
    u8 numStr[8];
    u8 label[] = _("Bolas:");
    u8 *p;

    ConvertIntToDecimalStringN(numStr, sSnow->ballsThrown, STR_CONV_MODE_LEFT_ALIGN, 4);

    FillWindowPixelBuffer(sSnow->scoreWindowId, PIXEL_FILL(0));
    // Print label on first row, number on second row
    AddTextPrinterParameterized3(sSnow->scoreWindowId, FONT_SMALL, 2, 1, NULL, 0, label);
    p = numStr;
    AddTextPrinterParameterized3(sSnow->scoreWindowId, FONT_SMALL, 2, 9, NULL, 0, p);
    CopyWindowToVram(sSnow->scoreWindowId, COPYWIN_FULL);
}

// ============================================================
// Screen initialisation (mirrors InitFlappyBirdScreen exactly)
// ============================================================

static void InitSnowballScreen(void)
{
    u8 i;

    SetVBlankCallback(NULL);
    ResetAllBgsCoordinates();
    ResetVramOamAndBgCntRegs();
    ResetBgsAndClearDma3BusyFlags(0);
    ResetTempTileDataBuffers();

    InitBgsFromTemplates(0, sSnowballBGTemplates, ARRAY_COUNT(sSnowballBGTemplates));
    SetBgTilemapBuffer(SNOWBALL_BG, AllocZeroed(BG_SCREEN_SIZE));

    ResetPaletteFade();

    // Load snowfield background
    DecompressAndLoadBgGfxUsingHeap(SNOWBALL_BG, Snowfield_BG_Img, 0x2000, 0, 0);
    CopyToBgTilemapBuffer(SNOWBALL_BG, Snowfield_BG_Tilemap, 0, 0);
    LoadPalette(Snowfield_BG_Pal, 0, sizeof(Snowfield_BG_Pal));
    CopyBgTilemapBufferToVram(SNOWBALL_BG);

    // Sprites
    ResetSpriteData();
    FreeAllSpritePalettes();
    LoadSpritePalettes(sSnowPalettes);

    // Pre-load all snowball sprite sheets into VRAM.
    // Each sheet uses its own EWRAM buffer to avoid DMA source corruption.
    LoadAllSnowSheets();

    // Init game state
    for (i = 0; i < MAX_SNOWBALLS; i++)
    {
        sSnow->balls[i].active = FALSE;
        sSnow->subX[i]         = 0;
    }

    sSnow->playerY       = 80;
    sSnow->spawnTimer    = 60;
    sSnow->gameoverTimer = 0;
    sSnow->state         = SNOWBALL_PLAYING;
    sSnow->ballsThrown   = 0;
    sSnow->speedScale    = SPEED_SCALE_BASE;

    // Score text window on BG0
    InitWindows(NULL);
    DeactivateAllTextPrinters();
    sSnow->scoreWindowId = AddWindow(&sScoreWindowTemplate);
    DrawScore();
    ShowBg(0);  // BG0 for text

    CreatePlayerSprite();

    // GPU: mode 0, sprites on, BG0 (text) + BG1 (snowfield) on
    SetGpuReg(REG_OFFSET_DISPCNT,
              DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON
              | DISPCNT_BG0_ON | DISPCNT_BG1_ON);

    ShowBg(SNOWBALL_BG);

    BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, RGB_BLACK);
    SetVBlankCallback(SnowballVBlankCallback);
    SetMainCallback2(SnowballMainCallback);
    CreateTask(SnowballMain, 1);
}

// ============================================================
// Main game logic task
// ============================================================

static void SnowballMain(u8 taskId)
{
    u8 i;
    u16 moved;

    switch (sSnow->state)
    {
    // ----------------------------------------------------------
    case SNOWBALL_PLAYING:
    // ----------------------------------------------------------

        // --- Player vertical movement ---
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

        // --- Spawn timer ---
        if (sSnow->spawnTimer == 0)
        {
            SpawnRandomSnowball();
            sSnow->spawnTimer = (u16)(SPAWN_INTERVAL_MIN +
                                (Random() % (SPAWN_INTERVAL_MAX - SPAWN_INTERVAL_MIN)));
        }
        else
        {
            sSnow->spawnTimer--;
        }

        // --- Move snowballs & check collisions ---
        for (i = 0; i < MAX_SNOWBALLS; i++)
        {
            if (!sSnow->balls[i].active)
                continue;

            // Fixed-point movement: accumulate sub-pixel remainder
            sSnow->subX[i] += sSnow->balls[i].speed256;
            moved = sSnow->subX[i] >> 8;    // whole pixels this frame
            sSnow->subX[i] &= 0xFF;         // keep remainder
            sSnow->balls[i].x -= (s16)moved;
            gSprites[sSnow->balls[i].spriteId].x = sSnow->balls[i].x;

            // Off-screen on the left → recycle slot
            if (sSnow->balls[i].x < -32)
            {
                DestroySprite(&gSprites[sSnow->balls[i].spriteId]);
                sSnow->balls[i].active = FALSE;
                continue;
            }

            // Collision with player
            if (CheckCollision(i))
            {
                // Destroy the snowball that hit
                DestroySprite(&gSprites[sSnow->balls[i].spriteId]);
                sSnow->balls[i].active = FALSE;

                // Show impact sprite
                ShowHitEffect(i);

                PlaySE(SE_FAINT);
                sSnow->gameoverTimer = GAMEOVER_DELAY;
                sSnow->state         = SNOWBALL_HIT;
                break;  // stop processing balls – game is over
            }
        }
        break;

    // ----------------------------------------------------------
    case SNOWBALL_HIT:
    // ----------------------------------------------------------
        if (sSnow->gameoverTimer > 0)
        {
            sSnow->gameoverTimer--;
        }
        else
        {
            // Destroy hit sprite then fade out
            DestroySprite(&gSprites[sSnow->hitSpriteId]);
            StartExitSnowballGame();
        }
        break;

    // ----------------------------------------------------------
    case SNOWBALL_EXIT:
    // ----------------------------------------------------------
        ExitSnowballGame();
        break;
    }
}
