#include "global.h"
#include "battle.h"
#include "event_data.h"
#include "event_scripts.h"
#include "mail.h"
#include "nuzlocke.h"
#include "overworld.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "script_pokemon_util.h"
#include "script.h"
#include "wild_encounter.h"
#include "constants/battle.h"
#include "constants/encounter_ids.h"
#include "constants/items.h"
#include "test/test.h"

static void SetUpNuzlocke(u8 mode, u8 outcome)
{
    ZeroPlayerPartyMons();
    gPlayerPartyCount = 0;
    memset(gPokemonStoragePtr->boxes, 0, sizeof(gPokemonStoragePtr->boxes));
    gPokemonStoragePtr->currentBox = 0;
    memset(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, 0, sizeof(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags));
    memset(gSaveBlock3Ptr->nuzlockeWildHeaderFlags, 0, sizeof(gSaveBlock3Ptr->nuzlockeWildHeaderFlags));
    gSaveBlock3Ptr->followerIndex = OW_FOLLOWER_NOT_SET;
    gFollowerSteps = 0;
    gSaveBlock2Ptr->optionsNuzlocke = mode;
    FlagSet(FLAG_SYS_POKEDEX_GET);
    FlagSet(FLAG_ADVENTURE_STARTED);
    FlagSet(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
    FlagSet(FLAG_SYS_NUZLOCKE_FLAGS_INITIALIZED);
    VarSet(VAR_PC_BOX_TO_SEND_MON, 0);
    VarSet(VAR_ROUTE101_STATE, 0);
    gBattleTypeFlags = BATTLE_TYPE_TRAINER;
    gBattleOutcome = outcome;
    Nuzlocke_ConsumeLoneMonPenaltyMessage();
}

static void CreateNuzlockeMon(u32 slot, u16 species, bool8 fainted, bool8 egg)
{
    u16 hp = 0;

    CreateMon(&gPlayerParty[slot], species, 20, 26, TRUE, slot + 100, OT_ID_PLAYER_ID, 0);
    SetMonData(&gPlayerParty[slot], MON_DATA_IS_EGG, &egg);
    if (fainted)
        SetMonData(&gPlayerParty[slot], MON_DATA_HP, &hp);
    CalculatePlayerPartyCount();
}

static u32 CountBoxedMons(void)
{
    u32 count = 0;

    for (u32 box = 0; box < TOTAL_BOXES_COUNT; box++)
        count += CountMonsInBox(box);
    return count;
}

static void FillBoxes(void)
{
    struct BoxPokemon mon;

    CreateBoxMon(&mon, SPECIES_WURMPLE, 5, 0, TRUE, 1000, OT_ID_PLAYER_ID, 0);
    for (u32 box = 0; box < TOTAL_BOXES_COUNT; box++)
        for (u32 slot = 0; slot < IN_BOX_COUNT; slot++)
            gPokemonStoragePtr->boxes[box][slot] = mon;
}

TEST("Nuzlocke Normal boxes fainted Pokemon after a win without releasing them")
{
    u16 item = ITEM_SITRUS_BERRY;
    struct Pokemon restored;

    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);
    SetMonData(&gPlayerParty[0], MON_DATA_HELD_ITEM, &item);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TORCHIC);
    EXPECT_EQ(CountBoxedMons(), 1);
    BoxMonToMon(&gPokemonStoragePtr->boxes[0][0], &restored);
    EXPECT_EQ(GetMonData(&restored, MON_DATA_SPECIES), SPECIES_TREECKO);
    EXPECT_EQ(GetMonData(&restored, MON_DATA_HELD_ITEM), item);
    EXPECT_EQ(GetMonData(&restored, MON_DATA_LEVEL), 20);
    EXPECT_EQ(GetMonData(&restored, MON_DATA_HP_IV), 26);
    EXPECT_EQ(GetMonData(&restored, MON_DATA_PERSONALITY), 100);
    EXPECT_EQ(GetMonData(&restored, MON_DATA_HP), 0);
    EXPECT_EQ(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags[SPECIES_TREECKO >> 3], 0);
}

TEST("Nuzlocke Normal boxes five Pokemon on a full wipe and keeps one for recovery")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        CreateNuzlockeMon(slot, SPECIES_TREECKO, TRUE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(CountBoxedMons(), 5);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_PERSONALITY), 100);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_HP), 0);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_LEVEL), 20);
    HealPlayerParty();
    EXPECT(GetMonData(&gPlayerParty[0], MON_DATA_HP) > 0);
}

