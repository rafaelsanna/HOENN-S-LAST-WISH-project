#include "global.h"
#include "battle.h"
#include "battle_util.h"
#include "event_data.h"
#include "main.h"
#include "malloc.h"
#include "option_menu.h"
#include "randomizer.h"
#include "string_util.h"
#include "text.h"
#include "test/test.h"
#include "constants/flags.h"
#include "constants/moves.h"

// The menu enforcement hook also applies the existing Hard rules. Restore all
// flags it can touch, not just the two flags this change concerns.
static const u16 sTouchedFlags[] =
{
    FLAG_PHYSICAL_SPECIAL_SPLIT,
    FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED,
    FLAG_HARD_MODE_SLEEP_CLAUSE,
    FLAG_OPS_ALL_MOVES,
    FLAG_ALL_ABILITIES,
    RANDOMIZER_FLAG_WILD_MON,
    RANDOMIZER_FLAG_FULL_WILD_MON,
    RANDOMIZER_FLAG_TRAINER_MON,
};

struct SavedSplitState
{
    bool8 flags[ARRAY_COUNT(sTouchedFlags)];
    u8 difficulty;
    bool8 inBattle;
};

static void SetUpSplitTest(struct SavedSplitState *saved)
{
    for (u32 i = 0; i < ARRAY_COUNT(sTouchedFlags); i++)
        saved->flags[i] = FlagGet(sTouchedFlags[i]);
    saved->difficulty = gSaveBlock2Ptr->optionsNpcTeams;
    saved->inBattle = gMain.inBattle;
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    gMain.inBattle = FALSE;
    FlagSet(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED);
    FlagClear(FLAG_PHYSICAL_SPECIAL_SPLIT);
}

static void TearDownSplitTest(const struct SavedSplitState *saved)
{
    for (u32 i = 0; i < ARRAY_COUNT(sTouchedFlags); i++)
    {
        if (saved->flags[i])
            FlagSet(sTouchedFlags[i]);
        else
            FlagClear(sTouchedFlags[i]);
    }
    gSaveBlock2Ptr->optionsNpcTeams = saved->difficulty;
    gMain.inBattle = saved->inBattle;
}

static void SetSplitFlag(bool32 enabled)
{
    if (enabled)
        FlagSet(FLAG_PHYSICAL_SPECIAL_SPLIT);
    else
        FlagClear(FLAG_PHYSICAL_SPECIAL_SPLIT);
}

TEST("Physical/special split: Hard forces both incoming choices ON, locks them, and saves ON")
{
    bool8 selection = FALSE;
    bool8 save = FALSE;
    bool8 canToggle;
    const u8 *description;
    struct SavedSplitState saved;

    PARAMETRIZE { selection = FALSE; save = FALSE; }
    PARAMETRIZE { selection = TRUE; save = FALSE; }
    PARAMETRIZE { selection = FALSE; save = TRUE; }
    PARAMETRIZE { selection = TRUE; save = TRUE; }

    SetUpSplitTest(&saved);
    FlagClear(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED);
    description = OptionMenu_TestPhysicalSpecialSplitRules(TRUE, save, &selection, &canToggle);
    EXPECT_EQ(selection, TRUE);
    EXPECT_EQ(canToggle, FALSE);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT), TRUE);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED), save);
    EXPECT_EQ(StringCompare(description, COMPOUND_STRING("Physical/special split is\nlocked ON in HARD mode.")), 0);
    SetDefaultFontsPointer();
    EXPECT_LE(GetStringWidth(FONT_NORMAL, description, 0), 200);
    TearDownSplitTest(&saved);
}

