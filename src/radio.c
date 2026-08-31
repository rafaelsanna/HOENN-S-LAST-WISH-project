// radio.c
// Pokemon Radio - Key Item Screen
//
// Stations (SELECT cycles):
//   ALL TRACKS -> FAVORITES -> POKEMON GBA -> GAMES -> ANIME -> POP ->
//   CLASSIC ROCK -> ROCK METAL -> INDIE ROCK -> PLAYLIST 1 -> PLAYLIST 2 ->
//   PLAYLIST 3 -> ALL TRACKS
//
// ALL TRACKS contains radio-worthy music only. Short jingles/fanfares/test cues
// remain available to the game itself, but are intentionally omitted from radio.
//
// Main controls:
//   A           -> Play / Pause
//   START       -> Open Radio Menu (large left-side MENU button)
//   SELECT      -> Cycle station (large left-side CHANGE STATION button)
//   UP / DOWN   -> Select Song row or Radio Station row
//   LEFT/RIGHT  -> Change the selected row
//   L / R       -> Previous / Next song
//   B           -> Close (music keeps playing)
//
// Radio Menu order:
//   RADIO PRIORITY / REPEAT / SHUFFLE / SEARCH A-Z / FAVORITES /
//   ADD FAVORITE or REMOVE FAVORITE / MY PLAYLISTS / ADD TO PLAYLIST /
//   CONFIG / RETURN
//
// Favorites, three playlists, playback state and radio settings persist in
// SaveBlock1 through the fixed 512-byte HLW save extension.

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
#define RADIO_MARQUEE_TEXT_X         44
#define RADIO_MARQUEE_TEXT_WIDTH     (28 * 8 - RADIO_MARQUEE_TEXT_X)
#define RADIO_MARQUEE_TEXT_Y         18

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
// Favorites keep 32 slots. MY PLAYLISTS exposes three fixed playlists with
// 20 songs each. The playlist chooser is a single shared window.
// ---------------------------------------------------------------------------
#define RADIO_LIBRARY_CAPACITY        32
#define RADIO_PLAYLIST_COUNT           3
#define RADIO_PLAYLIST_CAPACITY       20
#define RADIO_SEARCH_CAPACITY         64
#define RADIO_MENU_ITEM_COUNT         10
#define RADIO_CONFIG_ITEM_COUNT        7
#define RADIO_STICKER_COUNT             5
#define RADIO_STICKER_SLOT_COUNT        7
#define RADIO_VOLUME_MAX              10
#define RADIO_SEARCH_LETTER_COUNT     26

enum RadioUiMode
{
    RADIO_UI_MAIN = 0,
    RADIO_UI_MENU,
    RADIO_UI_SEARCH_LETTER,
    RADIO_UI_SEARCH_RESULTS,
    RADIO_UI_FAVORITES,
    RADIO_UI_PLAYLIST_CHOOSER,
    RADIO_UI_PLAYLIST,
    RADIO_UI_SOUND_CONFIG,
    RADIO_UI_STICKER_EDITOR,
};

enum RadioPlaylistChooserAction
{
    RADIO_PLAYLIST_CHOOSE_OPEN = 0,
    RADIO_PLAYLIST_CHOOSE_ADD,
};

enum RadioMenuItem
{
    RADIO_MENU_PRIORITY = 0,
    RADIO_MENU_REPEAT,
    RADIO_MENU_SHUFFLE,
    RADIO_MENU_SEARCH,
    RADIO_MENU_FAVORITES,
    RADIO_MENU_TOGGLE_FAVORITE,
    RADIO_MENU_PLAYLIST,
    RADIO_MENU_ADD_PLAYLIST,
    RADIO_MENU_CONFIG,
    RADIO_MENU_RETURN,
};

enum RadioConfigItem
{
    RADIO_CONFIG_OUTPUT = 0,
    RADIO_CONFIG_VOLUME,
    RADIO_CONFIG_TRANSITION,
    RADIO_CONFIG_HIDE_COVERS,
    RADIO_CONFIG_COLOR_THEME,
    RADIO_CONFIG_STICKERS,
    RADIO_CONFIG_RETURN,
};

enum RadioMainSelection
{
    RADIO_MAIN_SELECT_SONG = 0,
    RADIO_MAIN_SELECT_STATION,
};

static EWRAM_DATA u8    sRadioUiMode;
static EWRAM_DATA u8    sRadioMainSelection;
static EWRAM_DATA u8    sRadioMenuCursor;
static EWRAM_DATA u8    sRadioConfigCursor;
static EWRAM_DATA u8    sRadioListCursor;
static EWRAM_DATA u8    sRadioSearchLetter;
static EWRAM_DATA u8    sRadioSearchResultCount;
static EWRAM_DATA u16   sRadioSearchResults[RADIO_SEARCH_CAPACITY];

static EWRAM_DATA u8    sRadioFavoritesCount;
static EWRAM_DATA u16   sRadioFavorites[RADIO_LIBRARY_CAPACITY];

static EWRAM_DATA u8    sRadioPlaylistCounts[RADIO_PLAYLIST_COUNT];
static EWRAM_DATA u16   sRadioPlaylists[RADIO_PLAYLIST_COUNT][RADIO_PLAYLIST_CAPACITY];
static EWRAM_DATA u8    sRadioActivePlaylist;
static EWRAM_DATA u8    sRadioBrowsePlaylist;
static EWRAM_DATA u8    sRadioPlaylistChooserCursor;
static EWRAM_DATA u8    sRadioPlaylistChooserAction;
static EWRAM_DATA u8    sRadioPlaylistChooserReturnMode;
static EWRAM_DATA u16   sRadioPlaylistAddSong;

static EWRAM_DATA bool8 sRadioShuffleEnabled;
static EWRAM_DATA u32   sRadioShuffleState;
static EWRAM_DATA bool8 sRadioPriorityEnabled;
static EWRAM_DATA bool8 sRadioRepeatEnabled; // default OFF (EWRAM/BSS)
static EWRAM_DATA u8    sRadioVolume;
static EWRAM_DATA bool8 sRadioTransitionFxEnabled;
static EWRAM_DATA bool8 sRadioHideCovers;
static EWRAM_DATA u8    sRadioColorTheme;

// Sticker customization. Five independent 32x32 OBJ stickers can be placed
// on seven fixed decorative slots marked in the layout reference.
static EWRAM_DATA u8    sRadioStickerSpriteIds[RADIO_STICKER_COUNT];
static EWRAM_DATA u8    sRadioStickerPositions[RADIO_STICKER_COUNT];
static EWRAM_DATA u8    sRadioStickerVisibleMask;
static EWRAM_DATA u8    sRadioStickerSelected;

enum RadioColorTheme
{
    RADIO_COLOR_THEME_NORMAL = 0,
    RADIO_COLOR_THEME_DARK,
    RADIO_COLOR_THEME_PURPLE,
    RADIO_COLOR_THEME_PINK,
    RADIO_COLOR_THEME_COUNT,
};

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
// RADIO_ALBUM_COVERS_LINK_V1
// Static 64x64 album artwork replaces Jigglypuff only for mapped songs.
static EWRAM_DATA u8 sRadioCoverSpriteId;
static EWRAM_DATA u8 sRadioCurrentCoverId;

#define RADIO_ART_GLOW_FRAMES 6
#define RADIO_ART_GLOW_MAX    12

enum RadioArtTransitionState
{
    RADIO_ART_TRANS_IDLE = 0,
    RADIO_ART_TRANS_GLOW_OUT,
    RADIO_ART_TRANS_GLOW_IN,
};

static EWRAM_DATA u8 sRadioArtTransitionState;
static EWRAM_DATA u8 sRadioArtTransitionTimer;
static EWRAM_DATA u8 sRadioNextCoverId;


// ===========================================================================
// Graphics
// ===========================================================================
static const u16 sRadioBg_Pal[]     = INCBIN_U16("graphics/radio/radiobg.gbapal");

// COLOR THEME changes only the BG palette used by radiobg.
// OBJ palettes (Jigglypuff, covers, buttons, stereo) and text stay untouched.
static const u16 sRadioBgPal_Dark[16] =
{
    RGB(10, 14, 9),  RGB(27, 27, 28), RGB(13, 14, 16), RGB(13, 8, 8),
    RGB(10, 6, 7),   RGB(8, 9, 11),   RGB(8, 5, 6),    RGB(6, 4, 5),
    RGB(5, 4, 5),    RGB(4, 4, 5),    RGB(3, 3, 4),    RGB(0, 0, 0),
    RGB(0, 0, 0),    RGB(0, 0, 0),    RGB(0, 0, 0),    RGB(0, 0, 0),
};

// Strong late-GBA violet while preserving the original metal/display contrast.
static const u16 sRadioBgPal_Purple[16] =
{
    RGB(18, 25, 13), RGB(31, 31, 31), RGB(17, 17, 21), RGB(24, 11, 31),
    RGB(19, 7, 28),  RGB(10, 10, 15), RGB(15, 5, 24),  RGB(10, 3, 18),
    RGB(7, 3, 12),   RGB(4, 4, 6),    RGB(3, 3, 5),    RGB(0, 0, 0),
    RGB(0, 0, 0),    RGB(0, 0, 0),    RGB(0, 0, 0),    RGB(0, 0, 0),
};

// Warm Jigglypuff-friendly pink: salmon highlights + raspberry/mauve shadows.
static const u16 sRadioBgPal_Pink[16] =
{
    RGB(22, 27, 16), RGB(31, 31, 31), RGB(18, 18, 20), RGB(31, 17, 22),
    RGB(29, 12, 19), RGB(11, 11, 15), RGB(25, 8, 16),  RGB(18, 5, 12),
    RGB(12, 5, 9),   RGB(5, 4, 6),    RGB(4, 3, 5),    RGB(0, 0, 0),
    RGB(0, 0, 0),    RGB(0, 0, 0),    RGB(0, 0, 0),    RGB(0, 0, 0),
};

static void Radio_ApplyBgColorTheme(void)
{
    const u16 *palette = sRadioBg_Pal;

    switch (sRadioColorTheme)
    {
    case RADIO_COLOR_THEME_DARK:
        palette = sRadioBgPal_Dark;
        break;
    case RADIO_COLOR_THEME_PURPLE:
        palette = sRadioBgPal_Purple;
        break;
    case RADIO_COLOR_THEME_PINK:
        palette = sRadioBgPal_Pink;
        break;
    default:
        break;
    }

    LoadPalette(palette, BG_PLTT_ID(0), PLTT_SIZE_4BPP);
}

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


// ===========================================================================
// RADIO STICKERS - five user-supplied static 32x32 OBJ images.
//
// Required source PNGs:
//   graphics/radio/sticker1.png ... graphics/radio/sticker5.png
//
// Each sticker owns its own 16-color OBJ palette so the artwork can be freely
// authored without sharing colors with Jigglypuff/buttons/covers.
// ===========================================================================
static const u16 sRadioSticker1_Pal[] = INCBIN_U16("graphics/radio/sticker1.gbapal");
static const u32 sRadioSticker1_Gfx[] = INCBIN_U32("graphics/radio/sticker1.4bpp.smol");
static const u16 sRadioSticker2_Pal[] = INCBIN_U16("graphics/radio/sticker2.gbapal");
static const u32 sRadioSticker2_Gfx[] = INCBIN_U32("graphics/radio/sticker2.4bpp.smol");
static const u16 sRadioSticker3_Pal[] = INCBIN_U16("graphics/radio/sticker3.gbapal");
static const u32 sRadioSticker3_Gfx[] = INCBIN_U32("graphics/radio/sticker3.4bpp.smol");
static const u16 sRadioSticker4_Pal[] = INCBIN_U16("graphics/radio/sticker4.gbapal");
static const u32 sRadioSticker4_Gfx[] = INCBIN_U32("graphics/radio/sticker4.4bpp.smol");
static const u16 sRadioSticker5_Pal[] = INCBIN_U16("graphics/radio/sticker5.gbapal");
static const u32 sRadioSticker5_Gfx[] = INCBIN_U32("graphics/radio/sticker5.4bpp.smol");

#define TAG_RADIO_STICKER1 0xD109
#define TAG_RADIO_STICKER2 0xD10A
#define TAG_RADIO_STICKER3 0xD10B
#define TAG_RADIO_STICKER4 0xD10C
#define TAG_RADIO_STICKER5 0xD10D

static const struct OamData sOamData_RadioSticker =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(32x32),
    .size       = SPRITE_SIZE(32x32),
    .priority   = 0,
};