TEST("Nuzlocke Normal never selects an egg as the sole recovery Pokemon")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_PICHU, FALSE, TRUE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);
    CreateNuzlockeMon(2, SPECIES_MUDKIP, TRUE, FALSE);
    CreateNuzlockeMon(3, SPECIES_TOGEPI, FALSE, TRUE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(CountBoxedMons(), 3);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TORCHIC);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_IS_EGG), FALSE);
    EXPECT_EQ(GetBoxMonData(&gPokemonStoragePtr->boxes[0][0], MON_DATA_IS_EGG), TRUE);
    EXPECT_EQ(GetBoxMonData(&gPokemonStoragePtr->boxes[0][2], MON_DATA_IS_EGG), TRUE);
    HealPlayerParty();
    EXPECT(GetMonData(&gPlayerParty[0], MON_DATA_HP) > 0);
}

TEST("Nuzlocke Normal leaves eggs in the party after a win")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_PICHU, TRUE, TRUE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);
    CreateNuzlockeMon(2, SPECIES_MUDKIP, FALSE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 2);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_IS_EGG), TRUE);
    EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), SPECIES_MUDKIP);
    EXPECT_EQ(CountBoxedMons(), 1);
}

TEST("Nuzlocke Normal preserves an egg-only party rather than making it empty")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_PICHU, FALSE, TRUE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_IS_EGG), TRUE);
    EXPECT_EQ(CountBoxedMons(), 0);
}

TEST("Nuzlocke Normal keeps a non-egg party Pokemon even when other Pokemon are already boxed")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_PICHU, FALSE, TRUE);
    CreateNuzlockeMon(1, SPECIES_MUDKIP, TRUE, FALSE);
    CreateBoxMon(&gPokemonStoragePtr->boxes[0][0], SPECIES_TREECKO, 20, 26, TRUE, 500, OT_ID_PLAYER_ID, 0);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_MUDKIP);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_LEVEL), 20);
    EXPECT_EQ(CountBoxedMons(), 2);
    EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), FALSE);
}

TEST("Nuzlocke Normal prefers an alive Pokemon for the safe slot on a loss with restored HP")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);
    CreateNuzlockeMon(2, SPECIES_MUDKIP, FALSE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TORCHIC);
    EXPECT(GetMonData(&gPlayerParty[0], MON_DATA_HP) > 0);
    EXPECT_EQ(CountBoxedMons(), 2);
}

TEST("Nuzlocke Normal also boxes the party except one on a draw or trainer forfeit")
{
    const u8 outcomes[] = {B_OUTCOME_DREW, B_OUTCOME_FORFEITED};

    for (u32 i = 0; i < ARRAY_COUNT(outcomes); i++)
    {
        SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, outcomes[i]);
        CreateNuzlockeMon(0, SPECIES_TREECKO, FALSE, FALSE);
        CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);

        Nuzlocke_ApplyPermadeathToPlayerParty();

        EXPECT_EQ(gPlayerPartyCount, 1);
        EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
        EXPECT_EQ(CountBoxedMons(), 1);
    }
}

TEST("Nuzlocke Normal keeps a safety Pokemon if the final opposing Pokemon also fainted")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 1);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
    EXPECT_EQ(CountBoxedMons(), 1);
}

TEST("Nuzlocke Normal never deletes Pokemon when every PC box is full")
{
    struct Pokemon original[PARTY_SIZE];

    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    FillBoxes();
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        CreateNuzlockeMon(slot, SPECIES_TREECKO, TRUE, FALSE);
    memcpy(original, gPlayerParty, sizeof(original));

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, PARTY_SIZE);
    EXPECT_EQ(memcmp(original, gPlayerParty, sizeof(original)), 0);
    EXPECT_EQ(CountBoxedMons(), TOTAL_BOXES_COUNT * IN_BOX_COUNT);
    EXPECT_EQ(GetBoxMonData(&gPokemonStoragePtr->boxes[0][0], MON_DATA_SPECIES), SPECIES_WURMPLE);
}

TEST("Nuzlocke Normal fills the last free PC slot without deleting the remaining Pokemon")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    FillBoxes();
    ZeroBoxMonAt(TOTAL_BOXES_COUNT - 1, IN_BOX_COUNT - 1);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);
    CreateNuzlockeMon(2, SPECIES_MUDKIP, TRUE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 2);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
    EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), SPECIES_MUDKIP);
    EXPECT_EQ(GetBoxMonData(&gPokemonStoragePtr->boxes[TOTAL_BOXES_COUNT - 1][IN_BOX_COUNT - 1], MON_DATA_SPECIES), SPECIES_TORCHIC);
    EXPECT_EQ(CountBoxedMons(), TOTAL_BOXES_COUNT * IN_BOX_COUNT);
}

