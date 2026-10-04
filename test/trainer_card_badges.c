#include "global.h"
#include "difficulty.h"
#include "event_data.h"
#include "save.h"
#include "trainer_card.h"
#include "test/test.h"
#include "constants/flags.h"

#define BADGE_SHEET_SIZE 1024
#define BADGE_TILE_ROW_SIZE 64
#define BADGE_BOTTOM_ROW_OFFSET 512
#define BADGE_BUFFER_GUARD 0xA5C39E71

static const u8 sNormalBadgeTiles[] = INCBIN_U8("graphics/trainer_card/badges.4bpp");
static const u8 sHardBadgeTiles[] = INCBIN_U8("graphics/trainer_card/badgeshard.4bpp");

static const u16 sGymVictoryFlags[][DIFFICULTY_COUNT] =
{
    {FLAG_DEFEATED_GYM_1_NORMAL, FLAG_DEFEATED_GYM_1_HARD},
    {FLAG_DEFEATED_GYM_2_NORMAL, FLAG_DEFEATED_GYM_2_HARD},
    {FLAG_DEFEATED_GYM_3_NORMAL, FLAG_DEFEATED_GYM_3_HARD},
    {FLAG_DEFEATED_GYM_4_NORMAL, FLAG_DEFEATED_GYM_4_HARD},
    {FLAG_DEFEATED_GYM_5_NORMAL, FLAG_DEFEATED_GYM_5_HARD},
    {FLAG_DEFEATED_GYM_6_NORMAL, FLAG_DEFEATED_GYM_6_HARD},
    {FLAG_DEFEATED_GYM_7_NORMAL, FLAG_DEFEATED_GYM_7_HARD},
    {FLAG_DEFEATED_GYM_8_NORMAL, FLAG_DEFEATED_GYM_8_HARD},
};

static const u16 sRunFlags[] =
{
    FLAG_INITIAL_GAME_CONFIG_DONE,
    FLAG_STARTED_ON_HARD,
    FLAG_HARD_RUN_BROKEN,
    FLAG_HARD_RUN_COMPLETED,
};

// Keep the large scratch buffers out of IWRAM so they cannot crowd the
// test runner's stack. These buffers are not part of the production ROM.
static EWRAM_DATA struct
{
    u32 before;
    u8 tiles[BADGE_SHEET_SIZE];
    u32 after;
} sBadgeBuffer;

static EWRAM_DATA u8 sSavedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static EWRAM_DATA u8 sSavedLegacyFlags[NUM_FLAG_BYTES];
static EWRAM_DATA u8 sExpectedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static EWRAM_DATA u8 sExpectedLegacyFlags[NUM_FLAG_BYTES];
static EWRAM_DATA u8 sSavedDifficulty;

static void SetUpBadgeTest(void)
{
    memcpy(sSavedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sSavedCustomFlags));
    memcpy(sSavedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sSavedLegacyFlags));
    sSavedDifficulty = gSaveBlock2Ptr->optionsNpcTeams;
    for (u32 gym = 0; gym < ARRAY_COUNT(sGymVictoryFlags); gym++)
    {
        FlagClear(sGymVictoryFlags[gym][DIFFICULTY_NORMAL]);
        FlagClear(sGymVictoryFlags[gym][DIFFICULTY_HARD]);
    }
    for (u32 i = 0; i < ARRAY_COUNT(sRunFlags); i++)
        FlagClear(sRunFlags[i]);
    FlagClear(FLAG_SYS_GAME_CLEAR);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_NORMAL;
}

static void TearDownBadgeTest(void)
{
    memcpy(gHlwSaveBlock4.customFlags, sSavedCustomFlags, sizeof(sSavedCustomFlags));
    memcpy(gSaveBlock1Ptr->flags, sSavedLegacyFlags, sizeof(sSavedLegacyFlags));
    gSaveBlock2Ptr->optionsNpcTeams = sSavedDifficulty;
}

static void SetGymHistory(u8 hardMask)
{
    for (u32 gym = 0; gym < ARRAY_COUNT(sGymVictoryFlags); gym++)
    {
        FlagClear(sGymVictoryFlags[gym][DIFFICULTY_NORMAL]);
        FlagClear(sGymVictoryFlags[gym][DIFFICULTY_HARD]);
        FlagSet(sGymVictoryFlags[gym][(hardMask & (1 << gym)) ? DIFFICULTY_HARD : DIFFICULTY_NORMAL]);
    }
}

