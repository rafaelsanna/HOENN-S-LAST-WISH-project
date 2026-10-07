#include "global.h"
#include "event_data.h"
#include "money.h"
#include "overworld.h"
#include "pokedex.h"
#include "pokemon.h"
#include "script.h"
#include "string_util.h"
#include "test/test.h"
#include "constants/flags.h"
#include "constants/game_stat.h"
#include "constants/items.h"
#include "constants/script_commands.h"
#include "constants/songs.h"
#include "constants/vars.h"

extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_BirchRivalGoneHome[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_BirchBrendanGoneHome[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatRivalTakePokedex[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatBrendanTakePokedex[];

TEST("Littleroot lab uses May pronouns for a male player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = MALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_BirchRivalGoneHome);
}

TEST("Littleroot lab uses Brendan pronouns for a female player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = FEMALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_BirchBrendanGoneHome);
}

TEST("Littleroot lab Pokedex introduction uses May pronouns for a male player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = MALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatRivalTakePokedex);
}

TEST("Littleroot lab Pokedex introduction uses Brendan pronouns for a female player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = FEMALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatBrendanTakePokedex);
}

extern ScrCmdFunc gScriptCmdTable[];
extern ScrCmdFunc gScriptCmdTableEnd[];
typedef u16 (*AideSpecialFunc)(void);
extern const AideSpecialFunc gSpecials[];
extern bool16 ScriptGetPokedexInfo(void);
extern u16 Script_GetFollowerSpecies(void);
extern void ScrCmd_createmon(struct ScriptContext *ctx);
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPokedex[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideAllGiftsGiven[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideDexRewards[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterTogepi[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_GivePorygon[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedPorygon[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_FinishPorygonReward[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_GiveTogepiEgg[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_NoRoomForTogepiEgg[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_GiveUpgrade[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_GiveDubiousDisc[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_OfferUpgrade[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_OfferDubiousDisc[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideNotEnoughMoney[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull[];
extern const u8 Common_EventScript_GetGiftMonPartySlot[];
extern const u8 Common_EventScript_NameReceivedPartyMon[];
extern const u8 Common_EventScript_NameReceivedBoxMon[];
extern const u8 Common_EventScript_TransferredToPC[];
extern const u8 gText_NicknameThisPokemon[];
extern const u8 gText_NoMoreRoomForPokemon[];

static const u16 sAideVars[] =
{
    VAR_TEMP_0, VAR_TEMP_TRANSFERRED_SPECIES, VAR_TEMP_2,
    VAR_0x8000, VAR_0x8001, VAR_0x8004,
    VAR_0x8005, VAR_0x8006, VAR_RESULT,
};

static const u16 sAideFlags[] =
{
    FLAG_RECEIVED_TOGEPI_EGG, FLAG_RECEIVED_PORYGON_LITTLEROOT,
    FLAG_RECEIVED_UPGRADE_LITTLEROOT, FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT,
    FLAG_SAFE_FOLLOWER_MOVEMENT,
};

struct AideSavedState
{
    u8 seen[sizeof(gSaveBlock3Ptr->dexSeen)];
    u8 caught[sizeof(gSaveBlock3Ptr->dexCaught)];
    u16 vars[ARRAY_COUNT(sAideVars)];
    bool8 flags[ARRAY_COUNT(sAideFlags)];
    u32 captures;
    u32 money;
};

struct AideTrace
{
    const u8 *texts[16];
    u8 textCount;
    u8 countCalls;
    u8 porygonGifts;
    u8 togepiGifts;
    u8 delivery;
    u8 partySlotCalls;
    u8 partyNicknameCalls;
    u8 boxNicknameCalls;
    u8 transfers;
    u16 follower;
    u16 lastItem;
    u32 answers;
    u8 followerCalls;
    u8 offers[2];
    u8 attempts[2];
    u8 items[2];
    u8 purchases[2];
    u8 answerIndex;
    u8 moneyChecks;
    u8 spaceChecks;
    u8 charges;
    u8 shopSounds;
    u8 completedQuestions;
    u8 upgradeQuestions;
    bool8 completedConsent;
    bool8 upgradeConsent;
    bool8 buying;
    bool8 bagFull;
    bool8 failItem;
    bool8 lastItemSuccess;
    bool8 nickname;
    bool8 released;
};

static void SaveAideState(struct AideSavedState *saved)
{
    memcpy(saved->seen, gSaveBlock3Ptr->dexSeen, sizeof(saved->seen));
    memcpy(saved->caught, gSaveBlock3Ptr->dexCaught, sizeof(saved->caught));
    for (u32 i = 0; i < ARRAY_COUNT(sAideVars); i++)
        saved->vars[i] = VarGet(sAideVars[i]);
    for (u32 i = 0; i < ARRAY_COUNT(sAideFlags); i++)
        saved->flags[i] = FlagGet(sAideFlags[i]);
    saved->captures = GetGameStat(GAME_STAT_POKEMON_CAPTURES);
    saved->money = GetMoney(&gSaveBlock1Ptr->money);
}

static void RestoreAideState(const struct AideSavedState *saved)
{
    memcpy(gSaveBlock3Ptr->dexSeen, saved->seen, sizeof(saved->seen));
    memcpy(gSaveBlock3Ptr->dexCaught, saved->caught, sizeof(saved->caught));
    for (u32 i = 0; i < ARRAY_COUNT(sAideVars); i++)
        VarSet(sAideVars[i], saved->vars[i]);
    for (u32 i = 0; i < ARRAY_COUNT(sAideFlags); i++)
    {
        if (saved->flags[i])
            FlagSet(sAideFlags[i]);
        else
            FlagClear(sAideFlags[i]);
    }
    SetGameStat(GAME_STAT_POKEMON_CAPTURES, saved->captures);
    SetMoney(&gSaveBlock1Ptr->money, saved->money);
}

static void SeedAideDex(u16 caught, u16 seen, bool8 outsiders)
{
    memset(gSaveBlock3Ptr->dexSeen, 0, sizeof(gSaveBlock3Ptr->dexSeen));
    memset(gSaveBlock3Ptr->dexCaught, 0, sizeof(gSaveBlock3Ptr->dexCaught));
    for (u16 i = 1; i <= seen; i++)
        GetSetPokedexFlag(HoennToNationalOrder(i), FLAG_SET_SEEN);
    for (u16 i = 1; i <= caught; i++)
        GetSetPokedexFlag(HoennToNationalOrder(i), FLAG_SET_CAUGHT);
    if (outsiders)
    {
        EXPECT_EQ(NationalToHoennOrder(NATIONAL_DEX_MEW), HOENN_DEX_NONE);
        EXPECT_EQ(NationalToHoennOrder(NATIONAL_DEX_MEWTWO), HOENN_DEX_NONE);
        GetSetPokedexFlag(NATIONAL_DEX_MEW, FLAG_SET_SEEN);
        GetSetPokedexFlag(NATIONAL_DEX_MEWTWO, FLAG_SET_SEEN);
        GetSetPokedexFlag(NATIONAL_DEX_MEW, FLAG_SET_CAUGHT);
        GetSetPokedexFlag(NATIONAL_DEX_MEWTWO, FLAG_SET_CAUGHT);
    }
    // Repeated catches and the lifetime statistic cannot substitute for species.
    if (caught)
        for (u32 i = 0; i < 100; i++)
            GetSetPokedexFlag(HoennToNationalOrder(1), FLAG_SET_CAUGHT);
    SetGameStat(GAME_STAT_POKEMON_CAPTURES, 999);
    FlagClear(FLAG_RECEIVED_TOGEPI_EGG);
    FlagClear(FLAG_RECEIVED_PORYGON_LITTLEROOT);
    FlagClear(FLAG_RECEIVED_UPGRADE_LITTLEROOT);
    FlagClear(FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT);
    VarSet(VAR_TEMP_0, 0x7777);
    VarSet(VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_NONE);
    VarSet(VAR_TEMP_2, ITEM_NONE);
    VarSet(VAR_0x8004, 1); // A prior National-count selector must be overwritten.
}

static struct AideTrace *AideTraceFor(struct ScriptContext *ctx)
{
    return (struct AideTrace *)ctx->data[3];
}

static const u8 *AideText(const u8 *script, u32 textIndex)
{
    // Author-editable text labels are local symbols. Read their lexical operands
    // from global handlers rather than exporting text labels solely for tests.
    for (u32 command = 0; command < 64; command++)
    {
        struct ScriptContext operand;
        const u8 *text;

        switch (script[0])
        {
        case SCR_OP_LOAD_WORD:
            EXPECT_EQ(script[1], 0);
            operand.scriptPtr = script + 2;
            text = (const u8 *)ScriptReadWord(&operand);
            script += 6;
            if (textIndex-- == 0)
                return text;
            break;
        case SCR_OP_MESSAGE:
            operand.scriptPtr = script + 1;
            text = (const u8 *)ScriptReadWord(&operand);
            script += 5;
            if (textIndex-- == 0)
                return text;
            break;
        case SCR_OP_CALL:
        case SCR_OP_GOTO:
        case SCR_OP_COMPARE_VAR_TO_VALUE:
        case SCR_OP_SETVAR:
        case SCR_OP_COPYVAR:
        case SCR_OP_SETORCOPYVAR:
            script += 5;
            break;
        case SCR_OP_GOTO_IF:
            script += 6;
            break;
        case SCR_OP_CHECKFLAG:
        case SCR_OP_SETFLAG:
        case SCR_OP_GIVEEGG:
        case SCR_OP_PLAYFANFARE:
            script += 3;
            break;
        case SCR_OP_CALL_STD:
            script += 2;
            break;
        case SCR_OP_WAITMESSAGE:
        case SCR_OP_WAITFANFARE:
            script++;
            break;
        default:
            EXPECT(FALSE);
            return NULL;
        }
    }
    EXPECT(FALSE);
    return NULL;
}

static bool8 AideNoHardware(struct ScriptContext *ctx)
{
    return FALSE;
}

static bool8 RejectAideCommand(struct ScriptContext *ctx)
{
    EXPECT(FALSE);
    return TRUE;
}

static bool8 CountAideDex(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    u16 special = ScriptReadHalfword(ctx);

    // Specials can point at either mirrored ROM window; compare their identity.
    EXPECT_EQ((u32)gSpecials[special] & 0x01FFFFFF, (u32)ScriptGetPokedexInfo & 0x01FFFFFF);
    EXPECT_EQ(VarGet(VAR_0x8004), 0);
    ScriptGetPokedexInfo();
    trace->countCalls++;
    return FALSE;
}

static bool8 RecordAideMessage(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    const u8 *text = (const u8 *)ScriptReadWord(ctx);

    EXPECT_LT(trace->textCount, ARRAY_COUNT(trace->texts));
    trace->texts[trace->textCount++] = text != NULL ? text : (const u8 *)ctx->data[0];
    return FALSE;
}

static u32 AideItemIndex(u16 item)
{
    EXPECT(item == ITEM_UPGRADE || item == ITEM_DUBIOUS_DISC);
    return item == ITEM_UPGRADE ? 0 : 1;
}

static bool8 ReadAideFollower(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    u16 var = ScriptReadHalfword(ctx);
    u16 special = ScriptReadHalfword(ctx);

    EXPECT_EQ(var, VAR_TEMP_1);
    EXPECT_EQ((u32)gSpecials[special] & 0x01FFFFFF, (u32)Script_GetFollowerSpecies & 0x01FFFFFF);
    VarSet(var, trace->follower);
    trace->followerCalls++;
    return FALSE;
}

static bool8 AnswerAideQuestion(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    const u8 *text = trace->texts[trace->textCount - 1];

    EXPECT_EQ(ScriptReadByte(ctx), 20);
    EXPECT_EQ(ScriptReadByte(ctx), 8);
    if (text == gText_NicknameThisPokemon)
    {
        EXPECT_EQ(trace->porygonGifts, 1);
        EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), TRUE);
        VarSet(VAR_RESULT, trace->nickname);
    }
    else if (text == AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAllGiftsGiven, 0))
    {
        for (u32 i = 0; i < 4; i++)
            EXPECT_EQ(FlagGet(sAideFlags[i]), TRUE);
        trace->completedQuestions++;
        EXPECT_EQ(trace->countCalls, 0);
        EXPECT_EQ(trace->followerCalls, 0);
        VarSet(VAR_RESULT, trace->completedConsent);
    }
    else if (text == AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward, 0))
    {
        EXPECT_EQ(FlagGet(FLAG_RECEIVED_UPGRADE_LITTLEROOT), TRUE);
        EXPECT_LE(trace->items[0], 1); // Shared by first delivery and repeat visits.
        EXPECT_EQ(trace->purchases[0], 0);
        trace->upgradeQuestions++;
        VarSet(VAR_RESULT, trace->upgradeConsent);
    }
    else
    {
        bool8 upgrade = text == AideText(LittlerootTown_ProfessorBirchsLab_EventScript_OfferUpgrade, 0);
        u16 flag = upgrade ? FLAG_RECEIVED_UPGRADE_LITTLEROOT : FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT;

        if (!upgrade)
            EXPECT_EQ(text, AideText(LittlerootTown_ProfessorBirchsLab_EventScript_OfferDubiousDisc, 0));
        EXPECT_EQ(FlagGet(flag), TRUE); // Never offer a still-locked item.
        EXPECT_LT(trace->answerIndex, 8); // A broken shop loop must not hang a test.
        trace->offers[upgrade ? 0 : 1]++;
        trace->buying = (trace->answers >> trace->answerIndex++) & 1;
        VarSet(VAR_RESULT, trace->buying);
    }
    return FALSE;
}

static bool8 CallAideStandard(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    u8 standard = ScriptReadByte(ctx);

    if (standard == 0) // STD_OBTAIN_ITEM: isolate bag/UI delivery, not reward logic.
    {
        u16 item = VarGet(VAR_0x8000);
        u32 index = AideItemIndex(item);

        EXPECT_EQ(VarGet(VAR_0x8001), 1);
        trace->lastItem = item;
        trace->lastItemSuccess = !trace->bagFull && !trace->failItem;
        trace->attempts[index]++;
        if (trace->lastItemSuccess)
        {
            trace->items[index]++;
            trace->purchases[index] += trace->buying;
        }
        // Charge only after this successful delivery; both free and paid gifts
        // use the actual script's giveitem/result branch with no bag mutation.
        EXPECT_EQ(trace->charges, trace->purchases[0] + trace->purchases[1] - (trace->buying && trace->lastItemSuccess));
        VarSet(VAR_RESULT, trace->lastItemSuccess);
        return FALSE;
    }
    ctx->scriptPtr--;
    return gScriptCmdTable[SCR_OP_CALL_STD](ctx);
}

static bool8 CheckAideMoney(struct ScriptContext *ctx)
{
    EXPECT_EQ(ScriptReadWord(ctx), 10000);
    EXPECT_EQ(ScriptReadByte(ctx), 0);
    AideTraceFor(ctx)->moneyChecks++;
    VarSet(VAR_RESULT, GetMoney(&gSaveBlock1Ptr->money) >= 10000);
    return FALSE;
}

static bool8 CheckAideItemSpace(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);

    EXPECT_EQ(ScriptReadHalfword(ctx), VAR_TEMP_2);
    AideItemIndex(VarGet(VAR_TEMP_2));
    EXPECT_EQ(VarGet(ScriptReadHalfword(ctx)), 1);
    trace->spaceChecks++;
    VarSet(VAR_RESULT, !trace->bagFull);
    return FALSE;
}

static bool8 ChargeAidePurchase(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);

    EXPECT_EQ(ScriptReadWord(ctx), 10000);
    EXPECT_EQ(ScriptReadByte(ctx), 0);
    EXPECT_EQ(trace->buying, TRUE);
    EXPECT_EQ(trace->lastItemSuccess, TRUE);
    EXPECT_EQ(VarGet(VAR_TEMP_2), trace->lastItem);
    EXPECT_GE(GetMoney(&gSaveBlock1Ptr->money), 10000);
    RemoveMoney(&gSaveBlock1Ptr->money, 10000);
    trace->charges++;
    EXPECT_EQ(trace->charges, trace->purchases[0] + trace->purchases[1]);
    trace->buying = FALSE;
    return FALSE;
}

static bool8 PlayAideShopSound(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);

    EXPECT_EQ(ScriptReadHalfword(ctx), SE_SHOP);
    trace->shopSounds++;
    EXPECT_EQ(trace->shopSounds, trace->charges);
    return FALSE;
}

static bool8 BufferAideSpecies(struct ScriptContext *ctx)
{
    EXPECT_EQ(ScriptReadByte(ctx), 0); // STR_VAR_1, without modifying string buffers.
    EXPECT_EQ(VarGet(ScriptReadHalfword(ctx)), SPECIES_PORYGON);
    return FALSE;
}

static bool8 GiveAidePorygon(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    u32 native = ScriptReadWord(ctx);

    EXPECT_EQ(native & 0x01FFFFFF, (u32)ScrCmd_createmon & 0x01FFFFFF);
    EXPECT_EQ(ScriptReadByte(ctx), 0); // player side
    EXPECT_EQ(ScriptReadByte(ctx), PARTY_SIZE); // first empty slot, or PC
    EXPECT_EQ(VarGet(ScriptReadHalfword(ctx)), SPECIES_PORYGON);
    EXPECT_EQ(VarGet(ScriptReadHalfword(ctx)), 5);
    EXPECT_EQ(ScriptReadWord(ctx), 0); // ordinary givemon, no custom parameter flags
    EXPECT_EQ(VarGet(VAR_TEMP_TRANSFERRED_SPECIES), SPECIES_PORYGON);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), FALSE);
    trace->porygonGifts++;
    VarSet(VAR_RESULT, trace->delivery);
    return FALSE;
}

static bool8 GiveAideTogepi(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);

    EXPECT_EQ(VarGet(ScriptReadHalfword(ctx)), SPECIES_TOGEPI);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_TOGEPI_EGG), FALSE);
    trace->togepiGifts++;
    VarSet(VAR_RESULT, trace->delivery);
    return FALSE;
}

static bool8 SetAideRewardFlag(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    u16 flag = ScriptReadHalfword(ctx);

    if (flag == FLAG_RECEIVED_UPGRADE_LITTLEROOT || flag == FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT)
    {
        EXPECT_EQ(trace->lastItem, flag == FLAG_RECEIVED_UPGRADE_LITTLEROOT ? ITEM_UPGRADE : ITEM_DUBIOUS_DISC);
        EXPECT_EQ(trace->lastItemSuccess, TRUE);
        EXPECT_EQ(trace->buying, FALSE);
        EXPECT_EQ(trace->items[AideItemIndex(trace->lastItem)], 1);
    }
    else
    {
        EXPECT(flag == FLAG_RECEIVED_TOGEPI_EGG || flag == FLAG_RECEIVED_PORYGON_LITTLEROOT);
        EXPECT_NE(trace->delivery, MON_CANT_GIVE);
        EXPECT_EQ(flag == FLAG_RECEIVED_TOGEPI_EGG ? trace->togepiGifts : trace->porygonGifts, 1);
    }
    EXPECT_EQ(FlagGet(flag), FALSE);
    FlagSet(flag);
    return FALSE;
}

static bool8 RecordAideFanfare(struct ScriptContext *ctx)
{
    EXPECT_EQ(ScriptReadHalfword(ctx), MUS_OBTAIN_ITEM);
    return FALSE;
}

static bool8 CallAideScript(struct ScriptContext *ctx)
{
    struct AideTrace *trace = AideTraceFor(ctx);
    const u8 *script = (const u8 *)ScriptReadWord(ctx);

    // Verify routing to the existing helpers while avoiding their naming UI and
    // storage-specific rendering. No party/storage data is modified by this test.
    if (script == Common_EventScript_GetGiftMonPartySlot)
    {
        EXPECT_EQ(trace->delivery, MON_GIVEN_TO_PARTY);
        EXPECT_EQ(trace->nickname, TRUE);
        trace->partySlotCalls++;
    }
    else if (script == Common_EventScript_NameReceivedPartyMon)
    {
        EXPECT_EQ(trace->delivery, MON_GIVEN_TO_PARTY);
        EXPECT_EQ(trace->nickname, TRUE);
        EXPECT_EQ(trace->partySlotCalls, 1);
        trace->partyNicknameCalls++;
    }
    else if (script == Common_EventScript_NameReceivedBoxMon)
    {
        EXPECT_EQ(trace->delivery, MON_GIVEN_TO_PC);
        EXPECT_EQ(trace->nickname, TRUE);
        trace->boxNicknameCalls++;
    }
    else if (script == Common_EventScript_TransferredToPC)
    {
        EXPECT_EQ(trace->delivery, MON_GIVEN_TO_PC);
        EXPECT_EQ(VarGet(VAR_TEMP_TRANSFERRED_SPECIES), SPECIES_PORYGON);
        trace->transfers++;
    }
    else
        ScriptCall(ctx, script);
    return FALSE;
}

static bool8 ReleaseAide(struct ScriptContext *ctx)
{
    AideTraceFor(ctx)->released = TRUE;
    return FALSE;
}

static void RunAideReward(struct AideTrace *trace)
{
    struct ScriptContext ctx;
    ScrCmdFunc commands[256];
    u32 count = gScriptCmdTableEnd - gScriptCmdTable;
    static const u8 safeCommands[] =
    {
        SCR_OP_END, SCR_OP_RETURN, SCR_OP_GOTO, SCR_OP_GOTO_IF,
        SCR_OP_LOAD_WORD, SCR_OP_SETVAR, SCR_OP_COPYVAR, SCR_OP_SETORCOPYVAR,
        SCR_OP_COMPARE_VAR_TO_VALUE, SCR_OP_CHECKFLAG,
    };

    EXPECT_LE(count, ARRAY_COUNT(commands));
    for (u32 i = 0; i < count; i++)
        commands[i] = RejectAideCommand;
    for (u32 i = 0; i < ARRAY_COUNT(safeCommands); i++)
        commands[safeCommands[i]] = gScriptCmdTable[safeCommands[i]];
    commands[SCR_OP_CALL] = CallAideScript;
    commands[SCR_OP_CALL_STD] = CallAideStandard;
    commands[SCR_OP_SPECIAL] = CountAideDex;
    commands[SCR_OP_SPECIALVAR] = ReadAideFollower;
    commands[SCR_OP_MESSAGE] = RecordAideMessage;
    commands[SCR_OP_WAITMESSAGE] = AideNoHardware;
    commands[SCR_OP_WAITBUTTONPRESS] = AideNoHardware;
    commands[SCR_OP_WAITFANFARE] = AideNoHardware;
    commands[SCR_OP_PLAYFANFARE] = RecordAideFanfare;
    commands[SCR_OP_YESNOBOX] = AnswerAideQuestion;
    commands[SCR_OP_CHECKMONEY] = CheckAideMoney;
    commands[SCR_OP_CHECKITEMSPACE] = CheckAideItemSpace;
    commands[SCR_OP_REMOVEMONEY] = ChargeAidePurchase;
    commands[SCR_OP_PLAYSE] = PlayAideShopSound;
    commands[SCR_OP_BUFFERSPECIESNAME] = BufferAideSpecies;
    commands[SCR_OP_CALLNATIVE] = GiveAidePorygon;
    commands[SCR_OP_GIVEEGG] = GiveAideTogepi;
    commands[SCR_OP_SETFLAG] = SetAideRewardFlag;
    commands[SCR_OP_RELEASE] = ReleaseAide;
    InitScriptContext(&ctx, commands, commands + count);
    ctx.data[3] = (u32)trace;
    SetupBytecodeScript(&ctx, LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPokedex);
    EXPECT_EQ(RunScriptCommand(&ctx), FALSE);
    EXPECT_EQ(trace->released, TRUE);
}

TEST("Littleroot aide: Porygon requires 100 unique caught custom Hoenn entries, not sightings, outsiders or capture totals")
{
    u16 caught = 99;
    u16 seen = 150;
    bool8 outsiders = FALSE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { caught = 99; seen = 150; outsiders = FALSE; }
    PARAMETRIZE { caught = 99; seen = 150; outsiders = TRUE; }
    PARAMETRIZE { caught = 0; seen = 100; outsiders = FALSE; }
    PARAMETRIZE { caught = 100; seen = 100; outsiders = FALSE; }

    SaveAideState(&saved);
    SeedAideDex(caught, seen, outsiders);
    FlagSet(FLAG_RECEIVED_TOGEPI_EGG);
    trace.delivery = MON_GIVEN_TO_PARTY;
    RunAideReward(&trace);
    EXPECT_EQ(trace.countCalls, 2);
    EXPECT_EQ(trace.followerCalls, 1);
    EXPECT_EQ(VarGet(VAR_TEMP_0), caught);
    EXPECT_EQ(GetGameStat(GAME_STAT_POKEMON_CAPTURES), 999);
    EXPECT_EQ(trace.togepiGifts, 0);
    EXPECT_EQ(trace.porygonGifts, caught >= 100);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), caught >= 100);
    if (caught < 100)
    {
        EXPECT_EQ(trace.textCount, 2);
        EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterTogepi, 0));
        EXPECT_EQ(trace.texts[1], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterTogepi, 1));
    }
    RestoreAideState(&saved);
}

