#include "global.h"
#include "battle_main.h"
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
#include "window.h"
#include "wild_encounter.h"
#include "constants/flags.h"
#include "constants/abilities.h"
#include "constants/battle.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/opponents.h"
#include "test/test.h"

static void SetUpChaos(void)
{
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    Randomizer_SetChaosMode(FALSE);
    Randomizer_SetChaosTrainersMode(FALSE);
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
    EXPECT_EQ(Debug_TestUtilitiesCount(), 22);
    EXPECT_EQ(Debug_TestChaosSubmenus(), TRUE);
    EXPECT_EQ(StringCompare(Debug_TestChaosLabel(FALSE), COMPOUND_STRING("Full Chaos Random: OFF")), 0);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosLabel(FALSE), 1) <= 19 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosLabel(TRUE), 1) <= 19 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosHardMessage(), 0) <= 208);
    EXPECT_EQ(StringCompare(Debug_TestChaosTrainersLabel(FALSE), COMPOUND_STRING("Chaos Random Trainers: OFF")), 0);
    EXPECT_EQ(StringCompare(Debug_TestChaosTrainersLabel(TRUE), COMPOUND_STRING("Chaos Random Trainers: ON")), 0);
    EXPECT(StringLength(Debug_TestChaosTrainersLabel(FALSE)) < 32);
    const u8 *utilitiesLabel = COMPOUND_STRING("Chaos Random Trainers…{CLEAR_TO 110}{RIGHT_ARROW}");
    EXPECT(StringLength(utilitiesLabel) < 32);
    EXPECT(GetStringWidth(FONT_NORMAL, utilitiesLabel, 1) <= 19 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosTrainersLabel(FALSE), 1) <= 26 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosTrainersLabel(TRUE), 1) <= 26 * 8 - 8);
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosTrainersHardMessage(), 0) <= 208);
    for (u32 trainers = 0; trainers <= 1; trainers++)
    {
        const u8 *description = Debug_TestChaosDescription(trainers);
        u32 lines = 1;
        EXPECT(GetStringWidth(FONT_NORMAL, description, 0) <= 26 * 8 - 8);
        for (const u8 *ch = description; *ch != EOS; ch++)
            lines += *ch == CHAR_NEWLINE;
        EXPECT_EQ(lines, trainers ? 6 : 5);
        EXPECT(48 + lines * 16 <= 18 * 8);
    }
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

static const struct WindowTemplate sChaosDescriptionTestWindows[] =
{
    {.bg = 0, .width = 26, .height = 18},
    {.bg = 0, .width = 26, .height = 18},
    DUMMY_WIN_TEMPLATE,
};

