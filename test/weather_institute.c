#include "global.h"
#include "battle_setup.h"
#include "battle_transition.h"
#include "data.h"
#include "event_data.h"
#include "overworld.h"
#include "script.h"
#include "constants/event_object_movement.h"
#include "constants/map_event_ids.h"
#include "constants/maps.h"
#include "constants/trainers.h"
#include "test/test.h"

TEST("Weather Institute grunts use the updated species and levels")
{
    const struct
    {
        u16 trainerId;
        u8 size;
        u8 level;
        u16 species[3];
    } expected[] = {
        {TRAINER_GRUNT_WEATHER_INST_1, 2, 44, {SPECIES_SHARPEDO, SPECIES_MIGHTYENA}},
        {TRAINER_GRUNT_WEATHER_INST_4, 1, 45, {SPECIES_NINETALES}},
        {TRAINER_GRUNT_WEATHER_INST_2, 2, 44, {SPECIES_GRANBULL, SPECIES_CHIMECHO}},
        {TRAINER_GRUNT_WEATHER_INST_3, 3, 43, {SPECIES_SWALOT, SPECIES_MIGHTYENA, SPECIES_NUZLEAF}},
        {TRAINER_GRUNT_WEATHER_INST_5, 2, 44, {SPECIES_CROCONAW, SPECIES_CROBAT}},
    };

    for (u32 i = 0; i < ARRAY_COUNT(expected); i++)
    {
        const struct TrainerMon *party = GetTrainerPartyFromId(expected[i].trainerId);

        EXPECT_EQ(GetTrainerPartySizeFromId(expected[i].trainerId), expected[i].size);
        for (u32 mon = 0; mon < expected[i].size; mon++)
        {
            EXPECT_EQ(party[mon].species, expected[i].species[mon]);
            EXPECT_EQ(party[mon].lvl, expected[i].level);
        }
    }
}

TEST("Weather Institute Netsu uses the level 50 team with retained moves and 26 IVs")
{
    const u16 species[] = {SPECIES_HOUNDOOM, SPECIES_PINSIR, SPECIES_GRANBULL, SPECIES_MAGMORTAR};
    const u16 items[] = {ITEM_CHARCOAL, ITEM_SITRUS_BERRY, ITEM_PASSHO_BERRY, ITEM_ROCKY_HELMET};
    const u16 moves[][4] = {
        {MOVE_DARK_PULSE, MOVE_PROTECT, MOVE_FLAME_CHARGE, MOVE_INCINERATE},
        {MOVE_KNOCK_OFF, MOVE_PROTECT, MOVE_BRICK_BREAK, MOVE_BUG_BITE},
        {MOVE_BULLDOZE, MOVE_PROTECT, MOVE_BRICK_BREAK, MOVE_FIRE_PUNCH},
        {MOVE_WILL_O_WISP, MOVE_PROTECT, MOVE_FIRE_PUNCH, MOVE_THUNDER_PUNCH},
    };
    const struct Trainer *trainer = GetTrainerStructFromId(TRAINER_SHELLY_WEATHER_INSTITUTE);

    EXPECT_EQ(trainer->partySize, ARRAY_COUNT(species));
    EXPECT_EQ(trainer->trainerClass, TRAINER_CLASS_MAGMA_ADMIN);
    EXPECT_EQ(trainer->trainerPic, TRAINER_PIC_NETSU);
    EXPECT_EQ((u32)trainer->battleType, TRAINER_BATTLE_TYPE_DOUBLES);
    for (u32 mon = 0; mon < ARRAY_COUNT(species); mon++)
    {
        EXPECT_EQ(trainer->party[mon].species, species[mon]);
        EXPECT_EQ(trainer->party[mon].lvl, 50);
        EXPECT_EQ(trainer->party[mon].iv, TRAINER_PARTY_IVS(26, 26, 26, 26, 26, 26));
        EXPECT_EQ(trainer->party[mon].heldItem, items[mon]);
        for (u32 move = 0; move < ARRAY_COUNT(moves[mon]); move++)
            EXPECT_EQ(trainer->party[mon].moves[move], moves[mon][move]);
    }
}

