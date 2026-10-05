#include "global.h"
#include "event_object_movement.h"
#include "overworld.h"
#include "sprite.h"
#include "constants/event_objects.h"
#include "constants/event_object_movement.h"
#include "constants/trainer_types.h"
#include "test/test.h"

TEST("Route105-109 trainers: Darrin keeps his facing when spoken to from every direction")
{
    for (u32 direction = DIR_SOUTH; direction <= DIR_EAST; direction++)
    {
        struct ObjectEvent objectEvent =
        {
            .active = TRUE,
            .mapGroup = MAP_GROUP(MAP_ROUTE107),
            .mapNum = MAP_NUM(MAP_ROUTE107),
            .localId = LOCALID_ROUTE107_DARRIN,
            .facingDirection = DIR_SOUTH,
            .movementActionId = MOVEMENT_ACTION_NONE,
        };

        EXPECT(!ObjectEventFaceOppositeDirection(&objectEvent, direction));
        EXPECT(!objectEvent.heldMovementActive);
        EXPECT_EQ((u32)objectEvent.facingDirection, DIR_SOUTH);
        EXPECT_EQ(objectEvent.movementActionId, MOVEMENT_ACTION_NONE);
    }
}

TEST("Route105-109 trainers: the facing exception leaves other objects unchanged")
{
    struct Sprite savedSprite = gSprites[0];

    for (u32 differentField = 0; differentField < 3; differentField++)
    {
        struct ObjectEvent objectEvent =
        {
            .active = TRUE,
            .mapGroup = MAP_GROUP(MAP_ROUTE107),
            .mapNum = MAP_NUM(MAP_ROUTE107),
            .localId = LOCALID_ROUTE107_DARRIN,
            .spriteId = 0,
            .facingDirection = DIR_SOUTH,
            .movementActionId = MOVEMENT_ACTION_NONE,
        };

        if (differentField == 0)
            objectEvent.localId++;
        else if (differentField == 1)
            objectEvent.mapNum++;
        else
            objectEvent.mapGroup++;

        EXPECT(!ObjectEventFaceOppositeDirection(&objectEvent, DIR_EAST));
        EXPECT(objectEvent.heldMovementActive);
        EXPECT_EQ(objectEvent.movementActionId, MOVEMENT_ACTION_FACE_LEFT);
    }

    gSprites[0] = savedSprite;
}

TEST("Route105-109 trainers: Darrin retains his object slot, graphics and trainer script")
{
    extern const u8 Route107_EventScript_Darrin[];
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_ROUTE107), MAP_NUM(MAP_ROUTE107));
    const struct ObjectEventTemplate *object = &map->events->objectEvents[0];

    EXPECT_EQ(LOCALID_ROUTE107_DARRIN, 1);
    EXPECT_EQ(object->localId, LOCALID_ROUTE107_DARRIN);
    EXPECT_EQ(object->graphicsId, OBJ_EVENT_GFX_SPECIES(PALKIA));
    EXPECT_EQ(object->trainerType, TRAINER_TYPE_NORMAL);
    EXPECT_EQ(object->movementType, MOVEMENT_TYPE_WALK_SLOWLY_IN_PLACE_DOWN);
    EXPECT_EQ(object->script, Route107_EventScript_Darrin);
}
