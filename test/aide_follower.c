#include "global.h"
#include "config/overworld.h"
#include "battle.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "field_specials.h"
#include "follower_npc.h"
#include "malloc.h"
#include "overworld.h"
#include "pokemon.h"
#include "random.h"
#include "test/test.h"
#include "constants/event_objects.h"
#include "constants/flags.h"

struct FollowerSavedState
{
    struct Pokemon party[PARTY_SIZE];
    struct ObjectEvent objects[OBJECT_EVENTS_COUNT];
    struct MapHeader mapHeader;
    struct WarpData location;
    rng_value_t rng;
    u32 npcInProgress;
    u8 levelUpHP;
    u8 partyCount;
    u8 followerIndex;
    bool8 temporaryHide;
    bool8 globalHide;
    bool8 originalGift;
};

static void RestoreFlag(u16 flag, bool8 value)
{
    if (value)
        FlagSet(flag);
    else
        FlagClear(flag);
}

static struct FollowerSavedState *SetUpFollower(void)
{
    struct FollowerSavedState *saved = Alloc(sizeof(*saved));
    const struct MapHeader *lab = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB),
        MAP_NUM(MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB));

    ASSUME(saved != NULL);
    ASSUME(OW_POKEMON_OBJECT_EVENTS && OW_FOLLOWERS_ENABLED);
    memcpy(saved->party, gPlayerParty, sizeof(saved->party));
    memcpy(saved->objects, gObjectEvents, sizeof(saved->objects));
    saved->mapHeader = gMapHeader;
    saved->location = gSaveBlock1Ptr->location;
    saved->rng = gRngValue;
    saved->levelUpHP = gBattleScripting.levelUpHP;
    saved->npcInProgress = GetFollowerNPCData(FNPC_DATA_IN_PROGRESS);
    saved->partyCount = gPlayerPartyCount;
    saved->followerIndex = gSaveBlock3Ptr->followerIndex;
    saved->temporaryHide = FlagGet(FLAG_TEMP_HIDE_FOLLOWER);
    saved->globalHide = FlagGet(B_FLAG_FOLLOWERS_DISABLED);
    saved->originalGift = FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT);

    memset(gPlayerParty, 0, sizeof(saved->party));
    memset(gObjectEvents, 0, sizeof(saved->objects));
    // Fixed inputs keep setup deterministic; CreateBoxMon still draws from RNG.
    CreateMon(&gPlayerParty[0], SPECIES_ZIGZAGOON, 30, 0, TRUE, 0x12345678, OT_ID_PRESET, 0);
    CreateMon(&gPlayerParty[1], SPECIES_PORYGON, 30, 0, TRUE, 0x12345678, OT_ID_PRESET, 0);
    CreateMon(&gPlayerParty[2], SPECIES_PORYGON2, 30, 0, TRUE, 0x12345678, OT_ID_PRESET, 0);
    gPlayerPartyCount = 3;
    gSaveBlock3Ptr->followerIndex = 1;
    gObjectEvents[0].active = TRUE;
    gObjectEvents[0].localId = OBJ_EVENT_ID_FOLLOWER;
    gMapHeader = *lab;
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB);
    SetFollowerNPCData(FNPC_DATA_IN_PROGRESS, FALSE);
    FlagClear(FLAG_TEMP_HIDE_FOLLOWER);
    if (B_FLAG_FOLLOWERS_DISABLED)
        FlagClear(B_FLAG_FOLLOWERS_DISABLED);
    FlagClear(FLAG_RECEIVED_PORYGON_LITTLEROOT);
    return saved;
}

static void TearDownFollower(struct FollowerSavedState *saved)
{
    memcpy(gPlayerParty, saved->party, sizeof(saved->party));
    memcpy(gObjectEvents, saved->objects, sizeof(saved->objects));
    gMapHeader = saved->mapHeader;
    gSaveBlock1Ptr->location = saved->location;
    gRngValue = saved->rng;
    gBattleScripting.levelUpHP = saved->levelUpHP;
    gPlayerPartyCount = saved->partyCount;
    gSaveBlock3Ptr->followerIndex = saved->followerIndex;
    SetFollowerNPCData(FNPC_DATA_IN_PROGRESS, saved->npcInProgress);
    RestoreFlag(FLAG_TEMP_HIDE_FOLLOWER, saved->temporaryHide);
    if (B_FLAG_FOLLOWERS_DISABLED)
        RestoreFlag(B_FLAG_FOLLOWERS_DISABLED, saved->globalHide);
    RestoreFlag(FLAG_RECEIVED_PORYGON_LITTLEROOT, saved->originalGift);
    Free(saved);
}

