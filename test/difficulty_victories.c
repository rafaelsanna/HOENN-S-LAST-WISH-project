#include "global.h"
#include "battle.h"
#include "battle_setup.h"
#include "difficulty.h"
#include "event_data.h"
#include "save.h"
#include "test/test.h"
#include "constants/battle.h"
#include "constants/flags.h"
#include "constants/trainers.h"

struct GymVictoryTest
{
    u16 trainers[DIFFICULTY_COUNT];
    u16 flags[DIFFICULTY_COUNT];
    u16 badge;
};

static const struct GymVictoryTest sGyms[] =
{
    {{TRAINER_TERRA_CASUAL, TRAINER_TERRA_HARD}, {FLAG_DEFEATED_GYM_1_NORMAL, FLAG_DEFEATED_GYM_1_HARD}, FLAG_BADGE01_GET},
    {{TRAINER_BRAWLY_1, TRAINER_BRAWLY}, {FLAG_DEFEATED_GYM_2_NORMAL, FLAG_DEFEATED_GYM_2_HARD}, FLAG_BADGE02_GET},
    {{TRAINER_DEN_CASUAL, TRAINER_WATTSON_1}, {FLAG_DEFEATED_GYM_3_NORMAL, FLAG_DEFEATED_GYM_3_HARD}, FLAG_BADGE03_GET},
    {{TRAINER_FLANNERY_CASUAL, TRAINER_FLANNERY_1}, {FLAG_DEFEATED_GYM_4_NORMAL, FLAG_DEFEATED_GYM_4_HARD}, FLAG_BADGE04_GET},
    {{TRAINER_CALENDULA_CASUAL, TRAINER_NORMAN_1}, {FLAG_DEFEATED_GYM_5_NORMAL, FLAG_DEFEATED_GYM_5_HARD}, FLAG_BADGE05_GET},
    {{TRAINER_TAKA_CASUAL, TRAINER_WINONA_1}, {FLAG_DEFEATED_GYM_6_NORMAL, FLAG_DEFEATED_GYM_6_HARD}, FLAG_BADGE06_GET},
    {{TRAINER_SOULLUNA_CASUAL, TRAINER_TATE_AND_LIZA_1}, {FLAG_DEFEATED_GYM_7_NORMAL, FLAG_DEFEATED_GYM_7_HARD}, FLAG_BADGE07_GET},
    {{TRAINER_RIO_CASUAL, TRAINER_JUAN_1}, {FLAG_DEFEATED_GYM_8_NORMAL, FLAG_DEFEATED_GYM_8_HARD}, FLAG_BADGE08_GET},
};

static const u16 sEliteFourTrainers[][3] =
{
    {TRAINER_SIDNEY, TRAINER_TSUBAKI_HARD_SINGLES, TRAINER_TSUBAKI_HARD_DOUBLES},
    {TRAINER_PHOEBE, TRAINER_PHOEBE_HARD_SINGLES, TRAINER_PHOEBE_HARD_DOUBLES},
    {TRAINER_GLACIA, TRAINER_SARK_HARD_SINGLES, TRAINER_SARK_HARD_DOUBLES},
    {TRAINER_DRAKE, TRAINER_DAEMON_HARD_SINGLES, TRAINER_DAEMON_HARD_DOUBLES},
};

static const u16 sEliteFourFlags[][DIFFICULTY_COUNT] =
{
    {FLAG_DEFEATED_ELITE_FOUR_1_NORMAL, FLAG_DEFEATED_ELITE_FOUR_1_HARD},
    {FLAG_DEFEATED_ELITE_FOUR_2_NORMAL, FLAG_DEFEATED_ELITE_FOUR_2_HARD},
    {FLAG_DEFEATED_ELITE_FOUR_3_NORMAL, FLAG_DEFEATED_ELITE_FOUR_3_HARD},
    {FLAG_DEFEATED_ELITE_FOUR_4_NORMAL, FLAG_DEFEATED_ELITE_FOUR_4_HARD},
};

static const u16 sChampionTrainers[] =
{
    TRAINER_WALLACE,
    TRAINER_STELLA_HARD_DOUBLES_TROOM,
    TRAINER_STELLA_HARD_HO_TAILWIND,
    TRAINER_STELLA_HARD_BALANCE_HAZZARDS,
};

static u8 sSavedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static bool8 sSavedBadges[ARRAY_COUNT(sGyms)];
static TrainerBattleParameter sSavedTrainerParams;
static u8 sSavedDifficulty;
static u8 sSavedOutcome;
static u32 sSavedBattleType;