TEST("Weather Institute Magma grunts use matching battle portraits music and emblem transitions")
{
    const struct
    {
        u16 trainerId;
        u8 pic;
    } expected[] = {
        {TRAINER_GRUNT_WEATHER_INST_1, TRAINER_PIC_MAGMA_GRUNT_M},
        {TRAINER_GRUNT_WEATHER_INST_2, TRAINER_PIC_MAGMA_GRUNT_M},
        {TRAINER_GRUNT_WEATHER_INST_3, TRAINER_PIC_MAGMA_GRUNT_M},
        {TRAINER_GRUNT_WEATHER_INST_4, TRAINER_PIC_MAGMA_GRUNT_F},
        {TRAINER_GRUNT_WEATHER_INST_5, TRAINER_PIC_MAGMA_GRUNT_F},
        {TRAINER_GRUNT_UNUSED, TRAINER_PIC_MAGMA_GRUNT_F},
    };
    u16 previousOpponent = TRAINER_BATTLE_PARAM.opponentA;

    for (u32 i = 0; i < ARRAY_COUNT(expected); i++)
    {
        const struct Trainer *trainer = GetTrainerStructFromId(expected[i].trainerId);

        EXPECT_EQ(trainer->trainerClass, TRAINER_CLASS_TEAM_MAGMA);
        EXPECT_EQ(trainer->trainerPic, expected[i].pic);
        EXPECT_EQ(trainer->encounterMusic_gender & (F_TRAINER_FEMALE - 1), TRAINER_ENCOUNTER_MUSIC_MAGMA);
        TRAINER_BATTLE_PARAM.opponentA = expected[i].trainerId;
        EXPECT_EQ(GetTrainerBattleTransition(), B_TRANSITION_MAGMA);
    }
    TRAINER_BATTLE_PARAM.opponentA = previousOpponent;
}

extern const u8 Route119_WeatherInstitute_2F_OnTransition[];
extern const u8 Route119_WeatherInstitute_2F_Movement_MessengerExit[];
extern const u8 Route119_WeatherInstitute_2F_Movement_NetsuExit[];
extern const u8 Route119_WeatherInstitute_2F_Movement_PresidentApproachPlayer[];
extern const u8 Route119_WeatherInstitute_2F_Movement_PresidentPushPlayer[];
extern const u8 Route119_WeatherInstitute_2F_Movement_PresidentExit[];
extern const u8 Route119_WeatherInstitute_2F_Movement_ScientistApproachPlayer[];
extern const u8 Route119_WeatherInstitute_2F_EventScript_InstituteWorker1[];
extern const u8 Route119_WeatherInstitute_2F_EventScript_InstituteWorker2[];
extern const u8 Route119_WeatherInstitute_2F_Text_Worker1BeforeNetsu[];
extern const u8 Route119_WeatherInstitute_2F_Text_Worker1AfterNetsu[];
extern const u8 Route119_WeatherInstitute_2F_Text_Worker2BeforeNetsu[];
extern const u8 Route119_WeatherInstitute_2F_Text_Worker2AfterNetsu[];

static void ExpectWorkerDialogue(u16 state, const u8 *worker1Text, const u8 *worker2Text)
{
    const u8 *scripts[] = {
        Route119_WeatherInstitute_2F_EventScript_InstituteWorker1,
        Route119_WeatherInstitute_2F_EventScript_InstituteWorker2,
    };
    const u8 *texts[] = {worker1Text, worker2Text};

    VarSet(VAR_WEATHER_INSTITUTE_STATE, state);
    for (u32 i = 0; i < ARRAY_COUNT(scripts); i++)
    {
        struct ScriptContext ctx;

        // Stop at the NPC message's lock command without needing overworld objects.
        EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE, scripts[i], &ctx));
        EXPECT_EQ(ctx.data[0], (u32)texts[i]);
    }
}

TEST("Weather Institute workers use their before-Netsu dialogue during the occupation")
{
    ExpectWorkerDialogue(0, Route119_WeatherInstitute_2F_Text_Worker1BeforeNetsu,
        Route119_WeatherInstitute_2F_Text_Worker2BeforeNetsu);
}

TEST("Weather Institute workers use their after-Netsu dialogue in both completed states")
{
    for (u16 state = 1; state <= 2; state++)
        ExpectWorkerDialogue(state, Route119_WeatherInstitute_2F_Text_Worker1AfterNetsu,
            Route119_WeatherInstitute_2F_Text_Worker2AfterNetsu);
}

