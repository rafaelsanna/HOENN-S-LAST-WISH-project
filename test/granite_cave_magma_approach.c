#include "global.h"
#include "event_data.h"
#include "fieldmap.h"
#include "overworld.h"
#include "script.h"
#include "string_util.h"
#include "test/test.h"
#include "constants/event_object_movement.h"
#include "constants/field_effects.h"
#include "constants/flags.h"
#include "constants/maps.h"
#include "constants/metatile_behaviors.h"
#include "constants/script_commands.h"
#include "constants/songs.h"
#include "constants/trainer_types.h"
#include "constants/vars.h"

extern ScrCmdFunc gScriptCmdTable[];
extern ScrCmdFunc gScriptCmdTableEnd[];
extern const u8 GraniteCave_B2F_EventScript_MagmaTrigger[];
extern const u8 GraniteCave_B2F_EventScript_MagmaExit[];
extern const u8 GraniteCave_B2F_EventScript_MagmaWorking[];

#define MAGMA_M_LOCAL_ID 11
#define MAGMA_F_LOCAL_ID 10

enum {TRACE_APPLY = 1, TRACE_WAIT, TRACE_EFFECT_WAIT};
enum {STAGE_NONE, STAGE_EMOTE, STAGE_WALK, STAGE_FACE};

struct ApproachEvent
{
    u8 kind;
    u8 localId;
    u8 stage;
    u8 steps;
};

struct ApproachActor
{
    s16 x, y;
    u8 facing;
    u8 pendingStage;
};

struct ApproachTrace
{
    struct ApproachEvent events[16];
    struct ApproachActor actors[2];
    const struct MapLayout *layout;
    const u8 *text;
    s16 playerX, playerY;
    u8 count;
    u8 emoteWaited;
    u8 walkWaited;
    u8 faceWaited;
    u8 musicCount;
    u8 soundCount;
    u8 positionReadCount;
    bool8 iconsFinished;
    bool8 messageReached;
};

static struct ApproachTrace *TraceFor(struct ScriptContext *ctx)
{
    return (struct ApproachTrace *)ctx->data[3];
}

static u32 ActorIndex(u16 localId)
{
    EXPECT(localId == MAGMA_M_LOCAL_ID || localId == MAGMA_F_LOCAL_ID);
    return localId == MAGMA_M_LOCAL_ID ? 0 : 1;
}

static void RecordEvent(struct ApproachTrace *trace, u8 kind, u8 localId, u8 stage, u8 steps)
{
    EXPECT_LT(trace->count, ARRAY_COUNT(trace->events));
    trace->events[trace->count++] = (struct ApproachEvent){kind, localId, stage, steps};
}

static bool8 SkipLockOrRelease(struct ScriptContext *ctx)
{
    return FALSE;
}

static bool8 RecordMusic(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);

    EXPECT_EQ(ScriptReadHalfword(ctx), MUS_ENCOUNTER_MAGMA);
    EXPECT_EQ(ScriptReadByte(ctx), FALSE);
    trace->musicCount++;
    return FALSE;
}

static bool8 RecordSound(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);

    EXPECT_EQ(ScriptReadHalfword(ctx), SE_PIN);
    EXPECT_EQ(trace->count, 0);
    trace->soundCount++;
    return FALSE;
}

static bool8 SupplyPlayerPosition(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);
    u16 xVar = ScriptReadHalfword(ctx);
    u16 yVar = ScriptReadHalfword(ctx);

    EXPECT_EQ(trace->emoteWaited, 3);
    EXPECT_EQ(trace->iconsFinished, TRUE);
    EXPECT_EQ(xVar, VAR_TEMP_0);
    EXPECT_EQ(yVar, VAR_TEMP_1);
    VarSet(xVar, trace->playerX);
    VarSet(yVar, trace->playerY);
    trace->positionReadCount++;
    return FALSE;
}

static bool8 RecordMovement(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);
    u16 localId = ScriptReadHalfword(ctx);
    const u8 *movement = (const u8 *)ScriptReadWord(ctx);
    struct ApproachActor *actor = &trace->actors[ActorIndex(localId)];
    u8 stage;
    u8 steps = 0;

    EXPECT_EQ(actor->pendingStage, STAGE_NONE);
    if (movement[0] == MOVEMENT_ACTION_EMOTE_EXCLAMATION_MARK)
    {
        stage = STAGE_EMOTE;
        EXPECT_EQ(movement[1], MOVEMENT_ACTION_STEP_END);
        EXPECT_EQ(trace->walkWaited, 0);
    }
    else if (movement[0] == MOVEMENT_ACTION_FACE_PLAYER)
    {
        stage = STAGE_FACE;
        EXPECT_EQ(movement[1], MOVEMENT_ACTION_STEP_END);
        EXPECT_EQ(trace->walkWaited, 3);
        EXPECT_EQ(actor->x, trace->playerX);
        actor->facing = actor->y < trace->playerY ? DIR_SOUTH : DIR_NORTH;
    }
    else
    {
        stage = STAGE_WALK;
        EXPECT_EQ(trace->emoteWaited, 3);
        EXPECT_EQ(trace->iconsFinished, TRUE);
        EXPECT_EQ(trace->positionReadCount, 1);
        // Decode the actual local movement pointer, without exporting its label.
        for (; movement[steps] != MOVEMENT_ACTION_STEP_END; steps++)
        {
            u16 block;

            EXPECT_LT(steps, 3);
            EXPECT_EQ(movement[steps], localId == MAGMA_M_LOCAL_ID
                ? MOVEMENT_ACTION_WALK_NORMAL_RIGHT : MOVEMENT_ACTION_WALK_NORMAL_LEFT);
            actor->x += localId == MAGMA_M_LOCAL_ID ? 1 : -1;
            EXPECT(actor->x != trace->playerX || actor->y != trace->playerY);
            block = trace->layout->map[actor->y * trace->layout->width + actor->x];
            EXPECT_EQ(UNPACK_COLLISION(block), 0);
            EXPECT_EQ(UNPACK_ELEVATION(block), 3);
        }
    }
    actor->pendingStage = stage;
    RecordEvent(trace, TRACE_APPLY, localId, stage, steps);
    return FALSE;
}