static void ClearVictoryHistory(void)
{
    for (u16 flag = FLAG_DEFEATED_GYM_1_NORMAL; flag <= FLAG_DEFEATED_CHAMPION_HARD; flag++)
        FlagClear(flag);
}

static void SetUpVictoryTest(void)
{
    memcpy(sSavedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sSavedCustomFlags));
    sSavedTrainerParams = gTrainerBattleParameter;
    sSavedDifficulty = gSaveBlock2Ptr->optionsNpcTeams;
    sSavedOutcome = gBattleOutcome;
    sSavedBattleType = gBattleTypeFlags;
    for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
    {
        sSavedBadges[gym] = FlagGet(sGyms[gym].badge);
        FlagClear(sGyms[gym].badge);
    }
    ClearVictoryHistory();
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
    gBattleOutcome = B_OUTCOME_WON;
    gBattleTypeFlags = BATTLE_TYPE_TRAINER;
    TRAINER_BATTLE_PARAM.isRematch = FALSE;
}

static void TearDownVictoryTest(void)
{
    memcpy(gHlwSaveBlock4.customFlags, sSavedCustomFlags, sizeof(sSavedCustomFlags));
    gTrainerBattleParameter = sSavedTrainerParams;
    gSaveBlock2Ptr->optionsNpcTeams = sSavedDifficulty;
    gBattleOutcome = sSavedOutcome;
    gBattleTypeFlags = sSavedBattleType;
    for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
    {
        if (sSavedBadges[gym])
            FlagSet(sGyms[gym].badge);
        else
            FlagClear(sGyms[gym].badge);
    }
}

static void ExpectOnlyVictoryFlag(u16 expected)
{
    for (u16 flag = FLAG_DEFEATED_GYM_1_NORMAL; flag <= FLAG_DEFEATED_CHAMPION_HARD; flag++)
        EXPECT_EQ(FlagGet(flag), flag == expected);
}

TEST("Difficulty victories: each gym records its Normal first battle independently")
{
    SetUpVictoryTest();
    for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
    {
        ClearVictoryHistory();
        RecordTrainerDifficultyVictory(sGyms[gym].trainers[DIFFICULTY_NORMAL]);
        ExpectOnlyVictoryFlag(sGyms[gym].flags[DIFFICULTY_NORMAL]);
        EXPECT_EQ(FlagGet(sGyms[gym].badge), FALSE);
    }
    TearDownVictoryTest();
}

TEST("Difficulty victories: each gym records its Hard first battle independently")
{
    SetUpVictoryTest();
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
    {
        ClearVictoryHistory();
        RecordTrainerDifficultyVictory(sGyms[gym].trainers[DIFFICULTY_HARD]);
        ExpectOnlyVictoryFlag(sGyms[gym].flags[DIFFICULTY_HARD]);
        EXPECT_EQ(FlagGet(sGyms[gym].badge), FALSE);
    }
    TearDownVictoryTest();
}

TEST("Difficulty victories: gym history is immutable before and after badge delivery")
{
    SetUpVictoryTest();
    for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
    {
        ClearVictoryHistory();
        gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
        RecordTrainerDifficultyVictory(sGyms[gym].trainers[DIFFICULTY_NORMAL]);
        gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
        RecordTrainerDifficultyVictory(sGyms[gym].trainers[DIFFICULTY_HARD]);
        ExpectOnlyVictoryFlag(sGyms[gym].flags[DIFFICULTY_NORMAL]);
        FlagSet(sGyms[gym].badge);
        RecordTrainerDifficultyVictory(sGyms[gym].trainers[DIFFICULTY_HARD]);
        ExpectOnlyVictoryFlag(sGyms[gym].flags[DIFFICULTY_NORMAL]);
        FlagClear(sGyms[gym].badge);
    }
    TearDownVictoryTest();
}

TEST("Difficulty victories: gym rematches cannot create history even without a badge")
{
    SetUpVictoryTest();
    TRAINER_BATTLE_PARAM.isRematch = TRUE;
    for (u32 difficulty = 0; difficulty < DIFFICULTY_COUNT; difficulty++)
    {
        gSaveBlock2Ptr->optionsNpcTeams = difficulty;
        for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
            RecordTrainerDifficultyVictory(sGyms[gym].trainers[difficulty]);
    }
    ExpectOnlyVictoryFlag(0);
    TearDownVictoryTest();
}

