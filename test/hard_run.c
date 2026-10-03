#include "global.h"
#include "battle.h"
#include "battle_setup.h"
#include "difficulty.h"
#include "event_data.h"
#include "hlw_media_save.h"
#include "new_game.h"
#include "randomizer.h"
#include "save.h"
#include "string_util.h"
#include "test/test.h"
#include "constants/battle.h"
#include "constants/flags.h"
#include "constants/trainers.h"

static u8 sSavedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static bool8 sSavedGameClear;
static u8 sSavedDifficulty;
static u8 sSavedOutcome;
static u32 sSavedBattleType;

static void SetUpHardRunTest(void)
{
    memcpy(sSavedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sSavedCustomFlags));
    sSavedGameClear = FlagGet(FLAG_SYS_GAME_CLEAR);
    sSavedDifficulty = gSaveBlock2Ptr->optionsNpcTeams;
    sSavedOutcome = gBattleOutcome;
    sSavedBattleType = gBattleTypeFlags;
    for (u16 flag = FLAG_INITIAL_GAME_CONFIG_DONE; flag <= FLAG_HARD_RUN_COMPLETED; flag++)
        FlagClear(flag);
    FlagClear(FLAG_SYS_GAME_CLEAR);
    FlagClear(FLAG_DEFEATED_CHAMPION_NORMAL);
    FlagClear(FLAG_DEFEATED_CHAMPION_HARD);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    gBattleOutcome = B_OUTCOME_WON;
    gBattleTypeFlags = BATTLE_TYPE_TRAINER;
}

static void TearDownHardRunTest(void)
{
    memcpy(gHlwSaveBlock4.customFlags, sSavedCustomFlags, sizeof(sSavedCustomFlags));
    if (sSavedGameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    else
        FlagClear(FLAG_SYS_GAME_CLEAR);
    gSaveBlock2Ptr->optionsNpcTeams = sSavedDifficulty;
    gBattleOutcome = sSavedOutcome;
    gBattleTypeFlags = sSavedBattleType;
}

TEST("Hard run: only the final saved initial selection determines the starting mode")
{
    enum DifficultyLevel initial;
    PARAMETRIZE { initial = DIFFICULTY_NORMAL; }
    PARAMETRIZE { initial = DIFFICULTY_HARD; }
    SetUpHardRunTest();
    // Browsing Normal/Hard in the intro before committing is not a broken run.
    RecordDifficultyChoice(DIFFICULTY_NORMAL);
    RecordDifficultyChoice(DIFFICULTY_HARD);
    RecordInitialDifficultyChoice(initial);
    EXPECT_EQ(FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE), TRUE);
    EXPECT_EQ(FlagGet(FLAG_STARTED_ON_HARD), initial == DIFFICULTY_HARD);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), FALSE);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: an uninterrupted initial Hard run qualifies at the champion victory")
{
    u16 trainer;
    PARAMETRIZE { trainer = TRAINER_WALLACE; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_DOUBLES_TROOM; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_HO_TAILWIND; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_BALANCE_HAZZARDS; }
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    RecordTrainerDifficultyVictory(trainer);
    EXPECT_EQ(HasCompletedHardRun(), TRUE);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), FALSE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_CHAMPION_HARD), TRUE);
    TearDownHardRunTest();
}

TEST("Hard run: starting Normal cannot qualify by switching to Hard later")
{
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_NORMAL);
    RecordDifficultyChoice(DIFFICULTY_HARD);
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(FlagGet(FLAG_STARTED_ON_HARD), FALSE);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    // Independent victory flags still reflect the actual battle difficulty.
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_CHAMPION_HARD), TRUE);
    TearDownHardRunTest();
}

