#include "global.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "event_scripts.h"
#include "item.h"
#include "item_ball.h"
#include "overworld.h"
#include "save.h"
#include "constants/event_bg.h"
#include "constants/flags.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "test/test.h"

extern const u8 Common_EventScript_FindItem[];

static const u16 sPickupFlags[] =
{
    FLAG_PICKUP_RUSTBORO_CITY_LIGHT_CLAY,
    FLAG_PICKUP_RUSTBORO_CITY_POTION,
    FLAG_PICKUP_ROUTE_104_QUIET_MINT,
    FLAG_PICKUP_PETALBURG_CAVE_QUIET_MINT,
    FLAG_PICKUP_LITTLEROOT_COAST_ETHER,
    FLAG_PICKUP_LONELY_CAVE_B2_TM51,
    FLAG_PICKUP_LONELY_CAVE_B2_RARE_CANDY,
    FLAG_PICKUP_RUSTURF_GROVE_SUPER_REPEL,
    FLAG_PICKUP_GRANITE_CAVE_B1F_RARE_CANDY,
    FLAG_PICKUP_FIERY_PATH_PROTEIN,
    FLAG_PICKUP_FIERY_PATH_PP_UP,
    FLAG_PICKUP_FIERY_PATH_ULTRA_BALL,
    FLAG_PICKUP_FIERY_PATH_REVIVE,
    FLAG_PICKUP_CARGO_SHIP_WATER_STONE,
    FLAG_PICKUP_ABANDONED_SHIP_ROOM_B1F_TM_ICE_BEAM,
};

static const u16 sLegacyFlags[] =
{
    FLAG_MOSSDEEP_COLLECTED_ITEM_1,
    FLAG_MOSSDEEP_COLLECTED_ITEM_2,
    FLAG_MOSSDEEP_COLLECTED_ITEM_3,
    FLAG_MOSSDEEP_QUEST_COMPLETED,
    FLAG_HIDE_MOSSDEEP_COMET,
    FLAG_MOSSDEEP_CELEBI_RESCUED,
    FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER,
    FLAG_HIDE_MOSSDEEP_CELEBI_STATIC,
    FLAG_MOSSDEEP_PROLOGUE_COMPLETED,
    FLAG_MOSSDEEP_GRANDMA_DIALOGUE,
    FLAG_MOSSDEEP_GRANDPA_DIALOGUE,
    FLAG_HIDE_MOSSDEEP_RIVAL_MALE,
    FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE,
    FLAG_ITEM_ROUTE_104_QUIET_MINT,
    FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL,
    FLAG_ITEM_CARGO_SHIP_WATER_STONE,
};

static const struct
{
    u16 mapId;
    u8 localId;
    s16 x, y;
    u16 item;
    u16 flag;
    u16 oldFlag;
} sObjectPickups[] =
{
    {MAP_RUSTBORO_CITY, 17, 0, 46, ITEM_LIGHT_CLAY,
        FLAG_PICKUP_RUSTBORO_CITY_LIGHT_CLAY, FLAG_HIDDEN_ITEM_RUSTBORO_CITY_LIGHT_CLAY},
    {MAP_ROUTE104, 29, 37, 22, ITEM_QUIET_MINT,
        FLAG_PICKUP_ROUTE_104_QUIET_MINT, FLAG_ITEM_ROUTE_104_QUIET_MINT},
    {MAP_PETALBURG_CAVE, 4, 8, 21, ITEM_CALM_MINT,
        FLAG_PICKUP_PETALBURG_CAVE_QUIET_MINT, FLAG_ITEM_ROUTE_104_QUIET_MINT},
    {MAP_LITTLEROOT_COAST, 5, 14, 6, ITEM_ETHER,
        FLAG_PICKUP_LITTLEROOT_COAST_ETHER, FLAG_HIDDEN_ITEM_LITTLEROOT_COAST_ETHER},
    {MAP_LONELY_CAVE_B2, 3, 12, 5, ITEM_TM51,
        FLAG_PICKUP_LONELY_CAVE_B2_TM51, FLAG_HIDDEN_ITEM_LONELY_CAVE_B2_TM51},
    {MAP_CARGO_SHIP, 10, 18, 11, ITEM_WATER_STONE,
        FLAG_PICKUP_CARGO_SHIP_WATER_STONE, FLAG_ITEM_CARGO_SHIP_WATER_STONE},
    {MAP_ABANDONED_SHIP_ROOM_B1F, 1, 4, 4, ITEM_TM_ICE_BEAM,
        FLAG_PICKUP_ABANDONED_SHIP_ROOM_B1F_TM_ICE_BEAM, FLAG_ITEM_ABANDONED_SHIP_ROOMS_B1F_TM_ICE_BEAM},
};