TEST("Physical/special split: Normal leaves both choices available and saves the selected value")
{
    bool8 selection = FALSE;
    bool8 expectedSelection;
    bool8 canToggle;
    const u8 *description;
    struct SavedSplitState saved;

    PARAMETRIZE { selection = FALSE; }
    PARAMETRIZE { selection = TRUE; }

    SetUpSplitTest(&saved);
    expectedSelection = selection;
    SetSplitFlag(!selection);
    FlagClear(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED);
    description = OptionMenu_TestPhysicalSpecialSplitRules(FALSE, TRUE, &selection, &canToggle);
    EXPECT_EQ(selection, expectedSelection);
    EXPECT_EQ(canToggle, TRUE);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT), selection);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED), TRUE);
    EXPECT_EQ(StringCompare(description, selection
        ? COMPOUND_STRING("Use modern physical/special\nsplit by move.")
        : COMPOUND_STRING("Use the old type-based\nphysical/special split.")), 0);
    TearDownSplitTest(&saved);
}

TEST("Physical/special split: leaving Hard unlocks the option and Normal can turn it OFF again")
{
    bool8 selection = FALSE;
    bool8 canToggle;
    struct SavedSplitState saved;

    SetUpSplitTest(&saved);
    OptionMenu_TestPhysicalSpecialSplitRules(TRUE, TRUE, &selection, &canToggle);
    EXPECT_EQ(selection, TRUE);
    EXPECT_EQ(canToggle, FALSE);
    OptionMenu_TestPhysicalSpecialSplitRules(FALSE, FALSE, &selection, &canToggle);
    EXPECT_EQ(selection, TRUE);
    EXPECT_EQ(canToggle, TRUE);
    selection = FALSE;
    OptionMenu_TestPhysicalSpecialSplitRules(FALSE, TRUE, &selection, &canToggle);
    EXPECT_EQ(selection, FALSE);
    EXPECT_EQ(canToggle, TRUE);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT), FALSE);
    TearDownSplitTest(&saved);
}

TEST("Physical/special split: current Hard enables modern categories even for an old configured OFF save")
{
    bool8 hard = FALSE;
    bool8 stored = FALSE;
    struct SavedSplitState saved;

    PARAMETRIZE { hard = FALSE; stored = FALSE; }
    PARAMETRIZE { hard = FALSE; stored = TRUE; }
    PARAMETRIZE { hard = TRUE; stored = FALSE; }
    PARAMETRIZE { hard = TRUE; stored = TRUE; }

    SetUpSplitTest(&saved);
    gSaveBlock2Ptr->optionsNpcTeams = hard ? OPTIONS_NPCTEAMS_HARD : OPTIONS_NPCTEAMS_CASUAL;
    SetSplitFlag(stored);
    EXPECT_EQ(IsPhysicalSpecialSplitEnabled(), hard || stored);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED), TRUE);
    TearDownSplitTest(&saved);
}

TEST("Physical/special split: unconfigured old saves migrate to the existing ON default in either difficulty")
{
    bool8 hard = FALSE;
    struct SavedSplitState saved;

    PARAMETRIZE { hard = FALSE; }
    PARAMETRIZE { hard = TRUE; }

    SetUpSplitTest(&saved);
    gSaveBlock2Ptr->optionsNpcTeams = hard ? OPTIONS_NPCTEAMS_HARD : OPTIONS_NPCTEAMS_CASUAL;
    FlagClear(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED);
    EXPECT_EQ(IsPhysicalSpecialSplitEnabled(), TRUE);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT), TRUE);
    EXPECT_EQ(FlagGet(FLAG_PHYSICAL_SPECIAL_SPLIT_CONFIGURED), TRUE);
    TearDownSplitTest(&saved);
}

