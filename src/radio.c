// radio.c
// Pokémon Radio - Key Item Screen
//
// Stations (SELECT cycles):
//   ALL      -> every BGM track
//   TOWNS    -> town / city themes
//   ROUTES   -> route / outdoor themes
//   TRAINERS -> trainer encounter themes
//   BATTLE   -> battle (VS) themes
//
// Controls:
//   A / START   -> Play / Pause toggle
//   SELECT      -> Cycle station
//   L / LEFT    -> Previous track in station
//   R / RIGHT   -> Next track in station
//   B           -> Close (music keeps playing)

#include "global.h"
#include "bg.h"
#include "decompress.h"
#include "field_screen_effect.h"
#include "gpu_regs.h"
#include "m4a.h"
#include "main.h"
#include "malloc.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
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
// Graphics
// ===========================================================================
static const u16 sRadioBg_Pal[]     = INCBIN_U16("graphics/radio/radiobg.gbapal");
static const u32 sRadioBg_Gfx[]     = INCBIN_U32("graphics/radio/radiobg.4bpp.smol");
static const u16 sRadioBg_Tilemap[] = INCBIN_U16("graphics/radio/radiobg.bin");

// ===========================================================================
// BG templates
// BG0 = text windows  (charbase 0, screenbase 31)
// BG1 = radio tileset (charbase 2, screenbase 8)  — loaded raw into VRAM
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
// BGM name list (X-macro — must be defined before any station list uses it)
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
    X(MUS_RG_TEACHY_TV_MENU)

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
    STATION_TOWNS,
    STATION_ROUTES,
    STATION_TRAINERS,
    STATION_BATTLE,
    STATION_COUNT,
};

// Each station is a flat array of song IDs terminated by 0xFFFF.
#define STATION_END 0xFFFF

static const u16 sStation_All[] = {
#define X(s) s,
    RADIO_SOUND_LIST_BGM
#undef X
    STATION_END
};

static const u16 sStation_Towns[] = {
    MUS_LITTLEROOT,
    MUS_OLDALE,
    MUS_PETALBURG,
    MUS_RUSTBORO,
    MUS_DEWFORD,
    MUS_SLATEPORT,
    MUS_VERDANTURF,
    MUS_FALLARBOR,
    MUS_FORTREE,
    MUS_LILYCOVE,
    MUS_SOOTOPOLIS,
    MUS_EVER_GRANDE,
    MUS_POKE_CENTER,
    MUS_POKE_MART,
    MUS_GYM,
    MUS_BIRCH_LAB,
    MUS_SCHOOL,
    MUS_LILYCOVE_MUSEUM,
    MUS_OCEANIC_MUSEUM,
    MUS_CABLE_CAR,
    MUS_GAME_CORNER,
    MUS_SAFARI_ZONE,
    MUS_HALL_OF_FAME_ROOM,
    MUS_B_FRONTIER,
    MUS_B_DOME_LOBBY,
    MUS_TRICK_HOUSE,
    MUS_CONTEST_LOBBY,
    MUS_C_COMM_CENTER,
    MUS_RG_PALLET,
    MUS_RG_OAK_LAB,
    MUS_RG_POKE_CENTER,
    MUS_RG_CELADON,
    MUS_RG_VERMILLION,
    MUS_RG_FUCHSIA,
    MUS_RG_PEWTER,
    MUS_RG_CINNABAR,
    MUS_RG_SEVII_123,
    MUS_RG_SEVII_45,
    MUS_RG_SEVII_67,
    MUS_GSC_PEWTER,
    STATION_END
};

static const u16 sStation_Routes[] = {
    MUS_ROUTE101,
    MUS_ROUTE104,
    MUS_ROUTE110,
    MUS_ROUTE113,
    MUS_ROUTE119,
    MUS_ROUTE120,
    MUS_ROUTE122,
    MUS_CYCLING,
    MUS_SURF,
    MUS_SAILING,
    MUS_UNDERWATER,
    MUS_PETALBURG_WOODS,
    MUS_MT_CHIMNEY,
    MUS_DESERT,
    MUS_CAVE_OF_ORIGIN,
    MUS_MT_PYRE,
    MUS_MT_PYRE_EXTERIOR,
    MUS_AQUA_MAGMA_HIDEOUT,
    MUS_SEALED_CHAMBER,
    MUS_ABANDONED_SHIP,
    MUS_VICTORY_ROAD,
    MUS_B_PYRAMID,
    MUS_B_PYRAMID_TOP,
    MUS_ABNORMAL_WEATHER,
    MUS_WEATHER_GROUDON,
    MUS_GSC_ROUTE38,
    MUS_RG_ROUTE1,
    MUS_RG_ROUTE3,
    MUS_RG_ROUTE11,
    MUS_RG_ROUTE24,
    MUS_RG_VIRIDIAN_FOREST,
    MUS_RG_MT_MOON,
    MUS_RG_SS_ANNE,
    MUS_RG_SURF,
    MUS_RG_CYCLING,
    MUS_RG_POKE_TOWER,
    MUS_RG_SILPH,
    MUS_RG_POKE_MANSION,
    MUS_RG_VICTORY_ROAD,
    MUS_RG_SEVII_ROUTE,
    MUS_RG_SEVII_CAVE,
    MUS_RG_SEVII_DUNGEON,
    MUS_RG_TRAINER_TOWER,
    STATION_END
};

