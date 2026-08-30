// radio.c
// Pokemon Radio - Key Item Screen
//
// Stations (SELECT cycles):
//   ALL              -> every BGM track
//   ANIME RADIO      -> anime / anime-film music
//   OTHER-WORLD      -> real-world artists / bands
//   AMATERASU RADIO  -> pop / dance-pop
//   INDIE ROCK RADIO -> indie / alternative rock
//
// Controls:
//   A           -> Play / Pause
//   START       -> Open Radio Menu (large left-side MENU button)
//   SELECT      -> Cycle station (large left-side CHANGE STATION button)
//   L / LEFT    -> Previous track
//   R / RIGHT   -> Next track
//   B           -> Close (music keeps playing)
//
// Radio Menu includes:
//   SEARCH A-Z / FAVORITES / MY PLAYLIST / FAVORITE CURRENT /
//   ADD TO PLAYLIST / RADIO PRIORITY / REPEAT / SHUFFLE / RETURN
//
// Radio Menu:
//   SEARCH A-Z, FAVORITES, MY PLAYLIST, FAVORITE CURRENT,
//   ADD TO PLAYLIST, SHUFFLE and RETURN.
// Favorites / playlist are session-persistent in EWRAM for now.
// Save-file persistence can be added later.

#include "global.h"
#include "bg.h"
#include "comfy_anim.h"
#include "decompress.h"
#include "field_screen_effect.h"
#include "gpu_regs.h"
#include "m4a.h"
#include "gba/m4a_internal.h"
#include "main.h"
#include "map_name_popup.h"
#include "malloc.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "script.h"
#include "scanline_effect.h"
#include "sound.h"
#include "sprite.h"
#include "string_util.h"
#include "strings.h"
#include "task.h"
#include "window.h"
#include "radio.h"
#include "constants/rgb.h"
#include "constants/songs.h"

// ===========================================================================
// Persistent EWRAM state — declared first so all functions can see them
// ===========================================================================
static EWRAM_DATA MainCallback sRadioReturnCallback = NULL;
static EWRAM_DATA u16          sRadioCurrentSong    = 0;
static EWRAM_DATA bool8        sRadioIsPlaying       = FALSE;
static EWRAM_DATA u8           sRadioStation         = 0; // 0 = STATION_ALL
static EWRAM_DATA u16          sRadioStationIndex    = 0;

// Song-title marquee state.
// Long song/artist labels scroll horizontally like a real radio display.
#define RADIO_MARQUEE_TEXT_SIZE      96
#define RADIO_MARQUEE_VISIBLE_CHARS  28
#define RADIO_MARQUEE_GAP_CHARS       6
#define RADIO_MARQUEE_DELAY_FRAMES    8

static EWRAM_DATA u8   sRadioMarqueeText[RADIO_MARQUEE_TEXT_SIZE];
static EWRAM_DATA u16  sRadioMarqueeLength;
static EWRAM_DATA u16  sRadioMarqueeOffset;
static EWRAM_DATA u8   sRadioMarqueeTimer;
static EWRAM_DATA bool8 sRadioMarqueeEnabled;

// Independent top-row marquee: "NOW PLAYING <STATION>".
#define RADIO_STATUS_MARQUEE_TEXT_SIZE      64
#define RADIO_STATUS_MARQUEE_VISIBLE_CHARS  14
#define RADIO_STATUS_MARQUEE_GAP_CHARS       4
#define RADIO_STATUS_MARQUEE_DELAY_FRAMES    8

static EWRAM_DATA u8   sRadioStatusMarqueeText[RADIO_STATUS_MARQUEE_TEXT_SIZE];
static EWRAM_DATA u16  sRadioStatusMarqueeLength;
static EWRAM_DATA u16  sRadioStatusMarqueeOffset;
static EWRAM_DATA u8   sRadioStatusMarqueeTimer;
static EWRAM_DATA bool8 sRadioStatusMarqueeEnabled;

// Now Playing popup state.
//
// V6.3 intentionally keeps only ONE pending popup. If the player changes
// tracks several times while a popup is visible, the visible popup is updated
// in place to the newest song instead of building a long popup backlog.
static EWRAM_DATA u16 sRadioPopupPendingSong;

// ---------------------------------------------------------------------------
// Radio library / menu state.
// V1 is intentionally EWRAM-only: favorites and playlist survive closing the
// radio during the current play session, but reset after a hard reset/power-off.
// ---------------------------------------------------------------------------
#define RADIO_LIBRARY_CAPACITY     32
#define RADIO_SEARCH_CAPACITY      64
#define RADIO_MENU_ITEM_COUNT       9
#define RADIO_SEARCH_LETTER_COUNT  26

enum RadioUiMode
{
    RADIO_UI_MAIN = 0,
    RADIO_UI_MENU,
    RADIO_UI_SEARCH_LETTER,
    RADIO_UI_SEARCH_RESULTS,
    RADIO_UI_FAVORITES,
    RADIO_UI_PLAYLIST,
};

enum RadioMenuItem
{
    RADIO_MENU_SEARCH = 0,
    RADIO_MENU_FAVORITES,
    RADIO_MENU_PLAYLIST,
    RADIO_MENU_TOGGLE_FAVORITE,
    RADIO_MENU_ADD_PLAYLIST,
    RADIO_MENU_PRIORITY,
    RADIO_MENU_REPEAT,
    RADIO_MENU_SHUFFLE,
    RADIO_MENU_RETURN,
};

static EWRAM_DATA u8    sRadioUiMode;
static EWRAM_DATA u8    sRadioMenuCursor;
static EWRAM_DATA u8    sRadioListCursor;
static EWRAM_DATA u8    sRadioSearchLetter;
static EWRAM_DATA u8    sRadioSearchResultCount;
static EWRAM_DATA u16   sRadioSearchResults[RADIO_SEARCH_CAPACITY];

static EWRAM_DATA u8    sRadioFavoritesCount;
static EWRAM_DATA u16   sRadioFavorites[RADIO_LIBRARY_CAPACITY];

static EWRAM_DATA u8    sRadioPlaylistCount;
static EWRAM_DATA u16   sRadioPlaylist[RADIO_LIBRARY_CAPACITY];

static EWRAM_DATA bool8 sRadioShuffleEnabled;
static EWRAM_DATA u32   sRadioShuffleState;
static EWRAM_DATA bool8 sRadioPriorityEnabled;
static EWRAM_DATA bool8 sRadioRepeatEnabled; // default OFF (EWRAM/BSS)

// Playback-pass monitor.
//
// Most HLW radio songs contain a GOTO loop, so they never naturally "end".
// IMPORTANT: do NOT watch only track 0. A bass/drum/accompaniment track may
// loop earlier than the melody and would falsely look like "song finished".
//
// V6.2 monitors every active M4A track and only auto-advances after ALL of
// them have reached a top-level backwards jump (or the BGM genuinely ends).
#define RADIO_MONITOR_MAX_TRACKS 16

static EWRAM_DATA u16 sRadioMonitorSong;
static EWRAM_DATA u32 sRadioMonitorCmdPtr[RADIO_MONITOR_MAX_TRACKS];
static EWRAM_DATA u8  sRadioMonitorPatternLevel[RADIO_MONITOR_MAX_TRACKS];
static EWRAM_DATA u16 sRadioMonitorExpectedMask;
static EWRAM_DATA u16 sRadioMonitorWrappedMask;
static EWRAM_DATA u16 sRadioMonitorFinishedMask;
static EWRAM_DATA u16 sRadioMonitorRuntimeFrames;
static EWRAM_DATA u8  sRadioMonitorWrapWindow;
static EWRAM_DATA u8  sRadioMonitorWarmup;

#define RADIO_MONITOR_MIN_RUNTIME_FRAMES  600  // 10 seconds
#define RADIO_MONITOR_WRAP_WINDOW_FRAMES  90   // tracks must wrap ~together

// Overworld media-key guard.
// R/L in the Radio UI do not use these public functions, so this debounce is
// exclusively for field controls.
#define RADIO_OVERWORLD_SKIP_COOLDOWN 12
static EWRAM_DATA u8 sRadioOverworldSkipCooldown;

// Sprite IDs — initialized to 0xFF in Radio_Open() before first use.
// Cannot use = 0xFF at declaration: that forces the variable into .data (discarded in GBA ROM).
static EWRAM_DATA u8 sRadioJigSpriteId;
static EWRAM_DATA u8 sRadioStereo1Id;
static EWRAM_DATA u8 sRadioStereo2Id;
static EWRAM_DATA u8 sRadioBtnPlayId;
static EWRAM_DATA u8 sRadioBtnPauseId;
static EWRAM_DATA u8 sRadioBtnNextId;
static EWRAM_DATA u8 sRadioBtnBackId;
static EWRAM_DATA u8 sRadioBtnOffId;
static EWRAM_DATA u8 sRadioBtnStartId;
static EWRAM_DATA u8 sRadioBtnSelectId;

// ===========================================================================
// Graphics
// ===========================================================================
static const u16 sRadioBg_Pal[]     = INCBIN_U16("graphics/radio/radiobg.gbapal");
static const u32 sRadioBg_Gfx[]     = INCBIN_U32("graphics/radio/radiobg.4bpp.smol");
static const u16 sRadioBg_Tilemap[] = INCBIN_U16("graphics/radio/radiobg.bin");

// Jigglypuff — 4 frames 64x64 empilhados verticalmente (64x256 total)
// Sheet: 4 × (64×64×4bpp/2) = 4 × 2048 = 8192 = 0x2000 bytes
static const u16 sRadioJig_Pal[] = INCBIN_U16("graphics/radio/jig.gbapal");
static const u32 sRadioJig_Gfx[] = INCBIN_U32("graphics/radio/jig.4bpp.smol");

// Stereo — 1 frame 64x64, affine pulsing (speaker effect)
// Sheet: 1 × 2048 = 0x800 bytes
static const u16 sRadioStereo_Pal[] = INCBIN_U16("graphics/radio/stereo.gbapal");
static const u32 sRadioStereo_Gfx[] = INCBIN_U32("graphics/radio/stereo.4bpp.smol");

// ---------------------------------------------------------------------------
// Tags de sprite — valores arbitrários únicos no projeto
// ---------------------------------------------------------------------------
#define TAG_RADIO_JIG    0xD100
#define TAG_RADIO_STEREO 0xD101

// ---------------------------------------------------------------------------
// OAM data
// ---------------------------------------------------------------------------
static const struct OamData sOamData_RadioJig =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .priority   = 0,  // drawn in front of everything
};

// Stereo uses affine DOUBLE so it can scale beyond its original size without clipping
static const struct OamData sOamData_RadioStereo =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_DOUBLE,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .matrixNum  = 0,  // matrix OAM slot 0
    .priority   = 0,
};