static const struct
{
    u16 mapId;
    s16 x, y;
    u16 item;
    u16 flag;
} sHiddenPickups[] =
{
    {MAP_RUSTBORO_CITY, 36, 51, ITEM_POTION, FLAG_PICKUP_RUSTBORO_CITY_POTION},
    {MAP_LONELY_CAVE_B2, 17, 24, ITEM_RARE_CANDY, FLAG_PICKUP_LONELY_CAVE_B2_RARE_CANDY},
    {MAP_RUSTURF_GROVE, 33, 11, ITEM_SUPER_REPEL, FLAG_PICKUP_RUSTURF_GROVE_SUPER_REPEL},
    {MAP_GRANITE_CAVE_B1F, 16, 24, ITEM_RARE_CANDY, FLAG_PICKUP_GRANITE_CAVE_B1F_RARE_CANDY},
    {MAP_FIERY_PATH, 8, 11, ITEM_PROTEIN, FLAG_PICKUP_FIERY_PATH_PROTEIN},
    {MAP_FIERY_PATH, 5, 29, ITEM_PP_UP, FLAG_PICKUP_FIERY_PATH_PP_UP},
    {MAP_FIERY_PATH, 31, 3, ITEM_ULTRA_BALL, FLAG_PICKUP_FIERY_PATH_ULTRA_BALL},
    {MAP_FIERY_PATH, 7, 70, ITEM_REVIVE, FLAG_PICKUP_FIERY_PATH_REVIVE},
};

// Keep the fixture and byte snapshots off the test coroutine's IWRAM stack.
static EWRAM_DATA u8 sSavedLegacyFlags[NUM_FLAG_BYTES];
static EWRAM_DATA u8 sSavedCustomFlags[HLW_CUSTOM_FLAG_BYTES];
static EWRAM_DATA struct ObjectEventTemplate sSavedObjectTemplates[OBJECT_EVENT_TEMPLATES_COUNT];
static EWRAM_DATA u8 sExpectedLegacyFlags[NUM_FLAG_BYTES];
static EWRAM_DATA u8 sExpectedCustomFlags[HLW_CUSTOM_FLAG_BYTES];

static void SetUpPickupTest(void)
{
    memcpy(sSavedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sSavedLegacyFlags));
    memcpy(sSavedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sSavedCustomFlags));
    for (u32 i = 0; i < ARRAY_COUNT(sPickupFlags); i++)
        FlagClear(sPickupFlags[i]);
}

static void TearDownPickupTest(void)
{
    memcpy(gSaveBlock1Ptr->flags, sSavedLegacyFlags, sizeof(sSavedLegacyFlags));
    memcpy(gHlwSaveBlock4.customFlags, sSavedCustomFlags, sizeof(sSavedCustomFlags));
}

static const struct ObjectEventTemplate *GetPickupObject(u16 mapId, u8 localId)
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(MAP_GROUP(mapId), MAP_NUM(mapId));
    const struct ObjectEventTemplate *object = FindObjectEventTemplateByLocalId(
        localId, map->events->objectEvents, map->events->objectEventCount);

    EXPECT_NE(object, NULL);
    EXPECT_EQ(object->script, Common_EventScript_FindItem);
    return object;
}

static const struct BgEvent *GetHiddenPickup(u16 mapId, s16 x, s16 y)
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(mapId), MAP_NUM(mapId));

    for (u32 i = 0; i < map->events->bgEventCount; i++)
    {
        const struct BgEvent *event = &map->events->bgEvents[i];

        if (event->kind == BG_EVENT_HIDDEN_ITEM && event->x == x && event->y == y)
            return event;
    }
    EXPECT(FALSE);
    return NULL;
}