static const union AnimCmd sAnim_RadioSticker[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_RadioSticker[] =
{
    sAnim_RadioSticker,
};

#define DEFINE_RADIO_STICKER(index, tag) \
static const struct CompressedSpriteSheet sSpriteSheet_RadioSticker##index[] = \
{ \
    {sRadioSticker##index##_Gfx, 0x200, tag}, \
    {}, \
}; \
static const struct SpritePalette sSpritePalette_RadioSticker##index[] = \
{ \
    {sRadioSticker##index##_Pal, tag}, \
    {}, \
}; \
static const struct SpriteTemplate sSpriteTemplate_RadioSticker##index = \
{ \
    .tileTag     = tag, \
    .paletteTag  = tag, \
    .oam         = &sOamData_RadioSticker, \
    .anims       = sAnims_RadioSticker, \
    .images      = NULL, \
    .affineAnims = gDummySpriteAffineAnimTable, \
    .callback    = SpriteCallbackDummy, \
};

DEFINE_RADIO_STICKER(1, TAG_RADIO_STICKER1)
DEFINE_RADIO_STICKER(2, TAG_RADIO_STICKER2)
DEFINE_RADIO_STICKER(3, TAG_RADIO_STICKER3)
DEFINE_RADIO_STICKER(4, TAG_RADIO_STICKER4)
DEFINE_RADIO_STICKER(5, TAG_RADIO_STICKER5)

// The green regions from the reference image form seven exact 32x32 cells:
//   0,1 = top-left 64x32 block
//   2,3 = top-middle 32x64 block
//   4   = middle 32x32 block
//   5,6 = right-bottom 32x64 block
//
// Coordinates below are sprite CENTERS, matching CreateSprite().
static const s16 sRadioStickerSlotX[RADIO_STICKER_SLOT_COUNT] =
{
    16, 48, 144, 144, 97, 224, 224
};

static const s16 sRadioStickerSlotY[RADIO_STICKER_SLOT_COUNT] =
{
    16, 16, 16, 48, 106, 112, 144
};


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

// ===========================================================================
// RADIO ALBUM COVERS - static 64x64 OBJ artwork
// Palette index 0 is transparent in GBA OBJ mode.
// ===========================================================================

enum RadioAlbumCoverId
{
    RADIO_COVER_3DOORSDOWN,
    RADIO_COVER_AROUND_THE_FUR,
    RADIO_COVER_ERA_VULGARIS,
    RADIO_COVER_HYBRID_THEORY,
    RADIO_COVER_KOI_NO_YOKAN,
    RADIO_COVER_LIKE_CLOCKWORK,
    RADIO_COVER_METEORA,
    RADIO_COVER_ONE_X,
    RADIO_COVER_SONGS_FOR_THE_DEAF,
    RADIO_COVER_WHITE_PONY,
    RADIO_COVER_HAIL_TO_THE_THIEF,
    RADIO_COVER_AMNESIAC,
    RADIO_COVER_KID_A,
    RADIO_COVER_OK_COMPUTER,
    RADIO_COVER_THE_BENDS,
    RADIO_COVER_THE_QUEEN_IS_DEAD,
    RADIO_COVER_IS_THIS_IT,
    RADIO_COVER_ROOM_ON_FIRE,
    RADIO_COVER_AM,
    RADIO_COVER_TONIGHT_THAT_I_MIGHT_SEE,
    RADIO_COVER_SOUVLAKI,
    RADIO_COVER_AINT_NO_REST_FOR_THE_WICKED,
    RADIO_COVER_FREAKING_OUT_THE_NEIGHBORHOOD,
    RADIO_COVER_DRACULA,
    RADIO_COVER_DISINTEGRATION,
    RADIO_COVER_WISH,
    RADIO_COVER_THREE_IMAGINARY_BOYS,
    RADIO_COVER_EITHER_OR,
    RADIO_COVER_UNKNOWN_PLEASURES,
    RADIO_COVER_FREEWHEELIN,
    RADIO_COVER_HIGHWAY_61_REVISITED,
    RADIO_COVER_BRINGING_IT_ALL_BACK_HOME,
    RADIO_COVER_PAT_GARRETT_AND_BILLY_THE_KID,
    RADIO_COVER_ARE_YOU_EXPERIENCED,
    RADIO_COVER_THE_WALL,
    RADIO_COVER_WISH_YOU_WERE_HERE,
    RADIO_COVER_DARK_SIDE_OF_THE_MOON,
    RADIO_COVER_DIVISION_BELL,
    RADIO_COVER_COUNT,
};

#define RADIO_COVER_NONE 0xFF
#define TAG_RADIO_COVER  0xD10F

static const u16 sRadioCoverThreeDoorsDown_Pal[] = INCBIN_U16("graphics/radio/covers/3doorsdown.gbapal");
static const u32 sRadioCoverThreeDoorsDown_Gfx[] = INCBIN_U32("graphics/radio/covers/3doorsdown.4bpp.smol");
static const u16 sRadioCoverAroundTheFur_Pal[] = INCBIN_U16("graphics/radio/covers/aroundthefur.gbapal");
static const u32 sRadioCoverAroundTheFur_Gfx[] = INCBIN_U32("graphics/radio/covers/aroundthefur.4bpp.smol");
static const u16 sRadioCoverEraVulgaris_Pal[] = INCBIN_U16("graphics/radio/covers/eravulgaris.gbapal");
static const u32 sRadioCoverEraVulgaris_Gfx[] = INCBIN_U32("graphics/radio/covers/eravulgaris.4bpp.smol");
static const u16 sRadioCoverHybridTheory_Pal[] = INCBIN_U16("graphics/radio/covers/hybridtheory.gbapal");
static const u32 sRadioCoverHybridTheory_Gfx[] = INCBIN_U32("graphics/radio/covers/hybridtheory.4bpp.smol");
static const u16 sRadioCoverKoiNoYokan_Pal[] = INCBIN_U16("graphics/radio/covers/koinoyokan.gbapal");
static const u32 sRadioCoverKoiNoYokan_Gfx[] = INCBIN_U32("graphics/radio/covers/koinoyokan.4bpp.smol");
static const u16 sRadioCoverLikeClockwork_Pal[] = INCBIN_U16("graphics/radio/covers/likeclockwork.gbapal");
static const u32 sRadioCoverLikeClockwork_Gfx[] = INCBIN_U32("graphics/radio/covers/likeclockwork.4bpp.smol");
static const u16 sRadioCoverMeteora_Pal[] = INCBIN_U16("graphics/radio/covers/meteora.gbapal");
static const u32 sRadioCoverMeteora_Gfx[] = INCBIN_U32("graphics/radio/covers/meteora.4bpp.smol");
static const u16 sRadioCoverOneX_Pal[] = INCBIN_U16("graphics/radio/covers/onex.gbapal");
static const u32 sRadioCoverOneX_Gfx[] = INCBIN_U32("graphics/radio/covers/onex.4bpp.smol");
static const u16 sRadioCoverSongsForTheDeaf_Pal[] = INCBIN_U16("graphics/radio/covers/songsforthedeaf.gbapal");
static const u32 sRadioCoverSongsForTheDeaf_Gfx[] = INCBIN_U32("graphics/radio/covers/songsforthedeaf.4bpp.smol");
static const u16 sRadioCoverWhitePony_Pal[] = INCBIN_U16("graphics/radio/covers/whitepony.gbapal");
static const u32 sRadioCoverWhitePony_Gfx[] = INCBIN_U32("graphics/radio/covers/whitepony.4bpp.smol");
static const u16 sRadioCoverHailToTheThief_Pal[] = INCBIN_U16("graphics/radio/covers/hailtothethief.gbapal");
static const u32 sRadioCoverHailToTheThief_Gfx[] = INCBIN_U32("graphics/radio/covers/hailtothethief.4bpp.smol");
static const u16 sRadioCoverAmnesiac_Pal[] = INCBIN_U16("graphics/radio/covers/amnesiac.gbapal");
static const u32 sRadioCoverAmnesiac_Gfx[] = INCBIN_U32("graphics/radio/covers/amnesiac.4bpp.smol");
static const u16 sRadioCoverKidA_Pal[] = INCBIN_U16("graphics/radio/covers/KIDA.gbapal");
static const u32 sRadioCoverKidA_Gfx[] = INCBIN_U32("graphics/radio/covers/KIDA.4bpp.smol");
static const u16 sRadioCoverOkComputer_Pal[] = INCBIN_U16("graphics/radio/covers/okcomputer.gbapal");
static const u32 sRadioCoverOkComputer_Gfx[] = INCBIN_U32("graphics/radio/covers/okcomputer.4bpp.smol");
static const u16 sRadioCoverTheBends_Pal[] = INCBIN_U16("graphics/radio/covers/thebends.gbapal");
static const u32 sRadioCoverTheBends_Gfx[] = INCBIN_U32("graphics/radio/covers/thebends.4bpp.smol");
static const u16 sRadioCoverTheQueenIsDead_Pal[] = INCBIN_U16("graphics/radio/covers/thequeenisdead.gbapal");
static const u32 sRadioCoverTheQueenIsDead_Gfx[] = INCBIN_U32("graphics/radio/covers/thequeenisdead.4bpp.smol");
static const u16 sRadioCoverIsThisIt_Pal[] = INCBIN_U16("graphics/radio/covers/isthisit.gbapal");
static const u32 sRadioCoverIsThisIt_Gfx[] = INCBIN_U32("graphics/radio/covers/isthisit.4bpp.smol");
static const u16 sRadioCoverRoomOnFire_Pal[] = INCBIN_U16("graphics/radio/covers/roomonfire.gbapal");
static const u32 sRadioCoverRoomOnFire_Gfx[] = INCBIN_U32("graphics/radio/covers/roomonfire.4bpp.smol");
static const u16 sRadioCoverAm_Pal[] = INCBIN_U16("graphics/radio/covers/AM.gbapal");
static const u32 sRadioCoverAm_Gfx[] = INCBIN_U32("graphics/radio/covers/AM.4bpp.smol");
static const u16 sRadioCoverTonightThatIMightSee_Pal[] = INCBIN_U16("graphics/radio/covers/tonightthatimightsee.gbapal");
static const u32 sRadioCoverTonightThatIMightSee_Gfx[] = INCBIN_U32("graphics/radio/covers/tonightthatimightsee.4bpp.smol");
static const u16 sRadioCoverSouvlaki_Pal[] = INCBIN_U16("graphics/radio/covers/slouvaki.gbapal");
static const u32 sRadioCoverSouvlaki_Gfx[] = INCBIN_U32("graphics/radio/covers/slouvaki.4bpp.smol");
static const u16 sRadioCoverAintNoRestForTheWicked_Pal[] = INCBIN_U16("graphics/radio/covers/aintnorestforthewicked.gbapal");
static const u32 sRadioCoverAintNoRestForTheWicked_Gfx[] = INCBIN_U32("graphics/radio/covers/aintnorestforthewicked.4bpp.smol");
static const u16 sRadioCoverFreakingOutTheNeighborhood_Pal[] = INCBIN_U16("graphics/radio/covers/freakingouttheneibhorhood.gbapal");
static const u32 sRadioCoverFreakingOutTheNeighborhood_Gfx[] = INCBIN_U32("graphics/radio/covers/freakingouttheneibhorhood.4bpp.smol");
static const u16 sRadioCoverDracula_Pal[] = INCBIN_U16("graphics/radio/covers/dracula.gbapal");
static const u32 sRadioCoverDracula_Gfx[] = INCBIN_U32("graphics/radio/covers/dracula.4bpp.smol");
static const u16 sRadioCoverDisintegration_Pal[] = INCBIN_U16("graphics/radio/covers/desintegration.gbapal");
static const u32 sRadioCoverDisintegration_Gfx[] = INCBIN_U32("graphics/radio/covers/desintegration.4bpp.smol");
static const u16 sRadioCoverWish_Pal[] = INCBIN_U16("graphics/radio/covers/wish.gbapal");
static const u32 sRadioCoverWish_Gfx[] = INCBIN_U32("graphics/radio/covers/wish.4bpp.smol");
static const u16 sRadioCoverThreeImaginaryBoys_Pal[] = INCBIN_U16("graphics/radio/covers/ThreeImaginaryBoys.gbapal");
static const u32 sRadioCoverThreeImaginaryBoys_Gfx[] = INCBIN_U32("graphics/radio/covers/ThreeImaginaryBoys.4bpp.smol");
static const u16 sRadioCoverEitherOr_Pal[] = INCBIN_U16("graphics/radio/covers/eitheror.gbapal");
static const u32 sRadioCoverEitherOr_Gfx[] = INCBIN_U32("graphics/radio/covers/eitheror.4bpp.smol");
static const u16 sRadioCoverUnknownPleasures_Pal[] = INCBIN_U16("graphics/radio/covers/unknowpleasures.gbapal");
static const u32 sRadioCoverUnknownPleasures_Gfx[] = INCBIN_U32("graphics/radio/covers/unknowpleasures.4bpp.smol");
static const u16 sRadioCoverFreewheelin_Pal[] = INCBIN_U16("graphics/radio/covers/freewheelin.gbapal");
static const u32 sRadioCoverFreewheelin_Gfx[] = INCBIN_U32("graphics/radio/covers/freewheelin.4bpp.smol");
static const u16 sRadioCoverHighway61Revisited_Pal[] = INCBIN_U16("graphics/radio/covers/highway61revisited.gbapal");
static const u32 sRadioCoverHighway61Revisited_Gfx[] = INCBIN_U32("graphics/radio/covers/highway61revisited.4bpp.smol");
static const u16 sRadioCoverBringingItAllBackHome_Pal[] = INCBIN_U16("graphics/radio/covers/bringingitallbackhome.gbapal");
static const u32 sRadioCoverBringingItAllBackHome_Gfx[] = INCBIN_U32("graphics/radio/covers/bringingitallbackhome.4bpp.smol");
static const u16 sRadioCoverPatGarrettAndBillyTheKid_Pal[] = INCBIN_U16("graphics/radio/covers/patgarrett.gbapal");
static const u32 sRadioCoverPatGarrettAndBillyTheKid_Gfx[] = INCBIN_U32("graphics/radio/covers/patgarrett.4bpp.smol");
static const u16 sRadioCoverAreYouExperienced_Pal[] = INCBIN_U16("graphics/radio/covers/areyouexperienced.gbapal");
static const u32 sRadioCoverAreYouExperienced_Gfx[] = INCBIN_U32("graphics/radio/covers/areyouexperienced.4bpp.smol");
static const u16 sRadioCoverTheWall_Pal[] = INCBIN_U16("graphics/radio/covers/thewall.gbapal");
static const u32 sRadioCoverTheWall_Gfx[] = INCBIN_U32("graphics/radio/covers/thewall.4bpp.smol");
static const u16 sRadioCoverWishYouWereHere_Pal[] = INCBIN_U16("graphics/radio/covers/wishyouwerehere.gbapal");
static const u32 sRadioCoverWishYouWereHere_Gfx[] = INCBIN_U32("graphics/radio/covers/wishyouwerehere.4bpp.smol");
static const u16 sRadioCoverDarkSideOfTheMoon_Pal[] = INCBIN_U16("graphics/radio/covers/darksideofthemoon.gbapal");
static const u32 sRadioCoverDarkSideOfTheMoon_Gfx[] = INCBIN_U32("graphics/radio/covers/darksideofthemoon.4bpp.smol");
static const u16 sRadioCoverDivisionBell_Pal[] = INCBIN_U16("graphics/radio/covers/divisionbell.gbapal");
static const u32 sRadioCoverDivisionBell_Gfx[] = INCBIN_U32("graphics/radio/covers/divisionbell.4bpp.smol");

static const struct OamData sOamData_RadioCover =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .priority   = 0,
};

static const union AnimCmd sAnim_RadioCover[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_RadioCover[] =
{
    sAnim_RadioCover,
};

static const struct SpriteTemplate sSpriteTemplate_RadioCover =
{
    .tileTag     = TAG_RADIO_COVER,
    .paletteTag  = TAG_RADIO_COVER,
    .oam         = &sOamData_RadioCover,
    .anims       = sAnims_RadioCover,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

static const struct CompressedSpriteSheet sRadioCoverSheets[RADIO_COVER_COUNT] =
{
    [RADIO_COVER_3DOORSDOWN] = {sRadioCoverThreeDoorsDown_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_AROUND_THE_FUR] = {sRadioCoverAroundTheFur_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_ERA_VULGARIS] = {sRadioCoverEraVulgaris_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_HYBRID_THEORY] = {sRadioCoverHybridTheory_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_KOI_NO_YOKAN] = {sRadioCoverKoiNoYokan_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_LIKE_CLOCKWORK] = {sRadioCoverLikeClockwork_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_METEORA] = {sRadioCoverMeteora_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_ONE_X] = {sRadioCoverOneX_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_SONGS_FOR_THE_DEAF] = {sRadioCoverSongsForTheDeaf_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_WHITE_PONY] = {sRadioCoverWhitePony_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_HAIL_TO_THE_THIEF] = {sRadioCoverHailToTheThief_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_AMNESIAC] = {sRadioCoverAmnesiac_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_KID_A] = {sRadioCoverKidA_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_OK_COMPUTER] = {sRadioCoverOkComputer_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_THE_BENDS] = {sRadioCoverTheBends_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_THE_QUEEN_IS_DEAD] = {sRadioCoverTheQueenIsDead_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_IS_THIS_IT] = {sRadioCoverIsThisIt_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_ROOM_ON_FIRE] = {sRadioCoverRoomOnFire_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_AM] = {sRadioCoverAm_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_TONIGHT_THAT_I_MIGHT_SEE] = {sRadioCoverTonightThatIMightSee_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_SOUVLAKI] = {sRadioCoverSouvlaki_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_AINT_NO_REST_FOR_THE_WICKED] = {sRadioCoverAintNoRestForTheWicked_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_FREAKING_OUT_THE_NEIGHBORHOOD] = {sRadioCoverFreakingOutTheNeighborhood_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_DRACULA] = {sRadioCoverDracula_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_DISINTEGRATION] = {sRadioCoverDisintegration_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_WISH] = {sRadioCoverWish_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_THREE_IMAGINARY_BOYS] = {sRadioCoverThreeImaginaryBoys_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_EITHER_OR] = {sRadioCoverEitherOr_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_UNKNOWN_PLEASURES] = {sRadioCoverUnknownPleasures_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_FREEWHEELIN] = {sRadioCoverFreewheelin_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_HIGHWAY_61_REVISITED] = {sRadioCoverHighway61Revisited_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_BRINGING_IT_ALL_BACK_HOME] = {sRadioCoverBringingItAllBackHome_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_PAT_GARRETT_AND_BILLY_THE_KID] = {sRadioCoverPatGarrettAndBillyTheKid_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_ARE_YOU_EXPERIENCED] = {sRadioCoverAreYouExperienced_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_THE_WALL] = {sRadioCoverTheWall_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_WISH_YOU_WERE_HERE] = {sRadioCoverWishYouWereHere_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_DARK_SIDE_OF_THE_MOON] = {sRadioCoverDarkSideOfTheMoon_Gfx, 0x800, TAG_RADIO_COVER},
    [RADIO_COVER_DIVISION_BELL] = {sRadioCoverDivisionBell_Gfx, 0x800, TAG_RADIO_COVER},
};

static const struct SpritePalette sRadioCoverPalettes[RADIO_COVER_COUNT] =
{
    [RADIO_COVER_3DOORSDOWN] = {sRadioCoverThreeDoorsDown_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_AROUND_THE_FUR] = {sRadioCoverAroundTheFur_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_ERA_VULGARIS] = {sRadioCoverEraVulgaris_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_HYBRID_THEORY] = {sRadioCoverHybridTheory_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_KOI_NO_YOKAN] = {sRadioCoverKoiNoYokan_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_LIKE_CLOCKWORK] = {sRadioCoverLikeClockwork_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_METEORA] = {sRadioCoverMeteora_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_ONE_X] = {sRadioCoverOneX_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_SONGS_FOR_THE_DEAF] = {sRadioCoverSongsForTheDeaf_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_WHITE_PONY] = {sRadioCoverWhitePony_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_HAIL_TO_THE_THIEF] = {sRadioCoverHailToTheThief_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_AMNESIAC] = {sRadioCoverAmnesiac_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_KID_A] = {sRadioCoverKidA_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_OK_COMPUTER] = {sRadioCoverOkComputer_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_THE_BENDS] = {sRadioCoverTheBends_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_THE_QUEEN_IS_DEAD] = {sRadioCoverTheQueenIsDead_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_IS_THIS_IT] = {sRadioCoverIsThisIt_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_ROOM_ON_FIRE] = {sRadioCoverRoomOnFire_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_AM] = {sRadioCoverAm_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_TONIGHT_THAT_I_MIGHT_SEE] = {sRadioCoverTonightThatIMightSee_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_SOUVLAKI] = {sRadioCoverSouvlaki_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_AINT_NO_REST_FOR_THE_WICKED] = {sRadioCoverAintNoRestForTheWicked_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_FREAKING_OUT_THE_NEIGHBORHOOD] = {sRadioCoverFreakingOutTheNeighborhood_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_DRACULA] = {sRadioCoverDracula_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_DISINTEGRATION] = {sRadioCoverDisintegration_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_WISH] = {sRadioCoverWish_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_THREE_IMAGINARY_BOYS] = {sRadioCoverThreeImaginaryBoys_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_EITHER_OR] = {sRadioCoverEitherOr_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_UNKNOWN_PLEASURES] = {sRadioCoverUnknownPleasures_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_FREEWHEELIN] = {sRadioCoverFreewheelin_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_HIGHWAY_61_REVISITED] = {sRadioCoverHighway61Revisited_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_BRINGING_IT_ALL_BACK_HOME] = {sRadioCoverBringingItAllBackHome_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_PAT_GARRETT_AND_BILLY_THE_KID] = {sRadioCoverPatGarrettAndBillyTheKid_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_ARE_YOU_EXPERIENCED] = {sRadioCoverAreYouExperienced_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_THE_WALL] = {sRadioCoverTheWall_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_WISH_YOU_WERE_HERE] = {sRadioCoverWishYouWereHere_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_DARK_SIDE_OF_THE_MOON] = {sRadioCoverDarkSideOfTheMoon_Pal, TAG_RADIO_COVER},
    [RADIO_COVER_DIVISION_BELL] = {sRadioCoverDivisionBell_Pal, TAG_RADIO_COVER},
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
    X(MUS_LITTLEROOT_TEST) \
    X(MUS_GSC_ROUTE38) \
    X(MUS_CAUGHT) \
    X(MUS_VICTORY_WILD) \
    X(MUS_VICTORY_GYM_LEADER) \
    X(MUS_VICTORY_LEAGUE) \
    X(MUS_C_COMM_CENTER) \
    X(MUS_GSC_PEWTER) \
    X(MUS_C_VS_LEGEND_BEAST) \
    X(MUS_ROUTE101) \
    X(MUS_ROUTE110) \
    X(MUS_ROUTE120) \
    X(MUS_PETALBURG) \
    X(MUS_OLDALE) \
    X(MUS_GYM) \
    X(MUS_SURF) \
    X(MUS_PETALBURG_WOODS) \
    X(MUS_LEVEL_UP) \
    X(MUS_HEAL) \
    X(MUS_OBTAIN_BADGE) \
    X(MUS_OBTAIN_ITEM) \
    X(MUS_EVOLVED) \
    X(MUS_OBTAIN_TMHM) \
    X(MUS_LILYCOVE_MUSEUM) \
    X(MUS_ROUTE122) \
    X(MUS_OCEANIC_MUSEUM) \
    X(MUS_EVOLUTION_INTRO) \
    X(MUS_EVOLUTION) \
    X(MUS_MOVE_DELETED) \
    X(MUS_ENCOUNTER_GIRL) \
    X(MUS_ENCOUNTER_MALE) \
    X(MUS_ABANDONED_SHIP) \
    X(MUS_FORTREE) \
    X(MUS_BIRCH_LAB) \
    X(MUS_B_TOWER_RS) \
    X(MUS_ENCOUNTER_SWIMMER) \
    X(MUS_CAVE_OF_ORIGIN) \
    X(MUS_OBTAIN_BERRY) \
    X(MUS_AWAKEN_LEGEND) \
    X(MUS_SLOTS_JACKPOT) \
    X(MUS_SLOTS_WIN) \
    X(MUS_TOO_BAD) \
    X(MUS_ROULETTE) \
    X(MUS_LINK_CONTEST_P1) \
    X(MUS_LINK_CONTEST_P2) \
    X(MUS_LINK_CONTEST_P3) \
    X(MUS_LINK_CONTEST_P4) \
    X(MUS_ENCOUNTER_RICH) \
    X(MUS_VERDANTURF) \
    X(MUS_RUSTBORO) \
    X(MUS_POKE_CENTER) \
    X(MUS_ROUTE104) \
    X(MUS_ROUTE119) \
    X(MUS_CYCLING) \
    X(MUS_POKE_MART) \
    X(MUS_LITTLEROOT) \
    X(MUS_MT_CHIMNEY) \
    X(MUS_ENCOUNTER_FEMALE) \
    X(MUS_LILYCOVE) \
    X(MUS_DESERT) \
    X(MUS_HELP) \
    X(MUS_UNDERWATER) \
    X(MUS_VICTORY_TRAINER) \
    X(MUS_TITLE) \
    X(MUS_INTRO) \
    X(MUS_ENCOUNTER_MAY) \
    X(MUS_ENCOUNTER_INTENSE) \
    X(MUS_ENCOUNTER_COOL) \
    X(MUS_ROUTE113) \
    X(MUS_ENCOUNTER_AQUA) \
    X(MUS_FOLLOW_ME) \
    X(MUS_ENCOUNTER_BRENDAN) \
    X(MUS_EVER_GRANDE) \
    X(MUS_ENCOUNTER_SUSPICIOUS) \
    X(MUS_VICTORY_AQUA_MAGMA) \
    X(MUS_CABLE_CAR) \
    X(MUS_GAME_CORNER) \
    X(MUS_DEWFORD) \
    X(MUS_SAFARI_ZONE) \
    X(MUS_VICTORY_ROAD) \
    X(MUS_AQUA_MAGMA_HIDEOUT) \
    X(MUS_SAILING) \
    X(MUS_MT_PYRE) \
    X(MUS_SLATEPORT) \
    X(MUS_MT_PYRE_EXTERIOR) \
    X(MUS_SCHOOL) \
    X(MUS_HALL_OF_FAME) \
    X(MUS_FALLARBOR) \
    X(MUS_SEALED_CHAMBER) \
    X(MUS_CONTEST_WINNER) \
    X(MUS_CONTEST) \
    X(MUS_ENCOUNTER_MAGMA) \
    X(MUS_INTRO_BATTLE) \
    X(MUS_ABNORMAL_WEATHER) \
    X(MUS_WEATHER_GROUDON) \
    X(MUS_SOOTOPOLIS) \
    X(MUS_CONTEST_RESULTS) \
    X(MUS_HALL_OF_FAME_ROOM) \
    X(MUS_TRICK_HOUSE) \
    X(MUS_ENCOUNTER_TWINS) \
    X(MUS_ENCOUNTER_ELITE_FOUR) \
    X(MUS_ENCOUNTER_HIKER) \
    X(MUS_CONTEST_LOBBY) \
    X(MUS_ENCOUNTER_INTERVIEWER) \
    X(MUS_ENCOUNTER_CHAMPION) \
    X(MUS_CREDITS) \
    X(MUS_END) \
    X(MUS_B_FRONTIER) \
    X(MUS_B_ARENA) \
    X(MUS_OBTAIN_B_POINTS) \
    X(MUS_REGISTER_MATCH_CALL) \
    X(MUS_B_PYRAMID) \
    X(MUS_B_PYRAMID_TOP) \
    X(MUS_B_PALACE) \
    X(MUS_RAYQUAZA_APPEARS) \
    X(MUS_B_TOWER) \
    X(MUS_OBTAIN_SYMBOL) \
    X(MUS_B_DOME) \
    X(MUS_B_PIKE) \
    X(MUS_B_FACTORY) \
    X(MUS_VS_RAYQUAZA) \
    X(MUS_VS_FRONTIER_BRAIN) \
    X(MUS_VS_MEW) \
    X(MUS_B_DOME_LOBBY) \
    X(MUS_VS_WILD) \
    X(MUS_VS_AQUA_MAGMA) \
    X(MUS_VS_TRAINER) \
    X(MUS_VS_GYM_LEADER) \
    X(MUS_VS_CHAMPION) \
    X(MUS_VS_REGI) \
    X(MUS_VS_KYOGRE_GROUDON) \
    X(MUS_VS_RIVAL) \
    X(MUS_VS_ELITE_FOUR) \
    X(MUS_VS_AQUA_MAGMA_LEADER) \
    X(MUS_RG_FOLLOW_ME) \
    X(MUS_RG_GAME_CORNER) \
    X(MUS_RG_ROCKET_HIDEOUT) \
    X(MUS_RG_GYM) \
    X(MUS_RG_JIGGLYPUFF) \
    X(MUS_RG_INTRO_FIGHT) \
    X(MUS_RG_TITLE) \
    X(MUS_RG_CINNABAR) \
    X(MUS_RG_LAVENDER) \
    X(MUS_RG_HEAL) \
    X(MUS_RG_CYCLING) \
    X(MUS_RG_ENCOUNTER_ROCKET) \
    X(MUS_RG_ENCOUNTER_GIRL) \
    X(MUS_RG_ENCOUNTER_BOY) \
    X(MUS_RG_HALL_OF_FAME) \
    X(MUS_RG_VIRIDIAN_FOREST) \
    X(MUS_RG_MT_MOON) \
    X(MUS_RG_POKE_MANSION) \
    X(MUS_RG_CREDITS) \
    X(MUS_RG_ROUTE1) \
    X(MUS_RG_ROUTE24) \
    X(MUS_RG_ROUTE3) \
    X(MUS_RG_ROUTE11) \
    X(MUS_RG_VICTORY_ROAD) \
    X(MUS_RG_VS_GYM_LEADER) \
    X(MUS_RG_VS_TRAINER) \
    X(MUS_RG_VS_WILD) \
    X(MUS_RG_VS_CHAMPION) \
    X(MUS_RG_PALLET) \
    X(MUS_RG_OAK_LAB) \
    X(MUS_RG_OAK) \
    X(MUS_RG_POKE_CENTER) \
    X(MUS_RG_SS_ANNE) \
    X(MUS_RG_SURF) \
    X(MUS_RG_POKE_TOWER) \
    X(MUS_RG_SILPH) \
    X(MUS_RG_FUCHSIA) \
    X(MUS_RG_CELADON) \
    X(MUS_RG_VICTORY_TRAINER) \
    X(MUS_RG_VICTORY_WILD) \
    X(MUS_RG_VICTORY_GYM_LEADER) \
    X(MUS_RG_VERMILLION) \
    X(MUS_RG_PEWTER) \
    X(MUS_RG_ENCOUNTER_RIVAL) \
    X(MUS_RG_RIVAL_EXIT) \
    X(MUS_RG_DEX_RATING) \
    X(MUS_RG_OBTAIN_KEY_ITEM) \
    X(MUS_RG_CAUGHT_INTRO) \
    X(MUS_RG_PHOTO) \
    X(MUS_RG_GAME_FREAK) \
    X(MUS_RG_CAUGHT) \
    X(MUS_RG_NEW_GAME_INSTRUCT) \
    X(MUS_RG_NEW_GAME_INTRO) \
    X(MUS_RG_NEW_GAME_EXIT) \
    X(MUS_RG_POKE_JUMP) \
    X(MUS_RG_UNION_ROOM) \
    X(MUS_RG_NET_CENTER) \
    X(MUS_RG_MYSTERY_GIFT) \
    X(MUS_RG_BERRY_PICK) \
    X(MUS_RG_SEVII_CAVE) \
    X(MUS_RG_TEACHY_TV_SHOW) \
    X(MUS_RG_SEVII_ROUTE) \
    X(MUS_RG_SEVII_DUNGEON) \
    X(MUS_RG_SEVII_123) \
    X(MUS_RG_SEVII_45) \
    X(MUS_RG_SEVII_67) \
    X(MUS_RG_POKE_FLUTE) \
    X(MUS_RG_VS_DEOXYS) \
    X(MUS_RG_VS_MEWTWO) \
    X(MUS_RG_VS_LEGEND) \
    X(MUS_RG_ENCOUNTER_GYM_LEADER) \
    X(MUS_RG_ENCOUNTER_DEOXYS) \
    X(MUS_RG_TRAINER_TOWER) \
    X(MUS_RG_SLOW_PALLET) \
    X(MUS_RG_TEACHY_TV_MENU) \
    X(MUS_HLW_DISTORTION_WORLD) \
    X(MUS_HLW_VS_EVIL) \
    X(MUS_HLW_PHOENIX_TOWN) \
    X(MUS_GET_LUCKY) \
    X(MUS_FLY_ME_TO_THE_MOON) \
    X(MUS_FLASHING_LIGHTS) \
    X(MUS_PINK_AND_WHITE) \
    X(MUS_RAP_SNITCH_KNISHES) \
    X(MUS_SCARS_OF_TIME) \
    X(MUS_APPLAUSE) \
    X(MUS_ABRACADABRA) \
    X(MUS_PAINS_THEME) \
    X(MUS_BLUE_BIRD) \
    X(MUS_THE_WORLD) \
    X(MUS_CRUEL_ANGELS_THESIS) \
    X(MUS_PEGASUS_FANTASY) \
    X(MUS_LUGIAS_SONG) \
    X(MUS_MIDNAS_LAMENT) \
    X(MUS_SHOUSHIN_NO_KIKI) \
    X(MUS_OMOKAGE) \
    X(MUS_BROTHERS) \
    X(MUS_DISTANCE) \
    X(MUS_KANASHIMI_WO_YASASHISA_NI) \
    X(MUS_KOKUTEN) \
    X(MUS_RESONANCE) \
    X(MUS_PAPER_MOON) \
    X(MUS_TETRIS_MAIN_THEME) \
    X(MUS_I_WILL) \
    X(MUS_YOU_AND_WHOSE_ARMY) \
    X(MUS_MOTION_PICTURE_SOUNDTRACK) \
    X(MUS_EVERYTHING_IN_ITS_RIGHT_PLACE) \
    X(MUS_NO_SURPRISES) \
    X(MUS_LUCKY) \
    X(MUS_HIGH_AND_DRY) \
    X(MUS_STREET_SPIRIT) \
    X(MUS_GAZE_AT_THE_SKIES) \
    X(MUS_GUTS_THEME) \
    X(MUS_THE_YOUNG_PHOTOGRAPHER) \
    X(MUS_HOPE_GRAND_CHASE) \
    X(MUS_ANCIENT_GROOVER) \
    X(MUS_DIVINE_GRACE) \
    X(MUS_THEME_OF_MORROC) \
    X(MUS_EVERLASTING_WANDERERS) \
    X(MUS_THEME_OF_GEFFEN) \
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
    X(MUS_AINT_NO_REST_FOR_THE_WICKED) \
    X(MUS_360) \
    X(MUS_MEET_ME_HALFWAY) \
    X(MUS_ONE_MORE_TIME) \
    X(MUS_AROUND_THE_WORLD) \
    X(MUS_WHERE_IS_THE_LOVE) \
    X(MUS_UMINEKO_HOPE) \
    X(MUS_UMINEKO_600_MILLION) \
    X(MUS_UMINEKO_WINGLESS) \
    X(MUS_UMINEKO_WORLDEND) \
    X(MUS_UMINEKO_FAR) \
    X(MUS_UMINEKO_WORLDEND_DOMINATOR) \
    X(MUS_FREAKING_OUT_THE_NEIGHBORHOOD) \
    X(MUS_DRACULA_TAME_IMPALA) \
    X(MUS_LOVESONG_THE_CURE) \
    X(MUS_FRIDAY_IM_IN_LOVE) \
    X(MUS_BOYS_DONT_CRY) \
    X(MUS_ROSE_PARADE) \
    X(MUS_SHADOWPLAY) \
    X(MUS_NEW_DAWN_FADES) \
    X(MUS_DISORDER) \
    X(MUS_LOVE_WILL_TEAR_US_APART) \
    X(MUS_3S_AND_7S) \
    X(MUS_GO_WITH_THE_FLOW) \
    X(MUS_MY_GOD_IS_THE_SUN) \
    X(MUS_ROSEMARY_DEFTONES) \
    X(MUS_MY_OWN_SUMMER) \
    X(MUS_CHANGE_IN_THE_HOUSE_OF_FLIES) \
    X(MUS_BE_QUIET_AND_DRIVE) \
    X(MUS_AROUND_THE_FUR) \
    X(MUS_FAINT) \
    X(MUS_EASIER_TO_RUN) \
    X(MUS_IN_THE_END) \
    X(MUS_BREAKING_THE_HABIT) \
    X(MUS_KRYPTONITE) \
    X(MUS_ANIMAL_I_HAVE_BECOME) \
    X(MUS_A_HARD_RAINS_A_GONNA_FALL) \
    X(MUS_ANOTHER_BRICK_IN_THE_WALL) \
    X(MUS_BLOWIN_IN_THE_WIND) \
    X(MUS_LIKE_A_ROLLING_STONE) \
    X(MUS_COMFORTABLY_NUMB) \
    X(MUS_FOXY_LADY) \
    X(MUS_HIGH_HOPES) \
    X(MUS_KNOCKIN_ON_HEAVENS_DOOR) \
    X(MUS_MR_TAMBOURINE_MAN) \
    X(MUS_SHINE_ON_YOU_CRAZY_DIAMOND) \
    X(MUS_THE_GREAT_GIG_IN_THE_SKY) \
    X(MUS_TIME)

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
    // Numeric values 0..9 intentionally preserve the old save ABI.
    STATION_ALL = 0,
    STATION_ANIME,
    STATION_POP,          // keeps legacy numeric save slot 2
    STATION_POKEMON_GBA,  // keeps legacy numeric save slot 3
    STATION_INDIE_ROCK,
    STATION_FAVORITES,
    STATION_PLAYLIST,
    STATION_GAMES,
    STATION_ROCK_METAL,
    STATION_CLASSIC_ROCK,
    STATION_COUNT,
};

// Each station is a flat array of song IDs terminated by 0xFFFF.
#define STATION_END 0xFFFF

// ALL TRACKS is intentionally NOT the raw game sound table.
// Short fanfares / jingles / test cues stay in the game, but are excluded here.
static const u16 sStation_All[] = {
    MUS_GSC_ROUTE38,
    MUS_C_COMM_CENTER,
    MUS_GSC_PEWTER,
    MUS_C_VS_LEGEND_BEAST,
    MUS_ROUTE101,
    MUS_ROUTE110,
    MUS_ROUTE120,
    MUS_PETALBURG,
    MUS_OLDALE,
    MUS_GYM,
    MUS_SURF,
    MUS_PETALBURG_WOODS,
    MUS_LILYCOVE_MUSEUM,
    MUS_ROUTE122,
    MUS_OCEANIC_MUSEUM,
    MUS_EVOLUTION,
    MUS_ENCOUNTER_GIRL,
    MUS_ENCOUNTER_MALE,
    MUS_ABANDONED_SHIP,
    MUS_FORTREE,
    MUS_BIRCH_LAB,
    MUS_B_TOWER_RS,
    MUS_ENCOUNTER_SWIMMER,
    MUS_CAVE_OF_ORIGIN,
    MUS_AWAKEN_LEGEND,
    MUS_ROULETTE,
    MUS_LINK_CONTEST_P1,
    MUS_LINK_CONTEST_P2,
    MUS_LINK_CONTEST_P3,
    MUS_LINK_CONTEST_P4,
    MUS_ENCOUNTER_RICH,
    MUS_VERDANTURF,
    MUS_RUSTBORO,
    MUS_POKE_CENTER,
    MUS_ROUTE104,
    MUS_ROUTE119,
    MUS_CYCLING,
    MUS_POKE_MART,
    MUS_LITTLEROOT,
    MUS_MT_CHIMNEY,
    MUS_ENCOUNTER_FEMALE,
    MUS_LILYCOVE,
    MUS_DESERT,
    MUS_HELP,
    MUS_UNDERWATER,
    MUS_TITLE,
    MUS_INTRO,
    MUS_ENCOUNTER_MAY,
    MUS_ENCOUNTER_INTENSE,
    MUS_ENCOUNTER_COOL,
    MUS_ROUTE113,
    MUS_ENCOUNTER_AQUA,
    MUS_FOLLOW_ME,
    MUS_ENCOUNTER_BRENDAN,
    MUS_EVER_GRANDE,
    MUS_ENCOUNTER_SUSPICIOUS,
    MUS_CABLE_CAR,
    MUS_GAME_CORNER,
    MUS_DEWFORD,
    MUS_SAFARI_ZONE,
    MUS_VICTORY_ROAD,
    MUS_AQUA_MAGMA_HIDEOUT,
    MUS_SAILING,
    MUS_MT_PYRE,
    MUS_SLATEPORT,
    MUS_MT_PYRE_EXTERIOR,
    MUS_SCHOOL,
    MUS_HALL_OF_FAME,
    MUS_FALLARBOR,
    MUS_SEALED_CHAMBER,
    MUS_CONTEST,
    MUS_ENCOUNTER_MAGMA,
    MUS_INTRO_BATTLE,
    MUS_ABNORMAL_WEATHER,
    MUS_WEATHER_GROUDON,
    MUS_SOOTOPOLIS,
    MUS_HALL_OF_FAME_ROOM,
    MUS_TRICK_HOUSE,
    MUS_ENCOUNTER_TWINS,
    MUS_ENCOUNTER_ELITE_FOUR,
    MUS_ENCOUNTER_HIKER,
    MUS_CONTEST_LOBBY,
    MUS_ENCOUNTER_INTERVIEWER,
    MUS_ENCOUNTER_CHAMPION,
    MUS_CREDITS,
    MUS_END,
    MUS_B_FRONTIER,
    MUS_B_ARENA,
    MUS_B_PYRAMID,
    MUS_B_PYRAMID_TOP,
    MUS_B_PALACE,
    MUS_RAYQUAZA_APPEARS,
    MUS_B_TOWER,
    MUS_B_DOME,
    MUS_B_PIKE,
    MUS_B_FACTORY,
    MUS_VS_RAYQUAZA,
    MUS_VS_FRONTIER_BRAIN,
    MUS_VS_MEW,
    MUS_B_DOME_LOBBY,
    MUS_VS_WILD,
    MUS_VS_AQUA_MAGMA,
    MUS_VS_TRAINER,
    MUS_VS_GYM_LEADER,
    MUS_VS_CHAMPION,
    MUS_VS_REGI,
    MUS_VS_KYOGRE_GROUDON,
    MUS_VS_RIVAL,
    MUS_VS_ELITE_FOUR,
    MUS_VS_AQUA_MAGMA_LEADER,
    MUS_RG_FOLLOW_ME,
    MUS_RG_GAME_CORNER,
    MUS_RG_ROCKET_HIDEOUT,
    MUS_RG_GYM,
    MUS_RG_JIGGLYPUFF,
    MUS_RG_INTRO_FIGHT,
    MUS_RG_TITLE,
    MUS_RG_CINNABAR,
    MUS_RG_LAVENDER,
    MUS_RG_CYCLING,
    MUS_RG_ENCOUNTER_ROCKET,
    MUS_RG_ENCOUNTER_GIRL,
    MUS_RG_ENCOUNTER_BOY,
    MUS_RG_HALL_OF_FAME,
    MUS_RG_VIRIDIAN_FOREST,
    MUS_RG_MT_MOON,
    MUS_RG_POKE_MANSION,
    MUS_RG_CREDITS,
    MUS_RG_ROUTE1,
    MUS_RG_ROUTE24,
    MUS_RG_ROUTE3,
    MUS_RG_ROUTE11,
    MUS_RG_VICTORY_ROAD,
    MUS_RG_VS_GYM_LEADER,
    MUS_RG_VS_TRAINER,
    MUS_RG_VS_WILD,
    MUS_RG_VS_CHAMPION,
    MUS_RG_PALLET,
    MUS_RG_OAK_LAB,
    MUS_RG_OAK,
    MUS_RG_POKE_CENTER,
    MUS_RG_SS_ANNE,
    MUS_RG_SURF,
    MUS_RG_POKE_TOWER,
    MUS_RG_SILPH,
    MUS_RG_FUCHSIA,
    MUS_RG_CELADON,
    MUS_RG_VERMILLION,
    MUS_RG_PEWTER,
    MUS_RG_ENCOUNTER_RIVAL,
    MUS_RG_RIVAL_EXIT,
    MUS_RG_GAME_FREAK,
    MUS_RG_POKE_JUMP,
    MUS_RG_UNION_ROOM,
    MUS_RG_NET_CENTER,
    MUS_RG_MYSTERY_GIFT,
    MUS_RG_BERRY_PICK,
    MUS_RG_SEVII_CAVE,
    MUS_RG_TEACHY_TV_SHOW,
    MUS_RG_SEVII_ROUTE,
    MUS_RG_SEVII_DUNGEON,
    MUS_RG_SEVII_123,
    MUS_RG_SEVII_45,
    MUS_RG_SEVII_67,
    MUS_RG_POKE_FLUTE,
    MUS_RG_VS_DEOXYS,
    MUS_RG_VS_MEWTWO,
    MUS_RG_VS_LEGEND,
    MUS_RG_ENCOUNTER_GYM_LEADER,
    MUS_RG_ENCOUNTER_DEOXYS,
    MUS_RG_TRAINER_TOWER,
    MUS_RG_SLOW_PALLET,
    MUS_RG_TEACHY_TV_MENU,
    MUS_HLW_DISTORTION_WORLD,
    MUS_HLW_VS_EVIL,
    MUS_HLW_PHOENIX_TOWN,
    MUS_GET_LUCKY,
    MUS_FLY_ME_TO_THE_MOON,
    MUS_FLASHING_LIGHTS,
    MUS_PINK_AND_WHITE,
    MUS_RAP_SNITCH_KNISHES,
    MUS_SCARS_OF_TIME,
    MUS_APPLAUSE,
    MUS_ABRACADABRA,
    MUS_PAINS_THEME,
    MUS_BLUE_BIRD,
    MUS_THE_WORLD,
    MUS_CRUEL_ANGELS_THESIS,
    MUS_PEGASUS_FANTASY,
    MUS_LUGIAS_SONG,
    MUS_MIDNAS_LAMENT,
    MUS_SHOUSHIN_NO_KIKI,
    MUS_OMOKAGE,
    MUS_BROTHERS,
    MUS_DISTANCE,
    MUS_KANASHIMI_WO_YASASHISA_NI,
    MUS_KOKUTEN,
    MUS_RESONANCE,
    MUS_PAPER_MOON,
    MUS_TETRIS_MAIN_THEME,
    MUS_I_WILL,
    MUS_YOU_AND_WHOSE_ARMY,
    MUS_MOTION_PICTURE_SOUNDTRACK,
    MUS_EVERYTHING_IN_ITS_RIGHT_PLACE,
    MUS_NO_SURPRISES,
    MUS_LUCKY,
    MUS_HIGH_AND_DRY,
    MUS_STREET_SPIRIT,
    MUS_GAZE_AT_THE_SKIES,
    MUS_GUTS_THEME,
    MUS_THE_YOUNG_PHOTOGRAPHER,
    MUS_HOPE_GRAND_CHASE,
    MUS_ANCIENT_GROOVER,
    MUS_DIVINE_GRACE,
    MUS_THEME_OF_MORROC,
    MUS_EVERLASTING_WANDERERS,
    MUS_THEME_OF_GEFFEN,
    MUS_THEME_OF_ALBERTA,
    MUS_THEME_OF_PRONTERA,
    MUS_BIGMOUTH_STRIKES_AGAIN,
    MUS_BOY_WITH_THE_THORN,
    MUS_SOMEDAY,
    MUS_REPTILIA,
    MUS_HARD_TO_EXPLAIN,
    MUS_ARABELLA,
    MUS_DO_I_WANNA_KNOW,
    MUS_NO_1_PARTY_ANTHEM,
    MUS_FADE_INTO_YOU,
    MUS_WHEN_THE_SUN_HITS,
    MUS_AINT_NO_REST_FOR_THE_WICKED,
    MUS_360,
    MUS_MEET_ME_HALFWAY,
    MUS_ONE_MORE_TIME,
    MUS_AROUND_THE_WORLD,
    MUS_WHERE_IS_THE_LOVE,
    MUS_UMINEKO_HOPE,
    MUS_UMINEKO_600_MILLION,
    MUS_UMINEKO_WINGLESS,
    MUS_UMINEKO_WORLDEND,
    MUS_UMINEKO_FAR,
    MUS_UMINEKO_WORLDEND_DOMINATOR,
    MUS_FREAKING_OUT_THE_NEIGHBORHOOD,
    MUS_DRACULA_TAME_IMPALA,
    MUS_LOVESONG_THE_CURE,
    MUS_FRIDAY_IM_IN_LOVE,
    MUS_BOYS_DONT_CRY,
    MUS_ROSE_PARADE,
    MUS_SHADOWPLAY,
    MUS_NEW_DAWN_FADES,
    MUS_DISORDER,
    MUS_LOVE_WILL_TEAR_US_APART,
    MUS_3S_AND_7S,
    MUS_GO_WITH_THE_FLOW,
    MUS_MY_GOD_IS_THE_SUN,
    MUS_ROSEMARY_DEFTONES,
    MUS_MY_OWN_SUMMER,
    MUS_CHANGE_IN_THE_HOUSE_OF_FLIES,
    MUS_BE_QUIET_AND_DRIVE,
    MUS_AROUND_THE_FUR,
    MUS_FAINT,
    MUS_EASIER_TO_RUN,
    MUS_IN_THE_END,
    MUS_BREAKING_THE_HABIT,
    MUS_KRYPTONITE,
    MUS_ANIMAL_I_HAVE_BECOME,
    MUS_A_HARD_RAINS_A_GONNA_FALL,
    MUS_ANOTHER_BRICK_IN_THE_WALL,
    MUS_BLOWIN_IN_THE_WIND,
    MUS_LIKE_A_ROLLING_STONE,
    MUS_COMFORTABLY_NUMB,
    MUS_FOXY_LADY,
    MUS_HIGH_HOPES,
    MUS_KNOCKIN_ON_HEAVENS_DOOR,
    MUS_MR_TAMBOURINE_MAN,
    MUS_SHINE_ON_YOU_CRAZY_DIAMOND,
    MUS_THE_GREAT_GIG_IN_THE_SKY,
    MUS_TIME,
    STATION_END
};

// POKEMON GBA: proper GBA Pokemon music plus the original HLW soundtrack.
// Jingles/fanfares removed from ALL TRACKS are also excluded here.
static const u16 sStation_PokemonGba[] = {
    MUS_GSC_ROUTE38,
    MUS_C_COMM_CENTER,
    MUS_GSC_PEWTER,
    MUS_C_VS_LEGEND_BEAST,
    MUS_ROUTE101,
    MUS_ROUTE110,
    MUS_ROUTE120,
    MUS_PETALBURG,
    MUS_OLDALE,
    MUS_GYM,
    MUS_SURF,
    MUS_PETALBURG_WOODS,
    MUS_LILYCOVE_MUSEUM,
    MUS_ROUTE122,
    MUS_OCEANIC_MUSEUM,
    MUS_EVOLUTION,
    MUS_ENCOUNTER_GIRL,
    MUS_ENCOUNTER_MALE,
    MUS_ABANDONED_SHIP,
    MUS_FORTREE,
    MUS_BIRCH_LAB,
    MUS_B_TOWER_RS,
    MUS_ENCOUNTER_SWIMMER,
    MUS_CAVE_OF_ORIGIN,
    MUS_AWAKEN_LEGEND,
    MUS_ROULETTE,
    MUS_LINK_CONTEST_P1,
    MUS_LINK_CONTEST_P2,
    MUS_LINK_CONTEST_P3,
    MUS_LINK_CONTEST_P4,
    MUS_ENCOUNTER_RICH,
    MUS_VERDANTURF,
    MUS_RUSTBORO,
    MUS_POKE_CENTER,
    MUS_ROUTE104,
    MUS_ROUTE119,
    MUS_CYCLING,
    MUS_POKE_MART,
    MUS_LITTLEROOT,
    MUS_MT_CHIMNEY,
    MUS_ENCOUNTER_FEMALE,
    MUS_LILYCOVE,
    MUS_DESERT,
    MUS_HELP,
    MUS_UNDERWATER,
    MUS_TITLE,
    MUS_INTRO,
    MUS_ENCOUNTER_MAY,
    MUS_ENCOUNTER_INTENSE,
    MUS_ENCOUNTER_COOL,
    MUS_ROUTE113,
    MUS_ENCOUNTER_AQUA,
    MUS_FOLLOW_ME,
    MUS_ENCOUNTER_BRENDAN,
    MUS_EVER_GRANDE,
    MUS_ENCOUNTER_SUSPICIOUS,
    MUS_CABLE_CAR,
    MUS_GAME_CORNER,
    MUS_DEWFORD,
    MUS_SAFARI_ZONE,
    MUS_VICTORY_ROAD,
    MUS_AQUA_MAGMA_HIDEOUT,
    MUS_SAILING,
    MUS_MT_PYRE,
    MUS_SLATEPORT,
    MUS_MT_PYRE_EXTERIOR,
    MUS_SCHOOL,
    MUS_HALL_OF_FAME,
    MUS_FALLARBOR,
    MUS_SEALED_CHAMBER,
    MUS_CONTEST,
    MUS_ENCOUNTER_MAGMA,
    MUS_INTRO_BATTLE,
    MUS_ABNORMAL_WEATHER,
    MUS_WEATHER_GROUDON,
    MUS_SOOTOPOLIS,
    MUS_HALL_OF_FAME_ROOM,
    MUS_TRICK_HOUSE,
    MUS_ENCOUNTER_TWINS,
    MUS_ENCOUNTER_ELITE_FOUR,
    MUS_ENCOUNTER_HIKER,
    MUS_CONTEST_LOBBY,
    MUS_ENCOUNTER_INTERVIEWER,
    MUS_ENCOUNTER_CHAMPION,
    MUS_CREDITS,
    MUS_END,
    MUS_B_FRONTIER,
    MUS_B_ARENA,
    MUS_B_PYRAMID,
    MUS_B_PYRAMID_TOP,
    MUS_B_PALACE,
    MUS_RAYQUAZA_APPEARS,
    MUS_B_TOWER,
    MUS_B_DOME,
    MUS_B_PIKE,
    MUS_B_FACTORY,
    MUS_VS_RAYQUAZA,
    MUS_VS_FRONTIER_BRAIN,
    MUS_VS_MEW,
    MUS_B_DOME_LOBBY,
    MUS_VS_WILD,
    MUS_VS_AQUA_MAGMA,
    MUS_VS_TRAINER,
    MUS_VS_GYM_LEADER,
    MUS_VS_CHAMPION,
    MUS_VS_REGI,
    MUS_VS_KYOGRE_GROUDON,
    MUS_VS_RIVAL,
    MUS_VS_ELITE_FOUR,
    MUS_VS_AQUA_MAGMA_LEADER,
    MUS_RG_FOLLOW_ME,
    MUS_RG_GAME_CORNER,
    MUS_RG_ROCKET_HIDEOUT,
    MUS_RG_GYM,
    MUS_RG_JIGGLYPUFF,
    MUS_RG_INTRO_FIGHT,
    MUS_RG_TITLE,
    MUS_RG_CINNABAR,
    MUS_RG_LAVENDER,
    MUS_RG_CYCLING,
    MUS_RG_ENCOUNTER_ROCKET,
    MUS_RG_ENCOUNTER_GIRL,
    MUS_RG_ENCOUNTER_BOY,
    MUS_RG_HALL_OF_FAME,
    MUS_RG_VIRIDIAN_FOREST,
    MUS_RG_MT_MOON,
    MUS_RG_POKE_MANSION,
    MUS_RG_CREDITS,
    MUS_RG_ROUTE1,
    MUS_RG_ROUTE24,
    MUS_RG_ROUTE3,
    MUS_RG_ROUTE11,
    MUS_RG_VICTORY_ROAD,
    MUS_RG_VS_GYM_LEADER,
    MUS_RG_VS_TRAINER,
    MUS_RG_VS_WILD,
    MUS_RG_VS_CHAMPION,
    MUS_RG_PALLET,
    MUS_RG_OAK_LAB,
    MUS_RG_OAK,
    MUS_RG_POKE_CENTER,
    MUS_RG_SS_ANNE,
    MUS_RG_SURF,
    MUS_RG_POKE_TOWER,
    MUS_RG_SILPH,
    MUS_RG_FUCHSIA,
    MUS_RG_CELADON,
    MUS_RG_VERMILLION,
    MUS_RG_PEWTER,
    MUS_RG_ENCOUNTER_RIVAL,
    MUS_RG_RIVAL_EXIT,
    MUS_RG_GAME_FREAK,
    MUS_RG_POKE_JUMP,
    MUS_RG_UNION_ROOM,
    MUS_RG_NET_CENTER,
    MUS_RG_MYSTERY_GIFT,
    MUS_RG_BERRY_PICK,
    MUS_RG_SEVII_CAVE,
    MUS_RG_TEACHY_TV_SHOW,
    MUS_RG_SEVII_ROUTE,
    MUS_RG_SEVII_DUNGEON,
    MUS_RG_SEVII_123,
    MUS_RG_SEVII_45,
    MUS_RG_SEVII_67,
    MUS_RG_POKE_FLUTE,
    MUS_RG_VS_DEOXYS,
    MUS_RG_VS_MEWTWO,
    MUS_RG_VS_LEGEND,
    MUS_RG_ENCOUNTER_GYM_LEADER,
    MUS_RG_ENCOUNTER_DEOXYS,
    MUS_RG_TRAINER_TOWER,
    MUS_RG_SLOW_PALLET,
    MUS_RG_TEACHY_TV_MENU,
    MUS_HLW_DISTORTION_WORLD,
    MUS_HLW_VS_EVIL,
    MUS_HLW_PHOENIX_TOWN,
    STATION_END
};

// GAMES: non-Pokemon videogame / visual-novel music.
static const u16 sStation_Games[] = {
    MUS_SCARS_OF_TIME,
    MUS_MIDNAS_LAMENT,
    MUS_TETRIS_MAIN_THEME,
    MUS_THE_YOUNG_PHOTOGRAPHER,
    MUS_HOPE_GRAND_CHASE,
    MUS_ANCIENT_GROOVER,
    MUS_DIVINE_GRACE,
    MUS_THEME_OF_MORROC,
    MUS_EVERLASTING_WANDERERS,
    MUS_THEME_OF_GEFFEN,
    MUS_THEME_OF_ALBERTA,
    MUS_THEME_OF_PRONTERA,
    MUS_UMINEKO_HOPE,
    MUS_UMINEKO_600_MILLION,
    MUS_UMINEKO_WINGLESS,
    MUS_UMINEKO_WORLDEND,
    MUS_UMINEKO_FAR,
    MUS_UMINEKO_WORLDEND_DOMINATOR,
    STATION_END
};

// ANIME: anime themes / OST tracks only.
static const u16 sStation_Anime[] = {
    MUS_BLUE_BIRD,
    MUS_DISTANCE,
    MUS_KANASHIMI_WO_YASASHISA_NI,
    MUS_THE_WORLD,
    MUS_CRUEL_ANGELS_THESIS,
    MUS_PEGASUS_FANTASY,
    MUS_RESONANCE,
    MUS_PAPER_MOON,
    MUS_OMOKAGE,
    MUS_LUGIAS_SONG,
    MUS_SHOUSHIN_NO_KIKI,
    MUS_BROTHERS,
    MUS_GAZE_AT_THE_SKIES,
    MUS_KOKUTEN,
    MUS_GUTS_THEME,
    MUS_PAINS_THEME,
    STATION_END
};

// POP: pop, hip-hop, electronic, standards and otherwise uncategorized real-world tracks.
static const u16 sStation_Pop[] = {
    MUS_GET_LUCKY,
    MUS_FLY_ME_TO_THE_MOON,
    MUS_FLASHING_LIGHTS,
    MUS_PINK_AND_WHITE,
    MUS_RAP_SNITCH_KNISHES,
    MUS_APPLAUSE,
    MUS_ABRACADABRA,
    MUS_360,
    MUS_MEET_ME_HALFWAY,
    MUS_ONE_MORE_TIME,
    MUS_AROUND_THE_WORLD,
    MUS_WHERE_IS_THE_LOVE,
    STATION_END
};

// CLASSIC ROCK
static const u16 sStation_ClassicRock[] = {
    MUS_A_HARD_RAINS_A_GONNA_FALL,
    MUS_BLOWIN_IN_THE_WIND,
    MUS_LIKE_A_ROLLING_STONE,
    MUS_MR_TAMBOURINE_MAN,
    MUS_KNOCKIN_ON_HEAVENS_DOOR,
    MUS_FOXY_LADY,
    MUS_ANOTHER_BRICK_IN_THE_WALL,
    MUS_COMFORTABLY_NUMB,
    MUS_SHINE_ON_YOU_CRAZY_DIAMOND,
    MUS_THE_GREAT_GIG_IN_THE_SKY,
    MUS_TIME,
    MUS_HIGH_HOPES,
    STATION_END
};

// ROCK METAL
static const u16 sStation_RockMetal[] = {
    MUS_3S_AND_7S,
    MUS_GO_WITH_THE_FLOW,
    MUS_MY_GOD_IS_THE_SUN,
    MUS_ROSEMARY_DEFTONES,
    MUS_MY_OWN_SUMMER,
    MUS_CHANGE_IN_THE_HOUSE_OF_FLIES,
    MUS_BE_QUIET_AND_DRIVE,
    MUS_AROUND_THE_FUR,
    MUS_FAINT,
    MUS_EASIER_TO_RUN,
    MUS_IN_THE_END,
    MUS_BREAKING_THE_HABIT,
    MUS_KRYPTONITE,
    MUS_ANIMAL_I_HAVE_BECOME,
    STATION_END
};

// INDIE ROCK
static const u16 sStation_IndieRock[] = {
    MUS_I_WILL,
    MUS_YOU_AND_WHOSE_ARMY,
    MUS_MOTION_PICTURE_SOUNDTRACK,
    MUS_EVERYTHING_IN_ITS_RIGHT_PLACE,
    MUS_NO_SURPRISES,
    MUS_LUCKY,
    MUS_HIGH_AND_DRY,
    MUS_STREET_SPIRIT,
    MUS_BIGMOUTH_STRIKES_AGAIN,
    MUS_BOY_WITH_THE_THORN,
    MUS_SOMEDAY,
    MUS_REPTILIA,
    MUS_HARD_TO_EXPLAIN,
    MUS_ARABELLA,
    MUS_DO_I_WANNA_KNOW,
    MUS_NO_1_PARTY_ANTHEM,
    MUS_FADE_INTO_YOU,
    MUS_WHEN_THE_SUN_HITS,
    MUS_AINT_NO_REST_FOR_THE_WICKED,
    MUS_FREAKING_OUT_THE_NEIGHBORHOOD,
    MUS_DRACULA_TAME_IMPALA,
    MUS_LOVESONG_THE_CURE,
    MUS_FRIDAY_IM_IN_LOVE,
    MUS_BOYS_DONT_CRY,
    MUS_ROSE_PARADE,
    MUS_SHADOWPLAY,
    MUS_NEW_DAWN_FADES,
    MUS_DISORDER,
    MUS_LOVE_WILL_TEAR_US_APART,
    STATION_END
};

static const u16 *const sStationTracks[STATION_COUNT] = {
    [STATION_ALL]          = sStation_All,
    [STATION_ANIME]        = sStation_Anime,
    [STATION_POP]          = sStation_Pop,
    [STATION_POKEMON_GBA]  = sStation_PokemonGba,
    [STATION_INDIE_ROCK]   = sStation_IndieRock,
    [STATION_FAVORITES]    = NULL,
    [STATION_PLAYLIST]     = NULL,
    [STATION_GAMES]        = sStation_Games,
    [STATION_ROCK_METAL]   = sStation_RockMetal,
    [STATION_CLASSIC_ROCK] = sStation_ClassicRock,
};

// Station display names: everything shown to the player stays uppercase.
static const u8 sStationName_All[]          = _("ALL TRACKS");
static const u8 sStationName_Anime[]        = _("ANIME");
static const u8 sStationName_Pop[]          = _("POP");
static const u8 sStationName_PokemonGba[]   = _("POKEMON GBA");
static const u8 sStationName_IndieRock[]    = _("INDIE ROCK");
static const u8 sStationName_Favorites[]    = _("FAVORITES");
static const u8 sStationName_Playlist1[]    = _("PLAYLIST 1");
static const u8 sStationName_Playlist2[]    = _("PLAYLIST 2");
static const u8 sStationName_Playlist3[]    = _("PLAYLIST 3");
static const u8 sStationName_Games[]        = _("GAMES");
static const u8 sStationName_RockMetal[]    = _("ROCK METAL");
static const u8 sStationName_ClassicRock[]  = _("CLASSIC ROCK");

static const u8 *const sStationNames[STATION_COUNT] = {
    [STATION_ALL]          = sStationName_All,
    [STATION_ANIME]        = sStationName_Anime,
    [STATION_POP]          = sStationName_Pop,
    [STATION_POKEMON_GBA]  = sStationName_PokemonGba,
    [STATION_INDIE_ROCK]   = sStationName_IndieRock,
    [STATION_FAVORITES]    = sStationName_Favorites,
    [STATION_PLAYLIST]     = sStationName_Playlist1,
    [STATION_GAMES]        = sStationName_Games,
    [STATION_ROCK_METAL]   = sStationName_RockMetal,
    [STATION_CLASSIC_ROCK] = sStationName_ClassicRock,
};

// Full labels used only by the animated NOW PLAYING status.
static const u8 sStationNowPlaying_All[]          = _("NOW PLAYING ALL TRACKS");
static const u8 sStationNowPlaying_Anime[]        = _("NOW PLAYING ANIME");
static const u8 sStationNowPlaying_Pop[]          = _("NOW PLAYING POP");
static const u8 sStationNowPlaying_PokemonGba[]   = _("NOW PLAYING POKEMON GBA");
static const u8 sStationNowPlaying_IndieRock[]    = _("NOW PLAYING INDIE ROCK");
static const u8 sStationNowPlaying_Favorites[]    = _("NOW PLAYING FAVORITES");
static const u8 sStationNowPlaying_Playlist1[]    = _("NOW PLAYING PLAYLIST 1");
static const u8 sStationNowPlaying_Playlist2[]    = _("NOW PLAYING PLAYLIST 2");
static const u8 sStationNowPlaying_Playlist3[]    = _("NOW PLAYING PLAYLIST 3");
static const u8 sStationNowPlaying_Games[]        = _("NOW PLAYING GAMES");
static const u8 sStationNowPlaying_RockMetal[]    = _("NOW PLAYING ROCK METAL");
static const u8 sStationNowPlaying_ClassicRock[]  = _("NOW PLAYING CLASSIC ROCK");

static const u8 *const sStationNowPlayingNames[STATION_COUNT] =
{
    [STATION_ALL]          = sStationNowPlaying_All,
    [STATION_ANIME]        = sStationNowPlaying_Anime,
    [STATION_POP]          = sStationNowPlaying_Pop,
    [STATION_POKEMON_GBA]  = sStationNowPlaying_PokemonGba,
    [STATION_INDIE_ROCK]   = sStationNowPlaying_IndieRock,
    [STATION_FAVORITES]    = sStationNowPlaying_Favorites,
    [STATION_PLAYLIST]     = sStationNowPlaying_Playlist1,
    [STATION_GAMES]        = sStationNowPlaying_Games,
    [STATION_ROCK_METAL]   = sStationNowPlaying_RockMetal,
    [STATION_CLASSIC_ROCK] = sStationNowPlaying_ClassicRock,
};

static const u8 *Radio_GetStationDisplayName(u8 station)
{
    if (station != STATION_PLAYLIST)
        return sStationNames[station];

    switch (sRadioActivePlaylist)
    {
    case 1:
        return sStationName_Playlist2;
    case 2:
        return sStationName_Playlist3;
    default:
        return sStationName_Playlist1;
    }
}

static const u8 *Radio_GetStationNowPlayingName(u8 station)
{
    if (station != STATION_PLAYLIST)
        return sStationNowPlayingNames[station];

    switch (sRadioActivePlaylist)
    {
    case 1:
        return sStationNowPlaying_Playlist2;
    case 2:
        return sStationNowPlaying_Playlist3;
    default:
        return sStationNowPlaying_Playlist1;
    }
}


// Exact player-facing station order. PLAYLIST appears three times, once for
// each active playlist, without changing the persisted station enum ABI.
#define RADIO_STATION_CYCLE_COUNT 12

static const u8 sRadioStationCycle[RADIO_STATION_CYCLE_COUNT] =
{
    STATION_ALL,
    STATION_FAVORITES,
    STATION_POKEMON_GBA,
    STATION_GAMES,
    STATION_ANIME,
    STATION_POP,
    STATION_CLASSIC_ROCK,
    STATION_ROCK_METAL,
    STATION_INDIE_ROCK,
    STATION_PLAYLIST,
    STATION_PLAYLIST,
    STATION_PLAYLIST,
};

static const u8 sRadioStationCyclePlaylist[RADIO_STATION_CYCLE_COUNT] =
{
    0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 1, 2,
};

static u8 Radio_GetStationCycleSlot(void)
{
    u8 i;

    for (i = 0; i < RADIO_STATION_CYCLE_COUNT; i++)
    {
        if (sRadioStationCycle[i] != sRadioStation)
            continue;

        if (sRadioStation != STATION_PLAYLIST
         || sRadioStationCyclePlaylist[i] == sRadioActivePlaylist)
            return i;
    }

    return 0;
}

static void Radio_SetStationCycleSlot(u8 slot)
{
    if (slot >= RADIO_STATION_CYCLE_COUNT)
        slot = 0;

    sRadioStation = sRadioStationCycle[slot];

    if (sRadioStation == STATION_PLAYLIST)
        sRadioActivePlaylist = sRadioStationCyclePlaylist[slot];
}

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
        return sRadioPlaylistCounts[sRadioActivePlaylist];

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
        if (index < sRadioPlaylistCounts[sRadioActivePlaylist])
            return sRadioPlaylists[sRadioActivePlaylist][index];
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
static void Radio_DrawSoundConfig(void);
static void Radio_DrawStickerEditor(void);
static void Radio_RefreshStickerSprites(void);
static void Radio_CopyEncodedText(u8 *dest, const u8 *src, u32 destSize);
static void Radio_LoadPersistentState(void);
static void Radio_SavePersistentState(void);
static void Radio_ResetPlaybackMonitor(void);
static void Radio_ApplyAudioSettings(void);
static void Radio_StartSongWithSettings(u16 songId);
static void Radio_SetStereoOutput(bool8 stereo);
static void Radio_RefreshAlbumCover(void);
static void Radio_QueueNowPlayingPopup(u16 songId);
static void Radio_ClearNowPlayingPopupQueue(void);
static void Radio_DrawNowPlayingPopup(u8 taskId);

// ===========================================================================
// Radio audio configuration
// ===========================================================================

static u16 Radio_GetM4AVolume(void)
{
    if (sRadioVolume >= RADIO_VOLUME_MAX)
        return 256;

    return (u16)((sRadioVolume * 256) / RADIO_VOLUME_MAX);
}

static void Radio_ApplyRadioVolume(void)
{
    if (sRadioIsPlaying)
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, Radio_GetM4AVolume());
}

static void Radio_ApplyMonoPanIfNeeded(void)
{
    // Pokemon Emerald's normal SOUND option only updates cry stereo.
    // For the Radio itself, MONO additionally centers every BGM track.
    if (sRadioIsPlaying && gSaveBlock2Ptr->optionsSound == 0)
        m4aMPlayPanpotControl(&gMPlayInfo_BGM, 0xFFFF, 0);
}

static void Radio_ApplyAudioSettings(void)
{
    Radio_ApplyRadioVolume();
    Radio_ApplyMonoPanIfNeeded();
}

static void Radio_StartSongWithSettings(u16 songId)
{
    m4aSongNumStart(songId);
    Radio_ApplyAudioSettings();
}

static void Radio_SetStereoOutput(bool8 stereo)
{
    u8 newMode = stereo ? 1 : 0;

    if (gSaveBlock2Ptr->optionsSound == newMode)
        return;

    gSaveBlock2Ptr->optionsSound = newMode;
    SetPokemonCryStereo(newMode);

    // Re-starting here is intentional: a global mono pan override destroys
    // the song's original per-track panning. Restarting reconstructs the
    // authentic stereo mix when switching modes, then reapplies Radio volume.
    if (sRadioIsPlaying)
    {
        m4aSongNumStop(sRadioCurrentSong);
        Radio_StartSongWithSettings(sRadioCurrentSong);
        Radio_ResetPlaybackMonitor();
    }
}

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
static const u8 sRadioText_SongPrefix[]         = _(" Song: ");
static const u8 sRadioText_SongPrefixSelected[] = _(">Song: ");
static const u8 sRadioText_StationFmt[]         = _(" Radio Station: {STR_VAR_1}");
static const u8 sRadioText_StationFmtSelected[] = _(">Radio Station: {STR_VAR_1}");

static const u8 sRadioText_MenuTitle[]       = _("RADIO MENU");
static const u8 sRadioText_MenuSearch[]      = _("SEARCH A-Z");
static const u8 sRadioText_MenuFavorites[]   = _("FAVORITES");
static const u8 sRadioText_MenuPlaylist[]    = _("MY PLAYLISTS");
static const u8 sRadioText_MenuFavorite[]    = _("ADD FAVORITE");
static const u8 sRadioText_MenuUnfavorite[]  = _("REMOVE FAVORITE");
static const u8 sRadioText_MenuAddPlaylist[] = _("ADD TO PLAYLIST");
static const u8 sRadioText_MenuConfig[]      = _("CONFIG");
static const u8 sRadioText_MenuPriorityOn[]  = _("RADIO PRIORITY: ON");
static const u8 sRadioText_MenuPriorityOff[] = _("RADIO PRIORITY: OFF");
static const u8 sRadioText_MenuRepeatOn[]    = _("REPEAT: ON");
static const u8 sRadioText_MenuRepeatOff[]   = _("REPEAT: OFF");
static const u8 sRadioText_MenuShuffleOn[]   = _("SHUFFLE: ON");
static const u8 sRadioText_MenuShuffleOff[]  = _("SHUFFLE: OFF");
static const u8 sRadioText_MenuReturn[]       = _("RETURN");
static const u8 sRadioText_Cursor[]           = _(">");

static const u8 sRadioText_ConfigTitle[]        = _("RADIO CONFIG");
static const u8 sRadioText_ConfigStereo[]       = _("OUTPUT: STEREO");
static const u8 sRadioText_ConfigMono[]         = _("OUTPUT: MONO");
static const u8 sRadioText_ConfigVolumeFmt[]    = _("RADIO VOL: {STR_VAR_1}");
static const u8 sRadioText_ConfigTransitionOn[] = _("TRANSITION FX: ON");
static const u8 sRadioText_ConfigTransitionOff[]= _("TRANSITION FX: OFF");
static const u8 sRadioText_ConfigHideCoversOn[] = _("HIDE COVERS: ON");
static const u8 sRadioText_ConfigHideCoversOff[]= _("HIDE COVERS: OFF");
static const u8 sRadioText_ConfigThemeNormal[]  = _("COLOR THEME: NORMAL");
static const u8 sRadioText_ConfigThemeDark[]    = _("COLOR THEME: DARK");
static const u8 sRadioText_ConfigThemePurple[]  = _("COLOR THEME: PURPLE");
static const u8 sRadioText_ConfigThemePink[]    = _("COLOR THEME: PINK");
static const u8 sRadioText_ConfigStickers[]     = _("STICKERS");
static const u8 sRadioText_StickerTitle[]       = _("STICKERS");
static const u8 sRadioText_StickerNumFmt[]      = _("STICKER {STR_VAR_1}/5");
static const u8 sRadioText_StickerOn[]          = _("STATE: ON");
static const u8 sRadioText_StickerOff[]         = _("STATE: OFF");
static const u8 sRadioText_StickerPosFmt[]      = _("POSITION: {STR_VAR_1}/7");
static const u8 sRadioText_StickerHelp[]        = _("DPAD MOVE  L/R PICK  A ON/OFF");

static const u8 sRadioText_SearchTitle[]      = _("SEARCH A-Z");
static const u8 sRadioText_SearchLetterFmt[]  = _("LETTER: {STR_VAR_1}");
static const u8 sRadioText_SearchHelp[]       = _("A SEARCH  B BACK");
static const u8 sRadioText_SearchResults[]    = _("SEARCH RESULTS");
static const u8 sRadioText_FavoritesHead[]       = _("FAVORITES");
static const u8 sRadioText_PlaylistsHead[]       = _("MY PLAYLISTS");
static const u8 sRadioText_AddToPlaylistHead[]   = _("ADD TO PLAYLIST");
static const u8 sRadioText_Playlist1Head[]       = _("PLAYLIST 1");
static const u8 sRadioText_Playlist2Head[]       = _("PLAYLIST 2");
static const u8 sRadioText_Playlist3Head[]       = _("PLAYLIST 3");
static const u8 sRadioText_PlaylistSlotFmt[]     = _("PLAYLIST {STR_VAR_1} {STR_VAR_2}/20");
static const u8 sRadioText_EmptyList[]           = _("EMPTY - B BACK");
static const u8 sRadioSearchLetters[]            = _("ABCDEFGHIJKLMNOPQRSTUVWXYZ");

static const u8 *const sRadioText_PlaylistHeads[RADIO_PLAYLIST_COUNT] =
{
    sRadioText_Playlist1Head,
    sRadioText_Playlist2Head,
    sRadioText_Playlist3Head,
};

// ---------------------------------------------------------------------------
// Pop / electronic display names - song followed by the artist.
// These labels also appear in Search, Favorites and Playlists.
// ---------------------------------------------------------------------------
static const u8 sPopName_360[] = _("360 (CHARLI XCX)");
static const u8 sPopName_MeetMeHalfway[] = _("MEET ME HALFWAY (BLACK EYED PEAS)");
static const u8 sPopName_OneMoreTime[] = _("ONE MORE TIME (DAFT PUNK)");
static const u8 sPopName_AroundTheWorld[] = _("AROUND THE WORLD (DAFT PUNK)");
static const u8 sPopName_WhereIsTheLove[] = _("WHERE IS THE LOVE (BLACK EYED PEAS)");

static const u8 *Radio_GetPopDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_360:
        return sPopName_360;
    case MUS_MEET_ME_HALFWAY:
        return sPopName_MeetMeHalfway;
    case MUS_ONE_MORE_TIME:
        return sPopName_OneMoreTime;
    case MUS_AROUND_THE_WORLD:
        return sPopName_AroundTheWorld;
    case MUS_WHERE_IS_THE_LOVE:
        return sPopName_WhereIsTheLove;
    default:
        return NULL;
    }
}

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

static const u8 sIndieName_FreakingOutNeighborhood[] = _("FREAKING OUT THE NEIGHBORHOOD (MAC DEMARCO)");
static const u8 sIndieName_DraculaTameImpala[]       = _("DRACULA (TAME IMPALA)");
static const u8 sIndieName_LovesongCure[]             = _("LOVESONG (THE CURE)");
static const u8 sIndieName_FridayImInLove[]           = _("FRIDAY I'M IN LOVE (THE CURE)");
static const u8 sIndieName_BoysDontCry[]              = _("BOYS DON'T CRY (THE CURE)");
static const u8 sIndieName_RoseParade[]               = _("ROSE PARADE (ELLIOTT SMITH)");
static const u8 sIndieName_Shadowplay[]               = _("SHADOWPLAY (JOY DIVISION)");
static const u8 sIndieName_NewDawnFades[]             = _("NEW DAWN FADES (JOY DIVISION)");
static const u8 sIndieName_Disorder[]                 = _("DISORDER (JOY DIVISION)");
static const u8 sIndieName_LoveWillTearUsApart[]      = _("LOVE WILL TEAR US APART (JOY DIVISION)");

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
    case MUS_FREAKING_OUT_THE_NEIGHBORHOOD:
        return sIndieName_FreakingOutNeighborhood;
    case MUS_DRACULA_TAME_IMPALA:
        return sIndieName_DraculaTameImpala;
    case MUS_LOVESONG_THE_CURE:
        return sIndieName_LovesongCure;
    case MUS_FRIDAY_IM_IN_LOVE:
        return sIndieName_FridayImInLove;
    case MUS_BOYS_DONT_CRY:
        return sIndieName_BoysDontCry;
    case MUS_ROSE_PARADE:
        return sIndieName_RoseParade;
    case MUS_SHADOWPLAY:
        return sIndieName_Shadowplay;
    case MUS_NEW_DAWN_FADES:
        return sIndieName_NewDawnFades;
    case MUS_DISORDER:
        return sIndieName_Disorder;
    case MUS_LOVE_WILL_TEAR_US_APART:
        return sIndieName_LoveWillTearUsApart;
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

// ---------------------------------------------------------------------------
// Games Radio display names - OST title followed by the game/source.
// These labels also survive when a song is opened through Favorites,
// Search or one of the three playlists.
// ---------------------------------------------------------------------------
static const u8 sGamesName_HlwDistortionWorld[] = _("DISTORTION WORLD (HLW)");
static const u8 sGamesName_HlwVsEvil[] = _("VS EVIL (HLW)");
static const u8 sGamesName_HlwPhoenixTown[] = _("PHOENIX TOWN (HLW)");

static const u8 sGamesName_ScarsOfTime[] = _("SCARS OF TIME (CHRONO CROSS)");
static const u8 sGamesName_MidnasLament[] = _("MIDNAS LAMENT (ZELDA)");
static const u8 sGamesName_TetrisMainTheme[] = _("TETRIS MAIN THEME (TETRIS)");
static const u8 sGamesName_YoungPhotographer[] = _("THE YOUNG PHOTOGRAPHER (POKEMON SNAP)");
static const u8 sGamesName_HopeGrandChase[] = _("HOPE (GRAND CHASE)");

static const u8 sGamesName_AncientGroover[] = _("ANCIENT GROOVER (RAGNAROK)");
static const u8 sGamesName_DivineGrace[] = _("DIVINE GRACE (RAGNAROK)");
static const u8 sGamesName_ThemeOfMorroc[] = _("THEME OF MORROC (RAGNAROK)");
static const u8 sGamesName_EverlastingWanderers[] = _("EVERLASTING WANDERERS (RAGNAROK)");
static const u8 sGamesName_ThemeOfGeffen[] = _("THEME OF GEFFEN (RAGNAROK)");
static const u8 sGamesName_ThemeOfAlberta[] = _("THEME OF ALBERTA (RAGNAROK)");
static const u8 sGamesName_ThemeOfProntera[] = _("THEME OF PRONTERA (RAGNAROK)");

static const u8 sGamesName_UminekoHope[] = _("HOPE (UMINEKO)");
static const u8 sGamesName_Umineko600Million[] = _("600 MILLION IN C SHARP MINOR (UMINEKO)");
static const u8 sGamesName_UminekoWingless[] = _("WINGLESS (UMINEKO)");
static const u8 sGamesName_UminekoWorldend[] = _("WORLDEND (UMINEKO)");
static const u8 sGamesName_UminekoFar[] = _("FAR (UMINEKO)");
static const u8 sGamesName_UminekoWorldendDominator[] = _("WORLDEND DOMINATOR (UMINEKO)");

static const u8 *Radio_GetGamesDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_HLW_DISTORTION_WORLD:
        return sGamesName_HlwDistortionWorld;
    case MUS_HLW_VS_EVIL:
        return sGamesName_HlwVsEvil;
    case MUS_HLW_PHOENIX_TOWN:
        return sGamesName_HlwPhoenixTown;
    case MUS_SCARS_OF_TIME:
        return sGamesName_ScarsOfTime;
    case MUS_MIDNAS_LAMENT:
        return sGamesName_MidnasLament;
    case MUS_TETRIS_MAIN_THEME:
        return sGamesName_TetrisMainTheme;
    case MUS_THE_YOUNG_PHOTOGRAPHER:
        return sGamesName_YoungPhotographer;
    case MUS_HOPE_GRAND_CHASE:
        return sGamesName_HopeGrandChase;
    case MUS_ANCIENT_GROOVER:
        return sGamesName_AncientGroover;
    case MUS_DIVINE_GRACE:
        return sGamesName_DivineGrace;
    case MUS_THEME_OF_MORROC:
        return sGamesName_ThemeOfMorroc;
    case MUS_EVERLASTING_WANDERERS:
        return sGamesName_EverlastingWanderers;
    case MUS_THEME_OF_GEFFEN:
        return sGamesName_ThemeOfGeffen;
    case MUS_THEME_OF_ALBERTA:
        return sGamesName_ThemeOfAlberta;
    case MUS_THEME_OF_PRONTERA:
        return sGamesName_ThemeOfProntera;
    case MUS_UMINEKO_HOPE:
        return sGamesName_UminekoHope;
    case MUS_UMINEKO_600_MILLION:
        return sGamesName_Umineko600Million;
    case MUS_UMINEKO_WINGLESS:
        return sGamesName_UminekoWingless;
    case MUS_UMINEKO_WORLDEND:
        return sGamesName_UminekoWorldend;
    case MUS_UMINEKO_FAR:
        return sGamesName_UminekoFar;
    case MUS_UMINEKO_WORLDEND_DOMINATOR:
        return sGamesName_UminekoWorldendDominator;
    default:
        return NULL;
    }
}

