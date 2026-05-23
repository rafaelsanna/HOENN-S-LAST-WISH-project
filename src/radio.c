// radio.c
// Pokémon Radio - Key Item Screen
//
// Controls:
//   A / START             -> Play / Pause toggle
//   B                     -> Close radio (music keeps playing if it was on)
//   L / R / DPAD          -> Previous / Next track

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
// Graphics (adjust INCBIN paths for your build — smol or raw)
// ===========================================================================
static const u16 sRadioBg_Pal[]     = INCBIN_U16("graphics/radio/radiobg.gbapal");
static const u32 sRadioBg_Gfx[]     = INCBIN_U32("graphics/radio/radiobg.4bpp.smol");
// Tilemap is loaded RAW — CopyToBgTilemapBuffer expects uncompressed data.
// Do NOT use .smolTM here; that format is only for functions that decompress.
static const u16 sRadioBg_Tilemap[] = INCBIN_U16("graphics/radio/radiobg.bin");

// ===========================================================================
// BG templates — BG0: text windows / BG1: radio tileset
// ===========================================================================
static const struct BgTemplate sRadioBgTemplates[] =
{
    {
        .bg             = 0,
        .charBaseIndex  = 0,
        .mapBaseIndex   = 31,
        .screenSize     = 0,
        .paletteMode    = 0,
        .priority       = 0,
        .baseTile       = 0,
    },
    {
        .bg             = 1,
        .charBaseIndex  = 2,
        .mapBaseIndex   = 8,
        .screenSize     = 0,
        .paletteMode    = 0,
        .priority       = 1,
        .baseTile       = 0,
    },
};

// ===========================================================================
// Window templates
// ===========================================================================
#define WIN_MUSIC_NAME 0
#define WIN_CONTROLS   1

#define WIN_MUSIC_NAME_BASE_BLOCK   1
#define WIN_CONTROLS_BASE_BLOCK     (WIN_MUSIC_NAME_BASE_BLOCK + 28 * 4)

static const struct WindowTemplate sRadioWindowTemplates[] =
{
    [WIN_MUSIC_NAME] =
    {
        .bg          = 0,
        .tilemapLeft = 1,
        .tilemapTop  = 11,
        .width       = 28,
        .height      = 4,
        .paletteNum  = 15,
        .baseBlock   = WIN_MUSIC_NAME_BASE_BLOCK,
    },
    [WIN_CONTROLS] =
    {
        .bg          = 0,
        .tilemapLeft = 1,
        .tilemapTop  = 17,
        .width       = 28,
        .height      = 2,
        .paletteNum  = 15,
        .baseBlock   = WIN_CONTROLS_BASE_BLOCK,
    },
    DUMMY_WIN_TEMPLATE,
};

// ===========================================================================
// BGM name list
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

// Generate one string per BGM constant
#define X(songId) static const u8 sRadioBGMName_##songId[] = _(#songId);
RADIO_SOUND_LIST_BGM
#undef X

// Lookup table indexed by (songId - START_MUS)
#define X(songId) [songId - START_MUS] = sRadioBGMName_##songId,
static const u8 *const sRadioBGMNames[END_MUS - START_MUS + 1] =
{
    RADIO_SOUND_LIST_BGM
};
#undef X

// ===========================================================================
// Persistent EWRAM state
// ===========================================================================
static EWRAM_DATA MainCallback sRadioReturnCallback = NULL;
static EWRAM_DATA u16          sRadioCurrentSong    = 0;
static EWRAM_DATA bool8        sRadioIsPlaying       = FALSE;

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

// ===========================================================================
// Text strings — ALL at file scope, never inline inside a function call
// ===========================================================================
#define RADIO_FONT  FONT_NORMAL

static const u8 sRadioText_Playing[]  = _("  PLAYING");
static const u8 sRadioText_Paused[]   = _("  PAUSED");
static const u8 sRadioText_Unknown[]  = _("---");
static const u8 sRadioText_TrackFmt[] = _("Track: {STR_VAR_1}");
// B button intentionally omitted — its hint is shown on the tileset itself
static const u8 sRadioText_Controls[] =
    _("{A_BUTTON}:Play  {START_BUTTON}:Pause  {L_BUTTON}:Back  {R_BUTTON}:Next");

