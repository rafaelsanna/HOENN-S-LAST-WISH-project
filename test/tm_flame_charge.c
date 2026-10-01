#include "global.h"
#include "event_data.h"
#include "item.h"
#include "party_menu.h"
#include "pokemon.h"
#include "test/overworld_script.h"
#include "test/test.h"

TEST("Flame Charge TM80 has a complete item and move mapping")
{
    EXPECT_EQ(ITEM_TM_FLAME_CHARGE, ITEM_TM80);
    EXPECT_EQ(GetItemPocket(ITEM_TM_FLAME_CHARGE), POCKET_TM_HM);
    EXPECT_EQ(GetItemTMHMIndex(ITEM_TM_FLAME_CHARGE), 80);
    EXPECT_EQ(GetItemTMHMMoveId(ITEM_TM_FLAME_CHARGE), MOVE_FLAME_CHARGE);
    EXPECT_EQ(ItemIdToBattleMoveId(ITEM_TM_FLAME_CHARGE), MOVE_FLAME_CHARGE);
    EXPECT_EQ(GetItemSecondaryId(ITEM_TM_FLAME_CHARGE), MOVE_FLAME_CHARGE);
    EXPECT_EQ(GetTMHMItemId(GetItemTMHMIndex(ITEM_TM_FLAME_CHARGE)), ITEM_TM_FLAME_CHARGE);
    EXPECT_EQ(GetTMHMMoveId(GetItemTMHMIndex(ITEM_TM_FLAME_CHARGE)), MOVE_FLAME_CHARGE);
}

TEST("Flame Charge TM80 preserves existing TMs, HMs, and legacy Foul Play")
{
    EXPECT_EQ(ITEM_TM_FIERY_DANCE, ITEM_TM50);
    EXPECT_EQ(ITEM_TM_WILL_O_WISP, ITEM_TM61);
    EXPECT_EQ(ITEM_TM_FIRE_PUNCH, ITEM_TM65);
    EXPECT_EQ(ITEM_TM_FOUL_PLAY, ITEM_TM79);
    EXPECT_EQ(ItemIdToBattleMoveId(ITEM_TM_FOUL_PLAY), MOVE_FOUL_PLAY);
    EXPECT_EQ(ItemIdToBattleMoveId(ITEM_TM81), MOVE_FOUL_PLAY);
    EXPECT_EQ(GetItemTMHMIndex(ITEM_TM81), GetItemTMHMIndex(ITEM_TM_FOUL_PLAY));
    EXPECT_EQ(ITEM_HM_CUT, ITEM_HM01);
    EXPECT_EQ(ItemIdToBattleMoveId(ITEM_HM_CUT), MOVE_CUT);
    EXPECT_EQ(GetItemTMHMIndex(ITEM_HM_CUT), NUM_TECHNICAL_MACHINES + 1);
    EXPECT_EQ(GetTMHMItemId(GetItemTMHMIndex(ITEM_HM_CUT)), ITEM_HM_CUT);
    EXPECT_EQ(ItemIdToBattleMoveId(ITEM_HM_DIVE), MOVE_DIVE);
}

TEST("Flame Charge TM80 uses species teachable compatibility")
{
    EXPECT_EQ(CanLearnTeachableMove(SPECIES_CHARIZARD, MOVE_FLAME_CHARGE), TRUE);
    EXPECT_EQ(CanLearnTeachableMove(SPECIES_TORCHIC, MOVE_FLAME_CHARGE), TRUE);
    EXPECT_EQ(CanLearnTeachableMove(SPECIES_MEW, MOVE_FLAME_CHARGE), TRUE);
    EXPECT_EQ(CanLearnTeachableMove(SPECIES_MAGIKARP, MOVE_FLAME_CHARGE), FALSE);
    EXPECT_EQ(CanLearnTeachableMove(SPECIES_EGG, MOVE_FLAME_CHARGE), FALSE);
}

TEST("Flame Charge TM80 can be received through an overworld item script")
{
    // Inline script assembly needs the numeric macro, not the C enum alias.
    RUN_OVERWORLD_SCRIPT(
        additem ITEM_TM80;
    );

    EXPECT_EQ(CheckBagHasItem(ITEM_TM_FLAME_CHARGE, 1), TRUE);
}

TEST("Flame Charge TM80 preserves the Mt Chimney pickup completion bit")
{
    EXPECT_EQ(FLAG_ITEM_MT_CHIMNEY_TM_FLAME_CHARGE, FLAG_ITEM_MT_CHIMNEY_TM_FIRE_PUNCH);
    EXPECT_EQ(FLAG_ITEM_MT_CHIMNEY_TM_FLAME_CHARGE, 0x493);
}
