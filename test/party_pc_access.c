#include "global.h"
#include "event_data.h"
#include "overworld.h"
#include "pokemon.h"
#include "save.h"
#include "constants/flags.h"
#include "constants/maps.h"
#include "constants/party_menu.h"
#include "test/test.h"

static const u16 sChallengeMaps[] =
{
    MAP_EVER_GRANDE_CITY_SIDNEYS_ROOM,
    MAP_EVER_GRANDE_CITY_PHOEBES_ROOM,
    MAP_EVER_GRANDE_CITY_GLACIAS_ROOM,
    MAP_EVER_GRANDE_CITY_DRAKES_ROOM,
    MAP_EVER_GRANDE_CITY_CHAMPIONS_ROOM,
    MAP_EVER_GRANDE_CITY_HALL1,
    MAP_EVER_GRANDE_CITY_HALL2,
    MAP_EVER_GRANDE_CITY_HALL3,
    MAP_EVER_GRANDE_CITY_HALL4,
    MAP_EVER_GRANDE_CITY_HALL5,
};

static const u16 sAvailableMaps[] =
{
    MAP_EVER_GRANDE_CITY_POKEMON_LEAGUE_1F,
    MAP_EVER_GRANDE_CITY_POKEMON_LEAGUE_2F,
    MAP_EVER_GRANDE_CITY_HALL_OF_FAME,
    MAP_EVER_GRANDE_CITY,
    MAP_LITTLEROOT_TOWN,
    MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_1F,
    MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F,
    MAP_LITTLEROOT_TOWN_MAYS_HOUSE_1F,
    MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F,
    MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB,
    MAP_MOSSDEEP_CITY_POKEMON_CENTER_1F,
};

struct SavedAccessState
{
    struct WarpData location;
    u8 partyCount;
    u8 legacyFlagByte;
};

static struct SavedAccessState SaveAccessState(void)
{
    return (struct SavedAccessState)
    {
        .location = gSaveBlock1Ptr->location,
        .partyCount = gPlayerPartyCount,
        .legacyFlagByte = *GetFlagPointer(FLAG_PARTY_MENU_PC_ACCESS),
    };
}

static void RestoreAccessState(const struct SavedAccessState *saved)
{
    gSaveBlock1Ptr->location = saved->location;
    gPlayerPartyCount = saved->partyCount;
    *GetFlagPointer(FLAG_PARTY_MENU_PC_ACCESS) = saved->legacyFlagByte;
}

static void SetAccessMap(u16 map)
{
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(map);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(map);
}

static u32 HashBytes(const void *data, u32 size)
{
    const u8 *bytes = data;
    u32 hash = 2166136261;

    for (u32 i = 0; i < size; i++)
        hash = (hash ^ bytes[i]) * 16777619;
    return hash;
}

TEST("Party PC is blocked in every Elite Four and Champion room and connecting hall")
{
    struct SavedAccessState saved = SaveAccessState();

    for (u32 i = 0; i < ARRAY_COUNT(sChallengeMaps); i++)
    {
        SetAccessMap(sChallengeMaps[i]);
        EXPECT_EQ(Overworld_IsInEliteFourChallenge(), TRUE);
        EXPECT_EQ(PARTY_MENU_PC_ACCESS, FALSE);
    }
    RestoreAccessState(&saved);
}

TEST("Party PC is available in League lobbies Hall of Fame homes and ordinary maps")
{
    struct SavedAccessState saved = SaveAccessState();

    for (u32 i = 0; i < ARRAY_COUNT(sAvailableMaps); i++)
    {
        SetAccessMap(sAvailableMaps[i]);
        EXPECT_EQ(Overworld_IsInEliteFourChallenge(), FALSE);
        EXPECT_EQ(PARTY_MENU_PC_ACCESS, TRUE);
    }
    RestoreAccessState(&saved);
}

