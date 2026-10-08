#include "global.h"
#include "debug.h"
#include "event_data.h"
#include "option_menu.h"
#include "pokemon.h"
#include "pokemon_content.h"
#include "random.h"
#include "randomizer.h"
#include "script_pokemon_util.h"
#include "string_util.h"
#include "text.h"
#include "wild_encounter.h"
#include "constants/flags.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "test/test.h"

static void SetUpChaos(void)
{
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    Randomizer_SetChaosMode(FALSE);
    Randomizer_SetWildModes(FALSE, FALSE);
    FlagClear(RANDOMIZER_FLAG_TRAINER_MON);
    ZeroPlayerPartyMons();
    ZeroEnemyPartyMons();
    gPlayerPartyCount = 0;
    SeedRng(0x12345678);
    Randomizer_SetChaosMode(TRUE);
}

TEST("Full Chaos: Utilities text fits its window and the additional entry remains reachable")
{
    EXPECT_EQ(Debug_TestUtilitiesCount(), 21);
    EXPECT_EQ(StringCompare(Debug_TestChaosLabel(FALSE), COMPOUND_STRING("Full Chaos Random: OFF")), 0);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosLabel(FALSE), 1) <= 19 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosLabel(TRUE), 1) <= 19 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosHardMessage(), 0) <= 208);
}

TEST("Full Chaos: every filler and its alternate forms are blocked in Give and random pools")
{
    u32 baseFillers = 0;
    for (u32 species = 1; species < NUM_SPECIES; species++)
    {
        if (!PokemonContent_IsFiller(species)) continue;
        baseFillers += GET_BASE_SPECIES_ID(species) == species;
        EXPECT_EQ(PokemonContent_CanGive(species), FALSE);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(species), FALSE);
        EXPECT_EQ(PokemonContent_CanGive(PokemonContent_NextGiveSpecies(species, FALSE)), TRUE);
        EXPECT_EQ(PokemonContent_CanGive(PokemonContent_NextGiveSpecies(species, TRUE)), TRUE);
    }
    EXPECT_EQ(baseFillers, 68);
    EXPECT_EQ(PokemonContent_CanGive(SPECIES_COALOSSAL_GMAX), FALSE);
    EXPECT_EQ(PokemonContent_CanGive(SPECIES_COPPERAJAH_GMAX), FALSE);
    EXPECT_EQ(PokemonContent_CanGive(SPECIES_NONE), FALSE);
    EXPECT_EQ(PokemonContent_CanGive(SPECIES_EGG), FALSE);
    EXPECT_EQ(PokemonContent_CanGive(NUM_SPECIES), FALSE);
    EXPECT_EQ(PokemonContent_CanGive(0xFFFF), FALSE);
}

TEST("Full Chaos: every generation legends restored Pokemon Wish forms and shadows are eligible")
{
    static const u16 ordinary[] =
    {
        SPECIES_CHARIZARD, SPECIES_LUGIA, SPECIES_RAYQUAZA, SPECIES_DARKRAI,
        SPECIES_VOLCARONA, SPECIES_DRUDDIGON, SPECIES_VIRIZION, SPECIES_BIBAREL,
        SPECIES_DUCKLETT, SPECIES_ESCAVALIER, SPECIES_SWANNA, SPECIES_PRIMARINA,
        SPECIES_RESHIRAM, SPECIES_XERNEAS, SPECIES_SOLGALEO, SPECIES_ZACIAN,
        SPECIES_MIRAIDON, SPECIES_PECHARUNT, SPECIES_RAICHU_ALOLA,
        SPECIES_PONYTA_GALAR, SPECIES_GROWLITHE_HISUI, SPECIES_TAUROS_PALDEA_AQUA,
        SPECIES_AVALUGG_HISUI,
        SPECIES_DACHSBUN, SPECIES_ARBOLIVA, SPECIES_PAWMOT, SPECIES_WIGLETT,
        SPECIES_SCOVILLAIN, SPECIES_NICKIT, SPECIES_CLOBBOPUS, SPECIES_GRAPPLOCT,
    };
    for (u32 i = 0; i < ARRAY_COUNT(ordinary); i++)
    {
        EXPECT_EQ(PokemonContent_IsFiller(ordinary[i]), FALSE);
        EXPECT_EQ(PokemonContent_CanGive(ordinary[i]), TRUE);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(ordinary[i]), TRUE);
    }
}

TEST("Full Chaos: conditional battle weather held-item and fusion forms never enter the pool")
{
    static const u16 conditional[] =
    {
        SPECIES_CHARIZARD_MEGA_X, SPECIES_KYOGRE_PRIMAL, SPECIES_GROUDON_PRIMAL,
        SPECIES_CASTFORM_SUNNY, SPECIES_CASTFORM_RAINY, SPECIES_CASTFORM_SNOWY,
        SPECIES_DARMANITAN_GALAR_ZEN, SPECIES_WISHIWASHI_SCHOOL,
        SPECIES_PALAFIN_HERO, SPECIES_ZYGARDE_COMPLETE, SPECIES_KYUREM_BLACK,
        SPECIES_KYUREM_WHITE, SPECIES_CALYREX_ICE, SPECIES_CALYREX_SHADOW,
        SPECIES_NECROZMA_DUSK_MANE, SPECIES_NECROZMA_ULTRA,
        SPECIES_ZACIAN_CROWNED, SPECIES_TERAPAGOS_STELLAR,
    };
    for (u32 i = 0; i < ARRAY_COUNT(conditional); i++)
        EXPECT_EQ(PokemonContent_IsChaosSpecies(conditional[i]), FALSE);
}

