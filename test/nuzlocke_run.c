#include "global.h"
#include "battle.h"
#include "difficulty.h"
#include "event_data.h"
#include "hlw_media_save.h"
#include "new_game.h"
#include "nuzlocke.h"
#include "save.h"
#include "test/test.h"
#include "constants/battle.h"
#include "constants/flags.h"
#include "constants/trainers.h"

static u8 sSavedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static bool8 sSavedGameClear;
static u8 sSavedNuzlocke;
static u8 sSavedDifficulty;
static u8 sSavedOutcome;
static u32 sSavedBattleType;

static void SetUpRunTest(void)
{
    memcpy(sSavedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sSavedCustomFlags));
    sSavedGameClear = FlagGet(FLAG_SYS_GAME_CLEAR);
    sSavedNuzlocke = gSaveBlock2Ptr->optionsNuzlocke;
    sSavedDifficulty = gSaveBlock2Ptr->optionsNpcTeams;
    sSavedOutcome = gBattleOutcome;
    sSavedBattleType = gBattleTypeFlags;
    for (u16 flag = FLAG_NUZLOCKE_RUN_CONFIGURED; flag <= FLAG_NUZLOCKE_RUN_COMPLETED_HARD; flag++)
        FlagClear(flag);
    FlagClear(FLAG_SYS_GAME_CLEAR);
    gSaveBlock2Ptr->optionsNuzlocke = OPTIONS_NUZLOCKE_OFF;
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
    gBattleOutcome = B_OUTCOME_WON;
    gBattleTypeFlags = BATTLE_TYPE_TRAINER;
}

static void TearDownRunTest(void)
{
    memcpy(gHlwSaveBlock4.customFlags, sSavedCustomFlags, sizeof(sSavedCustomFlags));
    if (sSavedGameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    else
        FlagClear(FLAG_SYS_GAME_CLEAR);
    gSaveBlock2Ptr->optionsNuzlocke = sSavedNuzlocke;
    gSaveBlock2Ptr->optionsNpcTeams = sSavedDifficulty;
    gBattleOutcome = sSavedOutcome;
    gBattleTypeFlags = sSavedBattleType;
}

static void StartRun(u8 mode)
{
    gSaveBlock2Ptr->optionsNuzlocke = mode;
    Nuzlocke_RecordInitialChoice(mode);
}

static void ChangeMode(u8 mode)
{
    gSaveBlock2Ptr->optionsNuzlocke = mode;
    Nuzlocke_RecordModeChoice(mode);
}

TEST("Nuzlocke run: initial final choice is recorded once without counting setup browsing")
{
    u8 initial;
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_OFF; }
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_HARD; }
    SetUpRunTest();
    Nuzlocke_RecordModeChoice(OPTIONS_NUZLOCKE_OFF);
    Nuzlocke_RecordModeChoice(OPTIONS_NUZLOCKE_NORMAL);
    StartRun(initial);
    Nuzlocke_RecordInitialChoice(OPTIONS_NUZLOCKE_HARD);
    Nuzlocke_RecordInitialChoice(OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED), TRUE);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_STARTED), initial != OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_HARD_ELIGIBLE), initial == OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_BROKEN), FALSE);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), initial);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    TearDownRunTest();
}

TEST("Nuzlocke run: uninterrupted Normal or Hard is recorded independently of NPC difficulty")
{
    u8 mode, difficulty;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; difficulty = DIFFICULTY_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; difficulty = DIFFICULTY_HARD; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; difficulty = DIFFICULTY_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; difficulty = DIFFICULTY_HARD; }
    SetUpRunTest();
    StartRun(mode);
    gSaveBlock2Ptr->optionsNpcTeams = difficulty;
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), mode);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_COMPLETED_NORMAL), mode == OPTIONS_NUZLOCKE_NORMAL);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_COMPLETED_HARD), mode == OPTIONS_NUZLOCKE_HARD);
    TearDownRunTest();
}

TEST("Nuzlocke run: all champion team variants freeze the result")
{
    u16 trainer;
    PARAMETRIZE { trainer = TRAINER_WALLACE; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_DOUBLES_TROOM; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_HO_TAILWIND; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_BALANCE_HAZZARDS; }
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    RecordTrainerDifficultyVictory(trainer);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_HARD);
    TearDownRunTest();
}

