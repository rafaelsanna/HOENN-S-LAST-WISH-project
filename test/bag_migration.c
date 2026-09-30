#include "global.h"
#include "item.h"
#include "test/test.h"

static const u16 sMovedMedicineItems[] =
{
    ITEM_REVIVE,
    ITEM_MAX_REVIVE,
    ITEM_REVIVAL_HERB,
    ITEM_BERRY_JUICE,
    ITEM_SWEET_HEART,
    ITEM_HP_UP,
    ITEM_PROTEIN,
    ITEM_IRON,
    ITEM_CALCIUM,
    ITEM_ZINC,
    ITEM_CARBOS,
    ITEM_PP_UP,
    ITEM_PP_MAX,
};

static void PrepareBag(void)
{
    gSaveBlock2Ptr->encryptionKey = 0x1234ABCD;
    SetBagItemsPointers();
    ClearBag();
}

TEST("Medicine pocket includes the newly assigned recovery items and vitamins")
{
    for (u32 i = 0; i < ARRAY_COUNT(sMovedMedicineItems); i++)
        EXPECT_EQ(GetItemPocket(sMovedMedicineItems[i]), POCKET_MEDICINE);
}

TEST("Bag migration moves encrypted medicine from both Items storage ranges without changing other pockets")
{
    PrepareBag();
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], 0, ITEM_NUGGET, 3);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], BAG_LEGACY_ITEMS_COUNT - 1, ITEM_MOON_STONE, 4);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], 0, ITEM_POTION, 12);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_POKE_BALLS], BAG_LEGACY_POKEBALLS_COUNT, ITEM_GREAT_BALL, 9);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_TM_HM], BAG_LEGACY_TMHM_COUNT, ITEM_TM01, 2);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_KEY_ITEMS], 0, ITEM_MACH_BIKE, 1);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_BERRIES], 0, ITEM_ORAN_BERRY, 8);
    gSaveBlock1Ptr->pcItems[0] = (struct ItemSlot){ITEM_REVIVE, 17};

    for (u32 i = 0; i < ARRAY_COUNT(sMovedMedicineItems); i++)
    {
        u32 slot = i < 7 ? i + 1 : BAG_LEGACY_ITEMS_COUNT + i - 7;
        BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], slot, sMovedMedicineItems[i], i + 2);
    }

    // A save can already have a stack in the newly assigned pocket.
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], 1, ITEM_PROTEIN, 30);
    MigrateBagExpansion();
    MigrateBagExpansion(); // A subsequent load must not duplicate items.

    for (u32 i = 0; i < ARRAY_COUNT(sMovedMedicineItems); i++)
        EXPECT_EQ(CountTotalItemQuantityInBag(sMovedMedicineItems[i]), i + 2 + (sMovedMedicineItems[i] == ITEM_PROTEIN ? 30 : 0));
    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 0), ITEM_NUGGET);
    EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, 0), 3);
    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 1), ITEM_MOON_STONE);
    EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, 1), 4);
    for (u32 i = 2; i < BAG_ITEMS_COUNT; i++)
        EXPECT_EQ(GetBagItemId(POCKET_ITEMS, i), ITEM_NONE);
    EXPECT_EQ(CountTotalItemQuantityInBag(ITEM_POTION), 12);
    EXPECT_EQ(GetBagItemId(POCKET_POKE_BALLS, BAG_LEGACY_POKEBALLS_COUNT), ITEM_GREAT_BALL);
    EXPECT_EQ(GetBagItemQuantity(POCKET_POKE_BALLS, BAG_LEGACY_POKEBALLS_COUNT), 9);
    EXPECT_EQ(GetBagItemId(POCKET_TM_HM, BAG_LEGACY_TMHM_COUNT), ITEM_TM01);
    EXPECT_EQ(GetBagItemQuantity(POCKET_TM_HM, BAG_LEGACY_TMHM_COUNT), 2);
    EXPECT_EQ(GetBagItemId(POCKET_KEY_ITEMS, 0), ITEM_MACH_BIKE);
    EXPECT_EQ(GetBagItemQuantity(POCKET_KEY_ITEMS, 0), 1);
    EXPECT_EQ(GetBagItemId(POCKET_BERRIES, 0), ITEM_ORAN_BERRY);
    EXPECT_EQ(GetBagItemQuantity(POCKET_BERRIES, 0), 8);
    EXPECT_EQ(gSaveBlock1Ptr->pcItems[0].itemId, ITEM_REVIVE);
    EXPECT_EQ(gSaveBlock1Ptr->pcItems[0].quantity, 17);
    EXPECT_EQ(gSaveBlock1Ptr->bagExpansion.version, BAG_EXPANSION_VERSION);
    EXPECT_EQ(gSaveBlock1Ptr->bagExpansion.size, sizeof(struct BagExpansionSave));
}