static bool8 RecordWait(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);
    u16 localId = ScriptReadHalfword(ctx);
    u32 actorIndex = ActorIndex(localId);
    struct ApproachActor *actor = &trace->actors[actorIndex];

    // Each explicit wait completes only that actor's scheduled action. A zero
    // wait would not establish completion of both actors and is rejected here.
    EXPECT_NE(actor->pendingStage, STAGE_NONE);
    RecordEvent(trace, TRACE_WAIT, localId, actor->pendingStage, 0);
    if (actor->pendingStage == STAGE_EMOTE)
        trace->emoteWaited |= 1 << actorIndex;
    else if (actor->pendingStage == STAGE_WALK)
        trace->walkWaited |= 1 << actorIndex;
    else
        trace->faceWaited |= 1 << actorIndex;
    actor->pendingStage = STAGE_NONE;
    return FALSE;
}

static bool8 RecordEffectWait(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);

    EXPECT_EQ(ScriptReadHalfword(ctx), FLDEFF_EXCLAMATION_MARK_ICON);
    EXPECT_EQ(trace->emoteWaited, 3);
    EXPECT_EQ(trace->walkWaited, 0);
    EXPECT_EQ(trace->iconsFinished, FALSE);
    trace->iconsFinished = TRUE;
    RecordEvent(trace, TRACE_EFFECT_WAIT, 0, STAGE_EMOTE, 0);
    return FALSE;
}

static bool8 StopAtIntro(struct ScriptContext *ctx)
{
    struct ApproachTrace *trace = TraceFor(ctx);
    const u8 *text = (const u8 *)ScriptReadWord(ctx);

    EXPECT_EQ(trace->faceWaited, 3);
    EXPECT_EQ(trace->actors[0].pendingStage, STAGE_NONE);
    EXPECT_EQ(trace->actors[1].pendingStage, STAGE_NONE);
    trace->text = text != NULL ? text : (const u8 *)ctx->data[0];
    trace->messageReached = TRUE;
    return TRUE;
}

static const struct ApproachEvent sExpectedEvents[] =
{
    {TRACE_APPLY, MAGMA_M_LOCAL_ID, STAGE_EMOTE, 0},
    {TRACE_APPLY, MAGMA_F_LOCAL_ID, STAGE_EMOTE, 0},
    {TRACE_WAIT, MAGMA_M_LOCAL_ID, STAGE_EMOTE, 0},
    {TRACE_WAIT, MAGMA_F_LOCAL_ID, STAGE_EMOTE, 0},
    {TRACE_EFFECT_WAIT, 0, STAGE_EMOTE, 0},
    {TRACE_APPLY, MAGMA_M_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_APPLY, MAGMA_F_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_WAIT, MAGMA_M_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_WAIT, MAGMA_F_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_APPLY, MAGMA_M_LOCAL_ID, STAGE_FACE, 0},
    {TRACE_APPLY, MAGMA_F_LOCAL_ID, STAGE_FACE, 0},
    {TRACE_WAIT, MAGMA_M_LOCAL_ID, STAGE_FACE, 0},
    {TRACE_WAIT, MAGMA_F_LOCAL_ID, STAGE_FACE, 0},
};