TEST("Weather Institute upstairs workers have interaction scripts without changing placement or relocation")
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_ROUTE119_WEATHER_INSTITUTE_2F), MAP_NUM(MAP_ROUTE119_WEATHER_INSTITUTE_2F));
    const u8 localIds[] = {4, 6};
    const u8 xPositions[] = {16, 18};
    const u8 *scripts[] = {
        Route119_WeatherInstitute_2F_EventScript_InstituteWorker1,
        Route119_WeatherInstitute_2F_EventScript_InstituteWorker2,
    };

    for (u32 worker = 0; worker < ARRAY_COUNT(localIds); worker++)
    {
        u32 matches = 0;

        for (u32 i = 0; i < map->events->objectEventCount; i++)
        {
            const struct ObjectEventTemplate *object = &map->events->objectEvents[i];

            if (object->localId != localIds[worker])
                continue;
            EXPECT_EQ(object->script, scripts[worker]);
            EXPECT_EQ(object->x, xPositions[worker]);
            EXPECT_EQ(object->y, 9);
            EXPECT_EQ(object->flagId, FLAG_HIDE_WEATHER_INSTITUTE_2F_WORKERS);
            matches++;
        }
        EXPECT_EQ(matches, 1);
    }
}

TEST("Weather Institute workers acquire their dialogue scripts when an existing save reloads")
{
    const struct MapEvents *previousEvents = gMapHeader.events;
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_ROUTE119_WEATHER_INSTITUTE_2F), MAP_NUM(MAP_ROUTE119_WEATHER_INSTITUTE_2F));
    struct ObjectEventTemplate *saved = gSaveBlock1Ptr->objectEventTemplates;

    memset(saved, 0, sizeof(gSaveBlock1Ptr->objectEventTemplates));
    saved[0].localId = 4;
    saved[0].x = 16;
    saved[0].y = 9;
    saved[1].localId = 6;
    saved[1].x = 18;
    saved[1].y = 9;
    gMapHeader.events = map->events;

    LoadSaveblockObjEventScripts();
    EXPECT_EQ(saved[0].script, Route119_WeatherInstitute_2F_EventScript_InstituteWorker1);
    EXPECT_EQ(saved[1].script, Route119_WeatherInstitute_2F_EventScript_InstituteWorker2);
    EXPECT_EQ(saved[0].x, 16);
    EXPECT_EQ(saved[0].y, 9);
    EXPECT_EQ(saved[1].x, 18);
    EXPECT_EQ(saved[1].y, 9);
    gMapHeader.events = previousEvents;
}

static struct ObjectEventTemplate *PlaceScientist(u16 state, bool8 gameClear)
{
    struct ObjectEventTemplate *scientist = &gSaveBlock1Ptr->objectEventTemplates[0];

    memset(gSaveBlock1Ptr->objectEventTemplates, 0, sizeof(gSaveBlock1Ptr->objectEventTemplates));
    scientist->localId = LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST;
    scientist->x = -1;
    scientist->y = -1;
    VarSet(VAR_WEATHER_INSTITUTE_STATE, state);
    if (gameClear)
        FlagSet(FLAG_SYS_GAME_CLEAR);
    else
        FlagClear(FLAG_SYS_GAME_CLEAR);
    RunScriptImmediately(Route119_WeatherInstitute_2F_OnTransition);
    return scientist;
}

TEST("Weather Institute scientist sits opposite the president during the meeting")
{
    const struct ObjectEventTemplate *scientist = PlaceScientist(0, FALSE);

    EXPECT_EQ(scientist->x, 0);
    EXPECT_EQ(scientist->y, 5);
    EXPECT_EQ(scientist->movementType, MOVEMENT_TYPE_FACE_RIGHT);
}

TEST("Weather Institute scientist remains facing the player after the exit scene")
{
    const struct ObjectEventTemplate *scientist = PlaceScientist(1, FALSE);

    EXPECT_EQ(scientist->x, 5);
    EXPECT_EQ(scientist->y, 6);
    EXPECT_EQ(scientist->movementType, MOVEMENT_TYPE_FACE_DOWN);
}

TEST("Weather Institute scientist retains the original return-visit position")
{
    const struct ObjectEventTemplate *scientist = PlaceScientist(2, FALSE);

    EXPECT_EQ(scientist->x, 18);
    EXPECT_EQ(scientist->y, 6);
    EXPECT_EQ(scientist->movementType, MOVEMENT_TYPE_LOOK_AROUND);
}