// ---------------------------------------------------------------------------
// Rock / Metal Radio display names.
// ---------------------------------------------------------------------------
static const u8 sRockMetalName_3SAnd7S[] = _("3S AND 7S (QUEENS OF THE STONE AGE)");
static const u8 sRockMetalName_GoWithTheFlow[] = _("GO WITH THE FLOW (QUEENS OF THE STONE AGE)");
static const u8 sRockMetalName_MyGodIsTheSun[] = _("MY GOD IS THE SUN (QUEENS OF THE STONE AGE)");
static const u8 sRockMetalName_Rosemary[] = _("ROSEMARY (DEFTONES)");
static const u8 sRockMetalName_MyOwnSummer[] = _("MY OWN SUMMER (DEFTONES)");
static const u8 sRockMetalName_ChangeInTheHouseOfFlies[] = _("CHANGE IN THE HOUSE OF FLIES (DEFTONES)");
static const u8 sRockMetalName_BeQuietAndDrive[] = _("BE QUIET AND DRIVE (DEFTONES)");
static const u8 sRockMetalName_AroundTheFur[] = _("AROUND THE FUR (DEFTONES)");
static const u8 sRockMetalName_Faint[] = _("FAINT (LINKIN PARK)");
static const u8 sRockMetalName_EasierToRun[] = _("EASIER TO RUN (LINKIN PARK)");
static const u8 sRockMetalName_InTheEnd[] = _("IN THE END (LINKIN PARK)");
static const u8 sRockMetalName_BreakingTheHabit[] = _("BREAKING THE HABIT (LINKIN PARK)");