TEST("Hard run: turning Hard off then on even before saving is permanently disqualifying")
{
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    RecordDifficultyChoice(DIFFICULTY_NORMAL);
    RecordDifficultyChoice(DIFFICULTY_HARD);
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), TRUE);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: a champion victory on Normal cannot be rescued by a later Hard rematch")
{
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    // The victory hook also catches a missed settings notification.
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), TRUE);
    FlagSet(FLAG_SYS_GAME_CLEAR);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: postgame settings changes never revoke an earned Hard certificate")
{
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    // It is already frozen before the following script sets GAME_CLEAR.
    RecordDifficultyChoice(DIFFICULTY_NORMAL);
    EXPECT_EQ(HasCompletedHardRun(), TRUE);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), FALSE);
    FlagSet(FLAG_SYS_GAME_CLEAR);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
    RecordDifficultyChoice(DIFFICULTY_NORMAL);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(HasCompletedHardRun(), TRUE);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: old saves do not receive guessed initial difficulty or certification")
{
    bool8 gameClear;
    PARAMETRIZE { gameClear = FALSE; }
    PARAMETRIZE { gameClear = TRUE; }
    SetUpHardRunTest();
    if (gameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE), FALSE);
    EXPECT_EQ(FlagGet(FLAG_STARTED_ON_HARD), FALSE);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: losses forfeits and non-story champion IDs cannot certify a run")
{
    u8 outcome;
    u32 battleType;
    PARAMETRIZE { outcome = B_OUTCOME_LOST; battleType = BATTLE_TYPE_TRAINER; }
    PARAMETRIZE { outcome = B_OUTCOME_FORFEITED; battleType = BATTLE_TYPE_TRAINER; }
    PARAMETRIZE { outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_LINK; }
    PARAMETRIZE { outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_RECORDED; }
    PARAMETRIZE { outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_FRONTIER; }
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    gBattleOutcome = outcome;
    gBattleTypeFlags = battleType;
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    EXPECT_EQ(FlagGet(FLAG_HARD_RUN_BROKEN), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: ordinary trainer wins cannot certify the run")
{
    SetUpHardRunTest();
    RecordInitialDifficultyChoice(DIFFICULTY_HARD);
    RecordTrainerDifficultyVictory(TRAINER_JOSH);
    RecordTrainerDifficultyVictory(TRAINER_TSUBAKI_HARD_DOUBLES);
    EXPECT_EQ(HasCompletedHardRun(), FALSE);
    TearDownHardRunTest();
}

TEST("Hard run: intro settings survive overworld initialization and preparation is consumed once")
{
    enum DifficultyLevel initial;
    const u8 name[] = _("EMBER");
    PARAMETRIZE { initial = DIFFICULTY_NORMAL; }
    PARAMETRIZE { initial = DIFFICULTY_HARD; }
    Sav2_ClearSetDefault();
    StringCopy(gSaveBlock2Ptr->playerName, name);
    gSaveBlock2Ptr->playerGender = FEMALE;
    PrepareNewGameForInitialConfig();
    EXPECT_EQ(FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = initial;
    gSaveBlock2Ptr->optionsTextSpeed = OPTIONS_TEXT_SPEED_MID;
    gSaveBlock2Ptr->optionsNuzlocke = OPTIONS_NUZLOCKE_HARD;
    RecordInitialDifficultyChoice(initial);
    FlagSet(FLAG_SYS_AUTO_RUN);
    FlagSet(FLAG_AUTO_FISHING);
    FlagSet(FLAG_FAST_INTRO_NO_SLIDE);
    gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_BATTLE_SPEED_OFFSET] = 2;
    gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_HP_BAR_OFFSET] = 1;
    Randomizer_SetWildModes(FALSE, initial == DIFFICULTY_NORMAL);
    NewGameInitData();
    EXPECT_EQ(GetCurrentDifficultyLevel(), initial);
    EXPECT_EQ((u32)gSaveBlock2Ptr->optionsTextSpeed, OPTIONS_TEXT_SPEED_MID);
    EXPECT_EQ((u32)gSaveBlock2Ptr->optionsNuzlocke, OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(StringCompare(gSaveBlock2Ptr->playerName, name), 0);
    EXPECT_EQ(gSaveBlock2Ptr->playerGender, FEMALE);
    EXPECT_EQ(FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE), TRUE);
    EXPECT_EQ(FlagGet(FLAG_STARTED_ON_HARD), initial == DIFFICULTY_HARD);
    EXPECT_EQ(FlagGet(FLAG_SYS_AUTO_RUN), TRUE);
    EXPECT_EQ(FlagGet(FLAG_AUTO_FISHING), TRUE);
    EXPECT_EQ(FlagGet(FLAG_FAST_INTRO_NO_SLIDE), TRUE);
    EXPECT_EQ(gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_BATTLE_SPEED_OFFSET], 2);
    EXPECT_EQ(gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_HP_BAR_OFFSET], 1);
    EXPECT_EQ(Randomizer_FullWildEnabled(), initial == DIFFICULTY_NORMAL);
    // An unrelated later new game must not inherit the prepared-data bypass.
    NewGameInitData();
    EXPECT_EQ(FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE), FALSE);
    EXPECT_EQ(FlagGet(FLAG_STARTED_ON_HARD), FALSE);
    EXPECT_EQ(FlagGet(FLAG_SYS_AUTO_RUN), FALSE);
    EXPECT_EQ(gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_BATTLE_SPEED_OFFSET], 0);
    EXPECT_EQ(Randomizer_FullWildEnabled(), FALSE);
}