TEST("Granite Cave Magma approach: both trigger tiles wait for both icons before safe approaches, facing and dialogue")
{
    s16 playerX = 24;
    bool8 completed = FALSE;
    bool8 savedFlag = FlagGet(FLAG_NEW_MAGMA_GRUNTS);
    bool8 savedFollowerMovement = FlagGet(FLAG_SAFE_FOLLOWER_MOVEMENT);
    u16 savedXVar = VarGet(VAR_TEMP_0);
    u16 savedYVar = VarGet(VAR_TEMP_1);
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_GRANITE_CAVE_B2F), MAP_NUM(MAP_GRANITE_CAVE_B2F));
    struct ApproachTrace trace = {0};
    struct ScriptContext ctx;
    ScrCmdFunc commands[256];
    u32 commandCount = gScriptCmdTableEnd - gScriptCmdTable;

    PARAMETRIZE { playerX = 24; completed = FALSE; }
    PARAMETRIZE { playerX = 25; completed = FALSE; }
    PARAMETRIZE { playerX = 24; completed = TRUE; }
    PARAMETRIZE { playerX = 25; completed = TRUE; }

    trace.layout = map->mapLayout;
    trace.playerX = playerX;
    trace.playerY = 18;
    for (u32 actor = 0; actor < ARRAY_COUNT(trace.actors); actor++)
    {
        bool32 found = FALSE;
        u8 localId = actor == 0 ? MAGMA_M_LOCAL_ID : MAGMA_F_LOCAL_ID;

        for (u32 object = 0; object < map->events->objectEventCount; object++)
        {
            const struct ObjectEventTemplate *template = &map->events->objectEvents[object];

            if (template->localId != localId)
                continue;
            trace.actors[actor].x = template->x;
            trace.actors[actor].y = template->y;
            found = TRUE;
        }
        EXPECT_EQ(found, TRUE);
    }
    EXPECT_EQ(trace.actors[0].x, 23);
    EXPECT_EQ(trace.actors[0].y, 17);
    EXPECT_EQ(trace.actors[1].x, 26);
    EXPECT_EQ(trace.actors[1].y, 19);

    EXPECT_LE(commandCount, ARRAY_COUNT(commands));
    memcpy(commands, gScriptCmdTable, commandCount * sizeof(commands[0]));
    commands[SCR_OP_LOCKALL] = SkipLockOrRelease;
    commands[SCR_OP_RELEASEALL] = SkipLockOrRelease;
    commands[SCR_OP_PLAYBGM] = RecordMusic;
    commands[SCR_OP_PLAYSE] = RecordSound;
    commands[SCR_OP_GETPLAYERXY] = SupplyPlayerPosition;
    commands[SCR_OP_APPLYMOVEMENT] = RecordMovement;
    commands[SCR_OP_WAITMOVEMENT] = RecordWait;
    commands[SCR_OP_WAITFIELDEFFECT] = RecordEffectWait;
    commands[SCR_OP_MESSAGE] = StopAtIntro;
    VarSet(VAR_TEMP_0, 0x1111);
    VarSet(VAR_TEMP_1, 0x2222);
    if (completed)
        FlagSet(FLAG_NEW_MAGMA_GRUNTS);
    else
        FlagClear(FLAG_NEW_MAGMA_GRUNTS);
    InitScriptContext(&ctx, commands, commands + commandCount);
    ctx.data[3] = (u32)&trace;
    SetupBytecodeScript(&ctx, GraniteCave_B2F_EventScript_MagmaTrigger);
    RunScriptCommand(&ctx);

    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), completed);
    EXPECT_EQ(trace.messageReached, !completed);
    if (completed)
    {
        EXPECT_EQ(trace.count, 0);
        EXPECT_EQ(trace.musicCount, 0);
        EXPECT_EQ(trace.soundCount, 0);
        EXPECT_EQ(trace.positionReadCount, 0);
        EXPECT_EQ(VarGet(VAR_TEMP_0), 0x1111);
        EXPECT_EQ(VarGet(VAR_TEMP_1), 0x2222);
    }
    else
    {
        EXPECT_EQ(trace.musicCount, 1);
        EXPECT_EQ(trace.soundCount, 1);
        EXPECT_EQ(trace.count, ARRAY_COUNT(sExpectedEvents));
        for (u32 event = 0; event < trace.count; event++)
        {
            EXPECT_EQ(trace.events[event].kind, sExpectedEvents[event].kind);
            EXPECT_EQ(trace.events[event].localId, sExpectedEvents[event].localId);
            EXPECT_EQ(trace.events[event].stage, sExpectedEvents[event].stage);
        }
        EXPECT_EQ(trace.events[5].steps, playerX == 24 ? 1 : 2);
        EXPECT_EQ(trace.events[6].steps, playerX == 24 ? 2 : 1);
        EXPECT_EQ(trace.actors[0].x, playerX);
        EXPECT_EQ(trace.actors[0].y, 17);
        EXPECT_EQ(trace.actors[0].facing, DIR_SOUTH);
        EXPECT_EQ(trace.actors[1].x, playerX);
        EXPECT_EQ(trace.actors[1].y, 19);
        EXPECT_EQ(trace.actors[1].facing, DIR_NORTH);
        EXPECT_NE(trace.text, NULL);
    }
    VarSet(VAR_TEMP_0, savedXVar);
    VarSet(VAR_TEMP_1, savedYVar);
    if (savedFlag)
        FlagSet(FLAG_NEW_MAGMA_GRUNTS);
    else
        FlagClear(FLAG_NEW_MAGMA_GRUNTS);
    if (savedFollowerMovement)
        FlagSet(FLAG_SAFE_FOLLOWER_MOVEMENT);
    else
        FlagClear(FLAG_SAFE_FOLLOWER_MOVEMENT);
}

enum {EXIT_REMOVE = TRACE_EFFECT_WAIT + 1, EXIT_COMPLETE, EXIT_RELEASE};