static const u16 sStation_Trainers[] = {
    MUS_ENCOUNTER_MALE,
    MUS_ENCOUNTER_FEMALE,
    MUS_ENCOUNTER_GIRL,
    MUS_ENCOUNTER_COOL,
    MUS_ENCOUNTER_INTENSE,
    MUS_ENCOUNTER_SWIMMER,
    MUS_ENCOUNTER_RICH,
    MUS_ENCOUNTER_HIKER,
    MUS_ENCOUNTER_TWINS,
    MUS_ENCOUNTER_INTERVIEWER,
    MUS_ENCOUNTER_AQUA,
    MUS_ENCOUNTER_MAGMA,
    MUS_ENCOUNTER_MAY,
    MUS_ENCOUNTER_BRENDAN,
    MUS_ENCOUNTER_SUSPICIOUS,
    MUS_ENCOUNTER_ELITE_FOUR,
    MUS_ENCOUNTER_CHAMPION,
    MUS_FOLLOW_ME,
    MUS_RG_ENCOUNTER_RIVAL,
    MUS_RG_ENCOUNTER_GYM_LEADER,
    MUS_RG_ENCOUNTER_ROCKET,
    MUS_RG_ENCOUNTER_GIRL,
    MUS_RG_ENCOUNTER_BOY,
    MUS_RG_ENCOUNTER_DEOXYS,
    MUS_RG_RIVAL_EXIT,
    MUS_C_VS_LEGEND_BEAST,
    STATION_END
};

static const u16 sStation_Battle[] = {
    MUS_VS_WILD,
    MUS_VS_TRAINER,
    MUS_VS_GYM_LEADER,
    MUS_VS_RIVAL,
    MUS_VS_AQUA_MAGMA,
    MUS_VS_AQUA_MAGMA_LEADER,
    MUS_VS_ELITE_FOUR,
    MUS_VS_CHAMPION,
    MUS_VS_REGI,
    MUS_VS_KYOGRE_GROUDON,
    MUS_VS_RAYQUAZA,
    MUS_VS_MEW,
    MUS_VS_FRONTIER_BRAIN,
    MUS_RAYQUAZA_APPEARS,
    MUS_AWAKEN_LEGEND,
    MUS_INTRO_BATTLE,
    MUS_B_ARENA,
    MUS_B_DOME,
    MUS_B_FACTORY,
    MUS_B_PALACE,
    MUS_B_PIKE,
    MUS_B_TOWER,
    MUS_B_TOWER_RS,
    MUS_RG_VS_WILD,
    MUS_RG_VS_TRAINER,
    MUS_RG_VS_GYM_LEADER,
    MUS_RG_VS_CHAMPION,
    MUS_RG_VS_DEOXYS,
    MUS_RG_VS_MEWTWO,
    MUS_RG_VS_LEGEND,
    MUS_RG_INTRO_FIGHT,
    STATION_END
};

static const u16 *const sStationTracks[STATION_COUNT] = {
    [STATION_ALL]      = sStation_All,
    [STATION_TOWNS]    = sStation_Towns,
    [STATION_ROUTES]   = sStation_Routes,
    [STATION_TRAINERS] = sStation_Trainers,
    [STATION_BATTLE]   = sStation_Battle,
};

// Station display names
static const u8 sStationName_All[]      = _("ALL TRACKS");
static const u8 sStationName_Towns[]    = _("TOWNS & CITIES");
static const u8 sStationName_Routes[]   = _("ROUTES & NATURE");
static const u8 sStationName_Trainers[] = _("TRAINER THEMES");
static const u8 sStationName_Battle[]   = _("BATTLE THEMES");

static const u8 *const sStationNames[STATION_COUNT] = {
    [STATION_ALL]      = sStationName_All,
    [STATION_TOWNS]    = sStationName_Towns,
    [STATION_ROUTES]   = sStationName_Routes,
    [STATION_TRAINERS] = sStationName_Trainers,
    [STATION_BATTLE]   = sStationName_Battle,
};

// ===========================================================================
// Station helpers
// ===========================================================================

// Count tracks in a station
static u16 Station_Count(u8 station)
{
    u16 i = 0;
    const u16 *list = sStationTracks[station];
    while (list[i] != STATION_END)
        i++;
    return i;
}