TEST("Littleroot aide: Porygon handles party, PC, full storage, nickname routing and one-time delivery")
{
    u8 delivery = MON_GIVEN_TO_PARTY;
    bool8 nickname = FALSE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { delivery = MON_GIVEN_TO_PARTY; nickname = FALSE; }
    PARAMETRIZE { delivery = MON_GIVEN_TO_PARTY; nickname = TRUE; }
    PARAMETRIZE { delivery = MON_GIVEN_TO_PC; nickname = FALSE; }
    PARAMETRIZE { delivery = MON_GIVEN_TO_PC; nickname = TRUE; }
    PARAMETRIZE { delivery = MON_CANT_GIVE; nickname = FALSE; }

    SaveAideState(&saved);
    SeedAideDex(100, 100, FALSE);
    FlagSet(FLAG_RECEIVED_TOGEPI_EGG);
    trace.delivery = delivery;
    trace.nickname = nickname;
    RunAideReward(&trace);
    EXPECT_EQ(trace.porygonGifts, 1);
    EXPECT_EQ(trace.togepiGifts, 0);
    EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_GivePorygon, 0));
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), delivery != MON_CANT_GIVE);
    if (delivery == MON_CANT_GIVE)
    {
        EXPECT_EQ(trace.textCount, 2);
        EXPECT_EQ(trace.texts[1], gText_NoMoreRoomForPokemon);
        // An unsuccessful attempt remains claimable after room becomes available.
        trace = (struct AideTrace){.delivery = MON_GIVEN_TO_PARTY};
        RunAideReward(&trace);
        EXPECT_EQ(trace.porygonGifts, 1);
        EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), TRUE);
    }
    else
    {
        EXPECT_EQ(trace.textCount, 4);
        EXPECT_EQ(trace.texts[1], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedPorygon, 0));
        EXPECT_EQ(trace.texts[2], gText_NicknameThisPokemon);
        EXPECT_EQ(trace.texts[3], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_FinishPorygonReward, 0));
        EXPECT_EQ(trace.partySlotCalls, nickname && delivery == MON_GIVEN_TO_PARTY);
        EXPECT_EQ(trace.partyNicknameCalls, nickname && delivery == MON_GIVEN_TO_PARTY);
        EXPECT_EQ(trace.boxNicknameCalls, nickname && delivery == MON_GIVEN_TO_PC);
        EXPECT_EQ(trace.transfers, delivery == MON_GIVEN_TO_PC);
    }
    trace = (struct AideTrace){0};
    VarSet(VAR_TEMP_0, 0x7777);
    RunAideReward(&trace);
    EXPECT_EQ(trace.countCalls, 1);
    EXPECT_EQ(trace.porygonGifts, 0);
    EXPECT_EQ(trace.togepiGifts, 0);
    EXPECT_EQ(trace.textCount, 1);
    EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon, 0));
    EXPECT_EQ(VarGet(VAR_TEMP_0), 100);
    RestoreAideState(&saved);
}

