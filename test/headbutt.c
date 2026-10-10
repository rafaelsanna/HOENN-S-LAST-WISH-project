#include "global.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "event_scripts.h"
#include "field_effect.h"
#include "field_move.h"
#include "fieldmap.h"
#include "fldeff.h"
#include "item.h"
#include "malloc.h"
#include "overworld.h"
#include "party_menu.h"
#include "pokemon.h"
#include "random.h"
#include "script.h"
#include "string_util.h"
#include "constants/event_objects.h"
#include "constants/event_object_movement.h"
#include "constants/field_move.h"
#include "constants/flags.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/script_commands.h"
#include "test/test.h"

extern bool8 ScrCmd_checkfieldmove(struct ScriptContext *ctx);

struct HeadbuttSavedState
{
    struct Pokemon party[PARTY_SIZE];
    struct ObjectEvent objects[OBJECT_EVENTS_COUNT];
    struct ObjectEventTemplate templates[OBJECT_EVENT_TEMPLATES_COUNT];
    struct MapHeader mapHeader;
    struct PlayerAvatar playerAvatar;
    struct WarpData location;
    struct LegacyBag bag;
    struct BagExpansionSave bagExpansion;
    u8 flags[sizeof(gSaveBlock1Ptr->flags)];
    rng_value_t rng;
    bool8 (*fieldCallback)(void);
    MainCallback postMenuCallback;
    u16 result;
    u16 lastTalked;
    u16 special8004;
    s32 fieldEffectMon;
    u8 partyCount;
    s8 selectedSlot;
    bool8 controlsLocked;
};

static struct HeadbuttSavedState *SetUpHeadbutt(void)
{
    struct HeadbuttSavedState *saved = Alloc(sizeof(*saved));

    ASSUME(saved != NULL);
    memcpy(saved->party, gPlayerParty, sizeof(saved->party));
    memcpy(saved->objects, gObjectEvents, sizeof(saved->objects));
    memcpy(saved->templates, gSaveBlock1Ptr->objectEventTemplates, sizeof(saved->templates));
    memcpy(saved->flags, gSaveBlock1Ptr->flags, sizeof(saved->flags));
    saved->mapHeader = gMapHeader;
    saved->playerAvatar = gPlayerAvatar;
    saved->location = gSaveBlock1Ptr->location;
    saved->bag = gSaveBlock1Ptr->bag;
    saved->bagExpansion = gSaveBlock1Ptr->bagExpansion;
    saved->rng = gRngValue;
    saved->fieldCallback = gFieldCallback2;
    saved->postMenuCallback = gPostMenuFieldCallback;
    saved->result = gSpecialVar_Result;
    saved->lastTalked = gSpecialVar_LastTalked;
    saved->special8004 = gSpecialVar_0x8004;
    saved->fieldEffectMon = gFieldEffectArguments[0];
    saved->partyCount = gPlayerPartyCount;
    saved->selectedSlot = gPartyMenu.slotId;
    saved->controlsLocked = ArePlayerFieldControlsLocked();

    memset(gPlayerParty, 0, sizeof(saved->party));
    memset(gObjectEvents, 0, sizeof(saved->objects));
    memset(&gPlayerAvatar, 0, sizeof(gPlayerAvatar));
    ClearBag();
    FlagClear(FLAG_BADGE01_GET);
    FlagClear(FLAG_BADGE04_GET);
    gPlayerPartyCount = 0;
    gSpecialVar_Result = 0xFFFF;
    gSpecialVar_LastTalked = 0xFFFF;
    gFieldCallback2 = NULL;
    gPostMenuFieldCallback = NULL;
    ScriptContext_Init();
    UnlockPlayerFieldControls();
    return saved;
}

