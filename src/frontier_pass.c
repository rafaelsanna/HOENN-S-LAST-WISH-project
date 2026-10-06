#include "global.h"
#include "comfy_anim.h"
#include "gpu_regs.h"
#include "main.h"
#include "trainer_card.h"
#include "battle_anim.h"
#include "event_data.h"
#include "recorded_battle.h"
#include "malloc.h"
#include "sprite.h"
#include "scanline_effect.h"
#include "text_window.h"
#include "task.h"
#include "graphics.h"
#include "strings.h"
#include "frontier_pass.h"
#include "international_string_util.h"
#include "palette.h"
#include "window.h"
#include "decompress.h"
#include "menu_helpers.h"
#include "menu.h"
#include "bg.h"
#include "sound.h"
#include "string_util.h"
#include "battle_pyramid.h"
#include "achievements.h"
#include "overworld.h"
#include "math_util.h"
#include "constants/battle_frontier.h"
#include "constants/rgb.h"
#include "constants/region_map_sections.h"
#include "constants/songs.h"
#include "constants/flags.h"
#include "hlw_media_save.h"

extern const struct OamData gOamData_AffineOff_ObjNormal_8x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x8;

// gFrontierPassBg_Pal has 8*16 colors, but they attempt to load 13*16 colors.
// As a result it goes out of bounds and interprets 160 bytes of whatever comes
// after gFrontierPassBg_Pal (by default, gFrontierPassBg_Gfx) as a palette.
// Nothing uses these colors (except the Trainer Card, which correctly writes them)
// so in practice this bug has no effect on the game.
#ifdef BUGFIX
#define NUM_BG_PAL_SLOTS 8
#else
#define NUM_BG_PAL_SLOTS 13
#endif

// Keep the 8bpp minimap in palette memory starting at index 0. The two new
// 4bpp layers use later palette banks so the minimap cannot overwrite them.
#define FRONTIER_PASS_BGNEW_PALETTE       2
#define FRONTIER_PASS_MINICARD_PALETTE    3
#define FRONTIER_PASS_SCROLL_PALETTE      5
#define FRONTIER_PASS_MINICARD_TILE_BASE  0x100
// The tilemap assembles the 128x48 source tiles into a nine-row card;
// the final two rows contain the lower border and mini-card text.
#define FRONTIER_PASS_MINICARD_TILE_HEIGHT 9
#define FRONTIER_PASS_SCROLL_SOURCE_WIDTH  32
#define FRONTIER_PASS_SCROLL_SOURCE_HEIGHT 24
#define FRONTIER_PASS_SCROLL_MAP_WIDTH     32
#define FRONTIER_PASS_SCROLL_MAP_HEIGHT    32
#define FRONTIER_PASS_SCROLL_X_PERIOD      (FRONTIER_PASS_SCROLL_SOURCE_WIDTH * 8)
#define FRONTIER_PASS_SCROLL_Y_PERIOD      (FRONTIER_PASS_SCROLL_SOURCE_HEIGHT * 8)
#define FRONTIER_PASS_SCROLL_SPEED_X       32
#define FRONTIER_PASS_SCROLL_SPEED_Y       48
#define FRONTIER_PASS_MINIMAP_TILE_BASE    0
#define FRONTIER_PASS_MINICARD_TILE_X      16
#define FRONTIER_PASS_MINICARD_TILE_Y      9
#define FRONTIER_PASS_MINIMAP_X             184
#define FRONTIER_PASS_MINIMAP_Y             24
#define FRONTIER_PASS_TROPHY_X              160
#define FRONTIER_PASS_TROPHY_Y              48
#define FRONTIER_PASS_CARD_X                (FRONTIER_PASS_MINICARD_TILE_X * 8)
#define FRONTIER_PASS_CARD_Y                (FRONTIER_PASS_MINICARD_TILE_Y * 8)
#define FRONTIER_PASS_CARD_HIGHLIGHT_COUNT  8
// Sprite coordinates are the center of the 32x32 OBJ. These centers match
// the empty portrait slot assembled by minicard.bin.
#define FRONTIER_PASS_MINICARD_PIC_X       (FRONTIER_PASS_MINICARD_TILE_X * 8 + 75)
#define FRONTIER_PASS_MINICARD_PIC_Y       (FRONTIER_PASS_MINICARD_TILE_Y * 8 + 22)
#define FRONTIER_PASS_MINIMAP_OFFSET_X     3
#define FRONTIER_PASS_MINIMAP_OFFSET_Y     (-3)
#define FRONTIER_PASS_PROFILE_TEXT_X       7
#define FRONTIER_PASS_PROFILE_DEFAULT_OFFSET   HLW_MEDIA_RESERVED_OFFSET
#define FRONTIER_PASS_PROFILE_DEFAULT_FRONTIER 0
#define FRONTIER_PASS_PROFILE_DEFAULT_CARD     1

// All windows displayed in the frontier pass.
enum
{
    WINDOW_HEADER,
    WINDOW_PROFILE,
    WINDOW_SYMBOLS,
    WINDOW_CARD_LABEL,
    WINDOW_MAP_LABEL,
    WINDOW_DESCRIPTION,
    WINDOW_DUMMY,
    WINDOW_COUNT
};

// Windows displayed in the facilities map view.
enum
{
    MAP_WINDOW_UNUSED, // Overlaps the "Battle Frontier" title area of the map
    MAP_WINDOW_NAME,
    MAP_WINDOW_DESCRIPTION,
    MAP_WINDOW_COUNT
};

enum
{
    CURSOR_AREA_NOTHING,
    CURSOR_AREA_MAP,
    CURSOR_AREA_CARD,
    CURSOR_AREA_ACHIEVEMENTS,
    CURSOR_AREA_RECORD,
    CURSOR_AREA_CANCEL,
    CURSOR_AREA_POINTS,
    CURSOR_AREA_EARNED_SYMBOLS, // The window containing the symbols
    CURSOR_AREA_SYMBOL_TOWER,
    CURSOR_AREA_SYMBOL_DOME,
    CURSOR_AREA_SYMBOL_PALACE,
    CURSOR_AREA_SYMBOL_ARENA,
    CURSOR_AREA_SYMBOL_FACTORY,
    CURSOR_AREA_SYMBOL_PIKE,
    CURSOR_AREA_SYMBOL_PYRAMID,
    CURSOR_AREA_COUNT
};

// Start of symbol cursor areas
#define CURSOR_AREA_SYMBOL CURSOR_AREA_SYMBOL_TOWER

enum {
    MAP_INDICATOR_RECTANGLE,
    MAP_INDICATOR_SQUARE,
};

enum {
    TAG_CURSOR,
    TAG_MAP_INDICATOR,
    TAG_MEDAL_SILVER,
    TAG_MEDAL_GOLD,
    TAG_HEAD_MALE,
    TAG_HEAD_FEMALE,
    TAG_FIELD_MUGSHOT,
    TAG_MINICARD_PLAYER_PIC,
    TAG_TROPHY,
    TAG_FRONTIER_PASS_HIGHLIGHT_PALETTE,
    TAG_CARD_HIGHLIGHT_TOP_LEFT,
    TAG_CARD_HIGHLIGHT_TOP_MIDDLE,
    TAG_CARD_HIGHLIGHT_TOP_RIGHT_TOP,
    TAG_CARD_HIGHLIGHT_TOP_RIGHT_BOTTOM,
    TAG_CARD_HIGHLIGHT_BOTTOM_LEFT,
    TAG_CARD_HIGHLIGHT_BOTTOM_MIDDLE,
    TAG_CARD_HIGHLIGHT_BOTTOM_RIGHT,
    TAG_CARD_HIGHLIGHT_BOTTOM_EDGE,
};

// Error return codes. Never read
enum {
    SUCCESS,
    ERR_ALREADY_DONE,
    ERR_ALLOC_FAILED,
};

struct FrontierPassData
{
    void (*callback)(void);
    u16 state;
    u16 battlePoints;
    s16 cursorX;
    s16 cursorY;
    u8 cursorArea;
    u8 previousCursorArea;
    bool8 hasBattleRecord:1;
    u8 areaToShow:3;
    u8 trainerStars:4;
    u32 bgScrollX;
    u32 bgScrollY;
    u8 facilitySymbols[NUM_FRONTIER_FACILITIES]; // 0: no symbol, 1: silver, 2: gold
};

struct FrontierPassGfx
{
    struct Sprite *cursorSprite;
    struct Sprite *mugshotSprite;
    struct Sprite *miniCardPlayerPicSprite;
    struct Sprite *trophySprite;
    struct Sprite *cardHighlightSprites[FRONTIER_PASS_CARD_HIGHLIGHT_COUNT];
    struct Sprite *symbolSprites[NUM_FRONTIER_FACILITIES];
    u8 tilemapBuff1[BG_SCREEN_SIZE * 2];
    u8 tilemapBuff2[BG_SCREEN_SIZE * 2];
    u8 tilemapBuff4[BG_SCREEN_SIZE * 2];
};

struct FrontierPassSaved
{
    void (*callback)(void);
    s16 cursorX;
    s16 cursorY;
};

struct FrontierMapData
{
    void (*callback)(void);
    struct Sprite *cursorSprite;
    struct Sprite *playerHeadSprite;
    struct Sprite *mapIndicatorSprite;
    u8 cursorPos;
    u8 unused;
    u8 tilemapBuff0[BG_SCREEN_SIZE * 2];
    u8 tilemapBuff1[BG_SCREEN_SIZE * 2];
    u8 tilemapBuff2[BG_SCREEN_SIZE * 2];
};

static EWRAM_DATA struct FrontierPassData *sPassData = NULL;
static EWRAM_DATA struct FrontierPassGfx *sPassGfx = NULL;
static EWRAM_DATA struct FrontierMapData *sMapData = NULL;
static EWRAM_DATA struct FrontierPassSaved sSavedPassData = {0};

static u32 AllocateFrontierPassData(void (*callback)(void));
static void ShowFrontierMap(void (*callback)(void));
static void CB2_InitFrontierPass(void);
static void DrawFrontierPassBg(void);
static void FreeCursorAndSymbolSprites(void);
static void LoadCursorAndSymbolSprites(void);
static u32 FreeFrontierPassData(void);
static bool32 InitFrontierPass(void);
static bool32 HideFrontierPass(void);
static void Task_HandleFrontierPassInput(u8);
static void Task_PassAreaZoom(u8);
static u8 GetCursorAreaFromCoords(s16, s16);
static void UpdateAreaHighlight(u8, u8);
static void PrintAreaDescription(u8);
static void LoadFrontierPassMainGraphics(void);
static void LoadFrontierPassMinimap(bool8);
static void LoadFrontierPassScrollingBackground(void);
static void UpdateFrontierPassScrollingBackground(void);
static void LoadFrontierPassThemePalettes(void);
static void SpriteCB_PlayerHead(struct Sprite *);

static const u16 sMaleHead_Pal[]                 = INCBIN_U16("graphics/frontier_pass/map_heads.gbapal");
// map_heads.png is the indexed two-frame sheet: male on top, female below.
// Both frames must use that same palette; the old standalone female palette
// no longer matches the indexed art.
static const u16 sFemaleHead_Pal[]               = INCBIN_U16("graphics/frontier_pass/map_heads.gbapal");
static const u32 sMapScreen_Gfx[]                = INCBIN_U32("graphics/frontier_pass/map_screen.4bpp.smol");
static const u32 sCursor_Gfx[]                   = INCBIN_U32("graphics/frontier_pass/cursor.4bpp.smol");
static const u32 sHeads_Gfx[]                    = INCBIN_U32("graphics/frontier_pass/map_heads.4bpp.smol");
static const u32 sMapCursor_Gfx[]                = INCBIN_U32("graphics/frontier_pass/map_cursor.4bpp.smol");
static const u32 sMapScreen_Tilemap[]            = INCBIN_U32("graphics/frontier_pass/map_screen.bin.smolTM");
static const u32 sFrontierPassMugshotMale_Gfx[]   = INCBIN_U32("graphics/field_mugshots/zenno/normal.4bpp.lz");
static const u32 sFrontierPassMugshotFemale_Gfx[] = INCBIN_U32("graphics/field_mugshots/zinnia/normal.4bpp.lz");
static const u16 sFrontierPassMugshotMale_Pal[]   = INCBIN_U16("graphics/field_mugshots/zenno/normal.gbapal");
static const u16 sFrontierPassMugshotFemale_Pal[] = INCBIN_U16("graphics/field_mugshots/zinnia/normal.gbapal");

