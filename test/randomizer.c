#include "global.h"
#include "dexnav.h"
#include "event_data.h"
#include "option_menu.h"
#include "pokemon.h"
#include "random.h"
#include "randomizer.h"
#include "roamer.h"
#include "script_pokemon_util.h"
#include "script.h"
#include "starter_choose.h"
#include "text.h"
#include "wild_encounter.h"
#include "constants/items.h"
#include "constants/layouts.h"
#include "constants/moves.h"
#include "test/test.h"

static void SetUpRandomizer(bool8 tables, bool8 full)
{
    Randomizer_SetWildModes(tables, full);
    FlagClear(RANDOMIZER_FLAG_TRAINER_MON);
    VarSet(RANDOMIZER_VAR_SPECIES_MODE, MON_RANDOM);
    ZeroPlayerPartyMons();
    ZeroEnemyPartyMons();
    gPlayerPartyCount = 0;
    memset(&gMapHeader, 0, sizeof(gMapHeader));
    gIsFishingEncounter = FALSE;
    gIsSurfingEncounter = FALSE;
    gChainFishingDexNavStreak = 0;
    SeedRng(0x12345678);
}

static void ExpectHoennSpecies(u16 species)
{
    EXPECT(species > SPECIES_NONE && species < NUM_SPECIES);
    EXPECT(gSpeciesInfo[species].baseHP > 0);
    EXPECT(SpeciesToHoennPokedexNum(species) > 0);
    EXPECT(SpeciesToHoennPokedexNum(species) < HOENN_DEX_COUNT);
}

static u16 ExpectWildMon(u32 slot, u8 level)
{
    u16 species = GetMonData(&gEnemyParty[slot], MON_DATA_SPECIES);

    ExpectHoennSpecies(species);
    EXPECT_EQ(GetMonData(&gEnemyParty[slot], MON_DATA_LEVEL), level);
    EXPECT(GetMonData(&gEnemyParty[slot], MON_DATA_HP) > 0);
    EXPECT(GetMonData(&gEnemyParty[slot], MON_DATA_HP) <= GetMonData(&gEnemyParty[slot], MON_DATA_MAX_HP));
    return species;
}

TEST("Full Random preserves species and does not consume encounter RNG when disabled")
{
    u32 expected;

    SetUpRandomizer(FALSE, FALSE);
    expected = Random32();
    SeedRng(0x12345678);
    EXPECT_EQ(Randomizer_FullWildEnabled(), FALSE);
    EXPECT_EQ(Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA), SPECIES_POOCHYENA);
    EXPECT_EQ(Random32(), expected);
}

TEST("Full Random settings never save both wild randomizers enabled")
{
    bool8 tables, full;

    PARAMETRIZE { tables = FALSE; full = FALSE; }
    PARAMETRIZE { tables = TRUE; full = FALSE; }
    PARAMETRIZE { tables = FALSE; full = TRUE; }
    PARAMETRIZE { tables = TRUE; full = TRUE; }
    SetUpRandomizer(tables, full);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_WILD_MON), tables);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_FULL_WILD_MON), full && !tables);
    EXPECT_EQ(Randomizer_WildEnabled(), tables);
    EXPECT_EQ(Randomizer_FullWildEnabled(), full && !tables);
}

TEST("Full Random setting does not disturb neighboring saved rewards or trainer randomization")
{
    SetUpRandomizer(FALSE, FALSE);
    FlagSet(FLAG_IPPO_FIRE_PUNCH_REWARD);
    FlagSet(FLAG_MAMORU_ICE_PUNCH_REWARD);
    FlagSet(FLAG_RYO_THUNDER_PUNCH_REWARD);
    FlagSet(RANDOMIZER_FLAG_TRAINER_MON);
    Randomizer_SetWildModes(FALSE, TRUE);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_FULL_WILD_MON), TRUE);
    Randomizer_SetWildModes(TRUE, FALSE);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_FULL_WILD_MON), FALSE);
    EXPECT_EQ(FlagGet(FLAG_IPPO_FIRE_PUNCH_REWARD), TRUE);
    EXPECT_EQ(FlagGet(FLAG_MAMORU_ICE_PUNCH_REWARD), TRUE);
    EXPECT_EQ(FlagGet(FLAG_RYO_THUNDER_PUNCH_REWARD), TRUE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), TRUE);
}

