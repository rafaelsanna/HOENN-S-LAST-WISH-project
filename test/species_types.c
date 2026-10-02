#include "global.h"
#include "battle.h"
#include "pokemon.h"
#include "test/test.h"

TEST("Dunsparce and both Dudunsparce forms are Ground/Flying in species data and battle")
{
    u16 species;
    struct Pokemon mon;
    struct BattlePokemon battler;

    PARAMETRIZE { species = SPECIES_DUNSPARCE; }
    PARAMETRIZE { species = SPECIES_DUDUNSPARCE_TWO_SEGMENT; }
    PARAMETRIZE { species = SPECIES_DUDUNSPARCE_THREE_SEGMENT; }

    EXPECT_EQ(gSpeciesInfo[species].types[0], TYPE_GROUND);
    EXPECT_EQ(gSpeciesInfo[species].types[1], TYPE_FLYING);
    EXPECT_EQ(GetSpeciesType(species, 0), TYPE_GROUND);
    EXPECT_EQ(GetSpeciesType(species, 1), TYPE_FLYING);

    CreateMon(&mon, species, 40, 26, TRUE, 100, OT_ID_PLAYER_ID, 0);
    PokemonToBattleMon(&mon, &battler);
    EXPECT_EQ(battler.types[0], TYPE_GROUND);
    EXPECT_EQ(battler.types[1], TYPE_FLYING);
}

TEST("Stantler is Normal/Grass and Wyrdeer is Psychic/Grass in species data and battle")
{
    u16 species;
    u8 primaryType;
    struct Pokemon mon;
    struct BattlePokemon battler;

    PARAMETRIZE { species = SPECIES_STANTLER; primaryType = TYPE_NORMAL; }
    PARAMETRIZE { species = SPECIES_WYRDEER; primaryType = TYPE_PSYCHIC; }

    EXPECT_EQ(gSpeciesInfo[species].types[0], primaryType);
    EXPECT_EQ(gSpeciesInfo[species].types[1], TYPE_GRASS);
    EXPECT_EQ(GetSpeciesType(species, 0), primaryType);
    EXPECT_EQ(GetSpeciesType(species, 1), TYPE_GRASS);

    CreateMon(&mon, species, 40, 26, TRUE, 100, OT_ID_PLAYER_ID, 0);
    PokemonToBattleMon(&mon, &battler);
    EXPECT_EQ(battler.types[0], primaryType);
    EXPECT_EQ(battler.types[1], TYPE_GRASS);
}