static const u8 sBgNew_Gfx[]                     = INCBIN_U8("graphics/frontier_pass/bgnew.4bpp");
static const u16 sBgNew_Pal[]                    = INCBIN_U16("graphics/frontier_pass/bgnew.gbapal");
static const u16 sBgNew_Tilemap[]                = INCBIN_U16("graphics/frontier_pass/bgnew.bin");
static const u8 sMiniCard_Gfx[]                   = INCBIN_U8("graphics/frontier_pass/minicard.4bpp");
static const u16 sMiniCard_Pal[]                  = INCBIN_U16("graphics/frontier_pass/minicard.gbapal");
static const u16 sMiniCard_Tilemap[]              = INCBIN_U16("graphics/frontier_pass/minicard.bin");
static const u8 sMiniCardMalePic_Gfx[]            = INCBIN_U8("graphics/frontier_pass/zennopic.4bpp");
static const u8 sMiniCardFemalePic_Gfx[]          = INCBIN_U8("graphics/frontier_pass/zinniapic.4bpp");
static const u16 sMiniCardMalePic_Pal[]            = INCBIN_U16("graphics/frontier_pass/zennopic.gbapal");
static const u16 sMiniCardFemalePic_Pal[]          = INCBIN_U16("graphics/frontier_pass/zinniapic.gbapal");
static const u8 sMinimap_Gfx[]                    = INCBIN_U8("graphics/frontier_pass/minimap.8bpp");
static const u16 sMinimap_Pal[]                   = INCBIN_U16("graphics/frontier_pass/minimap.gbapal");
static const u8 sTrophy_Gfx[]                     = INCBIN_U8("graphics/frontier_pass/trophy.4bpp");
static const u16 sTrophy_Pal[]                    = INCBIN_U16("graphics/frontier_pass/trophy.gbapal");
static const u32 sFrontierPassScrolling_Gfx[]     = INCBIN_U32("graphics/trainer_card/bgscroll.4bpp");
static const u16 sFrontierPassScrolling_Pal[]     = INCBIN_U16("graphics/trainer_card/bgscroll.gbapal");
static const u16 sFrontierPassScrolling_Tilemap[] = INCBIN_U16("graphics/trainer_card/bgscroll.bin");

static const u16 sMinimap_Tilemap[] =
{
    0, 1, 2, 3, 4, 5,
    6, 7, 8, 9, 10, 11,
    12, 13, 14, 15, 16, 17,
    18, 19, 20, 21, 22, 23,
    24, 25, 26, 27, 28, 29,
    30, 31, 32, 33, 34, 35,
};

// minimap.png contains the normal map in the first 48x48 frame and the
// selected/highlighted map in the second 48x48 frame.
static const u16 sMinimapHighlight_Tilemap[] =
{
    36, 37, 38, 39, 40, 41,
    42, 43, 44, 45, 46, 47,
    48, 49, 50, 51, 52, 53,
    54, 55, 56, 57, 58, 59,
    60, 61, 62, 63, 64, 65,
    66, 67, 68, 69, 70, 71,
};

static const struct BgTemplate sPassBgTemplates[] =
{
    {
        .bg = 0,
        .charBaseIndex = 2,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = 1,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0
    },
    {
        .bg = 2,
        .charBaseIndex = 1,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 1,
        .priority = 0,
        .baseTile = 0
    },
    {
        .bg = 3,
        .charBaseIndex = 3,
        .mapBaseIndex = 28,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 3,
        .baseTile = 0
    },
};

static const struct BgTemplate sMapBgTemplates[] =
{
    {
        .bg = 0,
        .charBaseIndex = 2,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    },
    {
        .bg = 1,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = 2,
        .charBaseIndex = 0,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0
    },
};

static const struct WindowTemplate sPassWindowTemplates[WINDOW_COUNT] =
{
    [WINDOW_HEADER] = {
        .bg = 0,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 28,
        .height = 2,
        .paletteNum = 15,
        .baseBlock = 0x1,
    },
    [WINDOW_PROFILE] = {
        .bg = 0,
        .tilemapLeft = 6,
        .tilemapTop = 4,
        .width = 8,
        .height = 5,
        .paletteNum = 15,
        .baseBlock = 0x39,
    },
    [WINDOW_SYMBOLS] = {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = 13,
        .height = 3,
        .paletteNum = 15,
        .baseBlock = 0x61,
    },
    [WINDOW_CARD_LABEL] = {
        .bg = 0,
        .tilemapLeft = FRONTIER_PASS_MINICARD_TILE_X,
        .tilemapTop = 7,
        .width = 7,
        .height = 2,
        .paletteNum = 15,
        .baseBlock = 0x88,
    },
    [WINDOW_MAP_LABEL] = {
        .bg = 0,
        .tilemapLeft = 22,
        .tilemapTop = 7,
        .width = 7,
        .height = 2,
        .paletteNum = 15,
        .baseBlock = 0x96,
    },
    [WINDOW_DESCRIPTION] = {
        .bg = 0,
        .tilemapLeft = 0,
        .tilemapTop = 18,
        .width = 30,
        .height = 2,
        .paletteNum = 15,
        .baseBlock = 0xA4,
    },
    DUMMY_WIN_TEMPLATE
};

static const struct WindowTemplate sMapWindowTemplates[] =
{
    [MAP_WINDOW_UNUSED] = {
        .bg = 0,
        .tilemapLeft = 0,
        .tilemapTop = 1,
        .width = 15,
        .height = 5,
        .paletteNum = 15,
        .baseBlock = 0x1,
    },
    [MAP_WINDOW_NAME] = {
        .bg = 0,
        .tilemapLeft = 20,
        .tilemapTop = 1,
        .width = 10,
        .height = 14,
        .paletteNum = 15,
        .baseBlock = 0x4D,
    },
    [MAP_WINDOW_DESCRIPTION] = {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 16,
        .width = 26,
        .height = 4,
        .paletteNum = 15,
        .baseBlock = 0xDA,
    },
    DUMMY_WIN_TEMPLATE
};

static const u8 sTextColors[][3] =
{
    {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_DARK_GRAY, TEXT_COLOR_LIGHT_GRAY},
    {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_WHITE, TEXT_COLOR_DARK_GRAY},
    {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_RED, TEXT_COLOR_LIGHT_RED},
};

struct
{
    s16 yStart;
    s16 yEnd;
    s16 xStart;
    s16 xEnd;
}
static const sPassAreasLayout[CURSOR_AREA_COUNT - 1] =
{
    [CURSOR_AREA_MAP - 1]            = { 24,  56, 184, 232},
    [CURSOR_AREA_CARD - 1]           = { 72, 144, 128, 232},
    [CURSOR_AREA_ACHIEVEMENTS - 1]   = { 24,  64, 144, 176},
    [CURSOR_AREA_RECORD - 1]         = {  0,   0,   0,   0},
    [CURSOR_AREA_CANCEL - 1]         = {  0,   8, 232, 240},
    [CURSOR_AREA_POINTS - 1]         = { 32,  72,  72, 112},
    [CURSOR_AREA_EARNED_SYMBOLS - 1] = {104, 140,  16, 120},
    [CURSOR_AREA_SYMBOL_TOWER - 1]   = {108, 128,  16,  30},
    [CURSOR_AREA_SYMBOL_DOME - 1]    = {108, 128,  30,  44},
    [CURSOR_AREA_SYMBOL_PALACE - 1]  = {108, 128,  44,  58},
    [CURSOR_AREA_SYMBOL_ARENA - 1]   = {108, 128,  58,  72},
    [CURSOR_AREA_SYMBOL_FACTORY - 1] = {108, 128,  72,  86},
    [CURSOR_AREA_SYMBOL_PIKE - 1]    = {108, 128,  86, 100},
    [CURSOR_AREA_SYMBOL_PYRAMID - 1] = {108, 128, 100, 114},
};

static const struct CompressedSpriteSheet sCursorSpriteSheets[] =
{
    {sCursor_Gfx, 0x100, TAG_CURSOR},
    {sMapCursor_Gfx, 0x400, TAG_MAP_INDICATOR},
    {gFrontierPassMedals_Gfx, 0x380, TAG_MEDAL_SILVER},
};

static const struct CompressedSpriteSheet sHeadsSpriteSheet[] =
{
    {sHeads_Gfx, 0x100, TAG_HEAD_MALE},
    {}
};

static const u8 sCardHighlightTopLeft_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_top_left.4bpp");
static const u8 sCardHighlightTopMiddle_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_top_middle.4bpp");
static const u8 sCardHighlightTopRightTop_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_top_right_top.4bpp");
static const u8 sCardHighlightTopRightBottom_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_top_right_bottom.4bpp");
static const u8 sCardHighlightBottomLeft_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_bottom_left.4bpp");
static const u8 sCardHighlightBottomMiddle_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_bottom_middle.4bpp");
static const u8 sCardHighlightBottomRight_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_bottom_right.4bpp");
static const u8 sCardHighlightBottomEdge_Gfx[] = INCBIN_U8("graphics/frontier_pass/card_highlight_bottom_edge.4bpp");
static const u16 sFrontierPassHighlight_Pal[] = INCBIN_U16("graphics/frontier_pass/highlight.gbapal");

static const struct SpriteSheet sFrontierPassHighlightSheets[] =
{
    {sCardHighlightTopLeft_Gfx,       sizeof(sCardHighlightTopLeft_Gfx),       TAG_CARD_HIGHLIGHT_TOP_LEFT},
    {sCardHighlightTopMiddle_Gfx,     sizeof(sCardHighlightTopMiddle_Gfx),     TAG_CARD_HIGHLIGHT_TOP_MIDDLE},
    {sCardHighlightTopRightTop_Gfx,   sizeof(sCardHighlightTopRightTop_Gfx),   TAG_CARD_HIGHLIGHT_TOP_RIGHT_TOP},
    {sCardHighlightTopRightBottom_Gfx, sizeof(sCardHighlightTopRightBottom_Gfx), TAG_CARD_HIGHLIGHT_TOP_RIGHT_BOTTOM},
    {sCardHighlightBottomLeft_Gfx,    sizeof(sCardHighlightBottomLeft_Gfx),    TAG_CARD_HIGHLIGHT_BOTTOM_LEFT},
    {sCardHighlightBottomMiddle_Gfx,  sizeof(sCardHighlightBottomMiddle_Gfx),  TAG_CARD_HIGHLIGHT_BOTTOM_MIDDLE},
    {sCardHighlightBottomRight_Gfx,   sizeof(sCardHighlightBottomRight_Gfx),   TAG_CARD_HIGHLIGHT_BOTTOM_RIGHT},
    {sCardHighlightBottomEdge_Gfx,    sizeof(sCardHighlightBottomEdge_Gfx),    TAG_CARD_HIGHLIGHT_BOTTOM_EDGE},
    {},
};

static const struct SpriteSheet sTrophySpriteSheet =
{
    .data = sTrophy_Gfx,
    .size = sizeof(sTrophy_Gfx),
    .tag = TAG_TROPHY,
};