TEST("Full Chaos: both descriptions render completely below the toggle and survive redraw")
{
    bool8 trainers;
    PARAMETRIZE { trainers = FALSE; }
    PARAMETRIZE { trainers = TRUE; }
    const struct FontInfo *savedFonts = gFonts;
    SetDefaultFontsPointer();
    EXPECT(InitWindows(sChaosDescriptionTestWindows));
    FillWindowPixelBuffer(0, PIXEL_FILL(1));
    FillWindowPixelBuffer(1, PIXEL_FILL(1));
    Debug_TestDrawChaosDescription(0, trainers);
    AddTextPrinterParameterized(1, FONT_NORMAL, Debug_TestChaosDescription(trainers), 8, 48, TEXT_SKIP_DRAW, NULL);
    EXPECT_EQ(memcmp(gWindows[0].tileData, gWindows[1].tileData, 26 * 18 * 32), 0);
    // The toggle and Back occupy the first two text rows, not the description area.
    for (u32 i = 0; i < 26 * 6 * 32; i++)
        EXPECT_EQ(gWindows[0].tileData[i], PIXEL_FILL(1));
    for (u32 line = 0; line < (trainers ? 6 : 5); line++)
    {
        bool32 drawn = FALSE;
        for (u32 i = (6 + line * 2) * 26 * 32; i < (8 + line * 2) * 26 * 32; i++)
            drawn |= gWindows[0].tileData[i] != PIXEL_FILL(1);
        EXPECT_EQ(drawn, TRUE);
    }
    FillWindowPixelBuffer(0, PIXEL_FILL(1));
    Debug_TestDrawChaosDescription(0, trainers);
    EXPECT_EQ(memcmp(gWindows[0].tileData, gWindows[1].tileData, 26 * 18 * 32), 0);
    FreeAllWindowBuffers();
    gFonts = savedFonts;
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

TEST("Chaos Trainers: the existing trainer hook uses the full pool including legends independent of species mode")
{
    bool32 postHoenn = FALSE, legendary = FALSE, varied = FALSE;
    u16 first;
    SetUpChaos();
    Randomizer_SetChaosMode(FALSE);
    Randomizer_SetChaosTrainersMode(TRUE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), TRUE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), TRUE);
    EXPECT_EQ(Randomizer_FullWildEnabled(), FALSE);
    first = Randomizer_OnTrainerMon(SPECIES_POOCHYENA, 1, 0);
    for (u32 trainer = 1; trainer <= 256; trainer++)
    {
        u16 species = Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, trainer % PARTY_SIZE);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(species), TRUE);
        varied |= species != first;
        postHoenn |= SpeciesToNationalPokedexNum(species) > NATIONAL_DEX_DEOXYS;
        legendary |= gSpeciesInfo[species].isLegendary || gSpeciesInfo[species].isMythical;
        // Check every legacy mode on several keys without re-scanning the
        // entire 1,012-entry roster five times for all 256 sample trainers.
        // This keeps the function test below the GBA runner's time limit.
        for (u32 mode = 0; trainer <= 4 && mode < MAX_RANDOMIZER_SPECIES_MODE; mode++)
        {
            VarSet(RANDOMIZER_VAR_SPECIES_MODE, mode);
            EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, trainer % PARTY_SIZE), species);
        }
    }
    EXPECT_EQ(varied, TRUE);
    EXPECT_EQ(postHoenn, TRUE);
    EXPECT_EQ(legendary, TRUE);
    EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_NONE, 1, 0), SPECIES_NONE);
    EXPECT_EQ(Randomizer_OnTrainerMon(NUM_SPECIES, 1, 0), NUM_SPECIES);
    Randomizer_SetChaosTrainersMode(FALSE);
    EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, 1, 0), SPECIES_POOCHYENA);
}

TEST("Chaos Trainers: teams stay deterministic without consuming encounter RNG and both Chaos modes coexist")
{
    u16 choices[PARTY_SIZE];
    SetUpChaos();
    Randomizer_SetChaosTrainersMode(TRUE);
    u32 expected = Random32();
    SeedRng(0x12345678);
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        choices[slot] = Randomizer_OnTrainerMon(SPECIES_POOCHYENA, 17, slot);
    EXPECT_EQ(Random32(), expected);
    EXPECT_EQ(Randomizer_ChaosEnabled(), TRUE);
    for (u32 repeat = 0; repeat < 16; repeat++)
    {
        EXPECT_EQ(PokemonContent_IsChaosSpecies(Randomizer_OnFullWildEncounter(SPECIES_POOCHYENA)), TRUE);
        for (u32 slot = 0; slot < PARTY_SIZE; slot++)
            EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, 17, slot), choices[slot]);
    }
    Randomizer_SetChaosMode(FALSE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), TRUE);
    Randomizer_SetChaosMode(TRUE);
    Randomizer_SetChaosTrainersMode(FALSE);
    EXPECT_EQ(Randomizer_ChaosEnabled(), TRUE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), FALSE);
    Randomizer_SetChaosMode(FALSE);
}