struct ExitTrace
{
    struct ApproachEvent events[8];
    struct ApproachActor actors[2];
    const struct MapHeader *map;
    s16 playerX, playerY;
    u8 count;
    u8 positionReadCount;
    u8 applied;
    u8 waited;
    u8 removed;
    u8 jumps[2];
    bool8 released;
};

// Expected routes are the approved paths, independent of the movement pointers
// selected by the compiled script. NPCs use fast walks, not player-only run poses.
static const u8 sMaleExitFrom24[] =
{
    MOVEMENT_ACTION_WALK_FAST_LEFT, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_WALK_FAST_DOWN,
    MOVEMENT_ACTION_WALK_FAST_LEFT, MOVEMENT_ACTION_WALK_FAST_LEFT, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_JUMP_2_LEFT,
    MOVEMENT_ACTION_WALK_FAST_DOWN, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_STEP_END,
};

static const u8 sMaleExitFrom25[] =
{
    MOVEMENT_ACTION_WALK_FAST_LEFT, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_WALK_FAST_DOWN,
    MOVEMENT_ACTION_WALK_FAST_LEFT, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_WALK_FAST_LEFT, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_JUMP_2_LEFT,
    MOVEMENT_ACTION_WALK_FAST_DOWN, MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_STEP_END,
};

static const u8 sFemaleExitFrom24[] =
{
    MOVEMENT_ACTION_WALK_FAST_RIGHT, MOVEMENT_ACTION_JUMP_2_DOWN,
    MOVEMENT_ACTION_WALK_FAST_DOWN, MOVEMENT_ACTION_WALK_FAST_DOWN,
    MOVEMENT_ACTION_WALK_FAST_DOWN, MOVEMENT_ACTION_WALK_FAST_DOWN,
    MOVEMENT_ACTION_STEP_END,
};

static const u8 sFemaleExitFrom25[] =
{
    MOVEMENT_ACTION_JUMP_2_DOWN,
    MOVEMENT_ACTION_WALK_FAST_DOWN, MOVEMENT_ACTION_WALK_FAST_DOWN,
    MOVEMENT_ACTION_WALK_FAST_DOWN, MOVEMENT_ACTION_WALK_FAST_DOWN,
    MOVEMENT_ACTION_STEP_END,
};

static const struct ApproachEvent sExpectedExitEvents[] =
{
    {TRACE_APPLY, MAGMA_M_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_APPLY, MAGMA_F_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_WAIT, MAGMA_M_LOCAL_ID, STAGE_WALK, 0},
    {TRACE_WAIT, MAGMA_F_LOCAL_ID, STAGE_WALK, 0},
    {EXIT_REMOVE, MAGMA_M_LOCAL_ID, STAGE_NONE, 0},
    {EXIT_REMOVE, MAGMA_F_LOCAL_ID, STAGE_NONE, 0},
    {EXIT_COMPLETE, 0, STAGE_NONE, 0},
    {EXIT_RELEASE, 0, STAGE_NONE, 0},
};

static struct ExitTrace *ExitTraceFor(struct ScriptContext *ctx)
{
    return (struct ExitTrace *)ctx->data[3];
}

static void RecordExitEvent(struct ExitTrace *trace, u8 kind, u8 localId, u8 stage, u8 steps)
{
    EXPECT_LT(trace->count, ARRAY_COUNT(trace->events));
    trace->events[trace->count++] = (struct ApproachEvent){kind, localId, stage, steps};
}

static u16 ExitBlockAt(const struct ExitTrace *trace, s16 x, s16 y)
{
    const struct MapLayout *layout = trace->map->mapLayout;

    EXPECT_GE(x, 0);
    EXPECT_GE(y, 0);
    EXPECT_LT(x, layout->width);
    EXPECT_LT(y, layout->height);
    return layout->map[y * layout->width + x];
}

static void ExpectNoExitOverlap(const struct ExitTrace *trace, u32 actorIndex, s16 x, s16 y)
{
    const struct ApproachActor *other = &trace->actors[actorIndex ^ 1];

    EXPECT(x != trace->playerX || y != trace->playerY);
    EXPECT(x != other->x || y != other->y);
    for (u32 object = 0; object < trace->map->events->objectEventCount; object++)
    {
        const struct ObjectEventTemplate *template = &trace->map->events->objectEvents[object];

        if (template->localId == MAGMA_M_LOCAL_ID || template->localId == MAGMA_F_LOCAL_ID)
            continue;
        EXPECT(x != template->x || y != template->y);
    }
}

static void ExpectClearExitDestination(const struct ExitTrace *trace, u32 actorIndex)
{
    const struct ApproachActor *actor = &trace->actors[actorIndex];
    u16 block = ExitBlockAt(trace, actor->x, actor->y);

    EXPECT_EQ(UNPACK_COLLISION(block), 0);
    EXPECT_EQ(UNPACK_ELEVATION(block), 3);
    ExpectNoExitOverlap(trace, actorIndex, actor->x, actor->y);
}