TEST("Party PC challenge detection requires the League map group and correct map numbers")
{
    struct SavedAccessState saved = SaveAccessState();
    static const s8 otherGroups[] =
    {
        MAP_GROUP(MAP_EVER_GRANDE_CITY_SIDNEYS_ROOM) - 1,
        MAP_GROUP(MAP_EVER_GRANDE_CITY_SIDNEYS_ROOM) + 1,
        0,
        -1,
    };
    static const s8 outsideNumbers[] = {-1, 10, 11, 14, 127};

    for (u32 group = 0; group < ARRAY_COUNT(otherGroups); group++)
    {
        for (u32 map = 0; map < ARRAY_COUNT(sChallengeMaps); map++)
        {
            SetAccessMap(sChallengeMaps[map]);
            gSaveBlock1Ptr->location.mapGroup = otherGroups[group];
            EXPECT_EQ(Overworld_IsInEliteFourChallenge(), FALSE);
            EXPECT_EQ(PARTY_MENU_PC_ACCESS, TRUE);
        }
    }
    for (u32 map = 0; map < ARRAY_COUNT(outsideNumbers); map++)
    {
        SetAccessMap(MAP_EVER_GRANDE_CITY_SIDNEYS_ROOM);
        gSaveBlock1Ptr->location.mapNum = outsideNumbers[map];
        EXPECT_EQ(Overworld_IsInEliteFourChallenge(), FALSE);
        EXPECT_EQ(PARTY_MENU_PC_ACCESS, TRUE);
    }
    RestoreAccessState(&saved);
}

TEST("Party PC ignores the old toggle flag regardless of party size")
{
    struct SavedAccessState saved = SaveAccessState();
    bool8 legacyEnabled;
    u8 partyCount;

    PARAMETRIZE { legacyEnabled = FALSE; partyCount = 0; }
    PARAMETRIZE { legacyEnabled = TRUE; partyCount = 0; }
    PARAMETRIZE { legacyEnabled = FALSE; partyCount = 1; }
    PARAMETRIZE { legacyEnabled = TRUE; partyCount = 1; }
    PARAMETRIZE { legacyEnabled = FALSE; partyCount = PARTY_SIZE; }
    PARAMETRIZE { legacyEnabled = TRUE; partyCount = PARTY_SIZE; }
    if (legacyEnabled)
        FlagSet(FLAG_PARTY_MENU_PC_ACCESS);
    else
        FlagClear(FLAG_PARTY_MENU_PC_ACCESS);
    gPlayerPartyCount = partyCount;

    for (u32 i = 0; i < ARRAY_COUNT(sAvailableMaps); i++)
    {
        SetAccessMap(sAvailableMaps[i]);
        EXPECT_EQ(PARTY_MENU_PC_ACCESS, TRUE);
        EXPECT_EQ(gPlayerPartyCount, partyCount);
        EXPECT_EQ(FlagGet(FLAG_PARTY_MENU_PC_ACCESS), legacyEnabled);
    }
    for (u32 i = 0; i < ARRAY_COUNT(sChallengeMaps); i++)
    {
        SetAccessMap(sChallengeMaps[i]);
        EXPECT_EQ(PARTY_MENU_PC_ACCESS, FALSE);
        EXPECT_EQ(gPlayerPartyCount, partyCount);
        EXPECT_EQ(FlagGet(FLAG_PARTY_MENU_PC_ACCESS), legacyEnabled);
    }
    RestoreAccessState(&saved);
}