TEST("Chaos Trainers: regional option replaces Chaos but unrelated Options saves and wild switches preserve it")
{
    SetUpChaos();
    Randomizer_SetTrainerMode(TRUE);
    EXPECT_EQ(Randomizer_ChaosEnabled(), TRUE);
    Randomizer_SetChaosTrainersMode(TRUE);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_TRAINER_MON), FALSE);
    Randomizer_SetWildModes(FALSE, FALSE);
    Randomizer_SetTrainerMode(FALSE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), TRUE);
    Randomizer_SetWildModes(TRUE, FALSE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), TRUE);
    Randomizer_SetTrainerMode(TRUE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), FALSE);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_CHAOS_TRAINERS), FALSE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), TRUE);
    Randomizer_SetChaosTrainersMode(TRUE);
    FlagSet(RANDOMIZER_FLAG_TRAINER_MON); // stale contradictory flags prefer the regional option
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), FALSE);
    Randomizer_Init(FALSE, TRUE, MON_RANDOM);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_CHAOS_TRAINERS), FALSE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), TRUE);
    Randomizer_SetTrainerMode(FALSE);
}

TEST("Chaos Trainers: Hard disables both modes prevents activation and does not restore them on Normal")
{
    bool8 selections[] = {FALSE,FALSE,FALSE}, canToggle[3];
    SetUpChaos();
    Randomizer_SetChaosTrainersMode(TRUE);
    OptionMenu_TestRandomizerRules(TRUE, 2, selections, canToggle);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_FULL_CHAOS), FALSE);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_CHAOS_TRAINERS), FALSE);
    OptionMenu_TestRandomizerRules(FALSE, 2, selections, canToggle);
    EXPECT_EQ(Randomizer_ChaosEnabled(), FALSE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_HARD;
    Randomizer_SetChaosTrainersMode(TRUE);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_CHAOS_TRAINERS), FALSE);
    FlagSet(FLAG_RANDOMIZER_CHAOS_TRAINERS);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), FALSE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), FALSE);
    EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, 1, 0), SPECIES_POOCHYENA);
    Randomizer_SetTrainerMode(TRUE);
    EXPECT_EQ(FlagGet(FLAG_RANDOMIZER_CHAOS_TRAINERS), FALSE);
    EXPECT_EQ(FlagGet(RANDOMIZER_FLAG_TRAINER_MON), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
}

static const struct TrainerMon sChaosTrainerParty[] =
{
    {.species = SPECIES_POOCHYENA, .lvl = 25, .heldItem = ITEM_ORAN_BERRY,
     .ability = ABILITY_RUN_AWAY, .moves = {MOVE_SPLASH}},
    {.species = SPECIES_POOCHYENA, .lvl = 30, .heldItem = ITEM_NONE,
     .ability = ABILITY_QUICK_FEET, .moves = {MOVE_SPLASH}},
    {.species = SPECIES_POOCHYENA, .lvl = 35, .heldItem = ITEM_SITRUS_BERRY,
     .ability = ABILITY_RATTLED, .moves = {MOVE_SPLASH}},
};

static const struct Trainer sChaosTrainer =
{
    .party = TRAINER_PARTY(sChaosTrainerParty),
};