TEST("Difficulty victories: old badges do not gain guessed history on later battles")
{
    SetUpVictoryTest();
    for (u32 gym = 0; gym < ARRAY_COUNT(sGyms); gym++)
    {
        FlagSet(sGyms[gym].badge);
        for (u32 difficulty = 0; difficulty < DIFFICULTY_COUNT; difficulty++)
        {
            gSaveBlock2Ptr->optionsNpcTeams = difficulty;
            RecordTrainerDifficultyVictory(sGyms[gym].trainers[difficulty]);
        }
    }
    ExpectOnlyVictoryFlag(0);
    TearDownVictoryTest();
}

TEST("Difficulty victories: canonical trainer flags cannot award or change mode history")
{
    bool8 wasFought = HasTrainerBeenFought(TRAINER_TERRA_HARD);
    SetUpVictoryTest();
    SetTrainerFlag(TRAINER_TERRA_HARD);
    ExpectOnlyVictoryFlag(0);
    RecordTrainerDifficultyVictory(TRAINER_TERRA_CASUAL);
    ExpectOnlyVictoryFlag(FLAG_DEFEATED_GYM_1_NORMAL);
    if (!wasFought)
        ClearTrainerFlag(TRAINER_TERRA_HARD);
    TearDownVictoryTest();
}

TEST("Difficulty victories: losses draws escapes and forfeits never count")
{
    const u8 outcomes[] = {0, B_OUTCOME_LOST, B_OUTCOME_DREW, B_OUTCOME_RAN,
        B_OUTCOME_PLAYER_TELEPORTED, B_OUTCOME_MON_FLED, B_OUTCOME_CAUGHT,
        B_OUTCOME_NO_SAFARI_BALLS, B_OUTCOME_FORFEITED, B_OUTCOME_MON_TELEPORTED,
        B_OUTCOME_LINK_BATTLE_RAN};
    SetUpVictoryTest();
    for (u32 outcome = 0; outcome < ARRAY_COUNT(outcomes); outcome++)
    {
        gBattleOutcome = outcomes[outcome];
        for (u32 difficulty = 0; difficulty < DIFFICULTY_COUNT; difficulty++)
        {
            gSaveBlock2Ptr->optionsNpcTeams = difficulty;
            RecordTrainerDifficultyVictory(sGyms[0].trainers[difficulty]);
            RecordTrainerDifficultyVictory(sEliteFourTrainers[0][difficulty]);
            RecordTrainerDifficultyVictory(sChampionTrainers[difficulty]);
        }
    }
    ExpectOnlyVictoryFlag(0);
    TearDownVictoryTest();
}

TEST("Difficulty victories: wild facility link recorded and secret-base battles never count")
{
    const u32 excluded[] = {0, BATTLE_TYPE_LINK, BATTLE_TYPE_LINK_IN_BATTLE,
        BATTLE_TYPE_RECORDED, BATTLE_TYPE_RECORDED_LINK, BATTLE_TYPE_BATTLE_TOWER,
        BATTLE_TYPE_DOME, BATTLE_TYPE_PALACE, BATTLE_TYPE_ARENA, BATTLE_TYPE_FACTORY,
        BATTLE_TYPE_PIKE, BATTLE_TYPE_PYRAMID, BATTLE_TYPE_TRAINER_HILL,
        BATTLE_TYPE_SECRET_BASE, BATTLE_TYPE_EREADER_TRAINER};
    SetUpVictoryTest();
    for (u32 type = 0; type < ARRAY_COUNT(excluded); type++)
    {
        gBattleTypeFlags = excluded[type] == 0 ? 0 : BATTLE_TYPE_TRAINER | excluded[type];
        RecordTrainerDifficultyVictory(TRAINER_TERRA_CASUAL);
        RecordTrainerDifficultyVictory(TRAINER_SIDNEY);
        RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    }
    ExpectOnlyVictoryFlag(0);
    TearDownVictoryTest();
}

TEST("Difficulty victories: unrelated trainers and invalid IDs never count")
{
    const u16 trainers[] = {TRAINER_NONE, TRAINER_BRENT, TRAINER_JOSH, TRAINER_ROXANNE_2, TRAINER_SECRET_BASE, 0xFFFF};
    SetUpVictoryTest();
    for (u32 trainer = 0; trainer < ARRAY_COUNT(trainers); trainer++)
        RecordTrainerDifficultyVictory(trainers[trainer]);
    ExpectOnlyVictoryFlag(0);
    TearDownVictoryTest();
}