TEST("Full Chaos: the complete pool is sorted unique enabled and contains no fillers")
{
    u16 count = PokemonContent_ChaosCount();
    u16 previous = SPECIES_NONE;
    EXPECT_EQ(count, 1012);
    for (u32 i = 0; i < count; i++)
    {
        u16 species = PokemonContent_ChaosSpeciesAt(i);
        EXPECT(species > previous);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(species), TRUE);
        previous = species;
    }
    EXPECT_EQ(PokemonContent_ChaosSpeciesAt(count), SPECIES_NONE);
}

TEST("Full Chaos: rerolls all encounter slots and reaches post-Hoenn species and legends")
{
    bool32 outsideDex = FALSE, legendary = FALSE;
    u16 first = SPECIES_NONE;
    bool32 varied = FALSE;
    SetUpChaos();
    for (u32 i = 0; i < 256; i++)
    {
        u16 species = Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(species), TRUE);
        outsideDex |= SpeciesToHoennPokedexNum(species) == 0
            || SpeciesToHoennPokedexNum(species) >= HOENN_DEX_COUNT;
        legendary |= gSpeciesInfo[species].isLegendary || gSpeciesInfo[species].isMythical;
        if (i == 0) first = species;
        varied |= species != first;
    }
    EXPECT_EQ(outsideDex, TRUE);
    EXPECT_EQ(legendary, TRUE);
    EXPECT_EQ(varied, TRUE);
    Randomizer_SetChaosMode(FALSE);
}

TEST("Full Chaos: wild scripted single and double battles keep levels items and valid data")
{
    SetUpChaos();
    CreateWildMon(SPECIES_POOCHYENA, 37);
    EXPECT_EQ(PokemonContent_IsChaosSpecies(GetMonData(&gEnemyParty[0], MON_DATA_SPECIES)), TRUE);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_LEVEL), 37);
    CreateScriptedDoubleWildMon(SPECIES_RATTATA, 23, ITEM_ORAN_BERRY, SPECIES_POOCHYENA, 42, ITEM_SITRUS_BERRY);
    for (u32 i = 0; i < 2; i++)
    {
        EXPECT_EQ(PokemonContent_IsChaosSpecies(GetMonData(&gEnemyParty[i], MON_DATA_SPECIES)), TRUE);
        EXPECT(GetMonData(&gEnemyParty[i], MON_DATA_HP) > 0);
    }
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_LEVEL), 23);
    EXPECT_EQ(GetMonData(&gEnemyParty[1], MON_DATA_LEVEL), 42);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HELD_ITEM), ITEM_ORAN_BERRY);
    EXPECT_EQ(GetMonData(&gEnemyParty[1], MON_DATA_HELD_ITEM), ITEM_SITRUS_BERRY);
    Randomizer_SetChaosMode(FALSE);
}

TEST("Full Chaos: starters are valid distinct repeatable and do not consume encounter RNG")
{
    u16 choices[3];
    SetUpChaos();
    u32 expected = Random32();
    SeedRng(0x12345678);
    for (u32 i = 0; i < 3; i++)
    {
        choices[i] = Randomizer_GetFixedStarter(i);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(choices[i]), TRUE);
        EXPECT_EQ(Randomizer_GetFixedStarter(i), choices[i]);
    }
    EXPECT_NE(choices[0], choices[1]);
    EXPECT_NE(choices[0], choices[2]);
    EXPECT_NE(choices[1], choices[2]);
    EXPECT_EQ(Random32(), expected);
    Randomizer_SetChaosMode(FALSE);
}

TEST("Full Chaos: mode switches preserve exclusivity and ordinary Options saves do not erase Chaos")
{
    SetUpChaos();
    EXPECT_EQ(Randomizer_ChaosEnabled(), TRUE);
    EXPECT_EQ(Randomizer_FullWildEnabled(), TRUE);
    EXPECT_EQ(Randomizer_WildEnabled(), FALSE);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_FULL_WILD_MON), FALSE);
    Randomizer_SetWildModes(FALSE, FALSE);
    EXPECT_EQ(Randomizer_ChaosEnabled(), TRUE);
    Randomizer_SetWildModes(FALSE, TRUE);
    EXPECT_EQ(Randomizer_ChaosEnabled(), FALSE);
    Randomizer_SetChaosMode(TRUE);
    Randomizer_SetWildModes(TRUE, FALSE);
    EXPECT_EQ(Randomizer_ChaosEnabled(), FALSE);
    EXPECT_EQ(Randomizer_WildEnabled(), TRUE);
    Randomizer_SetChaosMode(TRUE);
    EXPECT_EQ(Randomizer_WildEnabled(), FALSE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), FALSE);
    Randomizer_SetChaosMode(FALSE);
}

TEST("Full Chaos: Hard blocks activation disables saved Chaos and never restores it on Normal")
{
    bool8 selections[] = {FALSE,FALSE,FALSE}, canToggle[3];
    SetUpChaos();
    OptionMenu_TestRandomizerRules(TRUE, 0, selections, canToggle);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_FULL_CHAOS), FALSE);
    OptionMenu_TestRandomizerRules(FALSE, 0, selections, canToggle);
    EXPECT_EQ(Randomizer_ChaosEnabled(), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_HARD;
    Randomizer_SetChaosMode(TRUE);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_FULL_CHAOS), FALSE);
    FlagSet(FLAG_RANDOMIZER_FULL_CHAOS); // malformed older save/debug flag
    EXPECT_EQ(Randomizer_FullWildEnabled(), FALSE);
    SeedRng(0x12345678);
    u32 expected = Random32();
    SeedRng(0x12345678);
    EXPECT_EQ(Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA), SPECIES_POOCHYENA);
    EXPECT_EQ(Random32(), expected);
    Randomizer_SetChaosMode(FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
}
