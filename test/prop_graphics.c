#include "global.h"
#include "event_object_movement.h"
#include "malloc.h"
#include "overworld.h"
#include "pokemon.h"
#include "save.h"
#include "sprite.h"
#include "constants/event_objects.h"
#include "constants/event_object_movement.h"
#include "test/test.h"

struct PropGraphicsFixture
{
    u16 map;
    u8 localId;
    u16 oldGraphics;
    u16 newGraphics;
};

#define PROP(map_, local_, old_, new_) \
    { MAP_##map_, local_, OBJ_EVENT_GFX_SPECIES(old_), OBJ_EVENT_GFX_SPECIES(new_) }

// Map/local identities are from the prop placements before their slots moved.
// Reordering saved templates must not change which object gets migrated.
static const struct PropGraphicsFixture sProps[] =
{
    PROP(AURORAGROVE, LOCALID_AURORA_GROVE_PORTAL, KYUREM, PAWMO),
    PROP(ABANDONED_SHIP_ROOMS_AQUA, 5, ARCHEOPS, FIDOUGH),
    PROP(DEWDROP_JUNGLE, 2, RESHIRAM, SMOLIV),
    PROP(DEWDROP_JUNGLE, 5, RESHIRAM, SMOLIV),
    PROP(DEWFORD_TOWN_HALL, 13, POLTEAGEIST, TAROUNTULA),
    PROP(LAVARIDGE_TOWN_GYM_1F, 15, MELMETAL, REVAVROOM),
    PROP(LITTLEROOT_COAST2, 2, SOLGALEO, BOMBIRDIER),
    PROP(LITTLEROOT_COAST2, 3, SOLGALEO, BOMBIRDIER),
    PROP(LITTLEROOT_COAST2, 4, SOLGALEO, BOMBIRDIER),
    PROP(LITTLEROOT_TOWN_NEW_HOUSE, 5, POLTEAGEIST, TAROUNTULA),
    PROP(MOSSDEEP01, LOCALID_TIME_GEAR_1, CORVIKNIGHT, VAROOM),
    PROP(MOSSDEEP01, LOCALID_TIME_GEAR_2, CORVIKNIGHT, VAROOM),
    PROP(MOSSDEEP01, LOCALID_TIME_GEAR_3, CORVIKNIGHT, VAROOM),
    PROP(MOSSDEEP01, LOCALID_MILLENNIUM_COMET, KORAIDON, PAWMI),
    PROP(MOSSDEEP01, 7, XERNEAS, CUFANT),
    PROP(MOSSDEEP01, 11, MIRAIDON, STONJOURNER),
    PROP(MOSSDEEP01, 12, MIRAIDON, STONJOURNER),
    PROP(MOSSDEEP01, LOCALID_WAILORD_BLOCKER, ZEKROM, COPPERAJAH),
    PROP(MOSSDEEP01, 33, ACCELGOR, COALOSSAL),
    PROP(MOSSDEEP01, 39, MIRAIDON, STONJOURNER),
    PROP(MOSSDEEP01, 40, MIRAIDON, STONJOURNER),
    PROP(MT_PYRE_SUMMIT, LOCALID_MT_PYRE_RELIC, CORVIKNIGHT, VAROOM),
    PROP(NIGHTMARE_PETALBURG, LOCALID_NIGHTMARE_PETALBURG_CORVIKNIGHT, CORVIKNIGHT, VAROOM),
    PROP(PHOENIXCAVE, 1, KYUREM, PAWMO),
    PROP(PETALBURG_CITY, LOCALID_PETALBURG_QUAKE_PORTAL, KYUREM, PAWMO),
    PROP(PETALBURG_WOODS, 17, GIRATINA, DOLLIV),
    PROP(PETALBURG_WOODS, 18, GIRATINA, DOLLIV),
    PROP(ROUTE106, 7, PALKIA, WUGTRIO),
    PROP(ROUTE107, LOCALID_ROUTE107_DARRIN, PALKIA, WUGTRIO),
    PROP(ROUTE107, 8, PALKIA, WUGTRIO),
    PROP(ROUTE117, LOCALID_DAYCARE_EGG_INDICATOR, TADBULB, ROLYCOLY),
    PROP(ROUTE119, 49, RESHIRAM, SMOLIV),
    PROP(ROUTE120, 48, RESHIRAM, SMOLIV),
    PROP(ROUTE123, 46, GIRATINA, DOLLIV),
    PROP(RUSTBORO_CITY, 18, GIRATINA, DOLLIV),
    PROP(SLATEPORT_CITY, 39, PALKIA, WUGTRIO),
    PROP(SLATEPORT_CITY, 40, PALKIA, WUGTRIO),
    PROP(VERDANTURF_TOWN, 5, GIRATINA, DOLLIV),

    // NPC overworld transfers also retain their graphics in existing saves.
    PROP(DEWFORD_TOWN_HALL, 2, PATRAT, FLITTLE),
    PROP(DEWFORD_TOWN_HALL, 3, PASSIMIAN, FLAMIGO),
    PROP(DEWFORD_TOWN_HALL, 6, ZEBSTRIKA, SHROODLE),
    PROP(EVER_GRANDE_CITY_GLACIAS_ROOM, 1, CRYOGONAL, CETITAN),
    PROP(EVER_GRANDE_CITY_SIDNEYS_ROOM, 1, WORMADAM, GRAFAIAI),
    PROP(FIERY_PATH, 10, REUNICLUS, ESPATHRA),
    PROP(FORTREE_CITY_GYM, 1, BRAVIARY, CETODDLE),
    PROP(GRANITE_HILL, 1, BARRASKEWDA, ORBEETLE),
    PROP(LONELY_CAVE_B1, 1, REUNICLUS, ESPATHRA),
    PROP(MOSSDEEP01, LOCALID_MOSSDEEP_JIRACHI, BASCULIN, VELUZA),
    PROP(MAUVILLE_CITY, 8, QUAXLY, RABSCA),
    PROP(MAUVILLE_CITY_GYM, 1, QUAXLY, RABSCA),
    PROP(MAUVILLE_CITY_HOUSE2, 1, TREVENANT, TOEDSCRUEL),
    PROP(MOSSDEEP_CITY_GYM, 1, IMPIDIMP, CAPSAKID),
    PROP(MOSSDEEP_CITY_GYM, 9, SCRAGGY, KLAWF),
    PROP(PETALBURG_WOODS, 15, SKRELP, TOEDSCOOL),
    PROP(PETALBURG_WOODS, 16, BARRASKEWDA, ORBEETLE),
    PROP(RUSTBORO_CITY_GYM, 1, ARAQUANID, DOTTLER),
    PROP(RUSTURF_GROVE, LOCALID_CUTTER, WORMADAM, GRAFAIAI),
    PROP(SLATEPORT_CITY_NAME_RATERS_HOUSE, 1, ZEBSTRIKA, SHROODLE),
    { MAP_PETALBURG_CITY_GYM, LOCALID_PETALBURG_GYM_NORMAN,
      OBJ_EVENT_GFX_SPECIES(POPPLIO), OBJ_EVENT_GFX_NORMAN },
    { MAP_GRANITE_CAVE_1F, 1,
      OBJ_EVENT_GFX_SPECIES(THIEVUL), OBJ_EVENT_GFX_AURORA },
    { MAP_AURORAGROVE, LOCALID_AURORA_GROVE_AURORA,
      OBJ_EVENT_GFX_SPECIES(THIEVUL), OBJ_EVENT_GFX_AURORA },
    { MAP_PHOENIX_TOWN, LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT,
      OBJ_EVENT_GFX_SPECIES(THIEVUL), OBJ_EVENT_GFX_AURORA },
};

struct PropGraphicsSavedState
{
    struct MapHeader header;
    struct WarpData location;
    struct ObjectEventTemplate previousTemplates[OBJECT_EVENT_TEMPLATES_COUNT];
    struct ObjectEventTemplate expectedTemplates[OBJECT_EVENT_TEMPLATES_COUNT];
    struct ObjectEvent previousObjects[OBJECT_EVENTS_COUNT];
    struct ObjectEvent expectedObjects[OBJECT_EVENTS_COUNT];
    u8 legacyFlags[sizeof(gSaveBlock1Ptr->flags)];
    u8 customFlags[sizeof(gHlwSaveBlock4.customFlags)];
};

static u32 ExercisePropMigration(const struct PropGraphicsFixture *fixture, bool32 loadHook)
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(fixture->map), MAP_NUM(fixture->map));
    const struct ObjectEventTemplate *current = FindObjectEventTemplateByLocalId(
        fixture->localId, map->events->objectEvents, map->events->objectEventCount);
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;
    struct PropGraphicsSavedState *state;
    u32 failures = 0;

    ASSUME(current != NULL);
    EXPECT_EQ(current->graphicsId, fixture->newGraphics);
    state = Alloc(sizeof(*state));
    ASSUME(state != NULL);
    state->header = gMapHeader;
    state->location = gSaveBlock1Ptr->location;
    memcpy(state->previousTemplates, saved, sizeof(state->previousTemplates));
    memcpy(state->previousObjects, gObjectEvents, sizeof(state->previousObjects));
    memcpy(state->legacyFlags, gSaveBlock1Ptr->flags, sizeof(state->legacyFlags));
    memcpy(state->customFlags, gHlwSaveBlock4.customFlags, sizeof(state->customFlags));
    memset(saved, 0, sizeof(state->expectedTemplates));
    memset(gObjectEvents, 0, sizeof(state->expectedObjects));
    gMapHeader = *map;
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(fixture->map);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(fixture->map);

    // Store the prop in a slot unrelated to its ROM object index.
    saved[3] = *current;
    saved[3].graphicsId = fixture->oldGraphics;
    saved[3].x = -45;
    saved[3].y = 211;
    saved[3].elevation = 2;
    saved[3].movementType = MOVEMENT_TYPE_FACE_LEFT;
    saved[3].movementRangeX = 7;
    saved[3].movementRangeY = 3;
    saved[3].flagId = 0x1234;
    saved[1] = saved[3];
    saved[1].graphicsId = OBJ_EVENT_GFX_SPECIES(BULBASAUR);
    saved[2] = saved[3];
    saved[2].localId = 255;
    saved[2].script = NULL;
    saved[4] = saved[3];
    saved[4].graphicsId = fixture->newGraphics;

    gObjectEvents[0] = (struct ObjectEvent)
    {
        .active = TRUE,
        .localId = fixture->localId,
        .mapGroup = MAP_GROUP(fixture->map),
        .mapNum = MAP_NUM(fixture->map),
        .graphicsId = fixture->oldGraphics,
        .movementType = MOVEMENT_TYPE_FACE_LEFT,
        .initialCoords = { 17, 29 },
        .currentCoords = { 42, 63 },
        .previousCoords = { 41, 63 },
        .facingDirection = DIR_WEST,
        .movementDirection = DIR_NORTH,
        .movementActionId = MOVEMENT_ACTION_FACE_LEFT,
        .invisible = TRUE,
        .facingDirectionLocked = TRUE,
        .shiny = TRUE,
    };
    for (u32 i = 1; i < 8; i++)
        gObjectEvents[i] = gObjectEvents[0];
    gObjectEvents[1].localId = OBJ_EVENT_ID_FOLLOWER;
    gObjectEvents[2].mapGroup ^= 1;
    gObjectEvents[3].mapNum ^= 1;
    gObjectEvents[4].active = FALSE;
    gObjectEvents[5].graphicsId = OBJ_EVENT_GFX_SPECIES(BULBASAUR);
    gObjectEvents[6].localId = 255;
    gObjectEvents[7].graphicsId = fixture->newGraphics;

    memcpy(state->expectedTemplates, saved, sizeof(state->expectedTemplates));
    memcpy(state->expectedObjects, gObjectEvents, sizeof(state->expectedObjects));
    state->expectedTemplates[3].graphicsId = fixture->newGraphics;
    state->expectedObjects[0].graphicsId = fixture->newGraphics;

    if (loadHook)
        LoadSaveblockObjEventScripts();
    else
        MigratePropGraphicsForSavedObjects();
    if (memcmp(saved, state->expectedTemplates, sizeof(state->expectedTemplates)) != 0)
        failures |= 1;
    if (memcmp(gObjectEvents, state->expectedObjects, sizeof(state->expectedObjects)) != 0)
        failures |= 2;

    // Applying migration again must preserve the entire resulting object state.
    MigratePropGraphicsForSavedObjects();
    if (memcmp(saved, state->expectedTemplates, sizeof(state->expectedTemplates)) != 0
     || memcmp(gObjectEvents, state->expectedObjects, sizeof(state->expectedObjects)) != 0)
        failures |= 4;
    if (memcmp(state->legacyFlags, gSaveBlock1Ptr->flags, sizeof(state->legacyFlags)) != 0
     || memcmp(state->customFlags, gHlwSaveBlock4.customFlags, sizeof(state->customFlags)) != 0)
        failures |= 8;

    memcpy(saved, state->previousTemplates, sizeof(state->previousTemplates));
    memcpy(gObjectEvents, state->previousObjects, sizeof(state->previousObjects));
    gMapHeader = state->header;
    gSaveBlock1Ptr->location = state->location;
    Free(state);
    return failures;
}