TEST("Full Random menu locks only the other wild randomizer")
{
    bool8 tables, full, fullOption, canToggle;

    PARAMETRIZE { tables = FALSE; full = FALSE; fullOption = FALSE; }
    PARAMETRIZE { tables = FALSE; full = FALSE; fullOption = TRUE; }
    PARAMETRIZE { tables = TRUE; full = FALSE; fullOption = FALSE; }
    PARAMETRIZE { tables = TRUE; full = FALSE; fullOption = TRUE; }
    PARAMETRIZE { tables = FALSE; full = TRUE; fullOption = FALSE; }
    PARAMETRIZE { tables = FALSE; full = TRUE; fullOption = TRUE; }
    OptionMenu_TestWildRandomizerOption(fullOption, tables, full, &canToggle);
    EXPECT_EQ(canToggle, fullOption ? !tables : !full);
}

TEST("Full Random menu descriptions fit the two-line description window")
{
    for (u32 tables = 0; tables <= 1; tables++)
        for (u32 full = 0; full <= 1; full++)
            for (u32 fullOption = 0; fullOption <= 1; fullOption++)
            {
                bool8 canToggle;
                const u8 *text = OptionMenu_TestWildRandomizerOption(fullOption, tables, full, &canToggle);
                u32 newlines = 0;

                EXPECT(GetStringWidth(FONT_NORMAL, text, 0) <= 200);
                for (const u8 *ch = text; *ch != EOS; ch++)
                    if (*ch == CHAR_NEWLINE)
                        newlines++;
                EXPECT(newlines <= 1);
            }
}

TEST("Full Random safely defers to existing table mode if a save has both flags")
{
    SetUpRandomizer(TRUE, FALSE);
    FlagSet(RANDOMIZER_FLAG_FULL_WILD_MON);
    EXPECT_EQ(Randomizer_WildEnabled(), TRUE);
    EXPECT_EQ(Randomizer_FullWildEnabled(), FALSE);
    EXPECT_EQ(Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA), SPECIES_POOCHYENA);
    Randomizer_SetWildModes(TRUE, Randomizer_FullWildEnabled());
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_FULL_WILD_MON), FALSE);
}

TEST("Full Random leaves existing Random Pokemon table slots consistent")
{
    u16 species;

    SetUpRandomizer(TRUE, FALSE);
    species = Randomizer_OnWildEncounter(SPECIES_POOCHYENA, 0, 1, WILD_AREA_LAND, 3);
    for (u32 i = 0; i < 16; i++)
    {
        Random32();
        EXPECT_EQ(Randomizer_OnWildEncounter(SPECIES_POOCHYENA, 0, 1, WILD_AREA_LAND, 3), species);
        EXPECT_EQ(Randomizer_OnFullWildEncounter(species), species);
    }
}

TEST("Full Random can select every actual custom Hoenn dex entry including legendaries")
{
    bool8 foundLegend = FALSE;

    SetUpRandomizer(FALSE, TRUE);
    // Exercise every possible dex-index draw without a probabilistic coverage test.
    // SFC32's next output is a + b + ctr, so this state returns dexNum - 1.
    for (u16 dexNum = 1; dexNum < HOENN_DEX_COUNT; dexNum++)
    {
        u16 expected = NationalPokedexNumToSpecies(HoennToNationalOrder(dexNum));
        u16 species;

        ExpectHoennSpecies(expected);
        gRngValue = (rng_value_t){.a = dexNum - 1};
        species = Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA);
        EXPECT_EQ(species, expected);
        if (gSpeciesInfo[species].isLegendary || gSpeciesInfo[species].isMythical)
            foundLegend = TRUE;
    }
    EXPECT(foundLegend);
}

TEST("Full Random rerolls the same wild species on every encounter")
{
    u16 first;
    bool8 changed = FALSE;

    SetUpRandomizer(FALSE, TRUE);
    first = Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA);
    for (u32 i = 0; i < 64; i++)
    {
        u16 species = Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA);

        ExpectHoennSpecies(species);
        if (species != first)
            changed = TRUE;
    }
    EXPECT(changed);
    // The table hook does not perform a second reroll before creation.
    EXPECT_EQ(Randomizer_OnWildEncounter(SPECIES_POOCHYENA, 0, 1, WILD_AREA_LAND, 3), SPECIES_POOCHYENA);
}

TEST("Full Random ignores table-mode evolution BST and legendary restrictions")
{
    u16 mode;

    PARAMETRIZE { mode = MON_RANDOM; }
    PARAMETRIZE { mode = MON_RANDOM_NO_LEGEND; }
    PARAMETRIZE { mode = MON_RANDOM_BST; }
    PARAMETRIZE { mode = MON_EVOLUTION_STAGE; }
    SetUpRandomizer(FALSE, TRUE);
    VarSet(RANDOMIZER_VAR_SPECIES_MODE, mode);
    gRngValue = (rng_value_t){.a = HOENN_DEX_RAYQUAZA - 1};
    EXPECT_EQ(Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA), SPECIES_RAYQUAZA);
}