// Get track at index within station
static u16 Station_GetTrack(u8 station, u16 index)
{
    return sStationTracks[station][index];
}

// Find the index of songId within station (or 0 if not found)
static u16 Station_FindTrack(u8 station, u16 songId)
{
    const u16 *list = sStationTracks[station];
    u16 i;
    for (i = 0; list[i] != STATION_END; i++)
        if (list[i] == songId)
            return i;
    return 0;
}

// ===========================================================================
// BGM name list (X-macro over full track list)
// ===========================================================================
// ===========================================================================
// Persistent EWRAM state
// ===========================================================================
static EWRAM_DATA MainCallback sRadioReturnCallback = NULL;
static EWRAM_DATA u16          sRadioCurrentSong    = 0;
static EWRAM_DATA bool8        sRadioIsPlaying       = FALSE;
static EWRAM_DATA u8           sRadioStation         = STATION_ALL;
static EWRAM_DATA u16          sRadioStationIndex    = 0; // index within current station

// ===========================================================================
// Forward declarations
// ===========================================================================
static void CB2_LoadRadio(void);
static void CB2_Radio(void);
static void VBlankCB_Radio(void);
static void Task_RadioHandleInput(u8 taskId);
static void Task_RadioFadeAndExit(u8 taskId);
static void Task_RadioWaitFadeExit(u8 taskId);

// ===========================================================================
// Helpers
// ===========================================================================
static const u8 *Radio_GetSongName(u16 songId)
{
    if (songId < (u16)START_MUS || songId > (u16)END_MUS)
        return NULL;
    return sRadioBGMNames[songId - START_MUS];
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

static const u8 sRadioText_TrackFmt[]   = _("Track:{STR_VAR_1}");
static const u8 sRadioText_Playing[]    = _("NOW PLAYING");
static const u8 sRadioText_Paused[]     = _("PAUSED");
static const u8 sRadioText_Unknown[]    = _("---");
static const u8 sRadioText_SongFmt[]    = _("Song: {STR_VAR_1}");
static const u8 sRadioText_StationFmt[] = _("Station: {STR_VAR_1}");

// ===========================================================================
// Draw functions
// ===========================================================================
static void Radio_DrawMusicInfo(u16 songId, bool8 playing)
{
    u8 numBuf[8];
    const u8 *name;

    FillWindowPixelBuffer(WIN_MUSIC_INFO, PIXEL_FILL(1));

    // Linha 1: "Track:XXXX   NOW PLAYING" ou "Track:XXXX   PAUSED"
    ConvertIntToDecimalStringN(numBuf, songId, STR_CONV_MODE_LEADING_ZEROS, 4);
    StringCopy(gStringVar1, numBuf);
    StringExpandPlaceholders(gStringVar4, sRadioText_TrackFmt);
    AddTextPrinterParameterized(WIN_MUSIC_INFO, RADIO_FONT, gStringVar4, 2, 2, TEXT_SKIP_DRAW, NULL);
    AddTextPrinterParameterized(WIN_MUSIC_INFO, RADIO_FONT,
        playing ? sRadioText_Playing : sRadioText_Paused,
        130, 2, TEXT_SKIP_DRAW, NULL);

    // Linha 2: "Song: NOME-DA-MUSICA"
    name = Radio_GetSongName(songId);
    if (name == NULL)
        name = sRadioText_Unknown;
    StringCopy(gStringVar1, name);
    StringExpandPlaceholders(gStringVar4, sRadioText_SongFmt);
    AddTextPrinterParameterized(WIN_MUSIC_INFO, RADIO_FONT, gStringVar4, 2, 18, TEXT_SKIP_DRAW, NULL);

    // Linha 3: "Station: NOME-DA-ESTACAO"
    StringCopy(gStringVar1, sStationNames[sRadioStation]);
    StringExpandPlaceholders(gStringVar4, sRadioText_StationFmt);
    AddTextPrinterParameterized(WIN_MUSIC_INFO, RADIO_FONT, gStringVar4, 2, 34, TEXT_SKIP_DRAW, NULL);

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

    // --- Station cycle (SELECT) ---
    if (JOY_NEW(SELECT_BUTTON))
    {
        PlaySE(SE_SELECT);
        sRadioStation = (sRadioStation + 1) % STATION_COUNT;
        // Try to keep the current song in the new station; fall back to index 0
        sRadioStationIndex = Station_FindTrack(sRadioStation, songId);
        Radio_SyncSong();
        songId = sRadioCurrentSong;

        if (playing)
        {
            m4aSongNumStop(gTasks[taskId].tCurrSong);
            m4aSongNumStart(songId);
        }
        gTasks[taskId].tCurrSong = (s16)songId;
        Radio_DrawMusicInfo(songId, playing);
        return;
    }

    // --- Track navigation (L / R / DPAD) ---
    if (JOY_NEW(DPAD_RIGHT) || JOY_NEW(DPAD_UP) || JOY_NEW(R_BUTTON))
    {
        u16 count = Station_Count(sRadioStation);
        sRadioStationIndex = (sRadioStationIndex + 1 < count)
                           ? sRadioStationIndex + 1 : 0;
        Radio_SyncSong();
        songId  = sRadioCurrentSong;
        changed = TRUE;
    }
    else if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_DOWN) || JOY_NEW(L_BUTTON))
    {
        u16 count = Station_Count(sRadioStation);
        sRadioStationIndex = (sRadioStationIndex > 0)
                           ? sRadioStationIndex - 1 : count - 1;
        Radio_SyncSong();
        songId  = sRadioCurrentSong;
        changed = TRUE;
    }

    if (changed)
    {
        PlaySE(SE_SELECT);
        if (playing)
        {
            m4aSongNumStop(gTasks[taskId].tCurrSong);
            m4aSongNumStart(songId);
        }
        gTasks[taskId].tCurrSong = (s16)songId;
        Radio_DrawMusicInfo(songId, playing);
    }

    // --- Play / Pause (A or START) ---
    if (JOY_NEW(A_BUTTON) || JOY_NEW(START_BUTTON))
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
        }
        gTasks[taskId].tIsPlaying = (s16)playing;
        Radio_DrawMusicInfo(songId, playing);
    }

    // --- Close (B) ---
    if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_SELECT);
        sRadioCurrentSong  = songId;
        sRadioIsPlaying    = playing;
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
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

