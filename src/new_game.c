#include "global.h"
#include "new_game.h"
#include "random.h"
#include "pokemon.h"
#include "roamer.h"
#include "pokemon_size_record.h"
#include "script.h"
#include "lottery_corner.h"
#include "play_time.h"
#include "mauville_old_man.h"
#include "match_call.h"
#include "lilycove_lady.h"
#include "load_save.h"
#include "pokeblock.h"
#include "dewford_trend.h"
#include "berry.h"
#include "rtc.h"
#include "easy_chat.h"
#include "event_data.h"
#include "money.h"
#include "trainer_hill.h"
#include "tv.h"
#include "coins.h"
#include "text.h"
#include "overworld.h"
#include "mail.h"
#include "battle_records.h"
#include "item.h"
#include "pokedex.h"
#include "apprentice.h"
#include "frontier_util.h"
#include "save.h"
#include "link_rfu.h"
#include "main.h"
#include "contest.h"
#include "item_menu.h"
#include "pokemon_storage_system.h"
#include "pokemon_jump.h"
#include "decoration_inventory.h"
#include "secret_base.h"
#include "player_pc.h"
#include "field_specials.h"
#include "berry_powder.h"
#include "mystery_gift.h"
#include "union_room_chat.h"
#include "constants/map_groups.h"
#include "constants/items.h"
#include "difficulty.h"
#include "follower_npc.h"

extern const u8 EventScript_ResetAllMapFlags[];

// Static function prototypes
static void ClearFrontierRecord(void);
static void ResetMiniGamesRecords(void);
static void ResetItemFlags(void);
static void ResetDexNav(void);
static void InitPlayerTrainerId(void);
static void SetDefaultOptions(void);
static void ClearPokedexFlags(void);

// Global variables
EWRAM_DATA bool8 gDifferentSaveFile = FALSE;
EWRAM_DATA bool8 gEnableContestDebugging = FALSE;

// Contest winner dummy data
static const struct ContestWinner sContestWinnerPicDummy =
{
    .monName = _(""),
    .trainerName = _("")
};

// Trainer ID management functions
void SetTrainerId(u32 trainerId, u8 *dst)
{
    dst[0] = trainerId;
    dst[1] = trainerId >> 8;
    dst[2] = trainerId >> 16;
    dst[3] = trainerId >> 24;
}

u32 GetTrainerId(u8 *trainerId)
{
    return (trainerId[3] << 24) | (trainerId[2] << 16) | (trainerId[1] << 8) | (trainerId[0]);
}

void CopyTrainerId(u8 *dst, u8 *src)
{
    s32 i;
    for (i = 0; i < TRAINER_ID_LENGTH; i++)
        dst[i] = src[i];
}

static void InitPlayerTrainerId(void)
{
    u32 trainerId = (Random() << 16) | GetGeneratedTrainerIdLower();
    SetTrainerId(trainerId, gSaveBlock2Ptr->playerTrainerId);
}

// Game options initialization
static void SetDefaultOptions(void)
{
    gSaveBlock2Ptr->optionsTextSpeed = OPTIONS_TEXT_SPEED_MID;
    gSaveBlock2Ptr->optionsWindowFrameType = 0;
    gSaveBlock2Ptr->optionsSound = OPTIONS_SOUND_MONO;
    gSaveBlock2Ptr->optionsBattleStyle = OPTIONS_BATTLE_STYLE_SHIFT;
    gSaveBlock2Ptr->optionsBattleSceneOff = FALSE;
    gSaveBlock2Ptr->regionMapZoom = FALSE;
}

// Pokédex initialization
static void ClearPokedexFlags(void)
{
    gUnusedPokedexU8 = 0;
    memset(&gSaveBlock1Ptr->dexCaught, 0, sizeof(gSaveBlock1Ptr->dexCaught));
    memset(&gSaveBlock1Ptr->dexSeen, 0, sizeof(gSaveBlock1Ptr->dexSeen));
}

// Contest system management
void ClearAllContestWinnerPics(void)
{
    s32 i;
    
    ClearContestWinnerPicsInContestHall();
    
    // Clear Museum paintings
    for (i = MUSEUM_CONTEST_WINNERS_START; i < NUM_CONTEST_WINNERS; i++)
        gSaveBlock1Ptr->contestWinners[i] = sContestWinnerPicDummy;
}

// Battle Frontier record management
static void ClearFrontierRecord(void)
{
    CpuFill32(0, &gSaveBlock2Ptr->frontier, sizeof(gSaveBlock2Ptr->frontier));
    
    gSaveBlock2Ptr->frontier.opponentNames[0][0] = EOS;
    gSaveBlock2Ptr->frontier.opponentNames[1][0] = EOS;
}

// Save system functions
void Sav2_ClearSetDefault(void)
{
    ClearSav2();
    SetDefaultOptions();
}