static void ExpectJumpedLedge(const struct ExitTrace *trace, u32 actorIndex, s16 x, s16 y, u8 behavior)
{
    const struct MapLayout *layout = trace->map->mapLayout;
    u16 block = ExitBlockAt(trace, x, y);
    u16 metatile = UNPACK_METATILE(block);
    u16 attributes;

    EXPECT_NE(UNPACK_COLLISION(block), 0);
    if (metatile < NUM_METATILES_IN_PRIMARY)
        attributes = layout->primaryTileset->metatileAttributes[metatile];
    else
        attributes = layout->secondaryTileset->metatileAttributes[metatile - NUM_METATILES_IN_PRIMARY];
    EXPECT_EQ(UNPACK_BEHAVIOR(attributes), behavior);
    ExpectNoExitOverlap(trace, actorIndex, x, y);
}

static bool8 SupplyExitPlayerPosition(struct ScriptContext *ctx)
{
    struct ExitTrace *trace = ExitTraceFor(ctx);
    u16 xVar = ScriptReadHalfword(ctx);
    u16 yVar = ScriptReadHalfword(ctx);

    EXPECT_EQ(trace->count, 0);
    EXPECT_EQ(trace->positionReadCount, 0);
    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), FALSE);
    EXPECT_EQ(xVar, VAR_TEMP_0);
    EXPECT_EQ(yVar, VAR_TEMP_1);
    VarSet(xVar, trace->playerX);
    VarSet(yVar, trace->playerY);
    trace->positionReadCount++;
    return FALSE;
}

static bool8 RecordExitMovement(struct ScriptContext *ctx)
{
    struct ExitTrace *trace = ExitTraceFor(ctx);
    u16 localId = ScriptReadHalfword(ctx);
    const u8 *movement = (const u8 *)ScriptReadWord(ctx);
    u32 actorIndex = ActorIndex(localId);
    struct ApproachActor *actor = &trace->actors[actorIndex];
    const u8 *expected;
    u32 count;

    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), FALSE);
    EXPECT_EQ(trace->positionReadCount, 1);
    EXPECT_EQ(trace->waited, 0);
    EXPECT_EQ(trace->removed, 0);
    EXPECT_EQ(actor->pendingStage, STAGE_NONE);
    EXPECT_EQ(trace->applied & (1 << actorIndex), 0);
    if (actorIndex == 0)
    {
        expected = trace->playerX == 24 ? sMaleExitFrom24 : sMaleExitFrom25;
        count = trace->playerX == 24 ? ARRAY_COUNT(sMaleExitFrom24) : ARRAY_COUNT(sMaleExitFrom25);
    }
    else
    {
        expected = trace->playerX == 24 ? sFemaleExitFrom24 : sFemaleExitFrom25;
        count = trace->playerX == 24 ? ARRAY_COUNT(sFemaleExitFrom24) : ARRAY_COUNT(sFemaleExitFrom25);
    }
    // Model two-tile jumps without occupying the blocked ledge midpoint. Every
    // walk destination and jump landing must be clear in the real map layout.
    for (u32 step = 0; step < count - 1; step++)
    {
        EXPECT_EQ(movement[step], expected[step]);
        switch (movement[step])
        {
        case MOVEMENT_ACTION_WALK_FAST_LEFT:
            actor->x--;
            actor->facing = DIR_WEST;
            break;
        case MOVEMENT_ACTION_WALK_FAST_RIGHT:
            actor->x++;
            actor->facing = DIR_EAST;
            break;
        case MOVEMENT_ACTION_WALK_FAST_DOWN:
            actor->y++;
            actor->facing = DIR_SOUTH;
            break;
        case MOVEMENT_ACTION_JUMP_2_LEFT:
            EXPECT_EQ(actorIndex, 0);
            EXPECT_EQ(actor->x, 19);
            EXPECT_EQ(actor->y, 18);
            ExpectJumpedLedge(trace, actorIndex, 18, 18, MB_JUMP_WEST);
            actor->x -= 2;
            actor->facing = DIR_WEST;
            trace->jumps[actorIndex]++;
            break;
        case MOVEMENT_ACTION_JUMP_2_DOWN:
            EXPECT_EQ(actorIndex, 1);
            EXPECT_EQ(actor->x, 25);
            EXPECT_EQ(actor->y, 19);
            ExpectJumpedLedge(trace, actorIndex, 25, 20, MB_JUMP_SOUTH);
            actor->y += 2;
            actor->facing = DIR_SOUTH;
            trace->jumps[actorIndex]++;
            break;
        default:
            EXPECT(FALSE);
            break;
        }
        ExpectClearExitDestination(trace, actorIndex);
    }
    EXPECT_EQ(movement[count - 1], MOVEMENT_ACTION_STEP_END);
    actor->pendingStage = STAGE_WALK;
    trace->applied |= 1 << actorIndex;
    RecordExitEvent(trace, TRACE_APPLY, localId, STAGE_WALK, count - 1);
    return FALSE;
}

static bool8 RecordExitWait(struct ScriptContext *ctx)
{
    struct ExitTrace *trace = ExitTraceFor(ctx);
    u16 localId = ScriptReadHalfword(ctx);
    u32 actorIndex = ActorIndex(localId);
    struct ApproachActor *actor = &trace->actors[actorIndex];

    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), FALSE);
    EXPECT_EQ(trace->applied, 3);
    EXPECT_EQ(trace->removed, 0);
    EXPECT_EQ(actor->pendingStage, STAGE_WALK);
    actor->pendingStage = STAGE_NONE;
    trace->waited |= 1 << actorIndex;
    RecordExitEvent(trace, TRACE_WAIT, localId, STAGE_WALK, 0);
    return FALSE;
}