// ---------------------------------------------------------------------------
// Anims — Jigglypuff: 4 frames, 8 game-frames cada (~15fps)
// ---------------------------------------------------------------------------
// Tile offsets: frame0=0, frame1=64, frame2=128, frame3=192
// (cada frame 64x64 4bpp = 64 tiles de 8x8)
static const union AnimCmd sAnim_RadioJig[] =
{
    ANIMCMD_FRAME(  0, 8),
    ANIMCMD_FRAME( 64, 8),
    ANIMCMD_FRAME(128, 8),
    ANIMCMD_FRAME(192, 8),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_RadioJig[] =
{
    sAnim_RadioJig,
};

// Stereo: single static frame — pulsing is done via SetOamMatrix in the callback
static const union AnimCmd sAnim_RadioStereo[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_RadioStereo[] =
{
    sAnim_RadioStereo,
};

// ---------------------------------------------------------------------------
// SpriteSheets e Palettes
// ---------------------------------------------------------------------------
static const struct CompressedSpriteSheet sSpriteSheet_RadioJig[] =
{
    {sRadioJig_Gfx, 0x2000, TAG_RADIO_JIG},  // 4 frames × 2048 bytes
    {},
};
static const struct SpritePalette sSpritePalette_RadioJig[] =
{
    {sRadioJig_Pal, TAG_RADIO_JIG},
    {},
};

static const struct CompressedSpriteSheet sSpriteSheet_RadioStereo[] =
{
    {sRadioStereo_Gfx, 0x800, TAG_RADIO_STEREO},  // 1 frame × 2048 bytes
    {},
};
static const struct SpritePalette sSpritePalette_RadioStereo[] =
{
    {sRadioStereo_Pal, TAG_RADIO_STEREO},
    {},
};

// ---------------------------------------------------------------------------
// Forward declarations dos callbacks
// ---------------------------------------------------------------------------
static void SpriteCB_RadioJig(struct Sprite *sprite);
static void SpriteCB_RadioStereo(struct Sprite *sprite);

// ---------------------------------------------------------------------------
// SpriteTemplates
// ---------------------------------------------------------------------------
static const struct SpriteTemplate sSpriteTemplate_RadioJig =
{
    .tileTag     = TAG_RADIO_JIG,
    .paletteTag  = TAG_RADIO_JIG,
    .oam         = &sOamData_RadioJig,
    .anims       = sAnims_RadioJig,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCB_RadioJig,
};

static const struct SpriteTemplate sSpriteTemplate_RadioStereo =
{
    .tileTag     = TAG_RADIO_STEREO,
    .paletteTag  = TAG_RADIO_STEREO,
    .oam         = &sOamData_RadioStereo,
    .anims       = sAnims_RadioStereo,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,  // escala manual via SetOamMatrix
    .callback    = SpriteCB_RadioStereo,
};

// ===========================================================================
// Button sprites — 5 buttons, each 16x16px, 2 frames (frame0=normal, frame1=pressed)
// Sheet per button: 2 frames × (16×16 / 2 bytes per px 4bpp) = 2 × 128 = 256 = 0x100
// BUT the PNG is 32x16 (both frames side by side), so decompressed = 0x200 bytes.
// ===========================================================================
static const u16 sRadioBtn_Play_Pal[]  = INCBIN_U16("graphics/radio/play.gbapal");
static const u32 sRadioBtn_Play_Gfx[]  = INCBIN_U32("graphics/radio/play.4bpp.smol");
static const u16 sRadioBtn_Pause_Pal[] = INCBIN_U16("graphics/radio/pause.gbapal");
static const u32 sRadioBtn_Pause_Gfx[] = INCBIN_U32("graphics/radio/pause.4bpp.smol");
static const u16 sRadioBtn_Next_Pal[]  = INCBIN_U16("graphics/radio/next.gbapal");
static const u32 sRadioBtn_Next_Gfx[]  = INCBIN_U32("graphics/radio/next.4bpp.smol");
static const u16 sRadioBtn_Back_Pal[]  = INCBIN_U16("graphics/radio/back.gbapal");
static const u32 sRadioBtn_Back_Gfx[]  = INCBIN_U32("graphics/radio/back.4bpp.smol");
static const u16 sRadioBtn_Off_Pal[]   = INCBIN_U16("graphics/radio/off.gbapal");
static const u32 sRadioBtn_Off_Gfx[]   = INCBIN_U32("graphics/radio/off.4bpp.smol");

// New large buttons supplied by the UI layout.
// start.png:  32x64 = two 32x32 frames stacked vertically.
// select.png: 64x128 = two 64x64 frames stacked vertically.
static const u16 sRadioBtn_Start_Pal[]  = INCBIN_U16("graphics/radio/start.gbapal");
static const u32 sRadioBtn_Start_Gfx[]  = INCBIN_U32("graphics/radio/start.4bpp.smol");
static const u16 sRadioBtn_Select_Pal[] = INCBIN_U16("graphics/radio/select.gbapal");

// select.png is 64x128:
//   top 64x64    = normal frame
//   bottom 64x64 = pressed frame
static const u32 sRadioBtn_Select_Gfx[] = INCBIN_U32("graphics/radio/select.4bpp.smol");

#define TAG_RADIO_BTN_PLAY   0xD102
#define TAG_RADIO_BTN_PAUSE  0xD103
#define TAG_RADIO_BTN_NEXT   0xD104
#define TAG_RADIO_BTN_BACK   0xD105
#define TAG_RADIO_BTN_OFF    0xD106
#define TAG_RADIO_BTN_START  0xD107
#define TAG_RADIO_BTN_SELECT 0xD108

// Button top-left positions in GBA screen pixels (240x160).
// Measured pixel-perfect from the reference layout image, shifted +7px right and +7px down.
// Layout:
//   [PLAY][PAUSE]         [OFF]
//   [BACK][NEXT]
//
// To fine-tune a button by a few pixels, adjust only its _X or _Y define here.
// Each unit = 1 GBA pixel. Positive X moves right, positive Y moves down.
#define RADIO_BTN_PLAY_X   162   // 155 + 7
#define RADIO_BTN_PLAY_Y    63   //  56 + 7
#define RADIO_BTN_PAUSE_X  181   // 174 + 7
#define RADIO_BTN_PAUSE_Y   63   //  56 + 7
#define RADIO_BTN_BACK_X   162   // 155 + 7
#define RADIO_BTN_BACK_Y    86   //  79 + 7
#define RADIO_BTN_NEXT_X   181   // 174 + 7
#define RADIO_BTN_NEXT_Y    86   //  79 + 7
#define RADIO_BTN_OFF_X    225   // 218 + 7
#define RADIO_BTN_OFF_Y     18   //  11 + 7

// New left-side controls from the redesigned radio face.
#define RADIO_BTN_START_X   26
#define RADIO_BTN_START_Y   38
#define RADIO_BTN_SELECT_X  26
#define RADIO_BTN_SELECT_Y  70

#define JOY_RELEASED(b)   ((~(gMain.newKeys) & gMain.heldKeys & (b)) != 0)

static const struct OamData sOamData_RadioBtn =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(16x16),
    .size       = SPRITE_SIZE(16x16),
    .priority   = 0,
};

// anim 0 = normal (frame 0), anim 1 = pressed (frame 1, tile offset 4)
static const union AnimCmd sAnim_RadioBtn_Normal[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd sAnim_RadioBtn_Pressed[] =
{
    ANIMCMD_FRAME(4, 1),
    ANIMCMD_JUMP(0),
};
static const union AnimCmd *const sAnims_RadioBtn[] =
{
    sAnim_RadioBtn_Normal,   // anim 0
    sAnim_RadioBtn_Pressed,  // anim 1
};

// ---------------------------------------------------------------------------
// Large START button
// start.png = 32x64, two 32x32 frames stacked vertically.
// One 32x32 4bpp frame = 16 tiles, so pressed frame starts at tile 16.
// ---------------------------------------------------------------------------
static const struct OamData sOamData_RadioBtnStart =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(32x32),
    .size       = SPRITE_SIZE(32x32),
    .priority   = 0,
};

static const union AnimCmd sAnim_RadioBtnStart_Normal[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sAnim_RadioBtnStart_Pressed[] =
{
    ANIMCMD_FRAME(16, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_RadioBtnStart[] =
{
    sAnim_RadioBtnStart_Normal,
    sAnim_RadioBtnStart_Pressed,
};

// ---------------------------------------------------------------------------
// Large CHANGE STATION / SELECT button.
//
// CONFIRMED ASSET:
//   select.png = 64x128
//   frame 0    = top 64x64
//   frame 1    = bottom 64x64
//
// A 64x64 4bpp frame uses 64 tiles, so frame 1 starts at tile 64.
// ---------------------------------------------------------------------------
static const struct OamData sOamData_RadioBtnSelect =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .priority   = 0,
};

static const union AnimCmd sAnim_RadioBtnSelect_Normal[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sAnim_RadioBtnSelect_Pressed[] =
{
    ANIMCMD_FRAME(64, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_RadioBtnSelect[] =
{
    sAnim_RadioBtnSelect_Normal,
    sAnim_RadioBtnSelect_Pressed,
};


// Each button has its own tag (different graphics)
// Sheet size = 0x200: 32x16 PNG = 2 frames of 16x16 side-by-side = 512 decompressed bytes
#define DEFINE_BTN_SHEET(name, tag) \
static const struct CompressedSpriteSheet sSpriteSheet_##name[] = \
{ \
    {sRadioBtn_##name##_Gfx, 0x100, tag}, \
    {}, \
}; \
static const struct SpritePalette sSpritePalette_##name[] = \
{ \
    {sRadioBtn_##name##_Pal, tag}, \
    {}, \
};

DEFINE_BTN_SHEET(Play,  TAG_RADIO_BTN_PLAY)
DEFINE_BTN_SHEET(Pause, TAG_RADIO_BTN_PAUSE)
DEFINE_BTN_SHEET(Next,  TAG_RADIO_BTN_NEXT)
DEFINE_BTN_SHEET(Back,  TAG_RADIO_BTN_BACK)
DEFINE_BTN_SHEET(Off,   TAG_RADIO_BTN_OFF)

#define DEFINE_BTN_TEMPLATE(name, tag) \
static const struct SpriteTemplate sSpriteTemplate_RadioBtn_##name = \
{ \
    .tileTag     = tag, \
    .paletteTag  = tag, \
    .oam         = &sOamData_RadioBtn, \
    .anims       = sAnims_RadioBtn, \
    .images      = NULL, \
    .affineAnims = gDummySpriteAffineAnimTable, \
    .callback    = SpriteCallbackDummy, \
};

DEFINE_BTN_TEMPLATE(Play,  TAG_RADIO_BTN_PLAY)
DEFINE_BTN_TEMPLATE(Pause, TAG_RADIO_BTN_PAUSE)
DEFINE_BTN_TEMPLATE(Next,  TAG_RADIO_BTN_NEXT)
DEFINE_BTN_TEMPLATE(Back,  TAG_RADIO_BTN_BACK)
DEFINE_BTN_TEMPLATE(Off,   TAG_RADIO_BTN_OFF)

// START: 32x64 total 4bpp image = 0x400 decompressed bytes.
static const struct CompressedSpriteSheet sSpriteSheet_Start[] =
{
    {sRadioBtn_Start_Gfx, 0x400, TAG_RADIO_BTN_START},
    {},
};

static const struct SpritePalette sSpritePalette_Start[] =
{
    {sRadioBtn_Start_Pal, TAG_RADIO_BTN_START},
    {},
};

static const struct SpriteTemplate sSpriteTemplate_RadioBtn_Start =
{
    .tileTag     = TAG_RADIO_BTN_START,
    .paletteTag  = TAG_RADIO_BTN_START,
    .oam         = &sOamData_RadioBtnStart,
    .anims       = sAnims_RadioBtnStart,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

// SELECT: 64x128 total 4bpp image = 0x1000 decompressed bytes.
static const struct CompressedSpriteSheet sSpriteSheet_Select[] =
{
    {sRadioBtn_Select_Gfx, 0x1000, TAG_RADIO_BTN_SELECT},
    {},
};

static const struct SpritePalette sSpritePalette_Select[] =
{
    {sRadioBtn_Select_Pal, TAG_RADIO_BTN_SELECT},
    {},
};

static const struct SpriteTemplate sSpriteTemplate_RadioBtn_Select =
{
    .tileTag     = TAG_RADIO_BTN_SELECT,
    .paletteTag  = TAG_RADIO_BTN_SELECT,
    .oam         = &sOamData_RadioBtnSelect,
    .anims       = sAnims_RadioBtnSelect,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

// ---------------------------------------------------------------------------
// Button helpers
// ---------------------------------------------------------------------------
static void Radio_PressButton(u8 spriteId)
{
    if (spriteId != 0xFF)
        StartSpriteAnim(&gSprites[spriteId], 1);
}

static void Radio_ReleaseButton(u8 spriteId)
{
    if (spriteId != 0xFF)
        StartSpriteAnim(&gSprites[spriteId], 0);
}

// PLAY locked on frame1 while playing; PAUSE locked on frame1 while paused.
// Both are always visible — frame1 = "this state is active".
static void Radio_UpdatePlayPauseButtons(bool8 playing)
{
    if (sRadioBtnPlayId  != 0xFF) StartSpriteAnim(&gSprites[sRadioBtnPlayId],  playing ? 1 : 0);
    if (sRadioBtnPauseId != 0xFF) StartSpriteAnim(&gSprites[sRadioBtnPauseId], playing ? 0 : 1);
}

// ===========================================================================
// BG templates
// BG0 = text windows  (charbase 0, screenbase 31)
// BG1 = radio tileset (charbase 2, screenbase 8)  -- loaded directly into VRAM
// ===========================================================================
static const struct BgTemplate sRadioBgTemplates[] =
{
    {
        .bg            = 0,
        .charBaseIndex = 0,
        .mapBaseIndex  = 31,
        .screenSize    = 0,
        .paletteMode   = 0,
        .priority      = 0,
        .baseTile      = 0,
    },
    {
        .bg            = 1,
        .charBaseIndex = 2,
        .mapBaseIndex  = 8,
        .screenSize    = 0,
        .paletteMode   = 0,
        .priority      = 1,
        .baseTile      = 0,
    },
};

// ===========================================================================
// Window templates
// ===========================================================================
#define WIN_MUSIC_INFO  0

#define WIN_MUSIC_INFO_BASE_BLOCK   0x20

static const struct WindowTemplate sRadioWindowTemplates[] =
{
    [WIN_MUSIC_INFO] =
    {
        .bg          = 0,
        .tilemapLeft = 1,
        .tilemapTop  = 13,
        .width       = 28,
        .height      = 6,
        .paletteNum  = 15,
        .baseBlock   = WIN_MUSIC_INFO_BASE_BLOCK,
    },
    DUMMY_WIN_TEMPLATE,
};

// ===========================================================================
// BGM name list (X-macro -- must be defined before any station list uses it)
// ===========================================================================
#define RADIO_SOUND_LIST_BGM            \
    X(MUS_LITTLEROOT_TEST)              \
    X(MUS_GSC_ROUTE38)                  \
    X(MUS_CAUGHT)                       \
    X(MUS_VICTORY_WILD)                 \
    X(MUS_VICTORY_GYM_LEADER)           \
    X(MUS_VICTORY_LEAGUE)               \
    X(MUS_C_COMM_CENTER)                \
    X(MUS_GSC_PEWTER)                   \
    X(MUS_C_VS_LEGEND_BEAST)            \
    X(MUS_ROUTE101)                     \
    X(MUS_ROUTE110)                     \
    X(MUS_ROUTE120)                     \
    X(MUS_PETALBURG)                    \
    X(MUS_OLDALE)                       \
    X(MUS_GYM)                          \
    X(MUS_SURF)                         \
    X(MUS_PETALBURG_WOODS)              \
    X(MUS_LEVEL_UP)                     \
    X(MUS_HEAL)                         \
    X(MUS_OBTAIN_BADGE)                 \
    X(MUS_OBTAIN_ITEM)                  \
    X(MUS_EVOLVED)                      \
    X(MUS_OBTAIN_TMHM)                  \
    X(MUS_LILYCOVE_MUSEUM)              \
    X(MUS_ROUTE122)                     \
    X(MUS_OCEANIC_MUSEUM)               \
    X(MUS_EVOLUTION_INTRO)              \
    X(MUS_EVOLUTION)                    \
    X(MUS_MOVE_DELETED)                 \
    X(MUS_ENCOUNTER_GIRL)               \
    X(MUS_ENCOUNTER_MALE)               \
    X(MUS_ABANDONED_SHIP)               \
    X(MUS_FORTREE)                      \
    X(MUS_BIRCH_LAB)                    \
    X(MUS_B_TOWER_RS)                   \
    X(MUS_ENCOUNTER_SWIMMER)            \
    X(MUS_CAVE_OF_ORIGIN)               \
    X(MUS_OBTAIN_BERRY)                 \
    X(MUS_AWAKEN_LEGEND)                \
    X(MUS_SLOTS_JACKPOT)                \
    X(MUS_SLOTS_WIN)                    \
    X(MUS_TOO_BAD)                      \
    X(MUS_ROULETTE)                     \
    X(MUS_LINK_CONTEST_P1)              \
    X(MUS_LINK_CONTEST_P2)              \
    X(MUS_LINK_CONTEST_P3)              \
    X(MUS_LINK_CONTEST_P4)              \
    X(MUS_ENCOUNTER_RICH)               \
    X(MUS_VERDANTURF)                   \
    X(MUS_RUSTBORO)                     \
    X(MUS_POKE_CENTER)                  \
    X(MUS_ROUTE104)                     \
    X(MUS_ROUTE119)                     \
    X(MUS_CYCLING)                      \
    X(MUS_POKE_MART)                    \
    X(MUS_LITTLEROOT)                   \
    X(MUS_MT_CHIMNEY)                   \
    X(MUS_ENCOUNTER_FEMALE)             \
    X(MUS_LILYCOVE)                     \
    X(MUS_DESERT)                       \
    X(MUS_HELP)                         \
    X(MUS_UNDERWATER)                   \
    X(MUS_VICTORY_TRAINER)              \
    X(MUS_TITLE)                        \
    X(MUS_INTRO)                        \
    X(MUS_ENCOUNTER_MAY)                \
    X(MUS_ENCOUNTER_INTENSE)            \
    X(MUS_ENCOUNTER_COOL)               \
    X(MUS_ROUTE113)                     \
    X(MUS_ENCOUNTER_AQUA)               \
    X(MUS_FOLLOW_ME)                    \
    X(MUS_ENCOUNTER_BRENDAN)            \
    X(MUS_EVER_GRANDE)                  \
    X(MUS_ENCOUNTER_SUSPICIOUS)         \
    X(MUS_VICTORY_AQUA_MAGMA)           \
    X(MUS_CABLE_CAR)                    \
    X(MUS_GAME_CORNER)                  \
    X(MUS_DEWFORD)                      \
    X(MUS_SAFARI_ZONE)                  \
    X(MUS_VICTORY_ROAD)                 \
    X(MUS_AQUA_MAGMA_HIDEOUT)           \
    X(MUS_SAILING)                      \
    X(MUS_MT_PYRE)                      \
    X(MUS_SLATEPORT)                    \
    X(MUS_MT_PYRE_EXTERIOR)             \
    X(MUS_SCHOOL)                       \
    X(MUS_HALL_OF_FAME)                 \
    X(MUS_FALLARBOR)                    \
    X(MUS_SEALED_CHAMBER)               \
    X(MUS_CONTEST_WINNER)               \
    X(MUS_CONTEST)                      \
    X(MUS_ENCOUNTER_MAGMA)              \
    X(MUS_INTRO_BATTLE)                 \
    X(MUS_ABNORMAL_WEATHER)             \
    X(MUS_WEATHER_GROUDON)              \
    X(MUS_SOOTOPOLIS)                   \
    X(MUS_CONTEST_RESULTS)              \
    X(MUS_HALL_OF_FAME_ROOM)            \
    X(MUS_TRICK_HOUSE)                  \
    X(MUS_ENCOUNTER_TWINS)              \
    X(MUS_ENCOUNTER_ELITE_FOUR)         \
    X(MUS_ENCOUNTER_HIKER)              \
    X(MUS_CONTEST_LOBBY)                \
    X(MUS_ENCOUNTER_INTERVIEWER)        \
    X(MUS_ENCOUNTER_CHAMPION)           \
    X(MUS_CREDITS)                      \
    X(MUS_END)                          \
    X(MUS_B_FRONTIER)                   \
    X(MUS_B_ARENA)                      \
    X(MUS_OBTAIN_B_POINTS)              \
    X(MUS_REGISTER_MATCH_CALL)          \
    X(MUS_B_PYRAMID)                    \
    X(MUS_B_PYRAMID_TOP)                \
    X(MUS_B_PALACE)                     \
    X(MUS_RAYQUAZA_APPEARS)             \
    X(MUS_B_TOWER)                      \
    X(MUS_OBTAIN_SYMBOL)                \
    X(MUS_B_DOME)                       \
    X(MUS_B_PIKE)                       \
    X(MUS_B_FACTORY)                    \
    X(MUS_VS_RAYQUAZA)                  \
    X(MUS_VS_FRONTIER_BRAIN)            \
    X(MUS_VS_MEW)                       \
    X(MUS_B_DOME_LOBBY)                 \
    X(MUS_VS_WILD)                      \
    X(MUS_VS_AQUA_MAGMA)                \
    X(MUS_VS_TRAINER)                   \
    X(MUS_VS_GYM_LEADER)                \
    X(MUS_VS_CHAMPION)                  \
    X(MUS_VS_REGI)                      \
    X(MUS_VS_KYOGRE_GROUDON)            \
    X(MUS_VS_RIVAL)                     \
    X(MUS_VS_ELITE_FOUR)                \
    X(MUS_VS_AQUA_MAGMA_LEADER)         \
    X(MUS_RG_FOLLOW_ME)                 \
    X(MUS_RG_GAME_CORNER)               \
    X(MUS_RG_ROCKET_HIDEOUT)            \
    X(MUS_RG_GYM)                       \
    X(MUS_RG_JIGGLYPUFF)                \
    X(MUS_RG_INTRO_FIGHT)               \
    X(MUS_RG_TITLE)                     \
    X(MUS_RG_CINNABAR)                  \
    X(MUS_RG_LAVENDER)                  \
    X(MUS_RG_HEAL)                      \
    X(MUS_RG_CYCLING)                   \
    X(MUS_RG_ENCOUNTER_ROCKET)          \
    X(MUS_RG_ENCOUNTER_GIRL)            \
    X(MUS_RG_ENCOUNTER_BOY)             \
    X(MUS_RG_HALL_OF_FAME)              \
    X(MUS_RG_VIRIDIAN_FOREST)           \
    X(MUS_RG_MT_MOON)                   \
    X(MUS_RG_POKE_MANSION)              \
    X(MUS_RG_CREDITS)                   \
    X(MUS_RG_ROUTE1)                    \
    X(MUS_RG_ROUTE24)                   \
    X(MUS_RG_ROUTE3)                    \
    X(MUS_RG_ROUTE11)                   \
    X(MUS_RG_VICTORY_ROAD)              \
    X(MUS_RG_VS_GYM_LEADER)             \
    X(MUS_RG_VS_TRAINER)                \
    X(MUS_RG_VS_WILD)                   \
    X(MUS_RG_VS_CHAMPION)               \
    X(MUS_RG_PALLET)                    \
    X(MUS_RG_OAK_LAB)                   \
    X(MUS_RG_OAK)                       \
    X(MUS_RG_POKE_CENTER)               \
    X(MUS_RG_SS_ANNE)                   \
    X(MUS_RG_SURF)                      \
    X(MUS_RG_POKE_TOWER)                \
    X(MUS_RG_SILPH)                     \
    X(MUS_RG_FUCHSIA)                   \
    X(MUS_RG_CELADON)                   \
    X(MUS_RG_VICTORY_TRAINER)           \
    X(MUS_RG_VICTORY_WILD)              \
    X(MUS_RG_VICTORY_GYM_LEADER)        \
    X(MUS_RG_VERMILLION)                \
    X(MUS_RG_PEWTER)                    \
    X(MUS_RG_ENCOUNTER_RIVAL)           \
    X(MUS_RG_RIVAL_EXIT)                \
    X(MUS_RG_DEX_RATING)                \
    X(MUS_RG_OBTAIN_KEY_ITEM)           \
    X(MUS_RG_CAUGHT_INTRO)              \
    X(MUS_RG_PHOTO)                     \
    X(MUS_RG_GAME_FREAK)                \
    X(MUS_RG_CAUGHT)                    \
    X(MUS_RG_NEW_GAME_INSTRUCT)         \
    X(MUS_RG_NEW_GAME_INTRO)            \
    X(MUS_RG_NEW_GAME_EXIT)             \
    X(MUS_RG_POKE_JUMP)                 \
    X(MUS_RG_UNION_ROOM)                \
    X(MUS_RG_NET_CENTER)                \
    X(MUS_RG_MYSTERY_GIFT)              \
    X(MUS_RG_BERRY_PICK)                \
    X(MUS_RG_SEVII_CAVE)                \
    X(MUS_RG_TEACHY_TV_SHOW)            \
    X(MUS_RG_SEVII_ROUTE)               \
    X(MUS_RG_SEVII_DUNGEON)             \
    X(MUS_RG_SEVII_123)                 \
    X(MUS_RG_SEVII_45)                  \
    X(MUS_RG_SEVII_67)                  \
    X(MUS_RG_POKE_FLUTE)                \
    X(MUS_RG_VS_DEOXYS)                 \
    X(MUS_RG_VS_MEWTWO)                 \
    X(MUS_RG_VS_LEGEND)                 \
    X(MUS_RG_ENCOUNTER_GYM_LEADER)      \
    X(MUS_RG_ENCOUNTER_DEOXYS)          \
    X(MUS_RG_TRAINER_TOWER)             \
    X(MUS_RG_SLOW_PALLET)               \
    X(MUS_RG_TEACHY_TV_MENU)              \
    X(MUS_HLW_DISTORTION_WORLD)          \
    X(MUS_HLW_VS_EVIL)                   \
    X(MUS_HLW_PHOENIX_TOWN)              \
    X(MUS_GET_LUCKY)                     \
    X(MUS_FLY_ME_TO_THE_MOON)            \
    X(MUS_FLASHING_LIGHTS)               \
    X(MUS_PINK_AND_WHITE)                \
    X(MUS_RAP_SNITCH_KNISHES)            \
    X(MUS_SCARS_OF_TIME)                 \
    X(MUS_APPLAUSE)                      \
    X(MUS_ABRACADABRA)                   \
    X(MUS_PAINS_THEME)                   \
    X(MUS_BLUE_BIRD)                     \
    X(MUS_THE_WORLD)                     \
    X(MUS_CRUEL_ANGELS_THESIS)           \
    X(MUS_PEGASUS_FANTASY)               \
    X(MUS_LUGIAS_SONG)                   \
    X(MUS_MIDNAS_LAMENT)                 \
    X(MUS_SHOUSHIN_NO_KIKI)              \
    X(MUS_OMOKAGE)                       \
    X(MUS_BROTHERS)                      \
    X(MUS_DISTANCE)                      \
    X(MUS_KANASHIMI_WO_YASASHISA_NI)    \
    X(MUS_KOKUTEN)                       \
    X(MUS_RESONANCE)                     \
    X(MUS_PAPER_MOON)                    \
    X(MUS_TETRIS_MAIN_THEME)                \
    X(MUS_I_WILL)                        \
    X(MUS_YOU_AND_WHOSE_ARMY)            \
    X(MUS_MOTION_PICTURE_SOUNDTRACK)     \
    X(MUS_EVERYTHING_IN_ITS_RIGHT_PLACE) \
    X(MUS_NO_SURPRISES)                  \
    X(MUS_LUCKY)                         \
    X(MUS_HIGH_AND_DRY)                  \
    X(MUS_STREET_SPIRIT)                 \
    X(MUS_GAZE_AT_THE_SKIES)             \
    X(MUS_GUTS_THEME) \
    X(MUS_THE_YOUNG_PHOTOGRAPHER) \
    X(MUS_HOPE_GRAND_CHASE) \
    X(MUS_GLAST_HEIM_THEME) \
    X(MUS_ANCIENT_GROOVER) \
    X(MUS_DIVINE_GRACE) \
    X(MUS_THEME_OF_MORROC) \
    X(MUS_EVERLASTING_WANDERERS) \
    X(MUS_THEME_OF_GEFFEN) \
    X(MUS_THEME_OF_ALDEBARAN) \
    X(MUS_THEME_OF_ALBERTA) \
    X(MUS_THEME_OF_PRONTERA) \
    X(MUS_BIGMOUTH_STRIKES_AGAIN) \
    X(MUS_BOY_WITH_THE_THORN) \
    X(MUS_SOMEDAY) \
    X(MUS_REPTILIA) \
    X(MUS_HARD_TO_EXPLAIN) \
    X(MUS_ARABELLA) \
    X(MUS_DO_I_WANNA_KNOW) \
    X(MUS_NO_1_PARTY_ANTHEM) \
    X(MUS_FADE_INTO_YOU) \
    X(MUS_WHEN_THE_SUN_HITS) \
    X(MUS_AINT_NO_REST_FOR_THE_WICKED)

#define X(songId) static const u8 sRadioBGMName_##songId[] = _(#songId);
RADIO_SOUND_LIST_BGM
#undef X

#define X(songId) [songId - START_MUS] = sRadioBGMName_##songId,
static const u8 *const sRadioBGMNames[END_MUS - START_MUS + 1] =
{
    RADIO_SOUND_LIST_BGM
};
#undef X

// ===========================================================================
// Station definitions
// ===========================================================================
enum RadioStation
{
    STATION_ALL = 0,
    STATION_ANIME,
    STATION_OTHER_WORLD,
    STATION_AMATERASU,
    STATION_INDIE_ROCK,
    STATION_FAVORITES,
    STATION_PLAYLIST,
    STATION_COUNT,
};

// Each station is a flat array of song IDs terminated by 0xFFFF.
#define STATION_END 0xFFFF

// ALL keeps the complete soundtrack: vanilla + every HLW custom track.
static const u16 sStation_All[] = {
#define X(s) s,
    RADIO_SOUND_LIST_BGM
#undef X
    STATION_END
};

// ---------------------------------------------------------------------------
// ANIME RADIO
// Anime / anime-film songs.
// ---------------------------------------------------------------------------
static const u16 sStation_Anime[] = {
    // Openings / vocal themes first
    MUS_BLUE_BIRD,
    MUS_DISTANCE,
    MUS_KANASHIMI_WO_YASASHISA_NI,
    MUS_THE_WORLD,
    MUS_CRUEL_ANGELS_THESIS,
    MUS_PEGASUS_FANTASY,
    MUS_RESONANCE,
    MUS_PAPER_MOON,
    MUS_OMOKAGE,

    // Movie / OST / character themes after the openings
    MUS_LUGIAS_SONG,
    MUS_SHOUSHIN_NO_KIKI,
    MUS_BROTHERS,
    MUS_GAZE_AT_THE_SKIES,
    MUS_KOKUTEN,
    MUS_GUTS_THEME,

    // Pain theme closes the station
    MUS_PAINS_THEME,
    STATION_END
};

// ---------------------------------------------------------------------------
// OTHER-WORLD MUSIC
// Songs that exist in the "real world": artists, bands, standards, etc.
// The Radiohead block lives here.
// ---------------------------------------------------------------------------
static const u16 sStation_OtherWorld[] = {
    MUS_GET_LUCKY,
    MUS_FLY_ME_TO_THE_MOON,
    MUS_FLASHING_LIGHTS,
    MUS_PINK_AND_WHITE,
    MUS_RAP_SNITCH_KNISHES,

    // Radiohead
    MUS_I_WILL,
    MUS_YOU_AND_WHOSE_ARMY,
    MUS_MOTION_PICTURE_SOUNDTRACK,
    MUS_EVERYTHING_IN_ITS_RIGHT_PLACE,
    MUS_NO_SURPRISES,
    MUS_LUCKY,
    MUS_HIGH_AND_DRY,
    MUS_STREET_SPIRIT,

    STATION_END
};

// ---------------------------------------------------------------------------
// AMATERASU RADIO
// Pop / dance-pop station.
// Songs may intentionally overlap another station when the genre fits.
// ---------------------------------------------------------------------------
static const u16 sStation_Amaterasu[] = {
    MUS_GET_LUCKY,
    MUS_APPLAUSE,
    MUS_ABRACADABRA,
    STATION_END
};

// ---------------------------------------------------------------------------
// INDIE ROCK RADIO
// Radiohead + The Smiths + The Strokes + Arctic Monkeys + Mazzy Star + Slowdive
// ---------------------------------------------------------------------------
static const u16 sStation_IndieRock[] = {
    // Radiohead
    MUS_I_WILL,
    MUS_YOU_AND_WHOSE_ARMY,
    MUS_MOTION_PICTURE_SOUNDTRACK,
    MUS_EVERYTHING_IN_ITS_RIGHT_PLACE,
    MUS_NO_SURPRISES,
    MUS_LUCKY,
    MUS_HIGH_AND_DRY,
    MUS_STREET_SPIRIT,

    // The Smiths
    MUS_BIGMOUTH_STRIKES_AGAIN,
    MUS_BOY_WITH_THE_THORN,

    // The Strokes
    MUS_SOMEDAY,
    MUS_REPTILIA,
    MUS_HARD_TO_EXPLAIN,

    // Arctic Monkeys
    MUS_ARABELLA,
    MUS_DO_I_WANNA_KNOW,
    MUS_NO_1_PARTY_ANTHEM,

    // Mazzy Star / Slowdive
    MUS_FADE_INTO_YOU,
    MUS_WHEN_THE_SUN_HITS,
    MUS_AINT_NO_REST_FOR_THE_WICKED,

    STATION_END
};

static const u16 *const sStationTracks[STATION_COUNT] = {
    [STATION_ALL]         = sStation_All,
    [STATION_ANIME]       = sStation_Anime,
    [STATION_OTHER_WORLD] = sStation_OtherWorld,
    [STATION_AMATERASU]   = sStation_Amaterasu,
    [STATION_INDIE_ROCK]  = sStation_IndieRock,
    [STATION_FAVORITES]   = NULL, // dynamic EWRAM list
    [STATION_PLAYLIST]    = NULL, // dynamic EWRAM list
};

// Station display names
static const u8 sStationName_All[]         = _("ALL TRACKS");
static const u8 sStationName_Anime[]       = _("ANIME");
static const u8 sStationName_OtherWorld[]  = _("OTHER-WORLD");
static const u8 sStationName_Amaterasu[]   = _("AMATERASU");
static const u8 sStationName_IndieRock[]   = _("INDIE ROCK");
static const u8 sStationName_Favorites[]   = _("FAVORITES");
static const u8 sStationName_Playlist[]    = _("MY PLAYLIST");

static const u8 *const sStationNames[STATION_COUNT] = {
    [STATION_ALL]         = sStationName_All,
    [STATION_ANIME]       = sStationName_Anime,
    [STATION_OTHER_WORLD] = sStationName_OtherWorld,
    [STATION_AMATERASU]   = sStationName_Amaterasu,
    [STATION_INDIE_ROCK]  = sStationName_IndieRock,
    [STATION_FAVORITES]   = sStationName_Favorites,
    [STATION_PLAYLIST]    = sStationName_Playlist,
};

// Full labels used only by the animated NOW PLAYING status.
static const u8 sStationNowPlaying_All[]         = _("NOW PLAYING ALL TRACKS");
static const u8 sStationNowPlaying_Anime[]       = _("NOW PLAYING ANIME RADIO");
static const u8 sStationNowPlaying_OtherWorld[]  = _("NOW PLAYING OTHER-WORLD MUSIC");
static const u8 sStationNowPlaying_Amaterasu[]   = _("NOW PLAYING AMATERASU RADIO");
static const u8 sStationNowPlaying_IndieRock[]   = _("NOW PLAYING INDIE ROCK RADIO");
static const u8 sStationNowPlaying_Favorites[]   = _("NOW PLAYING FAVORITES");
static const u8 sStationNowPlaying_Playlist[]    = _("NOW PLAYING MY PLAYLIST");

static const u8 *const sStationNowPlayingNames[STATION_COUNT] =
{
    [STATION_ALL]         = sStationNowPlaying_All,
    [STATION_ANIME]       = sStationNowPlaying_Anime,
    [STATION_OTHER_WORLD] = sStationNowPlaying_OtherWorld,
    [STATION_AMATERASU]   = sStationNowPlaying_Amaterasu,
    [STATION_INDIE_ROCK]  = sStationNowPlaying_IndieRock,
    [STATION_FAVORITES]   = sStationNowPlaying_Favorites,
    [STATION_PLAYLIST]    = sStationNowPlaying_Playlist,
};

// ===========================================================================
// Station helpers
// ===========================================================================

// Count tracks in a station
static u16 Station_Count(u8 station)
{
    u16 i = 0;
    const u16 *list;

    if (station == STATION_FAVORITES)
        return sRadioFavoritesCount;

    if (station == STATION_PLAYLIST)
        return sRadioPlaylistCount;

    list = sStationTracks[station];

    while (list[i] != STATION_END)
        i++;

    return i;
}

// Get track at index within station
static u16 Station_GetTrack(u8 station, u16 index)
{
    if (station == STATION_FAVORITES)
    {
        if (index < sRadioFavoritesCount)
            return sRadioFavorites[index];
        return sRadioCurrentSong;
    }

    if (station == STATION_PLAYLIST)
    {
        if (index < sRadioPlaylistCount)
            return sRadioPlaylist[index];
        return sRadioCurrentSong;
    }

    return sStationTracks[station][index];
}

// Find the index of songId within station (or 0 if not found)
static u16 Station_FindTrack(u8 station, u16 songId)
{
    u16 i;
    u16 count = Station_Count(station);

    for (i = 0; i < count; i++)
    {
        if (Station_GetTrack(station, i) == songId)
            return i;
    }

    return 0;
}

// ===========================================================================
// BGM name list (X-macro over full track list)
// ===========================================================================
// ===========================================================================
// Persistent EWRAM state
// ===========================================================================
// ===========================================================================
// Forward declarations
// ===========================================================================
static void CB2_LoadRadio(void);
static void CB2_Radio(void);
static void VBlankCB_Radio(void);
static void Task_RadioHandleInput(u8 taskId);
static void Task_RadioFadeAndExit(u8 taskId);
static void Task_RadioWaitFadeExit(u8 taskId);
static void Radio_DrawMusicInfo(u16 songId, bool8 playing);
static void Radio_CopyEncodedText(u8 *dest, const u8 *src, u32 destSize);
static void Radio_QueueNowPlayingPopup(u16 songId);
static void Radio_ClearNowPlayingPopupQueue(void);
static void Radio_DrawNowPlayingPopup(u8 taskId);

// ===========================================================================
// Helpers
// ===========================================================================
static const u8 *Radio_GetSongName(u16 songId)
{
    if (songId < (u16)START_MUS || songId > (u16)END_MUS)
        return NULL;
    return sRadioBGMNames[songId - START_MUS];
}

// Converts an internal song name (e.g. "MUS_SEALED_CHAMBER") to display form
// (e.g. "SEALED CHAMBER"): skips the "MUS_" prefix and replaces underscores with spaces.
// Escreve no buffer dest (máx destSize bytes incluindo o '\xff' final).
static void Radio_FormatSongName(const u8 *src, u8 *dest, u32 destSize)
{
    // Strings come from _("MUS_XXX") which converts ASCII to GBA charset at
    // build time.  In that charset underscore '_' becomes CHAR_HYPHEN (0xAE),
    // so comparing against ASCII '_' never matches.
    // We also always skip the first 4 chars (the encoded "MUS_") unconditionally.
    u32 i = 4;
    u32 d = 0;

    if (src == NULL || dest == NULL || destSize == 0)
    {
        if (dest && destSize) dest[0] = EOS;
        return;
    }

    while (src[i] != EOS && d < destSize - 1)
    {
        dest[d++] = (src[i] == CHAR_HYPHEN) ? CHAR_SPACE : src[i];
        i++;
    }
    dest[d] = EOS;
}

// Sync sRadioCurrentSong from station+index, clamping as needed
static void Radio_SyncSong(void)
{
    u16 count = Station_Count(sRadioStation);
    if (count == 0)
        return;
    if (sRadioStationIndex >= count)
        sRadioStationIndex = 0;
    sRadioCurrentSong = Station_GetTrack(sRadioStation, sRadioStationIndex);
}

// ===========================================================================
// Text strings
// ===========================================================================
#define RADIO_FONT  FONT_NORMAL

static const u8 sRadioText_TrackFmt[]      = _("Track:{STR_VAR_1}/{STR_VAR_2}");
static const u8 sRadioText_Paused[]        = _("PAUSED");
static const u8 sRadioText_Unknown[]       = _("---");
static const u8 sRadioText_SongFmt[]       = _("Song: {STR_VAR_1}");
static const u8 sRadioText_StationFmt[]    = _("Radio Station: {STR_VAR_1}");

static const u8 sRadioText_MenuTitle[]       = _("RADIO MENU");
static const u8 sRadioText_MenuSearch[]      = _("SEARCH A-Z");
static const u8 sRadioText_MenuFavorites[]   = _("FAVORITES");
static const u8 sRadioText_MenuPlaylist[]    = _("MY PLAYLIST");
static const u8 sRadioText_MenuFavorite[]    = _("FAVORITE CURRENT");
static const u8 sRadioText_MenuUnfavorite[]  = _("UNFAVORITE CURRENT");
static const u8 sRadioText_MenuAddPlaylist[] = _("ADD TO PLAYLIST");
static const u8 sRadioText_MenuInPlaylist[]  = _("ALREADY IN PLAYLIST");
static const u8 sRadioText_MenuPriorityOn[]  = _("RADIO PRIORITY: ON");
static const u8 sRadioText_MenuPriorityOff[] = _("RADIO PRIORITY: OFF");
static const u8 sRadioText_MenuRepeatOn[]    = _("REPEAT: ON");
static const u8 sRadioText_MenuRepeatOff[]   = _("REPEAT: OFF");
static const u8 sRadioText_MenuShuffleOn[]   = _("SHUFFLE: ON");
static const u8 sRadioText_MenuShuffleOff[]  = _("SHUFFLE: OFF");
static const u8 sRadioText_MenuReturn[]       = _("RETURN");
static const u8 sRadioText_Cursor[]           = _(">");

static const u8 sRadioText_SearchTitle[]      = _("SEARCH A-Z");
static const u8 sRadioText_SearchLetterFmt[]  = _("LETTER: {STR_VAR_1}");
static const u8 sRadioText_SearchHelp[]       = _("A SEARCH  B BACK");
static const u8 sRadioText_SearchResults[]    = _("SEARCH RESULTS");
static const u8 sRadioText_FavoritesHead[]    = _("FAVORITES");
static const u8 sRadioText_PlaylistHead[]     = _("MY PLAYLIST");
static const u8 sRadioText_EmptyList[]        = _("EMPTY - B BACK");
static const u8 sRadioSearchLetters[]         = _("ABCDEFGHIJKLMNOPQRSTUVWXYZ");

// ---------------------------------------------------------------------------
// Indie Rock Radio display names — show artist/band next to the song.
// These custom labels are used ONLY while STATION_INDIE_ROCK is selected.
// ---------------------------------------------------------------------------
static const u8 sIndieName_IWill[]                  = _("I WILL (RADIOHEAD)");
static const u8 sIndieName_YouAndWhoseArmy[]        = _("YOU AND WHOSE ARMY (RADIOHEAD)");
static const u8 sIndieName_MotionPicture[]           = _("MOTION PICTURE SOUNDTRACK (RADIOHEAD)");
static const u8 sIndieName_EverythingRightPlace[]    = _("EVERYTHING RIGHT PLACE (RADIOHEAD)");
static const u8 sIndieName_NoSurprises[]             = _("NO SURPRISES (RADIOHEAD)");
static const u8 sIndieName_Lucky[]                   = _("LUCKY (RADIOHEAD)");
static const u8 sIndieName_HighAndDry[]              = _("HIGH AND DRY (RADIOHEAD)");
static const u8 sIndieName_StreetSpirit[]            = _("STREET SPIRIT (RADIOHEAD)");

static const u8 sIndieName_Bigmouth[]                = _("BIGMOUTH STRIKES AGAIN (THE SMITHS)");
static const u8 sIndieName_BoyWithThorn[]            = _("THE BOY WITH THE THORN (THE SMITHS)");

static const u8 sIndieName_Someday[]                 = _("SOMEDAY (THE STROKES)");
static const u8 sIndieName_Reptilia[]                = _("REPTILIA (THE STROKES)");
static const u8 sIndieName_HardToExplain[]           = _("HARD TO EXPLAIN (THE STROKES)");

static const u8 sIndieName_Arabella[]                = _("ARABELLA (ARCTIC MONKEYS)");
static const u8 sIndieName_DoIWannaKnow[]            = _("DO I WANNA KNOW (ARCTIC MONKEYS)");
static const u8 sIndieName_PartyAnthem[]             = _("NO.1 PARTY ANTHEM (ARCTIC MONKEYS)");

static const u8 sIndieName_FadeIntoYou[]             = _("FADE INTO YOU (MAZZY STAR)");
static const u8 sIndieName_WhenTheSunHits[]          = _("WHEN THE SUN HITS (SLOWDIVE)");
static const u8 sIndieName_AintNoRest[]              = _("AIN'T NO REST FOR THE WICKED (CAGE THE ELEPHANT)");

static const u8 *Radio_GetIndieDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_I_WILL:
        return sIndieName_IWill;
    case MUS_YOU_AND_WHOSE_ARMY:
        return sIndieName_YouAndWhoseArmy;
    case MUS_MOTION_PICTURE_SOUNDTRACK:
        return sIndieName_MotionPicture;
    case MUS_EVERYTHING_IN_ITS_RIGHT_PLACE:
        return sIndieName_EverythingRightPlace;
    case MUS_NO_SURPRISES:
        return sIndieName_NoSurprises;
    case MUS_LUCKY:
        return sIndieName_Lucky;
    case MUS_HIGH_AND_DRY:
        return sIndieName_HighAndDry;
    case MUS_STREET_SPIRIT:
        return sIndieName_StreetSpirit;

    case MUS_BIGMOUTH_STRIKES_AGAIN:
        return sIndieName_Bigmouth;
    case MUS_BOY_WITH_THE_THORN:
        return sIndieName_BoyWithThorn;

    case MUS_SOMEDAY:
        return sIndieName_Someday;
    case MUS_REPTILIA:
        return sIndieName_Reptilia;
    case MUS_HARD_TO_EXPLAIN:
        return sIndieName_HardToExplain;

    case MUS_ARABELLA:
        return sIndieName_Arabella;
    case MUS_DO_I_WANNA_KNOW:
        return sIndieName_DoIWannaKnow;
    case MUS_NO_1_PARTY_ANTHEM:
        return sIndieName_PartyAnthem;

    case MUS_FADE_INTO_YOU:
        return sIndieName_FadeIntoYou;
    case MUS_WHEN_THE_SUN_HITS:
        return sIndieName_WhenTheSunHits;
    case MUS_AINT_NO_REST_FOR_THE_WICKED:
        return sIndieName_AintNoRest;
    default:
        return NULL;
    }
}

// ---------------------------------------------------------------------------
// Anime Radio display names.
// Song IDs / definitions are untouched; only the order and names shown by
// the radio UI are changed.
// ---------------------------------------------------------------------------
static const u8 sAnimeName_BlueBird[]              = _("BLUE BIRD - (NARUTO)");
static const u8 sAnimeName_Distance[]              = _("DISTANCE - (NARUTO)");
static const u8 sAnimeName_Kanashimi[]             = _("KANASHIMI WO YASASHISA NI - (NARUTO)");
static const u8 sAnimeName_TheWorld[]              = _("THE WORLD - (DEATH NOTE)");
static const u8 sAnimeName_CruelAngel[]            = _("CRUEL ANGEL'S THESIS - (EVANGELION)");
static const u8 sAnimeName_PegasusFantasy[]        = _("PEGASUS FANTASY - (SAINT SEIYA)");
static const u8 sAnimeName_Resonance[]             = _("RESONANCE - (SOUL EATER)");
static const u8 sAnimeName_PaperMoon[]             = _("PAPER MOON - (SOUL EATER)");
static const u8 sAnimeName_Omokage[]               = _("OMOKAGE - (SHAMAN KING)");
static const u8 sAnimeName_LugiasSong[]            = _("LUGIA'S SONG - (POKEMON)");
static const u8 sAnimeName_ShoushinNoKiki[]        = _("SHOUSHIN NO KIKI - (KIKI'S DELIVERY SERVICE)");
static const u8 sAnimeName_Brothers[]              = _("BROTHERS - (FULLMETAL ALCHEMIST)");
static const u8 sAnimeName_GazeAtTheSkies[]        = _("GAZE AT THE SKIES - (BERSERK)");
static const u8 sAnimeName_Kokuten[]               = _("KOKUTEN - (NARUTO)");
static const u8 sAnimeName_GutsTheme[]             = _("GUTS THEME - (BERSERK)");
static const u8 sAnimeName_GireiPain[]             = _("GIREI - PAIN THEME (NARUTO)");

static const u8 *Radio_GetAnimeDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_BLUE_BIRD:
        return sAnimeName_BlueBird;
    case MUS_DISTANCE:
        return sAnimeName_Distance;
    case MUS_KANASHIMI_WO_YASASHISA_NI:
        return sAnimeName_Kanashimi;
    case MUS_THE_WORLD:
        return sAnimeName_TheWorld;
    case MUS_CRUEL_ANGELS_THESIS:
        return sAnimeName_CruelAngel;
    case MUS_PEGASUS_FANTASY:
        return sAnimeName_PegasusFantasy;
    case MUS_RESONANCE:
        return sAnimeName_Resonance;
    case MUS_PAPER_MOON:
        return sAnimeName_PaperMoon;
    case MUS_OMOKAGE:
        return sAnimeName_Omokage;
    case MUS_LUGIAS_SONG:
        return sAnimeName_LugiasSong;
    case MUS_SHOUSHIN_NO_KIKI:
        return sAnimeName_ShoushinNoKiki;
    case MUS_BROTHERS:
        return sAnimeName_Brothers;
    case MUS_GAZE_AT_THE_SKIES:
        return sAnimeName_GazeAtTheSkies;
    case MUS_KOKUTEN:
        return sAnimeName_Kokuten;
    case MUS_GUTS_THEME:
        return sAnimeName_GutsTheme;
    case MUS_PAINS_THEME:
        return sAnimeName_GireiPain;
    default:
        return NULL;
    }
}

static const u8 *Radio_GetSpecialDisplayName(u16 songId)
{
    const u8 *name;

    name = Radio_GetIndieDisplayName(songId);
    if (name != NULL)
        return name;

    return Radio_GetAnimeDisplayName(songId);
}

// ---------------------------------------------------------------------------
// Overworld "Now Playing" popup.
//
// Same visual language as the achievement popup: 15x4 window, slides in from
// above with ComfyAnim easing, waits, then slides out. It intentionally has no
// icon so the song name gets the full width.
// ---------------------------------------------------------------------------
#define RADIO_POPUP_WINDOW_WIDTH       15
#define RADIO_POPUP_OFFSCREEN_Y        40
#define RADIO_POPUP_SLIDE_DURATION     18
#define RADIO_POPUP_SCROLL_DELAY        7
#define RADIO_POPUP_SCROLL_GAP          4

// "Now " stays fixed at x=8.
// The moving region begins where the P of "PLAYING" sits.
#define RADIO_POPUP_PREFIX_X            8
#define RADIO_POPUP_MARQUEE_X          31
#define RADIO_POPUP_TEXT_Y              7
#define RADIO_POPUP_MARQUEE_CHARS      13

#define rtState          data[0]
#define rtTimer          data[1]
#define rtWindowId       data[2]
#define rtSongId         data[3]
#define rtAnimId         data[4]
#define rtYOffset        data[5]
#define rtSavedBg0VOff   data[6]
#define rtScrollOffset   data[7]
#define rtScrollTimer    data[8]

enum
{
    RADIO_POPUP_STATE_INIT,
    RADIO_POPUP_STATE_SLIDE_IN,
    RADIO_POPUP_STATE_WAIT,
    RADIO_POPUP_STATE_SLIDE_OUT,
    RADIO_POPUP_STATE_CLEANUP,
    RADIO_POPUP_STATE_DESTROY,
};

static const struct WindowTemplate sRadioPopupWindowTemplate =
{
    .bg = 0,
    .tilemapLeft = 14,
    .tilemapTop = 1,
    .width = RADIO_POPUP_WINDOW_WIDTH,
    .height = 3,
    .paletteNum = 15,
    .baseBlock = 0x240,
};

static const u8 sRadioPopupPrefix[] = _("Now ");
static const u8 sRadioPopupMovingPrefix[] = _("PLAYING ");

extern bool32 AchievementPopup_IsActive(void);

static void Task_RadioNowPlayingPopup(u8 taskId);

static void Radio_ClearNowPlayingPopupQueue(void)
{
    sRadioPopupPendingSong = 0;
}

static void Radio_QueueNowPlayingPopup(u16 songId)
{
    u8 taskId;

    if (!sRadioPriorityEnabled || !sRadioIsPlaying || songId == 0)
        return;

    // If a popup is already on screen, REUSE it. This is the important V6.3
    // fix: R/L spam or an automatic transition can no longer create a chain
    // of old "Now Playing" popups.
    taskId = FindTaskIdByFunc(Task_RadioNowPlayingPopup);
    if (taskId != TASK_NONE)
    {
        gTasks[taskId].rtSongId = songId;
        gTasks[taskId].rtScrollOffset = 0;
        gTasks[taskId].rtScrollTimer = 0;
        gTasks[taskId].rtTimer = 0;

        if (gTasks[taskId].rtWindowId != WINDOW_NONE)
            Radio_DrawNowPlayingPopup(taskId);

        sRadioPopupPendingSong = 0;
        return;
    }

    // Only the newest pending song matters.
    sRadioPopupPendingSong = songId;
}

static u16 Radio_PopNowPlayingPopup(void)
{
    u16 songId = sRadioPopupPendingSong;

    sRadioPopupPendingSong = 0;
    return songId;
}

bool32 RadioPopup_IsActive(void)
{
    return FindTaskIdByFunc(Task_RadioNowPlayingPopup) != TASK_NONE;
}

static void Radio_GetPopupSongName(u16 songId, u8 *dest, u32 destSize)
{
    const u8 *specialName;
    const u8 *rawName;

    specialName = Radio_GetSpecialDisplayName(songId);
    if (specialName != NULL)
    {
        Radio_CopyEncodedText(dest, specialName, destSize);
        return;
    }

    rawName = Radio_GetSongName(songId);
    Radio_FormatSongName(rawName, dest, destSize);
}

static void Radio_DrawNowPlayingPopup(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    u8 songName[64];
    u8 marqueeText[80];
    u8 visible[RADIO_POPUP_MARQUEE_CHARS + 1];
    u16 nameLen = 0;
    u16 fullLen = 0;
    u16 i;
    u16 cycleLength;

    Radio_GetPopupSongName((u16)task->rtSongId, songName, sizeof(songName));

    while (songName[nameLen] != EOS && nameLen < sizeof(songName) - 1)
        nameLen++;

    // Build one continuous moving string:
    //   PLAYING <SONG NAME>
    //
    // "Now " is drawn separately and never moves. The moving text begins
    // at RADIO_POPUP_MARQUEE_X, exactly at the P of PLAYING.
    for (i = 0; sRadioPopupMovingPrefix[i] != EOS
         && fullLen < sizeof(marqueeText) - 1; i++)
        marqueeText[fullLen++] = sRadioPopupMovingPrefix[i];

    for (i = 0; i < nameLen && fullLen < sizeof(marqueeText) - 1; i++)
        marqueeText[fullLen++] = songName[i];

    marqueeText[fullLen] = EOS;
    cycleLength = fullLen + RADIO_POPUP_SCROLL_GAP;

    for (i = 0; i < RADIO_POPUP_MARQUEE_CHARS; i++)
    {
        u16 pos = (task->rtScrollOffset + i) % cycleLength;

        if (pos < fullLen)
            visible[i] = marqueeText[pos];
        else
            visible[i] = CHAR_SPACE;
    }

    visible[i] = EOS;

    FillWindowPixelBuffer(task->rtWindowId, PIXEL_FILL(1));
    DrawStdWindowFrame(task->rtWindowId, FALSE);

    // SAME LINE:
    //   Now PLAYING BLUE BIRD - (NARUTO)...
    AddTextPrinterParameterized(
        task->rtWindowId,
        FONT_SMALL,
        sRadioPopupPrefix,
        RADIO_POPUP_PREFIX_X,
        RADIO_POPUP_TEXT_Y,
        TEXT_SKIP_DRAW,
        NULL
    );

    AddTextPrinterParameterized(
        task->rtWindowId,
        FONT_SMALL,
        visible,
        RADIO_POPUP_MARQUEE_X,
        RADIO_POPUP_TEXT_Y,
        TEXT_SKIP_DRAW,
        NULL
    );

    CopyWindowToVram(task->rtWindowId, COPYWIN_FULL);
}

static void Radio_SetPopupOffset(u8 taskId, s16 yOffset)
{
    struct Task *task = &gTasks[taskId];

    task->rtYOffset = yOffset;
    SetGpuReg(REG_OFFSET_BG0VOFS, task->rtSavedBg0VOff + yOffset);
}

static void Radio_StartPopupSlide(
    u8 taskId,
    s16 from,
    s16 to,
    u16 duration,
    ComfyAnimEasingFunc easingFunc)
{
    struct ComfyAnimEasingConfig config;
    struct Task *task = &gTasks[taskId];

    if (task->rtAnimId != INVALID_COMFY_ANIM)
        ReleaseComfyAnim(task->rtAnimId);

    Radio_SetPopupOffset(taskId, from);

    InitComfyAnimConfig_Easing(&config);
    config.durationFrames = duration;
    config.easingFunc = easingFunc;
    config.from = Q_24_8(from);
    config.to = Q_24_8(to);

    task->rtAnimId = CreateComfyAnim_Easing(&config);
    if (task->rtAnimId == INVALID_COMFY_ANIM)
        Radio_SetPopupOffset(taskId, to);
}

static bool8 Radio_UpdatePopupSlide(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    struct ComfyAnim *anim;

    if (task->rtAnimId == INVALID_COMFY_ANIM)
        return TRUE;

    anim = &gComfyAnims[task->rtAnimId];
    if (!anim->inUse)
    {
        task->rtAnimId = INVALID_COMFY_ANIM;
        return TRUE;
    }

    TryAdvanceComfyAnim(anim);
    Radio_SetPopupOffset(taskId, ReadComfyAnimValueSmooth(anim));

    if (!anim->completed)
        return FALSE;

    ReleaseComfyAnim(task->rtAnimId);
    task->rtAnimId = INVALID_COMFY_ANIM;
    return TRUE;
}

static bool8 Radio_ShouldYieldPopup(void)
{
    return gMain.callback2 != CB2_Overworld
        || GetMapNamePopUpWindowId() != WINDOW_NONE
        || GetStartMenuWindowId() != WINDOW_NONE
        || IsOverworldLinkActive()
        || gPaletteFade.active
        || ScriptContext_IsEnabled()
        || ArePlayerFieldControlsLocked()
        || AchievementPopup_IsActive();
}

static void Radio_DestroyNowPlayingPopup(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    if (task->rtAnimId != INVALID_COMFY_ANIM)
    {
        ReleaseComfyAnim(task->rtAnimId);
        task->rtAnimId = INVALID_COMFY_ANIM;
    }

    if (task->rtWindowId != WINDOW_NONE)
    {
        if (task->rtState != RADIO_POPUP_STATE_DESTROY)
            ClearStdWindowAndFrame(task->rtWindowId, TRUE);

        RemoveWindow(task->rtWindowId);
        task->rtWindowId = WINDOW_NONE;
    }

    SetGpuReg(REG_OFFSET_BG0VOFS, task->rtSavedBg0VOff);
    DestroyTask(taskId);
}

static void Task_RadioNowPlayingPopup(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    if (Radio_ShouldYieldPopup())
    {
        // Keep only the newest pending song. No popup backlog.
        if (task->rtSongId != 0)
            sRadioPopupPendingSong = (u16)task->rtSongId;

        Radio_DestroyNowPlayingPopup(taskId);
        return;
    }

    switch (task->rtState)
    {
    case RADIO_POPUP_STATE_INIT:
        task->rtWindowId = AddWindow(&sRadioPopupWindowTemplate);
        if (task->rtWindowId == WINDOW_NONE)
        {
            Radio_DestroyNowPlayingPopup(taskId);
            return;
        }

        Radio_SetPopupOffset(taskId, RADIO_POPUP_OFFSCREEN_Y);
        PutWindowTilemap(task->rtWindowId);
        Radio_DrawNowPlayingPopup(taskId);
        Radio_StartPopupSlide(
            taskId,
            RADIO_POPUP_OFFSCREEN_Y,
            0,
            RADIO_POPUP_SLIDE_DURATION,
            ComfyAnimEasing_EaseOutCubic
        );
        task->rtState = RADIO_POPUP_STATE_SLIDE_IN;
        break;

    case RADIO_POPUP_STATE_SLIDE_IN:
        if (Radio_UpdatePopupSlide(taskId))
        {
            task->rtTimer = 0;
            task->rtState = RADIO_POPUP_STATE_WAIT;
        }
        break;

    case RADIO_POPUP_STATE_WAIT:
        task->rtScrollTimer++;
        if (task->rtScrollTimer >= RADIO_POPUP_SCROLL_DELAY)
        {
            task->rtScrollTimer = 0;
            task->rtScrollOffset++;
            Radio_DrawNowPlayingPopup(taskId);
        }

        if (++task->rtTimer > 150 || JOY_NEW(A_BUTTON | B_BUTTON))
        {
            Radio_StartPopupSlide(
                taskId,
                task->rtYOffset,
                RADIO_POPUP_OFFSCREEN_Y,
                RADIO_POPUP_SLIDE_DURATION,
                ComfyAnimEasing_EaseInCubic
            );
            task->rtState = RADIO_POPUP_STATE_SLIDE_OUT;
        }
        break;

    case RADIO_POPUP_STATE_SLIDE_OUT:
        if (Radio_UpdatePopupSlide(taskId))
            task->rtState = RADIO_POPUP_STATE_CLEANUP;
        break;

    case RADIO_POPUP_STATE_CLEANUP:
        if (task->rtWindowId != WINDOW_NONE)
            ClearStdWindowAndFrame(task->rtWindowId, TRUE);
        task->rtState = RADIO_POPUP_STATE_DESTROY;
        break;

    case RADIO_POPUP_STATE_DESTROY:
        Radio_DestroyNowPlayingPopup(taskId);
        break;
    }
}

void Radio_TryShowQueuedPopup(void)
{
    u8 taskId;
    u16 songId;

    if (sRadioPopupPendingSong == 0
     || RadioPopup_IsActive()
     || AchievementPopup_IsActive()
     || GetMapNamePopUpWindowId() != WINDOW_NONE
     || GetStartMenuWindowId() != WINDOW_NONE
     || IsOverworldLinkActive()
     || gPaletteFade.active
     || ScriptContext_IsEnabled()
     || ArePlayerFieldControlsLocked()
     || gMain.callback2 != CB2_Overworld
     || GetTaskCount() >= NUM_TASKS)
        return;

    songId = Radio_PopNowPlayingPopup();
    if (songId == 0)
        return;

    taskId = CreateTask(Task_RadioNowPlayingPopup, 0);
    gTasks[taskId].rtWindowId = WINDOW_NONE;
    gTasks[taskId].rtAnimId = INVALID_COMFY_ANIM;
    gTasks[taskId].rtSongId = songId;
    gTasks[taskId].rtSavedBg0VOff = GetGpuReg(REG_OFFSET_BG0VOFS);
    gTasks[taskId].rtScrollOffset = 0;
    gTasks[taskId].rtScrollTimer = 0;
}

#undef rtState
#undef rtTimer
#undef rtWindowId
#undef rtSongId
#undef rtAnimId
#undef rtYOffset
#undef rtSavedBg0VOff
#undef rtScrollOffset
#undef rtScrollTimer

// ---------------------------------------------------------------------------
// Radio Priority + continuous playback API
// ---------------------------------------------------------------------------
bool8 RadioPriority_IsEnabled(void)
{
    return sRadioPriorityEnabled;
}

bool8 RadioPriority_ShouldBlockBgmChange(void)
{
    return sRadioPriorityEnabled && sRadioIsPlaying;
}

u16 RadioPriority_GetSong(void)
{
    return sRadioCurrentSong;
}

static void Radio_ResetPlaybackMonitor(void)
{
    u8 i;

    sRadioMonitorSong = sRadioCurrentSong;
    sRadioMonitorExpectedMask = 0;
    sRadioMonitorWrappedMask = 0;
    sRadioMonitorFinishedMask = 0;
    sRadioMonitorRuntimeFrames = 0;
    sRadioMonitorWrapWindow = 0;

    for (i = 0; i < RADIO_MONITOR_MAX_TRACKS; i++)
    {
        sRadioMonitorCmdPtr[i] = 0;
        sRadioMonitorPatternLevel[i] = 0;
    }

    // Capture a stable set of active tracks after a manual/new song start.
    sRadioMonitorWarmup = 60;
}

// Returns TRUE only when the WHOLE song has completed one pass.
//
// Non-looping songs are detected by the BGM player status.
//
// Looping HLW imports are detected per M4A track. A track is considered to
// have completed its pass when its command pointer makes a top-level backwards
// jump outside PATT / REPT. Auto-next happens only when every track that was
// active after startup has completed that pass.
//
// This fixes the old V6.1 behavior where watching only track 0 could advance
// again immediately after a manual R/L press.
static bool8 Radio_CurrentSongCompletedPass(void)
{
    u8 i;
    u8 trackCount;
    u16 completedMask;

    if (!RadioPriority_ShouldBlockBgmChange())
        return FALSE;

    if (gMPlayInfo_BGM.songHeader != gSongTable[sRadioCurrentSong].header)
        return FALSE;

    // Never interpret playback movement while the popup caused by a manual
    // R/L change is still visible. This removes the old "R -> next -> next"
    // race completely.
    if (RadioPopup_IsActive() || sRadioPopupPendingSong != 0)
        return FALSE;

    // Battle pause is not song end.
    if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
        return FALSE;

    // A genuinely non-looping song ended.
    if (!(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        return TRUE;

    if (gMPlayInfo_BGM.tracks == NULL || gMPlayInfo_BGM.trackCount == 0)
        return FALSE;

    if (sRadioMonitorSong != sRadioCurrentSong)
    {
        Radio_ResetPlaybackMonitor();
        return FALSE;
    }

    if (sRadioMonitorRuntimeFrames < 0xFFFF)
        sRadioMonitorRuntimeFrames++;

    trackCount = gMPlayInfo_BGM.trackCount;
    if (trackCount > RADIO_MONITOR_MAX_TRACKS)
        trackCount = RADIO_MONITOR_MAX_TRACKS;

    // Capture stable initial tracks.
    if (sRadioMonitorWarmup != 0)
    {
        for (i = 0; i < trackCount; i++)
        {
            struct MusicPlayerTrack *track = &gMPlayInfo_BGM.tracks[i];

            if ((track->flags & MPT_FLG_EXIST) && track->cmdPtr != NULL)
            {
                sRadioMonitorExpectedMask |= (1 << i);
                sRadioMonitorCmdPtr[i] = (u32)track->cmdPtr;
                sRadioMonitorPatternLevel[i] = track->patternLevel;
            }
        }

        sRadioMonitorWarmup--;
        return FALSE;
    }

    // A group of top-level backwards jumps must happen close together.
    // Harmless internal jumps no longer accumulate for the whole song.
    if (sRadioMonitorWrapWindow != 0)
    {
        sRadioMonitorWrapWindow--;

        if (sRadioMonitorWrapWindow == 0)
            sRadioMonitorWrappedMask = 0;
    }

    for (i = 0; i < trackCount; i++)
    {
        struct MusicPlayerTrack *track = &gMPlayInfo_BGM.tracks[i];
        u16 bit = (1 << i);

        if (!(sRadioMonitorExpectedMask & bit))
            continue;

        if (!(track->flags & MPT_FLG_EXIST) || track->cmdPtr == NULL)
        {
            // Permanently ended tracks count as completed, but are separate
            // from looping-track wrap timing.
            sRadioMonitorFinishedMask |= bit;
            continue;
        }

        if (sRadioMonitorCmdPtr[i] != 0
         && sRadioMonitorPatternLevel[i] == 0
         && track->patternLevel == 0
         && track->repN == 0
         && (u32)track->cmdPtr < sRadioMonitorCmdPtr[i])
        {
            if (sRadioMonitorWrapWindow == 0)
            {
                sRadioMonitorWrappedMask = 0;
                sRadioMonitorWrapWindow = RADIO_MONITOR_WRAP_WINDOW_FRAMES;
            }

            sRadioMonitorWrappedMask |= bit;
        }

        sRadioMonitorCmdPtr[i] = (u32)track->cmdPtr;
        sRadioMonitorPatternLevel[i] = track->patternLevel;
    }

    // Never auto-next a freshly selected track.
    if (sRadioMonitorRuntimeFrames < RADIO_MONITOR_MIN_RUNTIME_FRAMES)
        return FALSE;

    completedMask = sRadioMonitorFinishedMask | sRadioMonitorWrappedMask;

    if (sRadioMonitorExpectedMask != 0
     && (completedMask & sRadioMonitorExpectedMask) == sRadioMonitorExpectedMask)
    {
        return TRUE;
    }

    return FALSE;
}

static bool8 Radio_AdvanceToNextStationTrack(void)
{
    u16 count;
    u16 oldSong;

    count = Station_Count(sRadioStation);
    if (count == 0)
        return FALSE;

    oldSong = sRadioCurrentSong;

    sRadioStationIndex++;
    if (sRadioStationIndex >= count)
        sRadioStationIndex = 0;

    sRadioCurrentSong = Station_GetTrack(sRadioStation, sRadioStationIndex);

    // Stop only the old radio song, then start the next station entry.
    m4aSongNumStop(oldSong);
    m4aSongNumStart(sRadioCurrentSong);

    sRadioIsPlaying = TRUE;
    Radio_ResetPlaybackMonitor();
    Radio_QueueNowPlayingPopup(sRadioCurrentSong);
    return TRUE;
}

// ---------------------------------------------------------------------------
// Overworld media controls.
//
// These are intentionally active only while Radio Priority is ON AND the radio
// itself is playing. Overworld code consumes L/R before DexNav/registered-item
// logic can see them.
// ---------------------------------------------------------------------------
bool8 RadioPriority_NextTrack(void)
{
    u16 count;
    u16 oldSong;

    if (!RadioPriority_ShouldBlockBgmChange())
        return FALSE;

    if (sRadioOverworldSkipCooldown != 0)
        return FALSE;

    sRadioOverworldSkipCooldown = RADIO_OVERWORLD_SKIP_COOLDOWN;

    count = Station_Count(sRadioStation);
    if (count == 0)
        return FALSE;

    oldSong = sRadioCurrentSong;

    // Overworld media key R always means NEXT in station order.
    // Shuffle remains a Radio UI / automatic-play behavior.
    sRadioStationIndex = (sRadioStationIndex + 1 < count)
                       ? sRadioStationIndex + 1
                       : 0;

    sRadioCurrentSong = Station_GetTrack(sRadioStation, sRadioStationIndex);

    m4aSongNumStop(oldSong);
    m4aSongNumStart(sRadioCurrentSong);
    sRadioIsPlaying = TRUE;
    Radio_ResetPlaybackMonitor();
    Radio_QueueNowPlayingPopup(sRadioCurrentSong);
    return TRUE;
}

bool8 RadioPriority_PreviousTrack(void)
{
    u16 count;
    u16 oldSong;

    if (!RadioPriority_ShouldBlockBgmChange())
        return FALSE;

    if (sRadioOverworldSkipCooldown != 0)
        return FALSE;

    sRadioOverworldSkipCooldown = RADIO_OVERWORLD_SKIP_COOLDOWN;

    count = Station_Count(sRadioStation);
    if (count == 0)
        return FALSE;

    oldSong = sRadioCurrentSong;

    // L = PREVIOUS SONG IN THE STATION.
    // It never seeks/restarts the current track.
    sRadioStationIndex = (sRadioStationIndex > 0)
                       ? sRadioStationIndex - 1
                       : count - 1;

    sRadioCurrentSong = Station_GetTrack(sRadioStation, sRadioStationIndex);

    m4aSongNumStop(oldSong);
    m4aSongNumStart(sRadioCurrentSong);
    sRadioIsPlaying = TRUE;
    Radio_ResetPlaybackMonitor();
    Radio_QueueNowPlayingPopup(sRadioCurrentSong);
    return TRUE;
}


// Called continuously from:
//   - overworld MapMusicMain()
//   - battle transition / battle main
//   - the Radio UI task
//
// V4 behavior:
//   * If battle code temporarily PAUSES the BGM player, CONTINUE it from the
//     exact current position instead of calling m4aSongNumStart() and restarting.
//   * Priority ON + Repeat OFF: one full song pass -> next station track.
//   * Priority ON + Repeat ON: keep the current song looping.
// Returns TRUE only when the radio automatically changed to another song.
bool8 RadioPriority_Update(void)
{
    if (sRadioOverworldSkipCooldown != 0)
        sRadioOverworldSkipCooldown--;

    if (!RadioPriority_ShouldBlockBgmChange())
        return FALSE;

    // Expected radio song is still loaded.
    if (gMPlayInfo_BGM.songHeader == gSongTable[sRadioCurrentSong].header)
    {
        // m4aMPlayStop() leaves the song/track state paused. Continuing here
        // preserves cmdPtr/clock, so battle entry no longer restarts the song.
        if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
        {
            if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK)
            {
                m4aMPlayContinue(&gMPlayInfo_BGM);
                return FALSE;
            }

            // A destructive fade/clear removed the live tracks. There is no
            // position left to resume, so restart is the unavoidable fallback.
            m4aSongNumStart(sRadioCurrentSong);
            Radio_ResetPlaybackMonitor();
            return FALSE;
        }

        if (!sRadioRepeatEnabled && Radio_CurrentSongCompletedPass())
            return Radio_AdvanceToNextStationTrack();

        // A rare genuinely non-looping track can end while Repeat is ON.
        if (sRadioRepeatEnabled
         && !(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        {
            m4aSongNumStart(sRadioCurrentSong);
            Radio_ResetPlaybackMonitor();
        }

        return FALSE;
    }

    // Something bypassed the guarded sound.c API and replaced the BGM.
    // Restore the radio as a safety net.
    m4aSongNumStart(sRadioCurrentSong);
    Radio_ResetPlaybackMonitor();
    return FALSE;
}

// Backward-compatible name used by the V3 battle hooks.
void RadioPriority_MaintainBgm(void)
{
    RadioPriority_Update();
}

// ---------------------------------------------------------------------------
// Library / Favorites / Playlist helpers
// ---------------------------------------------------------------------------
static bool8 Radio_ListContains(const u16 *list, u8 count, u16 songId)
{
    u8 i;

    for (i = 0; i < count; i++)
    {
        if (list[i] == songId)
            return TRUE;
    }

    return FALSE;
}

static bool8 Radio_AddUnique(u16 *list, u8 *count, u16 songId)
{
    if (Radio_ListContains(list, *count, songId))
        return FALSE;

    if (*count >= RADIO_LIBRARY_CAPACITY)
        return FALSE;

    list[*count] = songId;
    (*count)++;
    return TRUE;
}

static bool8 Radio_RemoveFromList(u16 *list, u8 *count, u16 songId)
{
    u8 i;

    for (i = 0; i < *count; i++)
    {
        if (list[i] == songId)
        {
            u8 j;

            for (j = i; j + 1 < *count; j++)
                list[j] = list[j + 1];

            (*count)--;
            return TRUE;
        }
    }

    return FALSE;
}

static void Radio_CopyEncodedText(u8 *dest, const u8 *src, u32 destSize)
{
    u32 i = 0;

    if (dest == NULL || destSize == 0)
        return;

    if (src == NULL)
    {
        dest[0] = EOS;
        return;
    }

    while (src[i] != EOS && i < destSize - 1)
    {
        dest[i] = src[i];
        i++;
    }

    dest[i] = EOS;
}

static void Radio_GetDisplayName(u16 songId, bool8 includeArtist, u8 *dest, u32 destSize)
{
    const u8 *specialName = NULL;
    const u8 *rawName;

    if (includeArtist)
        specialName = Radio_GetSpecialDisplayName(songId);

    if (specialName != NULL)
    {
        Radio_CopyEncodedText(dest, specialName, destSize);
        return;
    }

    rawName = Radio_GetSongName(songId);
    Radio_FormatSongName(rawName, dest, destSize);
}

static void Radio_CopyTruncated(u8 *dest, const u8 *src, u32 destSize, u8 maxChars)
{
    u32 i = 0;

    if (destSize == 0)
        return;

    while (src != NULL
        && src[i] != EOS
        && i < maxChars
        && i < destSize - 1)
    {
        dest[i] = src[i];
        i++;
    }

    dest[i] = EOS;
}

static u16 Radio_RandomIndex(u16 count, u16 current)
{
    u16 result;

    if (count <= 1)
        return 0;

    if (sRadioShuffleState == 0)
        sRadioShuffleState = 0xA5C31F27;

    sRadioShuffleState ^= sRadioShuffleState << 13;
    sRadioShuffleState ^= sRadioShuffleState >> 17;
    sRadioShuffleState ^= sRadioShuffleState << 5;

    result = (u16)(sRadioShuffleState % count);

    if (result == current)
        result = (result + 1) % count;

    return result;
}

static const u8 *Radio_GetMenuItemText(u8 item, u16 songId)
{
    switch (item)
    {
    case RADIO_MENU_SEARCH:
        return sRadioText_MenuSearch;
    case RADIO_MENU_FAVORITES:
        return sRadioText_MenuFavorites;
    case RADIO_MENU_PLAYLIST:
        return sRadioText_MenuPlaylist;
    case RADIO_MENU_TOGGLE_FAVORITE:
        return Radio_ListContains(sRadioFavorites, sRadioFavoritesCount, songId)
             ? sRadioText_MenuUnfavorite
             : sRadioText_MenuFavorite;
    case RADIO_MENU_ADD_PLAYLIST:
        return Radio_ListContains(sRadioPlaylist, sRadioPlaylistCount, songId)
             ? sRadioText_MenuInPlaylist
             : sRadioText_MenuAddPlaylist;
    case RADIO_MENU_PRIORITY:
        return sRadioPriorityEnabled
             ? sRadioText_MenuPriorityOn
             : sRadioText_MenuPriorityOff;
    case RADIO_MENU_REPEAT:
        return sRadioRepeatEnabled
             ? sRadioText_MenuRepeatOn
             : sRadioText_MenuRepeatOff;
    case RADIO_MENU_SHUFFLE:
        return sRadioShuffleEnabled
             ? sRadioText_MenuShuffleOn
             : sRadioText_MenuShuffleOff;
    default:
        return sRadioText_MenuReturn;
    }
}

static void Radio_DrawMenu(u16 songId)
{
    u8 top;
    u8 row;

    sRadioMarqueeEnabled = FALSE;
    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        sRadioText_MenuTitle,
        2,
        2,
        TEXT_SKIP_DRAW,
        NULL
    );

    // Only two menu rows are rendered at once. This intentionally fits
    // inside the original 6-tile-high radio window without clipping.
    if (sRadioMenuCursor == 0)
        top = 0;
    else if (sRadioMenuCursor >= RADIO_MENU_ITEM_COUNT - 1)
        top = RADIO_MENU_ITEM_COUNT - 2;
    else
        top = sRadioMenuCursor - 1;

    for (row = 0; row < 2; row++)
    {
        u8 item = top + row;
        u8 y = 18 + row * 16;

        if (item >= RADIO_MENU_ITEM_COUNT)
            break;

        if (item == sRadioMenuCursor)
            AddTextPrinterParameterized(
                WIN_MUSIC_INFO,
                RADIO_FONT,
                sRadioText_Cursor,
                2,
                y,
                TEXT_SKIP_DRAW,
                NULL
            );

        AddTextPrinterParameterized(
            WIN_MUSIC_INFO,
            RADIO_FONT,
            Radio_GetMenuItemText(item, songId),
            12,
            y,
            TEXT_SKIP_DRAW,
            NULL
        );
    }

    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

static void Radio_DrawSearchLetter(void)
{
    sRadioMarqueeEnabled = FALSE;
    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        sRadioText_SearchTitle,
        2,
        2,
        TEXT_SKIP_DRAW,
        NULL
    );

    gStringVar1[0] = sRadioSearchLetters[sRadioSearchLetter];
    gStringVar1[1] = EOS;
    StringExpandPlaceholders(gStringVar4, sRadioText_SearchLetterFmt);

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        gStringVar4,
        2,
        18,
        TEXT_SKIP_DRAW,
        NULL
    );

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        sRadioText_SearchHelp,
        2,
        34,
        TEXT_SKIP_DRAW,
        NULL
    );

    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}


static void Radio_BuildSearchResults(void)
{
    u16 i;
    u16 count = Station_Count(STATION_ALL);
    u8 target = sRadioSearchLetters[sRadioSearchLetter];

    sRadioSearchResultCount = 0;

    for (i = 0; i < count; i++)
    {
        u16 songId = Station_GetTrack(STATION_ALL, i);
        u8 name[64];
        bool8 match;

        Radio_GetDisplayName(songId, TRUE, name, sizeof(name));

        if (name[0] == EOS)
            continue;

        match = (name[0] == target);

        if (match)
        {
            if (sRadioSearchResultCount >= RADIO_SEARCH_CAPACITY)
                break;

            sRadioSearchResults[sRadioSearchResultCount] = songId;
            sRadioSearchResultCount++;
        }
    }
}

static void Radio_DrawTrackList(const u8 *header, const u16 *list, u8 count)
{
    u8 top;
    u8 row;

    sRadioMarqueeEnabled = FALSE;
    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        header,
        2,
        2,
        TEXT_SKIP_DRAW,
        NULL
    );

    if (count == 0)
    {
        AddTextPrinterParameterized(
            WIN_MUSIC_INFO,
            RADIO_FONT,
            sRadioText_EmptyList,
            2,
            24,
            TEXT_SKIP_DRAW,
            NULL
        );

        CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
        return;
    }

    if (sRadioListCursor >= count)
        sRadioListCursor = count - 1;

    if (sRadioListCursor == 0)
        top = 0;
    else if (sRadioListCursor >= count - 1)
        top = (count > 1) ? count - 2 : 0;
    else
        top = sRadioListCursor - 1;

    for (row = 0; row < 2; row++)
    {
        u8 index = top + row;
        u8 y = 18 + row * 16;
        u8 fullName[64];
        u8 shortName[28];

        if (index >= count)
            break;

        if (index == sRadioListCursor)
            AddTextPrinterParameterized(
                WIN_MUSIC_INFO,
                RADIO_FONT,
                sRadioText_Cursor,
                2,
                y,
                TEXT_SKIP_DRAW,
                NULL
            );

        Radio_GetDisplayName(list[index], TRUE, fullName, sizeof(fullName));
        Radio_CopyTruncated(shortName, fullName, sizeof(shortName), 24);

        AddTextPrinterParameterized(
            WIN_MUSIC_INFO,
            RADIO_FONT,
            shortName,
            12,
            y,
            TEXT_SKIP_DRAW,
            NULL
        );
    }

    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

static void Radio_ReturnToMain(u8 taskId)
{
    sRadioUiMode = RADIO_UI_MAIN;
    Radio_DrawMusicInfo(
        (u16)gTasks[taskId].data[0],
        (bool8)gTasks[taskId].data[1]
    );
}

static void Radio_PlayListSelection(u8 taskId, u8 station, u16 index)
{
    u16 oldSong = (u16)gTasks[taskId].data[0];
    bool8 playing = (bool8)gTasks[taskId].data[1];
    u16 songId = Station_GetTrack(station, index);

    if (playing)
    {
        m4aSongNumStop(oldSong);
        m4aSongNumStart(songId);
    }

    sRadioStation = station;
    sRadioStationIndex = index;
    sRadioCurrentSong = songId;
    gTasks[taskId].data[0] = (s16)songId;

    Radio_ReturnToMain(taskId);
}

static void Radio_PlaySearchSelection(u8 taskId)
{
    u16 songId;
    u16 index;

    if (sRadioSearchResultCount == 0)
        return;

    songId = sRadioSearchResults[sRadioListCursor];
    index = Station_FindTrack(STATION_ALL, songId);
    Radio_PlayListSelection(taskId, STATION_ALL, index);
}

static void Radio_FixDynamicStationAfterRemoval(u16 currentSong)
{
    if (sRadioStation == STATION_FAVORITES)
    {
        if (Radio_ListContains(sRadioFavorites, sRadioFavoritesCount, currentSong))
            sRadioStationIndex = Station_FindTrack(STATION_FAVORITES, currentSong);
        else
        {
            sRadioStation = STATION_ALL;
            sRadioStationIndex = Station_FindTrack(STATION_ALL, currentSong);
        }
    }
    else if (sRadioStation == STATION_PLAYLIST)
    {
        if (Radio_ListContains(sRadioPlaylist, sRadioPlaylistCount, currentSong))
            sRadioStationIndex = Station_FindTrack(STATION_PLAYLIST, currentSong);
        else
        {
            sRadioStation = STATION_ALL;
            sRadioStationIndex = Station_FindTrack(STATION_ALL, currentSong);
        }
    }
}

static void Radio_HandleOverlayInput(u8 taskId)
{
    u16 songId = (u16)gTasks[taskId].data[0];
    bool8 playing = (bool8)gTasks[taskId].data[1];

    if (sRadioUiMode == RADIO_UI_MENU)
    {
        if (JOY_NEW(DPAD_UP))
        {
            sRadioMenuCursor = (sRadioMenuCursor > 0)
                             ? sRadioMenuCursor - 1
                             : RADIO_MENU_ITEM_COUNT - 1;
            PlaySE(SE_SELECT);
            Radio_DrawMenu(songId);
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            sRadioMenuCursor = (sRadioMenuCursor + 1) % RADIO_MENU_ITEM_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawMenu(songId);
            return;
        }

        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);
            if (JOY_NEW(START_BUTTON))
                Radio_PressButton(sRadioBtnStartId);
            Radio_ReturnToMain(taskId);
            return;
        }

        if (JOY_NEW(A_BUTTON))
        {
            PlaySE(SE_SELECT);

            switch (sRadioMenuCursor)
            {
            case RADIO_MENU_SEARCH:
                sRadioUiMode = RADIO_UI_SEARCH_LETTER;
                sRadioSearchLetter = 0;
                Radio_DrawSearchLetter();
                break;

            case RADIO_MENU_FAVORITES:
                sRadioUiMode = RADIO_UI_FAVORITES;
                sRadioListCursor = 0;
                Radio_DrawTrackList(
                    sRadioText_FavoritesHead,
                    sRadioFavorites,
                    sRadioFavoritesCount
                );
                break;

            case RADIO_MENU_PLAYLIST:
                sRadioUiMode = RADIO_UI_PLAYLIST;
                sRadioListCursor = 0;
                Radio_DrawTrackList(
                    sRadioText_PlaylistHead,
                    sRadioPlaylist,
                    sRadioPlaylistCount
                );
                break;

            case RADIO_MENU_TOGGLE_FAVORITE:
                if (Radio_ListContains(sRadioFavorites, sRadioFavoritesCount, songId))
                    Radio_RemoveFromList(sRadioFavorites, &sRadioFavoritesCount, songId);
                else
                    Radio_AddUnique(sRadioFavorites, &sRadioFavoritesCount, songId);

                Radio_FixDynamicStationAfterRemoval(songId);
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_ADD_PLAYLIST:
                Radio_AddUnique(sRadioPlaylist, &sRadioPlaylistCount, songId);
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_PRIORITY:
                sRadioPriorityEnabled = !sRadioPriorityEnabled;

                if (sRadioPriorityEnabled && playing)
                    Radio_QueueNowPlayingPopup(songId);
                else if (!sRadioPriorityEnabled)
                    Radio_ClearNowPlayingPopupQueue();

                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_REPEAT:
                sRadioRepeatEnabled = !sRadioRepeatEnabled;
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_SHUFFLE:
                sRadioShuffleEnabled = !sRadioShuffleEnabled;
                Radio_DrawMenu(songId);
                break;

            default:
                Radio_ReturnToMain(taskId);
                break;
            }

            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_SEARCH_LETTER)
    {
        if (JOY_NEW(DPAD_LEFT))
        {
            sRadioSearchLetter = (sRadioSearchLetter > 0)
                               ? sRadioSearchLetter - 1
                               : RADIO_SEARCH_LETTER_COUNT - 1;
            PlaySE(SE_SELECT);
            Radio_DrawSearchLetter();
            return;
        }

        if (JOY_NEW(DPAD_RIGHT))
        {
            sRadioSearchLetter = (sRadioSearchLetter + 1) % RADIO_SEARCH_LETTER_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawSearchLetter();
            return;
        }

        if (JOY_NEW(DPAD_UP))
        {
            sRadioSearchLetter = (sRadioSearchLetter + RADIO_SEARCH_LETTER_COUNT - 5)
                               % RADIO_SEARCH_LETTER_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawSearchLetter();
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            sRadioSearchLetter = (sRadioSearchLetter + 5)
                               % RADIO_SEARCH_LETTER_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawSearchLetter();
            return;
        }

        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);
            sRadioUiMode = RADIO_UI_MENU;
            Radio_DrawMenu(songId);
            return;
        }

        if (JOY_NEW(A_BUTTON))
        {
            PlaySE(SE_SELECT);
            Radio_BuildSearchResults();
            sRadioListCursor = 0;
            sRadioUiMode = RADIO_UI_SEARCH_RESULTS;
            Radio_DrawTrackList(
                sRadioText_SearchResults,
                sRadioSearchResults,
                sRadioSearchResultCount
            );
            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_SEARCH_RESULTS)
    {
        if (JOY_NEW(B_BUTTON))
        {
            PlaySE(SE_SELECT);
            sRadioUiMode = RADIO_UI_SEARCH_LETTER;
            Radio_DrawSearchLetter();
            return;
        }

        if (sRadioSearchResultCount == 0)
            return;

        if (JOY_NEW(DPAD_UP))
        {
            sRadioListCursor = (sRadioListCursor > 0)
                             ? sRadioListCursor - 1
                             : sRadioSearchResultCount - 1;
            PlaySE(SE_SELECT);
            Radio_DrawTrackList(
                sRadioText_SearchResults,
                sRadioSearchResults,
                sRadioSearchResultCount
            );
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            sRadioListCursor = (sRadioListCursor + 1) % sRadioSearchResultCount;
            PlaySE(SE_SELECT);
            Radio_DrawTrackList(
                sRadioText_SearchResults,
                sRadioSearchResults,
                sRadioSearchResultCount
            );
            return;
        }

        if (JOY_NEW(A_BUTTON))
        {
            PlaySE(SE_SELECT);
            Radio_PlaySearchSelection(taskId);
            return;
        }

        if (JOY_NEW(SELECT_BUTTON))
        {
            PlaySE(SE_SELECT);
            Radio_AddUnique(
                sRadioPlaylist,
                &sRadioPlaylistCount,
                sRadioSearchResults[sRadioListCursor]
            );
            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_FAVORITES || sRadioUiMode == RADIO_UI_PLAYLIST)
    {
        u16 *list = (sRadioUiMode == RADIO_UI_FAVORITES)
                  ? sRadioFavorites
                  : sRadioPlaylist;
        u8 *count = (sRadioUiMode == RADIO_UI_FAVORITES)
                  ? &sRadioFavoritesCount
                  : &sRadioPlaylistCount;
        const u8 *header = (sRadioUiMode == RADIO_UI_FAVORITES)
                         ? sRadioText_FavoritesHead
                         : sRadioText_PlaylistHead;
        u8 station = (sRadioUiMode == RADIO_UI_FAVORITES)
                   ? STATION_FAVORITES
                   : STATION_PLAYLIST;

        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);
            sRadioUiMode = RADIO_UI_MENU;
            Radio_DrawMenu(songId);
            return;
        }

        if (*count == 0)
            return;

        if (JOY_NEW(DPAD_UP))
        {
            sRadioListCursor = (sRadioListCursor > 0)
                             ? sRadioListCursor - 1
                             : *count - 1;
            PlaySE(SE_SELECT);
            Radio_DrawTrackList(header, list, *count);
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            sRadioListCursor = (sRadioListCursor + 1) % *count;
            PlaySE(SE_SELECT);
            Radio_DrawTrackList(header, list, *count);
            return;
        }

        if (JOY_NEW(A_BUTTON))
        {
            PlaySE(SE_SELECT);
            Radio_PlayListSelection(taskId, station, sRadioListCursor);
            return;
        }

        if (JOY_NEW(SELECT_BUTTON))
        {
            u16 removedSong = list[sRadioListCursor];

            PlaySE(SE_SELECT);
            Radio_RemoveFromList(list, count, removedSong);

            if (sRadioListCursor >= *count && sRadioListCursor > 0)
                sRadioListCursor--;

            Radio_FixDynamicStationAfterRemoval(songId);
            Radio_DrawTrackList(header, list, *count);
            return;
        }
    }
}

// ---------------------------------------------------------------------------
// Radio marquee / ticker.
// Short names stay static. Long names scroll one character every 8 frames,
// with a small blank gap before wrapping back to the beginning.
// ---------------------------------------------------------------------------
static void Radio_SetStatusMarqueeText(const u8 *text)
{
    u16 i = 0;

    if (text == NULL)
    {
        sRadioStatusMarqueeText[0] = EOS;
        sRadioStatusMarqueeLength = 0;
        sRadioStatusMarqueeOffset = 0;
        sRadioStatusMarqueeTimer = 0;
        sRadioStatusMarqueeEnabled = FALSE;
        return;
    }

    while (text[i] != EOS && i < RADIO_STATUS_MARQUEE_TEXT_SIZE - 1)
    {
        sRadioStatusMarqueeText[i] = text[i];
        i++;
    }

    sRadioStatusMarqueeText[i] = EOS;
    sRadioStatusMarqueeLength = i;
    sRadioStatusMarqueeOffset = 0;
    sRadioStatusMarqueeTimer = 0;
    sRadioStatusMarqueeEnabled = (i > RADIO_STATUS_MARQUEE_VISIBLE_CHARS);
}

static void Radio_BuildStatusMarqueeSlice(u8 *dest, u32 destSize)
{
    u16 i;

    if (dest == NULL || destSize == 0)
        return;

    if (!sRadioStatusMarqueeEnabled)
    {
        i = 0;
        while (i < destSize - 1
            && i < sRadioStatusMarqueeLength
            && sRadioStatusMarqueeText[i] != EOS)
        {
            dest[i] = sRadioStatusMarqueeText[i];
            i++;
        }
        dest[i] = EOS;
        return;
    }

    for (i = 0; i < RADIO_STATUS_MARQUEE_VISIBLE_CHARS && i < destSize - 1; i++)
    {
        u16 cycleLength = sRadioStatusMarqueeLength + RADIO_STATUS_MARQUEE_GAP_CHARS;
        u16 pos = (sRadioStatusMarqueeOffset + i) % cycleLength;

        if (pos < sRadioStatusMarqueeLength)
            dest[i] = sRadioStatusMarqueeText[pos];
        else
            dest[i] = CHAR_SPACE;
    }

    dest[i] = EOS;
}

static void Radio_PrintStatusMarquee(void)
{
    u8 visibleText[RADIO_STATUS_MARQUEE_VISIBLE_CHARS + 1];

    Radio_BuildStatusMarqueeSlice(visibleText, sizeof(visibleText));
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        visibleText,
        112,
        2,
        TEXT_SKIP_DRAW,
        NULL
    );
}

static void Radio_UpdateStatusMarquee(void)
{
    u16 cycleLength;

    if (!sRadioStatusMarqueeEnabled || sRadioStatusMarqueeLength == 0)
        return;

    sRadioStatusMarqueeTimer++;
    if (sRadioStatusMarqueeTimer < RADIO_STATUS_MARQUEE_DELAY_FRAMES)
        return;

    sRadioStatusMarqueeTimer = 0;
    cycleLength = sRadioStatusMarqueeLength + RADIO_STATUS_MARQUEE_GAP_CHARS;

    sRadioStatusMarqueeOffset++;
    if (sRadioStatusMarqueeOffset >= cycleLength)
        sRadioStatusMarqueeOffset = 0;

    // Clear only the right half of the top row. Track counter stays untouched.
    FillWindowPixelRect(
        WIN_MUSIC_INFO,
        PIXEL_FILL(1),
        112,
        0,
        112,
        16
    );

    Radio_PrintStatusMarquee();
    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

static void Radio_SetMarqueeText(const u8 *text)
{
    u16 i = 0;

    if (text == NULL)
    {
        sRadioMarqueeText[0] = EOS;
        sRadioMarqueeLength = 0;
        sRadioMarqueeOffset = 0;
        sRadioMarqueeTimer = 0;
        sRadioMarqueeEnabled = FALSE;
        return;
    }

    while (text[i] != EOS && i < RADIO_MARQUEE_TEXT_SIZE - 1)
    {
        sRadioMarqueeText[i] = text[i];
        i++;
    }

    sRadioMarqueeText[i] = EOS;
    sRadioMarqueeLength = i;
    sRadioMarqueeOffset = 0;
    sRadioMarqueeTimer = 0;
    sRadioMarqueeEnabled = (i > RADIO_MARQUEE_VISIBLE_CHARS);
}

static void Radio_BuildMarqueeSlice(u8 *dest, u32 destSize)
{
    u16 i;

    if (dest == NULL || destSize == 0)
        return;

    if (!sRadioMarqueeEnabled)
    {
        i = 0;
        while (i < destSize - 1
            && i < sRadioMarqueeLength
            && sRadioMarqueeText[i] != EOS)
        {
            dest[i] = sRadioMarqueeText[i];
            i++;
        }

        dest[i] = EOS;
        return;
    }

    for (i = 0; i < RADIO_MARQUEE_VISIBLE_CHARS && i < destSize - 1; i++)
    {
        u16 cycleLength = sRadioMarqueeLength + RADIO_MARQUEE_GAP_CHARS;
        u16 pos = (sRadioMarqueeOffset + i) % cycleLength;

        if (pos < sRadioMarqueeLength)
            dest[i] = sRadioMarqueeText[pos];
        else
            dest[i] = CHAR_SPACE;
    }

    dest[i] = EOS;
}

static void Radio_PrintSongMarquee(void)
{
    u8 visibleText[RADIO_MARQUEE_VISIBLE_CHARS + 1];

    Radio_BuildMarqueeSlice(visibleText, sizeof(visibleText));
    StringCopy(gStringVar1, visibleText);
    StringExpandPlaceholders(gStringVar4, sRadioText_SongFmt);
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        gStringVar4,
        2,
        18,
        TEXT_SKIP_DRAW,
        NULL
    );
}

static void Radio_UpdateMarquee(void)
{
    u16 cycleLength;

    if (sRadioUiMode != RADIO_UI_MAIN)
        return;

    Radio_UpdateStatusMarquee();

    if (!sRadioMarqueeEnabled || sRadioMarqueeLength == 0)
        return;

    sRadioMarqueeTimer++;

    if (sRadioMarqueeTimer < RADIO_MARQUEE_DELAY_FRAMES)
        return;

    sRadioMarqueeTimer = 0;

    cycleLength = sRadioMarqueeLength + RADIO_MARQUEE_GAP_CHARS;
    sRadioMarqueeOffset++;

    if (sRadioMarqueeOffset >= cycleLength)
        sRadioMarqueeOffset = 0;

    // Only erase/redraw the song-name row.
    FillWindowPixelRect(
        WIN_MUSIC_INFO,
        PIXEL_FILL(1),
        0,
        16,
        28 * 8,
        16
    );

    Radio_PrintSongMarquee();
    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

static void Radio_DrawMusicInfo(u16 songId, bool8 playing)
{
    const u8 *rawName;
    u8 formattedName[64];

    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    // Line 1: station-relative track number, e.g. "Track:3/18".
    // This is more radio-like than exposing the internal song ID.
    ConvertIntToDecimalStringN(
        gStringVar1,
        sRadioStationIndex + 1,
        STR_CONV_MODE_LEFT_ALIGN,
        3
    );
    ConvertIntToDecimalStringN(
        gStringVar2,
        Station_Count(sRadioStation),
        STR_CONV_MODE_LEFT_ALIGN,
        3
    );
    StringExpandPlaceholders(gStringVar4, sRadioText_TrackFmt);
    AddTextPrinterParameterized(WIN_MUSIC_INFO, RADIO_FONT, gStringVar4, 2, 2, TEXT_SKIP_DRAW, NULL);

    if (playing)
    {
        Radio_SetStatusMarqueeText(sStationNowPlayingNames[sRadioStation]);
        Radio_PrintStatusMarquee();
    }
    else
    {
        Radio_SetStatusMarqueeText(NULL);
        AddTextPrinterParameterized(
            WIN_MUSIC_INFO,
            RADIO_FONT,
            sRadioText_Paused,
            130,
            2,
            TEXT_SKIP_DRAW,
            NULL
        );
    }

    // Line 2: song name.
    // Anime / Indie tracks get their friendly radio labels. Favorites and
    // Playlist keep those labels when they contain one of these songs.
    if (sRadioStation == STATION_ANIME
        || sRadioStation == STATION_INDIE_ROCK
        || sRadioStation == STATION_FAVORITES
        || sRadioStation == STATION_PLAYLIST)
    {
        const u8 *specialName = Radio_GetSpecialDisplayName(songId);

        if (specialName != NULL)
            StringCopy(formattedName, specialName);
        else
        {
            rawName = Radio_GetSongName(songId);
            Radio_FormatSongName(rawName != NULL ? rawName : NULL, formattedName, sizeof(formattedName));
        }
    }
    else
    {
        rawName = Radio_GetSongName(songId);
        Radio_FormatSongName(rawName != NULL ? rawName : NULL, formattedName, sizeof(formattedName));
    }

    Radio_SetMarqueeText(formattedName);
    Radio_PrintSongMarquee();

    // Line 3: clean station label.
    // START / SELECT are now represented by their physical button sprites
    // on the redesigned radio face, so the text window no longer repeats them.
    StringCopy(gStringVar1, sStationNames[sRadioStation]);
    StringExpandPlaceholders(gStringVar4, sRadioText_StationFmt);
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        gStringVar4,
        2,
        34,
        TEXT_SKIP_DRAW,
        NULL
    );

    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

// ===========================================================================
// Task data aliases
// ===========================================================================
#define tCurrSong   data[0]
#define tIsPlaying  data[1]

static void Task_RadioHandleInput(u8 taskId)
{
    u16   songId  = (u16)gTasks[taskId].tCurrSong;
    bool8 playing = (bool8)gTasks[taskId].tIsPlaying;
    bool8 changed = FALSE;

    // New physical START / SELECT buttons use the same two-frame feedback
    // convention as A / L / R / B.
    if (JOY_RELEASED(START_BUTTON))
        Radio_ReleaseButton(sRadioBtnStartId);
    if (JOY_RELEASED(SELECT_BUTTON))
        Radio_ReleaseButton(sRadioBtnSelectId);

    // Priority/Repeat keeps running while the radio screen itself is open.
    if (RadioPriority_Update())
    {
        songId = sRadioCurrentSong;
        playing = sRadioIsPlaying;
        gTasks[taskId].tCurrSong = (s16)songId;
        gTasks[taskId].tIsPlaying = (s16)playing;

        if (sRadioUiMode == RADIO_UI_MAIN)
            Radio_DrawMusicInfo(songId, playing);
        else if (sRadioUiMode == RADIO_UI_MENU)
            Radio_DrawMenu(songId);
    }

    if (sRadioUiMode != RADIO_UI_MAIN)
    {
        Radio_HandleOverlayInput(taskId);
        return;
    }

    // --- START: Radio Menu ---
    if (JOY_NEW(START_BUTTON))
    {
        PlaySE(SE_SELECT);
        Radio_PressButton(sRadioBtnStartId);
        sRadioUiMode = RADIO_UI_MENU;
        sRadioMenuCursor = 0;
        Radio_DrawMenu(songId);
        return;
    }

    // --- Station cycle (SELECT) ---
    // Skip Favorites / Playlist while they are empty.
    if (JOY_NEW(SELECT_BUTTON))
    {
        u8 attempts = 0;

        PlaySE(SE_SELECT);
        Radio_PressButton(sRadioBtnSelectId);

        do
        {
            sRadioStation = (sRadioStation + 1) % STATION_COUNT;
            attempts++;
        }
        while (Station_Count(sRadioStation) == 0 && attempts < STATION_COUNT);

        sRadioStationIndex = Station_FindTrack(sRadioStation, songId);
        Radio_SyncSong();
        songId = sRadioCurrentSong;

        if (playing)
        {
            m4aSongNumStop(gTasks[taskId].tCurrSong);
            m4aSongNumStart(songId);
        }

        gTasks[taskId].tCurrSong = (s16)songId;
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;

        if (sRadioPriorityEnabled && playing)
            Radio_QueueNowPlayingPopup(songId);

        Radio_DrawMusicInfo(songId, playing);
        return;
    }

    // --- Track navigation (L / R / DPAD) ---
    if (JOY_NEW(DPAD_RIGHT) || JOY_NEW(DPAD_UP) || JOY_NEW(R_BUTTON))
    {
        u16 count = Station_Count(sRadioStation);

        if (sRadioShuffleEnabled && count > 1)
            sRadioStationIndex = Radio_RandomIndex(count, sRadioStationIndex);
        else
            sRadioStationIndex = (sRadioStationIndex + 1 < count)
                               ? sRadioStationIndex + 1
                               : 0;

        Radio_SyncSong();
        songId = sRadioCurrentSong;
        changed = TRUE;
        Radio_PressButton(sRadioBtnNextId);
    }
    else if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_DOWN) || JOY_NEW(L_BUTTON))
    {
        u16 count = Station_Count(sRadioStation);

        sRadioStationIndex = (sRadioStationIndex > 0)
                           ? sRadioStationIndex - 1
                           : count - 1;

        Radio_SyncSong();
        songId = sRadioCurrentSong;
        changed = TRUE;
        Radio_PressButton(sRadioBtnBackId);
    }

    if (JOY_RELEASED(R_BUTTON) || JOY_RELEASED(DPAD_RIGHT) || JOY_RELEASED(DPAD_UP))
        Radio_ReleaseButton(sRadioBtnNextId);

    if (JOY_RELEASED(L_BUTTON) || JOY_RELEASED(DPAD_LEFT) || JOY_RELEASED(DPAD_DOWN))
        Radio_ReleaseButton(sRadioBtnBackId);

    if (changed)
    {
        PlaySE(SE_SELECT);

        if (playing)
        {
            m4aSongNumStop(gTasks[taskId].tCurrSong);
            m4aSongNumStart(songId);
        }

        gTasks[taskId].tCurrSong = (s16)songId;
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;

        if (sRadioPriorityEnabled && playing)
            Radio_QueueNowPlayingPopup(songId);

        Radio_DrawMusicInfo(songId, playing);
    }

    // --- Play / Pause (A only; START is now the Radio Menu) ---
    if (JOY_NEW(A_BUTTON))
    {
        PlaySE(SE_SELECT);

        if (playing)
        {
            m4aSongNumStop(songId);
            playing = FALSE;
        }
        else
        {
            m4aSongNumStart(songId);
            playing = TRUE;
            Radio_ResetPlaybackMonitor();
        }

        gTasks[taskId].tIsPlaying = (s16)playing;
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;

        if (!playing)
            Radio_ClearNowPlayingPopupQueue();
        else if (sRadioPriorityEnabled)
            Radio_QueueNowPlayingPopup(songId);

        Radio_UpdatePlayPauseButtons(playing);
        Radio_DrawMusicInfo(songId, playing);

        if (sRadioJigSpriteId != 0xFF)
            gSprites[sRadioJigSpriteId].animPaused = !playing;

        if (sRadioStereo1Id != 0xFF)
            gSprites[sRadioStereo1Id].animPaused = !playing;

        if (sRadioStereo2Id != 0xFF)
            gSprites[sRadioStereo2Id].animPaused = !playing;
    }

    // --- Close (B) ---
    if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_SELECT);
        Radio_PressButton(sRadioBtnOffId);
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;
        gTasks[taskId].func = Task_RadioFadeAndExit;
    }
}