TEST("Full Random standard wild creation rerolls Pokemon and preserves encounter levels")
{
    u16 first;
    bool8 changed = FALSE;

    SetUpRandomizer(FALSE, TRUE);
    CreateWildMon(SPECIES_POOCHYENA, 12);
    first = ExpectWildMon(0, 12);
    for (u32 i = 0; i < 16; i++)
    {
        CreateWildMon(SPECIES_POOCHYENA, 12);
        if (ExpectWildMon(0, 12) != first)
            changed = TRUE;
    }
    EXPECT(changed);
}

TEST("Full Random scripted wild creation preserves levels and assigned items")
{
    SetUpRandomizer(FALSE, TRUE);
    gRngValue = (rng_value_t){.a = HOENN_DEX_RAYQUAZA - 1};
    CreateScriptedWildMon(SPECIES_KECLEON, 30, ITEM_SITRUS_BERRY);
    EXPECT_EQ(ExpectWildMon(0, 30), SPECIES_RAYQUAZA);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HELD_ITEM), ITEM_SITRUS_BERRY);
}

TEST("Full Random scripted doubles roll each wild Pokemon independently")
{
    SetUpRandomizer(FALSE, TRUE);
    gRngValue = (rng_value_t){.a = HOENN_DEX_RAYQUAZA - 1};
    CreateScriptedDoubleWildMon(SPECIES_KECLEON, 30, ITEM_SITRUS_BERRY, SPECIES_KECLEON, 31, ITEM_CHARCOAL);
    EXPECT_EQ(ExpectWildMon(0, 30), SPECIES_RAYQUAZA);
    EXPECT_NE(ExpectWildMon(1, 31), SPECIES_RAYQUAZA);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HELD_ITEM), ITEM_SITRUS_BERRY);
    EXPECT_EQ(GetMonData(&gEnemyParty[1], MON_DATA_HELD_ITEM), ITEM_CHARCOAL);
}

TEST("Full Random fishing reports the actual randomized species")
{
    static const struct WildPokemon mons[FISH_WILD_COUNT] = {
        [0 ... FISH_WILD_COUNT - 1] = {15, 15, SPECIES_MAGIKARP},
    };
    static const struct WildPokemonInfo info = {50, mons};
    u16 first;
    bool8 changed = FALSE;

    SetUpRandomizer(FALSE, TRUE);
    first = WildEncounter_TestFishingMon(&info, OLD_ROD);
    for (u32 i = 0; i < 16; i++)
    {
        u16 species = WildEncounter_TestFishingMon(&info, OLD_ROD);

        EXPECT_EQ(species, ExpectWildMon(0, 15));
        if (species != first)
            changed = TRUE;
    }
    EXPECT(changed);
}

TEST("Full Random outbreaks keep the new species learnset instead of the outbreak moves")
{
    u16 normalMoves[MAX_MON_MOVES];

    SetUpRandomizer(FALSE, TRUE);
    CreateMon(&gEnemyParty[0], SPECIES_RAYQUAZA, 30, 0, TRUE, 100, OT_ID_PLAYER_ID, 0);
    for (u32 i = 0; i < MAX_MON_MOVES; i++)
    {
        normalMoves[i] = GetMonData(&gEnemyParty[0], MON_DATA_MOVE1 + i);
        gSaveBlock1Ptr->outbreakPokemonMoves[i] = MOVE_SPLASH;
    }
    gSaveBlock1Ptr->outbreakPokemonSpecies = SPECIES_MAGIKARP;
    gSaveBlock1Ptr->outbreakPokemonLevel = 30;
    gRngValue = (rng_value_t){.a = HOENN_DEX_RAYQUAZA - 1};
    EXPECT(WildEncounter_TestMassOutbreak());
    EXPECT_EQ(ExpectWildMon(0, 30), SPECIES_RAYQUAZA);
    for (u32 i = 0; i < MAX_MON_MOVES; i++)
        EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_MOVE1 + i), normalMoves[i]);
}