// Cover all-clear, all-set, and each old bit individually without enumerating
// every combination of unrelated story progress.
static void SetLegacyPattern(u32 pattern)
{
    for (u32 i = 0; i < ARRAY_COUNT(sLegacyFlags); i++)
    {
        if (pattern == 1 || pattern == i + 2)
            FlagSet(sLegacyFlags[i]);
        else
            FlagClear(sLegacyFlags[i]);
    }
}

TEST("Item pickup flags: released story and collection identities remain unchanged")
{
    EXPECT_EQ(FLAG_MOSSDEEP_COLLECTED_ITEM_1, 0x54);
    EXPECT_EQ(FLAG_PARTY_MENU_PC_ACCESS, 0x54);
    EXPECT_EQ(FLAG_MOSSDEEP_COLLECTED_ITEM_2, 0x55);
    EXPECT_EQ(FLAG_LUKA_WON_BATTLE, 0x55);
    for (u32 i = 0; i < 11; i++)
        EXPECT_EQ(sLegacyFlags[i + 2], 0x264 + i);
    EXPECT_EQ(FLAG_MOSSDEEP_CELEBI_RESCUED, 0x267);
    EXPECT_EQ(FLAG_HIDE_MOSSDEEP_CELEBI_STATIC, 0x269);
    EXPECT_EQ(FLAG_HIDDEN_ITEM_RUSTBORO_CITY_LIGHT_CLAY, 0x267);
    EXPECT_EQ(FLAG_HIDDEN_ITEM_RUSTBORO_CITY_POTION, 0x269);
    EXPECT_EQ(FLAG_ITEM_ROUTE_104_QUIET_MINT, 0x45B);
    EXPECT_EQ(FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL, 0x270);
    EXPECT_EQ(FLAG_HIDDEN_ITEM_FIERY_PATH_REVIVE, 0x270);
    EXPECT_EQ(FLAG_ITEM_CARGO_SHIP_WATER_STONE, 0x44A);
    EXPECT_EQ(FLAG_ITEM_ABANDONED_SHIP_ROOMS_B1F_TM_ICE_BEAM, 0x44A);
    EXPECT_EQ(ARRAY_COUNT(sObjectPickups) + ARRAY_COUNT(sHiddenPickups), ARRAY_COUNT(sPickupFlags));
    for (u32 i = 0; i < ARRAY_COUNT(sPickupFlags); i++)
    {
        EXPECT_EQ(sPickupFlags[i], 0x1033 + i);
        EXPECT_EQ(GetFlagPointer(sPickupFlags[i]),
            &gHlwSaveBlock4.customFlags[(sPickupFlags[i] - HLW_CUSTOM_FLAGS_START) / 8]);
    }
}

TEST("Item pickup flags: all corrected map pickups bind independent permanent bits")
{
    for (u32 i = 0; i < ARRAY_COUNT(sObjectPickups); i++)
    {
        const struct ObjectEventTemplate *object = GetPickupObject(
            sObjectPickups[i].mapId, sObjectPickups[i].localId);

        EXPECT_EQ(object->x, sObjectPickups[i].x);
        EXPECT_EQ(object->y, sObjectPickups[i].y);
        EXPECT_EQ(object->trainerRange_berryTreeId, sObjectPickups[i].item);
        EXPECT_EQ(object->flagId, sObjectPickups[i].flag);
    }
    for (u32 i = 0; i < ARRAY_COUNT(sHiddenPickups); i++)
    {
        const struct BgEvent *event = GetHiddenPickup(
            sHiddenPickups[i].mapId, sHiddenPickups[i].x, sHiddenPickups[i].y);

        EXPECT_EQ(event->bgUnion.hiddenItem.item, sHiddenPickups[i].item);
        // Background events encode an offset; the interaction restores the flag ID.
        EXPECT_EQ(event->bgUnion.hiddenItem.hiddenItemId + FLAG_HIDDEN_ITEMS_START,
            sHiddenPickups[i].flag);
    }
}