TEST("Party PC policy reads leave legacy custom flags and Pokemon contents unchanged")
{
    struct SavedAccessState saved = SaveAccessState();
    u32 legacyHash, customHash, partyHash;
    bool8 legacyEnabled;

    PARAMETRIZE { legacyEnabled = FALSE; }
    PARAMETRIZE { legacyEnabled = TRUE; }
    if (legacyEnabled)
        FlagSet(FLAG_PARTY_MENU_PC_ACCESS);
    else
        FlagClear(FLAG_PARTY_MENU_PC_ACCESS);
    legacyHash = HashBytes(gSaveBlock1Ptr->flags, sizeof(gSaveBlock1Ptr->flags));
    customHash = HashBytes(gHlwSaveBlock4.customFlags, sizeof(gHlwSaveBlock4.customFlags));
    partyHash = HashBytes(gPlayerParty, sizeof(gPlayerParty));

    for (u32 count = 0; count <= 1; count++)
    {
        gPlayerPartyCount = count;
        for (u32 i = 0; i < ARRAY_COUNT(sAvailableMaps); i++)
        {
            SetAccessMap(sAvailableMaps[i]);
            EXPECT_EQ(PARTY_MENU_PC_ACCESS, TRUE);
            EXPECT_EQ(Overworld_IsInEliteFourChallenge(), FALSE);
        }
        for (u32 i = 0; i < ARRAY_COUNT(sChallengeMaps); i++)
        {
            SetAccessMap(sChallengeMaps[i]);
            EXPECT_EQ(PARTY_MENU_PC_ACCESS, FALSE);
            EXPECT_EQ(Overworld_IsInEliteFourChallenge(), TRUE);
        }
        EXPECT_EQ(gPlayerPartyCount, count);
        EXPECT_EQ(HashBytes(gSaveBlock1Ptr->flags, sizeof(gSaveBlock1Ptr->flags)), legacyHash);
        EXPECT_EQ(HashBytes(gHlwSaveBlock4.customFlags, sizeof(gHlwSaveBlock4.customFlags)), customHash);
        EXPECT_EQ(HashBytes(gPlayerParty, sizeof(gPlayerParty)), partyHash);
    }
    RestoreAccessState(&saved);
}

TEST("Party PC becomes available after leaving a challenge without any re-enable flag")
{
    struct SavedAccessState saved = SaveAccessState();
    static const u16 transitions[] =
    {
        MAP_EVER_GRANDE_CITY_POKEMON_LEAGUE_1F,
        MAP_EVER_GRANDE_CITY_HALL1,
        MAP_EVER_GRANDE_CITY_SIDNEYS_ROOM,
        MAP_EVER_GRANDE_CITY_CHAMPIONS_ROOM,
        MAP_EVER_GRANDE_CITY_HALL_OF_FAME,
        MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F,
        MAP_EVER_GRANDE_CITY_HALL1,
        MAP_EVER_GRANDE_CITY_POKEMON_LEAGUE_1F,
    };
    static const bool8 available[] = {TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE};

    FlagClear(FLAG_PARTY_MENU_PC_ACCESS);
    for (u32 i = 0; i < ARRAY_COUNT(transitions); i++)
    {
        SetAccessMap(transitions[i]);
        EXPECT_EQ(PARTY_MENU_PC_ACCESS, available[i]);
        EXPECT_EQ(FlagGet(FLAG_PARTY_MENU_PC_ACCESS), FALSE);
    }
    RestoreAccessState(&saved);
}

TEST("Party PC no longer depends on the released first Time Gear flag identity")
{
    struct SavedAccessState saved = SaveAccessState();

    EXPECT_EQ(FLAG_PARTY_MENU_PC_ACCESS, 0x54);
    EXPECT_EQ(FLAG_MOSSDEEP_COLLECTED_ITEM_1, 0x54);
    FlagClear(FLAG_MOSSDEEP_COLLECTED_ITEM_1);
    SetAccessMap(MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F);
    EXPECT_EQ(PARTY_MENU_PC_ACCESS, TRUE);
    EXPECT_EQ(FlagGet(FLAG_MOSSDEEP_COLLECTED_ITEM_1), FALSE);
    FlagSet(FLAG_MOSSDEEP_COLLECTED_ITEM_1);
    SetAccessMap(MAP_EVER_GRANDE_CITY_HALL1);
    EXPECT_EQ(PARTY_MENU_PC_ACCESS, FALSE);
    EXPECT_EQ(FlagGet(FLAG_MOSSDEEP_COLLECTED_ITEM_1), TRUE);
    RestoreAccessState(&saved);
}