TEST("Chaos Trainers: actual trainer teams preserve size levels items and generate valid moves abilities and stats")
{
    struct Pokemon reference;
    SetUpChaos();
    Randomizer_SetChaosMode(FALSE);
    Randomizer_SetChaosTrainersMode(TRUE);
    for (u32 trainer = 1; trainer <= 32; trainer++)
    {
        EXPECT_EQ(CreateNPCTrainerPartyFromTrainer(gEnemyParty, &sChaosTrainer, TRUE, BATTLE_TYPE_TRAINER, trainer), 3);
        for (u32 slot = 0; slot < ARRAY_COUNT(sChaosTrainerParty); slot++)
        {
            const struct TrainerMon *original = &sChaosTrainerParty[slot];
            u16 species = GetMonData(&gEnemyParty[slot], MON_DATA_SPECIES);
            EXPECT_EQ(species, Randomizer_OnTrainerMon(original->species, trainer, slot));
            EXPECT_EQ(PokemonContent_IsChaosSpecies(species), TRUE);
            EXPECT_EQ(GetMonData(&gEnemyParty[slot], MON_DATA_LEVEL), original->lvl);
            EXPECT_EQ(GetMonData(&gEnemyParty[slot], MON_DATA_HELD_ITEM), original->heldItem);
            EXPECT(GetMonData(&gEnemyParty[slot], MON_DATA_HP) > 0);
            EXPECT(GetMonAbility(&gEnemyParty[slot]) != ABILITY_NONE);
            if (species != original->species)
            {
                CreateMon(&reference, species, original->lvl, 0, FALSE, 0, OT_ID_RANDOM_NO_SHINY, 0);
                for (u32 move = 0; move < MAX_MON_MOVES; move++)
                    EXPECT_EQ(GetMonData(&gEnemyParty[slot], MON_DATA_MOVE1 + move), GetMonData(&reference, MON_DATA_MOVE1 + move));
            }
        }
    }
    // The existing two-opponent hook appends the second trainer without overwriting the first.
    EXPECT_EQ(CreateNPCTrainerPartyFromTrainer(gEnemyParty, &sChaosTrainer, TRUE,
        BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TWO_OPPONENTS, 1), 3);
    u16 first = GetMonData(&gEnemyParty[0], MON_DATA_SPECIES);
    EXPECT_EQ(CreateNPCTrainerPartyFromTrainer(&gEnemyParty[3], &sChaosTrainer, FALSE,
        BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TWO_OPPONENTS, 2), 3);
    EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_SPECIES), first);
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        EXPECT_EQ(PokemonContent_IsChaosSpecies(GetMonData(&gEnemyParty[slot], MON_DATA_SPECIES)), TRUE);
    Randomizer_SetChaosTrainersMode(FALSE);
}

static u16 ChaosTestBaseStatTotal(u16 species)
{
    const struct SpeciesInfo *info = &gSpeciesInfo[species];
    return info->baseHP + info->baseAttack + info->baseDefense
        + info->baseSpAttack + info->baseSpDefense + info->baseSpeed;
}

TEST("Chaos League: both BST cutoffs contain exactly the eligible species and include the boundary")
{
    u16 minimum;
    PARAMETRIZE { minimum = 500; }
    PARAMETRIZE { minimum = 550; }
    u16 expected = 0, previous = SPECIES_NONE;
    bool32 includesBoundary = FALSE;
    for (u32 species = 1; species < NUM_SPECIES; species++)
        expected += PokemonContent_IsChaosSpecies(species) && ChaosTestBaseStatTotal(species) >= minimum;
    u16 count = PokemonContent_ChaosCountWithMinBST(minimum);
    EXPECT_EQ(count, expected);
    EXPECT(count > PARTY_SIZE);
    EXPECT(count < PokemonContent_ChaosCount());
    for (u32 i = 0; i < count; i++)
    {
        u16 species = PokemonContent_ChaosSpeciesAtWithMinBST(i, minimum);
        EXPECT(species > previous);
        EXPECT_EQ(PokemonContent_IsChaosSpecies(species), TRUE);
        EXPECT(ChaosTestBaseStatTotal(species) >= minimum);
        includesBoundary |= ChaosTestBaseStatTotal(species) == minimum;
        previous = species;
    }
    EXPECT_EQ(includesBoundary, TRUE);
    EXPECT_EQ(PokemonContent_ChaosSpeciesAtWithMinBST(count, minimum), SPECIES_NONE);
    EXPECT_EQ(PokemonContent_ChaosCountWithMinBST(0), PokemonContent_ChaosCount());
    EXPECT_EQ(PokemonContent_ChaosCountWithMinBST(0xFFFF), 0);
    EXPECT_EQ(PokemonContent_ChaosSpeciesAtWithMinBST(0, 0xFFFF), SPECIES_NONE);
}