TEST("Medicine migration merges existing stacks before empty slots and respects the stack limit")
{
    PrepareBag();
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], 20, ITEM_PROTEIN, MAX_BAG_ITEM_CAPACITY - 4);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], 0, ITEM_PROTEIN, 10);

    MigrateBagExpansion();

    EXPECT_EQ(GetBagItemQuantity(POCKET_MEDICINE, 20), MAX_BAG_ITEM_CAPACITY);
    EXPECT_EQ(GetBagItemId(POCKET_MEDICINE, 0), ITEM_PROTEIN);
    EXPECT_EQ(GetBagItemQuantity(POCKET_MEDICINE, 0), 6);
    EXPECT_EQ(CountTotalItemQuantityInBag(ITEM_PROTEIN), MAX_BAG_ITEM_CAPACITY + 6);
    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 0), ITEM_NONE);
}

TEST("Full Medicine preserves the old stack and retries after space becomes available")
{
    PrepareBag();
    for (u32 i = 0; i < BAG_MEDICINE_COUNT; i++)
        BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], i, ITEM_POTION, MAX_BAG_ITEM_CAPACITY);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], 0, ITEM_REVIVE, 7);

    MigrateBagExpansion();

    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 0), ITEM_REVIVE);
    EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, 0), 7);
    EXPECT_EQ(CountTotalItemQuantityInBag(ITEM_REVIVE), 0);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], 7, ITEM_NONE, 0);

    MigrateBagExpansion();

    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 0), ITEM_NONE);
    EXPECT_EQ(GetBagItemId(POCKET_MEDICINE, 7), ITEM_REVIVE);
    EXPECT_EQ(GetBagItemQuantity(POCKET_MEDICINE, 7), 7);
}

TEST("Full Medicine can still merge a migrated stack without an empty slot")
{
    PrepareBag();
    for (u32 i = 0; i < BAG_MEDICINE_COUNT; i++)
        BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], i, ITEM_POTION, MAX_BAG_ITEM_CAPACITY);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], 55, ITEM_REVIVE, MAX_BAG_ITEM_CAPACITY - 4);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], 0, ITEM_REVIVE, 4);

    MigrateBagExpansion();

    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 0), ITEM_NONE);
    EXPECT_EQ(GetBagItemQuantity(POCKET_MEDICINE, 55), MAX_BAG_ITEM_CAPACITY);
}

TEST("Medicine migration leaves both stacks unchanged if only part of the quantity would fit")
{
    PrepareBag();
    for (u32 i = 0; i < BAG_MEDICINE_COUNT; i++)
        BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], i, ITEM_POTION, MAX_BAG_ITEM_CAPACITY);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], 55, ITEM_REVIVE, MAX_BAG_ITEM_CAPACITY - 4);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], 0, ITEM_REVIVE, 5);

    MigrateBagExpansion();
    MigrateBagExpansion();

    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 0), ITEM_REVIVE);
    EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, 0), 5);
    EXPECT_EQ(GetBagItemQuantity(POCKET_MEDICINE, 55), MAX_BAG_ITEM_CAPACITY - 4);
}

TEST("Unrecognized bag layouts are preserved for the save manager to reject")
{
    PrepareBag();
    memset(&gSaveBlock1Ptr->bagExpansion, 0xA5, sizeof(gSaveBlock1Ptr->bagExpansion));
    for (u32 i = 0; i < ARRAY_COUNT(sMovedMedicineItems); i++)
        BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], i, sMovedMedicineItems[i], i + 1);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], 20, ITEM_NUGGET, 3);

    MigrateBagExpansion();
    MigrateBagExpansion();

    for (u32 i = 0; i < ARRAY_COUNT(sMovedMedicineItems); i++)
    {
        EXPECT_EQ(GetBagItemId(POCKET_ITEMS, i), sMovedMedicineItems[i]);
        EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, i), i + 1);
    }
    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, 20), ITEM_NUGGET);
    EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, 20), 3);
    for (u32 i = 0; i < sizeof(gSaveBlock1Ptr->bagExpansion); i++)
        EXPECT_EQ(((u8 *)&gSaveBlock1Ptr->bagExpansion)[i], 0xA5);
}

TEST("Unsupported bag versions cannot clear existing expanded pockets")
{
    PrepareBag();
    gSaveBlock1Ptr->bagExpansion.version = BAG_EXPANSION_VERSION + 1;
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_ITEMS], BAG_ITEMS_COUNT - 1, ITEM_NUGGET, 15);
    BagPocket_SetSlotItemIdAndCount(&gBagPockets[POCKET_MEDICINE], BAG_MEDICINE_COUNT - 1, ITEM_POTION, 27);

    MigrateBagExpansion();
    MigrateBagExpansion();

    EXPECT_EQ(GetBagItemId(POCKET_ITEMS, BAG_ITEMS_COUNT - 1), ITEM_NUGGET);
    EXPECT_EQ(GetBagItemQuantity(POCKET_ITEMS, BAG_ITEMS_COUNT - 1), 15);
    EXPECT_EQ(GetBagItemQuantity(POCKET_MEDICINE, BAG_MEDICINE_COUNT - 1), 27);
    EXPECT_EQ(gSaveBlock1Ptr->bagExpansion.version, BAG_EXPANSION_VERSION + 1);
}
