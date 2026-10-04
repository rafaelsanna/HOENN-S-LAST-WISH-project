#include "global.h"
#include "battle.h"
#include "difficulty.h"
#include "event_data.h"
#include "nuzlocke.h"
#include "save.h"
#include "string_util.h"
#include "text.h"
#include "trainer_card.h"
#include "test/test.h"
#include "constants/battle.h"
#include "constants/flags.h"
#include "constants/trainers.h"

static const u8 sStatusNrmOffNone[] = _("difficulty nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke off{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu none");
static const u8 sStatusNrmOffUsed[] = _("difficulty nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke off{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu used");
static const u8 sStatusNrmNrmNone[] = _("difficulty nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu none");
static const u8 sStatusNrmNrmUsed[] = _("difficulty nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu used");
static const u8 sStatusNrmHardNone[] = _("difficulty nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu none");
static const u8 sStatusNrmHardUsed[] = _("difficulty nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu used");
static const u8 sStatusHardOffNone[] = _("difficulty hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke off{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu none");
static const u8 sStatusHardOffUsed[] = _("difficulty hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke off{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu used");
static const u8 sStatusHardNrmNone[] = _("difficulty hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu none");
static const u8 sStatusHardNrmUsed[] = _("difficulty hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke nrm{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu used");
static const u8 sStatusHardHardNone[] = _("difficulty hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu none");
static const u8 sStatusHardHardUsed[] = _("difficulty hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke hard{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu used");

static u8 sSavedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static bool8 sSavedGameClear;
static bool8 sSavedWishMenuUsed;
static u8 sSavedDifficulty;
static u8 sSavedNuzlocke;
static u8 sSavedDebugMenu;
static u8 sSavedOutcome;
static u32 sSavedBattleType;

static void SetUpRunStatusTest(void)
{
    memcpy(sSavedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sSavedCustomFlags));
    sSavedGameClear = FlagGet(FLAG_SYS_GAME_CLEAR);
    sSavedWishMenuUsed = FlagGet(FLAG_USED_DEBUG_MENU);
    sSavedDifficulty = gSaveBlock2Ptr->optionsNpcTeams;
    sSavedNuzlocke = gSaveBlock2Ptr->optionsNuzlocke;
    sSavedDebugMenu = gSaveBlock2Ptr->optionsDebugMenu;
    sSavedOutcome = gBattleOutcome;
    sSavedBattleType = gBattleTypeFlags;
    for (u16 flag = FLAG_INITIAL_GAME_CONFIG_DONE; flag <= FLAG_NUZLOCKE_RUN_COMPLETED_HARD; flag++)
        FlagClear(flag);
    FlagClear(FLAG_SYS_GAME_CLEAR);
    FlagClear(FLAG_USED_DEBUG_MENU);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
    gSaveBlock2Ptr->optionsNuzlocke = OPTIONS_NUZLOCKE_OFF;
    gSaveBlock2Ptr->optionsDebugMenu = FALSE;
    gBattleOutcome = B_OUTCOME_WON;
    gBattleTypeFlags = BATTLE_TYPE_TRAINER;
}