static void Task_RadioFadeAndExit(u8 taskId)
{
    if (!IsSEPlaying())
    {
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        gTasks[taskId].func = Task_RadioWaitFadeExit;
    }
}

static void Task_RadioWaitFadeExit(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        DestroyTask(taskId);
        FreeAllWindowBuffers();
        ResetBgsAndClearDma3BusyFlags(0);
        SetMainCallback2(sRadioReturnCallback);
    }
}

#undef tCurrSong
#undef tIsPlaying

// ===========================================================================
// Sprite callbacks
// ===========================================================================

// ---------------------------------------------------------------------------
// SpriteCB_RadioJig — Jigglypuff sings on loop (4 frames).
// No movement; frame animation is handled automatically by the sprite engine.
// ---------------------------------------------------------------------------
static void SpriteCB_RadioJig(struct Sprite *sprite)
{
    (void)sprite; // frame animation only, no movement logic needed
}

// ---------------------------------------------------------------------------
// SpriteCB_RadioStereo — pulsing speaker effect.
// Oscillates scale between 100% (PA=256) and ~114% (PA=224) — triangle wave, 64 frames.
// When animPaused=TRUE (radio paused) it freezes at 1:1 scale.
// Each instance uses its own matrixNum so the two speakers pulse independently.
// ---------------------------------------------------------------------------
static void SpriteCB_RadioStereo(struct Sprite *sprite)
{
    s16 scale;
    u8  phase;

    if (sprite->animPaused)
    {
        // Same old animation behavior, only both speakers are permanently
        // smaller through data[1].
        scale = 256 + sprite->data[1];
        SetOamMatrix((u8)sprite->oam.matrixNum, (u16)scale, 0, 0, (u16)scale);
        return;
    }

    // OLD RADIO ANIMATION, copied back:
    phase = (u8)(sprite->data[0]);
    if (phase < 32)
        scale = 256 - (s16)phase;
    else
        scale = 224 + (s16)(phase - 32);

    // Fixed affine offset only:
    // LEFT  +48 -> smaller
    // RIGHT +64 -> even smaller
    scale += sprite->data[1];

    SetOamMatrix((u8)sprite->oam.matrixNum, (u16)scale, 0, 0, (u16)scale);
    sprite->data[0] = (sprite->data[0] + 1) % 64;
}