TEST("Prop graphics: old saves migrate every placed prop and preserve object state")
{
    u32 index = 0;

    for (u32 i = 0; i < ARRAY_COUNT(sProps); i++)
        PARAMETRIZE { index = i; }

    EXPECT_EQ(ExercisePropMigration(&sProps[index], FALSE), 0);
}

TEST("Prop graphics: the normal Continue script refresh also migrates saved graphics")
{
    u32 index = 0;

    for (u32 i = 0; i < ARRAY_COUNT(sProps); i++)
        PARAMETRIZE { index = i; }

    EXPECT_EQ(ExercisePropMigration(&sProps[index], TRUE), 0);
}

TEST("Prop graphics: comet, portal and screen animations stay inside their four-frame sheets")
{
    static const struct
    {
        u16 species;
        u8 animationCount;
    } custom[] =
    {
        { SPECIES_PAWMI, ANIM_EXIT_POKEBALL_FAST_EAST + 1 },
        { SPECIES_PAWMO, ANIM_STD_GO_FAST_EAST + 1 },
        { SPECIES_REVAVROOM, ANIM_EXIT_POKEBALL_FAST_EAST + 1 },
    };

    for (u32 prop = 0; prop < ARRAY_COUNT(custom); prop++)
    {
        const struct ObjectEventGraphicsInfo *graphics = &gSpeciesInfo[custom[prop].species].overworldData;

        EXPECT_EQ(graphics->width, 64);
        EXPECT_EQ(graphics->height, 64);
        EXPECT_EQ(graphics->images[0].size, 2048);
        for (u32 animation = 0; animation < custom[prop].animationCount; animation++)
        {
            const union AnimCmd *commands = graphics->anims[animation];
            bool32 ended = FALSE;

            EXPECT(commands != NULL);
            for (u32 command = 0; command < 32; command++)
            {
                if (commands[command].type < 0)
                {
                    EXPECT(commands[command].type == -1 || commands[command].type == -2);
                    if (commands[command].type == -2)
                        EXPECT(commands[command].jump.target < command);
                    ended = TRUE;
                    break;
                }
                EXPECT(commands[command].frame.imageValue < 4);
                EXPECT(commands[command].frame.duration > 0);
            }
            EXPECT(ended);
        }
    }
}

