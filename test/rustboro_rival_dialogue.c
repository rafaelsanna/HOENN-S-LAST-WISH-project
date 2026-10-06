#include "global.h"
#include "event_data.h"
#include "field_mugshots.h"
#include "script.h"
#include "test/test.h"
#include "constants/field_mugshots.h"
#include "constants/flags.h"
#include "constants/script_commands.h"
#include "constants/vars.h"

extern ScrCmdFunc gScriptCmdTable[];
extern ScrCmdFunc gScriptCmdTableEnd[];
extern const u8 RustboroCity_EventScript_Rival[];
extern const u8 RustboroCity_EventScript_RivalTrigger0[];
extern const u8 RustboroCity_EventScript_RivalTrigger1[];
extern const u8 RustboroCity_EventScript_RivalTrigger2[];
extern const u8 RustboroCity_EventScript_RivalTrigger3[];
extern const u8 RustboroCity_EventScript_RivalTrigger4[];
extern const u8 RustboroCity_EventScript_RivalTrigger5[];
extern const u8 RustboroCity_EventScript_RivalTrigger6[];
extern const u8 RustboroCity_EventScript_RivalTrigger7[];
extern const u8 RustboroCity_EventScript_RivalEncounter[];
extern const u8 RustboroCity_EventScript_MayEncounter[];
extern const u8 RustboroCity_EventScript_MayAskToBattle[];
extern const u8 RustboroCity_EventScript_MayBrineyHint[];
extern const u8 RustboroCity_EventScript_BrendanEncounter[];
extern const u8 RustboroCity_EventScript_BrendanAskToBattle[];
extern const u8 RustboroCity_EventScript_BrendanBrineyHint[];

static const u8 *const sEntryScripts[] =
{
    RustboroCity_EventScript_Rival,
    RustboroCity_EventScript_RivalTrigger0,
    RustboroCity_EventScript_RivalTrigger1,
    RustboroCity_EventScript_RivalTrigger2,
    RustboroCity_EventScript_RivalTrigger3,
    RustboroCity_EventScript_RivalTrigger4,
    RustboroCity_EventScript_RivalTrigger5,
    RustboroCity_EventScript_RivalTrigger6,
    RustboroCity_EventScript_RivalTrigger7,
};

struct SavedRivalState
{
    u16 cityState;
    u16 routeState;
    u16 mugshot;
    u16 emote;
    u16 dialogueMode;
    u16 result;
    u8 gender;
    bool8 met;
    bool8 defeated;
};

static void SetUpRivalState(struct SavedRivalState *saved, u8 gender, bool32 met, bool32 defeated)
{
    saved->cityState = VarGet(VAR_RUSTBORO_CITY_STATE);
    saved->routeState = VarGet(VAR_ROUTE104_STATE);
    saved->mugshot = VarGet(VAR_0x8003);
    saved->emote = VarGet(VAR_0x8004);
    saved->dialogueMode = VarGet(VAR_0x8008);
    saved->result = VarGet(VAR_RESULT);
    saved->gender = gSaveBlock2Ptr->playerGender;
    saved->met = FlagGet(FLAG_MET_RIVAL_RUSTBORO);
    saved->defeated = FlagGet(FLAG_DEFEATED_RIVAL_RUSTBORO);

    gSaveBlock2Ptr->playerGender = gender;
    if (met)
        FlagSet(FLAG_MET_RIVAL_RUSTBORO);
    else
        FlagClear(FLAG_MET_RIVAL_RUSTBORO);
    if (defeated)
        FlagSet(FLAG_DEFEATED_RIVAL_RUSTBORO);
    else
        FlagClear(FLAG_DEFEATED_RIVAL_RUSTBORO);
    // Distinct sentinels detect first-meeting initialization being skipped or repeated.
    VarSet(VAR_RUSTBORO_CITY_STATE, 7);
    VarSet(VAR_ROUTE104_STATE, 1);
}

static void TearDownRivalState(const struct SavedRivalState *saved)
{
    VarSet(VAR_RUSTBORO_CITY_STATE, saved->cityState);
    VarSet(VAR_ROUTE104_STATE, saved->routeState);
    VarSet(VAR_0x8003, saved->mugshot);
    VarSet(VAR_0x8004, saved->emote);
    VarSet(VAR_0x8008, saved->dialogueMode);
    VarSet(VAR_RESULT, saved->result);
    gSaveBlock2Ptr->playerGender = saved->gender;
    if (saved->met)
        FlagSet(FLAG_MET_RIVAL_RUSTBORO);
    else
        FlagClear(FLAG_MET_RIVAL_RUSTBORO);
    if (saved->defeated)
        FlagSet(FLAG_DEFEATED_RIVAL_RUSTBORO);
    else
        FlagClear(FLAG_DEFEATED_RIVAL_RUSTBORO);
}