TEST("Nuzlocke Normal preserves attached mail instead of discarding it during automatic boxing")
{
    u16 item = ITEM_ORANGE_MAIL;
    u8 mailId = 0;

    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);
    SetMonData(&gPlayerParty[0], MON_DATA_HELD_ITEM, &item);
    SetMonData(&gPlayerParty[0], MON_DATA_MAIL, &mailId);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gPlayerPartyCount, 2);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_HELD_ITEM), item);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_MAIL), mailId);
    EXPECT_EQ(CountBoxedMons(), 0);
}

TEST("Nuzlocke Normal remaps a surviving follower after multiple Pokemon are boxed")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);
    CreateNuzlockeMon(2, SPECIES_MUDKIP, FALSE, FALSE);
    gSaveBlock3Ptr->followerIndex = 2;

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gSaveBlock3Ptr->followerIndex, 0);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_MUDKIP);
}

TEST("Nuzlocke Normal unsets a follower that was boxed")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);
    gSaveBlock3Ptr->followerIndex = 0;
    gFollowerSteps = 100;

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(gSaveBlock3Ptr->followerIndex, OW_FOLLOWER_NOT_SET);
    EXPECT_EQ(gFollowerSteps, 0);
}

TEST("Nuzlocke Normal retains the existing penalty for the only owned Pokemon")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_LEVEL), 18);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), TRUE);
}

TEST("Nuzlocke Hard still releases fainted Pokemon instead of boxing them")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_HARD, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TORCHIC);
    EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), SPECIES_NONE);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags[SPECIES_TREECKO >> 3] & (1 << (SPECIES_TREECKO & 7)));
}

TEST("Nuzlocke Hard removes its last fainted Pokemon instead of granting a safety penalty")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_HARD, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_NONE);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), FALSE);
    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
}

TEST("Nuzlocke game over: both modes detect a wipe before changing the party")
{
    u8 mode;
    struct Pokemon original[PARTY_SIZE];
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        CreateNuzlockeMon(slot, SPECIES_TREECKO, TRUE, FALSE);
    memcpy(original, gPlayerParty, sizeof(original));

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
    EXPECT_EQ(memcmp(original, gPlayerParty, sizeof(original)), 0);
    EXPECT_EQ(gPlayerPartyCount, PARTY_SIZE);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), FALSE);
}

TEST("Nuzlocke game over: boxed Pokemon do not prevent a wipe in either mode")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateBoxMon(&gPokemonStoragePtr->boxes[0][0], SPECIES_TORCHIC, 20, 26, TRUE, 500, OT_ID_PLAYER_ID, 0);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
    EXPECT_EQ(CountBoxedMons(), 1);
}

TEST("Nuzlocke game over: eggs are not survivors in either mode")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_PICHU, FALSE, TRUE);
    CreateNuzlockeMon(1, SPECIES_TREECKO, TRUE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
}

TEST("Nuzlocke game over: a living non-egg Pokemon prevents game over")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), FALSE);
}

TEST("Nuzlocke game over: a mutual knockout still opens the loss menu")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_WON);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
}

TEST("Nuzlocke game over: Off and invalid modes never open the menu")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_OFF; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD + 1; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), FALSE);
}

TEST("Nuzlocke game over: neither mode opens the menu before waking in Littleroot")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    FlagClear(FLAG_SYS_POKEDEX_GET);
    FlagClear(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), FALSE);
}

TEST("Nuzlocke Off does not box release or penalize fainted Pokemon")
{
    struct Pokemon original[PARTY_SIZE];

    SetUpNuzlocke(OPTIONS_NUZLOCKE_OFF, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);
    memcpy(original, gPlayerParty, sizeof(original));

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(memcmp(original, gPlayerParty, sizeof(original)), 0);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), FALSE);
}

TEST("Nuzlocke Normal and Hard do nothing during the prologue before waking in Littleroot")
{
    for (u8 mode = OPTIONS_NUZLOCKE_NORMAL; mode <= OPTIONS_NUZLOCKE_HARD; mode++)
    {
        SetUpNuzlocke(mode, B_OUTCOME_LOST);
        FlagClear(FLAG_SYS_POKEDEX_GET);
        FlagClear(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
        CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
        CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);

        Nuzlocke_ApplyPermadeathToPlayerParty();

        EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
        EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), SPECIES_TORCHIC);
        EXPECT_EQ(CountBoxedMons(), 0);
        EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), FALSE);
    }
}