static void ApplyAndExpectBadges(u8 hardMask)
{
    u8 difficulty = gSaveBlock2Ptr->optionsNpcTeams;

    memcpy(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags));
    memcpy(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags));
    memcpy(sBadgeBuffer.tiles, sNormalBadgeTiles, sizeof(sBadgeBuffer.tiles));
    sBadgeBuffer.before = BADGE_BUFFER_GUARD;
    sBadgeBuffer.after = BADGE_BUFFER_GUARD;
    TrainerCard_ApplyHardBadgeGraphics(sBadgeBuffer.tiles);
    for (u32 gym = 0; gym < ARRAY_COUNT(sGymVictoryFlags); gym++)
    {
        const u8 *expected = (hardMask & (1 << gym)) ? sHardBadgeTiles : sNormalBadgeTiles;
        u32 top = gym * BADGE_TILE_ROW_SIZE;
        u32 bottom = BADGE_BOTTOM_ROW_OFFSET + top;

        // A 16x16 badge has two tiles in each of the sheet's two tile rows.
        EXPECT_EQ(memcmp(sBadgeBuffer.tiles + top, expected + top, BADGE_TILE_ROW_SIZE), 0);
        EXPECT_EQ(memcmp(sBadgeBuffer.tiles + bottom, expected + bottom, BADGE_TILE_ROW_SIZE), 0);
    }
    EXPECT_EQ(sBadgeBuffer.before, BADGE_BUFFER_GUARD);
    EXPECT_EQ(sBadgeBuffer.after, BADGE_BUFFER_GUARD);
    EXPECT_EQ(memcmp(gHlwSaveBlock4.customFlags, sExpectedCustomFlags, sizeof(sExpectedCustomFlags)), 0);
    EXPECT_EQ(memcmp(gSaveBlock1Ptr->flags, sExpectedLegacyFlags, sizeof(sExpectedLegacyFlags)), 0);
    EXPECT_EQ((u8)gSaveBlock2Ptr->optionsNpcTeams, difficulty);
}

ASSUMPTIONS
{
    ASSUME(sizeof(sNormalBadgeTiles) == BADGE_SHEET_SIZE);
    ASSUME(sizeof(sHardBadgeTiles) == BADGE_SHEET_SIZE);
}

TEST("Trainer card badges: all 256 gym histories mix the actual Normal and Hard sheets")
{
    SetUpBadgeTest();
    for (u16 hardMask = 0; hardMask < 256; hardMask++)
    {
        SetGymHistory(hardMask);
        ApplyAndExpectBadges(hardMask);
    }
    TearDownBadgeTest();
}

TEST("Trainer card badges: Normal and unknown history keep the original artwork")
{
    bool8 historyKnown;

    PARAMETRIZE { historyKnown = FALSE; }
    PARAMETRIZE { historyKnown = TRUE; }
    SetUpBadgeTest();
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    if (historyKnown)
        SetGymHistory(0);
    ApplyAndExpectBadges(0);
    TearDownBadgeTest();
}

TEST("Trainer card badges: current difficulty and run qualification do not change earned artwork")
{
    enum DifficultyLevel difficulty;

    PARAMETRIZE { difficulty = DIFFICULTY_NORMAL; }
    PARAMETRIZE { difficulty = DIFFICULTY_HARD; }
    SetUpBadgeTest();
    SetGymHistory(0xAA);
    gSaveBlock2Ptr->optionsNpcTeams = difficulty;
    for (u8 runMask = 0; runMask < 16; runMask++)
    {
        for (u32 i = 0; i < ARRAY_COUNT(sRunFlags); i++)
        {
            if (runMask & (1 << i))
                FlagSet(sRunFlags[i]);
            else
                FlagClear(sRunFlags[i]);
        }
        FlagClear(FLAG_SYS_GAME_CLEAR);
        ApplyAndExpectBadges(0xAA);
        FlagSet(FLAG_SYS_GAME_CLEAR);
        ApplyAndExpectBadges(0xAA);
    }
    TearDownBadgeTest();
}