TEST("Difficulty victories: invalid difficulty never writes history")
{
    SetUpVictoryTest();
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_COUNT;
    RecordTrainerDifficultyVictory(TRAINER_TERRA_CASUAL);
    RecordTrainerDifficultyVictory(TRAINER_SIDNEY);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    gSaveBlock2Ptr->optionsNpcTeams = 0xFF;
    RecordTrainerDifficultyVictory(TRAINER_TERRA_CASUAL);
    ExpectOnlyVictoryFlag(0);
    TearDownVictoryTest();
}

TEST("Difficulty victories: every Elite Four variant records the configured mode")
{
    SetUpVictoryTest();
    for (u32 difficulty = 0; difficulty < DIFFICULTY_COUNT; difficulty++)
    {
        gSaveBlock2Ptr->optionsNpcTeams = difficulty;
        for (u32 member = 0; member < ARRAY_COUNT(sEliteFourTrainers); member++)
        {
            for (u32 variant = 0; variant < ARRAY_COUNT(sEliteFourTrainers[member]); variant++)
            {
                ClearVictoryHistory();
                RecordTrainerDifficultyVictory(sEliteFourTrainers[member][variant]);
                ExpectOnlyVictoryFlag(sEliteFourFlags[member][difficulty]);
            }
        }
    }
    TearDownVictoryTest();
}

TEST("Difficulty victories: full Elite Four history requires all four in the same mode")
{
    SetUpVictoryTest();
    for (u32 member = 0; member < 3; member++)
        RecordTrainerDifficultyVictory(sEliteFourTrainers[member][0]);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_NORMAL), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    RecordTrainerDifficultyVictory(TRAINER_DAEMON_HARD_DOUBLES);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_NORMAL), FALSE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_HARD), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
    RecordTrainerDifficultyVictory(TRAINER_DRAKE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_NORMAL), TRUE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_HARD), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    for (u32 member = 0; member < 3; member++)
        RecordTrainerDifficultyVictory(sEliteFourTrainers[member][2]);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_NORMAL), TRUE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_HARD), TRUE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_CHAMPION_NORMAL), FALSE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_CHAMPION_HARD), FALSE);
    TearDownVictoryTest();
}

TEST("Difficulty victories: every champion variant records the configured mode")
{
    SetUpVictoryTest();
    for (u32 difficulty = 0; difficulty < DIFFICULTY_COUNT; difficulty++)
    {
        gSaveBlock2Ptr->optionsNpcTeams = difficulty;
        for (u32 variant = 0; variant < ARRAY_COUNT(sChampionTrainers); variant++)
        {
            ClearVictoryHistory();
            RecordTrainerDifficultyVictory(sChampionTrainers[variant]);
            ExpectOnlyVictoryFlag(difficulty == DIFFICULTY_NORMAL ? FLAG_DEFEATED_CHAMPION_NORMAL : FLAG_DEFEATED_CHAMPION_HARD);
        }
    }
    TearDownVictoryTest();
}

TEST("Difficulty victories: later League wins preserve both modes independently")
{
    SetUpVictoryTest();
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    RecordTrainerDifficultyVictory(TRAINER_STELLA_HARD_BALANCE_HAZZARDS);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_CHAMPION_NORMAL), TRUE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_CHAMPION_HARD), TRUE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_NORMAL), FALSE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_ELITE_FOUR_HARD), FALSE);
    TearDownVictoryTest();
}

TEST("Difficulty victories: history uses the custom save bank without changing legacy progress")
{
    u8 legacyFlags[sizeof(gSaveBlock1Ptr->flags)];
    SetUpVictoryTest();
    memcpy(legacyFlags, gSaveBlock1Ptr->flags, sizeof(legacyFlags));
    EXPECT_EQ(GetFlagPointer(FLAG_DEFEATED_GYM_1_NORMAL),
        &gHlwSaveBlock4.customFlags[(FLAG_DEFEATED_GYM_1_NORMAL - HLW_CUSTOM_FLAGS_START) / 8]);
    EXPECT_EQ(GetFlagPointer(FLAG_DEFEATED_CHAMPION_HARD),
        &gHlwSaveBlock4.customFlags[(FLAG_DEFEATED_CHAMPION_HARD - HLW_CUSTOM_FLAGS_START) / 8]);
    RecordTrainerDifficultyVictory(TRAINER_TERRA_CASUAL);
    RecordTrainerDifficultyVictory(TRAINER_SIDNEY);
    RecordTrainerDifficultyVictory(TRAINER_WALLACE);
    EXPECT_EQ(memcmp(legacyFlags, gSaveBlock1Ptr->flags, sizeof(legacyFlags)), 0);
    TearDownVictoryTest();
}