// ---------------------------------------------------------------------------
// Radio_CreateSprites — chamado no case 6 do CB2_LoadRadio
// ---------------------------------------------------------------------------
// Posições medidas diretamente no tileset (GBA 240x160):
//   Jig:          quadrado amarelo  → centro x=77,  y=56
//   Stereo LEFT:  círculo esquerdo  → centro x=179, y=29
//   Stereo RIGHT: círculo direito   → centro x=216, y=66
// ---------------------------------------------------------------------------
#define RADIO_JIG_X      106
#define RADIO_JIG_Y       56
#define RADIO_STEREO1_X  179
#define RADIO_STEREO1_Y   29
#define RADIO_STEREO2_X  216
#define RADIO_STEREO2_Y   66

static void Radio_CreateSprites(void)
{
    LoadCompressedSpriteSheet(sSpriteSheet_RadioJig);
    LoadSpritePalettes(sSpritePalette_RadioJig);
    LoadCompressedSpriteSheet(sSpriteSheet_RadioStereo);
    LoadSpritePalettes(sSpritePalette_RadioStereo);

    // Jigglypuff
    sRadioJigSpriteId = CreateSprite(&sSpriteTemplate_RadioJig, RADIO_JIG_X, RADIO_JIG_Y, 0);

    // Stereo LEFT — original pulse, smaller.
    sRadioStereo1Id = CreateSprite(&sSpriteTemplate_RadioStereo, RADIO_STEREO1_X, RADIO_STEREO1_Y, 0);
    gSprites[sRadioStereo1Id].oam.matrixNum = 0;
    gSprites[sRadioStereo1Id].data[0] = 0;   // ORIGINAL phase
    gSprites[sRadioStereo1Id].data[1] = 48;  // fixed smaller size
    SetOamMatrix(0, 304, 0, 0, 304);

    // Stereo RIGHT — original opposite phase, slightly smaller than LEFT.
    sRadioStereo2Id = CreateSprite(&sSpriteTemplate_RadioStereo, RADIO_STEREO2_X, RADIO_STEREO2_Y, 0);
    gSprites[sRadioStereo2Id].oam.matrixNum = 1;
    gSprites[sRadioStereo2Id].data[0] = 32;  // ORIGINAL opposite phase
    gSprites[sRadioStereo2Id].data[1] = 64;  // even smaller
    SetOamMatrix(1, 320, 0, 0, 320);

    // Start everything paused if radio is paused
    if (!sRadioIsPlaying)
    {
        gSprites[sRadioJigSpriteId].animPaused  = TRUE;
        gSprites[sRadioStereo1Id].animPaused     = TRUE;
        gSprites[sRadioStereo2Id].animPaused     = TRUE;
    }

    // --- Button sprites ---
    LoadCompressedSpriteSheet(sSpriteSheet_Play);
    LoadSpritePalettes(sSpritePalette_Play);
    LoadCompressedSpriteSheet(sSpriteSheet_Pause);
    LoadSpritePalettes(sSpritePalette_Pause);
    LoadCompressedSpriteSheet(sSpriteSheet_Next);
    LoadSpritePalettes(sSpritePalette_Next);
    LoadCompressedSpriteSheet(sSpriteSheet_Back);
    LoadSpritePalettes(sSpritePalette_Back);
    LoadCompressedSpriteSheet(sSpriteSheet_Off);
    LoadSpritePalettes(sSpritePalette_Off);
    LoadCompressedSpriteSheet(sSpriteSheet_Start);
    LoadSpritePalettes(sSpritePalette_Start);
    LoadCompressedSpriteSheet(sSpriteSheet_Select);
    LoadSpritePalettes(sSpritePalette_Select);

    sRadioBtnPlayId  = CreateSprite(&sSpriteTemplate_RadioBtn_Play,  RADIO_BTN_PLAY_X,  RADIO_BTN_PLAY_Y,  1);
    sRadioBtnPauseId = CreateSprite(&sSpriteTemplate_RadioBtn_Pause, RADIO_BTN_PAUSE_X, RADIO_BTN_PAUSE_Y, 1);
    sRadioBtnNextId  = CreateSprite(&sSpriteTemplate_RadioBtn_Next,  RADIO_BTN_NEXT_X,  RADIO_BTN_NEXT_Y,  1);
    sRadioBtnBackId   = CreateSprite(&sSpriteTemplate_RadioBtn_Back,   RADIO_BTN_BACK_X,   RADIO_BTN_BACK_Y,   1);
    sRadioBtnOffId    = CreateSprite(&sSpriteTemplate_RadioBtn_Off,   RADIO_BTN_OFF_X,   RADIO_BTN_OFF_Y,   1);
    sRadioBtnStartId  = CreateSprite(&sSpriteTemplate_RadioBtn_Start, RADIO_BTN_START_X, RADIO_BTN_START_Y, 1);

    // SELECT is one 64x64 sprite. The visible button artwork sits inside
    // the 64x64 frame exactly as supplied in select.png.
    sRadioBtnSelectId = CreateSprite(
        &sSpriteTemplate_RadioBtn_Select,
        RADIO_BTN_SELECT_X,
        RADIO_BTN_SELECT_Y,
        1
    );

    // Set initial play/pause frame based on current state
    Radio_UpdatePlayPauseButtons(sRadioIsPlaying);
}

