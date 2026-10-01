#include "global.h"
#include "battle_setup.h"
#include "event_data.h"
#include "overworld.h"
#include "script.h"
#include "constants/map_event_ids.h"
#include "constants/maps.h"
#include "test/test.h"

extern const u8 SeabreezeShipping2F_EventScript_StartAccountantBattle[];

TEST("Seabreeze Shipping completes HQ without requiring Juan to be defeated")
{
    struct ScriptContext ctx;

    FlagClear(FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE);
    ClearTrainerFlag(TRAINER_ACCOUNTANT_JUAN);
    // Completion is intentional before battle, so a loss still allows progression.
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_TRAINERBATTLE,
        SeabreezeShipping2F_EventScript_StartAccountantBattle, &ctx));
    EXPECT_EQ(FlagGet(FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE), TRUE);
    EXPECT_EQ(HasTrainerBeenFought(TRAINER_ACCOUNTANT_JUAN), FALSE);
}

TEST("Seabreeze Shipping completion also works when Juan has been defeated")
{
    struct ScriptContext ctx;

    FlagClear(FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE);
    SetTrainerFlag(TRAINER_ACCOUNTANT_JUAN);
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_TRAINERBATTLE,
        SeabreezeShipping2F_EventScript_StartAccountantBattle, &ctx));
    EXPECT_EQ(FlagGet(FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE), TRUE);
}

TEST("Seabreeze Shipping completion hides all three 1F Aqua grunts only")
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_SEABREEZE_SHIPPING1F), MAP_NUM(MAP_SEABREEZE_SHIPPING1F));
    u32 gruntCount = 0;

    for (u32 i = 0; i < map->events->objectEventCount; i++)
    {
        const struct ObjectEventTemplate *object = &map->events->objectEvents[i];

        if (object->localId == LOCALID_SEABREEZE_SHIPPING1F_GRUNT_1
         || object->localId == LOCALID_SEABREEZE_SHIPPING1F_GRUNT_2
         || object->localId == LOCALID_SEABREEZE_SHIPPING1F_GRUNT_3)
        {
            EXPECT_EQ(object->flagId, FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE);
            FlagClear(FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE);
            EXPECT_EQ(FlagGet(object->flagId), FALSE);
            FlagSet(FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE);
            EXPECT_EQ(FlagGet(object->flagId), TRUE);
            gruntCount++;
        }
        else
        {
            EXPECT_NE(object->flagId, FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE);
        }
    }
    EXPECT_EQ(gruntCount, 3);
}