TEST("Littleroot aide: Togepi uses 10 regional sightings, handles all gift results and precedes Porygon")
{
    u16 seen = 9;
    bool8 outsiders = FALSE;
    u8 delivery = MON_GIVEN_TO_PARTY;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { seen = 9; outsiders = FALSE; delivery = MON_GIVEN_TO_PARTY; }
    PARAMETRIZE { seen = 9; outsiders = TRUE; delivery = MON_GIVEN_TO_PARTY; }
    PARAMETRIZE { seen = 10; outsiders = FALSE; delivery = MON_GIVEN_TO_PARTY; }
    PARAMETRIZE { seen = 10; outsiders = FALSE; delivery = MON_GIVEN_TO_PC; }
    PARAMETRIZE { seen = 10; outsiders = FALSE; delivery = MON_CANT_GIVE; }
    PARAMETRIZE { seen = 100; outsiders = FALSE; delivery = MON_GIVEN_TO_PARTY; }

    SaveAideState(&saved);
    SeedAideDex(seen == 100 ? 100 : 0, seen, outsiders);
    trace.delivery = delivery;
    RunAideReward(&trace);
    EXPECT_EQ(trace.countCalls, 2);
    EXPECT_EQ(VarGet(VAR_TEMP_0), seen);
    EXPECT_EQ(trace.porygonGifts, 0);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), FALSE);
    EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideDexRewards, 0));
    EXPECT_EQ(trace.togepiGifts, seen >= 10);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_TOGEPI_EGG), seen >= 10 && delivery != MON_CANT_GIVE);
    if (seen < 10)
        EXPECT_EQ(trace.textCount, 1);
    else if (delivery == MON_CANT_GIVE)
    {
        EXPECT_EQ(trace.textCount, 3);
        EXPECT_EQ(trace.texts[2], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_NoRoomForTogepiEgg, 0));
        trace = (struct AideTrace){.delivery = MON_GIVEN_TO_PARTY};
        RunAideReward(&trace);
        EXPECT_EQ(trace.togepiGifts, 1);
        EXPECT_EQ(FlagGet(FLAG_RECEIVED_TOGEPI_EGG), TRUE);
    }
    else
    {
        EXPECT_EQ(trace.textCount, 4);
        EXPECT_EQ(trace.texts[2], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_GiveTogepiEgg, 1));
        EXPECT_EQ(trace.texts[3], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_GiveTogepiEgg, 2));
    }
    if (seen == 100)
    {
        // The first conversation ended after Togepi; only the next can give Porygon.
        trace = (struct AideTrace){.delivery = MON_GIVEN_TO_PARTY};
        RunAideReward(&trace);
        EXPECT_EQ(trace.togepiGifts, 0);
        EXPECT_EQ(trace.porygonGifts, 1);
        EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), TRUE);
    }
    RestoreAideState(&saved);
}