// ===========================================================================
// VBlank / main loop callbacks
// ===========================================================================
static void VBlankCB_Radio(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_Radio(void)
{
    RunTasks();
    Radio_UpdateMarquee();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

// ===========================================================================
// Loading sequence
// Tileset loaded DIRECTLY into VRAM (same pattern as intro.c) to avoid
// any offset/buffer issues with the abstract BG system.
//   Tiles  -> BG_CHAR_ADDR(2)   = charBaseIndex 2
//   Tilemap -> BG_SCREEN_ADDR(8) = mapBaseIndex  8
// ===========================================================================
static void CB2_LoadRadio(void)
{
    u8 taskId;

    switch (gMain.state)
    {
    case 0:
        SetVBlankCallback(NULL);
        SetHBlankCallback(NULL);
        ScanlineEffect_Stop();
        break;

    case 1:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sRadioBgTemplates, ARRAY_COUNT(sRadioBgTemplates));
        // InitWindows automatically allocates the BG0 tilemap buffer (window.c:63-75).
        // Do NOT call SetBgTilemapBuffer manually -- it conflicts with the internal
        // AllocZeroed call and corrupts the heap.
        InitWindows(sRadioWindowTemplates);
        InitTextBoxGfxAndPrinters();
        break;

    case 2:
        ResetPaletteFade();
        ResetSpriteData();
        ResetTasks();
        break;

    case 3:
        // PLTT_SIZE_4BPP = 32 bytes = 1 slot (16 colors).
        // Using sizeof() is dangerous: if .gbapal has >32 bytes it overwrites
        // slots beyond 0, including slot 15 used by the font.
        LoadPalette(sRadioBg_Pal, BG_PLTT_ID(0), PLTT_SIZE_4BPP);
        LoadMessageBoxAndBorderGfx();
        // Load tiles directly into charbase 2 -- synchronous, no intermediate buffer.
        DecompressDataWithHeaderVram(sRadioBg_Gfx, (void *)(BG_CHAR_ADDR(2)));
        break;

    case 4:
        // Load tilemap directly into screenbase 8 -- same pattern as intro.c.
        CpuFill16(0, (void *)(BG_SCREEN_ADDR(8)), BG_SCREEN_SIZE);
        CpuCopy16(sRadioBg_Tilemap, (void *)(BG_SCREEN_ADDR(8)), 32 * 20 * 2);
        break;

    case 5:
        // Draw window tilemap and content.
        PutWindowTilemap(WIN_MUSIC_INFO);
        Radio_DrawMusicInfo(sRadioCurrentSong, sRadioIsPlaying);
        CopyBgTilemapBufferToVram(0);
        break;

    case 6:
        // Zero all BG scroll registers -- without this the tileset inherits
        // random scroll values from previous screens and appears misaligned.
        SetGpuReg(REG_OFFSET_BG0HOFS, 0);
        SetGpuReg(REG_OFFSET_BG0VOFS, 0);
        SetGpuReg(REG_OFFSET_BG1HOFS, 0);
        SetGpuReg(REG_OFFSET_BG1VOFS, 0);
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0 |
                                       DISPCNT_OBJ_1D_MAP |
                                       DISPCNT_OBJ_ON);
        ShowBg(0);
        ShowBg(1);
        EnableInterrupts(INTR_FLAG_VBLANK);
        SetVBlankCallback(VBlankCB_Radio);

        // Load and create sprites (Jigglypuff + Stereo speakers + buttons)
        Radio_CreateSprites();

        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);

        if (sRadioIsPlaying)
        {
            // Do not restart an already-playing radio song just because the
            // Radio UI was opened.
            if (gMPlayInfo_BGM.songHeader != gSongTable[sRadioCurrentSong].header)
            {
                m4aSongNumStart(sRadioCurrentSong);
                Radio_ResetPlaybackMonitor();
            }
            else if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
            {
                m4aMPlayContinue(&gMPlayInfo_BGM);
            }
        }

        taskId = CreateTask(Task_RadioHandleInput, 0);
        gTasks[taskId].data[0] = (s16)sRadioCurrentSong;
        gTasks[taskId].data[1] = (s16)sRadioIsPlaying;

        SetMainCallback2(CB2_Radio);
        return;
    }
    gMain.state++;
}