static u16 LeagueTestMinimumBST(u16 trainer)
{
    switch (trainer)
    {
    case TRAINER_WALLACE:
    case TRAINER_STELLA_HARD_DOUBLES_TROOM:
    case TRAINER_STELLA_HARD_HO_TAILWIND:
    case TRAINER_STELLA_HARD_BALANCE_HAZZARDS:
        return 550;
    default:
        return 500;
    }
}

TEST("League randomizers: both modes enforce Elite Four BST 500 and Champion BST 550 on every battle ID")
{
    u16 trainer;
    PARAMETRIZE { trainer = TRAINER_SIDNEY; }
    PARAMETRIZE { trainer = TRAINER_PHOEBE; }
    PARAMETRIZE { trainer = TRAINER_GLACIA; }
    PARAMETRIZE { trainer = TRAINER_DRAKE; }
    PARAMETRIZE { trainer = TRAINER_WALLACE; }
    PARAMETRIZE { trainer = TRAINER_TSUBAKI_HARD_DOUBLES; }
    PARAMETRIZE { trainer = TRAINER_TSUBAKI_HARD_SINGLES; }
    PARAMETRIZE { trainer = TRAINER_PHOEBE_HARD_DOUBLES; }
    PARAMETRIZE { trainer = TRAINER_PHOEBE_HARD_SINGLES; }
    PARAMETRIZE { trainer = TRAINER_SARK_HARD_DOUBLES; }
    PARAMETRIZE { trainer = TRAINER_SARK_HARD_SINGLES; }
    PARAMETRIZE { trainer = TRAINER_DAEMON_HARD_DOUBLES; }
    PARAMETRIZE { trainer = TRAINER_DAEMON_HARD_SINGLES; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_DOUBLES_TROOM; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_HO_TAILWIND; }
    PARAMETRIZE { trainer = TRAINER_STELLA_HARD_BALANCE_HAZZARDS; }
    u16 minimum = LeagueTestMinimumBST(trainer);
    for (u32 chaos = 0; chaos <= 1; chaos++)
    {
        SetUpChaos();
        VarSet(RANDOMIZER_VAR_SPECIES_MODE, MON_RANDOM);
        if (chaos)
            Randomizer_SetChaosTrainersMode(TRUE);
        else
            Randomizer_SetTrainerMode(TRUE);
        u32 expectedRng = Random32();
        SeedRng(0x12345678);
        for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        {
            u16 species = Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, slot);
            EXPECT_EQ(PokemonContent_CanGive(species), TRUE);
            if (chaos) EXPECT_EQ(PokemonContent_IsChaosSpecies(species), TRUE);
            EXPECT(ChaosTestBaseStatTotal(species) >= minimum);
            EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, slot), species);
        }
        EXPECT_EQ(Random32(), expectedRng);
        EXPECT_EQ(Randomizer_ChaosEnabled(), TRUE);
        // The rule goes through the actual trainer-party builder in both modes.
        EXPECT_EQ(CreateNPCTrainerPartyFromTrainer(gEnemyParty, &sChaosTrainer, TRUE, BATTLE_TYPE_TRAINER, trainer), 3);
        for (u32 slot = 0; slot < ARRAY_COUNT(sChaosTrainerParty); slot++)
        {
            u16 species = GetMonData(&gEnemyParty[slot], MON_DATA_SPECIES);
            EXPECT(ChaosTestBaseStatTotal(species) >= minimum);
            EXPECT_EQ(GetMonData(&gEnemyParty[slot], MON_DATA_LEVEL), sChaosTrainerParty[slot].lvl);
            EXPECT_EQ(GetMonData(&gEnemyParty[slot], MON_DATA_HELD_ITEM), sChaosTrainerParty[slot].heldItem);
            EXPECT(GetMonAbility(&gEnemyParty[slot]) != ABILITY_NONE);
        }
        Randomizer_SetChaosTrainersMode(FALSE);
        Randomizer_SetTrainerMode(FALSE);
        EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, 0), SPECIES_POOCHYENA);
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_HARD;
        Randomizer_SetChaosTrainersMode(TRUE);
        Randomizer_SetTrainerMode(TRUE);
        EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, 0), SPECIES_POOCHYENA);
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
        Randomizer_SetChaosMode(FALSE);
    }
}

