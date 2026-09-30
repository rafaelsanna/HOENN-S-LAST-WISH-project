#include "global.h"
#include "event_data.h"
#include "follower_npc.h"
#include "hidden_grotto.h"
#include "item.h"
#include "load_save.h"
#include "pokedex.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "wild_encounter.h"
#include "test/test.h"

extern const u8 MtPyre_1F_EventScript_Teddiursa_Follower[];

static const u16 sExpectedBagCapacities[POCKETS_COUNT] =
{
    [POCKET_ITEMS] = 160,
    [POCKET_MEDICINE] = 64,
    [POCKET_KEY_ITEMS] = 64,
    [POCKET_POKE_BALLS] = 32,
    [POCKET_TM_HM] = 128,
    [POCKET_BERRIES] = 72,
};

static void FillEveryBagSlot(void)
{
    for (u32 pocket = 0; pocket < POCKETS_COUNT; pocket++)
        for (u32 slot = 0; slot < sExpectedBagCapacities[pocket]; slot++)
            BagPocket_SetSlotItemIdAndCount(&gBagPockets[pocket], slot, ITEM_NUGGET, slot + 1 + pocket);
}

TEST("HLW bag segments retain every slot through cache copies and rekeying")
{
    gSaveBlock2Ptr->encryptionKey = 0x12345678;
    ClearBag();
    FillEveryBagSlot();
    for (u32 pocket = 0; pocket < POCKETS_COUNT; pocket++)
        EXPECT_EQ((u32)gBagPockets[pocket].capacity, sExpectedBagCapacities[pocket]);

    EXPECT_EQ(gPokemonStoragePtr->bagSupplement.keyItemsExtra[0].itemId, ITEM_NUGGET);
    EXPECT_EQ(gPokemonStoragePtr->bagSupplement.TMsHMsExtra[22].itemId, ITEM_NUGGET);
    EXPECT_EQ(gPokemonStoragePtr->bagSupplement.berriesExtra[25].itemId, ITEM_NUGGET);

    ApplyNewEncryptionKeyToBagItems(0xABCDEF12);
    gSaveBlock2Ptr->encryptionKey = 0xABCDEF12;
    LoadPlayerBag();
    ClearBag();
    gSaveBlock2Ptr->encryptionKey = 0xFEED1234;
    SavePlayerBag();

    for (u32 pocket = 0; pocket < POCKETS_COUNT; pocket++)
        for (u32 slot = 0; slot < sExpectedBagCapacities[pocket]; slot++)
        {
            EXPECT_EQ(GetBagItemId(pocket, slot), ITEM_NUGGET);
            EXPECT_EQ(GetBagItemQuantity(pocket, slot), slot + 1 + pocket);
        }
}

TEST("HLW bag clearing and out-of-range slots preserve adjacent save bytes")
{
    u8 *afterBag = (u8 *)&gSaveBlock1Ptr->bag + sizeof(gSaveBlock1Ptr->bag);
    u8 *afterExpansion = (u8 *)&gSaveBlock1Ptr->bagExpansion + sizeof(gSaveBlock1Ptr->bagExpansion);
    u8 *afterSupplement = (u8 *)&gPokemonStoragePtr->bagSupplement + sizeof(gPokemonStoragePtr->bagSupplement);

    gSaveBlock2Ptr->encryptionKey = 0x8372;
    memset(afterBag, 0xA1, 16);
    memset(afterExpansion, 0xB2, 20);
    memset(afterSupplement, 0xC3, 16);
    ClearBag();
    for (u32 pocket = 0; pocket < POCKETS_COUNT; pocket++)
    {
        BagPocket_SetSlotItemIdAndCount(&gBagPockets[pocket], sExpectedBagCapacities[pocket], ITEM_NUGGET, 99);
        for (u32 slot = 0; slot < sExpectedBagCapacities[pocket]; slot++)
        {
            EXPECT_EQ(GetBagItemId(pocket, slot), ITEM_NONE);
            EXPECT_EQ(GetBagItemQuantity(pocket, slot), 0);
        }
    }
    for (u32 i = 0; i < 16; i++)
    {
        EXPECT_EQ(afterBag[i], 0xA1);
        EXPECT_EQ(afterSupplement[i], 0xC3);
    }
    for (u32 i = 0; i < 20; i++)
        EXPECT_EQ(afterExpansion[i], 0xB2);
}