static const u8 sRockMetalName_Kryptonite[] = _("KRYPTONITE (3 DOORS DOWN)");
static const u8 sRockMetalName_AnimalIHaveBecome[] = _("ANIMAL I HAVE BECOME (THREE DAYS GRACE)");

static const u8 *Radio_GetRockMetalDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_3S_AND_7S:
        return sRockMetalName_3SAnd7S;
    case MUS_GO_WITH_THE_FLOW:
        return sRockMetalName_GoWithTheFlow;
    case MUS_MY_GOD_IS_THE_SUN:
        return sRockMetalName_MyGodIsTheSun;
    case MUS_ROSEMARY_DEFTONES:
        return sRockMetalName_Rosemary;
    case MUS_MY_OWN_SUMMER:
        return sRockMetalName_MyOwnSummer;
    case MUS_CHANGE_IN_THE_HOUSE_OF_FLIES:
        return sRockMetalName_ChangeInTheHouseOfFlies;
    case MUS_BE_QUIET_AND_DRIVE:
        return sRockMetalName_BeQuietAndDrive;
    case MUS_AROUND_THE_FUR:
        return sRockMetalName_AroundTheFur;
    case MUS_FAINT:
        return sRockMetalName_Faint;
    case MUS_EASIER_TO_RUN:
        return sRockMetalName_EasierToRun;
    case MUS_IN_THE_END:
        return sRockMetalName_InTheEnd;
    case MUS_BREAKING_THE_HABIT:
        return sRockMetalName_BreakingTheHabit;
    case MUS_KRYPTONITE:
        return sRockMetalName_Kryptonite;
    case MUS_ANIMAL_I_HAVE_BECOME:
        return sRockMetalName_AnimalIHaveBecome;
    default:
        return NULL;
    }
}