static const u16 sAideItemFlags[] =
{
    FLAG_RECEIVED_UPGRADE_LITTLEROOT, FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT,
};

static const u16 sAideItems[] = {ITEM_UPGRADE, ITEM_DUBIOUS_DISC};
static const u16 sAideFollowers[] = {SPECIES_PORYGON, SPECIES_PORYGON2};
static const u8 *const sAideGiftScripts[] =
{
    LittlerootTown_ProfessorBirchsLab_EventScript_GiveUpgrade,
    LittlerootTown_ProfessorBirchsLab_EventScript_GiveDubiousDisc,
};

static void UnlockAideItems(u8 mask)
{
    for (u32 i = 0; i < ARRAY_COUNT(sAideItemFlags); i++)
        if (mask & (1 << i))
            FlagSet(sAideItemFlags[i]);
}

static void ClaimAidePokemon(void)
{
    FlagSet(FLAG_RECEIVED_TOGEPI_EGG);
    FlagSet(FLAG_RECEIVED_PORYGON_LITTLEROOT);
}

TEST("Littleroot aide: evolution rewards require unique regional catches and the matching active follower independently of older gifts")
{
    u16 caught = 199, seen = 300, follower = SPECIES_PORYGON;
    u8 unlocked = 0, reward = 0; // 0 = none, 1 = Upgrade, 2 = Dubious Disc.
    bool8 outsiders = FALSE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { caught = 199; follower = SPECIES_PORYGON; reward = 0; }
    PARAMETRIZE { caught = 200; follower = SPECIES_PORYGON; reward = 1; }
    PARAMETRIZE { caught = 299; follower = SPECIES_PORYGON2; reward = 0; }
    PARAMETRIZE { caught = 300; follower = SPECIES_PORYGON2; reward = 2; }
    PARAMETRIZE { caught = 300; follower = SPECIES_PORYGON; reward = 1; }
    PARAMETRIZE { caught = 200; follower = SPECIES_PORYGON2; reward = 0; }
    PARAMETRIZE { caught = 300; follower = SPECIES_NONE; reward = 0; }
    PARAMETRIZE { caught = 300; follower = SPECIES_ZIGZAGOON; reward = 0; }
    PARAMETRIZE { caught = 0; seen = 300; follower = SPECIES_PORYGON; reward = 0; }
    PARAMETRIZE { caught = 199; follower = SPECIES_PORYGON; outsiders = TRUE; reward = 0; }
    PARAMETRIZE { caught = 200; follower = SPECIES_PORYGON; unlocked = 2; reward = 1; }
    PARAMETRIZE { caught = 300; follower = SPECIES_PORYGON2; unlocked = 1; reward = 2; }

    SaveAideState(&saved);
    SeedAideDex(caught, seen, outsiders);
    UnlockAideItems(unlocked);
    // Eligible visiting rewards must not depend on claiming Togepi/Porygon first.
    if (!reward)
        ClaimAidePokemon();
    SetMoney(&gSaveBlock1Ptr->money, 27123);
    trace.follower = follower;
    RunAideReward(&trace);
    EXPECT_EQ(trace.countCalls, 1);
    EXPECT_EQ(trace.followerCalls, 1);
    EXPECT_EQ(VarGet(VAR_TEMP_0), caught);
    EXPECT_EQ(trace.porygonGifts, 0);
    EXPECT_EQ(trace.togepiGifts, 0);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_PORYGON_LITTLEROOT), !reward);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_TOGEPI_EGG), !reward);
    for (u32 i = 0; i < ARRAY_COUNT(sAideItems); i++)
    {
        EXPECT_EQ(trace.attempts[i], reward == i + 1);
        EXPECT_EQ(trace.items[i], reward == i + 1);
        EXPECT_EQ(FlagGet(sAideItemFlags[i]), !!((unlocked & (1 << i)) || reward == i + 1));
        EXPECT_EQ(trace.offers[i], 0);
    }
    EXPECT_EQ(trace.charges, 0);
    EXPECT_EQ(trace.shopSounds, 0);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 27123);
    if (reward)
    {
        EXPECT_EQ(trace.textCount, 2);
        EXPECT_EQ(trace.texts[0], AideText(sAideGiftScripts[reward - 1], 0));
        EXPECT_EQ(trace.texts[1], reward == 1
            ? AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward, 0)
            : AideText(sAideGiftScripts[1], 1));
    }
    else
    {
        EXPECT_EQ(trace.textCount, 1);
        EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon, 0));
    }
    RestoreAideState(&saved);
}