TEST("HLW encounter identities cover every current map without grouping different floors")
{
    for (u32 i = 0; gWildMonHeaders[i].mapGroup != MAP_GROUP(MAP_UNDEFINED); i++)
    {
        u16 map = (gWildMonHeaders[i].mapGroup << 8) | gWildMonHeaders[i].mapNum;
        EXPECT(GetPersistentEncounterId(map, 0) < ENCOUNTER_ID_CAPACITY);
    }
    EXPECT_EQ(GetPersistentEncounterId(MAP_ROUTE101, 0), 0);
    EXPECT_EQ(GetPersistentEncounterId(MAP_MT_PYRE_CAVE, 0), 150);
    EXPECT(GetPersistentEncounterId(MAP_GRANITE_CAVE_1F, 0) != GetPersistentEncounterId(MAP_GRANITE_CAVE_B1F, 0));
    for (u32 variant = 0; variant < NUM_ALTERING_CAVE_TABLES; variant++)
        EXPECT_EQ(GetPersistentEncounterId(MAP_ALTERING_CAVE, variant), 114 + variant);
    EXPECT_EQ(GetPersistentEncounterId(MAP_UNDEFINED, 0), ENCOUNTER_ID_NONE);
    EXPECT_EQ(GetPersistentEncounterId(MAP_ROUTE101, 1), ENCOUNTER_ID_NONE);
}

TEST("HLW grotto state uses stable IDs and the 64-slot extension bank")
{
    EXPECT_EQ(GetHiddenGrottoIdForMap(MAP_PETALBURG_WOODS_EAST_GROTTO), 0);
    EXPECT_EQ(GetHiddenGrottoIdForMap(MAP_ROUTE110GROTTO), 10);
    EXPECT_EQ(GetHiddenGrottoIdForMap(MAP_PETALBURG_CITY), NUM_HIDDEN_GROTTOES);
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(MAP_ROUTE110GROTTO);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(MAP_ROUTE110GROTTO);
    memset(gHlwSaveBlock4.grottoStates, 0xA5, sizeof(gHlwSaveBlock4.grottoStates));
    ResetHiddenGrottoes();
    EXPECT_EQ(gHlwSaveBlock4.grottoStates[63], 0);
    HiddenGrotto_EmptyCurrent();
    EXPECT_EQ(gHlwSaveBlock4.grottoStates[HIDDEN_GROTTO_ID_ROUTE110], HIDDEN_GROTTO_EMPTY << 13);
    HiddenGrotto_GetCurrentContentType();
    EXPECT_EQ(gSpecialVar_Result, HIDDEN_GROTTO_EMPTY);
}

TEST("HLW follower scripts reconstruct from stable IDs and reject invalid identities")
{
    ClearFollowerNPCData();
    gSaveBlock3Ptr->NPCfollower.inProgress = TRUE;
    gSaveBlock3Ptr->NPCfollower.customScriptId = FOLLOWER_SCRIPT_TEDDIURSA;
    EXPECT(GetFollowerNPCScriptPointer() == MtPyre_1F_EventScript_Teddiursa_Follower);
    gSaveBlock3Ptr->NPCfollower.customScriptId = 255;
    EXPECT(GetFollowerNPCScriptPointer() == NULL);
    gSaveBlock3Ptr->NPCfollower.customScriptId = FOLLOWER_SCRIPT_NONE;
    gSaveBlock3Ptr->NPCfollower.originMap = MAP_UNDEFINED;
    gSaveBlock3Ptr->NPCfollower.originLocalId = 1;
    EXPECT(GetFollowerNPCScriptPointer() == NULL);
    ClearFollowerNPCData();
}

TEST("HLW Pokedex rejects zero and out-of-range numbers without touching adjacent fields")
{
    memset(gSaveBlock3Ptr->dexSeen, 0, sizeof(gSaveBlock3Ptr->dexSeen));
    memset(gSaveBlock3Ptr->dexCaught, 0, sizeof(gSaveBlock3Ptr->dexCaught));
    gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags[0] = 0x5A;
    GetSetPokedexFlag(0, FLAG_SET_CAUGHT);
    GetSetPokedexFlag(65535, FLAG_SET_CAUGHT);
    GetSetPokedexFlag(NATIONAL_DEX_COUNT, FLAG_SET_CAUGHT);
    EXPECT_EQ(GetSetPokedexFlag(NATIONAL_DEX_COUNT, FLAG_GET_CAUGHT), TRUE);
    EXPECT_EQ(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags[0], 0x5A);
    EXPECT_EQ(gSaveBlock3Ptr->dexCaught[0], 0);
}