static void TearDownHeadbutt(struct HeadbuttSavedState *saved)
{
    memcpy(gPlayerParty, saved->party, sizeof(saved->party));
    memcpy(gObjectEvents, saved->objects, sizeof(saved->objects));
    memcpy(gSaveBlock1Ptr->objectEventTemplates, saved->templates, sizeof(saved->templates));
    memcpy(gSaveBlock1Ptr->flags, saved->flags, sizeof(saved->flags));
    gMapHeader = saved->mapHeader;
    gPlayerAvatar = saved->playerAvatar;
    gSaveBlock1Ptr->location = saved->location;
    gSaveBlock1Ptr->bag = saved->bag;
    gSaveBlock1Ptr->bagExpansion = saved->bagExpansion;
    gRngValue = saved->rng;
    gFieldCallback2 = saved->fieldCallback;
    gPostMenuFieldCallback = saved->postMenuCallback;
    gSpecialVar_Result = saved->result;
    gSpecialVar_LastTalked = saved->lastTalked;
    gSpecialVar_0x8004 = saved->special8004;
    gFieldEffectArguments[0] = saved->fieldEffectMon;
    gPlayerPartyCount = saved->partyCount;
    gPartyMenu.slotId = saved->selectedSlot;
    ScriptContext_Init();
    if (saved->controlsLocked)
        LockPlayerFieldControls();
    else
        UnlockPlayerFieldControls();
    Free(saved);
}

static void AddHeadbuttMon(u8 slot, u16 species, u8 moveSlot, bool8 egg)
{
    u16 move;

    CreateMon(&gPlayerParty[slot], species, 30, 0, TRUE, slot + 1, OT_ID_PRESET, 0);
    for (u32 i = 0; i < MAX_MON_MOVES; i++)
    {
        move = i == moveSlot ? MOVE_HEADBUTT : MOVE_NONE;
        SetMonData(&gPlayerParty[slot], MON_DATA_MOVE1 + i, &move);
    }
    SetMonData(&gPlayerParty[slot], MON_DATA_IS_EGG, &egg);
    gPlayerPartyCount = slot + 1;
}

static u16 CheckFieldMove(enum FieldMove move, bool8 unlockedCheck)
{
    const u8 operands[] = { move, unlockedCheck };
    struct ScriptContext ctx = { .scriptPtr = operands };

    EXPECT_EQ(ScrCmd_checkfieldmove(&ctx), FALSE);
    EXPECT_EQ(ctx.scriptPtr, operands + sizeof(operands));
    return gSpecialVar_Result;
}