TEST("Littleroot aide: failed free evolution gifts remain claimable and successful gifts unlock only their own one-time reward")
{
    u8 index = 0;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { index = 0; }
    PARAMETRIZE { index = 1; }

    SaveAideState(&saved);
    SeedAideDex(index == 0 ? 200 : 300, 300, FALSE);
    ClaimAidePokemon();
    SetMoney(&gSaveBlock1Ptr->money, 25000);
    trace.follower = sAideFollowers[index];
    trace.bagFull = TRUE;
    RunAideReward(&trace);
    EXPECT_EQ(trace.attempts[index], 1);
    EXPECT_EQ(trace.items[index], 0);
    EXPECT_EQ(FlagGet(sAideItemFlags[index]), FALSE);
    EXPECT_EQ(trace.texts[1], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull, 0));
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 25000);

    trace = (struct AideTrace){.follower = sAideFollowers[index]};
    RunAideReward(&trace);
    EXPECT_EQ(trace.attempts[index], 1);
    EXPECT_EQ(trace.items[index], 1);
    EXPECT_EQ(FlagGet(sAideItemFlags[index]), TRUE);
    EXPECT_EQ(FlagGet(sAideItemFlags[1 - index]), FALSE);
    EXPECT_EQ(trace.offers[index], 0); // Declining the free gift's follow-up ends it.

    trace = (struct AideTrace){.follower = sAideFollowers[index]};
    RunAideReward(&trace);
    EXPECT_EQ(trace.attempts[index], 0); // Same follower cannot claim it again.
    EXPECT_EQ(trace.offers[index], index == 1);
    EXPECT_EQ(trace.upgradeQuestions, index == 0);
    EXPECT_EQ(trace.offers[1 - index], 0);
    EXPECT_EQ(trace.charges, 0);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 25000);
    RestoreAideState(&saved);
}