static const u8 *FirstTextOperand(const u8 *script)
{
    // Text labels are local assembler symbols. Read the first lexical msgbox
    // operand from each global handler instead of exporting production text
    // solely for tests. Do not follow its conditional jumps: this selects the
    // handler's own text independently of the runtime flag-controlled path.
    for (u32 commands = 0; commands < 32; commands++)
    {
        struct ScriptContext operand;

        switch (script[0])
        {
        case SCR_OP_LOAD_WORD:
            EXPECT_EQ(script[1], 0);
            operand.scriptPtr = script + 2;
            return (const u8 *)ScriptReadWord(&operand);
        case SCR_OP_LOCK:
        case SCR_OP_FACEPLAYER:
            script += 1;
            break;
        case SCR_OP_CHECKFLAG:
        case SCR_OP_SETFLAG:
            script += 3;
            break;
        case SCR_OP_SETVAR:
        case SCR_OP_SETORCOPYVAR:
        case SCR_OP_CALLNATIVE:
            script += 5;
            break;
        case SCR_OP_GOTO_IF:
            script += 6;
            break;
        default:
            EXPECT(FALSE);
            return NULL;
        }
    }
    EXPECT(FALSE);
    return NULL;
}

static const u8 *ExpectedDialogue(u8 gender, bool32 met, bool32 defeated)
{
    if (gender == MALE)
    {
        if (defeated)
            return FirstTextOperand(RustboroCity_EventScript_MayBrineyHint);
        return FirstTextOperand(met ? RustboroCity_EventScript_MayAskToBattle : RustboroCity_EventScript_MayEncounter);
    }
    if (defeated)
        return FirstTextOperand(RustboroCity_EventScript_BrendanBrineyHint);
    return FirstTextOperand(met ? RustboroCity_EventScript_BrendanAskToBattle : RustboroCity_EventScript_BrendanEncounter);
}

static void ExpectRivalState(bool32 met, bool32 defeated)
{
    bool32 firstMeeting = !met && !defeated;

    EXPECT_EQ(FlagGet(FLAG_MET_RIVAL_RUSTBORO), met || firstMeeting);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_RIVAL_RUSTBORO), defeated);
    EXPECT_EQ(VarGet(VAR_RUSTBORO_CITY_STATE), firstMeeting ? 8 : 7);
    EXPECT_EQ(VarGet(VAR_ROUTE104_STATE), firstMeeting ? 2 : 1);
}

TEST("Rustboro rival dialogue: shared encounter selects the first, repeat or defeated dialogue for both genders")
{
    u8 gender = MALE;
    bool32 met = FALSE;
    bool32 defeated = FALSE;
    struct SavedRivalState saved;
    struct ScriptContext ctx;

    for (u32 g = MALE; g <= FEMALE; g++)
        for (u32 m = FALSE; m <= TRUE; m++)
            for (u32 d = FALSE; d <= TRUE; d++)
                PARAMETRIZE { gender = g; met = m; defeated = d; }

    SetUpRivalState(&saved, gender, met, defeated);
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        RustboroCity_EventScript_RivalEncounter, &ctx));
    if (defeated)
    {
        // The post-battle hint locks/faces the object before preparing its mugshot.
        // Inspect those bytes rather than executing any overworld operations.
        EXPECT_EQ(ctx.scriptPtr[0], SCR_OP_LOCK);
        EXPECT_EQ(ctx.scriptPtr[1], SCR_OP_FACEPLAYER);
        EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
            ctx.scriptPtr + 2, &ctx));
    }
    ExpectRivalState(met, defeated);
    EXPECT_EQ(VarGet(VAR_0x8003), gender == MALE ? MUGSHOT_ZINNIA : MUGSHOT_ZENNO);
    EXPECT_EQ(VarGet(VAR_0x8004), EMOTE_NORMAL);

    // Stop before the uninstrumented mugshot native, then resume after its five
    // bytes. The real loadword/msgbox control flow selects the dialogue and stops
    // before displaying the message; no sprite, object or window is required.
    EXPECT_EQ(ctx.scriptPtr[0], SCR_OP_CALLNATIVE);
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        ctx.scriptPtr + 5, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)ExpectedDialogue(gender, met, defeated));
    EXPECT_EQ(ctx.scriptPtr[0], SCR_OP_MESSAGE);
    TearDownRivalState(&saved);
}