TEST("Petalburg Cave mint reward uses current map data even with a cached Quiet Mint")
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_PETALBURG_CAVE), MAP_NUM(MAP_PETALBURG_CAVE));
    const struct MapEvents *previousEvents = gMapHeader.events;
    struct ObjectEventTemplate *cached = &gSaveBlock1Ptr->objectEventTemplates[3];
    u16 previousItem = cached->trainerRange_berryTreeId;
    u16 previousLastTalked = gSpecialVar_LastTalked;
    u16 previousResult = gSpecialVar_Result;
    u16 previousAmount = gSpecialVar_0x8009;

    cached->trainerRange_berryTreeId = ITEM_QUIET_MINT;
    gMapHeader.events = map->events;
    gSpecialVar_LastTalked = 4;
    GetItemBallIdAndAmountFromTemplate();
    EXPECT_EQ(gSpecialVar_Result, ITEM_CALM_MINT);
    EXPECT_EQ(gSpecialVar_0x8009, 1);

    cached->trainerRange_berryTreeId = previousItem;
    gMapHeader.events = previousEvents;
    gSpecialVar_LastTalked = previousLastTalked;
    gSpecialVar_Result = previousResult;
    gSpecialVar_0x8009 = previousAmount;
}

TEST("Item pickup flags: independent legacy states leave uncollected pickups available")
{
    SetUpPickupTest();
    memcpy(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags));
    for (u32 pattern = 0; pattern < ARRAY_COUNT(sLegacyFlags) + 2; pattern++)
    {
        SetLegacyPattern(pattern);
        for (u32 i = 0; i < ARRAY_COUNT(sObjectPickups); i++)
        {
            const struct ObjectEventTemplate *object = GetPickupObject(
                sObjectPickups[i].mapId, sObjectPickups[i].localId);

            EXPECT_EQ(FlagGet(object->flagId), FALSE);
        }
        for (u32 i = 0; i < ARRAY_COUNT(sHiddenPickups); i++)
        {
            const struct BgEvent *event = GetHiddenPickup(
                sHiddenPickups[i].mapId, sHiddenPickups[i].x, sHiddenPickups[i].y);

            EXPECT_EQ(FlagGet(event->bgUnion.hiddenItem.hiddenItemId + FLAG_HIDDEN_ITEMS_START), FALSE);
        }
        EXPECT_EQ(memcmp(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags)), 0);
    }
    TearDownPickupTest();
}

TEST("Item pickup flags: collecting each pickup preserves story bits and the other pickups")
{
    SetUpPickupTest();
    for (u32 pattern = 0; pattern < ARRAY_COUNT(sLegacyFlags) + 2; pattern++)
    {
        SetLegacyPattern(pattern);
        memcpy(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags));
        for (u32 pickup = 0; pickup < ARRAY_COUNT(sPickupFlags); pickup++)
        {
            FlagSet(sPickupFlags[pickup]);
            for (u32 other = 0; other < ARRAY_COUNT(sPickupFlags); other++)
                EXPECT_EQ(FlagGet(sPickupFlags[other]), other == pickup);
            EXPECT_EQ(memcmp(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags)), 0);
            FlagClear(sPickupFlags[pickup]);
        }
    }
    TearDownPickupTest();
}