TEST("Chaos League: other trainers gym leaders and earlier character encounters keep their existing full-pool draws")
{
    u16 trainer;
    PARAMETRIZE { trainer = TRAINER_SAWYER_1; }
    PARAMETRIZE { trainer = TRAINER_NORMAN_1; }
    PARAMETRIZE { trainer = TRAINER_TSUBAKI_HARD; }
    PARAMETRIZE { trainer = TRAINER_STEVEN; }
    SetUpChaos();
    Randomizer_SetChaosTrainersMode(TRUE);
    u16 count = PokemonContent_ChaosCount();
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
    {
        // Reference the established unfiltered trainer draw, so adding the
        // League rule must not change any of these seeded species choices.
        u32 state = Randomizer_GetSeed() ^ RZ_CTX_TRAINER_MON
            ^ ((u32)trainer << 8 | slot) ^ SPECIES_POOCHYENA;
        state ^= state >> 16;
        state *= 0x45d9f3b;
        state ^= state >> 16;
        state *= 0x45d9f3b;
        state ^= state >> 16;
        if (state == 0) state = 1;
        state ^= state << 13;
        state ^= state >> 17;
        state ^= state << 5;
        u16 expected = PokemonContent_ChaosSpeciesAt((u64)state * count >> 32);
        EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, slot), expected);
    }
    Randomizer_SetChaosTrainersMode(FALSE);
    Randomizer_SetTrainerMode(TRUE);
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
    {
        // Matching seed/context xor makes this the original regional draw,
        // with no League cutoff in the wild/table context.
        u32 key = ((u32)trainer << 8 | slot) ^ RZ_CTX_TRAINER_MON ^ RZ_CTX_WILD_ENCOUNTER;
        u16 expected = Randomizer_GetSpecies(SPECIES_POOCHYENA, RZ_CTX_WILD_ENCOUNTER, key);
        EXPECT_EQ(Randomizer_OnTrainerMon(SPECIES_POOCHYENA, trainer, slot), expected);
    }
    Randomizer_SetTrainerMode(FALSE);
    Randomizer_SetChaosMode(FALSE);
}

TEST("Chaos League: BST 500 materially expands the pool beyond 550 and retains nonlegendary Pokemon")
{
    u16 count500 = 0, count550 = 0, normal500 = 0, normal550 = 0;
    for (u32 species = 1; species < NUM_SPECIES; species++)
    {
        if (!PokemonContent_IsChaosSpecies(species)) continue;
        bool32 normal = !gSpeciesInfo[species].isLegendary && !gSpeciesInfo[species].isMythical;
        if (ChaosTestBaseStatTotal(species) >= 500)
        {
            count500++;
            normal500 += normal;
        }
        if (ChaosTestBaseStatTotal(species) >= 550)
        {
            count550++;
            normal550 += normal;
        }
    }
    EXPECT_EQ(count500, PokemonContent_ChaosCountWithMinBST(500));
    EXPECT_EQ(count550, PokemonContent_ChaosCountWithMinBST(550));
    EXPECT(count500 > count550);
    EXPECT(normal500 > normal550);
    Test_MgbaPrintf("Chaos pool BST 500+: %d (%d nonlegendary); BST 550+: %d (%d nonlegendary)\n",
        count500, normal500, count550, normal550);
}