// The entry-path test uses the real interpreter and flag/gender/control-flow
// commands. Only graphics, movement and audio are skipped. The first message is
// a stopping boundary, so the test never asks a question or starts a battle.
static bool8 SkipNoArgs(struct ScriptContext *ctx)
{
    return FALSE;
}

static bool8 SkipTwoArgs(struct ScriptContext *ctx)
{
    ctx->scriptPtr += 2;
    return FALSE;
}

static bool8 SkipThreeArgs(struct ScriptContext *ctx)
{
    ctx->scriptPtr += 3;
    return FALSE;
}

static bool8 SkipSixArgs(struct ScriptContext *ctx)
{
    ctx->scriptPtr += 6;
    return FALSE;
}

static bool8 SkipMugshot(struct ScriptContext *ctx)
{
    EXPECT_EQ(ScriptReadWord(ctx), (u32)CreateFieldMugshot);
    return FALSE;
}

static bool8 RecordEncounterBoundary(struct ScriptContext *ctx)
{
    const u8 *destination = (const u8 *)ScriptReadWord(ctx);

    if (destination == RustboroCity_EventScript_RivalEncounter)
    {
        // 1 means first meeting, 2 means repeat. Zero means no shared encounter.
        EXPECT_EQ(ctx->data[1], 0);
        ctx->data[1] = 1 + FlagGet(FLAG_MET_RIVAL_RUSTBORO);
    }
    ScriptJump(ctx, destination);
    return FALSE;
}

static bool8 StopAtMessage(struct ScriptContext *ctx)
{
    const u8 *text = (const u8 *)ScriptReadWord(ctx);

    ctx->data[2] = text != NULL ? (u32)text : ctx->data[0];
    ctx->data[3] = TRUE;
    return TRUE;
}

TEST("Rustboro rival dialogue: direct interaction and all eight triggers preserve the first-meeting flag until shared routing")
{
    u32 entry = 0;
    u8 gender = MALE;
    bool32 met = FALSE;
    bool32 defeated = FALSE;
    struct SavedRivalState saved;
    struct ScriptContext ctx;
    ScrCmdFunc commands[256];
    u32 commandCount = gScriptCmdTableEnd - gScriptCmdTable;

    for (u32 e = 0; e < ARRAY_COUNT(sEntryScripts); e++)
        for (u32 g = MALE; g <= FEMALE; g++)
            for (u32 m = FALSE; m <= TRUE; m++)
                for (u32 d = FALSE; d <= TRUE; d++)
                    PARAMETRIZE { entry = e; gender = g; met = m; defeated = d; }

    EXPECT_LE(commandCount, ARRAY_COUNT(commands));
    memcpy(commands, gScriptCmdTable, commandCount * sizeof(commands[0]));
    commands[SCR_OP_LOCKALL] = SkipNoArgs;
    commands[SCR_OP_LOCK] = SkipNoArgs;
    commands[SCR_OP_FACEPLAYER] = SkipNoArgs;
    commands[SCR_OP_RELEASEALL] = SkipNoArgs;
    commands[SCR_OP_RELEASE] = SkipNoArgs;
    commands[SCR_OP_PLAYSE] = SkipTwoArgs;
    commands[SCR_OP_PLAYBGM] = SkipThreeArgs;
    commands[SCR_OP_APPLYMOVEMENT] = SkipSixArgs;
    commands[SCR_OP_WAITMOVEMENT] = SkipTwoArgs;
    commands[SCR_OP_CALLNATIVE] = SkipMugshot;
    commands[SCR_OP_GOTO] = RecordEncounterBoundary;
    commands[SCR_OP_MESSAGE] = StopAtMessage;

    SetUpRivalState(&saved, gender, met, defeated);
    InitScriptContext(&ctx, commands, commands + commandCount);
    SetupBytecodeScript(&ctx, sEntryScripts[entry]);
    RunScriptCommand(&ctx);
    if (!defeated)
    {
        EXPECT_EQ(ctx.data[1], met ? 2 : 1);
        EXPECT_EQ(ctx.data[3], TRUE);
        EXPECT_EQ(ctx.data[2], (u32)ExpectedDialogue(gender, met, FALSE));
    }
    else
    {
        EXPECT_EQ(ctx.data[1], 0);
        EXPECT_EQ(ctx.data[3], entry == 0);
        if (entry == 0)
            EXPECT_EQ(ctx.data[2], (u32)ExpectedDialogue(gender, met, TRUE));
    }
    ExpectRivalState(met, defeated);
    TearDownRivalState(&saved);
}