// ---------------------------------------------------------------------------
// Classic Rock Radio display names.
// ---------------------------------------------------------------------------
static const u8 sClassicRockName_AHardRainsAGonnaFall[] = _("A HARD RAIN'S A-GONNA FALL (BOB DYLAN)");
static const u8 sClassicRockName_AnotherBrickInTheWall[] = _("ANOTHER BRICK IN THE WALL (PINK FLOYD)");
static const u8 sClassicRockName_BlowinInTheWind[] = _("BLOWIN' IN THE WIND (BOB DYLAN)");
static const u8 sClassicRockName_LikeARollingStone[] = _("LIKE A ROLLING STONE (BOB DYLAN)");
static const u8 sClassicRockName_ComfortablyNumb[] = _("COMFORTABLY NUMB (PINK FLOYD)");
static const u8 sClassicRockName_FoxyLady[] = _("FOXY LADY (JIMI HENDRIX)");
static const u8 sClassicRockName_HighHopes[] = _("HIGH HOPES (PINK FLOYD)");
static const u8 sClassicRockName_KnockinOnHeavensDoor[] = _("KNOCKIN' ON HEAVEN'S DOOR (BOB DYLAN)");
static const u8 sClassicRockName_MrTambourineMan[] = _("MR. TAMBOURINE MAN (BOB DYLAN)");
static const u8 sClassicRockName_ShineOnYouCrazyDiamond[] = _("SHINE ON YOU CRAZY DIAMOND (PINK FLOYD)");
static const u8 sClassicRockName_TheGreatGigInTheSky[] = _("THE GREAT GIG IN THE SKY (PINK FLOYD)");
static const u8 sClassicRockName_Time[] = _("TIME (PINK FLOYD)");

static const u8 *Radio_GetClassicRockDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_A_HARD_RAINS_A_GONNA_FALL:
        return sClassicRockName_AHardRainsAGonnaFall;
    case MUS_ANOTHER_BRICK_IN_THE_WALL:
        return sClassicRockName_AnotherBrickInTheWall;
    case MUS_BLOWIN_IN_THE_WIND:
        return sClassicRockName_BlowinInTheWind;
    case MUS_LIKE_A_ROLLING_STONE:
        return sClassicRockName_LikeARollingStone;
    case MUS_COMFORTABLY_NUMB:
        return sClassicRockName_ComfortablyNumb;
    case MUS_FOXY_LADY:
        return sClassicRockName_FoxyLady;
    case MUS_HIGH_HOPES:
        return sClassicRockName_HighHopes;
    case MUS_KNOCKIN_ON_HEAVENS_DOOR:
        return sClassicRockName_KnockinOnHeavensDoor;
    case MUS_MR_TAMBOURINE_MAN:
        return sClassicRockName_MrTambourineMan;
    case MUS_SHINE_ON_YOU_CRAZY_DIAMOND:
        return sClassicRockName_ShineOnYouCrazyDiamond;
    case MUS_THE_GREAT_GIG_IN_THE_SKY:
        return sClassicRockName_TheGreatGigInTheSky;
    case MUS_TIME:
        return sClassicRockName_Time;
    default:
        return NULL;
    }
}

static const u8 *Radio_GetSpecialDisplayName(u16 songId)
{
    const u8 *name;

    name = Radio_GetClassicRockDisplayName(songId);
    if (name != NULL)
        return name;

    name = Radio_GetRockMetalDisplayName(songId);
    if (name != NULL)
        return name;

    name = Radio_GetPopDisplayName(songId);
    if (name != NULL)
        return name;

    name = Radio_GetGamesDisplayName(songId);
    if (name != NULL)
        return name;

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
    Radio_StartSongWithSettings(sRadioCurrentSong);

    sRadioIsPlaying = TRUE;
    Radio_ResetPlaybackMonitor();
    Radio_SavePersistentState();
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
    Radio_StartSongWithSettings(sRadioCurrentSong);
    sRadioIsPlaying = TRUE;
    Radio_ResetPlaybackMonitor();
    Radio_SavePersistentState();
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
    Radio_StartSongWithSettings(sRadioCurrentSong);
    sRadioIsPlaying = TRUE;
    Radio_ResetPlaybackMonitor();
    Radio_SavePersistentState();
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
//     exact current position instead of calling Radio_StartSongWithSettings() and restarting.
//   * Priority ON + Repeat OFF: one full song pass -> next station track.
//   * Priority ON + Repeat ON: keep the current song looping.
// Returns TRUE only when the radio automatically changed to another song.
bool8 RadioPriority_Update(void)
{
    if (sRadioOverworldSkipCooldown != 0)
        sRadioOverworldSkipCooldown--;

    if (sRadioIsPlaying)
        Radio_ApplyMonoPanIfNeeded();

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
            Radio_StartSongWithSettings(sRadioCurrentSong);
            Radio_ResetPlaybackMonitor();
            return FALSE;
        }

        if (!sRadioRepeatEnabled && Radio_CurrentSongCompletedPass())
            return Radio_AdvanceToNextStationTrack();

        // A rare genuinely non-looping track can end while Repeat is ON.
        if (sRadioRepeatEnabled
         && !(gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_TRACK))
        {
            Radio_StartSongWithSettings(sRadioCurrentSong);
            Radio_ResetPlaybackMonitor();
        }

        return FALSE;
    }

    // Something bypassed the guarded sound.c API and replaced the BGM.
    // Restore the radio as a safety net.
    Radio_StartSongWithSettings(sRadioCurrentSong);
    Radio_ResetPlaybackMonitor();
    return FALSE;
}

// Backward-compatible name used by the V3 battle hooks.
void RadioPriority_MaintainBgm(void)
{
    RadioPriority_Update();
}

// ---------------------------------------------------------------------------
// Persistent radio save.
//
// ABI rule: HLWSaveExtension remains exactly 512 bytes. RadioSaveData remains
// exactly 152 bytes for V8.1 compatibility. Playlist 1 reuses the old
// save->playlist[32] field. Playlist 1 uses slots 0..19, while Playlist 2
// reuses the 12 legacy spare slots 20..31 before spilling its last 8 slots
// into future[]. Playlist 3 also lives in future[]. Only 56 bytes of
// hlwSave.future[] are consumed, leaving 296 bytes reserved.
// Metadata for the 3-playlist format lives in RadioSaveData.reserved[].
// ---------------------------------------------------------------------------

#define HLW_SAVE_EXTENSION_MAGIC   0x484C5753
#define HLW_SAVE_EXTENSION_VERSION 1

#define RADIO_SAVE_MAGIC           0x484C5752
#define RADIO_SAVE_VERSION         1

#define RADIO_SAVE_FLAG_PRIORITY      (1 << 0)
#define RADIO_SAVE_FLAG_REPEAT        (1 << 1)
#define RADIO_SAVE_FLAG_SHUFFLE       (1 << 2)
#define RADIO_SAVE_FLAG_PLAYING       (1 << 3)
#define RADIO_SAVE_FLAG_SELECT_RADIO  (1 << 4)

#define RADIO_PLAYLIST_SAVE_TAG0              0x50 // 'P'
#define RADIO_PLAYLIST_SAVE_TAG1              0x33 // '3'
#define RADIO_PLAYLIST_SAVE_VERSION           1