// ===========================================================================
// Loading sequence
// Tileset loaded DIRECTLY into VRAM (same pattern as intro.c) to avoid
// any offset/buffer issues with the abstract BG system.
//   Tiles  -> BG_CHAR_ADDR(2)   = charBaseIndex 2
//   Tilemap-> BG_SCREEN_ADDR(8) = mapBaseIndex  8
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
        // InitWindows aloca o buffer de tilemap do BG0 automaticamente (window.c:63-75).
        // NÃO chamar SetBgTilemapBuffer manualmente — isso conflita com o AllocZeroed
        // interno e corrompe o heap.
        InitWindows(sRadioWindowTemplates);
        InitTextBoxGfxAndPrinters();
        break;

    case 2:
        ResetPaletteFade();
        ResetSpriteData();
        ResetTasks();
        break;

    case 3:
        // PLTT_SIZE_4BPP = 32 bytes = 1 slot (16 cores).
        // Usar sizeof() é perigoso: se o .gbapal tiver > 32 bytes sobrescreve
        // slots além do 0, incluindo o slot 15 que a fonte usa.
        LoadPalette(sRadioBg_Pal, BG_PLTT_ID(0), PLTT_SIZE_4BPP);
        LoadMessageBoxAndBorderGfx();
        // Tiles direto no charbase 2 — síncrono, sem buffer intermediário.
        DecompressDataWithHeaderVram(sRadioBg_Gfx, (void *)(BG_CHAR_ADDR(2)));
        break;

    case 4:
        // Tilemap direto no screenbase 8 — igual ao padrão da intro.c.
        CpuFill16(0, (void *)(BG_SCREEN_ADDR(8)), BG_SCREEN_SIZE);
        CpuCopy16(sRadioBg_Tilemap, (void *)(BG_SCREEN_ADDR(8)), 32 * 20 * 2);
        break;

    case 5:
        // SetWindowBorderStyle define as bordas SEM escrever direto na VRAM,
        PutWindowTilemap(WIN_MUSIC_INFO);
        Radio_DrawMusicInfo(sRadioCurrentSong, sRadioIsPlaying);
        CopyBgTilemapBufferToVram(0);
        break;

    case 6:
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0 |
                                       DISPCNT_OBJ_1D_MAP |
                                       DISPCNT_OBJ_ON);
        ShowBg(0);
        ShowBg(1);
        EnableInterrupts(INTR_FLAG_VBLANK);
        SetVBlankCallback(VBlankCB_Radio);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);

        if (sRadioIsPlaying)
            m4aSongNumStart(sRadioCurrentSong);

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

    // Validate saved state; reset if out of range
    if (sRadioCurrentSong < (u16)START_MUS || sRadioCurrentSong > (u16)END_MUS)
    {
        sRadioCurrentSong  = Station_GetTrack(sRadioStation, 0);
        sRadioIsPlaying    = FALSE;
    }

    // Sync index into current station
    sRadioStationIndex = Station_FindTrack(sRadioStation, sRadioCurrentSong);

    SetMainCallback2(CB2_LoadRadio);
}