// ===========================================================================
// Public entry point
// ===========================================================================
void Radio_Open(MainCallback returnCallback)
{
    sRadioReturnCallback = returnCallback;

    if (sRadioMonitorSong != sRadioCurrentSong)
        Radio_ResetPlaybackMonitor();

    // UI always starts on the main screen.
    // Favorites / playlist remain intact for the current play session.
    sRadioUiMode = RADIO_UI_MAIN;
    sRadioMenuCursor = 0;
    sRadioListCursor = 0;
    sRadioSearchLetter = 0;
    sRadioSearchResultCount = 0;

    if (sRadioShuffleState == 0)
        sRadioShuffleState = 0xA5C31F27;

    if (sRadioStation >= STATION_COUNT)
        sRadioStation = STATION_ALL;

    // Validate saved state; reset if out of range
    if (sRadioCurrentSong < (u16)START_MUS || sRadioCurrentSong > (u16)END_MUS)
    {
        sRadioCurrentSong  = Station_GetTrack(sRadioStation, 0);
        sRadioIsPlaying    = FALSE;
    }

    // Sync index into current station
    sRadioStationIndex = Station_FindTrack(sRadioStation, sRadioCurrentSong);

    // Reset ticker; Radio_DrawMusicInfo() will populate it during loading.
    sRadioMarqueeText[0] = EOS;
    sRadioMarqueeLength = 0;
    sRadioMarqueeOffset = 0;
    sRadioMarqueeTimer = 0;
    sRadioMarqueeEnabled = FALSE;

    // Invalida IDs de sprite (serão preenchidos em Radio_CreateSprites).
    // Cannot initialize to 0xFF at declaration — that would place the variable
    // in the .data section which is discarded on GBA. Set it here instead.
    sRadioJigSpriteId = 0xFF;
    sRadioStereo1Id   = 0xFF;
    sRadioStereo2Id   = 0xFF;
    sRadioBtnPlayId   = 0xFF;
    sRadioBtnPauseId  = 0xFF;
    sRadioBtnNextId   = 0xFF;
    sRadioBtnBackId   = 0xFF;
    sRadioBtnOffId    = 0xFF;
    sRadioBtnStartId  = 0xFF;
    sRadioBtnSelectId = 0xFF;

    SetMainCallback2(CB2_LoadRadio);
}