TEST("Nuzlocke run: Hard to Normal permanently limits credit to Normal even if Hard is restored")
{
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    ChangeMode(OPTIONS_NUZLOCKE_NORMAL);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_NORMAL);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_NORMAL);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_BROKEN), FALSE);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_NORMAL);
    TearDownRunTest();
}

TEST("Nuzlocke run: starting Normal cannot upgrade to Hard credit")
{
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_NORMAL);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_NORMAL);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_NORMAL);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_COMPLETED_HARD), FALSE);
    TearDownRunTest();
}

TEST("Nuzlocke run: switching Off permanently breaks either starting mode")
{
    u8 initial;
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_HARD; }
    SetUpRunTest();
    StartRun(initial);
    ChangeMode(OPTIONS_NUZLOCKE_OFF);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    ChangeMode(OPTIONS_NUZLOCKE_NORMAL);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_BROKEN), TRUE);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_OFF);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    TearDownRunTest();
}

TEST("Nuzlocke run: starting Off cannot qualify by enabling either mode later")
{
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_OFF);
    ChangeMode(OPTIONS_NUZLOCKE_NORMAL);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_STARTED), FALSE);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    TearDownRunTest();
}

TEST("Nuzlocke run: invalid mode is equivalent to turning Off")
{
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    ChangeMode(3);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_BROKEN), TRUE);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    TearDownRunTest();
}

TEST("Nuzlocke run: champion hook catches the current saved weaker mode")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_OFF; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    // A setting changed outside the normal menu still cannot earn Hard credit.
    gSaveBlock2Ptr->optionsNuzlocke = mode;
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), mode);
    TearDownRunTest();
}

TEST("Nuzlocke run: postgame settings and League rematches cannot rewrite completed credit")
{
    u8 initial;
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_HARD; }
    SetUpRunTest();
    StartRun(initial);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    // Freeze immediately at victory, even before GAME_CLEAR is set by script.
    ChangeMode(OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_BROKEN), FALSE);
    FlagSet(FLAG_SYS_GAME_CLEAR);
    ChangeMode(OPTIONS_NUZLOCKE_NORMAL);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), initial);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), initial);
    TearDownRunTest();
}

TEST("Nuzlocke run: postgame enabling cannot rescue an incomplete run")
{
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    ChangeMode(OPTIONS_NUZLOCKE_OFF);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    FlagSet(FLAG_SYS_GAME_CLEAR);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_DOUBLES_TROOM);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_OFF);
    TearDownRunTest();
}

TEST("Nuzlocke run: older saves never receive guessed starting-mode history")
{
    bool8 gameClear;
    PARAMETRIZE { gameClear = FALSE; }
    PARAMETRIZE { gameClear = TRUE; }
    SetUpRunTest();
    // A prior build may know initial NPC difficulty, but not Nuzlocke history.
    FlagSet(FLAG_INITIAL_GAME_CONFIG_DONE);
    if (gameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    ChangeMode(OPTIONS_NUZLOCKE_HARD);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED), FALSE);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    TearDownRunTest();
}

TEST("Nuzlocke run: ordinary wins losses forfeits and non-story battles do not finalize history")
{
    u16 trainer;
    u8 outcome;
    u32 battleType;
    PARAMETRIZE { trainer = TRAINER_JOSH; outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER; }
    PARAMETRIZE { trainer = TRAINER_SIDNEY; outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER; }
    PARAMETRIZE { trainer = TRAINER_WALLACE; outcome = B_OUTCOME_LOST; battleType = BATTLE_TYPE_TRAINER; }
    PARAMETRIZE { trainer = TRAINER_WALLACE; outcome = B_OUTCOME_FORFEITED; battleType = BATTLE_TYPE_TRAINER; }
    PARAMETRIZE { trainer = TRAINER_WALLACE; outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_LINK; }
    PARAMETRIZE { trainer = TRAINER_WALLACE; outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_RECORDED; }
    PARAMETRIZE { trainer = TRAINER_WALLACE; outcome = B_OUTCOME_WON; battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_FRONTIER; }
    SetUpRunTest();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    gBattleOutcome = outcome;
    gBattleTypeFlags = battleType;
    RecordTrainerDifficultyVictory(trainer);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_HARD);
    TearDownRunTest();
}