static void TearDownRunStatusTest(void)
{
    memcpy(gHlwSaveBlock4.customFlags, sSavedCustomFlags, sizeof(sSavedCustomFlags));
    if (sSavedGameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    else
        FlagClear(FLAG_SYS_GAME_CLEAR);
    if (sSavedWishMenuUsed)
        FlagSet(FLAG_USED_DEBUG_MENU);
    else
        FlagClear(FLAG_USED_DEBUG_MENU);
    gSaveBlock2Ptr->optionsNpcTeams = sSavedDifficulty;
    gSaveBlock2Ptr->optionsNuzlocke = sSavedNuzlocke;
    gSaveBlock2Ptr->optionsDebugMenu = sSavedDebugMenu;
    gBattleOutcome = sSavedOutcome;
    gBattleTypeFlags = sSavedBattleType;
}

static void StartRun(enum DifficultyLevel difficulty, u8 nuzlocke)
{
    gSaveBlock2Ptr->optionsNpcTeams = difficulty;
    gSaveBlock2Ptr->optionsNuzlocke = nuzlocke;
    RecordInitialDifficultyChoice(difficulty);
    Nuzlocke_RecordInitialChoice(nuzlocke);
}

static void ChangeDifficulty(enum DifficultyLevel difficulty)
{
    gSaveBlock2Ptr->optionsNpcTeams = difficulty;
    RecordDifficultyChoice(difficulty);
}

static void ChangeNuzlocke(u8 mode)
{
    gSaveBlock2Ptr->optionsNuzlocke = mode;
    Nuzlocke_RecordModeChoice(mode);
}

static void ExpectRunStatus(const u8 *expected)
{
    u8 text[128];

    TrainerCard_FormatRunStatus(text);
    EXPECT_EQ(StringCompare(text, expected), 0);
}

TEST("Trainer card run status: exact labels fit the front row")
{
    enum DifficultyLevel difficulty;
    u8 nuzlocke;
    bool8 wishUsed;
    const u8 *expected;
    u8 text[128];
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_OFF; wishUsed = FALSE; expected = sStatusNrmOffNone; }
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_OFF; wishUsed = TRUE; expected = sStatusNrmOffUsed; }
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_NORMAL; wishUsed = FALSE; expected = sStatusNrmNrmNone; }
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_NORMAL; wishUsed = TRUE; expected = sStatusNrmNrmUsed; }
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_HARD; wishUsed = FALSE; expected = sStatusNrmHardNone; }
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_HARD; wishUsed = TRUE; expected = sStatusNrmHardUsed; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_OFF; wishUsed = FALSE; expected = sStatusHardOffNone; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_OFF; wishUsed = TRUE; expected = sStatusHardOffUsed; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_NORMAL; wishUsed = FALSE; expected = sStatusHardNrmNone; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_NORMAL; wishUsed = TRUE; expected = sStatusHardNrmUsed; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_HARD; wishUsed = FALSE; expected = sStatusHardHardNone; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_HARD; wishUsed = TRUE; expected = sStatusHardHardUsed; }
    SetUpRunStatusTest();
    StartRun(difficulty, nuzlocke);
    if (wishUsed)
        FlagSet(FLAG_USED_DEBUG_MENU);
    TrainerCard_FormatRunStatus(text);
    EXPECT_EQ(StringCompare(text, expected), 0);
    // The front text window is 224 pixels wide and this row starts at x=6.
    EXPECT_LE(GetStringWidth(FONT_SMALL_NARROW, text, 0), 218);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: difficulty Normal permanently replaces Hard")
{
    SetUpRunStatusTest();
    StartRun(DIFFICULTY_HARD, OPTIONS_NUZLOCKE_HARD);
    ChangeDifficulty(DIFFICULTY_NORMAL);
    ExpectRunStatus(sStatusNrmHardNone);
    ChangeDifficulty(DIFFICULTY_HARD);
    EXPECT_EQ(GetDifficultyRunQualification(), DIFFICULTY_NORMAL);
    ExpectRunStatus(sStatusNrmHardNone);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: Nuzlocke Normal permanently replaces Hard")
{
    SetUpRunStatusTest();
    StartRun(DIFFICULTY_HARD, OPTIONS_NUZLOCKE_HARD);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_NORMAL);
    ExpectRunStatus(sStatusHardNrmNone);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_HARD);
    ExpectRunStatus(sStatusHardNrmNone);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: Nuzlocke Off permanently replaces either starting mode")
{
    u8 initial;
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_HARD; }
    SetUpRunStatusTest();
    StartRun(DIFFICULTY_HARD, initial);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_OFF);
    ExpectRunStatus(sStatusHardOffNone);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_HARD);
    ExpectRunStatus(sStatusHardOffNone);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: starting Normal or Off cannot upgrade later")
{
    u8 initial;
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_OFF; }
    PARAMETRIZE { initial = OPTIONS_NUZLOCKE_NORMAL; }
    SetUpRunStatusTest();
    StartRun(DIFFICULTY_NORMAL, initial);
    ChangeDifficulty(DIFFICULTY_HARD);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_HARD);
    ExpectRunStatus(initial == OPTIONS_NUZLOCKE_OFF ? sStatusNrmOffNone : sStatusNrmNrmNone);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: older saves do not gain guessed Hard history")
{
    bool8 gameClear;
    PARAMETRIZE { gameClear = FALSE; }
    PARAMETRIZE { gameClear = TRUE; }
    SetUpRunStatusTest();
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    gSaveBlock2Ptr->optionsNuzlocke = OPTIONS_NUZLOCKE_HARD;
    if (gameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    ExpectRunStatus(sStatusNrmOffNone);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: completed results survive postgame option changes")
{
    enum DifficultyLevel difficulty;
    u8 nuzlocke;
    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; nuzlocke = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; nuzlocke = OPTIONS_NUZLOCKE_HARD; }
    SetUpRunStatusTest();
    StartRun(difficulty, nuzlocke);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    // The completion snapshot is frozen before the script sets GAME_CLEAR.
    ChangeDifficulty(DIFFICULTY_NORMAL);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_OFF);
    ExpectRunStatus(difficulty == DIFFICULTY_HARD ? sStatusHardHardNone : sStatusNrmNrmNone);
    FlagSet(FLAG_SYS_GAME_CLEAR);
    ChangeDifficulty(DIFFICULTY_HARD);
    ChangeNuzlocke(OPTIONS_NUZLOCKE_HARD);
    ExpectRunStatus(difficulty == DIFFICULTY_HARD ? sStatusHardHardNone : sStatusNrmNrmNone);
    TearDownRunStatusTest();
}

TEST("Trainer card run status: Wish Menu use is permanent and separate from enabling it")
{
    SetUpRunStatusTest();
    StartRun(DIFFICULTY_NORMAL, OPTIONS_NUZLOCKE_OFF);
    gSaveBlock2Ptr->optionsDebugMenu = TRUE;
    ExpectRunStatus(sStatusNrmOffNone);
    // Debug_ShowMainMenu sets this as soon as the Wish Menu opens.
    FlagSet(FLAG_USED_DEBUG_MENU);
    ExpectRunStatus(sStatusNrmOffUsed);
    gSaveBlock2Ptr->optionsDebugMenu = FALSE;
    ExpectRunStatus(sStatusNrmOffUsed);
    gSaveBlock2Ptr->optionsDebugMenu = TRUE;
    ExpectRunStatus(sStatusNrmOffUsed);
    TearDownRunStatusTest();
}