TEST("Littleroot lab follower check uses the selected companion, independent of the original gift")
{
    struct FollowerSavedState *saved;
    u16 expected, actual;
    u8 slot;
    bool8 originalGift;

    PARAMETRIZE { slot = 0; expected = SPECIES_ZIGZAGOON; originalGift = FALSE; }
    PARAMETRIZE { slot = OW_FOLLOWER_NOT_SET; expected = SPECIES_ZIGZAGOON; originalGift = FALSE; }
    PARAMETRIZE { slot = 1; expected = SPECIES_PORYGON; originalGift = FALSE; }
    PARAMETRIZE { slot = 2; expected = SPECIES_PORYGON2; originalGift = FALSE; }
    PARAMETRIZE { slot = 1; expected = SPECIES_PORYGON; originalGift = TRUE; }
    PARAMETRIZE { slot = 2; expected = SPECIES_PORYGON2; originalGift = TRUE; }

    saved = SetUpFollower();
    gSaveBlock3Ptr->followerIndex = slot;
    RestoreFlag(FLAG_RECEIVED_PORYGON_LITTLEROOT, originalGift);
    actual = Script_GetFollowerSpecies();
    TearDownFollower(saved);
    EXPECT_EQ(actual, expected);
}

TEST("Littleroot lab follower check rejects recalled, absent, hidden and NPC-suppressed companions")
{
    enum { RECALLED, ABSENT, WRONG_OBJECT, TEMPORARY_HIDE, NPC_FOLLOWING, NO_CONSCIOUS_MON } reason;
    struct FollowerSavedState *saved;
    u16 actual, hp = 0;

    PARAMETRIZE { reason = RECALLED; }
    PARAMETRIZE { reason = ABSENT; }
    PARAMETRIZE { reason = WRONG_OBJECT; }
    PARAMETRIZE { reason = TEMPORARY_HIDE; }
    PARAMETRIZE { reason = NPC_FOLLOWING; }
    PARAMETRIZE { reason = NO_CONSCIOUS_MON; }

    saved = SetUpFollower();
    switch (reason)
    {
    case RECALLED:
        gSaveBlock3Ptr->followerIndex = OW_FOLLOWER_RECALLED;
        break;
    case ABSENT:
        gObjectEvents[0].active = FALSE;
        break;
    case WRONG_OBJECT:
        gObjectEvents[0].localId = 1;
        break;
    case TEMPORARY_HIDE:
        FlagSet(FLAG_TEMP_HIDE_FOLLOWER);
        break;
    case NPC_FOLLOWING:
        SetFollowerNPCData(FNPC_DATA_IN_PROGRESS, TRUE);
        break;
    case NO_CONSCIOUS_MON:
        for (u32 i = 0; i < gPlayerPartyCount; i++)
            SetMonData(&gPlayerParty[i], MON_DATA_HP, &hp);
        break;
    }
    actual = Script_GetFollowerSpecies();
    TearDownFollower(saved);
    EXPECT_EQ(actual, SPECIES_NONE);
}

TEST("Littleroot lab follower check excludes eggs and uses the actual conscious fallback")
{
    struct FollowerSavedState *saved;
    u16 expected, actual, hp = 0;
    bool8 egg, skipLead, isEgg = TRUE;

    PARAMETRIZE { egg = TRUE; skipLead = FALSE; expected = SPECIES_ZIGZAGOON; }
    PARAMETRIZE { egg = TRUE; skipLead = TRUE; expected = SPECIES_PORYGON2; }
    PARAMETRIZE { egg = FALSE; skipLead = FALSE; expected = SPECIES_ZIGZAGOON; }
    PARAMETRIZE { egg = FALSE; skipLead = TRUE; expected = SPECIES_PORYGON2; }

    saved = SetUpFollower();
    if (egg)
        SetMonData(&gPlayerParty[1], MON_DATA_IS_EGG, &isEgg);
    else
        SetMonData(&gPlayerParty[1], MON_DATA_HP, &hp);
    if (skipLead)
        SetMonData(&gPlayerParty[0], MON_DATA_HP, &hp);
    actual = Script_GetFollowerSpecies();
    TearDownFollower(saved);
    EXPECT_EQ(actual, expected);
}

TEST("Littleroot lab follower check accepts shiny and temporarily invisible Porygon")
{
    struct FollowerSavedState *saved;
    u16 actual;
    bool8 shiny, invisible, shinyCorrect;

    PARAMETRIZE { shiny = FALSE; invisible = TRUE; }
    PARAMETRIZE { shiny = TRUE; invisible = FALSE; }
    PARAMETRIZE { shiny = TRUE; invisible = TRUE; }

    saved = SetUpFollower();
    if (shiny)
        CreateMon(&gPlayerParty[1], SPECIES_PORYGON, 30, 0, TRUE, 0, OT_ID_PRESET, 0);
    gObjectEvents[0].invisible = invisible; // Normal immediately after warp/menu return.
    shinyCorrect = IsMonShiny(&gPlayerParty[1]) == shiny;
    actual = Script_GetFollowerSpecies();
    TearDownFollower(saved);
    EXPECT(shinyCorrect);
    EXPECT_EQ(actual, SPECIES_PORYGON);
}