#define RADIO_PLAYLIST2_LEGACY_SLOTS          (RADIO_LIBRARY_CAPACITY - RADIO_PLAYLIST_CAPACITY)
#define RADIO_PLAYLIST2_FUTURE_SLOTS          (RADIO_PLAYLIST_CAPACITY - RADIO_PLAYLIST2_LEGACY_SLOTS)
#define RADIO_PLAYLIST_FUTURE_OFFSET_2_TAIL   0
#define RADIO_PLAYLIST_FUTURE_OFFSET_3        (RADIO_PLAYLIST2_FUTURE_SLOTS * sizeof(u16))
#define RADIO_PLAYLIST_FUTURE_BYTES           ((RADIO_PLAYLIST2_FUTURE_SLOTS + RADIO_PLAYLIST_CAPACITY) * sizeof(u16))

// Sticker save data starts immediately after the 56 playlist bytes already
// used in hlwSave.future[]. This consumes only 8 more bytes and does not
// change HLWSaveExtension or RadioSaveData sizes.
#define RADIO_STICKER_SAVE_OFFSET             RADIO_PLAYLIST_FUTURE_BYTES
#define RADIO_STICKER_SAVE_TAG                0x53 // S
#define RADIO_STICKER_SAVE_VERSION            1
#define RADIO_STICKER_SAVE_TAG_OFFSET         (RADIO_STICKER_SAVE_OFFSET + 0)
#define RADIO_STICKER_SAVE_VERSION_OFFSET     (RADIO_STICKER_SAVE_OFFSET + 1)
#define RADIO_STICKER_SAVE_VISIBLE_OFFSET     (RADIO_STICKER_SAVE_OFFSET + 2)
#define RADIO_STICKER_SAVE_POSITIONS_OFFSET   (RADIO_STICKER_SAVE_OFFSET + 3)
#define RADIO_STICKER_SAVE_BYTES              (3 + RADIO_STICKER_COUNT)

#define RADIO_SAVE_RSVD_TAG0              0
#define RADIO_SAVE_RSVD_TAG1              1
#define RADIO_SAVE_RSVD_PLAYLIST_VERSION  2
#define RADIO_SAVE_RSVD_ACTIVE_PLAYLIST   3
#define RADIO_SAVE_RSVD_PLAYLIST2_COUNT   4
#define RADIO_SAVE_RSVD_PLAYLIST3_COUNT   5
#define RADIO_SAVE_RSVD_VOLUME            6
#define RADIO_SAVE_RSVD_CONFIG            7

#define RADIO_SAVE_CONFIG_TAG             0xA0
#define RADIO_SAVE_CONFIG_TAG_MASK        0xF0
#define RADIO_SAVE_CONFIG_TRANSITION      (1 << 0)
#define RADIO_SAVE_CONFIG_HIDE_COVERS     (1 << 1)
#define RADIO_SAVE_CONFIG_THEME_SHIFT     2
#define RADIO_SAVE_CONFIG_THEME_MASK      (3 << RADIO_SAVE_CONFIG_THEME_SHIFT)
#define RADIO_RETIRED_SONG_SLOT_1         598
#define RADIO_RETIRED_SONG_SLOT_2         604

static bool8 Radio_SaveHasThreePlaylists(const struct RadioSaveData *save)
{
    return save->reserved[RADIO_SAVE_RSVD_TAG0] == RADIO_PLAYLIST_SAVE_TAG0
        && save->reserved[RADIO_SAVE_RSVD_TAG1] == RADIO_PLAYLIST_SAVE_TAG1
        && save->reserved[RADIO_SAVE_RSVD_PLAYLIST_VERSION] == RADIO_PLAYLIST_SAVE_VERSION;
}

static void Radio_InitSaveExtensionIfNeeded(void)
{
    struct HLWSaveExtension *ext = &gSaveBlock1Ptr->hlwSave;

    if (ext->magic != HLW_SAVE_EXTENSION_MAGIC
     || ext->version != HLW_SAVE_EXTENSION_VERSION
     || ext->size != sizeof(*ext))
    {
        memset(ext, 0, sizeof(*ext));
        ext->magic = HLW_SAVE_EXTENSION_MAGIC;
        ext->version = HLW_SAVE_EXTENSION_VERSION;
        ext->size = sizeof(*ext);
    }
}

static void Radio_ResetStickerState(void)
{
    u8 i;

    sRadioStickerVisibleMask = 0;
    sRadioStickerSelected = 0;

    // Give each sticker a useful distinct starting cell. They remain hidden
    // until the player turns them on in the sticker editor.
    for (i = 0; i < RADIO_STICKER_COUNT; i++)
        sRadioStickerPositions[i] = i % RADIO_STICKER_SLOT_COUNT;
}

static void Radio_LoadStickerState(const struct HLWSaveExtension *ext)
{
    u8 i;

    if (ext->future[RADIO_STICKER_SAVE_TAG_OFFSET] != RADIO_STICKER_SAVE_TAG
     || ext->future[RADIO_STICKER_SAVE_VERSION_OFFSET] != RADIO_STICKER_SAVE_VERSION)
    {
        Radio_ResetStickerState();
        return;
    }

    sRadioStickerVisibleMask =
        ext->future[RADIO_STICKER_SAVE_VISIBLE_OFFSET]
        & ((1 << RADIO_STICKER_COUNT) - 1);

    for (i = 0; i < RADIO_STICKER_COUNT; i++)
    {
        u8 pos = ext->future[RADIO_STICKER_SAVE_POSITIONS_OFFSET + i];
        sRadioStickerPositions[i] =
            (pos < RADIO_STICKER_SLOT_COUNT) ? pos : (i % RADIO_STICKER_SLOT_COUNT);
    }

    sRadioStickerSelected = 0;
}

static void Radio_SaveStickerState(struct HLWSaveExtension *ext)
{
    u8 i;

    ext->future[RADIO_STICKER_SAVE_TAG_OFFSET] = RADIO_STICKER_SAVE_TAG;
    ext->future[RADIO_STICKER_SAVE_VERSION_OFFSET] = RADIO_STICKER_SAVE_VERSION;
    ext->future[RADIO_STICKER_SAVE_VISIBLE_OFFSET] =
        sRadioStickerVisibleMask & ((1 << RADIO_STICKER_COUNT) - 1);

    for (i = 0; i < RADIO_STICKER_COUNT; i++)
        ext->future[RADIO_STICKER_SAVE_POSITIONS_OFFSET + i] =
            sRadioStickerPositions[i];
}

static void Radio_ResetPersistentState(void)
{
    struct HLWSaveExtension *ext;
    struct RadioSaveData *save;

    Radio_InitSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;
    save = &ext->radio;

    memset(save, 0, sizeof(*save));
    memset(ext->future, 0, RADIO_PLAYLIST_FUTURE_BYTES + RADIO_STICKER_SAVE_BYTES);
    Radio_ResetStickerState();

    save->magic = RADIO_SAVE_MAGIC;
    save->version = RADIO_SAVE_VERSION;
    save->shuffleState = 0xA5C31F27;
    save->station = STATION_ALL;
    save->currentSong = Station_GetTrack(STATION_ALL, 0);

    save->reserved[RADIO_SAVE_RSVD_TAG0] = RADIO_PLAYLIST_SAVE_TAG0;
    save->reserved[RADIO_SAVE_RSVD_TAG1] = RADIO_PLAYLIST_SAVE_TAG1;
    save->reserved[RADIO_SAVE_RSVD_PLAYLIST_VERSION] = RADIO_PLAYLIST_SAVE_VERSION;
    save->reserved[RADIO_SAVE_RSVD_ACTIVE_PLAYLIST] = 0;

    // Audio-config bytes are encoded so old V8 saves (reserved[6/7] == 0)
    // migrate to sane defaults instead of becoming muted.
    save->reserved[RADIO_SAVE_RSVD_VOLUME] = RADIO_VOLUME_MAX + 1;
    save->reserved[RADIO_SAVE_RSVD_CONFIG] =
        RADIO_SAVE_CONFIG_TAG | RADIO_SAVE_CONFIG_TRANSITION;
    Radio_SaveStickerState(ext);
}

static bool8 Radio_SaveSongIdIsValid(u16 songId)
{
    return songId >= (u16)START_MUS
        && songId <= (u16)END_MUS
        && songId != RADIO_RETIRED_SONG_SLOT_1
        && songId != RADIO_RETIRED_SONG_SLOT_2;
}

static u8 Radio_LoadSavedSongList(const u16 *src, u8 srcCount, u16 *dst, u8 capacity)
{
    u8 i;
    u8 outCount = 0;

    if (srcCount > capacity)
        srcCount = capacity;

    for (i = 0; i < srcCount; i++)
    {
        u8 j;
        bool8 duplicate = FALSE;

        if (!Radio_SaveSongIdIsValid(src[i]))
            continue;

        // Favorites/playlists must not resurrect tracks intentionally removed
        // from the radio catalog (the underlying game song still exists).
        if (Station_GetTrack(STATION_ALL, Station_FindTrack(STATION_ALL, src[i])) != src[i])
            continue;

        for (j = 0; j < outCount; j++)
        {
            if (dst[j] == src[i])
            {
                duplicate = TRUE;
                break;
            }
        }

        if (!duplicate)
            dst[outCount++] = src[i];
    }

    return outCount;
}

static void Radio_MigrateLegacySinglePlaylist(const struct RadioSaveData *save)
{
    u16 oldPlaylist[RADIO_LIBRARY_CAPACITY];
    u8 oldCount;
    u8 i;

    memset(oldPlaylist, 0, sizeof(oldPlaylist));
    memset(sRadioPlaylists, 0, sizeof(sRadioPlaylists));
    memset(sRadioPlaylistCounts, 0, sizeof(sRadioPlaylistCounts));

    oldCount = Radio_LoadSavedSongList(
        save->playlist,
        save->playlistCount,
        oldPlaylist,
        RADIO_LIBRARY_CAPACITY
    );

    for (i = 0; i < oldCount && i < RADIO_PLAYLIST_CAPACITY; i++)
        sRadioPlaylists[0][sRadioPlaylistCounts[0]++] = oldPlaylist[i];

    // V8.1 allowed 32 songs. Preserve overflow instead of dropping it:
    // songs 21..32 migrate into Playlist 2.
    for (; i < oldCount && sRadioPlaylistCounts[1] < RADIO_PLAYLIST_CAPACITY; i++)
        sRadioPlaylists[1][sRadioPlaylistCounts[1]++] = oldPlaylist[i];

    sRadioActivePlaylist = 0;

    // If V8.1 was actively playing one of the overflow songs, keep that
    // playlist context too so the current song can still be found after load.
    if (save->station == STATION_PLAYLIST)
    {
        for (i = 0; i < sRadioPlaylistCounts[1]; i++)
        {
            if (sRadioPlaylists[1][i] == save->currentSong)
            {
                sRadioActivePlaylist = 1;
                break;
            }
        }
    }
}

static void Radio_LoadPersistentState(void)
{
    struct HLWSaveExtension *ext;
    struct RadioSaveData *save;
    u16 savedPlaylist2[RADIO_PLAYLIST_CAPACITY];
    u16 savedPlaylist3[RADIO_PLAYLIST_CAPACITY];

    Radio_InitSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;
    save = &ext->radio;

    if (save->magic != RADIO_SAVE_MAGIC
     || save->version != RADIO_SAVE_VERSION)
    {
        Radio_ResetPersistentState();
        ext = &gSaveBlock1Ptr->hlwSave;
        save = &ext->radio;
    }

    memset(sRadioFavorites, 0, sizeof(sRadioFavorites));
    memset(sRadioPlaylists, 0, sizeof(sRadioPlaylists));
    memset(sRadioPlaylistCounts, 0, sizeof(sRadioPlaylistCounts));

    sRadioFavoritesCount = Radio_LoadSavedSongList(
        save->favorites,
        save->favoritesCount,
        sRadioFavorites,
        RADIO_LIBRARY_CAPACITY
    );

    if (Radio_SaveHasThreePlaylists(save))
    {
        sRadioPlaylistCounts[0] = Radio_LoadSavedSongList(
            save->playlist,
            save->playlistCount,
            sRadioPlaylists[0],
            RADIO_PLAYLIST_CAPACITY
        );

        memset(savedPlaylist2, 0, sizeof(savedPlaylist2));
        memcpy(
            savedPlaylist2,
            &save->playlist[RADIO_PLAYLIST_CAPACITY],
            RADIO_PLAYLIST2_LEGACY_SLOTS * sizeof(u16)
        );
        memcpy(
            &savedPlaylist2[RADIO_PLAYLIST2_LEGACY_SLOTS],
            &ext->future[RADIO_PLAYLIST_FUTURE_OFFSET_2_TAIL],
            RADIO_PLAYLIST2_FUTURE_SLOTS * sizeof(u16)
        );
        memcpy(
            savedPlaylist3,
            &ext->future[RADIO_PLAYLIST_FUTURE_OFFSET_3],
            sizeof(savedPlaylist3)
        );

        sRadioPlaylistCounts[1] = Radio_LoadSavedSongList(
            savedPlaylist2,
            save->reserved[RADIO_SAVE_RSVD_PLAYLIST2_COUNT],
            sRadioPlaylists[1],
            RADIO_PLAYLIST_CAPACITY
        );
        sRadioPlaylistCounts[2] = Radio_LoadSavedSongList(
            savedPlaylist3,
            save->reserved[RADIO_SAVE_RSVD_PLAYLIST3_COUNT],
            sRadioPlaylists[2],
            RADIO_PLAYLIST_CAPACITY
        );

        sRadioActivePlaylist = save->reserved[RADIO_SAVE_RSVD_ACTIVE_PLAYLIST];
        if (sRadioActivePlaylist >= RADIO_PLAYLIST_COUNT)
            sRadioActivePlaylist = 0;
    }
    else
    {
        // Transparent V8.1 migration: old single playlist -> Playlist 1,
        // with any songs beyond slot 20 carried into Playlist 2.
        Radio_MigrateLegacySinglePlaylist(save);
    }

    sRadioStation = save->station;
    if (sRadioStation >= STATION_COUNT
     || Station_Count(sRadioStation) == 0)
    {
        sRadioStation = STATION_ALL;
    }

    sRadioCurrentSong = save->currentSong;
    if (!Radio_SaveSongIdIsValid(sRadioCurrentSong))
        sRadioCurrentSong = Station_GetTrack(sRadioStation, 0);

    sRadioStationIndex = Station_FindTrack(sRadioStation, sRadioCurrentSong);
    if (Station_GetTrack(sRadioStation, sRadioStationIndex) != sRadioCurrentSong)
    {
        sRadioStationIndex = 0;
        sRadioCurrentSong = Station_GetTrack(sRadioStation, 0);
    }

    sRadioPriorityEnabled = (save->flags & RADIO_SAVE_FLAG_PRIORITY) != 0;
    sRadioRepeatEnabled = (save->flags & RADIO_SAVE_FLAG_REPEAT) != 0;
    sRadioShuffleEnabled = (save->flags & RADIO_SAVE_FLAG_SHUFFLE) != 0;
    sRadioIsPlaying = (save->flags & RADIO_SAVE_FLAG_PLAYING) != 0;

    sRadioMainSelection =
        (save->flags & RADIO_SAVE_FLAG_SELECT_RADIO)
            ? RADIO_MAIN_SELECT_STATION
            : RADIO_MAIN_SELECT_SONG;

    sRadioShuffleState = save->shuffleState;
    if (sRadioShuffleState == 0)
        sRadioShuffleState = 0xA5C31F27;

    if ((save->reserved[RADIO_SAVE_RSVD_CONFIG] & RADIO_SAVE_CONFIG_TAG_MASK)
        == RADIO_SAVE_CONFIG_TAG)
    {
        u8 encodedVolume = save->reserved[RADIO_SAVE_RSVD_VOLUME];

        if (encodedVolume >= 1 && encodedVolume <= RADIO_VOLUME_MAX + 1)
            sRadioVolume = encodedVolume - 1;
        else
            sRadioVolume = RADIO_VOLUME_MAX;

        sRadioTransitionFxEnabled =
            (save->reserved[RADIO_SAVE_RSVD_CONFIG]
             & RADIO_SAVE_CONFIG_TRANSITION) != 0;
        sRadioHideCovers =
            (save->reserved[RADIO_SAVE_RSVD_CONFIG]
             & RADIO_SAVE_CONFIG_HIDE_COVERS) != 0;
        sRadioColorTheme =
            (save->reserved[RADIO_SAVE_RSVD_CONFIG] & RADIO_SAVE_CONFIG_THEME_MASK)
            >> RADIO_SAVE_CONFIG_THEME_SHIFT;
        if (sRadioColorTheme >= RADIO_COLOR_THEME_COUNT)
            sRadioColorTheme = RADIO_COLOR_THEME_NORMAL;
    }
    else
    {
        // Existing saves used these two bytes as zero-filled reserved space.
        sRadioVolume = RADIO_VOLUME_MAX;
        sRadioTransitionFxEnabled = TRUE;
        sRadioHideCovers = FALSE;
        sRadioColorTheme = RADIO_COLOR_THEME_NORMAL;
    }

    Radio_LoadStickerState(ext);

    Radio_SavePersistentState();
}