static const struct SpritePalette sSpritePalettes[] =
{
    {gFrontierPassCursor_Pal,       TAG_CURSOR},
    {gFrontierPassMapCursor_Pal,    TAG_MAP_INDICATOR},
    {gFrontierPassMedalsSilver_Pal, TAG_MEDAL_SILVER},
    {gFrontierPassMedalsGold_Pal,   TAG_MEDAL_GOLD},
    {sMaleHead_Pal,                 TAG_HEAD_MALE},
    {sFemaleHead_Pal,               TAG_HEAD_FEMALE},
    {sTrophy_Pal,                   TAG_TROPHY},
    {}
};

static const struct SpritePalette sFrontierPassHighlight_Palette =
{
    sFrontierPassHighlight_Pal,
    TAG_FRONTIER_PASS_HIGHLIGHT_PALETTE,
};

#define FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(_tag, _oam) \
{ \
    .tileTag = (_tag), \
    .paletteTag = TAG_FRONTIER_PASS_HIGHLIGHT_PALETTE, \
    .oam = (_oam), \
    .anims = gDummySpriteAnimTable, \
    .images = NULL, \
    .affineAnims = gDummySpriteAffineAnimTable, \
    .callback = SpriteCallbackDummy, \
}

static const struct SpriteTemplate sCardHighlightSpriteTemplates[FRONTIER_PASS_CARD_HIGHLIGHT_COUNT] =
{
    [0] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_TOP_LEFT,        &gOamData_AffineOff_ObjNormal_64x64),
    [1] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_TOP_MIDDLE,      &gOamData_AffineOff_ObjNormal_32x64),
    [2] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_TOP_RIGHT_TOP,    &gOamData_AffineOff_ObjNormal_8x32),
    [3] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_TOP_RIGHT_BOTTOM, &gOamData_AffineOff_ObjNormal_8x32),
    [4] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_BOTTOM_LEFT,      &gOamData_AffineOff_ObjNormal_32x8),
    [5] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_BOTTOM_MIDDLE,    &gOamData_AffineOff_ObjNormal_32x8),
    [6] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_BOTTOM_RIGHT,     &gOamData_AffineOff_ObjNormal_32x8),
    [7] = FRONTIER_PASS_HIGHLIGHT_SPRITE_TEMPLATE(TAG_CARD_HIGHLIGHT_BOTTOM_EDGE,      &gOamData_AffineOff_ObjNormal_8x8),
};