TEST("Full Random defers Frontier placeholder species until the real encounter is built")
{
    u16 layout;

    PARAMETRIZE { layout = LAYOUT_BATTLE_FRONTIER_BATTLE_PIKE_ROOM_WILD_MONS; }
    PARAMETRIZE { layout = LAYOUT_BATTLE_FRONTIER_BATTLE_PYRAMID_FLOOR; }
    SetUpRandomizer(FALSE, TRUE);
    gMapHeader.mapLayoutId = layout;
    CreateWildMon(SPECIES_BULBASAUR, 5);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_SPECIES), SPECIES_BULBASAUR);
    // Simulate the facility replacing its placeholder with a real level/species.
    CreateMon(&gEnemyParty[0], SPECIES_MAGIKARP, 45, 0, TRUE, 100, OT_ID_PLAYER_ID, 0);
    gRngValue = (rng_value_t){.a = HOENN_DEX_RAYQUAZA - 1};
    WildEncounter_TestRandomizeFacilityMon();
    EXPECT_EQ(ExpectWildMon(0, 45), SPECIES_RAYQUAZA);
}

TEST("Full Random roaming encounters reroll without changing the saved roamer identity")
{
    struct Roamer *roamer = &gSaveBlock1Ptr->roamer[0];

    SetUpRandomizer(FALSE, TRUE);
    memset(roamer, 0, sizeof(*roamer));
    roamer->species = SPECIES_LATIAS;
    roamer->level = 40;
    roamer->personality = 100;
    roamer->hp = 65535;
    gRngValue = (rng_value_t){.a = HOENN_DEX_BULBASAUR - 1};
    CreateRoamerMonInstance(0);
    EXPECT_EQ(ExpectWildMon(0, 40), SPECIES_BULBASAUR);
    EXPECT_EQ(roamer->species, SPECIES_LATIAS);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_PERSONALITY), 100);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HP), GetMonData(&gEnemyParty[0], MON_DATA_MAX_HP));
}

TEST("Full Random disabled preserves standard scripted and roaming wild species")
{
    struct Roamer *roamer = &gSaveBlock1Ptr->roamer[0];

    SetUpRandomizer(FALSE, FALSE);
    CreateWildMon(SPECIES_POOCHYENA, 12);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_SPECIES), SPECIES_POOCHYENA);
    CreateScriptedWildMon(SPECIES_KECLEON, 30, ITEM_SITRUS_BERRY);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_SPECIES), SPECIES_KECLEON);
    memset(roamer, 0, sizeof(*roamer));
    roamer->species = SPECIES_LATIAS;
    roamer->level = 40;
    roamer->personality = 100;
    roamer->hp = 50;
    CreateRoamerMonInstance(0);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_SPECIES), SPECIES_LATIAS);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HP), 50);
}

TEST("Full Random randomizes all three starters from the actual Hoenn dex with distinct choices")
{
    bool8 sawChangedStarter = FALSE, sawLegend = FALSE;
    static const u16 normalStarters[] = {SPECIES_BULBASAUR, SPECIES_TOTODILE, SPECIES_TORCHIC};

    SetUpRandomizer(FALSE, TRUE);
    for (u32 seed = 0; seed < 64; seed++)
    {
        u16 choices[ARRAY_COUNT(normalStarters)];

        for (u32 byte = 0; byte < sizeof(gSaveBlock2Ptr->playerTrainerId); byte++)
            gSaveBlock2Ptr->playerTrainerId[byte] = seed >> (byte * 8);
        for (u32 slot = 0; slot < ARRAY_COUNT(choices); slot++)
        {
            choices[slot] = Randomizer_GetFixedStarter(slot);
            ExpectHoennSpecies(choices[slot]);
            sawChangedStarter |= choices[slot] != normalStarters[slot];
            sawLegend |= gSpeciesInfo[choices[slot]].isLegendary || gSpeciesInfo[choices[slot]].isMythical;
            for (u32 previous = 0; previous < slot; previous++)
                EXPECT_NE(choices[slot], choices[previous]);
        }
    }
    EXPECT(sawChangedStarter);
    EXPECT(sawLegend);
}

TEST("Full Random starter species are stable per save and independent of wild encounter RNG or restrictions")
{
    u16 choices[3];
    u32 nextRandom;

    SetUpRandomizer(FALSE, TRUE);
    for (u32 byte = 0; byte < sizeof(gSaveBlock2Ptr->playerTrainerId); byte++)
        gSaveBlock2Ptr->playerTrainerId[byte] = 0x12345678 >> (byte * 8);
    for (u32 slot = 0; slot < ARRAY_COUNT(choices); slot++)
        choices[slot] = Randomizer_GetFixedStarter(slot);
    nextRandom = Random32();
    SeedRng(0x12345678);
    for (u32 slot = 0; slot < ARRAY_COUNT(choices); slot++)
        EXPECT_EQ(Randomizer_GetFixedStarter(slot), choices[slot]);
    EXPECT_EQ(Random32(), nextRandom);
    for (u32 mode = 0; mode < MAX_RANDOMIZER_SPECIES_MODE; mode++)
    {
        VarSet(RANDOMIZER_VAR_SPECIES_MODE, mode);
        for (u32 repeat = 0; repeat < 16; repeat++)
        {
            Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA);
            for (u32 slot = 0; slot < ARRAY_COUNT(choices); slot++)
                EXPECT_EQ(Randomizer_GetFixedStarter(slot), choices[slot]);
        }
    }
}