static void Radio_SavePersistentState(void)
{
    struct HLWSaveExtension *ext;
    struct RadioSaveData *save;
    u8 flags = 0;

    Radio_InitSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;
    save = &ext->radio;

    save->magic = RADIO_SAVE_MAGIC;
    save->version = RADIO_SAVE_VERSION;
    save->shuffleState = sRadioShuffleState;
    save->currentSong = sRadioCurrentSong;
    save->station = sRadioStation;
    save->favoritesCount = sRadioFavoritesCount;
    save->playlistCount = sRadioPlaylistCounts[0];

    if (sRadioPriorityEnabled)
        flags |= RADIO_SAVE_FLAG_PRIORITY;
    if (sRadioRepeatEnabled)
        flags |= RADIO_SAVE_FLAG_REPEAT;
    if (sRadioShuffleEnabled)
        flags |= RADIO_SAVE_FLAG_SHUFFLE;
    if (sRadioIsPlaying)
        flags |= RADIO_SAVE_FLAG_PLAYING;
    if (sRadioMainSelection == RADIO_MAIN_SELECT_STATION)
        flags |= RADIO_SAVE_FLAG_SELECT_RADIO;

    save->flags = flags;

    save->reserved[RADIO_SAVE_RSVD_TAG0] = RADIO_PLAYLIST_SAVE_TAG0;
    save->reserved[RADIO_SAVE_RSVD_TAG1] = RADIO_PLAYLIST_SAVE_TAG1;
    save->reserved[RADIO_SAVE_RSVD_PLAYLIST_VERSION] = RADIO_PLAYLIST_SAVE_VERSION;
    save->reserved[RADIO_SAVE_RSVD_ACTIVE_PLAYLIST] = sRadioActivePlaylist;
    save->reserved[RADIO_SAVE_RSVD_PLAYLIST2_COUNT] = sRadioPlaylistCounts[1];
    save->reserved[RADIO_SAVE_RSVD_PLAYLIST3_COUNT] = sRadioPlaylistCounts[2];
    save->reserved[RADIO_SAVE_RSVD_VOLUME] = sRadioVolume + 1;
    save->reserved[RADIO_SAVE_RSVD_CONFIG] =
        RADIO_SAVE_CONFIG_TAG
        | (sRadioTransitionFxEnabled ? RADIO_SAVE_CONFIG_TRANSITION : 0)
        | (sRadioHideCovers ? RADIO_SAVE_CONFIG_HIDE_COVERS : 0)
        | ((sRadioColorTheme << RADIO_SAVE_CONFIG_THEME_SHIFT) & RADIO_SAVE_CONFIG_THEME_MASK);

    Radio_SaveStickerState(ext);

    memset(save->favorites, 0, sizeof(save->favorites));
    memcpy(save->favorites, sRadioFavorites, sizeof(sRadioFavorites));

    // Playlist 1 stays in save->playlist[0..19].
    // Playlist 2 reuses save->playlist[20..31] for its first 12 songs.
    memset(save->playlist, 0, sizeof(save->playlist));
    memcpy(save->playlist, sRadioPlaylists[0], sizeof(sRadioPlaylists[0]));
    memcpy(
        &save->playlist[RADIO_PLAYLIST_CAPACITY],
        sRadioPlaylists[1],
        RADIO_PLAYLIST2_LEGACY_SLOTS * sizeof(u16)
    );

    // Only the last 8 slots of Playlist 2 plus all 20 slots of Playlist 3
    // consume future[]: 16 + 40 = 56 bytes. The remaining 296 bytes stay
    // untouched and reserved for future HLW features.
    memset(ext->future, 0, RADIO_PLAYLIST_FUTURE_BYTES);
    memcpy(
        &ext->future[RADIO_PLAYLIST_FUTURE_OFFSET_2_TAIL],
        &sRadioPlaylists[1][RADIO_PLAYLIST2_LEGACY_SLOTS],
        RADIO_PLAYLIST2_FUTURE_SLOTS * sizeof(u16)
    );
    memcpy(
        &ext->future[RADIO_PLAYLIST_FUTURE_OFFSET_3],
        sRadioPlaylists[2],
        sizeof(sRadioPlaylists[2])
    );
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

static bool8 Radio_AddUnique(u16 *list, u8 *count, u8 capacity, u16 songId)
{
    if (Radio_ListContains(list, *count, songId))
        return FALSE;

    if (*count >= capacity)
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
        return sRadioText_MenuAddPlaylist;
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
    case RADIO_MENU_CONFIG:
        return sRadioText_MenuConfig;
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

static const u8 *Radio_GetConfigItemText(u8 item)
{
    switch (item)
    {
    case RADIO_CONFIG_OUTPUT:
        return gSaveBlock2Ptr->optionsSound
             ? sRadioText_ConfigStereo
             : sRadioText_ConfigMono;

    case RADIO_CONFIG_VOLUME:
        ConvertIntToDecimalStringN(
            gStringVar1,
            sRadioVolume,
            STR_CONV_MODE_LEFT_ALIGN,
            2
        );
        StringExpandPlaceholders(gStringVar4, sRadioText_ConfigVolumeFmt);
        return gStringVar4;

    case RADIO_CONFIG_TRANSITION:
        return sRadioTransitionFxEnabled
             ? sRadioText_ConfigTransitionOn
             : sRadioText_ConfigTransitionOff;

    case RADIO_CONFIG_HIDE_COVERS:
        return sRadioHideCovers
             ? sRadioText_ConfigHideCoversOn
             : sRadioText_ConfigHideCoversOff;

    case RADIO_CONFIG_STICKERS:
        return sRadioText_ConfigStickers;

    case RADIO_CONFIG_COLOR_THEME:
        switch (sRadioColorTheme)
        {
        case RADIO_COLOR_THEME_DARK:
            return sRadioText_ConfigThemeDark;
        case RADIO_COLOR_THEME_PURPLE:
            return sRadioText_ConfigThemePurple;
        case RADIO_COLOR_THEME_PINK:
            return sRadioText_ConfigThemePink;
        default:
            return sRadioText_ConfigThemeNormal;
        }

    default:
        return sRadioText_MenuReturn;
    }
}

static void Radio_DrawSoundConfig(void)
{
    u8 top;
    u8 row;

    sRadioMarqueeEnabled = FALSE;
    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        sRadioText_ConfigTitle,
        2,
        2,
        TEXT_SKIP_DRAW,
        NULL
    );

    if (sRadioConfigCursor == 0)
        top = 0;
    else if (sRadioConfigCursor >= RADIO_CONFIG_ITEM_COUNT - 1)
        top = RADIO_CONFIG_ITEM_COUNT - 2;
    else
        top = sRadioConfigCursor - 1;

    for (row = 0; row < 2; row++)
    {
        u8 item = top + row;
        u8 y = 18 + row * 16;

        if (item >= RADIO_CONFIG_ITEM_COUNT)
            break;

        if (item == sRadioConfigCursor)
        {
            AddTextPrinterParameterized(
                WIN_MUSIC_INFO,
                RADIO_FONT,
                sRadioText_Cursor,
                2,
                y,
                TEXT_SKIP_DRAW,
                NULL
            );
        }

        AddTextPrinterParameterized(
            WIN_MUSIC_INFO,
            RADIO_FONT,
            Radio_GetConfigItemText(item),
            12,
            y,
            TEXT_SKIP_DRAW,
            NULL
        );
    }

    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

static void Radio_RefreshStickerSprites(void)
{
    u8 i;

    for (i = 0; i < RADIO_STICKER_COUNT; i++)
    {
        u8 spriteId = sRadioStickerSpriteIds[i];
        u8 pos = sRadioStickerPositions[i];

        if (spriteId == 0xFF)
            continue;

        if (pos >= RADIO_STICKER_SLOT_COUNT)
            pos = 0;

        gSprites[spriteId].x = sRadioStickerSlotX[pos];
        gSprites[spriteId].y = sRadioStickerSlotY[pos];
        gSprites[spriteId].invisible =
            (sRadioStickerVisibleMask & (1 << i)) == 0;
    }
}

static u8 Radio_FindStickerSlotInDirection(u8 current, s8 dx, s8 dy)
{
    s32 bestScore = 0x7FFFFFFF;
    u8 best = current;
    u8 i;
    s16 x = sRadioStickerSlotX[current];
    s16 y = sRadioStickerSlotY[current];

    for (i = 0; i < RADIO_STICKER_SLOT_COUNT; i++)
    {
        s16 vx;
        s16 vy;
        s32 primary;
        s32 cross;
        s32 score;

        if (i == current)
            continue;

        vx = sRadioStickerSlotX[i] - x;
        vy = sRadioStickerSlotY[i] - y;

        if (dx < 0 && vx >= 0)
            continue;
        if (dx > 0 && vx <= 0)
            continue;
        if (dy < 0 && vy >= 0)
            continue;
        if (dy > 0 && vy <= 0)
            continue;

        // Prefer the requested axis strongly, while still allowing diagonal
        // jumps between the irregular seven-slot layout.
        if (dx != 0)
        {
            primary = (vx < 0) ? -vx : vx;
            cross = (vy < 0) ? -vy : vy;
        }
        else
        {
            primary = (vy < 0) ? -vy : vy;
            cross = (vx < 0) ? -vx : vx;
        }

        score = primary * 4 + cross;
        if (score < bestScore)
        {
            bestScore = score;
            best = i;
        }
    }

    return best;
}

static void Radio_MoveSelectedSticker(s8 dx, s8 dy)
{
    u8 sticker = sRadioStickerSelected;
    u8 current;
    u8 next;

    if (sticker >= RADIO_STICKER_COUNT)
        sticker = 0;

    current = sRadioStickerPositions[sticker];
    if (current >= RADIO_STICKER_SLOT_COUNT)
        current = 0;

    next = Radio_FindStickerSlotInDirection(current, dx, dy);
    sRadioStickerPositions[sticker] = next;

    // Moving a sticker is also an explicit placement action, so reveal it.
    sRadioStickerVisibleMask |= (1 << sticker);

    Radio_RefreshStickerSprites();
    Radio_SavePersistentState();
}

static void Radio_DrawStickerEditor(void)
{
    sRadioMarqueeEnabled = FALSE;
    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO, FONT_SMALL, sRadioText_StickerTitle,
        2, 1, TEXT_SKIP_DRAW, NULL
    );

    ConvertIntToDecimalStringN(
        gStringVar1, sRadioStickerSelected + 1, STR_CONV_MODE_LEFT_ALIGN, 1
    );
    StringExpandPlaceholders(gStringVar4, sRadioText_StickerNumFmt);
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO, FONT_SMALL, gStringVar4,
        2, 12, TEXT_SKIP_DRAW, NULL
    );

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        FONT_SMALL,
        (sRadioStickerVisibleMask & (1 << sRadioStickerSelected))
            ? sRadioText_StickerOn
            : sRadioText_StickerOff,
        86,
        12,
        TEXT_SKIP_DRAW,
        NULL
    );

    ConvertIntToDecimalStringN(
        gStringVar1,
        sRadioStickerPositions[sRadioStickerSelected] + 1,
        STR_CONV_MODE_LEFT_ALIGN,
        1
    );
    StringExpandPlaceholders(gStringVar4, sRadioText_StickerPosFmt);
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO, FONT_SMALL, gStringVar4,
        2, 23, TEXT_SKIP_DRAW, NULL
    );

    AddTextPrinterParameterized(
        WIN_MUSIC_INFO, FONT_SMALL, sRadioText_StickerHelp,
        2, 35, TEXT_SKIP_DRAW, NULL
    );

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

static void Radio_DrawPlaylistChooser(void)
{
    const u8 *header;
    u8 playlist;

    sRadioMarqueeEnabled = FALSE;
    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    header = (sRadioPlaylistChooserAction == RADIO_PLAYLIST_CHOOSE_ADD)
           ? sRadioText_AddToPlaylistHead
           : sRadioText_PlaylistsHead;

    // FONT_SMALL lets all three fixed playlists fit in this single 6-tile
    // window at once:
    //
    // MY PLAYLISTS
    // > PLAYLIST 1  12/20
    //   PLAYLIST 2  18/20
    //   PLAYLIST 3   7/20
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        FONT_SMALL,
        header,
        2,
        1,
        TEXT_SKIP_DRAW,
        NULL
    );

    for (playlist = 0; playlist < RADIO_PLAYLIST_COUNT; playlist++)
    {
        u8 y = 13 + playlist * 11;

        if (playlist == sRadioPlaylistChooserCursor)
        {
            AddTextPrinterParameterized(
                WIN_MUSIC_INFO,
                FONT_SMALL,
                sRadioText_Cursor,
                2,
                y,
                TEXT_SKIP_DRAW,
                NULL
            );
        }

        ConvertIntToDecimalStringN(
            gStringVar1,
            playlist + 1,
            STR_CONV_MODE_LEFT_ALIGN,
            1
        );
        ConvertIntToDecimalStringN(
            gStringVar2,
            sRadioPlaylistCounts[playlist],
            STR_CONV_MODE_LEFT_ALIGN,
            2
        );
        StringExpandPlaceholders(gStringVar4, sRadioText_PlaylistSlotFmt);

        AddTextPrinterParameterized(
            WIN_MUSIC_INFO,
            FONT_SMALL,
            gStringVar4,
            10,
            y,
            TEXT_SKIP_DRAW,
            NULL
        );
    }

    CopyWindowToVram(WIN_MUSIC_INFO, COPYWIN_FULL);
}

static void Radio_OpenPlaylistChooser(u8 action, u8 returnMode, u16 songId)
{
    sRadioPlaylistChooserAction = action;
    sRadioPlaylistChooserReturnMode = returnMode;
    sRadioPlaylistAddSong = songId;
    sRadioPlaylistChooserCursor = sRadioActivePlaylist;
    sRadioUiMode = RADIO_UI_PLAYLIST_CHOOSER;
    Radio_DrawPlaylistChooser();
}