void ResetMenuAndMonGlobals(void)
{
    gDifferentSaveFile = FALSE;
    ResetPokedexScrollPositions();
    ZeroPlayerPartyMons();
    ZeroEnemyPartyMons();
    ResetBagScrollPositions();
    ResetPokeblockScrollPositions();
}

// Main new game initialization - REFINED VERSION
void NewGameInitData(void)
{
    // RTC initialization for new/corrupt saves
    if (gSaveFileStatus == SAVE_STATUS_EMPTY || gSaveFileStatus == SAVE_STATUS_CORRUPT)
        RtcReset();

    // Core initialization flags
    gDifferentSaveFile = TRUE;
    gSaveBlock2Ptr->encryptionKey = 0;
    
    // Clear all party data
    ZeroPlayerPartyMons();
    ZeroEnemyPartyMons();
    gPlayerPartyCount = 0;
    
    // Initialize core game systems
    ResetPokedex();
    ClearFrontierRecord();
    ClearSav1();
    ClearSav3();
    ClearAllMail();
    
    // Clear special flags
    gSaveBlock2Ptr->specialSaveWarpFlags = 0;
    gSaveBlock2Ptr->gcnLinkFlags = 0;
    
    // Player identification and timing
    InitPlayerTrainerId();
    PlayTimeCounter_Reset();
    ClearPokedexFlags();
    
    // Event and story systems
    InitEventData();
    ClearTVShowData();
    ResetGabbyAndTy();
    
    // World state systems
    ClearSecretBases();
    ClearBerryTrees();
    DeactivateAllRoamers();
    
    // Player resources
    SetMoney(&gSaveBlock1Ptr->money, 3000);
    SetCoins(0);
    gSaveBlock1Ptr->registeredItem = ITEM_NONE;
    
    // Inventory systems
    ClearBag();
    NewGameInitPCItems();
    ClearPokeblocks();
    ClearDecorationInventories();
    
    // Game features and records
    ResetLinkContestBoolean();
    ResetGameStats();
    ClearAllContestWinnerPics();
    ClearPlayerLinkBattleRecords();
    InitSeedotSizeRecord();
    InitLotadSizeRecord();
    ResetPokemonStorageSystem();
    
    // Communication and social systems
    InitEasyChatPhrases();
    InitUnionRoomChatRegisteredTexts();
    InitLilycoveLady();
    InitMatchCallCounters();
    
    // NPCs and special characters
    SetMauvilleOldMan();
    InitDewfordTrend();
    ResetFanClub();
    ResetLotteryCorner();
    ResetAllApprenticeData();
    
    // Competition and ranking systems
    ClearRankingHallRecords();
    ResetTrainerHillResults();
    ResetContestLinkResults();
    WipeTrainerNameRecords();
    
    // Mystery and special events
    ClearMysteryGift();
    
    // Game difficulty and features
    SetCurrentDifficultyLevel(DIFFICULTY_NORMAL);
    ResetItemFlags();
    ResetDexNav();
    ClearFollowerNPCData();
    
    // Mini-games
    ResetMiniGamesRecords();
    
    // CRITICAL: Set initial warp destination to LITTLEROOT_TOWN_01
    // This ensures the NPC interaction works from the start
    SetWarpDestination(MAP_GROUP(MAP_LITTLEROOT_TOWN_01), 
                       MAP_NUM(MAP_LITTLEROOT_TOWN_01), 
                       WARP_ID_NONE, 
                       10, 12);
    WarpIntoMap();
    
    // Execute map reset script
    RunScriptImmediately(EventScript_ResetAllMapFlags);
}

// Mini-games record management
static void ResetMiniGamesRecords(void)
{
    CpuFill16(0, &gSaveBlock2Ptr->berryCrush, sizeof(struct BerryCrush));
    SetBerryPowder(&gSaveBlock2Ptr->berryCrush.berryPowderAmount, 0);
    ResetPokemonJumpRecords();
    CpuFill16(0, &gSaveBlock2Ptr->berryPick, sizeof(struct BerryPickingResults));
}

// Item system flags management
static void ResetItemFlags(void)
{
#if OW_SHOW_ITEM_DESCRIPTIONS == OW_ITEM_DESCRIPTIONS_FIRST_TIME
    memset(&gSaveBlock3Ptr->itemFlags, 0, sizeof(gSaveBlock3Ptr->itemFlags));
#endif
}

// DexNav system management
static void ResetDexNav(void)
{
#if USE_DEXNAV_SEARCH_LEVELS == TRUE
    memset(gSaveBlock3Ptr->dexNavSearchLevels, 0, sizeof(gSaveBlock3Ptr->dexNavSearchLevels));
#endif
    gSaveBlock3Ptr->dexNavChain = 0;
}