static bool8 RecordExitRemoval(struct ScriptContext *ctx)
{
    struct ExitTrace *trace = ExitTraceFor(ctx);
    u16 localId = ScriptReadHalfword(ctx);
    u32 actorIndex = ActorIndex(localId);

    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), FALSE);
    EXPECT_EQ(trace->waited, 3);
    EXPECT_EQ(trace->actors[0].pendingStage, STAGE_NONE);
    EXPECT_EQ(trace->actors[1].pendingStage, STAGE_NONE);
    EXPECT_EQ(trace->removed & (1 << actorIndex), 0);
    trace->removed |= 1 << actorIndex;
    RecordExitEvent(trace, EXIT_REMOVE, localId, STAGE_NONE, 0);
    return FALSE;
}

static bool8 RecordExitCompletion(struct ScriptContext *ctx)
{
    struct ExitTrace *trace = ExitTraceFor(ctx);

    EXPECT_EQ(ScriptReadHalfword(ctx), FLAG_NEW_MAGMA_GRUNTS);
    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), FALSE);
    EXPECT_EQ(trace->waited, 3);
    EXPECT_EQ(trace->removed, 3);
    FlagSet(FLAG_NEW_MAGMA_GRUNTS);
    RecordExitEvent(trace, EXIT_COMPLETE, 0, STAGE_NONE, 0);
    return FALSE;
}

static bool8 RecordExitRelease(struct ScriptContext *ctx)
{
    struct ExitTrace *trace = ExitTraceFor(ctx);

    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), TRUE);
    EXPECT_EQ(trace->removed, 3);
    EXPECT_EQ(trace->released, FALSE);
    trace->released = TRUE;
    RecordExitEvent(trace, EXIT_RELEASE, 0, STAGE_NONE, 0);
    return FALSE;
}

static bool8 RejectUnexpectedExitCommand(struct ScriptContext *ctx)
{
    // Starting at the post-battle entry must never run emotes, dialogue, another
    // battle, or any uninstrumented overworld/hardware command.
    EXPECT(FALSE);
    return TRUE;
}

TEST("Granite Cave Magma approach: both post-battle exits jump ledges, avoid obstacles and finish before removal")
{
    s16 playerX = 24;
    bool8 savedFlag = FlagGet(FLAG_NEW_MAGMA_GRUNTS);
    bool8 savedFollowerMovement = FlagGet(FLAG_SAFE_FOLLOWER_MOVEMENT);
    u16 savedXVar = VarGet(VAR_TEMP_0);
    u16 savedYVar = VarGet(VAR_TEMP_1);
    struct ExitTrace trace = {0};
    struct ScriptContext ctx;
    ScrCmdFunc commands[256];
    u32 commandCount = gScriptCmdTableEnd - gScriptCmdTable;

    PARAMETRIZE { playerX = 24; }
    PARAMETRIZE { playerX = 25; }

    trace.map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_GRANITE_CAVE_B2F), MAP_NUM(MAP_GRANITE_CAVE_B2F));
    trace.playerX = playerX;
    trace.playerY = 18;
    trace.actors[0] = (struct ApproachActor){playerX, 17, DIR_SOUTH, STAGE_NONE};
    trace.actors[1] = (struct ApproachActor){playerX, 19, DIR_NORTH, STAGE_NONE};
    ExpectClearExitDestination(&trace, 0);
    ExpectClearExitDestination(&trace, 1);

    EXPECT_LE(commandCount, ARRAY_COUNT(commands));
    for (u32 command = 0; command < commandCount; command++)
        commands[command] = RejectUnexpectedExitCommand;
    commands[SCR_OP_END] = gScriptCmdTable[SCR_OP_END];
    commands[SCR_OP_GOTO] = gScriptCmdTable[SCR_OP_GOTO];
    commands[SCR_OP_GOTO_IF] = gScriptCmdTable[SCR_OP_GOTO_IF];
    commands[SCR_OP_COMPARE_VAR_TO_VALUE] = gScriptCmdTable[SCR_OP_COMPARE_VAR_TO_VALUE];
    commands[SCR_OP_GETPLAYERXY] = SupplyExitPlayerPosition;
    commands[SCR_OP_APPLYMOVEMENT] = RecordExitMovement;
    commands[SCR_OP_WAITMOVEMENT] = RecordExitWait;
    commands[SCR_OP_REMOVEOBJECT] = RecordExitRemoval;
    commands[SCR_OP_SETFLAG] = RecordExitCompletion;
    commands[SCR_OP_RELEASEALL] = RecordExitRelease;
    FlagClear(FLAG_NEW_MAGMA_GRUNTS);
    VarSet(VAR_TEMP_0, 0x1111);
    VarSet(VAR_TEMP_1, 0x2222);
    InitScriptContext(&ctx, commands, commands + commandCount);
    ctx.data[3] = (u32)&trace;
    SetupBytecodeScript(&ctx, GraniteCave_B2F_EventScript_MagmaExit);
    EXPECT_EQ(RunScriptCommand(&ctx), FALSE);

    EXPECT_EQ(trace.positionReadCount, 1);
    EXPECT_EQ(VarGet(VAR_TEMP_0), playerX);
    EXPECT_EQ(VarGet(VAR_TEMP_1), 18);
    EXPECT_EQ(trace.count, ARRAY_COUNT(sExpectedExitEvents));
    for (u32 event = 0; event < trace.count; event++)
    {
        EXPECT_EQ(trace.events[event].kind, sExpectedExitEvents[event].kind);
        EXPECT_EQ(trace.events[event].localId, sExpectedExitEvents[event].localId);
        EXPECT_EQ(trace.events[event].stage, sExpectedExitEvents[event].stage);
    }
    EXPECT_EQ(trace.actors[0].x, 16);
    EXPECT_EQ(trace.actors[0].y, 19);
    EXPECT_EQ(trace.actors[0].facing, DIR_WEST);
    EXPECT_EQ(trace.actors[1].x, 25);
    EXPECT_EQ(trace.actors[1].y, 25);
    EXPECT_EQ(trace.actors[1].facing, DIR_SOUTH);
    EXPECT_EQ(trace.jumps[0], 1);
    EXPECT_EQ(trace.jumps[1], 1);
    EXPECT_EQ(trace.applied, 3);
    EXPECT_EQ(trace.waited, 3);
    EXPECT_EQ(trace.removed, 3);
    EXPECT_EQ(trace.released, TRUE);
    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), TRUE);
    VarSet(VAR_TEMP_0, savedXVar);
    VarSet(VAR_TEMP_1, savedYVar);
    if (savedFlag)
        FlagSet(FLAG_NEW_MAGMA_GRUNTS);
    else
        FlagClear(FLAG_NEW_MAGMA_GRUNTS);
    if (savedFollowerMovement)
        FlagSet(FLAG_SAFE_FOLLOWER_MOVEMENT);
    else
        FlagClear(FLAG_SAFE_FOLLOWER_MOVEMENT);
}