static void Radio_ReturnFromPlaylistChooser(u16 songId)
{
    sRadioUiMode = sRadioPlaylistChooserReturnMode;

    if (sRadioUiMode == RADIO_UI_SEARCH_RESULTS)
    {
        Radio_DrawTrackList(
            sRadioText_SearchResults,
            sRadioSearchResults,
            sRadioSearchResultCount
        );
    }
    else
    {
        sRadioUiMode = RADIO_UI_MENU;
        Radio_DrawMenu(songId);
    }
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
        Radio_StartSongWithSettings(songId);
    }

    sRadioStation = station;
    sRadioStationIndex = index;
    sRadioCurrentSong = songId;
    gTasks[taskId].data[0] = (s16)songId;

    Radio_SavePersistentState();
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
        u16 *playlist = sRadioPlaylists[sRadioActivePlaylist];
        u8 count = sRadioPlaylistCounts[sRadioActivePlaylist];

        if (Radio_ListContains(playlist, count, currentSong))
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
                Radio_OpenPlaylistChooser(
                    RADIO_PLAYLIST_CHOOSE_OPEN,
                    RADIO_UI_MENU,
                    songId
                );
                break;

            case RADIO_MENU_TOGGLE_FAVORITE:
                if (Radio_ListContains(sRadioFavorites, sRadioFavoritesCount, songId))
                    Radio_RemoveFromList(sRadioFavorites, &sRadioFavoritesCount, songId);
                else
                    Radio_AddUnique(
                        sRadioFavorites,
                        &sRadioFavoritesCount,
                        RADIO_LIBRARY_CAPACITY,
                        songId
                    );

                Radio_FixDynamicStationAfterRemoval(songId);
                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_ADD_PLAYLIST:
                Radio_OpenPlaylistChooser(
                    RADIO_PLAYLIST_CHOOSE_ADD,
                    RADIO_UI_MENU,
                    songId
                );
                break;

            case RADIO_MENU_PRIORITY:
                sRadioPriorityEnabled = !sRadioPriorityEnabled;

                if (sRadioPriorityEnabled && playing)
                    Radio_QueueNowPlayingPopup(songId);
                else if (!sRadioPriorityEnabled)
                    Radio_ClearNowPlayingPopupQueue();

                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_REPEAT:
                sRadioRepeatEnabled = !sRadioRepeatEnabled;
                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_SHUFFLE:
                sRadioShuffleEnabled = !sRadioShuffleEnabled;
                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                break;

            case RADIO_MENU_CONFIG:
                sRadioUiMode = RADIO_UI_SOUND_CONFIG;
                sRadioConfigCursor = 0;
                Radio_DrawSoundConfig();
                break;

            default:
                Radio_ReturnToMain(taskId);
                break;
            }

            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_SOUND_CONFIG)
    {
        if (JOY_NEW(DPAD_UP))
        {
            sRadioConfigCursor = (sRadioConfigCursor > 0)
                               ? sRadioConfigCursor - 1
                               : RADIO_CONFIG_ITEM_COUNT - 1;
            PlaySE(SE_SELECT);
            Radio_DrawSoundConfig();
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            sRadioConfigCursor =
                (sRadioConfigCursor + 1) % RADIO_CONFIG_ITEM_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawSoundConfig();
            return;
        }

        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);
            sRadioUiMode = RADIO_UI_MENU;
            Radio_DrawMenu(songId);
            return;
        }

        if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_RIGHT) || JOY_NEW(A_BUTTON))
        {
            s8 direction = JOY_NEW(DPAD_LEFT) ? -1 : 1;

            PlaySE(SE_SELECT);

            switch (sRadioConfigCursor)
            {
            case RADIO_CONFIG_OUTPUT:
                Radio_SetStereoOutput(!gSaveBlock2Ptr->optionsSound);
                break;

            case RADIO_CONFIG_VOLUME:
                if (direction < 0)
                {
                    if (sRadioVolume > 0)
                        sRadioVolume--;
                }
                else
                {
                    if (sRadioVolume < RADIO_VOLUME_MAX)
                        sRadioVolume++;
                }

                Radio_ApplyRadioVolume();
                Radio_SavePersistentState();
                break;

            case RADIO_CONFIG_TRANSITION:
                sRadioTransitionFxEnabled = !sRadioTransitionFxEnabled;
                Radio_SavePersistentState();
                break;

            case RADIO_CONFIG_HIDE_COVERS:
                sRadioHideCovers = !sRadioHideCovers;
                Radio_RefreshAlbumCover();
                Radio_SavePersistentState();
                break;

            case RADIO_CONFIG_STICKERS:
                sRadioUiMode = RADIO_UI_STICKER_EDITOR;
                sRadioStickerSelected = 0;
                Radio_DrawStickerEditor();
                return;

            case RADIO_CONFIG_COLOR_THEME:
                if (direction < 0)
                    sRadioColorTheme = (sRadioColorTheme > 0)
                                     ? sRadioColorTheme - 1
                                     : RADIO_COLOR_THEME_COUNT - 1;
                else
                    sRadioColorTheme = (sRadioColorTheme + 1) % RADIO_COLOR_THEME_COUNT;

                Radio_ApplyBgColorTheme();
                Radio_SavePersistentState();
                break;

            default:
                sRadioUiMode = RADIO_UI_MENU;
                Radio_DrawMenu(songId);
                return;
            }

            Radio_DrawSoundConfig();
            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_STICKER_EDITOR)
    {
        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);
            sRadioUiMode = RADIO_UI_SOUND_CONFIG;
            Radio_DrawSoundConfig();
            return;
        }

        if (JOY_NEW(L_BUTTON))
        {
            sRadioStickerSelected =
                (sRadioStickerSelected > 0)
                    ? sRadioStickerSelected - 1
                    : RADIO_STICKER_COUNT - 1;
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
            return;
        }

        if (JOY_NEW(R_BUTTON))
        {
            sRadioStickerSelected =
                (sRadioStickerSelected + 1) % RADIO_STICKER_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
            return;
        }

        if (JOY_NEW(A_BUTTON))
        {
            sRadioStickerVisibleMask ^= (1 << sRadioStickerSelected);
            Radio_RefreshStickerSprites();
            Radio_SavePersistentState();
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
            return;
        }

        if (JOY_NEW(DPAD_LEFT))
        {
            Radio_MoveSelectedSticker(-1, 0);
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
            return;
        }

        if (JOY_NEW(DPAD_RIGHT))
        {
            Radio_MoveSelectedSticker(1, 0);
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
            return;
        }

        if (JOY_NEW(DPAD_UP))
        {
            Radio_MoveSelectedSticker(0, -1);
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            Radio_MoveSelectedSticker(0, 1);
            PlaySE(SE_SELECT);
            Radio_DrawStickerEditor();
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
            Radio_OpenPlaylistChooser(
                RADIO_PLAYLIST_CHOOSE_ADD,
                RADIO_UI_SEARCH_RESULTS,
                sRadioSearchResults[sRadioListCursor]
            );
            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_PLAYLIST_CHOOSER)
    {
        if (JOY_NEW(DPAD_UP))
        {
            sRadioPlaylistChooserCursor =
                (sRadioPlaylistChooserCursor > 0)
                    ? sRadioPlaylistChooserCursor - 1
                    : RADIO_PLAYLIST_COUNT - 1;
            PlaySE(SE_SELECT);
            Radio_DrawPlaylistChooser();
            return;
        }

        if (JOY_NEW(DPAD_DOWN))
        {
            sRadioPlaylistChooserCursor =
                (sRadioPlaylistChooserCursor + 1) % RADIO_PLAYLIST_COUNT;
            PlaySE(SE_SELECT);
            Radio_DrawPlaylistChooser();
            return;
        }

        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);
            Radio_ReturnFromPlaylistChooser(songId);
            return;
        }

        if (JOY_NEW(A_BUTTON))
        {
            PlaySE(SE_SELECT);

            if (sRadioPlaylistChooserAction == RADIO_PLAYLIST_CHOOSE_ADD)
            {
                u8 playlist = sRadioPlaylistChooserCursor;

                Radio_AddUnique(
                    sRadioPlaylists[playlist],
                    &sRadioPlaylistCounts[playlist],
                    RADIO_PLAYLIST_CAPACITY,
                    sRadioPlaylistAddSong
                );
                Radio_SavePersistentState();
                Radio_ReturnFromPlaylistChooser(songId);
            }
            else
            {
                sRadioBrowsePlaylist = sRadioPlaylistChooserCursor;
                sRadioListCursor = 0;
                sRadioUiMode = RADIO_UI_PLAYLIST;
                Radio_DrawTrackList(
                    sRadioText_PlaylistHeads[sRadioBrowsePlaylist],
                    sRadioPlaylists[sRadioBrowsePlaylist],
                    sRadioPlaylistCounts[sRadioBrowsePlaylist]
                );
            }

            return;
        }

        return;
    }

    if (sRadioUiMode == RADIO_UI_FAVORITES || sRadioUiMode == RADIO_UI_PLAYLIST)
    {
        bool8 isFavorites = (sRadioUiMode == RADIO_UI_FAVORITES);
        u16 *list = isFavorites
                  ? sRadioFavorites
                  : sRadioPlaylists[sRadioBrowsePlaylist];
        u8 *count = isFavorites
                  ? &sRadioFavoritesCount
                  : &sRadioPlaylistCounts[sRadioBrowsePlaylist];
        const u8 *header = isFavorites
                         ? sRadioText_FavoritesHead
                         : sRadioText_PlaylistHeads[sRadioBrowsePlaylist];
        u8 station = isFavorites
                   ? STATION_FAVORITES
                   : STATION_PLAYLIST;

        if (JOY_NEW(B_BUTTON) || JOY_NEW(START_BUTTON))
        {
            PlaySE(SE_SELECT);

            if (isFavorites)
            {
                sRadioUiMode = RADIO_UI_MENU;
                Radio_DrawMenu(songId);
            }
            else
            {
                sRadioPlaylistChooserAction = RADIO_PLAYLIST_CHOOSE_OPEN;
                sRadioPlaylistChooserReturnMode = RADIO_UI_MENU;
                sRadioPlaylistChooserCursor = sRadioBrowsePlaylist;
                sRadioUiMode = RADIO_UI_PLAYLIST_CHOOSER;
                Radio_DrawPlaylistChooser();
            }

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

            if (!isFavorites)
                sRadioActivePlaylist = sRadioBrowsePlaylist;

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
            Radio_SavePersistentState();
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

static bool8 Radio_UpdateStatusMarquee(void)
{
    u16 cycleLength;

    if (!sRadioStatusMarqueeEnabled || sRadioStatusMarqueeLength == 0)
        return FALSE;

    sRadioStatusMarqueeTimer++;
    if (sRadioStatusMarqueeTimer < RADIO_STATUS_MARQUEE_DELAY_FRAMES)
        return FALSE;

    sRadioStatusMarqueeTimer = 0;
    cycleLength = sRadioStatusMarqueeLength + RADIO_STATUS_MARQUEE_GAP_CHARS;

    sRadioStatusMarqueeOffset++;
    if (sRadioStatusMarqueeOffset >= cycleLength)
        sRadioStatusMarqueeOffset = 0;

    // Update only the RAM window buffer here.  Do NOT queue a VRAM copy yet.
    // The song ticker shares WIN_MUSIC_INFO and normally advances on the same
    // frame.  Queuing two COPYWIN_FULL transfers for the same window in one
    // frame can expose an intermediate/partial title for a frame.
    FillWindowPixelRect(
        WIN_MUSIC_INFO,
        PIXEL_FILL(1),
        112,
        0,
        112,
        16
    );

    Radio_PrintStatusMarquee();
    return TRUE;
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

static void Radio_PrintSongMarqueeText(void)
{
    u8 visibleText[RADIO_MARQUEE_VISIBLE_CHARS + 1];

    Radio_BuildMarqueeSlice(visibleText, sizeof(visibleText));
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        visibleText,
        RADIO_MARQUEE_TEXT_X,
        RADIO_MARQUEE_TEXT_Y,
        TEXT_SKIP_DRAW,
        NULL
    );
}

static void Radio_PrintSongMarquee(void)
{
    AddTextPrinterParameterized(
        WIN_MUSIC_INFO,
        RADIO_FONT,
        sRadioMainSelection == RADIO_MAIN_SELECT_SONG
            ? sRadioText_SongPrefixSelected
            : sRadioText_SongPrefix,
        2,
        RADIO_MARQUEE_TEXT_Y,
        TEXT_SKIP_DRAW,
        NULL
    );
    Radio_PrintSongMarqueeText();
}

static void Radio_UpdateMarquee(void)
{
    u16 cycleLength;
    bool8 windowChanged;

    if (sRadioUiMode != RADIO_UI_MAIN)
        return;

    // Both tickers live in WIN_MUSIC_INFO.  Build every change in the RAM
    // window first, then perform exactly ONE VRAM transfer at the end.
    windowChanged = Radio_UpdateStatusMarquee();

    if (sRadioMarqueeEnabled && sRadioMarqueeLength != 0)
    {
        sRadioMarqueeTimer++;

        if (sRadioMarqueeTimer >= RADIO_MARQUEE_DELAY_FRAMES)
        {
            sRadioMarqueeTimer = 0;

            cycleLength = sRadioMarqueeLength + RADIO_MARQUEE_GAP_CHARS;
            sRadioMarqueeOffset++;

            if (sRadioMarqueeOffset >= cycleLength)
                sRadioMarqueeOffset = 0;

            // The label stays drawn. Only replace the title pixels in the RAM
            // buffer; the single copy below makes the new frame visible whole.
            FillWindowPixelRect(
                WIN_MUSIC_INFO,
                PIXEL_FILL(1),
                RADIO_MARQUEE_TEXT_X,
                16,
                RADIO_MARQUEE_TEXT_WIDTH,
                16
            );

            Radio_PrintSongMarqueeText();
            windowChanged = TRUE;
        }
    }

    if (windowChanged)
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
        Radio_SetStatusMarqueeText(Radio_GetStationNowPlayingName(sRadioStation));
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
    // Anime / Pop / Indie / Games tracks get their friendly radio labels. Favorites and
    // Playlist keep those labels when they contain one of these songs.
    if (sRadioStation == STATION_ANIME
        || sRadioStation == STATION_POP
        || sRadioStation == STATION_POKEMON_GBA
        || sRadioStation == STATION_INDIE_ROCK
        || sRadioStation == STATION_GAMES
        || sRadioStation == STATION_ROCK_METAL
        || sRadioStation == STATION_CLASSIC_ROCK
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
    StringCopy(gStringVar1, Radio_GetStationDisplayName(sRadioStation));
    StringExpandPlaceholders(
        gStringVar4,
        sRadioMainSelection == RADIO_MAIN_SELECT_STATION
            ? sRadioText_StationFmtSelected
            : sRadioText_StationFmt
    );
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
        u8 cycleSlot = Radio_GetStationCycleSlot();

        PlaySE(SE_SELECT);
        Radio_PressButton(sRadioBtnSelectId);

        do
        {
            cycleSlot = (cycleSlot + 1) % RADIO_STATION_CYCLE_COUNT;
            Radio_SetStationCycleSlot(cycleSlot);
            attempts++;
        }
        while (Station_Count(sRadioStation) == 0
            && attempts < RADIO_STATION_CYCLE_COUNT);

        sRadioStationIndex = Station_FindTrack(sRadioStation, songId);
        Radio_SyncSong();
        songId = sRadioCurrentSong;

        if (playing)
        {
            m4aSongNumStop(gTasks[taskId].tCurrSong);
            Radio_StartSongWithSettings(songId);
        }

        gTasks[taskId].tCurrSong = (s16)songId;
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;
        Radio_SavePersistentState();

        if (sRadioPriorityEnabled && playing)
            Radio_QueueNowPlayingPopup(songId);

        Radio_DrawMusicInfo(songId, playing);
        return;
    }

    // ------------------------------------------------------------------
    // Main display navigation
    //
    // UP / DOWN = choose Song or Radio Station.
    // DPAD LEFT / RIGHT = change the selected row.
    // Shoulder L / R = previous / next song.
    // ------------------------------------------------------------------
    if (JOY_NEW(DPAD_UP) || JOY_NEW(DPAD_DOWN))
    {
        sRadioMainSelection =
            (sRadioMainSelection == RADIO_MAIN_SELECT_SONG)
                ? RADIO_MAIN_SELECT_STATION
                : RADIO_MAIN_SELECT_SONG;

        PlaySE(SE_SELECT);
        Radio_SavePersistentState();
        Radio_DrawMusicInfo(songId, playing);
        return;
    }

    if (sRadioMainSelection == RADIO_MAIN_SELECT_STATION
     && (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_RIGHT)))
    {
        u8 attempts = 0;
        u8 cycleSlot = Radio_GetStationCycleSlot();

        PlaySE(SE_SELECT);

        do
        {
            if (JOY_NEW(DPAD_RIGHT))
                cycleSlot = (cycleSlot + 1) % RADIO_STATION_CYCLE_COUNT;
            else
                cycleSlot = (cycleSlot > 0)
                          ? cycleSlot - 1
                          : RADIO_STATION_CYCLE_COUNT - 1;

            Radio_SetStationCycleSlot(cycleSlot);
            attempts++;
        }
        while (Station_Count(sRadioStation) == 0
            && attempts < RADIO_STATION_CYCLE_COUNT);

        sRadioStationIndex = Station_FindTrack(sRadioStation, songId);
        Radio_SyncSong();
        songId = sRadioCurrentSong;

        if (playing)
        {
            m4aSongNumStop((u16)gTasks[taskId].tCurrSong);
            Radio_StartSongWithSettings(songId);
            Radio_ResetPlaybackMonitor();
        }

        gTasks[taskId].tCurrSong = (s16)songId;
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;

        Radio_SavePersistentState();

        if (sRadioPriorityEnabled && playing)
            Radio_QueueNowPlayingPopup(songId);

        Radio_DrawMusicInfo(songId, playing);
        return;
    }

    if ((sRadioMainSelection == RADIO_MAIN_SELECT_SONG && JOY_NEW(DPAD_RIGHT))
     || JOY_NEW(R_BUTTON))
    {
        u16 count = Station_Count(sRadioStation);

        sRadioStationIndex = (sRadioStationIndex + 1 < count)
                           ? sRadioStationIndex + 1
                           : 0;

        Radio_SyncSong();
        songId = sRadioCurrentSong;
        changed = TRUE;
        Radio_PressButton(sRadioBtnNextId);
    }
    else if ((sRadioMainSelection == RADIO_MAIN_SELECT_SONG && JOY_NEW(DPAD_LEFT))
          || JOY_NEW(L_BUTTON))
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

    if (JOY_RELEASED(R_BUTTON)
     || (sRadioMainSelection == RADIO_MAIN_SELECT_SONG
         && JOY_RELEASED(DPAD_RIGHT)))
    {
        Radio_ReleaseButton(sRadioBtnNextId);
    }

    if (JOY_RELEASED(L_BUTTON)
     || (sRadioMainSelection == RADIO_MAIN_SELECT_SONG
         && JOY_RELEASED(DPAD_LEFT)))
    {
        Radio_ReleaseButton(sRadioBtnBackId);
    }

    if (changed)
    {
        PlaySE(SE_SELECT);

        if (playing)
        {
            m4aSongNumStop((u16)gTasks[taskId].tCurrSong);
            Radio_StartSongWithSettings(songId);
            Radio_ResetPlaybackMonitor();
        }

        gTasks[taskId].tCurrSong = (s16)songId;
        sRadioCurrentSong = songId;
        sRadioIsPlaying = playing;

        Radio_SavePersistentState();

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
            Radio_StartSongWithSettings(songId);
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

        Radio_SavePersistentState();
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
        Radio_SavePersistentState();
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
#define RADIO_JIG_X      102
#define RADIO_JIG_Y       56
#define RADIO_STEREO1_X  179
#define RADIO_STEREO1_Y   29
#define RADIO_STEREO2_X  216
#define RADIO_STEREO2_Y   66


static u8 Radio_GetAlbumCoverForSong(u16 songId)
{
    switch (songId)
    {
    case MUS_KRYPTONITE:
        return RADIO_COVER_3DOORSDOWN;
    case MUS_MY_OWN_SUMMER:
    case MUS_BE_QUIET_AND_DRIVE:
    case MUS_AROUND_THE_FUR:
        return RADIO_COVER_AROUND_THE_FUR;
    case MUS_3S_AND_7S:
        return RADIO_COVER_ERA_VULGARIS;
    case MUS_IN_THE_END:
        return RADIO_COVER_HYBRID_THEORY;
    case MUS_ROSEMARY_DEFTONES:
        return RADIO_COVER_KOI_NO_YOKAN;
    case MUS_MY_GOD_IS_THE_SUN:
        return RADIO_COVER_LIKE_CLOCKWORK;
    case MUS_FAINT:
    case MUS_EASIER_TO_RUN:
    case MUS_BREAKING_THE_HABIT:
        return RADIO_COVER_METEORA;
    case MUS_ANIMAL_I_HAVE_BECOME:
        return RADIO_COVER_ONE_X;
    case MUS_GO_WITH_THE_FLOW:
        return RADIO_COVER_SONGS_FOR_THE_DEAF;
    case MUS_CHANGE_IN_THE_HOUSE_OF_FLIES:
        return RADIO_COVER_WHITE_PONY;
    case MUS_I_WILL:
        return RADIO_COVER_HAIL_TO_THE_THIEF;
    case MUS_YOU_AND_WHOSE_ARMY:
        return RADIO_COVER_AMNESIAC;
    case MUS_MOTION_PICTURE_SOUNDTRACK:
    case MUS_EVERYTHING_IN_ITS_RIGHT_PLACE:
        return RADIO_COVER_KID_A;
    case MUS_NO_SURPRISES:
    case MUS_LUCKY:
        return RADIO_COVER_OK_COMPUTER;
    case MUS_HIGH_AND_DRY:
    case MUS_STREET_SPIRIT:
        return RADIO_COVER_THE_BENDS;
    case MUS_BIGMOUTH_STRIKES_AGAIN:
    case MUS_BOY_WITH_THE_THORN:
        return RADIO_COVER_THE_QUEEN_IS_DEAD;
    case MUS_SOMEDAY:
    case MUS_HARD_TO_EXPLAIN:
        return RADIO_COVER_IS_THIS_IT;
    case MUS_REPTILIA:
        return RADIO_COVER_ROOM_ON_FIRE;
    case MUS_ARABELLA:
    case MUS_DO_I_WANNA_KNOW:
    case MUS_NO_1_PARTY_ANTHEM:
        return RADIO_COVER_AM;
    case MUS_FADE_INTO_YOU:
        return RADIO_COVER_TONIGHT_THAT_I_MIGHT_SEE;
    case MUS_WHEN_THE_SUN_HITS:
        return RADIO_COVER_SOUVLAKI;
    case MUS_AINT_NO_REST_FOR_THE_WICKED:
        return RADIO_COVER_AINT_NO_REST_FOR_THE_WICKED;
    case MUS_FREAKING_OUT_THE_NEIGHBORHOOD:
        return RADIO_COVER_FREAKING_OUT_THE_NEIGHBORHOOD;
    case MUS_DRACULA_TAME_IMPALA:
        return RADIO_COVER_DRACULA;
    case MUS_LOVESONG_THE_CURE:
        return RADIO_COVER_DISINTEGRATION;
    case MUS_FRIDAY_IM_IN_LOVE:
        return RADIO_COVER_WISH;
    case MUS_BOYS_DONT_CRY:
        return RADIO_COVER_THREE_IMAGINARY_BOYS;
    case MUS_ROSE_PARADE:
        return RADIO_COVER_EITHER_OR;
    case MUS_SHADOWPLAY:
    case MUS_NEW_DAWN_FADES:
    case MUS_DISORDER:
    case MUS_LOVE_WILL_TEAR_US_APART: // Temporary placeholder: no dedicated cover yet.
        return RADIO_COVER_UNKNOWN_PLEASURES;
    case MUS_A_HARD_RAINS_A_GONNA_FALL:
    case MUS_BLOWIN_IN_THE_WIND:
        return RADIO_COVER_FREEWHEELIN;
    case MUS_LIKE_A_ROLLING_STONE:
        return RADIO_COVER_HIGHWAY_61_REVISITED;
    case MUS_MR_TAMBOURINE_MAN:
        return RADIO_COVER_BRINGING_IT_ALL_BACK_HOME;
    case MUS_KNOCKIN_ON_HEAVENS_DOOR:
        return RADIO_COVER_PAT_GARRETT_AND_BILLY_THE_KID;
    case MUS_FOXY_LADY:
        return RADIO_COVER_ARE_YOU_EXPERIENCED;
    case MUS_ANOTHER_BRICK_IN_THE_WALL:
    case MUS_COMFORTABLY_NUMB:
        return RADIO_COVER_THE_WALL;
    case MUS_SHINE_ON_YOU_CRAZY_DIAMOND:
        return RADIO_COVER_WISH_YOU_WERE_HERE;
    case MUS_THE_GREAT_GIG_IN_THE_SKY:
    case MUS_TIME:
        return RADIO_COVER_DARK_SIDE_OF_THE_MOON;
    case MUS_HIGH_HOPES:
        return RADIO_COVER_DIVISION_BELL;
    default:
        return RADIO_COVER_NONE;
    }
}

static void Radio_DestroyAlbumCoverSprite(void)
{
    if (sRadioCoverSpriteId < MAX_SPRITES)
    {
        DestroySprite(&gSprites[sRadioCoverSpriteId]);
        sRadioCoverSpriteId = 0xFF;
    }

    FreeSpriteTilesByTag(TAG_RADIO_COVER);
    FreeSpritePaletteByTag(TAG_RADIO_COVER);
}

static u8 Radio_GetVisibleArtSpriteId(void)
{
    if (sRadioCurrentCoverId != RADIO_COVER_NONE
     && sRadioCoverSpriteId < MAX_SPRITES)
    {
        return sRadioCoverSpriteId;
    }

    if (sRadioJigSpriteId < MAX_SPRITES)
        return sRadioJigSpriteId;

    return 0xFF;
}

static void Radio_BlendVisibleArt(u8 coeff)
{
    u8 spriteId = Radio_GetVisibleArtSpriteId();

    if (spriteId < MAX_SPRITES)
    {
        u8 objPalette = gSprites[spriteId].oam.paletteNum;
        u32 selectedPalettes;

        if (coeff > 16)
            coeff = 16;

        // BlendPalettes(selectedPalettes, coeff, color)
        // OBJ palette 0..15 corresponds to bits 16..31.
        selectedPalettes = 1u << (16 + objPalette);
        BlendPalettes(selectedPalettes, coeff, RGB_WHITE);
    }
}

static void Radio_SetAlbumCoverImmediate(u8 coverId)
{
    if (sRadioCoverSpriteId < MAX_SPRITES)
        Radio_DestroyAlbumCoverSprite();

    sRadioCurrentCoverId = coverId;

    if (coverId == RADIO_COVER_NONE)
    {
        if (sRadioJigSpriteId < MAX_SPRITES)
            gSprites[sRadioJigSpriteId].invisible = FALSE;
        return;
    }

    if (sRadioJigSpriteId < MAX_SPRITES)
        gSprites[sRadioJigSpriteId].invisible = TRUE;

    LoadCompressedSpriteSheet(&sRadioCoverSheets[coverId]);
    LoadSpritePalette(&sRadioCoverPalettes[coverId]);

    // The cover and Jigglypuff intentionally share the exact same center.
    sRadioCoverSpriteId = CreateSprite(
        &sSpriteTemplate_RadioCover,
        RADIO_JIG_X,
        RADIO_JIG_Y,
        0
    );

    if (sRadioCoverSpriteId >= MAX_SPRITES)
    {
        sRadioCoverSpriteId = 0xFF;
        sRadioCurrentCoverId = RADIO_COVER_NONE;
        FreeSpriteTilesByTag(TAG_RADIO_COVER);
        FreeSpritePaletteByTag(TAG_RADIO_COVER);

        if (sRadioJigSpriteId < MAX_SPRITES)
            gSprites[sRadioJigSpriteId].invisible = FALSE;
    }
}

// Apply the art preference immediately. This is used by the config toggle so
// Jigglypuff never has to wait for a cover transition already in progress.
static void Radio_RefreshAlbumCover(void)
{
    u8 coverId = sRadioHideCovers
               ? RADIO_COVER_NONE
               : Radio_GetAlbumCoverForSong(sRadioCurrentSong);

    sRadioArtTransitionState = RADIO_ART_TRANS_IDLE;
    sRadioArtTransitionTimer = 0;
    sRadioNextCoverId = coverId;
    Radio_SetAlbumCoverImmediate(coverId);
    Radio_BlendVisibleArt(0);
}

static void Radio_UpdateAlbumCover(void)
{
    u8 coverId;

    if (sRadioJigSpriteId >= MAX_SPRITES)
        return;

    coverId = sRadioHideCovers
            ? RADIO_COVER_NONE
            : Radio_GetAlbumCoverForSong(sRadioCurrentSong);

    // During a transition, remember the latest request. Fast song skipping
    // therefore converges to the newest album instead of flashing old covers.
    if (sRadioArtTransitionState != RADIO_ART_TRANS_IDLE)
    {
        sRadioNextCoverId = coverId;
        return;
    }

    if (coverId == sRadioCurrentCoverId)
        return;

    if (!sRadioTransitionFxEnabled)
    {
        Radio_SetAlbumCoverImmediate(coverId);
        Radio_BlendVisibleArt(0);
        return;
    }

    // Do not fight the screen's global fade-in/fade-out.
    if (gPaletteFade.active)
        return;

    sRadioNextCoverId = coverId;
    sRadioArtTransitionTimer = 0;
    sRadioArtTransitionState = RADIO_ART_TRANS_GLOW_OUT;
}

static void Radio_UpdateAlbumCoverTransition(void)
{
    u8 coeff;

    if (sRadioArtTransitionState == RADIO_ART_TRANS_IDLE)
        return;

    if (gPaletteFade.active)
        return;

    switch (sRadioArtTransitionState)
    {
    case RADIO_ART_TRANS_GLOW_OUT:
        if (sRadioArtTransitionTimer < RADIO_ART_GLOW_FRAMES)
            sRadioArtTransitionTimer++;

        coeff = (u8)(
            (sRadioArtTransitionTimer * RADIO_ART_GLOW_MAX)
            / RADIO_ART_GLOW_FRAMES
        );
        Radio_BlendVisibleArt(coeff);

        if (sRadioArtTransitionTimer >= RADIO_ART_GLOW_FRAMES)
        {
            Radio_SetAlbumCoverImmediate(sRadioNextCoverId);
            Radio_BlendVisibleArt(RADIO_ART_GLOW_MAX);
            sRadioArtTransitionTimer = RADIO_ART_GLOW_FRAMES;
            sRadioArtTransitionState = RADIO_ART_TRANS_GLOW_IN;
        }
        break;

    case RADIO_ART_TRANS_GLOW_IN:
        if (sRadioArtTransitionTimer > 0)
            sRadioArtTransitionTimer--;

        coeff = (u8)(
            (sRadioArtTransitionTimer * RADIO_ART_GLOW_MAX)
            / RADIO_ART_GLOW_FRAMES
        );
        Radio_BlendVisibleArt(coeff);

        if (sRadioArtTransitionTimer == 0)
        {
            Radio_BlendVisibleArt(0);
            sRadioArtTransitionState = RADIO_ART_TRANS_IDLE;
        }
        break;
    }
}

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

    // --- User stickers (five independent 32x32 sprites) ---
    LoadCompressedSpriteSheet(sSpriteSheet_RadioSticker1);
    LoadSpritePalettes(sSpritePalette_RadioSticker1);
    LoadCompressedSpriteSheet(sSpriteSheet_RadioSticker2);
    LoadSpritePalettes(sSpritePalette_RadioSticker2);
    LoadCompressedSpriteSheet(sSpriteSheet_RadioSticker3);
    LoadSpritePalettes(sSpritePalette_RadioSticker3);
    LoadCompressedSpriteSheet(sSpriteSheet_RadioSticker4);
    LoadSpritePalettes(sSpritePalette_RadioSticker4);
    LoadCompressedSpriteSheet(sSpriteSheet_RadioSticker5);
    LoadSpritePalettes(sSpritePalette_RadioSticker5);

    sRadioStickerSpriteIds[0] = CreateSprite(
        &sSpriteTemplate_RadioSticker1, sRadioStickerSlotX[0], sRadioStickerSlotY[0], 2);
    sRadioStickerSpriteIds[1] = CreateSprite(
        &sSpriteTemplate_RadioSticker2, sRadioStickerSlotX[1], sRadioStickerSlotY[1], 2);
    sRadioStickerSpriteIds[2] = CreateSprite(
        &sSpriteTemplate_RadioSticker3, sRadioStickerSlotX[2], sRadioStickerSlotY[2], 2);
    sRadioStickerSpriteIds[3] = CreateSprite(
        &sSpriteTemplate_RadioSticker4, sRadioStickerSlotX[3], sRadioStickerSlotY[3], 2);
    sRadioStickerSpriteIds[4] = CreateSprite(
        &sSpriteTemplate_RadioSticker5, sRadioStickerSlotX[4], sRadioStickerSlotY[4], 2);

    Radio_RefreshStickerSprites();

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
    Radio_UpdateAlbumCover();
    Radio_UpdateAlbumCoverTransition();
    Radio_ApplyMonoPanIfNeeded();
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
        Radio_ApplyBgColorTheme();
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
                Radio_StartSongWithSettings(sRadioCurrentSong);
                Radio_ResetPlaybackMonitor();
            }
            else if (gMPlayInfo_BGM.status & MUSICPLAYER_STATUS_PAUSE)
            {
                m4aMPlayContinue(&gMPlayInfo_BGM);
            }

            Radio_ApplyAudioSettings();
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

    Radio_LoadPersistentState();

    if (sRadioMonitorSong != sRadioCurrentSong)
        Radio_ResetPlaybackMonitor();

    // Menu always starts at the most important option: Radio Priority.
    sRadioUiMode = RADIO_UI_MAIN;
    sRadioMenuCursor = RADIO_MENU_PRIORITY;
    sRadioConfigCursor = 0;
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
    {
        u8 i;
        for (i = 0; i < RADIO_STICKER_COUNT; i++)
            sRadioStickerSpriteIds[i] = 0xFF;
    }
    sRadioCoverSpriteId = 0xFF;
    sRadioCurrentCoverId = RADIO_COVER_NONE;
    sRadioNextCoverId = RADIO_COVER_NONE;
    sRadioArtTransitionState = RADIO_ART_TRANS_IDLE;
    sRadioArtTransitionTimer = 0;

    SetMainCallback2(CB2_LoadRadio);
}
