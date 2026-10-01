#include "global.h"
#include "battle.h"
#include "event_data.h"
#include "mail.h"
#include "nuzlocke.h"
#include "overworld.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "script_pokemon_util.h"
#include "constants/battle.h"
#include "constants/items.h"
#include "test/test.h"

static void SetUpNuzlocke(u8 mode, u8 outcome)
{
    ZeroPlayerPartyMons();
    gPlayerPartyCount = 0;
    memset(gPokemonStoragePtr->boxes, 0, sizeof(gPokemonStoragePtr->boxes));
    gPokemonStoragePtr->currentBox = 0;
    memset(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, 0, sizeof(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags));
    gSaveBlock3Ptr->followerIndex = OW_FOLLOWER_NOT_SET;
    gFollowerSteps = 0;
    gSaveBlock2Ptr->optionsNuzlocke = mode;
    FlagSet(FLAG_SYS_POKEDEX_GET);
    FlagSet(FLAG_SYS_NUZLOCKE_FLAGS_INITIALIZED);
    VarSet(VAR_PC_BOX_TO_SEND_MON, 0);
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

TEST("Nuzlocke Hard retains its existing lone Pokemon two-level penalty")
{
    SetUpNuzlocke(OPTIONS_NUZLOCKE_HARD, B_OUTCOME_LOST);
    CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);

    Nuzlocke_ApplyPermadeathToPlayerParty();

    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_LEVEL), 18);
    EXPECT_EQ(CountBoxedMons(), 0);
    EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), TRUE);
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

TEST("Nuzlocke Normal and Hard still do nothing before the Pokedex is received")
{
    for (u8 mode = OPTIONS_NUZLOCKE_NORMAL; mode <= OPTIONS_NUZLOCKE_HARD; mode++)
    {
        SetUpNuzlocke(mode, B_OUTCOME_LOST);
        FlagClear(FLAG_SYS_POKEDEX_GET);
        CreateNuzlockeMon(0, SPECIES_TREECKO, TRUE, FALSE);
        CreateNuzlockeMon(1, SPECIES_TORCHIC, TRUE, FALSE);

        Nuzlocke_ApplyPermadeathToPlayerParty();

        EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_TREECKO);
        EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), SPECIES_TORCHIC);
        EXPECT_EQ(CountBoxedMons(), 0);
        EXPECT_EQ(Nuzlocke_HasLoneMonPenaltyMessage(), FALSE);
    }
}
