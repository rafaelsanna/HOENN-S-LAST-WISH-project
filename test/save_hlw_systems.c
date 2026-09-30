#include "global.h"
#include "achievements.h"
#include "event_data.h"
#include "hlw_media_save.h"
#include "mining_minigame.h"
#include "rtc.h"
#include "test/test.h"

u16 GetMiningFreeSessionsRemaining(void);
u16 TryMiningFreeSession(void);

TEST("Wish banks keep core and custom boundaries independent of achievements")
{
    struct AchievementSave before = gSaveBlock3Ptr->achievements;
    memset(&gSaveBlock3Ptr->achievements, 0, sizeof(before));
    EXPECT_EQ(WishForm_Register(FALSE, 0), TRUE);
    EXPECT_EQ(WishForm_Register(FALSE, 127), TRUE);
    EXPECT_EQ(WishForm_Register(TRUE, 0), TRUE);
    EXPECT_EQ(WishForm_Register(TRUE, 99), TRUE);
    EXPECT_EQ(WishForm_Register(FALSE, 128), FALSE);
    EXPECT_EQ(WishForm_Register(TRUE, 100), FALSE);
    EXPECT_EQ(WishForm_Register(FALSE, 0xFFFF), FALSE);
    EXPECT_EQ(WishForm_IsRegistered(FALSE, 127), TRUE);
    EXPECT_EQ(WishForm_IsRegistered(TRUE, 99), TRUE);
    EXPECT_EQ(WishForm_IsRegistered(TRUE, 127), FALSE);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.unlocked[0], 0);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.unlocked[31], 0);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.shadowPokemon[0], 0);
    gSaveBlock3Ptr->achievements = before;
}

TEST("Wish membership uses the explicit manifest instead of a species tail")
{
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_BULBASAUR), 0);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_DARKRAI), 9);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_URSALUNA), 99);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_NONE), WISH_FORM_ID_NONE);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_DUCKLETT), WISH_FORM_ID_NONE);
}

TEST("Shadow IDs preserve joint Nightmare progress and bound the 30-slot bank")
{
    struct AchievementSave before = gSaveBlock3Ptr->achievements;
    EXPECT_EQ(ShadowPokemon_GetIdForSpecies(SPECIES_ESCAVALIER), SHADOW_ID_EVIL_CELEBI);
    EXPECT_EQ(ShadowPokemon_GetIdForSpecies(SPECIES_DUCKLETT), SHADOW_ID_JIRACHI);
    EXPECT_EQ(ShadowPokemon_GetIdForSpecies(SPECIES_SWANNA), SHADOW_ID_SUICUNE);
    EXPECT_EQ(ShadowPokemon_GetIdForSpecies(SPECIES_JIRACHI), SHADOW_ID_NONE);
    memset(&gSaveBlock3Ptr->achievements, 0, sizeof(before));
    EXPECT_EQ(ShadowPokemon_SetDefeated(SHADOW_ID_EVIL_CELEBI, TRUE), TRUE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_JIRACHI), TRUE);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.shadowNightmareState, 1);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.shadowPokemon[0], 0);
    EXPECT_EQ(ShadowPokemon_SetDefeated(SHADOW_ID_SUICUNE, TRUE), TRUE);
    EXPECT_EQ(ShadowPokemon_SetDefeated(29, TRUE), TRUE);
    EXPECT_EQ(ShadowPokemon_SetDefeated(30, TRUE), FALSE);
    EXPECT_EQ(ShadowPokemon_SetDefeated(0xFFFF, TRUE), FALSE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(29), TRUE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(30), FALSE);
    EXPECT_EQ(ShadowPokemon_SetDefeated(SHADOW_ID_JIRACHI, FALSE), TRUE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_EVIL_CELEBI), FALSE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_SUICUNE), TRUE);
    gSaveBlock3Ptr->achievements = before;
}