TEST("Nuzlocke waking: fainting rules apply before the Poke Ball handoff")
{
    u8 mode;
    bool8 dex;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; dex = FALSE; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; dex = FALSE; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; dex = TRUE; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; dex = TRUE; }
    SetUpNuzlocke(mode, B_OUTCOME_WON);
    FlagClear(FLAG_ADVENTURE_STARTED);
    if (!dex)
        FlagClear(FLAG_SYS_POKEDEX_GET);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
    CreateNuzlockeMon(1, SPECIES_TORCHIC, FALSE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TORCHIC);
    EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), SPECIES_NONE);
    EXPECT_EQ(CountBoxedMons(), mode == OPTIONS_NUZLOCKE_NORMAL ? 1 : 0);
    EXPECT_EQ(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags[SPECIES_TREECKO >> 3] != 0,
              mode == OPTIONS_NUZLOCKE_HARD);
}

TEST("Nuzlocke waking: starter-battle wipe triggers game over before the Pokedex")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    FlagClear(FLAG_SYS_POKEDEX_GET);
    FlagClear(FLAG_ADVENTURE_STARTED);
    gBattleTypeFlags = BATTLE_TYPE_FIRST_BATTLE;
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_LEVEL), 20);
}

TEST("Nuzlocke waking: existing saves already rescuing Acacia or owning the Pokedex stay active")
{
    u8 mode;
    bool8 dex;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; dex = FALSE; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; dex = FALSE; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; dex = TRUE; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; dex = TRUE; }
    SetUpNuzlocke(mode, B_OUTCOME_LOST);
    FlagClear(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
    if (!dex)
    {
        FlagClear(FLAG_SYS_POKEDEX_GET);
        VarSet(VAR_ROUTE101_STATE, 2);
    }
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    EXPECT_EQ(Nuzlocke_ShouldGameOver(), TRUE);
}

static struct WarpData sEncounterSavedLocation;

static void SetUpEarlyEncounter(u8 mode)
{
    bool8 shiny = FALSE;

    sEncounterSavedLocation = gSaveBlock1Ptr->location;
    SetUpNuzlocke(mode, B_OUTCOME_WON);
    FlagClear(FLAG_SYS_POKEDEX_GET);
    FlagClear(FLAG_ADVENTURE_STARTED);
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(MAP_ROUTE101);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(MAP_ROUTE101);
    gBattleTypeFlags = 0;
    CreateNuzlockeMon(0, SPECIES_TREECKO, FALSE, FALSE);
    ZeroEnemyPartyMons();
    CreateMon(&gEnemyParty[0], SPECIES_SENTRET, 5, 26, TRUE, 200, OT_ID_PLAYER_ID, 0);
    SetMonData(&gEnemyParty[0], MON_DATA_IS_SHINY, &shiny);
    gBattlersCount = 2;
    gBattlerPartyIndexes[B_POSITION_OPPONENT_LEFT] = 0;
}

TEST("Nuzlocke catches: Normal catch limit starts after the Pokedex and Poke Ball handoff")
{
    SetUpEarlyEncounter(OPTIONS_NUZLOCKE_NORMAL);
    EXPECT_EQ(GetCurrentMapEncounterId(), ENCOUNTER_ID_ROUTE101);
    for (u32 battle = 0; battle < 3; battle++)
    {
        Nuzlocke_OnBattleStart();
        EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
        Nuzlocke_OnMonCaught(&gEnemyParty[0]);
        EXPECT_EQ(gSaveBlock3Ptr->nuzlockeWildHeaderFlags[0], 0);
    }

    FlagSet(FLAG_SYS_POKEDEX_GET);
    FlagSet(FLAG_ADVENTURE_STARTED);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
    Nuzlocke_OnMonCaught(&gEnemyParty[0]);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), FALSE);
    gSaveBlock1Ptr->location = sEncounterSavedLocation;
}

TEST("Nuzlocke catches: Hard first-encounter limit starts after the Pokedex and Poke Ball handoff")
{
    SetUpEarlyEncounter(OPTIONS_NUZLOCKE_HARD);
    EXPECT_EQ(GetCurrentMapEncounterId(), ENCOUNTER_ID_ROUTE101);
    for (u32 battle = 0; battle < 3; battle++)
    {
        Nuzlocke_OnBattleStart();
        EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
        EXPECT_EQ(gSaveBlock3Ptr->nuzlockeWildHeaderFlags[0], 0);
    }

    FlagSet(FLAG_SYS_POKEDEX_GET);
    FlagSet(FLAG_ADVENTURE_STARTED);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), FALSE);
    gSaveBlock1Ptr->location = sEncounterSavedLocation;
}