struct WorkingTrace
{
    u8 stage;
    u8 standardCalls;
    bool8 messageOpen;
};

static struct WorkingTrace *WorkingTraceFor(struct ScriptContext *ctx)
{
    return (struct WorkingTrace *)ctx->data[3];
}

static bool8 RecordWorkingLock(struct ScriptContext *ctx)
{
    struct WorkingTrace *trace = WorkingTraceFor(ctx);

    EXPECT_EQ(trace->stage, 0);
    trace->stage = 1;
    return FALSE;
}

static bool8 LoadWorkingText(struct ScriptContext *ctx)
{
    EXPECT_EQ(WorkingTraceFor(ctx)->stage, 1);
    EXPECT_EQ(ctx->scriptPtr[0], 0);
    return gScriptCmdTable[SCR_OP_LOAD_WORD](ctx);
}

static bool8 CallWorkingMsgbox(struct ScriptContext *ctx)
{
    struct WorkingTrace *trace = WorkingTraceFor(ctx);

    EXPECT_EQ(trace->stage, 1);
    EXPECT_EQ(trace->standardCalls, 0);
    EXPECT_EQ(ctx->scriptPtr[0], 4); // MSGBOX_DEFAULT in asm/macros/event.inc.
    trace->standardCalls++;
    // Follow the real default subroutine and return, without invoking a renderer.
    return gScriptCmdTable[SCR_OP_CALL_STD](ctx);
}

static bool8 RecordWorkingMessage(struct ScriptContext *ctx)
{
    struct WorkingTrace *trace = WorkingTraceFor(ctx);

    EXPECT_EQ(trace->stage, 1);
    EXPECT_EQ(trace->standardCalls, 1);
    EXPECT_EQ(ScriptReadWord(ctx), 0);
    EXPECT_EQ(StringCompare((const u8 *)ctx->data[0], COMPOUND_STRING(
        "The grunt is hammering away at the\nrock and does not notice you.")), 0);
    trace->messageOpen = TRUE;
    trace->stage = 2;
    return FALSE;
}

static bool8 RecordWorkingMessageWait(struct ScriptContext *ctx)
{
    struct WorkingTrace *trace = WorkingTraceFor(ctx);

    EXPECT_EQ(trace->stage, 2);
    EXPECT_EQ(trace->messageOpen, TRUE);
    trace->stage = 3;
    return FALSE;
}

static bool8 RecordWorkingButtonWait(struct ScriptContext *ctx)
{
    struct WorkingTrace *trace = WorkingTraceFor(ctx);

    EXPECT_EQ(trace->stage, 3);
    EXPECT_EQ(trace->messageOpen, TRUE);
    trace->stage = 4;
    return FALSE;
}

static bool8 RecordWorkingRelease(struct ScriptContext *ctx)
{
    struct WorkingTrace *trace = WorkingTraceFor(ctx);

    EXPECT_EQ(trace->stage, 4);
    EXPECT_EQ(trace->messageOpen, TRUE);
    trace->messageOpen = FALSE; // release hides/closes the field message box.
    trace->stage = 5;
    return FALSE;
}