static const union AnimCmd sAnim_Frame1_Unused[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame1[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame2[] =
{
    ANIMCMD_FRAME(4, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame3[] =
{
    ANIMCMD_FRAME(8, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame4[] =
{
    ANIMCMD_FRAME(12, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame5[] =
{
    ANIMCMD_FRAME(16, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame6[] =
{
    ANIMCMD_FRAME(20, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Frame7[] =
{
    ANIMCMD_FRAME(24, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_MapIndicatorCursor_Rectangle[] =
{
    ANIMCMD_FRAME(0, 45),
    ANIMCMD_FRAME(8, 45),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd sAnim_MapIndicatorCursor_Square[] =
{
    ANIMCMD_FRAME(16, 45),
    ANIMCMD_FRAME(24, 45),
    ANIMCMD_JUMP(0)
};

// Used both by the cursor and the map head icons
static const union AnimCmd *const sAnims_TwoFrame[] =
{
    sAnim_Frame1,
    sAnim_Frame2
};

static const union AnimCmd sAnim_TrophyNormal[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_END
};

static const union AnimCmd sAnim_TrophyHighlighted[] =
{
    // A 64x64 4bpp frame occupies 8x8 = 64 tiles.
    ANIMCMD_FRAME(64, 0),
    ANIMCMD_END
};

static const union AnimCmd *const sAnims_Trophy[] =
{
    sAnim_TrophyNormal,
    sAnim_TrophyHighlighted,
};

static const union AnimCmd *const sAnims_Medal[] =
{
    [CURSOR_AREA_SYMBOL_TOWER   - CURSOR_AREA_SYMBOL] = sAnim_Frame1,
    [CURSOR_AREA_SYMBOL_DOME    - CURSOR_AREA_SYMBOL] = sAnim_Frame2,
    [CURSOR_AREA_SYMBOL_PALACE  - CURSOR_AREA_SYMBOL] = sAnim_Frame3,
    [CURSOR_AREA_SYMBOL_ARENA   - CURSOR_AREA_SYMBOL] = sAnim_Frame4,
    [CURSOR_AREA_SYMBOL_FACTORY - CURSOR_AREA_SYMBOL] = sAnim_Frame5,
    [CURSOR_AREA_SYMBOL_PIKE    - CURSOR_AREA_SYMBOL] = sAnim_Frame6,
    [CURSOR_AREA_SYMBOL_PYRAMID - CURSOR_AREA_SYMBOL] = sAnim_Frame7
};

static const union AnimCmd *const sAnims_MapIndicatorCursor[] =
{
    [MAP_INDICATOR_RECTANGLE] = sAnim_MapIndicatorCursor_Rectangle,
    [MAP_INDICATOR_SQUARE]    = sAnim_MapIndicatorCursor_Square
};

static const union AffineAnimCmd sAffineAnim_Unused[] =
{
    AFFINEANIMCMD_FRAME(256, 256, 0, 0),
    AFFINEANIMCMD_END
};

static const union AffineAnimCmd *const sAffineAnims_Unused[] =
{
    sAffineAnim_Unused
};

static const struct SpriteTemplate sSpriteTemplates_Cursors[] =
{
    // Triangular cursor
    {
        .tileTag = TAG_CURSOR,
        .paletteTag = TAG_CURSOR,
        .oam = &gOamData_AffineOff_ObjNormal_16x16,
        .anims = sAnims_TwoFrame,
        .images = NULL,
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCallbackDummy,
    },
    // Map indicator cursor
    {
        .tileTag = TAG_MAP_INDICATOR,
        .paletteTag = TAG_MAP_INDICATOR,
        .oam = &gOamData_AffineOff_ObjNormal_32x16,
        .anims = sAnims_MapIndicatorCursor,
        .images = NULL,
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCallbackDummy,
    },
};

static const struct SpriteTemplate sSpriteTemplate_Medal =
{
    .tileTag = TAG_MEDAL_SILVER,
    .paletteTag = TAG_MEDAL_SILVER,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_Medal,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_PlayerHead =
{
    .tileTag = TAG_HEAD_MALE,
    .paletteTag = TAG_HEAD_MALE,
    .oam = &gOamData_AffineOff_ObjNormal_16x16,
    .anims = sAnims_TwoFrame,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_PlayerHead,
};

static const struct SpriteTemplate sSpriteTemplate_ProfileMugshot =
{
    .tileTag = TAG_FIELD_MUGSHOT,
    .paletteTag = TAG_FIELD_MUGSHOT,
    .oam = &gOamData_AffineOff_ObjNormal_64x64,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_MiniCardPlayerPic =
{
    .tileTag = TAG_MINICARD_PLAYER_PIC,
    .paletteTag = TAG_MINICARD_PLAYER_PIC,
    .oam = &gOamData_AffineOff_ObjNormal_32x32,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Trophy =
{
    .tileTag = TAG_TROPHY,
    .paletteTag = TAG_TROPHY,
    .oam = &gOamData_AffineOff_ObjNormal_64x64,
    .anims = sAnims_Trophy,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const u8 sText_CheckAchievements[] = _("check achievements");

static const u8 *const sPassAreaDescriptions[CURSOR_AREA_COUNT + 1] =
{
    [CURSOR_AREA_NOTHING]        = gText_ThereIsNoBattleRecord, // NOTHING is re-used for CURSOR_AREA_RECORD when no Record is present
    [CURSOR_AREA_MAP]            = gText_CheckFrontierMap,
    [CURSOR_AREA_CARD]           = gText_CheckTrainerCard,
    [CURSOR_AREA_ACHIEVEMENTS]  = sText_CheckAchievements,
    [CURSOR_AREA_RECORD]         = gText_ViewRecordedBattle,
    [CURSOR_AREA_CANCEL]         = gText_PutAwayFrontierPass,
    [CURSOR_AREA_POINTS]         = gText_CurrentBattlePoints,
    [CURSOR_AREA_EARNED_SYMBOLS] = gText_CollectedSymbols,
    [CURSOR_AREA_SYMBOL_TOWER]   = gText_BattleTowerAbilitySymbol,
    [CURSOR_AREA_SYMBOL_DOME]    = gText_BattleDomeTacticsSymbol,
    [CURSOR_AREA_SYMBOL_PALACE]  = gText_BattlePalaceSpiritsSymbol,
    [CURSOR_AREA_SYMBOL_ARENA]   = gText_BattleArenaGutsSymbol,
    [CURSOR_AREA_SYMBOL_FACTORY] = gText_BattleFactoryKnowledgeSymbol,
    [CURSOR_AREA_SYMBOL_PIKE]    = gText_BattlePikeLuckSymbol,
    [CURSOR_AREA_SYMBOL_PYRAMID] = gText_BattlePyramidBraveSymbol,
    [CURSOR_AREA_COUNT]          = gText_EmptyString7,
};

static const u8 sText_FrontierPass[] = _("frontier pass");
static const u8 sText_TrainerCard[] = _("trainer card");
static const u8 sText_ThemePrefix[] = _("theme ");
static const u8 sText_ThemeTotal[] = _("/16");
static const u8 sText_SelectSwapDefault[] = _("select swap default: ");
static const u8 sText_MapLabel[] = _("map");
static const u8 sText_SymbolsEarned[] = _("symbols earned: ");
static const u8 sText_BattlePointsShort[] = _("bp: ");
static const u8 sText_CursorInfo[] = _("cursor info");
static const u8 sText_SwapThemes[] = _("R/L swap themes");

struct
{
    const u8 *name;
    const u8 *description;
    s16 x;
    s16 y;
    u8 animNum;
} static const sMapLandmarks[NUM_FRONTIER_FACILITIES] =
{
    [FRONTIER_FACILITY_TOWER]   = {gText_BattleTower3,   gText_BattleTowerDesc,    89,  40, MAP_INDICATOR_SQUARE},
    [FRONTIER_FACILITY_DOME]    = {gText_BattleDome2,    gText_BattleDomeDesc,     33,  42, MAP_INDICATOR_SQUARE},
    [FRONTIER_FACILITY_PALACE]  = {gText_BattlePalace2,  gText_BattlePalaceDesc,  120,  86, MAP_INDICATOR_RECTANGLE},
    [FRONTIER_FACILITY_ARENA]   = {gText_BattleArena2,   gText_BattleArenaDesc,   114,  59, MAP_INDICATOR_RECTANGLE},
    [FRONTIER_FACILITY_FACTORY] = {gText_BattleFactory2, gText_BattleFactoryDesc,  25,  67, MAP_INDICATOR_RECTANGLE},
    [FRONTIER_FACILITY_PIKE]    = {gText_BattlePike2,    gText_BattlePikeDesc,     57,  57, MAP_INDICATOR_SQUARE},
    [FRONTIER_FACILITY_PYRAMID] = {gText_BattlePyramid2, gText_BattlePyramidDesc, 134,  41, MAP_INDICATOR_SQUARE},
};

static void ResetGpuRegsAndBgs(void)
{
    SetGpuReg(REG_OFFSET_DISPCNT, 0);
    SetGpuReg(REG_OFFSET_BG3CNT, 0);
    SetGpuReg(REG_OFFSET_BG2CNT, 0);
    SetGpuReg(REG_OFFSET_BG1CNT, 0);
    SetGpuReg(REG_OFFSET_BG0CNT, 0);
    ChangeBgX(0, 0, BG_COORD_SET);
    ChangeBgY(0, 0, BG_COORD_SET);
    ChangeBgX(1, 0, BG_COORD_SET);
    ChangeBgY(1, 0, BG_COORD_SET);
    ChangeBgX(2, 0, BG_COORD_SET);
    ChangeBgY(2, 0, BG_COORD_SET);
    ChangeBgX(3, 0, BG_COORD_SET);
    ChangeBgY(3, 0, BG_COORD_SET);
    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BLDY, 0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_WIN0H, 0);
    SetGpuReg(REG_OFFSET_WIN0V, 0);
    SetGpuReg(REG_OFFSET_WIN1H, 0);
    SetGpuReg(REG_OFFSET_WIN1V, 0);
    SetGpuReg(REG_OFFSET_WININ, 0);
    SetGpuReg(REG_OFFSET_WINOUT, 0);
    CpuFill16(0, (void *)VRAM, VRAM_SIZE);
    CpuFill32(0, (void *)OAM, OAM_SIZE);
}

void ShowFrontierPass(void (*callback)(void))
{
    AllocateFrontierPassData(callback);
    SetMainCallback2(CB2_InitFrontierPass);
}

bool8 FrontierPass_IsDefaultProfile(void)
{
    if (gSaveBlock1Ptr == NULL)
        return TRUE;

    return gSaveBlock1Ptr->hlwSave.future[FRONTIER_PASS_PROFILE_DEFAULT_OFFSET]
        != FRONTIER_PASS_PROFILE_DEFAULT_CARD;
}

void FrontierPass_ToggleDefaultProfile(void)
{
    if (gSaveBlock1Ptr != NULL)
    {
        u8 *defaultProfile = &gSaveBlock1Ptr->hlwSave.future[FRONTIER_PASS_PROFILE_DEFAULT_OFFSET];
        *defaultProfile = FrontierPass_IsDefaultProfile()
            ? FRONTIER_PASS_PROFILE_DEFAULT_CARD
            : FRONTIER_PASS_PROFILE_DEFAULT_FRONTIER;
    }
}

void ShowDefaultPlayerProfile(void (*callback)(void))
{
    if (FlagGet(FLAG_SYS_FRONTIER_PASS) && FrontierPass_IsDefaultProfile())
        ShowFrontierPass(callback);
    else
        ShowPlayerTrainerCard(callback);
}

static void LeaveFrontierPass(void)
{
    SetMainCallback2(sPassData->callback);
    FreeFrontierPassData();
}

static u32 AllocateFrontierPassData(void (*callback)(void))
{
    u8 i;

    if (sPassData != NULL)
        return ERR_ALREADY_DONE;

    sPassData = AllocZeroed(sizeof(*sPassData));
    if (sPassData == NULL)
        return ERR_ALLOC_FAILED;

    sPassData->callback = callback;
    i = GetCurrentRegionMapSectionId();
    if (i != MAPSEC_BATTLE_FRONTIER && i != MAPSEC_ARTISAN_CAVE)
    {
        // Player is not in the frontier, set
        // cursor position to the Trainer Card
        sPassData->cursorX = 176;
        sPassData->cursorY = 104;
    }
    else
    {
        // Player is in the frontier, set
        // cursor position to the frontier map
        sPassData->cursorX = 208;
        sPassData->cursorY = 48;
    }

    sPassData->battlePoints = gSaveBlock2Ptr->frontier.battlePoints;
    sPassData->hasBattleRecord = CanCopyRecordedBattleSaveData();
    sPassData->areaToShow = CURSOR_AREA_NOTHING;
    sPassData->trainerStars = CountPlayerTrainerStars();
    sPassData->bgScrollX = FRONTIER_PASS_SCROLL_X_PERIOD << 8;
    sPassData->bgScrollY = FRONTIER_PASS_SCROLL_Y_PERIOD << 8;
    for (i = 0; i < NUM_FRONTIER_FACILITIES; i++)
    {
        if (FlagGet(FLAG_SYS_TOWER_SILVER + i * 2))
            sPassData->facilitySymbols[i]++;
        if (FlagGet(FLAG_SYS_TOWER_GOLD + i * 2))
            sPassData->facilitySymbols[i]++;
    }

    return SUCCESS;
}

static u32 FreeFrontierPassData(void)
{
    if (sPassData == NULL)
        return ERR_ALREADY_DONE;

    memset(sPassData, 0, sizeof(*sPassData)); // Why clear data, if it's going to be freed anyway?
    FREE_AND_SET_NULL(sPassData);
    return SUCCESS;
}

static u32 AllocateFrontierPassGfx(void)
{
    if (sPassGfx != NULL)
        return ERR_ALREADY_DONE;

    sPassGfx = AllocZeroed(sizeof(*sPassGfx));
    if (sPassGfx == NULL)
        return ERR_ALLOC_FAILED;

    return SUCCESS;
}

static u32 FreeFrontierPassGfx(void)
{
    FreeAllWindowBuffers();
    if (sPassGfx == NULL)
        return ERR_ALREADY_DONE;

    memset(sPassGfx, 0, sizeof(*sPassGfx)); // Why clear data, if it's going to be freed anyway?
    FREE_AND_SET_NULL(sPassGfx);
    return SUCCESS;
}

static void VBlankCB_FrontierPass(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_FrontierPass(void)
{
    RunTasks();
    if (sPassGfx != NULL)
        UpdateFrontierPassScrollingBackground();
    AnimateSprites();
    if (sPassGfx != NULL && sPassGfx->cursorSprite != NULL)
    {
        u8 cursorArea = GetCursorAreaFromCoords(sPassGfx->cursorSprite->x - 5,
                                                sPassGfx->cursorSprite->y + 5);
        UpdateAreaHighlight(cursorArea, sPassData->cursorArea);
    }
    BuildOamBuffer();
}

static void CB2_InitFrontierPass(void)
{
    if (InitFrontierPass())
    {
        CreateTask(Task_HandleFrontierPassInput, 0);
        SetMainCallback2(CB2_FrontierPass);
    }
}

static void CB2_HideFrontierPass(void)
{
    if (HideFrontierPass())
        LeaveFrontierPass();
}

static bool32 InitFrontierPass(void)
{
    switch (sPassData->state)
    {
    case 0:
        SetVBlankCallback(NULL);
        ScanlineEffect_Stop();
        SetVBlankHBlankCallbacksToNull();
        DisableInterrupts(INTR_FLAG_HBLANK);
        break;
    case 1:
        ResetGpuRegsAndBgs();
        break;
    case 2:
        ResetTasks();
        ReleaseComfyAnims();
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        ResetTempTileDataBuffers();
        break;
    case 3:
        AllocateFrontierPassGfx();
        break;
    case 4:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sPassBgTemplates, ARRAY_COUNT(sPassBgTemplates));
        SetBgTilemapBuffer(1, sPassGfx->tilemapBuff1);
        SetBgTilemapBuffer(2, sPassGfx->tilemapBuff2);
        SetBgTilemapBuffer(3, sPassGfx->tilemapBuff4);
        SetBgAttribute(2, BG_ATTR_WRAPAROUND, 1);
        break;
    case 5:
        InitWindows(sPassWindowTemplates);
        DeactivateAllTextPrinters();
        break;
    case 6:
        LoadBgTiles(1, sBgNew_Gfx, sizeof(sBgNew_Gfx), 0);
        LoadBgTiles(0, sMiniCard_Gfx, sizeof(sMiniCard_Gfx), FRONTIER_PASS_MINICARD_TILE_BASE);
        LoadBgTiles(3, sFrontierPassScrolling_Gfx, sizeof(sFrontierPassScrolling_Gfx), 0);
        break;
    case 7:
        if (FreeTempTileDataBuffersIfPossible())
            return FALSE;
        FillBgTilemapBufferRect_Palette0(0, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        FillBgTilemapBufferRect_Palette0(1, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        FillBgTilemapBufferRect_Palette0(3, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        LoadFrontierPassScrollingBackground();
        CopyBgTilemapBufferToVram(0);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(3);
        break;
    case 8:
        LoadFrontierPassMainGraphics();
        // The minimap is an 8bpp layer, so its palette occupies palette
        // memory starting at index 0. Keep it loaded after the 4bpp theme
        // banks are prepared; the old Frontier Pass palette here was the
        // green background that leaked through the new layout.
        LoadPalette(sMinimap_Pal, 0, sizeof(sMinimap_Pal));
        // Palette index 0 is also the hardware backdrop. The minimap uses
        // that index as its transparent key, so replace only the key color;
        // replacing the whole first bank would destroy the 8bpp minimap.
        LoadPalette(&TrainerCard_GetColorThemeColors()->charcoal, BG_PLTT_ID(0), sizeof(u16));
        LoadPalette(GetTextWindowPalette(0), BG_PLTT_ID(15), PLTT_SIZE_4BPP);
        DrawFrontierPassBg();
        if (sPassData->areaToShow == CURSOR_AREA_MAP || sPassData->areaToShow == CURSOR_AREA_CARD)
        {
            sPassData->state = 0;
            return TRUE;
        }
        break;
    case 9:
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP);
        ShowBg(0);
        ShowBg(1);
        ShowBg(2);
        ShowBg(3);
        ChangeBgX(3, sPassData->bgScrollX, BG_COORD_SET);
        ChangeBgY(3, sPassData->bgScrollY, BG_COORD_SET);
        LoadCursorAndSymbolSprites();
        SetVBlankCallback(VBlankCB_FrontierPass);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        break;
    case 10:
        AnimateSprites();
        BuildOamBuffer();
        if (UpdatePaletteFade())
            return FALSE;

        sPassData->state = 0;
        return TRUE;
    }

    sPassData->state++;
    return FALSE;
}

static bool32 HideFrontierPass(void)
{
    switch (sPassData->state)
    {
    case 0:
        if (sPassData->areaToShow != CURSOR_AREA_MAP && sPassData->areaToShow != CURSOR_AREA_CARD)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        }
        else
        {
            sPassData->state = 2;
            return FALSE;
        }
        break;
    case 1:
        if (UpdatePaletteFade())
            return FALSE;
        break;
    case 2:
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        HideBg(0);
        HideBg(1);
        HideBg(2);
        HideBg(3);
        SetVBlankCallback(NULL);
        ScanlineEffect_Stop();
        SetVBlankHBlankCallbacksToNull();
        break;
    case 3:
        FreeCursorAndSymbolSprites();
        break;
    case 4:
        ResetGpuRegsAndBgs();
        ResetTasks();
        ReleaseComfyAnims();
        ResetSpriteData();
        FreeAllSpritePalettes();
        break;
    case 5:
        UnsetBgTilemapBuffer(0);
        UnsetBgTilemapBuffer(1);
        UnsetBgTilemapBuffer(2);
        UnsetBgTilemapBuffer(3);
        FreeFrontierPassGfx();
        sPassData->state = 0;
        return TRUE;
    }

    sPassData->state++;
    return FALSE;
}

static u8 GetCursorAreaFromCoords(s16 x, s16 y)
{
    u8 i;

    // Minus/Plus 1, because the table doesn't take CURSOR_AREA_NOTHING into account.
    for (i = 0; i < CURSOR_AREA_COUNT - 1; i++)
    {
        if (sPassAreasLayout[i].yStart <= y && sPassAreasLayout[i].yEnd >= y
         && sPassAreasLayout[i].xStart <= x && sPassAreasLayout[i].xEnd >= x)
        {
            if (i >= CURSOR_AREA_SYMBOL - 1 && sPassData->facilitySymbols[i - CURSOR_AREA_SYMBOL + 1] == 0)
                break;

            return i + 1;
        }
    }

    return CURSOR_AREA_NOTHING;
}

// For Task_PassAreaZoom
#define tZoomOut data[0]

void CB2_ReshowFrontierPass(void)
{
    u8 taskId;

    if (!InitFrontierPass())
        return;

    switch (sPassData->areaToShow)
    {
    case CURSOR_AREA_MAP:
    case CURSOR_AREA_CARD:
        taskId = CreateTask(Task_PassAreaZoom, 0);
        gTasks[taskId].tZoomOut = TRUE;
        break;
    case CURSOR_AREA_RECORD:
    default:
        sPassData->areaToShow = CURSOR_AREA_NOTHING;
        taskId = CreateTask(Task_HandleFrontierPassInput, 0);
        break;
    }

    SetMainCallback2(CB2_FrontierPass);
}

static void CB2_ReturnFromRecord(void)
{
    AllocateFrontierPassData(sSavedPassData.callback);
    sPassData->cursorX = sSavedPassData.cursorX;
    sPassData->cursorY = sSavedPassData.cursorY;
    memset(&sSavedPassData, 0, sizeof(sSavedPassData));
    switch (CurrentBattlePyramidLocation())
    {
    case PYRAMID_LOCATION_FLOOR:
        PlayBGM(MUS_B_PYRAMID);
        break;
    case PYRAMID_LOCATION_TOP:
        PlayBGM(MUS_B_PYRAMID_TOP);
        break;
    default:
        Overworld_PlaySpecialMapMusic();
        break;
    }

    SetMainCallback2(CB2_ReshowFrontierPass);
}

static void CB2_ShowFrontierPassFeature(void)
{
    if (!HideFrontierPass())
        return;

    switch (sPassData->areaToShow)
    {
    case CURSOR_AREA_MAP:
        ShowFrontierMap(CB2_ReshowFrontierPass);
        break;
    case CURSOR_AREA_RECORD:
        sSavedPassData.callback = sPassData->callback;
        sSavedPassData.cursorX = sPassData->cursorX;
        sSavedPassData.cursorY = sPassData->cursorY;
        FreeFrontierPassData();
        PlayRecordedBattle(CB2_ReturnFromRecord);
        break;
    case CURSOR_AREA_CARD:
        ShowPlayerTrainerCard(CB2_ReshowFrontierPass);
        break;
    case CURSOR_AREA_ACHIEVEMENTS:
        CB2_InitAchievementsMenuWithCallback(CB2_ReshowFrontierPass);
        break;
    }
}

static bool32 TryCallPassAreaFunction(u8 taskId, u8 cursorArea)
{
    switch (cursorArea)
    {
    case CURSOR_AREA_RECORD:
        if (!sPassData->hasBattleRecord)
            return FALSE;
        sPassData->areaToShow = CURSOR_AREA_RECORD;
        DestroyTask(taskId);
        SetMainCallback2(CB2_ShowFrontierPassFeature);
        break;
    case CURSOR_AREA_MAP:
    case CURSOR_AREA_CARD:
    case CURSOR_AREA_ACHIEVEMENTS:
        sPassData->areaToShow = cursorArea;
        gTasks[taskId].func = Task_PassAreaZoom;
        gTasks[taskId].tZoomOut = FALSE;
        break;
    default:
        return FALSE;
    }

    sPassData->cursorX = sPassGfx->cursorSprite->x;
    sPassData->cursorY = sPassGfx->cursorSprite->y;
    return TRUE;
}

static void Task_HandleFrontierPassInput(u8 taskId)
{
    u8 var = FALSE; // Reused, first informs whether the cursor moves, then used as the new cursor area.

    // START swaps straight to the other profile. SELECT changes which profile
    // the player opens by default from the overworld's profile entry.
    if (JOY_NEW(START_BUTTON))
    {
        PlaySE(SE_SELECT);
        sPassData->areaToShow = CURSOR_AREA_CARD;
        sPassData->cursorX = sPassGfx->cursorSprite->x;
        sPassData->cursorY = sPassGfx->cursorSprite->y;
        gTasks[taskId].func = Task_PassAreaZoom;
        gTasks[taskId].tZoomOut = FALSE;
        return;
    }
    if (JOY_NEW(SELECT_BUTTON))
    {
        PlaySE(SE_SELECT);
        FrontierPass_ToggleDefaultProfile();
        DrawFrontierPassBg();
        return;
    }
    if (JOY_NEW(L_BUTTON))
    {
        PlaySE(SE_SELECT);
        TrainerCard_CycleColorTheme(-1);
        LoadFrontierPassMainGraphics();
        DrawFrontierPassBg();
        return;
    }
    if (JOY_NEW(R_BUTTON))
    {
        PlaySE(SE_SELECT);
        TrainerCard_CycleColorTheme(1);
        LoadFrontierPassMainGraphics();
        DrawFrontierPassBg();
        return;
    }

    if (JOY_HELD(DPAD_UP) && sPassGfx->cursorSprite->y >= 9)
    {
        sPassGfx->cursorSprite->y -= 2;
        if (sPassGfx->cursorSprite->y <= 7)
            sPassGfx->cursorSprite->y = 2;
        var = TRUE;
    }
    if (JOY_HELD(DPAD_DOWN) && sPassGfx->cursorSprite->y <= 135)
    {
        sPassGfx->cursorSprite->y += 2;
        if (sPassGfx->cursorSprite->y >= 137)
            sPassGfx->cursorSprite->y = 136;
        var = TRUE;
    }

    if (JOY_HELD(DPAD_LEFT) && sPassGfx->cursorSprite->x >= 6)
    {
        sPassGfx->cursorSprite->x -= 2;
        if (sPassGfx->cursorSprite->x <= 4)
            sPassGfx->cursorSprite->x = 5;
        var = TRUE;
    }
    if (JOY_HELD(DPAD_RIGHT) && sPassGfx->cursorSprite->x <= 231)
    {
        sPassGfx->cursorSprite->x += 2;
        if (sPassGfx->cursorSprite->x >= 233)
            sPassGfx->cursorSprite->x = 232;
        var = TRUE;
    }

    if (!var) // Cursor did not change.
    {
        if (sPassData->cursorArea != CURSOR_AREA_NOTHING && JOY_NEW(A_BUTTON))
        {
            if (sPassData->cursorArea <= CURSOR_AREA_RECORD) // Map, Card, Achievements, Record
            {
                PlaySE(SE_SELECT);
                if (TryCallPassAreaFunction(taskId, sPassData->cursorArea))
                    return;
            }
            else if (sPassData->cursorArea == CURSOR_AREA_CANCEL)
            {
                PlaySE(SE_PC_OFF);
                SetMainCallback2(CB2_HideFrontierPass);
                DestroyTask(taskId);
                // BUG. The function should return here. Otherwise, it can play the same sound twice and destroy the same task twice.
                #ifdef BUGFIX
                return;
                #endif
            }
        }

        if (JOY_NEW(B_BUTTON))
        {
            PlaySE(SE_PC_OFF);
            SetMainCallback2(CB2_HideFrontierPass);
            DestroyTask(taskId);
        }
    }
    else
    {
        var = GetCursorAreaFromCoords(sPassGfx->cursorSprite->x - 5, sPassGfx->cursorSprite->y + 5);
        if (sPassData->cursorArea != var)
        {
            PrintAreaDescription(var);
            sPassData->previousCursorArea = sPassData->cursorArea;
            sPassData->cursorArea = var;
            UpdateAreaHighlight(sPassData->cursorArea, sPassData->previousCursorArea);
        }
    }
}

// Zoom in/out for the Frontier map or the trainer card
#define tZoomOut data[0]

static void Task_PassAreaZoom(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (sPassData->state)
    {
    case 0:
        // Fade between the pass and the selected feature. The old affine
        // transition reused the legacy map/card sheet on BG2; with the new
        // pass artwork that sheet could briefly overwrite the new minicard
        // and was also the crash path when the feature was closed repeatedly.
        // Keep the new pass graphics resident and make this transition safe
        // until a dedicated new zoom sheet is available.
        if (!tZoomOut)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        }
        else
        {
            // Zooming out of map/card screen back to frontier pass
            SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP);
            ShowBg(0);
            ShowBg(1);
            ShowBg(2);
            ShowBg(3);
            ChangeBgX(3, sPassData->bgScrollX, BG_COORD_SET);
            ChangeBgY(3, sPassData->bgScrollY, BG_COORD_SET);
            LoadCursorAndSymbolSprites();
            SetVBlankCallback(VBlankCB_FrontierPass);
            BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        }
        break;
    case 1:
        // Wait for the palette transition. There is intentionally no affine
        // update here; the new minimap and minicard must remain the graphics
        // the player sees during the whole pass transition.
        UpdatePaletteFade();
        break;
    case 2:
        if (UpdatePaletteFade())
            return;

        if (!tZoomOut)
        {
            // Zoomed in and faded out, switch to map or trainer card
            DestroyTask(taskId);
            SetMainCallback2(CB2_ShowFrontierPassFeature);
        }
        else
        {
            // Zoomed out and faded in, return to frontier pass
            LoadFrontierPassMainGraphics();
            LoadFrontierPassMinimap(sPassData->cursorArea == CURSOR_AREA_MAP);
            sPassData->areaToShow = CURSOR_AREA_NOTHING;
            gTasks[taskId].func = Task_HandleFrontierPassInput;
        }
        SetBgAttribute(2, BG_ATTR_WRAPAROUND, 0);
        sPassData->state = 0;
        return;
    }

    sPassData->state++;
}

static void ShowAndPrintWindows(void)
{
    s32 x;
    u8 i;
    u8 symbolsEarned = 0;
    u16 trainerId;

    for (i = 0; i < WINDOW_COUNT; i++)
    {
        PutWindowTilemap(i);
        FillWindowPixelBuffer(i, PIXEL_FILL(0));
    }

    // Header: the theme is shown on the left and the current default profile
    // is shown on the right, as a reminder of what the overworld entry opens.
    StringCopy(gStringVar1, sText_ThemePrefix);
    ConvertIntToDecimalStringN(gStringVar2, TrainerCard_GetColorTheme() + 1, STR_CONV_MODE_LEFT_ALIGN, 2);
    StringAppend(gStringVar1, gStringVar2);
    StringAppend(gStringVar1, sText_ThemeTotal);
    StringAppend(gStringVar1, COMPOUND_STRING(" "));
    StringAppend(gStringVar1, TrainerCard_GetColorThemeName());
    AddTextPrinterParameterized3(WINDOW_HEADER, FONT_SMALL_NARROWER, 2, 0, sTextColors[1], 0, gStringVar1);

    StringCopy(gStringVar2, sText_SelectSwapDefault);
    StringAppend(gStringVar2, FrontierPass_IsDefaultProfile() ? sText_FrontierPass : sText_TrainerCard);
    x = GetStringRightAlignXOffset(FONT_SMALL_NARROWER, gStringVar2, 222);
    AddTextPrinterParameterized3(WINDOW_HEADER, FONT_SMALL_NARROWER, x, 0, sTextColors[1], 0, gStringVar2);

    // Profile text sits beside the mugshot. Keep this deliberately short so
    // the player's name never collides with the card artwork.
    AddTextPrinterParameterized3(WINDOW_PROFILE, FONT_SMALL_NARROWER, FRONTIER_PASS_PROFILE_TEXT_X, 0, sTextColors[1], 0, sText_FrontierPass);
    trainerId = gSaveBlock2Ptr->playerTrainerId[0] | (gSaveBlock2Ptr->playerTrainerId[1] << 8);
    StringCopy(gStringVar3, gSaveBlock2Ptr->playerName);
    StringAppend(gStringVar3, COMPOUND_STRING(" "));
    ConvertIntToDecimalStringN(gStringVar4, trainerId, STR_CONV_MODE_LEFT_ALIGN, 5);
    StringAppend(gStringVar3, gStringVar4);
    AddTextPrinterParameterized3(WINDOW_PROFILE, FONT_SMALL_NARROWER, FRONTIER_PASS_PROFILE_TEXT_X, 16, sTextColors[1], 0, gStringVar3);

    AddTextPrinterParameterized3(WINDOW_PROFILE, FONT_SMALL_NARROWER, FRONTIER_PASS_PROFILE_TEXT_X, 24, sTextColors[1], 0, sText_BattlePointsShort);
    ConvertIntToDecimalStringN(gStringVar4, sPassData->battlePoints, STR_CONV_MODE_LEFT_ALIGN, 5);
    AddTextPrinterParameterized3(WINDOW_PROFILE, FONT_SMALL_NARROWER,
                                 FRONTIER_PASS_PROFILE_TEXT_X + GetStringWidth(FONT_SMALL_NARROWER, sText_BattlePointsShort, 0), 24,
                                 sTextColors[1], 0, gStringVar4);

    for (i = 0; i < NUM_FRONTIER_FACILITIES; i++)
    {
        if (sPassData->facilitySymbols[i] != 0)
            symbolsEarned++;
    }
    AddTextPrinterParameterized3(WINDOW_SYMBOLS, FONT_SMALL_NARROWER, 0, 6, sTextColors[1], 0, sText_SymbolsEarned);
    ConvertIntToDecimalStringN(gStringVar4, symbolsEarned, STR_CONV_MODE_LEFT_ALIGN, 1);
    AddTextPrinterParameterized3(WINDOW_SYMBOLS, FONT_SMALL_NARROWER,
                                 GetStringWidth(FONT_SMALL_NARROWER, sText_SymbolsEarned, 0), 6,
                                 sTextColors[1], 0, gStringVar4);

    x = GetStringCenterAlignXOffset(FONT_SMALL_NARROWER, sText_MapLabel, 56);
    AddTextPrinterParameterized3(WINDOW_MAP_LABEL, FONT_SMALL_NARROWER, x, 0, sTextColors[1], 0, sText_MapLabel);

    sPassData->cursorArea = GetCursorAreaFromCoords(sPassData->cursorX - 5, sPassData->cursorY + 5);
    sPassData->previousCursorArea = CURSOR_AREA_NOTHING;
    PrintAreaDescription(sPassData->cursorArea);

    for (i = 0; i < WINDOW_COUNT; i++)
        CopyWindowToVram(i, COPYWIN_FULL);

    CopyBgTilemapBufferToVram(0);
}

static void PrintAreaDescription(u8 cursorArea)
{
    s32 x;

    FillWindowPixelBuffer(WINDOW_DESCRIPTION, PIXEL_FILL(0));

    if (cursorArea == CURSOR_AREA_RECORD && !sPassData->hasBattleRecord)
        AddTextPrinterParameterized3(WINDOW_DESCRIPTION, FONT_NORMAL, 2, 0, sTextColors[1], 0, sPassAreaDescriptions[CURSOR_AREA_NOTHING]);
    else if (cursorArea != CURSOR_AREA_NOTHING)
        AddTextPrinterParameterized3(WINDOW_DESCRIPTION, FONT_NORMAL, 2, 0, sTextColors[1], 0, sPassAreaDescriptions[cursorArea]);
    else
        AddTextPrinterParameterized3(WINDOW_DESCRIPTION, FONT_SMALL_NARROWER, 2, 0, sTextColors[1], 0, sText_CursorInfo);

    x = GetStringRightAlignXOffset(FONT_SMALL_NARROWER, sText_SwapThemes, 236);
    AddTextPrinterParameterized3(WINDOW_DESCRIPTION, FONT_SMALL_NARROWER, x, 0, sTextColors[1], 0, sText_SwapThemes);

    CopyWindowToVram(WINDOW_DESCRIPTION, COPYWIN_FULL);
    CopyBgTilemapBufferToVram(0);
}

static void LoadFrontierPassThemePalettes(void)
{
    u16 bgPalette[16];
    u16 cardPalette[16];
    u16 scrollPalette[16];
    const struct TrainerCardThemeColors *theme;

    theme = TrainerCard_GetColorThemeColors();
    CpuCopy16(sBgNew_Pal, bgPalette, sizeof(bgPalette));
    CpuCopy16(sMiniCard_Pal, cardPalette, sizeof(cardPalette));
    CpuCopy16(sFrontierPassScrolling_Pal, scrollPalette, sizeof(scrollPalette));

    // Color 0 is transparent for tiled BGs, but the hardware backdrop is
    // still the color at palette index 0. The imported sheets use lime as
    // their transparent key, so keep that key out of the visible backdrop.
    bgPalette[0] = theme->charcoal;
    cardPalette[0] = theme->charcoal;
    scrollPalette[0] = theme->charcoal;

    if (TrainerCard_GetColorTheme() != 0)
    {
        // The transparent key remains index 0. Recolor the neutral ramps of
        // the new Frontier Pass art while preserving the colored accents.
        bgPalette[1] = theme->light;
        bgPalette[2] = theme->light;
        bgPalette[3] = theme->mid;
        bgPalette[4] = theme->dark;
        bgPalette[5] = theme->deep;
        bgPalette[6] = theme->black2;

        cardPalette[9]  = theme->detail;
        cardPalette[10] = theme->dark;
        cardPalette[11] = theme->mid;
        cardPalette[12] = theme->dark;
        cardPalette[13] = theme->deep;
        cardPalette[14] = theme->black2;
        cardPalette[15] = theme->nearBlack;

        scrollPalette[0] = theme->charcoal;
        scrollPalette[1] = theme->mid;
        scrollPalette[2] = theme->dark;
        scrollPalette[3] = theme->deep;
        scrollPalette[4] = theme->black2;
        scrollPalette[5] = theme->nearBlack;
        scrollPalette[6] = theme->nearBlack;
        scrollPalette[7] = theme->nearBlack;
    }

    LoadPalette(bgPalette, BG_PLTT_ID(FRONTIER_PASS_BGNEW_PALETTE), PLTT_SIZE_4BPP);
    LoadPalette(cardPalette, BG_PLTT_ID(FRONTIER_PASS_MINICARD_PALETTE), PLTT_SIZE_4BPP);
    LoadPalette(scrollPalette, BG_PLTT_ID(FRONTIER_PASS_SCROLL_PALETTE), PLTT_SIZE_4BPP);
}

static void LoadFrontierPassMinimap(bool8 showHighlight)
{
    LoadBgTiles(2, sMinimap_Gfx, sizeof(sMinimap_Gfx), FRONTIER_PASS_MINIMAP_TILE_BASE);
    CopyToBgTilemapBufferRect(2,
                              showHighlight ? sMinimapHighlight_Tilemap : sMinimap_Tilemap,
                              23, 2, 6, 6);
    ChangeBgX(2, FRONTIER_PASS_MINIMAP_OFFSET_X * 256, BG_COORD_SET);
    ChangeBgY(2, FRONTIER_PASS_MINIMAP_OFFSET_Y * 256, BG_COORD_SET);
    CopyBgTilemapBufferToVram(2);
}

static void LoadFrontierPassMainGraphics(void)
{
    // The map/card callbacks reuse the same character blocks. Restore every
    // pass layer when returning from one of them; reloading only the palettes
    // leaves the scroll layer or the minimap replaced by the last screen.
    LoadBgTiles(1, sBgNew_Gfx, sizeof(sBgNew_Gfx), 0);
    LoadBgTiles(0, sMiniCard_Gfx, sizeof(sMiniCard_Gfx), FRONTIER_PASS_MINICARD_TILE_BASE);
    LoadBgTiles(3, sFrontierPassScrolling_Gfx, sizeof(sFrontierPassScrolling_Gfx), 0);
    LoadFrontierPassScrollingBackground();
    CopyBgTilemapBufferToVram(3);
    LoadFrontierPassThemePalettes();
    LoadPalette(&TrainerCard_GetColorThemeColors()->charcoal, BG_PLTT_ID(0), sizeof(u16));
}

static void LoadFrontierPassScrollingBackground(void)
{
    u16 *tilemap = (u16 *)sPassGfx->tilemapBuff4;
    u16 x, y;

    for (y = 0; y < FRONTIER_PASS_SCROLL_MAP_HEIGHT; y++)
    {
        const u16 sourceY = y % FRONTIER_PASS_SCROLL_SOURCE_HEIGHT;

        for (x = 0; x < FRONTIER_PASS_SCROLL_MAP_WIDTH; x++)
        {
            const u16 entry = sFrontierPassScrolling_Tilemap[sourceY * FRONTIER_PASS_SCROLL_SOURCE_WIDTH + x];
            tilemap[y * FRONTIER_PASS_SCROLL_MAP_WIDTH + x] =
                (entry & 0x0FFF) | (FRONTIER_PASS_SCROLL_PALETTE << 12);
        }
    }
}

static void UpdateFrontierPassScrollingBackground(void)
{
    if (sPassData->bgScrollX <= FRONTIER_PASS_SCROLL_SPEED_X)
        sPassData->bgScrollX = FRONTIER_PASS_SCROLL_X_PERIOD << 8;
    else
        sPassData->bgScrollX -= FRONTIER_PASS_SCROLL_SPEED_X;

    if (sPassData->bgScrollY <= FRONTIER_PASS_SCROLL_SPEED_Y)
        sPassData->bgScrollY = FRONTIER_PASS_SCROLL_Y_PERIOD << 8;
    else
        sPassData->bgScrollY -= FRONTIER_PASS_SCROLL_SPEED_Y;

    ChangeBgX(3, sPassData->bgScrollX, BG_COORD_SET);
    ChangeBgY(3, sPassData->bgScrollY, BG_COORD_SET);
}

static void UpdateAreaHighlight(u8 cursorArea, u8 previousCursorArea)
{
    u8 i;
    bool8 showCard = cursorArea == CURSOR_AREA_CARD;
    bool8 showMap = cursorArea == CURSOR_AREA_MAP;

    if (sPassGfx == NULL)
        return;

    for (i = 0; i < FRONTIER_PASS_CARD_HIGHLIGHT_COUNT; i++)
    {
        if (sPassGfx->cardHighlightSprites[i] != NULL)
            sPassGfx->cardHighlightSprites[i]->invisible = !showCard;
    }
    if (sPassGfx->trophySprite != NULL)
    {
        const u8 trophyAnim = cursorArea == CURSOR_AREA_ACHIEVEMENTS;

        // Apply the tile immediately as well as changing the animation state.
        // The pass redraws its palettes during a theme swap, and waiting for
        // the next AnimateSprites call can expose the other trophy frame for
        // one frame.
        StartSpriteAnimIfDifferent(sPassGfx->trophySprite, trophyAnim);
        SetSpriteSheetFrameTileNum(sPassGfx->trophySprite);
    }

    if (showMap != (previousCursorArea == CURSOR_AREA_MAP))
        LoadFrontierPassMinimap(showMap);
}

static void DrawFrontierPassBg(void)
{
    CopyRectToBgTilemapBufferRect(1, sBgNew_Tilemap, 0, 0, 30, 20, 0, 0, 30, 20,
                                  FRONTIER_PASS_BGNEW_PALETTE, 0, 0);
    CopyRectToBgTilemapBufferRect(0, sMiniCard_Tilemap, 0, 0, 30, 20,
                                  FRONTIER_PASS_MINICARD_TILE_X, FRONTIER_PASS_MINICARD_TILE_Y, 16, FRONTIER_PASS_MINICARD_TILE_HEIGHT,
                                  FRONTIER_PASS_MINICARD_PALETTE, FRONTIER_PASS_MINICARD_TILE_BASE, 0);
    ShowAndPrintWindows();
    UpdateAreaHighlight(sPassData->cursorArea, sPassData->previousCursorArea);
    LoadFrontierPassMinimap(sPassData->cursorArea == CURSOR_AREA_MAP);
    CopyBgTilemapBufferToVram(1);
}

static void LoadCursorAndSymbolSprites(void)
{
    u8 spriteId;
    u8 i = 0;
    struct CompressedSpriteSheet mugshotSheet;
    struct SpritePalette mugshotPalette;
    struct SpriteSheet miniCardPicSheet;
    struct SpritePalette miniCardPicPalette;

    FreeAllSpritePalettes();
    ResetAffineAnimData();
    LoadSpritePalettes(sSpritePalettes);
    LoadSpriteSheets(sFrontierPassHighlightSheets);
    LoadSpritePalette(&sFrontierPassHighlight_Palette);
    mugshotSheet.data = gSaveBlock2Ptr->playerGender == MALE
        ? sFrontierPassMugshotMale_Gfx
        : sFrontierPassMugshotFemale_Gfx;
    mugshotSheet.size = 64 * 64 / 2;
    mugshotSheet.tag = TAG_FIELD_MUGSHOT;
    mugshotPalette.data = gSaveBlock2Ptr->playerGender == MALE
        ? sFrontierPassMugshotMale_Pal
        : sFrontierPassMugshotFemale_Pal;
    mugshotPalette.tag = TAG_FIELD_MUGSHOT;
    LoadCompressedSpriteSheet(&mugshotSheet);
    LoadSpritePalette(&mugshotPalette);
    LoadCompressedSpriteSheet(&sCursorSpriteSheets[0]);
    LoadCompressedSpriteSheet(&sCursorSpriteSheets[2]);
    spriteId = CreateSprite(&sSpriteTemplate_ProfileMugshot, 31, 43, 1);
    if (spriteId != SPRITE_NONE)
    {
        sPassGfx->mugshotSprite = &gSprites[spriteId];
        sPassGfx->mugshotSprite->oam.priority = 0;
    }

    miniCardPicSheet.data = gSaveBlock2Ptr->playerGender == MALE
        ? sMiniCardMalePic_Gfx
        : sMiniCardFemalePic_Gfx;
    miniCardPicSheet.size = 32 * 32 / 2;
    miniCardPicSheet.tag = TAG_MINICARD_PLAYER_PIC;
    miniCardPicPalette.data = gSaveBlock2Ptr->playerGender == MALE
        ? sMiniCardMalePic_Pal
        : sMiniCardFemalePic_Pal;
    miniCardPicPalette.tag = TAG_MINICARD_PLAYER_PIC;
    LoadSpriteSheet(&miniCardPicSheet);
    LoadSpritePalette(&miniCardPicPalette);
    spriteId = CreateSprite(&sSpriteTemplate_MiniCardPlayerPic,
                            FRONTIER_PASS_MINICARD_PIC_X,
                            FRONTIER_PASS_MINICARD_PIC_Y, 1);
    if (spriteId != SPRITE_NONE)
    {
        sPassGfx->miniCardPlayerPicSprite = &gSprites[spriteId];
        sPassGfx->miniCardPlayerPicSprite->oam.priority = 0;
    }

    LoadSpriteSheet(&sTrophySpriteSheet);
    spriteId = CreateSprite(&sSpriteTemplate_Trophy,
                            FRONTIER_PASS_TROPHY_X,
                            FRONTIER_PASS_TROPHY_Y, 1);
    if (spriteId != SPRITE_NONE)
    {
        sPassGfx->trophySprite = &gSprites[spriteId];
        sPassGfx->trophySprite->oam.priority = 0;
    }

    {
        static const s16 sCardHighlightPositions[FRONTIER_PASS_CARD_HIGHLIGHT_COUNT][2] =
        {
            {FRONTIER_PASS_CARD_X + 32, FRONTIER_PASS_CARD_Y + 32},
            {FRONTIER_PASS_CARD_X + 80, FRONTIER_PASS_CARD_Y + 32},
            {FRONTIER_PASS_CARD_X + 100, FRONTIER_PASS_CARD_Y + 16},
            {FRONTIER_PASS_CARD_X + 100, FRONTIER_PASS_CARD_Y + 48},
            {FRONTIER_PASS_CARD_X + 16, FRONTIER_PASS_CARD_Y + 68},
            {FRONTIER_PASS_CARD_X + 48, FRONTIER_PASS_CARD_Y + 68},
            {FRONTIER_PASS_CARD_X + 80, FRONTIER_PASS_CARD_Y + 68},
            {FRONTIER_PASS_CARD_X + 100, FRONTIER_PASS_CARD_Y + 68},
        };

        for (i = 0; i < FRONTIER_PASS_CARD_HIGHLIGHT_COUNT; i++)
        {
            spriteId = CreateSprite(&sCardHighlightSpriteTemplates[i],
                                     sCardHighlightPositions[i][0],
                                     sCardHighlightPositions[i][1], 1);
            if (spriteId != SPRITE_NONE)
            {
                sPassGfx->cardHighlightSprites[i] = &gSprites[spriteId];
                sPassGfx->cardHighlightSprites[i]->oam.priority = 0;
                sPassGfx->cardHighlightSprites[i]->invisible = TRUE;
            }
        }

    }

    spriteId = CreateSprite(&sSpriteTemplates_Cursors[0], sPassData->cursorX, sPassData->cursorY, 0);
    if (spriteId != SPRITE_NONE)
    {
        sPassGfx->cursorSprite = &gSprites[spriteId];
        sPassGfx->cursorSprite->oam.priority = 0;
    }

    for (i = 0; i < NUM_FRONTIER_FACILITIES; i++)
    {
        if (sPassData->facilitySymbols[i] != 0)
        {
            struct SpriteTemplate sprite = sSpriteTemplate_Medal;

            sprite.paletteTag += sPassData->facilitySymbols[i] - 1; // Adds 1 if gold for TAG_MEDAL_GOLD
            spriteId = CreateSprite(&sprite, sPassAreasLayout[i + CURSOR_AREA_SYMBOL - 1].xStart + 8, sPassAreasLayout[i + CURSOR_AREA_SYMBOL - 1].yStart + 6, i + 1);
            sPassGfx->symbolSprites[i] = &gSprites[spriteId];
            sPassGfx->symbolSprites[i]->oam.priority = 2;
            StartSpriteAnim(sPassGfx->symbolSprites[i], i);
        }
    }

    if (sPassGfx->cursorSprite != NULL)
    {
        UpdateAreaHighlight(GetCursorAreaFromCoords(sPassGfx->cursorSprite->x - 5,
                                                    sPassGfx->cursorSprite->y + 5),
                            CURSOR_AREA_NOTHING);
    }
}

static void FreeCursorAndSymbolSprites(void)
{
    u8 i = 0;

    if (sPassGfx->mugshotSprite != NULL)
    {
        DestroySprite(sPassGfx->mugshotSprite);
        sPassGfx->mugshotSprite = NULL;
    }
    if (sPassGfx->miniCardPlayerPicSprite != NULL)
    {
        DestroySprite(sPassGfx->miniCardPlayerPicSprite);
        sPassGfx->miniCardPlayerPicSprite = NULL;
    }
    if (sPassGfx->trophySprite != NULL)
    {
        DestroySprite(sPassGfx->trophySprite);
        sPassGfx->trophySprite = NULL;
    }
    for (i = 0; i < FRONTIER_PASS_CARD_HIGHLIGHT_COUNT; i++)
    {
        if (sPassGfx->cardHighlightSprites[i] != NULL)
        {
            DestroySprite(sPassGfx->cardHighlightSprites[i]);
            sPassGfx->cardHighlightSprites[i] = NULL;
        }
    }
    if (sPassGfx->cursorSprite != NULL)
    {
        DestroySprite(sPassGfx->cursorSprite);
        sPassGfx->cursorSprite = NULL;
    }
    for (i = 0; i < NUM_FRONTIER_FACILITIES; i++)
    {
        if (sPassGfx->symbolSprites[i] != NULL)
        {
            DestroySprite(sPassGfx->symbolSprites[i]);
            sPassGfx->symbolSprites[i] = NULL;
        }
    }
    FreeAllSpritePalettes();
    FreeSpriteTilesByTag(TAG_MEDAL_SILVER);
    FreeSpriteTilesByTag(TAG_CURSOR);
    FreeSpriteTilesByTag(TAG_FIELD_MUGSHOT);
    FreeSpriteTilesByTag(TAG_MINICARD_PLAYER_PIC);
    FreeSpriteTilesByTag(TAG_TROPHY);
    for (i = 0; i < FRONTIER_PASS_CARD_HIGHLIGHT_COUNT; i++)
        FreeSpriteTilesByTag(TAG_CARD_HIGHLIGHT_TOP_LEFT + i);
}

static void SpriteCB_PlayerHead(struct Sprite *sprite)
{

}

// Frontier Map code.

// Forward declarations.
static void Task_HandleFrontierMap(u8 taskId);
static void PrintOnFrontierMap(void);
static void InitFrontierMapSprites(void);
static void HandleFrontierMapCursorMove(u8 direction);

static void ShowFrontierMap(void (*callback)(void))
{
    if (sMapData != NULL)
        SetMainCallback2(callback); // This line doesn't make sense at all, since it gets overwritten later anyway.

    sMapData = AllocZeroed(sizeof(*sMapData));
    sMapData->callback = callback;
    ResetTasks();
    ReleaseComfyAnims();
    CreateTask(Task_HandleFrontierMap, 0);
    SetMainCallback2(CB2_FrontierPass);
}

static void FreeFrontierMap(void)
{
    ResetTasks();
    ReleaseComfyAnims();
    SetMainCallback2(sMapData->callback);
    memset(sMapData, 0, sizeof(*sMapData)); // Pointless memory clear.
    FREE_AND_SET_NULL(sMapData);
}

static bool32 InitFrontierMap(void)
{
    switch (sPassData->state)
    {
    case 0:
        SetVBlankCallback(NULL);
        ScanlineEffect_Stop();
        SetVBlankHBlankCallbacksToNull();
        break;
    case 1:
        ResetGpuRegsAndBgs();
        break;
    case 2:
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        ResetTempTileDataBuffers();
        break;
    case 3:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sMapBgTemplates, ARRAY_COUNT(sMapBgTemplates));
        SetBgTilemapBuffer(0, sMapData->tilemapBuff0);
        SetBgTilemapBuffer(1, sMapData->tilemapBuff1);
        SetBgTilemapBuffer(2, sMapData->tilemapBuff2);
        FillBgTilemapBufferRect_Palette0(0, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        FillBgTilemapBufferRect_Palette0(1, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, DISPLAY_TILE_WIDTH, DISPLAY_TILE_HEIGHT);
        CopyBgTilemapBufferToVram(0);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(2);
        break;
    case 4:
        InitWindows(sMapWindowTemplates);
        DeactivateAllTextPrinters();
        PrintOnFrontierMap();
        DecompressAndCopyTileDataToVram(1, sMapScreen_Gfx, 0, 0, 0);
        break;
    case 5:
        if (FreeTempTileDataBuffersIfPossible())
            return FALSE;
        LoadPalette(gFrontierPassBg_Pal, BG_PLTT_ID(0), NUM_BG_PAL_SLOTS * PLTT_SIZE_4BPP);
        LoadPalette(GetTextWindowPalette(0), BG_PLTT_ID(15), PLTT_SIZE_4BPP);
        CopyToBgTilemapBuffer(2, sMapScreen_Tilemap, 0, 0);
        CopyBgTilemapBufferToVram(2);
        break;
    case 6:
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP);
        ShowBg(0);
        ShowBg(1);
        ShowBg(2);
        InitFrontierMapSprites();
        SetVBlankCallback(VBlankCB_FrontierPass);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        break;
    case 7:
        if (UpdatePaletteFade())
            return FALSE;
        sPassData->state = 0;
        return TRUE;
    }

    sPassData->state++;
    return FALSE;
}

static bool32 ExitFrontierMap(void)
{
    switch (sPassData->state)
    {
    case 0:
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        break;
    case 1:
        if (UpdatePaletteFade())
            return FALSE;
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        HideBg(0);
        HideBg(1);
        HideBg(2);
        break;
    case 2:
        SetVBlankCallback(NULL);
        ScanlineEffect_Stop();
        SetVBlankHBlankCallbacksToNull();
        break;
    case 3:
        if (sMapData->cursorSprite != NULL)
        {
            DestroySprite(sMapData->cursorSprite);
            FreeSpriteTilesByTag(TAG_CURSOR);
        }
        if (sMapData->mapIndicatorSprite != NULL)
        {
            DestroySprite(sMapData->mapIndicatorSprite);
            FreeSpriteTilesByTag(TAG_MAP_INDICATOR);
        }
        if (sMapData->playerHeadSprite != NULL)
        {
            DestroySprite(sMapData->playerHeadSprite);
            FreeSpriteTilesByTag(TAG_HEAD_MALE);
        }
        FreeAllWindowBuffers();
        break;
    case 4:
        ResetGpuRegsAndBgs();
        ResetSpriteData();
        FreeAllSpritePalettes();
        break;
    case 5:
        UnsetBgTilemapBuffer(0);
        UnsetBgTilemapBuffer(1);
        UnsetBgTilemapBuffer(2);
        sPassData->state = 0;
        return TRUE;
    }

    sPassData->state++;
    return FALSE;
}

#define tState     data[0]
#define tMoveSteps data[1]

static void Task_HandleFrontierMap(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (tState)
    {
    case 0:
        if (InitFrontierMap())
            break;
        return;
    case 1:
        if (JOY_NEW(B_BUTTON))
        {
            PlaySE(SE_PC_OFF);
            tState = 4;
        }
        else if (JOY_NEW(DPAD_DOWN))
        {
            if (sMapData->cursorPos >= NUM_FRONTIER_FACILITIES - 1)
                HandleFrontierMapCursorMove(0);
            else
                tState = 2;
        }
        else if (JOY_NEW(DPAD_UP))
        {
            if (sMapData->cursorPos == 0)
                HandleFrontierMapCursorMove(1);
            else
                tState = 3;
        }
        return;
    case 2:
        if (tMoveSteps > 3)
        {
            HandleFrontierMapCursorMove(0);
            tMoveSteps = 0;
            tState = 1;
        }
        else
        {
            sMapData->cursorSprite->y += 4;
            tMoveSteps++;
        }
        return;
    case 3:
        if (tMoveSteps > 3)
        {
            HandleFrontierMapCursorMove(1);
            tMoveSteps = 0;
            tState = 1;
        }
        else
        {
            sMapData->cursorSprite->y -= 4;
            tMoveSteps++;
        }
        return;
    case 4:
        if (ExitFrontierMap())
            break;
        return;
    case 5:
        DestroyTask(taskId);
        FreeFrontierMap();
        return;
    }

    tState++;
}

static u8 MapNumToFrontierFacilityId(u16 mapNum) // id + 1, zero means not a frontier map number
{
    // In Battle Tower
    if ((mapNum >= MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_TOWER_LOBBY) && mapNum <= MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_TOWER_BATTLE_ROOM))
     || (mapNum >= MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_TOWER_MULTI_PARTNER_ROOM) && mapNum <= MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_TOWER_MULTI_BATTLE_ROOM)))
        return FRONTIER_FACILITY_TOWER + 1;

    // In Battle Dome
    else if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_DOME_LOBBY)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_DOME_CORRIDOR)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_DOME_PRE_BATTLE_ROOM)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_DOME_BATTLE_ROOM))
        return FRONTIER_FACILITY_DOME + 1;

    // In Battle Palace
    else if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PALACE_LOBBY)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PALACE_CORRIDOR)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PALACE_BATTLE_ROOM))
        return FRONTIER_FACILITY_PALACE + 1;

    // In Battle Arena
    else if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_ARENA_LOBBY)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_ARENA_CORRIDOR)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_ARENA_BATTLE_ROOM))
        return FRONTIER_FACILITY_ARENA + 1;

    // In Battle Factory
    else if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_FACTORY_LOBBY)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_FACTORY_PRE_BATTLE_ROOM)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_FACTORY_BATTLE_ROOM))
        return FRONTIER_FACILITY_FACTORY + 1;

    // In Battle Pike
    else if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PIKE_LOBBY)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PIKE_CORRIDOR)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PIKE_THREE_PATH_ROOM)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PIKE_ROOM_NORMAL)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PIKE_ROOM_FINAL)
             || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PIKE_ROOM_WILD_MONS))
        return FRONTIER_FACILITY_PIKE + 1;

    // In Battle Pyramid
    else if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PYRAMID_LOBBY)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PYRAMID_FLOOR)
        || mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_BATTLE_PYRAMID_TOP))
        return FRONTIER_FACILITY_PYRAMID + 1;

    else
        return 0;
}