static const struct
{
    u16 move;
    u8 modern;
    u8 legacy;
} sCategoryCases[] =
{
    {MOVE_FIRE_PUNCH, DAMAGE_CATEGORY_PHYSICAL, DAMAGE_CATEGORY_SPECIAL},
    {MOVE_ICE_PUNCH, DAMAGE_CATEGORY_PHYSICAL, DAMAGE_CATEGORY_SPECIAL},
    {MOVE_THUNDER_PUNCH, DAMAGE_CATEGORY_PHYSICAL, DAMAGE_CATEGORY_SPECIAL},
    {MOVE_BITE, DAMAGE_CATEGORY_PHYSICAL, DAMAGE_CATEGORY_SPECIAL},
    {MOVE_HYPER_BEAM, DAMAGE_CATEGORY_SPECIAL, DAMAGE_CATEGORY_PHYSICAL},
    {MOVE_SHADOW_BALL, DAMAGE_CATEGORY_SPECIAL, DAMAGE_CATEGORY_PHYSICAL},
    {MOVE_SURF, DAMAGE_CATEGORY_SPECIAL, DAMAGE_CATEGORY_SPECIAL},
    {MOVE_EARTHQUAKE, DAMAGE_CATEGORY_PHYSICAL, DAMAGE_CATEGORY_PHYSICAL},
};

TEST("Physical/special split: battle and summary categories use the modern split in Hard and the chosen split in Normal")
{
    u32 moveIndex = 0;
    bool8 hard = FALSE;
    bool8 stored = FALSE;
    bool8 inBattle = FALSE;
    struct SavedSplitState saved;
    struct BattleStruct *previousBattleStruct = gBattleStruct;

    for (u32 i = 0; i < ARRAY_COUNT(sCategoryCases); i++)
        for (u32 h = FALSE; h <= TRUE; h++)
            for (u32 s = FALSE; s <= TRUE; s++)
                for (u32 b = FALSE; b <= TRUE; b++)
                    PARAMETRIZE { moveIndex = i; hard = h; stored = s; inBattle = b; }

    SetUpSplitTest(&saved);
    gSaveBlock2Ptr->optionsNpcTeams = hard ? OPTIONS_NPCTEAMS_HARD : OPTIONS_NPCTEAMS_CASUAL;
    SetSplitFlag(stored);
    if (inBattle)
    {
        gBattleStruct = AllocZeroed(sizeof(*gBattleStruct));
        EXPECT_NE(gBattleStruct, NULL);
        gMain.inBattle = TRUE;
    }
    EXPECT_EQ(GetBattleMoveCategory(sCategoryCases[moveIndex].move),
        hard || stored ? sCategoryCases[moveIndex].modern : sCategoryCases[moveIndex].legacy);
    if (inBattle)
    {
        gMain.inBattle = FALSE;
        Free(gBattleStruct);
        gBattleStruct = previousBattleStruct;
    }
    TearDownSplitTest(&saved);
}

TEST("Physical/special split: active battle status and dynamic-category overrides still take precedence")
{
    bool8 hard = FALSE;
    struct SavedSplitState saved;
    struct BattleStruct *previousBattleStruct = gBattleStruct;

    PARAMETRIZE { hard = FALSE; }
    PARAMETRIZE { hard = TRUE; }

    SetUpSplitTest(&saved);
    gSaveBlock2Ptr->optionsNpcTeams = hard ? OPTIONS_NPCTEAMS_HARD : OPTIONS_NPCTEAMS_CASUAL;
    gBattleStruct = AllocZeroed(sizeof(*gBattleStruct));
    EXPECT_NE(gBattleStruct, NULL);
    gMain.inBattle = TRUE;
    EXPECT_EQ(GetBattleMoveCategory(MOVE_GROWL), DAMAGE_CATEGORY_STATUS);
    gBattleStruct->swapDamageCategory = TRUE;
    EXPECT_EQ(GetBattleMoveCategory(MOVE_FIRE_PUNCH), DAMAGE_CATEGORY_SPECIAL);
    EXPECT_EQ(GetBattleMoveCategory(MOVE_HYPER_BEAM), DAMAGE_CATEGORY_PHYSICAL);
    gMain.inBattle = FALSE;
    Free(gBattleStruct);
    gBattleStruct = previousBattleStruct;
    TearDownSplitTest(&saved);
}