TEST("Littleroot aide: shop offers only unlocked items with any or no follower and canceling costs nothing")
{
    u8 unlocked = 0;
    u16 follower = SPECIES_NONE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { unlocked = 0; follower = SPECIES_NONE; }
    PARAMETRIZE { unlocked = 1; follower = SPECIES_NONE; }
    PARAMETRIZE { unlocked = 2; follower = SPECIES_NONE; }
    PARAMETRIZE { unlocked = 3; follower = SPECIES_NONE; }
    PARAMETRIZE { unlocked = 3; follower = SPECIES_ZIGZAGOON; }

    SaveAideState(&saved);
    SeedAideDex(0, 0, FALSE);
    ClaimAidePokemon();
    UnlockAideItems(unlocked);
    SetMoney(&gSaveBlock1Ptr->money, 10000);
    trace.follower = follower;
    trace.completedConsent = TRUE;
    trace.upgradeConsent = TRUE;
    RunAideReward(&trace);
    for (u32 i = 0; i < ARRAY_COUNT(sAideItems); i++)
    {
        EXPECT_EQ(trace.offers[i], !!(unlocked & (1 << i)));
        EXPECT_EQ(trace.attempts[i], 0);
        EXPECT_EQ(FlagGet(sAideItemFlags[i]), !!(unlocked & (1 << i)));
    }
    EXPECT_EQ(trace.moneyChecks, 0);
    EXPECT_EQ(trace.spaceChecks, 0);
    EXPECT_EQ(trace.charges, 0);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 10000);
    if (unlocked == 3)
    {
        EXPECT_EQ(trace.completedQuestions, 1);
        EXPECT_EQ(trace.countCalls, 0);
        EXPECT_EQ(trace.followerCalls, 0);
        EXPECT_EQ(trace.textCount, 3); // Completed question, then the two offers.
    }
    else if (unlocked == 0)
        EXPECT_EQ(trace.texts[trace.textCount - 1], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon, 0));
    else
    {
        EXPECT_EQ(trace.upgradeQuestions, unlocked == 1);
        EXPECT_EQ(trace.textCount, unlocked == 1 ? 2 : 1);
        if (unlocked == 1)
            EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward, 0));
    }
    RestoreAideState(&saved);
}

TEST("Littleroot aide: purchases require 10000 and bag space and charge only after successful delivery")
{
    u8 index = 0;
    u32 money = 10000;
    bool8 bagFull = FALSE, failItem = FALSE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { index = 0; money = 10000; }
    PARAMETRIZE { index = 1; money = 10000; }
    PARAMETRIZE { index = 0; money = 9999; }
    PARAMETRIZE { index = 1; money = 9999; }
    PARAMETRIZE { index = 0; bagFull = TRUE; }
    PARAMETRIZE { index = 1; bagFull = TRUE; }
    PARAMETRIZE { index = 0; failItem = TRUE; }
    PARAMETRIZE { index = 1; failItem = TRUE; }

    SaveAideState(&saved);
    SeedAideDex(0, 0, FALSE);
    ClaimAidePokemon();
    UnlockAideItems(1 << index);
    SetMoney(&gSaveBlock1Ptr->money, money);
    trace.answers = 1; // Buy once, then cancel the next offer after success.
    trace.upgradeConsent = TRUE;
    trace.bagFull = bagFull;
    trace.failItem = failItem;
    RunAideReward(&trace);
    bool8 success = money >= 10000 && !bagFull && !failItem;
    EXPECT_EQ(VarGet(VAR_TEMP_2), sAideItems[index]);
    EXPECT_EQ(trace.moneyChecks, 1);
    EXPECT_EQ(trace.spaceChecks, money >= 10000);
    EXPECT_EQ(trace.attempts[index], money >= 10000 && !bagFull);
    EXPECT_EQ(trace.items[index], success);
    EXPECT_EQ(trace.purchases[index], success);
    EXPECT_EQ(trace.charges, success);
    EXPECT_EQ(trace.shopSounds, success);
    EXPECT_EQ(trace.offers[index], success ? 2 : 1);
    EXPECT_EQ(trace.offers[1 - index], 0);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), money - (success ? 10000 : 0));
    EXPECT_EQ(FlagGet(sAideItemFlags[index]), TRUE);
    EXPECT_EQ(FlagGet(sAideItemFlags[1 - index]), FALSE);
    if (!success)
        EXPECT_EQ(trace.texts[trace.textCount - 1], AideText(money < 10000
            ? LittlerootTown_ProfessorBirchsLab_EventScript_AideNotEnoughMoney
            : LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull, 0));
    RestoreAideState(&saved);
}