static void InitFrontierMapSprites(void)
{
    struct SpriteTemplate sprite;
    u8 spriteId;
    u8 id;
    s16 x = 0, y;

    FreeAllSpritePalettes();
    LoadSpritePalettes(sSpritePalettes);

    LoadCompressedSpriteSheet(&sCursorSpriteSheets[0]);
    spriteId = CreateSprite(&sSpriteTemplates_Cursors[0], 155, (sMapData->cursorPos * 16) + 8, 2);
    sMapData->cursorSprite = &gSprites[spriteId];
    sMapData->cursorSprite->oam.priority = 0;
    sMapData->cursorSprite->hFlip = TRUE;
    StartSpriteAnim(sMapData->cursorSprite, 1);

    LoadCompressedSpriteSheet(&sCursorSpriteSheets[1]);
    spriteId = CreateSprite(&sSpriteTemplates_Cursors[1], sMapLandmarks[sMapData->cursorPos].x, sMapLandmarks[sMapData->cursorPos].y, 1);
    sMapData->mapIndicatorSprite = &gSprites[spriteId];
    sMapData->mapIndicatorSprite->oam.priority = 0;
    StartSpriteAnim(sMapData->mapIndicatorSprite, sMapLandmarks[sMapData->cursorPos].animNum);

    // Create player indicator head sprite only if it's in vicinity of battle frontier.
    id = GetCurrentRegionMapSectionId();
    if (id == MAPSEC_BATTLE_FRONTIER || id == MAPSEC_ARTISAN_CAVE)
    {
        s8 mapNum = gSaveBlock1Ptr->location.mapNum;

        if (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_OUTSIDE_WEST)
            || (mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_OUTSIDE_EAST) && (x = 55)))
        {
            x += gSaveBlock1Ptr->pos.x;
            y = gSaveBlock1Ptr->pos.y;

            x /= 8;
            y /= 8;

            id = 0;
        }
        else
        {
            id = MapNumToFrontierFacilityId(mapNum);
            if (id != 0)
            {
                x = sMapLandmarks[id - 1].x;
                y = sMapLandmarks[id - 1].y;
            }
            else
            {
                // Handle Artisan Cave.
                if (gSaveBlock1Ptr->escapeWarp.mapNum == MAP_NUM(MAP_BATTLE_FRONTIER_OUTSIDE_EAST))
                    x = gSaveBlock1Ptr->escapeWarp.x + 55;
                else
                    x = gSaveBlock1Ptr->escapeWarp.x;

                y = gSaveBlock1Ptr->escapeWarp.y;

                x /= 8;
                y /= 8;
            }
        }

        LoadCompressedSpriteSheet(sHeadsSpriteSheet);
        sprite = sSpriteTemplate_PlayerHead;
        sprite.paletteTag = gSaveBlock2Ptr->playerGender + TAG_HEAD_MALE; // TAG_HEAD_FEMALE if gender is FEMALE
        if (id != 0)
        {
            spriteId = CreateSprite(&sprite, x, y, 0);
        }
        else
        {
            x *= 8;
            y *= 8;
            spriteId = CreateSprite(&sprite, x + 20, y + 36, 0);
        }

        sMapData->playerHeadSprite = &gSprites[spriteId];
        sMapData->playerHeadSprite->oam.priority = 0;
        if (gSaveBlock2Ptr->playerGender != MALE)
            StartSpriteAnim(sMapData->playerHeadSprite, 1);
    }
}