TEST("Granite Cave Magma approach: both working grunts share ordinary dialogue without facing, movement, battle or progress changes")
{
    u16 localId = MAGMA_M_LOCAL_ID;
    bool8 completed = FALSE;
    bool8 savedFlag = FlagGet(FLAG_NEW_MAGMA_GRUNTS);
    bool8 savedFollowerMovement = FlagGet(FLAG_SAFE_FOLLOWER_MOVEMENT);
    u16 savedXVar = VarGet(VAR_TEMP_0);
    u16 savedYVar = VarGet(VAR_TEMP_1);
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_GRANITE_CAVE_B2F), MAP_NUM(MAP_GRANITE_CAVE_B2F));
    const struct ObjectEventTemplate *grunt = NULL;
    struct WorkingTrace trace = {0};
    struct ScriptContext ctx;
    ScrCmdFunc commands[256];
    u32 commandCount = gScriptCmdTableEnd - gScriptCmdTable;

    PARAMETRIZE { localId = MAGMA_M_LOCAL_ID; completed = FALSE; }
    PARAMETRIZE { localId = MAGMA_F_LOCAL_ID; completed = FALSE; }
    PARAMETRIZE { localId = MAGMA_M_LOCAL_ID; completed = TRUE; }
    PARAMETRIZE { localId = MAGMA_F_LOCAL_ID; completed = TRUE; }

    for (u32 object = 0; object < map->events->objectEventCount; object++)
        if (map->events->objectEvents[object].localId == localId)
            grunt = &map->events->objectEvents[object];
    EXPECT_NE(grunt, NULL);
    EXPECT_EQ(grunt->script, GraniteCave_B2F_EventScript_MagmaWorking);
    EXPECT_EQ(grunt->trainerType, TRAINER_TYPE_NONE);
    EXPECT_EQ(grunt->trainerRange_berryTreeId, 0);
    EXPECT_EQ(grunt->x, localId == MAGMA_M_LOCAL_ID ? 23 : 26);
    EXPECT_EQ(grunt->y, localId == MAGMA_M_LOCAL_ID ? 17 : 19);
    EXPECT_EQ(grunt->movementType, localId == MAGMA_M_LOCAL_ID ? MOVEMENT_TYPE_FACE_UP : MOVEMENT_TYPE_FACE_RIGHT);
    EXPECT_EQ(grunt->flagId, FLAG_NEW_MAGMA_GRUNTS);
    EXPECT_EQ(grunt->elevation, 3);

    // A strict whitelist makes accidental faceplayer, movement, trainer battles,
    // flag/variable writes or other hardware commands fail before executing.
    EXPECT_LE(commandCount, ARRAY_COUNT(commands));
    for (u32 command = 0; command < commandCount; command++)
        commands[command] = RejectUnexpectedExitCommand;
    commands[SCR_OP_END] = gScriptCmdTable[SCR_OP_END];
    commands[SCR_OP_RETURN] = gScriptCmdTable[SCR_OP_RETURN];
    commands[SCR_OP_LOAD_WORD] = LoadWorkingText;
    commands[SCR_OP_CALL_STD] = CallWorkingMsgbox;
    commands[SCR_OP_LOCK] = RecordWorkingLock;
    commands[SCR_OP_MESSAGE] = RecordWorkingMessage;
    commands[SCR_OP_WAITMESSAGE] = RecordWorkingMessageWait;
    commands[SCR_OP_WAITBUTTONPRESS] = RecordWorkingButtonWait;
    commands[SCR_OP_RELEASE] = RecordWorkingRelease;
    if (completed)
        FlagSet(FLAG_NEW_MAGMA_GRUNTS);
    else
        FlagClear(FLAG_NEW_MAGMA_GRUNTS);
    VarSet(VAR_TEMP_0, 0x1111);
    VarSet(VAR_TEMP_1, 0x2222);
    InitScriptContext(&ctx, commands, commands + commandCount);
    ctx.data[3] = (u32)&trace;
    SetupBytecodeScript(&ctx, grunt->script);
    EXPECT_EQ(RunScriptCommand(&ctx), FALSE);

    EXPECT_EQ(trace.stage, 5);
    EXPECT_EQ(trace.standardCalls, 1);
    EXPECT_EQ(trace.messageOpen, FALSE);
    EXPECT_EQ(FlagGet(FLAG_NEW_MAGMA_GRUNTS), completed);
    EXPECT_EQ(VarGet(VAR_TEMP_0), 0x1111);
    EXPECT_EQ(VarGet(VAR_TEMP_1), 0x2222);
    VarSet(VAR_TEMP_0, savedXVar);
    VarSet(VAR_TEMP_1, savedYVar);
    if (savedFlag)
        FlagSet(FLAG_NEW_MAGMA_GRUNTS);
    else
        FlagClear(FLAG_NEW_MAGMA_GRUNTS);
    if (savedFollowerMovement)
        FlagSet(FLAG_SAFE_FOLLOWER_MOVEMENT);
    else
        FlagClear(FLAG_SAFE_FOLLOWER_MOVEMENT);
}
