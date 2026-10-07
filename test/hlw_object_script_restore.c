#include "global.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "event_scripts.h"
#include "malloc.h"
#include "overworld.h"
#include "trainer_hill.h"
#include "constants/layouts.h"
#include "constants/trainer_types.h"
#include "test/test.h"

static const u8 sCurrentScriptA[] = {1};
static const u8 sCurrentScriptB[] = {2};
static const u8 sStaleScript[] = {3};
static const struct ObjectEventTemplate sCurrentObjects[] =
{
    {.localId = 7, .script = sCurrentScriptA},
    {.localId = 2, .script = sCurrentScriptB},
    // Deliberately outside objectEventCount: the restore must not inspect it.
    {.localId = 99, .script = sStaleScript},
};
static const struct MapEvents sCurrentEvents =
{
    .objectEventCount = 2,
    .objectEvents = sCurrentObjects,
};
static const struct MapEvents sEmptyEvents = {0};

TEST("HLW object scripts reload by local ID within the current ROM table")
{
    const struct MapEvents *previousEvents = gMapHeader.events;
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;

    memset(saved, 0, sizeof(gSaveBlock1Ptr->objectEventTemplates));
    for (u32 i = 0; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
        saved[i].script = sStaleScript;
    saved[0].localId = 2;
    saved[0].x = 123;
    saved[0].graphicsId = 42;
    saved[0].flagId = 0x123;
    saved[1].localId = 7;
    saved[2].localId = 99;
    gMapHeader.events = &sCurrentEvents;

    LoadSaveblockObjEventScripts();
    EXPECT_EQ(saved[0].script, sCurrentScriptB);
    EXPECT_EQ(saved[1].script, sCurrentScriptA);
    EXPECT_EQ(saved[0].x, 123);
    EXPECT_EQ(saved[0].graphicsId, 42);
    EXPECT_EQ(saved[0].flagId, 0x123);
    for (u32 i = 2; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
        EXPECT_EQ(saved[i].script, NULL);
    gMapHeader.events = previousEvents;
}

TEST("HLW object scripts discard stale pointers when current map events are empty")
{
    const struct MapEvents *previousEvents = gMapHeader.events;
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;

    for (u32 pass = 0; pass < 2; pass++)
    {
        for (u32 i = 0; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
        {
            saved[i].localId = i + 1;
            saved[i].script = sStaleScript;
        }
        gMapHeader.events = pass == 0 ? NULL : &sEmptyEvents;
        LoadSaveblockObjEventScripts();
        for (u32 i = 0; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
            EXPECT_EQ(saved[i].script, NULL);
    }
    gMapHeader.events = previousEvents;
}

TEST("HLW object scripts refresh only the two working Magma grunts' saved sight metadata")
{
    struct RefreshState
    {
        struct MapHeader previousHeader;
        struct WarpData previousLocation;
        struct ObjectEventTemplate previousTemplates[OBJECT_EVENT_TEMPLATES_COUNT];
        struct ObjectEventTemplate expectedTemplates[OBJECT_EVENT_TEMPLATES_COUNT];
        struct ObjectEvent previousObjects[OBJECT_EVENTS_COUNT];
        struct ObjectEvent expectedObjects[OBJECT_EVENTS_COUNT];
    };
    const struct MapHeader *currentMap = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_GRANITE_CAVE_B2F), MAP_NUM(MAP_GRANITE_CAVE_B2F));
    const struct ObjectEventTemplate *current[3];
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;
    struct RefreshState *state;
    bool32 scriptsCorrect, templatesCorrect, objectsCorrect, completionUnchanged;
    bool32 previousCompletion = FlagGet(FLAG_NEW_MAGMA_GRUNTS);

    // Use the real ROM identities, including their newly wired shared script.
    ASSUME(currentMap->events != NULL);
    current[0] = FindObjectEventTemplateByLocalId(10, currentMap->events->objectEvents,
                                                currentMap->events->objectEventCount);
    current[1] = FindObjectEventTemplateByLocalId(11, currentMap->events->objectEvents,
                                                currentMap->events->objectEventCount);
    current[2] = FindObjectEventTemplateByLocalId(1, currentMap->events->objectEvents,
                                                currentMap->events->objectEventCount);
    for (u32 i = 0; i < ARRAY_COUNT(current); i++)
        ASSUME(current[i] != NULL);
    for (u32 i = 0; i < 2; i++)
    {
        ASSUME(current[i]->script == GraniteCave_B2F_EventScript_MagmaWorking);
        ASSUME(current[i]->trainerType == TRAINER_TYPE_NONE);
        ASSUME(current[i]->trainerRange_berryTreeId == 0);
    }

    // Keep the large snapshots in the heap, not the GBA's small test stack.
    state = Alloc(sizeof(*state));
    ASSUME(state != NULL);
    state->previousHeader = gMapHeader;
    state->previousLocation = gSaveBlock1Ptr->location;
    memcpy(state->previousTemplates, saved, sizeof(state->previousTemplates));
    memcpy(state->previousObjects, gObjectEvents, sizeof(state->previousObjects));
    gMapHeader = *currentMap;
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(MAP_GRANITE_CAVE_B2F);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(MAP_GRANITE_CAVE_B2F);
    memset(saved, 0, sizeof(state->expectedTemplates));
    memset(gObjectEvents, 0, sizeof(state->expectedObjects));

    for (u32 i = 0; i < ARRAY_COUNT(current); i++)
    {
        saved[i] = *current[i];
        saved[i].script = NULL;
        saved[i].trainerType = TRAINER_TYPE_NORMAL;
        saved[i].trainerRange_berryTreeId = 3;
        saved[i].x = 100 + i;
        saved[i].y = 200 + i;
        saved[i].graphicsId = 42 + i;
        saved[i].movementType = MOVEMENT_TYPE_FACE_LEFT;
        saved[i].flagId = 0x123 + i;
    }
    for (u32 i = 0; i < 2; i++)
    {
        gObjectEvents[i].active = TRUE;
        gObjectEvents[i].localId = current[i]->localId;
        gObjectEvents[i].mapGroup = MAP_GROUP(MAP_GRANITE_CAVE_B2F);
        gObjectEvents[i].mapNum = MAP_NUM(MAP_GRANITE_CAVE_B2F);
        gObjectEvents[i].trainerType = TRAINER_TYPE_NORMAL;
        gObjectEvents[i].trainerRange_berryTreeId = 3;
        gObjectEvents[i].graphicsId = 42 + i;
        gObjectEvents[i].movementType = MOVEMENT_TYPE_FACE_LEFT;
        gObjectEvents[i].initialCoords = (struct Coords16){10 + i, 20 + i};
        gObjectEvents[i].currentCoords = (struct Coords16){30 + i, 40 + i};
        gObjectEvents[i].previousCoords = (struct Coords16){50 + i, 60 + i};
        gObjectEvents[i].facingDirection = DIR_WEST;
        gObjectEvents[i].movementDirection = DIR_NORTH;
        gObjectEvents[i].facingDirectionLocked = TRUE;
        gObjectEvents[i].invisible = TRUE;
    }
    // Same local IDs must not match other maps, inactive slots, or other NPCs.
    gObjectEvents[2] = gObjectEvents[0];
    gObjectEvents[2].mapGroup ^= 1;
    gObjectEvents[3] = gObjectEvents[1];
    gObjectEvents[3].mapNum ^= 1;
    gObjectEvents[4] = gObjectEvents[0];
    gObjectEvents[4].active = FALSE;
    gObjectEvents[5] = gObjectEvents[0];
    gObjectEvents[5].localId = current[2]->localId;

    memcpy(state->expectedTemplates, saved, sizeof(state->expectedTemplates));
    memcpy(state->expectedObjects, gObjectEvents, sizeof(state->expectedObjects));
    for (u32 i = 0; i < ARRAY_COUNT(current); i++)
        state->expectedTemplates[i].script = current[i]->script;
    for (u32 i = 0; i < 2; i++)
    {
        state->expectedTemplates[i].trainerType = current[i]->trainerType;
        state->expectedTemplates[i].trainerRange_berryTreeId = current[i]->trainerRange_berryTreeId;
        state->expectedObjects[i].trainerType = current[i]->trainerType;
        state->expectedObjects[i].trainerRange_berryTreeId = current[i]->trainerRange_berryTreeId;
    }

    LoadSaveblockObjEventScripts();
    scriptsCorrect = saved[0].script == current[0]->script && saved[1].script == current[1]->script;
    templatesCorrect = memcmp(saved, state->expectedTemplates, sizeof(state->expectedTemplates)) == 0;
    objectsCorrect = memcmp(gObjectEvents, state->expectedObjects, sizeof(state->expectedObjects)) == 0;
    completionUnchanged = FlagGet(FLAG_NEW_MAGMA_GRUNTS) == previousCompletion;

    // Restore even before assertions, so a failure cannot leak this map state.
    memcpy(saved, state->previousTemplates, sizeof(state->previousTemplates));
    memcpy(gObjectEvents, state->previousObjects, sizeof(state->previousObjects));
    gMapHeader = state->previousHeader;
    gSaveBlock1Ptr->location = state->previousLocation;
    Free(state);
    EXPECT(scriptsCorrect);
    EXPECT(templatesCorrect);
    EXPECT(objectsCorrect);
    EXPECT(completionUnchanged);
}

TEST("HLW Trainer Hill floor scripts rebuild only the two valid trainer identities")
{
    static const u16 layouts[] =
    {
        LAYOUT_TRAINER_HILL_1F, LAYOUT_TRAINER_HILL_2F,
        LAYOUT_TRAINER_HILL_3F, LAYOUT_TRAINER_HILL_4F,
    };
    u16 previousLayout = gMapHeader.mapLayoutId;
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;

    for (u32 floor = 0; floor < ARRAY_COUNT(layouts); floor++)
    {
        memset(saved, 0, sizeof(gSaveBlock1Ptr->objectEventTemplates));
        for (u32 i = 0; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
            saved[i].script = sStaleScript;
        saved[0].localId = 2;
        saved[0].x = 42;
        saved[1].localId = 1;
        saved[2].localId = HILL_TRAINERS_PER_FLOOR + 1;
        saved[3].localId = 255;
        gMapHeader.mapLayoutId = layouts[floor];

        EXPECT_EQ(LoadTrainerHillFloorObjectEventScripts(), TRUE);
        EXPECT_EQ(saved[0].script, TrainerHill_EventScript_TrainerBattle);
        EXPECT_EQ(saved[1].script, TrainerHill_EventScript_TrainerBattle);
        EXPECT_EQ(saved[0].x, 42);
        for (u32 i = 2; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
            EXPECT_EQ(saved[i].script, NULL);
    }
    gMapHeader.mapLayoutId = previousLayout;
}

TEST("HLW Trainer Hill entrance and roof restore ordinary map scripts")
{
    static const u16 layouts[] = {LAYOUT_TRAINER_HILL_ENTRANCE, LAYOUT_TRAINER_HILL_ROOF};
    u16 previousLayout = gMapHeader.mapLayoutId;
    const struct MapEvents *previousEvents = gMapHeader.events;
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;

    gMapHeader.events = &sCurrentEvents;
    for (u32 map = 0; map < ARRAY_COUNT(layouts); map++)
    {
        memset(saved, 0, sizeof(gSaveBlock1Ptr->objectEventTemplates));
        for (u32 i = 0; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
            saved[i].script = sStaleScript;
        saved[0].localId = 2;
        saved[1].localId = 7;
        saved[2].localId = 99;
        gMapHeader.mapLayoutId = layouts[map];

        EXPECT_EQ(LoadTrainerHillFloorObjectEventScripts(), TRUE);
        EXPECT_EQ(saved[0].script, sCurrentScriptB);
        EXPECT_EQ(saved[1].script, sCurrentScriptA);
        for (u32 i = 2; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
            EXPECT_EQ(saved[i].script, NULL);
    }
    gMapHeader.mapLayoutId = previousLayout;
    gMapHeader.events = previousEvents;
}