TEST("Littleroot aide: repeat purchases loop safely and choosing the second unlocked item charges for that item")
{
    u8 unlocked = 1;
    u32 answers = 3; // YES, YES, NO: two Upgrades.
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { unlocked = 1; answers = 3; }
    PARAMETRIZE { unlocked = 2; answers = 3; }
    PARAMETRIZE { unlocked = 3; answers = 2; } // NO Upgrade, YES Disc; then NO both.

    SaveAideState(&saved);
    SeedAideDex(0, 0, FALSE);
    ClaimAidePokemon();
    UnlockAideItems(unlocked);
    SetMoney(&gSaveBlock1Ptr->money, 30000);
    trace.answers = answers;
    trace.completedConsent = TRUE;
    trace.upgradeConsent = TRUE;
    RunAideReward(&trace);
    EXPECT_EQ(trace.purchases[0], unlocked == 1 ? 2 : 0);
    EXPECT_EQ(trace.purchases[1], unlocked == 2 ? 2 : unlocked == 3 ? 1 : 0);
    EXPECT_EQ(trace.offers[0], unlocked == 1 ? 3 : unlocked == 3 ? 2 : 0);
    EXPECT_EQ(trace.offers[1], unlocked == 2 ? 3 : unlocked == 3 ? 2 : 0);
    EXPECT_EQ(trace.charges, unlocked == 3 ? 1 : 2);
    EXPECT_EQ(trace.shopSounds, trace.charges);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), unlocked == 3 ? 20000 : 10000);
    RestoreAideState(&saved);
}

TEST("Littleroot aide: older unclaimed Pokemon rewards take priority over repeat purchase dialogue")
{
    bool8 togepiClaimed = FALSE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { togepiClaimed = FALSE; }
    PARAMETRIZE { togepiClaimed = TRUE; }

    SaveAideState(&saved);
    SeedAideDex(100, 100, FALSE);
    UnlockAideItems(3);
    if (togepiClaimed)
        FlagSet(FLAG_RECEIVED_TOGEPI_EGG);
    SetMoney(&gSaveBlock1Ptr->money, 10000);
    trace.delivery = MON_GIVEN_TO_PARTY;
    RunAideReward(&trace);
    EXPECT_EQ(trace.offers[0], 0);
    EXPECT_EQ(trace.offers[1], 0);
    EXPECT_EQ(trace.upgradeQuestions, 0);
    EXPECT_EQ(trace.togepiGifts, !togepiClaimed);
    EXPECT_EQ(trace.porygonGifts, togepiClaimed);
    EXPECT_EQ(trace.charges, 0);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 10000);
    RestoreAideState(&saved);
}

TEST("Littleroot aide: the general completion question requires all four gifts and declining performs no reward work")
{
    u8 gifts = 0;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { gifts = 0; }
    PARAMETRIZE { gifts = 1; }
    PARAMETRIZE { gifts = 2; }
    PARAMETRIZE { gifts = 3; }
    PARAMETRIZE { gifts = 4; }
    PARAMETRIZE { gifts = 5; }
    PARAMETRIZE { gifts = 6; }
    PARAMETRIZE { gifts = 7; }
    PARAMETRIZE { gifts = 8; }
    PARAMETRIZE { gifts = 9; }
    PARAMETRIZE { gifts = 10; }
    PARAMETRIZE { gifts = 11; }
    PARAMETRIZE { gifts = 12; }
    PARAMETRIZE { gifts = 13; }
    PARAMETRIZE { gifts = 14; }
    PARAMETRIZE { gifts = 15; }

    SaveAideState(&saved);
    SeedAideDex(0, 0, FALSE);
    for (u32 i = 0; i < 4; i++)
        if (gifts & (1 << i))
            FlagSet(sAideFlags[i]);
    SetMoney(&gSaveBlock1Ptr->money, 20000);
    trace.answers = 3; // Must not be consumed if the completed question is NO.
    // Incomplete unlocked shops decline safely; their offers use separate answers.
    if (gifts != 15)
        trace.answers = 0;
    RunAideReward(&trace);
    EXPECT_EQ(trace.completedQuestions, gifts == 15);
    EXPECT_EQ(trace.countCalls, gifts == 15 ? 0 : (gifts & 3) == 3 ? 1 : 2);
    EXPECT_EQ(trace.followerCalls, gifts != 15);
    EXPECT_EQ(trace.charges, 0);
    EXPECT_EQ(trace.attempts[0], 0);
    EXPECT_EQ(trace.attempts[1], 0);
    EXPECT_EQ(trace.porygonGifts, 0);
    EXPECT_EQ(trace.togepiGifts, 0);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 20000);
    for (u32 i = 0; i < 4; i++)
        EXPECT_EQ(FlagGet(sAideFlags[i]), !!(gifts & (1 << i)));
    if (gifts == 15)
    {
        EXPECT_EQ(trace.textCount, 1);
        EXPECT_EQ(trace.texts[0], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAllGiftsGiven, 0));
        EXPECT_EQ(trace.offers[0], 0);
        EXPECT_EQ(trace.offers[1], 0);
        EXPECT_EQ(trace.answerIndex, 0);
        EXPECT_EQ(VarGet(VAR_TEMP_0), 0x7777);
    }
    else
        for (u32 i = 0; i < trace.textCount; i++)
            EXPECT_NE(trace.texts[i], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAllGiftsGiven, 0));
    RestoreAideState(&saved);
}

TEST("Littleroot aide: completed-stage shopping can buy either item repeatedly or cancel without returning to old gift dialogue")
{
    u32 answers = 0, money = 27000;
    bool8 bagFull = FALSE, failItem = FALSE;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { answers = 0; }
    PARAMETRIZE { answers = 1; } // One Upgrade, then cancel both offers.
    PARAMETRIZE { answers = 2; } // Decline Upgrade, buy one Disc, then cancel.
    PARAMETRIZE { answers = 3; } // Two Upgrades.
    PARAMETRIZE { answers = 10; } // Two Discs, declining Upgrade each time.
    PARAMETRIZE { answers = 1; money = 9999; }
    PARAMETRIZE { answers = 1; money = 10000; bagFull = TRUE; }
    PARAMETRIZE { answers = 1; money = 10000; failItem = TRUE; }

    SaveAideState(&saved);
    SeedAideDex(300, 300, FALSE);
    ClaimAidePokemon();
    UnlockAideItems(3);
    SetMoney(&gSaveBlock1Ptr->money, money);
    trace.follower = SPECIES_PORYGON2;
    trace.completedConsent = TRUE;
    trace.answers = answers;
    trace.bagFull = bagFull;
    trace.failItem = failItem;
    RunAideReward(&trace);
    u8 upgrades = answers == 1 ? 1 : answers == 3 ? 2 : 0;
    u8 discs = answers == 2 ? 1 : answers == 10 ? 2 : 0;
    if (money < 10000 || bagFull || failItem)
        upgrades = discs = 0;
    EXPECT_EQ(trace.completedQuestions, 1);
    EXPECT_EQ(trace.countCalls, 0);
    EXPECT_EQ(trace.followerCalls, 0);
    EXPECT_EQ(trace.upgradeQuestions, 0);
    EXPECT_EQ(trace.purchases[0], upgrades);
    EXPECT_EQ(trace.purchases[1], discs);
    EXPECT_EQ(trace.charges, upgrades + discs);
    EXPECT_EQ(trace.shopSounds, trace.charges);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), money - 10000 * (upgrades + discs));
    EXPECT_EQ(trace.porygonGifts, 0);
    EXPECT_EQ(trace.togepiGifts, 0);
    for (u32 i = 0; i < trace.textCount; i++)
    {
        EXPECT_NE(trace.texts[i], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon, 0));
        EXPECT_NE(trace.texts[i], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterTogepi, 0));
        EXPECT_NE(trace.texts[i], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideDexRewards, 0));
    }
    for (u32 i = 0; i < 4; i++)
        EXPECT_EQ(FlagGet(sAideFlags[i]), TRUE);
    RestoreAideState(&saved);
}