TEST("Item pickup flags: writes preserve adjacent wake and Nuzlocke history and all save flag bytes")
{
    u8 fill;
    PARAMETRIZE { fill = 0xA5; }
    PARAMETRIZE { fill = 0x5A; }
    SetUpPickupTest();
    memset(gHlwSaveBlock4.customFlags, fill, sizeof(gHlwSaveBlock4.customFlags));
    for (u16 flag = FLAG_NUZLOCKE_RUN_CONFIGURED; flag <= FLAG_PLAYER_AWOKE_IN_LITTLEROOT; flag++)
        FlagSet(flag);
    for (u32 i = 0; i < ARRAY_COUNT(sPickupFlags); i++)
        FlagClear(sPickupFlags[i]);
    memcpy(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags));
    memcpy(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags));

    for (u32 i = 0; i < ARRAY_COUNT(sPickupFlags); i++)
    {
        u16 flag = sPickupFlags[i];
        sExpectedCustomFlags[(flag - HLW_CUSTOM_FLAGS_START) / 8] |= 1 << (flag & 7);
        FlagSet(flag);
        EXPECT_EQ(memcmp(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags)), 0);
        EXPECT_EQ(memcmp(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags)), 0);
    }
    for (u32 i = 0; i < ARRAY_COUNT(sPickupFlags); i++)
    {
        u16 flag = sPickupFlags[i];
        sExpectedCustomFlags[(flag - HLW_CUSTOM_FLAGS_START) / 8] &= ~(1 << (flag & 7));
        FlagClear(flag);
        EXPECT_EQ(memcmp(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags)), 0);
    }
    for (u16 flag = FLAG_NUZLOCKE_RUN_CONFIGURED; flag <= FLAG_PLAYER_AWOKE_IN_LITTLEROOT; flag++)
        EXPECT_EQ(FlagGet(flag), TRUE);
    TearDownPickupTest();
}

TEST("Item pickup flags: Continue refreshes cached pickup flags without changing saved state")
{
    bool8 collected;
    PARAMETRIZE { collected = FALSE; }
    PARAMETRIZE { collected = TRUE; }
    const struct MapEvents *previousEvents = gMapHeader.events;
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;
    SetUpPickupTest();
    memcpy(sSavedObjectTemplates, saved, sizeof(sSavedObjectTemplates));
    for (u32 i = 0; i < ARRAY_COUNT(sLegacyFlags); i++)
        FlagSet(sLegacyFlags[i]);
    memcpy(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags));

    for (u32 i = 0; i < ARRAY_COUNT(sObjectPickups); i++)
    {
        const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
            MAP_GROUP(sObjectPickups[i].mapId), MAP_NUM(sObjectPickups[i].mapId));
        const struct ObjectEventTemplate *current = GetPickupObject(sObjectPickups[i].mapId, sObjectPickups[i].localId);
        struct ObjectEventTemplate expected, unrelated;

        memset(saved, 0, sizeof(gSaveBlock1Ptr->objectEventTemplates));
        saved[0] = *current;
        saved[0].x = -44;
        saved[0].y = 211;
        saved[0].movementType = 42;
        saved[0].graphicsId = 42;
        saved[0].flagId = sObjectPickups[i].oldFlag;
        saved[0].script = NULL;
        expected = saved[0];
        expected.flagId = current->flagId;
        expected.script = current->script;

        // Preserve an unrelated NPC's saved flag. The Ice Beam room has only
        // the pickup, so use an unmatched cached object there instead.
        if (map->events->objectEvents[0].localId != current->localId)
            saved[1] = map->events->objectEvents[0];
        else
            saved[1].localId = 255;
        saved[1].flagId = FLAG_HIDE_MOSSDEEP_CELEBI_STATIC;
        EXPECT_NE(saved[1].localId, current->localId);
        unrelated = saved[1];

        if (collected)
            FlagSet(current->flagId);
        else
            FlagClear(current->flagId);
        memcpy(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags));
        gMapHeader.events = map->events;
        LoadSaveblockObjEventScripts();

        EXPECT_EQ(memcmp(&saved[0], &expected, sizeof(expected)), 0);
        EXPECT_EQ(memcmp(&saved[1], &unrelated, sizeof(unrelated)), 0);
        EXPECT_EQ(FlagGet(saved[0].flagId), collected);
        EXPECT_EQ(memcmp(sExpectedLegacyFlags, gSaveBlock1Ptr->flags, sizeof(sExpectedLegacyFlags)), 0);
        EXPECT_EQ(memcmp(sExpectedCustomFlags, gHlwSaveBlock4.customFlags, sizeof(sExpectedCustomFlags)), 0);
    }
    gMapHeader.events = previousEvents;
    memcpy(saved, sSavedObjectTemplates, sizeof(sSavedObjectTemplates));
    TearDownPickupTest();
}