static void PrintOnFrontierMap(void)
{
    u8 i;

    for (i = 0; i < MAP_WINDOW_COUNT; i++)
    {
        PutWindowTilemap(i);
        FillWindowPixelBuffer(i, PIXEL_FILL(0));
    }

    for (i = 0; i < NUM_FRONTIER_FACILITIES; i++)
    {
        if (i == sMapData->cursorPos)
            AddTextPrinterParameterized3(MAP_WINDOW_NAME, FONT_NARROW, 4, (i * 16) + 1, sTextColors[2], 0, sMapLandmarks[i].name);
        else
            AddTextPrinterParameterized3(MAP_WINDOW_NAME, FONT_NARROW, 4, (i * 16) + 1, sTextColors[1], 0, sMapLandmarks[i].name);
    }

    AddTextPrinterParameterized3(MAP_WINDOW_DESCRIPTION, FONT_NORMAL, 4, 0, sTextColors[0], 0, sMapLandmarks[sMapData->cursorPos].description);

    for (i = 0; i < MAP_WINDOW_COUNT; i++)
        CopyWindowToVram(i, COPYWIN_FULL);

    CopyBgTilemapBufferToVram(0);
}

static void HandleFrontierMapCursorMove(u8 direction)
{
    u8 oldCursorPos, i;

    if (direction)
    {
        oldCursorPos = sMapData->cursorPos;
        sMapData->cursorPos = (oldCursorPos + 6) % NUM_FRONTIER_FACILITIES;
    }
    else
    {
        oldCursorPos = sMapData->cursorPos;
        sMapData->cursorPos = (oldCursorPos + 1) % NUM_FRONTIER_FACILITIES;
    }

    AddTextPrinterParameterized3(MAP_WINDOW_NAME, FONT_NARROW, 4, (oldCursorPos * 16) + 1, sTextColors[1], 0, sMapLandmarks[oldCursorPos].name);
    AddTextPrinterParameterized3(MAP_WINDOW_NAME, FONT_NARROW, 4, (sMapData->cursorPos * 16) + 1, sTextColors[2], 0, sMapLandmarks[sMapData->cursorPos].name);

    sMapData->cursorSprite->y = (sMapData->cursorPos * 16) + 8;

    StartSpriteAnim(sMapData->mapIndicatorSprite, sMapLandmarks[sMapData->cursorPos].animNum);
    sMapData->mapIndicatorSprite->x = sMapLandmarks[sMapData->cursorPos].x;
    sMapData->mapIndicatorSprite->y = sMapLandmarks[sMapData->cursorPos].y;
    FillWindowPixelBuffer(MAP_WINDOW_DESCRIPTION, PIXEL_FILL(0));
    AddTextPrinterParameterized3(MAP_WINDOW_DESCRIPTION, FONT_NORMAL, 4, 0, sTextColors[0], 0, sMapLandmarks[sMapData->cursorPos].description);

    for (i = 0; i < MAP_WINDOW_COUNT; i++)
        CopyWindowToVram(i, COPYWIN_FULL);

    CopyBgTilemapBufferToVram(0);
    PlaySE(SE_DEX_SCROLL);
}