TEST("Weather Institute scientist retains the original postgame position")
{
    for (u16 state = 0; state <= 2; state++)
    {
        const struct ObjectEventTemplate *scientist = PlaceScientist(state, TRUE);

        EXPECT_EQ(scientist->x, 2);
        EXPECT_EQ(scientist->y, 2);
        EXPECT_EQ(scientist->movementType, MOVEMENT_TYPE_FACE_UP);
    }
}

TEST("Weather Institute scientist walks down once then right five times and faces down")
{
    const u8 expected[] = {
        MOVEMENT_ACTION_WALK_NORMAL_DOWN,
        MOVEMENT_ACTION_WALK_NORMAL_RIGHT, MOVEMENT_ACTION_WALK_NORMAL_RIGHT,
        MOVEMENT_ACTION_WALK_NORMAL_RIGHT, MOVEMENT_ACTION_WALK_NORMAL_RIGHT,
        MOVEMENT_ACTION_WALK_NORMAL_RIGHT,
        MOVEMENT_ACTION_FACE_DOWN, MOVEMENT_ACTION_STEP_END,
    };

    for (u32 i = 0; i < ARRAY_COUNT(expected); i++)
        EXPECT_EQ(Route119_WeatherInstitute_2F_Movement_ScientistApproachPlayer[i], expected[i]);
}

TEST("Weather Institute president approaches the player along y6 facing right")
{
    const u8 expected[] = {
        MOVEMENT_ACTION_WALK_NORMAL_DOWN,
        MOVEMENT_ACTION_WALK_NORMAL_RIGHT, MOVEMENT_ACTION_WALK_NORMAL_RIGHT,
        MOVEMENT_ACTION_FACE_RIGHT, MOVEMENT_ACTION_STEP_END,
    };

    for (u32 i = 0; i < ARRAY_COUNT(expected); i++)
        EXPECT_EQ(Route119_WeatherInstitute_2F_Movement_PresidentApproachPlayer[i], expected[i]);
}

TEST("Weather Institute president pushes the player down one tile to face the scientist")
{
    EXPECT_EQ(Route119_WeatherInstitute_2F_Movement_PresidentPushPlayer[0], MOVEMENT_ACTION_RIDE_WATER_CURRENT_DOWN);
    EXPECT_EQ(Route119_WeatherInstitute_2F_Movement_PresidentPushPlayer[1], MOVEMENT_ACTION_FACE_UP);
    EXPECT_EQ(Route119_WeatherInstitute_2F_Movement_PresidentPushPlayer[2], MOVEMENT_ACTION_STEP_END);
}

TEST("Weather Institute messenger Netsu and president all exit right to x16")
{
    const u8 *paths[] = {
        Route119_WeatherInstitute_2F_Movement_MessengerExit,
        Route119_WeatherInstitute_2F_Movement_NetsuExit,
        Route119_WeatherInstitute_2F_Movement_PresidentExit,
    };
    const u8 steps[] = {11, 12, 12};

    for (u32 path = 0; path < ARRAY_COUNT(paths); path++)
    {
        for (u32 step = 0; step < steps[path]; step++)
            EXPECT_EQ(paths[path][step], MOVEMENT_ACTION_WALK_NORMAL_RIGHT);
        EXPECT_EQ(paths[path][steps[path]], MOVEMENT_ACTION_STEP_END);
    }
}

TEST("Weather Institute president keeps object ID 9 and leaves with the occupation")
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_ROUTE119_WEATHER_INSTITUTE_2F), MAP_NUM(MAP_ROUTE119_WEATHER_INSTITUTE_2F));
    u32 presidents = 0;

    EXPECT_EQ(LOCALID_WEATHER_INSTITUTE_2F_BEDROCK_PRESIDENT, 9);
    for (u32 i = 0; i < map->events->objectEventCount; i++)
    {
        const struct ObjectEventTemplate *object = &map->events->objectEvents[i];

        if (object->localId != LOCALID_WEATHER_INSTITUTE_2F_BEDROCK_PRESIDENT)
            continue;
        EXPECT_EQ(object->x, 2);
        EXPECT_EQ(object->y, 5);
        EXPECT_EQ(object->flagId, FLAG_HIDE_ROUTE_119_TEAM_AQUA);
        presidents++;
    }
    EXPECT_EQ(presidents, 1);
}
