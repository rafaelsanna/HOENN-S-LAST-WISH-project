#include "global.h"
#include "event_scripts.h"
#include "overworld.h"
#include "trainer_hill.h"
#include "constants/layouts.h"
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