TEST("Littleroot aide: the free Upgrade follow-up can offer paid copies but still requires the 10000 confirmation")
{
    // Check only the requested suffix; the author remains free to edit the prose.
    static const u8 expectedQuestion[] = _("Oh, or did you want to buy another\nUPGRADE?");
    static const u8 expectedPrice[] = _("Would you like to buy an UPGRADE\nfor ¥10,000?");
    bool8 consent = FALSE;
    u32 answers = 1;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { consent = FALSE; answers = 1; }
    PARAMETRIZE { consent = TRUE; answers = 0; }
    PARAMETRIZE { consent = TRUE; answers = 1; }
    PARAMETRIZE { consent = TRUE; answers = 3; }

    SaveAideState(&saved);
    SeedAideDex(200, 200, FALSE);
    ClaimAidePokemon();
    UnlockAideItems(2); // The other evolution gift never blocks this free Upgrade.
    SetMoney(&gSaveBlock1Ptr->money, 20000);
    trace.follower = SPECIES_PORYGON;
    trace.upgradeConsent = consent;
    trace.answers = answers;
    RunAideReward(&trace);
    u8 purchased = !consent || answers == 0 ? 0 : answers == 1 ? 1 : 2;
    EXPECT_EQ(trace.completedQuestions, 0);
    EXPECT_EQ(trace.upgradeQuestions, 1);
    EXPECT_EQ(trace.countCalls, 1);
    EXPECT_EQ(trace.followerCalls, 1);
    EXPECT_EQ(trace.items[0], 1 + purchased);
    EXPECT_EQ(trace.purchases[0], purchased);
    EXPECT_EQ(trace.items[1], 0);
    EXPECT_EQ(trace.offers[0], consent ? purchased + 1 : 0);
    EXPECT_EQ(trace.offers[1], consent);
    EXPECT_EQ(trace.charges, purchased);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 20000 - 10000 * purchased);
    u32 textLength = StringLength(trace.texts[1]);
    u32 questionLength = StringLength(expectedQuestion);
    EXPECT_GE(textLength, questionLength);
    EXPECT_EQ(StringCompare(trace.texts[1] + textLength - questionLength, expectedQuestion), 0);
    if (consent)
        EXPECT_EQ(StringCompare(trace.texts[2], expectedPrice), 0);
    else
    {
        EXPECT_EQ(trace.textCount, 2);
        EXPECT_EQ(trace.answerIndex, 0);
        EXPECT_EQ(trace.moneyChecks, 0);
    }
    for (u32 i = 0; i < 4; i++)
        EXPECT_EQ(FlagGet(sAideFlags[i]), TRUE);

    // With all gifts now claimed, the next visit is only the general question.
    trace = (struct AideTrace){.follower = SPECIES_PORYGON};
    RunAideReward(&trace);
    EXPECT_EQ(trace.completedQuestions, 1);
    EXPECT_EQ(trace.upgradeQuestions, 0);
    EXPECT_EQ(trace.attempts[0], 0);
    EXPECT_EQ(trace.countCalls, 0);
    EXPECT_EQ(trace.followerCalls, 0);
    EXPECT_EQ(trace.textCount, 1);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), 20000 - 10000 * purchased);
    RestoreAideState(&saved);
}

TEST("Littleroot aide: repeat Upgrade visits show the shared hint before any price offer with any follower")
{
    u16 caught = 299, follower = SPECIES_PORYGON;
    bool8 consent = FALSE;
    u32 answers = 1;
    struct AideSavedState saved;
    struct AideTrace trace = {0};

    PARAMETRIZE { follower = SPECIES_PORYGON; }
    PARAMETRIZE { follower = SPECIES_NONE; }
    PARAMETRIZE { follower = SPECIES_ZIGZAGOON; }
    PARAMETRIZE { follower = SPECIES_PORYGON2; }
    PARAMETRIZE { consent = TRUE; answers = 0; }
    PARAMETRIZE { consent = TRUE; answers = 1; }
    PARAMETRIZE { caught = 300; follower = SPECIES_PORYGON2; }

    SaveAideState(&saved);
    SeedAideDex(caught, caught, FALSE);
    ClaimAidePokemon();
    UnlockAideItems(1);
    SetMoney(&gSaveBlock1Ptr->money, 10000);
    trace.follower = follower;
    trace.upgradeConsent = consent;
    trace.answers = answers;
    RunAideReward(&trace);
    bool8 discGift = caught >= 300 && follower == SPECIES_PORYGON2;
    bool8 bought = !discGift && consent && answers;
    EXPECT_EQ(trace.countCalls, 1);
    EXPECT_EQ(trace.followerCalls, 1);
    EXPECT_EQ(trace.completedQuestions, 0);
    EXPECT_EQ(trace.upgradeQuestions, !discGift);
    EXPECT_EQ(trace.items[0], bought); // No repeat free Upgrade.
    EXPECT_EQ(trace.purchases[0], bought);
    EXPECT_EQ(trace.items[1], discGift);
    EXPECT_EQ(trace.purchases[1], 0);
    EXPECT_EQ(trace.offers[0], !discGift && consent ? bought + 1 : 0);
    EXPECT_EQ(trace.offers[1], 0);
    EXPECT_EQ(trace.charges, bought);
    EXPECT_EQ(GetMoney(&gSaveBlock1Ptr->money), bought ? 0 : 10000);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_UPGRADE_LITTLEROOT), TRUE);
    EXPECT_EQ(FlagGet(FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT), discGift);
    EXPECT_EQ(trace.texts[0], discGift
        ? AideText(LittlerootTown_ProfessorBirchsLab_EventScript_GiveDubiousDisc, 0)
        : AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward, 0));
    if (!discGift && !consent)
    {
        EXPECT_EQ(trace.textCount, 1);
        EXPECT_EQ(trace.answerIndex, 0);
        EXPECT_EQ(trace.moneyChecks, 0);
    }
    for (u32 i = 0; i < trace.textCount; i++)
        EXPECT_NE(trace.texts[i], AideText(LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon, 0));
    EXPECT_EQ(trace.porygonGifts, 0);
    EXPECT_EQ(trace.togepiGifts, 0);
    RestoreAideState(&saved);
}