TEST("Full Random starter previews and rewards match each stable choice")
{
    SetUpRandomizer(FALSE, TRUE);
    for (u32 slot = 0; slot < 3; slot++)
    {
        u16 species = Randomizer_GetFixedStarter(slot);

        EXPECT_EQ(GetStarterPokemon(slot), species);
        EXPECT_EQ(Randomizer_GetRandomStarter(SPECIES_BULBASAUR, slot), species);
        ScriptGiveMon(GetStarterPokemon(slot), 5, ITEM_NONE);
        EXPECT_EQ(GetMonData(&gPlayerParty[slot], MON_DATA_SPECIES), species);
        EXPECT_EQ(GetMonData(&gPlayerParty[slot], MON_DATA_LEVEL), 5);
        EXPECT_EQ(GetStarterPokemon(slot), species);
    }
    EXPECT_EQ(GetStarterPokemon(3), GetStarterPokemon(0));
}

TEST("Starter mode changes do not retain a stale species preview and table mode keeps its existing choices")
{
    static const u16 normalStarters[] = {SPECIES_BULBASAUR, SPECIES_TOTODILE, SPECIES_TORCHIC};
    u16 tableChoices[ARRAY_COUNT(normalStarters)];

    SetUpRandomizer(FALSE, FALSE);
    FlagSet(RANDOMIZER_FLAG_TRAINER_MON);
    for (u32 slot = 0; slot < ARRAY_COUNT(normalStarters); slot++)
        EXPECT_EQ(GetStarterPokemon(slot), normalStarters[slot]);
    Randomizer_SetWildModes(TRUE, FALSE);
    for (u32 slot = 0; slot < ARRAY_COUNT(tableChoices); slot++)
    {
        tableChoices[slot] = Randomizer_GetFixedStarter(slot);
        EXPECT_EQ(GetStarterPokemon(slot), tableChoices[slot]);
    }
    Randomizer_SetWildModes(FALSE, TRUE);
    for (u32 slot = 0; slot < ARRAY_COUNT(normalStarters); slot++)
        EXPECT_EQ(GetStarterPokemon(slot), Randomizer_GetFixedStarter(slot));
    Randomizer_SetWildModes(TRUE, FALSE);
    // Malformed saves with both bits set must still preserve table mode.
    FlagSet(RANDOMIZER_FLAG_FULL_WILD_MON);
    for (u32 slot = 0; slot < ARRAY_COUNT(tableChoices); slot++)
    {
        EXPECT_EQ(Randomizer_GetFixedStarter(slot), tableChoices[slot]);
        EXPECT_EQ(GetStarterPokemon(slot), tableChoices[slot]);
    }
    Randomizer_SetWildModes(FALSE, FALSE);
    for (u32 slot = 0; slot < ARRAY_COUNT(normalStarters); slot++)
        EXPECT_EQ(GetStarterPokemon(slot), normalStarters[slot]);
}

TEST("Full Random does not randomize trainer teams or gifts")
{
    SetUpRandomizer(FALSE, TRUE);
    EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, 1, 0), SPECIES_POOCHYENA);
    ScriptGiveMon(SPECIES_CASTFORM, 30, ITEM_NONE);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), SPECIES_CASTFORM);
}

TEST("Full Random and table mode both display a message instead of starting a DexNav search")
{
    bool8 tables;

    PARAMETRIZE { tables = FALSE; }
    PARAMETRIZE { tables = TRUE; }
    SetUpRandomizer(tables, !tables);
    ScriptContext_Init();
    UnlockPlayerFieldControls();
    EXPECT_EQ(TryStartDexNavSearch(), TRUE);
    EXPECT_EQ(ScriptContext_IsEnabled(), TRUE);
    EXPECT_EQ(ArePlayerFieldControlsLocked(), TRUE);
    EXPECT_EQ(FlagGet(DN_FLAG_SEARCHING), FALSE);
    ScriptContext_Init();
    UnlockPlayerFieldControls();
}