// ===========================================================================
// Draw functions
// ===========================================================================
static void Radio_DrawMusicInfo(u16 songId, bool8 playing)
{
    u8 numBuf[8];
    const u8 *name;

    FillWindowPixelBuffer(WIN_MUSIC_NAME, PIXEL_FILL(1));

    ConvertIntToDecimalStringN(numBuf, songId, STR_CONV_MODE_LEADING_ZEROS, 4);
    StringCopy(gStringVar1, numBuf);
    StringExpandPlaceholders(gStringVar4, sRadioText_TrackFmt);
    AddTextPrinterParameterized(WIN_MUSIC_NAME, RADIO_FONT, gStringVar4, 2, 2, TEXT_SKIP_DRAW, NULL);

    name = Radio_GetSongName(songId);
    if (name == NULL)
        name = sRadioText_Unknown;
    AddTextPrinterParameterized(WIN_MUSIC_NAME, RADIO_FONT, name, 2, 18, TEXT_SKIP_DRAW, NULL);

    AddTextPrinterParameterized(WIN_MUSIC_NAME, RADIO_FONT,
        playing ? sRadioText_Playing : sRadioText_Paused,
        2, 34, TEXT_SKIP_DRAW, NULL);

    CopyWindowToVram(WIN_MUSIC_NAME, COPYWIN_FULL);
}

static void Radio_DrawControls(void)
{
    FillWindowPixelBuffer(WIN_CONTROLS, PIXEL_FILL(1));
    AddTextPrinterParameterized(WIN_CONTROLS, RADIO_FONT, sRadioText_Controls, 2, 2, TEXT_SKIP_DRAW, NULL);
    CopyWindowToVram(WIN_CONTROLS, COPYWIN_FULL);
}

// ===========================================================================
// task data aliases — defined ONCE here, used in all three task functions,
// then undef'd after the last task.  CB2_LoadRadio uses data[0]/data[1] directly.
// ===========================================================================
#define tCurrSong   data[0]
#define tIsPlaying  data[1]

static void Task_RadioHandleInput(u8 taskId)
{
    u16   songId  = (u16)gTasks[taskId].tCurrSong;
    bool8 playing = (bool8)gTasks[taskId].tIsPlaying;
    bool8 changed = FALSE;

    if (JOY_NEW(DPAD_RIGHT) || JOY_NEW(DPAD_UP) || JOY_NEW(R_BUTTON))
    {
        songId  = (songId < (u16)END_MUS) ? songId + 1 : (u16)START_MUS;
        changed = TRUE;
    }
    else if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_DOWN) || JOY_NEW(L_BUTTON))
    {
        songId  = (songId > (u16)START_MUS) ? songId - 1 : (u16)END_MUS;
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

    if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_SELECT);
        sRadioCurrentSong = songId;
        sRadioIsPlaying   = playing;
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
// ===========================================================================
static void CB2_LoadRadio(void)
{
    u8 taskId;

    switch (gMain.state)
    {
    case 0:
        // ResetVramOamAndBgCntRegs / ResetAllBgsCoordinates don't exist in the
        // expansion — SetVBlankCallback(NULL) + ScanlineEffect_Stop() is enough.
        SetVBlankCallback(NULL);
        SetHBlankCallback(NULL);
        ScanlineEffect_Stop();
        break;

    case 1:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sRadioBgTemplates, ARRAY_COUNT(sRadioBgTemplates));
        InitWindows(sRadioWindowTemplates);
        InitTextBoxGfxAndPrinters();
        break;

    case 2:
        ResetPaletteFade();
        ResetSpriteData();
        ResetTasks();
        ResetTempTileDataBuffers();
        break;

    case 3:
        // Paleta do radio no slot 0. LoadMessageBoxAndBorderGfx usa slot 15 (paletteNum=15).
        LoadPalette(sRadioBg_Pal, BG_PLTT_ID(0), sizeof(sRadioBg_Pal));
        LoadMessageBoxAndBorderGfx();
        // Carrega tiles direto na VRAM no charbase 2 — igual ao padrão da intro.c.
        // Evita qualquer offset interno do sistema de BG.
        DecompressDataWithHeaderVram(sRadioBg_Gfx, (void *)(BG_CHAR_ADDR(2)));
        break;

    case 4:
        // Copia tilemap direto no screenbase 8 — igual ao padrão da intro.c.
        CpuFill16(0, (void *)(BG_SCREEN_ADDR(8)), BG_SCREEN_SIZE);
        CpuCopy16(sRadioBg_Tilemap, (void *)(BG_SCREEN_ADDR(8)), 32 * 20 * 2);
        break;

    case 5:
        DrawStdWindowFrame(WIN_MUSIC_NAME, FALSE);
        DrawStdWindowFrame(WIN_CONTROLS, FALSE);
        Radio_DrawMusicInfo(sRadioCurrentSong, sRadioIsPlaying);
        Radio_DrawControls();
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

        // FIX: CB2_LoadRadio runs after #undef tCurrSong/tIsPlaying,
        //      so use data[0]/data[1] directly here.
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

    if (sRadioCurrentSong < (u16)START_MUS || sRadioCurrentSong > (u16)END_MUS)
    {
        sRadioCurrentSong = (u16)START_MUS;
        sRadioIsPlaying   = FALSE;
    }

    SetMainCallback2(CB2_LoadRadio);
}