TEST("Prop graphics: Aqua ship footprint and walkable bridge follow the new slots")
{
    static const u16 graphics[] =
    {
        OBJ_EVENT_GFX_SPECIES(BOMBIRDIER), OBJ_EVENT_GFX_SPECIES(SOLGALEO),
        OBJ_EVENT_GFX_SPECIES(COPPERAJAH), OBJ_EVENT_GFX_SPECIES(ZEKROM),
    };
    struct ObjectEvent *previous = Alloc(sizeof(gObjectEvents));
    struct ObjectEvent walker = { .active = TRUE, .localId = 1, .currentElevation = 0 };
    bool32 correct = TRUE;

    ASSUME(previous != NULL);
    memcpy(previous, gObjectEvents, sizeof(gObjectEvents));
    memset(gObjectEvents, 0, sizeof(gObjectEvents));
    gObjectEvents[0] = (struct ObjectEvent)
    {
        .active = TRUE,
        .localId = 2,
        .movementType = MOVEMENT_TYPE_NONE,
        .currentCoords = { 50, 60 },
        .previousCoords = { 50, 60 },
    };

    for (u32 prop = 0; prop < ARRAY_COUNT(graphics); prop++)
    {
        gObjectEvents[0].graphicsId = graphics[prop];
        for (s16 y = 59; y <= 61; y++)
        {
            for (s16 x = 47; x <= 52; x++)
            {
                bool32 expected = y == 60 && (prop == 0 ? x >= 48 && x <= 51
                    : prop == 2 ? FALSE : x == 50);
                bool32 actual = GetObjectObjectCollidesWith(&walker, x, y, FALSE) < OBJECT_EVENTS_COUNT;

                if (actual != expected)
                    correct = FALSE;
            }
        }
    }
    memcpy(gObjectEvents, previous, sizeof(gObjectEvents));
    Free(previous);
    EXPECT(correct);
}