TEST("Headbutt: tree eligibility accepts the known move in every move slot without an HM")
{
    u8 slot;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { slot = 0; }
    PARAMETRIZE { slot = 1; }
    PARAMETRIZE { slot = 2; }
    PARAMETRIZE { slot = 3; }

    saved = SetUpHeadbutt();
    FlagSet(FLAG_BADGE04_GET);
    AddHeadbuttMon(0, SPECIES_ZIGZAGOON, slot, FALSE);
    ASSUME(!CanLearnTeachableMove(SPECIES_ZIGZAGOON, MOVE_HEADBUTT));
    for (u16 item = ITEM_HM01; item <= ITEM_HM08; item++)
        EXPECT(!CheckBagHasItem(item, 1));
    EXPECT_EQ(CheckFieldMove(FIELD_MOVE_HEADBUTT, TRUE), 0);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: compatibility alone eggs and missing fourth badge cannot unlock trees")
{
    enum { UNKNOWN_MOVE, EGG, MISSING_BADGE, EMPTY_PARTY } reason;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { reason = UNKNOWN_MOVE; }
    PARAMETRIZE { reason = EGG; }
    PARAMETRIZE { reason = MISSING_BADGE; }
    PARAMETRIZE { reason = EMPTY_PARTY; }

    saved = SetUpHeadbutt();
    FlagSet(FLAG_BADGE04_GET);
    if (reason != EMPTY_PARTY)
        AddHeadbuttMon(0, SPECIES_MEW, reason == UNKNOWN_MOVE ? MAX_MON_MOVES : 0, reason == EGG);
    if (reason == MISSING_BADGE)
        FlagClear(FLAG_BADGE04_GET);
    ASSUME(CanLearnTeachableMove(SPECIES_MEW, MOVE_HEADBUTT));
    EXPECT_EQ(CheckFieldMove(FIELD_MOVE_HEADBUTT, TRUE), PARTY_SIZE);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: tree eligibility skips incompatible or egg party members")
{
    bool8 firstIsEgg;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { firstIsEgg = FALSE; }
    PARAMETRIZE { firstIsEgg = TRUE; }

    saved = SetUpHeadbutt();
    FlagSet(FLAG_BADGE04_GET);
    AddHeadbuttMon(0, SPECIES_MEW, firstIsEgg ? 0 : MAX_MON_MOVES, firstIsEgg);
    AddHeadbuttMon(1, SPECIES_ZIGZAGOON, 3, FALSE);
    EXPECT_EQ(CheckFieldMove(FIELD_MOVE_HEADBUTT, TRUE), 1);
    EXPECT_EQ(gSpecialVar_0x8004, SPECIES_ZIGZAGOON);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: an explicitly unchecked query still requires knowing the move")
{
    struct HeadbuttSavedState *saved = SetUpHeadbutt();

    AddHeadbuttMon(0, SPECIES_ZIGZAGOON, 2, FALSE);
    EXPECT_EQ(CheckFieldMove(FIELD_MOVE_HEADBUTT, FALSE), 0);
    AddHeadbuttMon(0, SPECIES_MEW, MAX_MON_MOVES, FALSE);
    EXPECT_EQ(CheckFieldMove(FIELD_MOVE_HEADBUTT, FALSE), PARTY_SIZE);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: existing HM compatibility still works without learning Cut or Strength")
{
    enum FieldMove move;
    u16 badge, item;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { move = FIELD_MOVE_CUT; badge = FLAG_BADGE01_GET; item = ITEM_HM01; }
    PARAMETRIZE { move = FIELD_MOVE_STRENGTH; badge = FLAG_BADGE04_GET; item = ITEM_HM04; }

    saved = SetUpHeadbutt();
    AddHeadbuttMon(0, SPECIES_CHARIZARD, MAX_MON_MOVES, FALSE);
    ASSUME(CanLearnTeachableMove(SPECIES_CHARIZARD, FieldMove_GetMoveId(move)));
    FlagSet(badge);
    EXPECT_EQ(CheckFieldMove(move, TRUE), PARTY_SIZE);
    EXPECT(AddBagItem(item, 1));
    FlagClear(badge);
    EXPECT_EQ(CheckFieldMove(move, TRUE), PARTY_SIZE);
    FlagSet(badge);
    EXPECT_EQ(CheckFieldMove(move, TRUE), 0);
    EXPECT(!MonKnowsMove(&gPlayerParty[0], FieldMove_GetMoveId(move)));
    TearDownHeadbutt(saved);
}

static void PlaceHeadbuttTree(u16 map, u8 localId, u8 direction)
{
    const struct MapHeader *header = Overworld_GetMapHeaderByGroupAndId(MAP_GROUP(map), MAP_NUM(map));
    const struct ObjectEventTemplate *tree;
    s16 playerX, playerY;

    ASSUME(header->events != NULL);
    tree = FindObjectEventTemplateByLocalId(localId, header->events->objectEvents, header->events->objectEventCount);
    ASSUME(tree != NULL);
    EXPECT_EQ(tree->script, EventScript_Headbutt);
    gMapHeader = *header;
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(map);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(map);
    LoadObjEventTemplatesFromHeader();
    playerX = tree->x + MAP_OFFSET;
    playerY = tree->y + MAP_OFFSET;
    switch (direction)
    {
    case DIR_NORTH: playerY++; break;
    case DIR_SOUTH: playerY--; break;
    case DIR_EAST: playerX--; break;
    case DIR_WEST: playerX++; break;
    }
    gPlayerAvatar.objectEventId = 0;
    gObjectEvents[0] = (struct ObjectEvent)
    {
        .active = TRUE,
        .localId = LOCALID_PLAYER,
        .mapGroup = MAP_GROUP(map),
        .mapNum = MAP_NUM(map),
        .currentCoords = { playerX, playerY },
        .currentElevation = 3,
        .previousElevation = 3,
        .facingDirection = direction,
    };
    gObjectEvents[1] = (struct ObjectEvent)
    {
        .active = TRUE,
        .localId = localId,
        .mapGroup = MAP_GROUP(map),
        .mapNum = MAP_NUM(map),
        .graphicsId = tree->graphicsId,
        .currentCoords = { tree->x + MAP_OFFSET, tree->y + MAP_OFFSET },
        .currentElevation = 3,
        .previousElevation = 3,
    };
}

TEST("Headbutt: every scripted tree accepts party-menu use including transferred props and Aipom")
{
    u16 map;
    u8 localId;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { map = MAP_DEWDROP_JUNGLE; localId = 2; }
    PARAMETRIZE { map = MAP_DEWDROP_JUNGLE; localId = 5; }
    PARAMETRIZE { map = MAP_DEWDROP_JUNGLE; localId = 6; }
    PARAMETRIZE { map = MAP_DEWDROP_JUNGLE; localId = 7; }
    PARAMETRIZE { map = MAP_PETALBURG_WOODS; localId = 17; }
    PARAMETRIZE { map = MAP_PETALBURG_WOODS; localId = 18; }
    PARAMETRIZE { map = MAP_RUSTBORO_CITY; localId = 18; }
    PARAMETRIZE { map = MAP_VERDANTURF_TOWN; localId = 5; }
    PARAMETRIZE { map = MAP_ROUTE119; localId = 49; }
    PARAMETRIZE { map = MAP_ROUTE120; localId = 48; }
    PARAMETRIZE { map = MAP_ROUTE123; localId = 46; }

    saved = SetUpHeadbutt();
    PlaceHeadbuttTree(map, localId, DIR_NORTH);
    EXPECT_EQ(gFieldMoveInfo[FIELD_MOVE_HEADBUTT].fieldMoveFunc, SetUpFieldMove_Headbutt);
    EXPECT(SetUpFieldMove_Headbutt());
    EXPECT_EQ(gSpecialVar_LastTalked, localId);
    EXPECT_EQ(gFieldCallback2, FieldCallback_PrepareFadeInFromMenu);
    EXPECT(gPostMenuFieldCallback != NULL);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: party-menu use identifies the facing script not the tree graphic")
{
    u8 direction;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { direction = DIR_NORTH; }
    PARAMETRIZE { direction = DIR_SOUTH; }
    PARAMETRIZE { direction = DIR_EAST; }
    PARAMETRIZE { direction = DIR_WEST; }

    saved = SetUpHeadbutt();
    PlaceHeadbuttTree(MAP_DEWDROP_JUNGLE, 2, direction);
    gObjectEvents[1].graphicsId = OBJ_EVENT_GFX_GIRL_1;
    EXPECT(SetUpFieldMove_Headbutt());
    EXPECT_EQ(gSpecialVar_LastTalked, 2);
    TearDownHeadbutt(saved);
}

static bool8 DummyFieldCallback(void)
{
    return FALSE;
}

static void DummyPostMenuCallback(void)
{
}

TEST("Headbutt: empty tiles NPCs boulders followers missing templates and wrong positions are rejected")
{
    enum { EMPTY, NPC, BOULDER, FOLLOWER, MISSING_TEMPLATE, WRONG_ELEVATION, BEHIND, PLAYER } reason;
    struct HeadbuttSavedState *saved;

    PARAMETRIZE { reason = EMPTY; }
    PARAMETRIZE { reason = NPC; }
    PARAMETRIZE { reason = BOULDER; }
    PARAMETRIZE { reason = FOLLOWER; }
    PARAMETRIZE { reason = MISSING_TEMPLATE; }
    PARAMETRIZE { reason = WRONG_ELEVATION; }
    PARAMETRIZE { reason = BEHIND; }
    PARAMETRIZE { reason = PLAYER; }

    saved = SetUpHeadbutt();
    PlaceHeadbuttTree(MAP_DEWDROP_JUNGLE, 2, DIR_NORTH);
    switch (reason)
    {
    case EMPTY: gObjectEvents[1].active = FALSE; break;
    case NPC:
        gObjectEvents[1].graphicsId = OBJ_EVENT_GFX_GIRL_1;
        gSaveBlock1Ptr->objectEventTemplates[1].script = NULL;
        break;
    case BOULDER:
        gObjectEvents[1].graphicsId = OBJ_EVENT_GFX_PUSHABLE_BOULDER;
        gSaveBlock1Ptr->objectEventTemplates[1].script = NULL;
        break;
    case FOLLOWER: gObjectEvents[1].localId = OBJ_EVENT_ID_FOLLOWER; break;
    case MISSING_TEMPLATE: gObjectEvents[1].localId = 250; break;
    case WRONG_ELEVATION: gObjectEvents[1].currentElevation = 4; break;
    case BEHIND: gObjectEvents[0].facingDirection = DIR_SOUTH; break;
    case PLAYER: gObjectEvents[1].localId = LOCALID_PLAYER; break;
    }
    gFieldCallback2 = DummyFieldCallback;
    gPostMenuFieldCallback = DummyPostMenuCallback;
    EXPECT(!SetUpFieldMove_Headbutt());
    EXPECT_EQ(gFieldCallback2, DummyFieldCallback);
    EXPECT_EQ(gPostMenuFieldCallback, DummyPostMenuCallback);
    EXPECT_EQ(gSpecialVar_LastTalked, 0xFFFF);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: party callback keeps the selected Pokemon instead of choosing the first eligible one")
{
    struct HeadbuttSavedState *saved = SetUpHeadbutt();

    FlagSet(FLAG_BADGE04_GET);
    AddHeadbuttMon(0, SPECIES_ZIGZAGOON, 0, FALSE);
    AddHeadbuttMon(1, SPECIES_MEW, MAX_MON_MOVES, FALSE);
    AddHeadbuttMon(2, SPECIES_ZIGZAGOON, 3, FALSE);
    gPartyMenu.slotId = 2;
    EXPECT_EQ(CheckFieldMove(FIELD_MOVE_HEADBUTT, TRUE), 0);
    PlaceHeadbuttTree(MAP_DEWDROP_JUNGLE, 2, DIR_NORTH);
    EXPECT(SetUpFieldMove_Headbutt());
    ASSUME(gPostMenuFieldCallback != NULL);
    EXPECT(!ScriptContext_IsEnabled());
    gPostMenuFieldCallback();
    EXPECT(ScriptContext_IsEnabled());
    EXPECT_EQ(gSpecialVar_Result, 2);
    EXPECT_EQ(gSpecialVar_LastTalked, 2);
    TearDownHeadbutt(saved);
}

TEST("Headbutt: both script entries prepare the correct Pokemon before displaying the prompt")
{
    bool8 fromParty;
    u8 expectedSlot;
    u8 nickname[POKEMON_NAME_LENGTH + 1];
    struct ScriptContext ctx;
    struct HeadbuttSavedState *saved;
    const u8 *entry;

    PARAMETRIZE { fromParty = FALSE; expectedSlot = 0; }
    PARAMETRIZE { fromParty = TRUE; expectedSlot = 2; }

    saved = SetUpHeadbutt();
    FlagSet(FLAG_BADGE04_GET);
    AddHeadbuttMon(0, SPECIES_ZIGZAGOON, 0, FALSE);
    AddHeadbuttMon(1, SPECIES_MEW, MAX_MON_MOVES, FALSE);
    AddHeadbuttMon(2, SPECIES_AIPOM, 3, FALSE);
    gSpecialVar_Result = 2;
    entry = fromParty ? EventScript_HeadbuttFromParty : EventScript_Headbutt;
    ASSUME(entry[0] == SCR_OP_LOCKALL);
    // Skip only lockall so the real shared script can be inspected without
    // creating an overworld movement task or opening a message window.
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE, entry + 1, &ctx));
    EXPECT_EQ(gFieldEffectArguments[0], expectedSlot);
    GetMonNickname(&gPlayerParty[expectedSlot], nickname);
    EXPECT_EQ(StringCompare(gStringVar1, nickname), 0);
    TearDownHeadbutt(saved);
}