TEST("Nuzlocke catches: receiving the Pokedex alone does not start the catch limit")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpEarlyEncounter(mode);
    FlagSet(FLAG_SYS_POKEDEX_GET);

    for (u32 battle = 0; battle < 3; battle++)
    {
        Nuzlocke_OnBattleStart();
        EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
        Nuzlocke_OnMonCaught(&gEnemyParty[0]);
        EXPECT_EQ(gSaveBlock3Ptr->nuzlockeWildHeaderFlags[0], 0);
    }

    FlagSet(FLAG_ADVENTURE_STARTED);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
    Nuzlocke_OnMonCaught(&gEnemyParty[0]);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), FALSE);
    gSaveBlock1Ptr->location = sEncounterSavedLocation;
}

TEST("Nuzlocke waking: the prologue does not consume encounter allowances")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpEarlyEncounter(mode);
    FlagClear(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
    Nuzlocke_RecordInitialChoice(mode);
    Nuzlocke_OnBattleStart();
    Nuzlocke_OnMonCaught(&gEnemyParty[0]);
    EXPECT_EQ(gSaveBlock3Ptr->nuzlockeWildHeaderFlags[0], 0);
    FlagSet(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
    gSaveBlock1Ptr->location = sEncounterSavedLocation;
}

TEST("Nuzlocke waking: the forced Sentret battle leaves Route 101's catch allowance intact")
{
    u8 mode;
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_NORMAL; }
    PARAMETRIZE { mode = OPTIONS_NUZLOCKE_HARD; }
    SetUpEarlyEncounter(mode);
    FlagSet(FLAG_SYS_POKEDEX_GET);
    FlagSet(FLAG_ADVENTURE_STARTED);
    gBattleTypeFlags = BATTLE_TYPE_FIRST_BATTLE;
    Nuzlocke_OnBattleStart();
    Nuzlocke_OnMonCaught(&gEnemyParty[0]);
    EXPECT_EQ(gSaveBlock3Ptr->nuzlockeWildHeaderFlags[0], 0);
    gBattleTypeFlags = 0;
    Nuzlocke_OnBattleStart();
    EXPECT_EQ(Nuzlocke_CanThrowBallThisBattle(), TRUE);
    gSaveBlock1Ptr->location = sEncounterSavedLocation;
}

TEST("Nuzlocke waking: rescue completion preserves the lab follow-up for either player gender")
{
    u8 gender;
    u8 savedGender = gSaveBlock2Ptr->playerGender;
    PARAMETRIZE { gender = MALE; }
    PARAMETRIZE { gender = FEMALE; }
    SetUpNuzlocke(OPTIONS_NUZLOCKE_NORMAL, B_OUTCOME_LOST);
    gSaveBlock2Ptr->playerGender = gender;
    FlagSet(FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_BIRCH);
    FlagClear(FLAG_HIDE_ROUTE_101_BIRCH_STARTERS_BAG);
    FlagClear(FLAG_HIDE_ROUTE_101_BIRCH_ZIGZAGOON_BATTLE);
    FlagClear(FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM);
    FlagClear(FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM);
    VarSet(VAR_BIRCH_LAB_STATE, 0);
    VarSet(VAR_ROUTE101_STATE, 2);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    RunScriptImmediately(Route101_EventScript_CompleteAcaciaRescue);

    EXPECT_EQ(VarGet(VAR_BIRCH_LAB_STATE), 2);
    EXPECT_EQ(VarGet(VAR_ROUTE101_STATE), 3);
    EXPECT_EQ(FlagGet(FLAG_HIDE_ROUTE_101_BIRCH_STARTERS_BAG), TRUE);
    EXPECT_EQ(FlagGet(FLAG_HIDE_ROUTE_101_BIRCH_ZIGZAGOON_BATTLE), TRUE);
    EXPECT_EQ(FlagGet(FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_BIRCH), FALSE);
    EXPECT_EQ(FlagGet(FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM), gender == MALE);
    EXPECT_EQ(FlagGet(FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM), gender == FEMALE);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_HP), 0);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_LEVEL), 20);
    gSaveBlock2Ptr->playerGender = savedGender;
}