TEST("Nuzlocke run: every five-change sequence follows the lowest-mode and Off rules")
{
    // Exhaust all 3 starting modes and 3^5 subsequent selections.
    for (u32 initial = OPTIONS_NUZLOCKE_OFF; initial <= OPTIONS_NUZLOCKE_HARD; initial++)
        for (u32 sequence = 0; sequence < 243; sequence++)
        {
            u8 expected = initial;
            u32 remaining = sequence;
            SetUpRunTest();
            StartRun(initial);
            for (u32 step = 0; step < 5; step++)
            {
                u8 mode = remaining % 3;
                remaining /= 3;
                if (mode == OPTIONS_NUZLOCKE_OFF)
                    expected = OPTIONS_NUZLOCKE_OFF;
                else if (mode == OPTIONS_NUZLOCKE_NORMAL && expected == OPTIONS_NUZLOCKE_HARD)
                    expected = OPTIONS_NUZLOCKE_NORMAL;
                ChangeMode(mode);
                EXPECT_EQ(Nuzlocke_GetRunQualification(), expected);
            }
            RecordTrainerDifficultyVictory(TRAINER_WALLACE);
            EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), expected);
            TearDownRunTest();
        }
}

TEST("Nuzlocke run: history lives in custom flags and leaves difficulty and gameplay history alone")
{
    u8 before[HLW_CUSTOM_FLAG_BYTES];
    u8 releasedBefore[sizeof(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags)];
    u8 encountersBefore[sizeof(gSaveBlock3Ptr->nuzlockeWildHeaderFlags)];
    SetUpRunTest();
    FlagSet(FLAG_STARTED_ON_HARD);
    FlagSet(FLAG_HARD_RUN_BROKEN);
    FlagSet(FLAG_DEFEATED_GYM_1_NORMAL);
    memcpy(before, gHlwSaveBlock4.customFlags, sizeof(before));
    memcpy(releasedBefore, gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, sizeof(releasedBefore));
    memcpy(encountersBefore, gSaveBlock3Ptr->nuzlockeWildHeaderFlags, sizeof(encountersBefore));
    StartRun(OPTIONS_NUZLOCKE_HARD);
    ChangeMode(OPTIONS_NUZLOCKE_NORMAL);
    ChangeMode(OPTIONS_NUZLOCKE_OFF);
    for (u32 bit = 0; bit < HLW_CUSTOM_FLAG_BYTES * 8; bit++)
        if (bit + HLW_CUSTOM_FLAGS_START < FLAG_NUZLOCKE_RUN_CONFIGURED
         || bit + HLW_CUSTOM_FLAGS_START > FLAG_NUZLOCKE_RUN_COMPLETED_HARD)
            EXPECT_EQ(!!(gHlwSaveBlock4.customFlags[bit / 8] & (1 << (bit % 8))), !!(before[bit / 8] & (1 << (bit % 8))));
    EXPECT_EQ(memcmp(releasedBefore, gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, sizeof(releasedBefore)), 0);
    EXPECT_EQ(memcmp(encountersBefore, gSaveBlock3Ptr->nuzlockeWildHeaderFlags, sizeof(encountersBefore)), 0);
    TearDownRunTest();
}

TEST("Nuzlocke run: initial history survives overworld entry and resets for a new adventure")
{
    Sav2_ClearSetDefault();
    PrepareNewGameForInitialConfig();
    StartRun(OPTIONS_NUZLOCKE_HARD);
    NewGameInitData();
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED), TRUE);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(Nuzlocke_GetCompletedRunMode(), OPTIONS_NUZLOCKE_OFF);
    NewGameInitData();
    EXPECT_EQ(FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED), FALSE);
    EXPECT_EQ(Nuzlocke_GetRunQualification(), OPTIONS_NUZLOCKE_OFF);
}
