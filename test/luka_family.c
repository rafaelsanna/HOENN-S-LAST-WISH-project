#include "global.h"
#include "event_data.h"
#include "script.h"
#include "test/test.h"

extern const u8 PetalburgCity_WallysHouse_EventScript_WallysDad[];
extern const u8 PetalburgCity_WallysHouse_EventScript_WallysMom[];
extern const u8 PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue[];
extern const u8 PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue[];
extern const u8 PetalburgCity_WallysHouse_Text_GrandfatherBeforeMeetingLuka[];
extern const u8 PetalburgCity_WallysHouse_Text_GrandmotherBeforeMeetingLuka[];
extern const u8 PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally[];
extern const u8 PetalburgCity_WallysHouse_Text_WallyWasReallyHappy[];
extern const u8 PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing[];
extern const u8 PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon[];
extern const u8 PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling[];
extern const u8 PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity[];

static void SetUpLukaFamily(u16 gymState)
{
    VarSet(VAR_PETALBURG_GYM_STATE, gymState);
    VarSet(VAR_WALLY_TUTORIAL_RESULT, 0);
    FlagClear(FLAG_THANKED_FOR_PLAYING_WITH_WALLY);
    FlagClear(FLAG_RECEIVED_HM_SURF);
    FlagClear(FLAG_DEFEATED_WALLY_VICTORY_ROAD);
}

static void ExpectFamilyDialogue(const u8 *script, const u8 *text)
{
    struct ScriptContext ctx;

    // Start after lock/faceplayer to inspect selection without moving NPCs or opening UI.
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_SAVE | SCREFF_HARDWARE, script, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)text);
}

TEST("Luka family NPC entry scripts use the tested dialogue selectors")
{
    EXPECT_EQ(PetalburgCity_WallysHouse_EventScript_WallysDad + 2,
        PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue);
    EXPECT_EQ(PetalburgCity_WallysHouse_EventScript_WallysMom + 2,
        PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue);
}

TEST("Luka family uses pre-meeting dialogue until the first gym visit is complete")
{
    u16 state;

    PARAMETRIZE { state = 0; }
    PARAMETRIZE { state = 1; }
    SetUpLukaFamily(state);
    for (u32 visit = 0; visit < 2; visit++)
    {
        ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue,
            PetalburgCity_WallysHouse_Text_GrandfatherBeforeMeetingLuka);
        ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue,
            PetalburgCity_WallysHouse_Text_GrandmotherBeforeMeetingLuka);
        EXPECT_EQ(FlagGet(FLAG_THANKED_FOR_PLAYING_WITH_WALLY), FALSE);
        EXPECT_EQ(VarGet(VAR_PETALBURG_GYM_STATE), state);
    }
}

TEST("Luka family pre-meeting dialogue overrides an old prematurely set thank-you flag")
{
    SetUpLukaFamily(0);
    FlagSet(FLAG_THANKED_FOR_PLAYING_WITH_WALLY);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue,
        PetalburgCity_WallysHouse_Text_GrandfatherBeforeMeetingLuka);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue,
        PetalburgCity_WallysHouse_Text_GrandmotherBeforeMeetingLuka);
}

TEST("Luka family uses post-meeting dialogue whether the first battle was won or lost")
{
    u16 result;

    PARAMETRIZE { result = 0; }
    PARAMETRIZE { result = 1; }
    SetUpLukaFamily(2);
    VarSet(VAR_WALLY_TUTORIAL_RESULT, result);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue,
        PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue,
        PetalburgCity_WallysHouse_Text_WallyWasReallyHappy);
}

TEST("Luka family preserves the grandfather repeat conversation after meeting Luka")
{
    for (u16 state = 2; state <= 8; state++)
    {
        SetUpLukaFamily(state);
        FlagSet(FLAG_THANKED_FOR_PLAYING_WITH_WALLY);
        ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue,
            PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing);
        ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue,
            PetalburgCity_WallysHouse_Text_WallyWasReallyHappy);
    }
}

TEST("Luka family preserves both grandparents post-Surf dialogue")
{
    SetUpLukaFamily(7);
    FlagSet(FLAG_RECEIVED_HM_SURF);
    FlagSet(FLAG_THANKED_FOR_PLAYING_WITH_WALLY);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue,
        PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue,
        PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling);
}

TEST("Luka family preserves the grandfather's Victory Road dialogue priority")
{
    SetUpLukaFamily(8);
    FlagSet(FLAG_RECEIVED_HM_SURF);
    FlagSet(FLAG_THANKED_FOR_PLAYING_WITH_WALLY);
    FlagSet(FLAG_DEFEATED_WALLY_VICTORY_ROAD);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue,
        PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity);
    ExpectFamilyDialogue(PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue,
        PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling);
}