TEST("Achievement counters no longer alias packed custom progress")
{
    struct AchievementSave before = gSaveBlock3Ptr->achievements;
    memset(&gSaveBlock3Ptr->achievements, 0, sizeof(before));
    Achievement_IncrementCounter(ACH_COUNTER_CRITICAL_HITS, 3);
    Achievement_IncrementCounter(ACH_COUNTER_TIME_GEAR_USES, 7);
    Achievement_IncrementCounter(ACH_COUNTER_FISHING_CATCHES, 9);
    EXPECT_EQ(Achievement_GetCounter(ACH_COUNTER_CRITICAL_HITS), 3);
    EXPECT_EQ(Achievement_GetCounter(ACH_COUNTER_TIME_GEAR_USES), 7);
    EXPECT_EQ(Achievement_GetCounter(ACH_COUNTER_FISHING_CATCHES), 9);
    Achievement_RecordGameCornerPlay(ACH_GAME_CORNER_ROULETTE);
    EXPECT_EQ(Achievement_GetCounter(ACH_COUNTER_GAME_CORNER_GAMES), 1);
    EXPECT_EQ(Achievement_GetCounter(ACH_COUNTER_GAME_CORNER_PLAYS), 1);
    EXPECT_EQ(Achievement_GetCounter(ACH_COUNTER_TIME_GEAR_USES), 7);
    gSaveBlock3Ptr->achievements = before;
}

TEST("Mining wall capacity is separate from the 80-attempt daily limit")
{
    struct MiningWallSave before = gSaveBlock3Ptr->miningWalls;
    u32 i;
    memset(&gSaveBlock3Ptr->miningWalls, 0, sizeof(before));
    EXPECT_EQ(MiningWall_RecordAttempt(255), TRUE);
    EXPECT_EQ(MiningWall_WasAttempted(255), TRUE);
    EXPECT_EQ(MiningWall_RecordAttempt(255), FALSE);
    EXPECT_EQ(MiningWall_RecordAttempt(256), FALSE);
    EXPECT_EQ(MiningWall_RecordAttempt(0xFFFF), FALSE);
    for (i = 0; i < 79; i++)
        EXPECT_EQ(MiningWall_RecordAttempt(i), TRUE);
    EXPECT_EQ(gSaveBlock3Ptr->miningWalls.count, 80);
    EXPECT_EQ(MiningWall_RecordAttempt(79), FALSE);
    EXPECT_EQ(MiningWall_WasAttempted(79), FALSE);
    gSaveBlock3Ptr->miningWalls = before;
}

TEST("Mining NPC locations retain five independent free sessions per day")
{
    struct MiningWallSave before = gSaveBlock3Ptr->miningWalls;
    u16 locationBefore = gSpecialVar_0x8005;
    u32 i;
    memset(&gSaveBlock3Ptr->miningWalls, 0, sizeof(before));
    gSaveBlock3Ptr->miningWalls.day = RtcGetLocalDayCount();
    gSpecialVar_0x8005 = MINING_LOCATION_GRANITE_CAVE;
    for (i = 0; i < 5; i++)
        EXPECT_EQ(TryMiningFreeSession(), MINING_SESSION_RESULT_FREE);
    EXPECT_EQ(TryMiningFreeSession(), MINING_SESSION_RESULT_REQUIRES_PAYMENT);
    gSpecialVar_0x8005 = MINING_LOCATION_JAGGED_PASS;
    EXPECT_EQ(GetMiningFreeSessionsRemaining(), 5);
    gSpecialVar_0x8005 = MINING_LOCATION_SAVE_CAPACITY;
    EXPECT_EQ(GetMiningFreeSessionsRemaining(), 0);
    EXPECT_EQ(TryMiningFreeSession(), MINING_SESSION_RESULT_REQUIRES_PAYMENT);
    gSpecialVar_0x8005 = locationBefore;
    gSaveBlock3Ptr->miningWalls = before;
}
