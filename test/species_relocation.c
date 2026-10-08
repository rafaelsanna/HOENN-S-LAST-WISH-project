#include "global.h"
#include "achievements.h"
#include "event_data.h"
#include "pokemon.h"
#include "species_relocation.h"
#include "string_util.h"
#include "constants/event_objects.h"
#include "constants/flags.h"
#include "constants/moves.h"
#include "constants/pokedex.h"
#include "test/test.h"

static const struct
{
    u16 oldSpecies, newSpecies;
    const u8 name[POKEMON_NAME_LENGTH + 1];
    const u8 nativeName[POKEMON_NAME_LENGTH + 1];
    u8 hp, attack, defense, speed, spAttack, spDefense;
    u8 type1, type2;
} sForms[] =
{
    {SPECIES_DARKRAI, SPECIES_DACHSBUN, _("Howlyena"), _("Darkrai"), 100,110,80,90,60,80, TYPE_DARK,TYPE_DARK},
    {SPECIES_VOLCARONA, SPECIES_ARBOLIVA, _("Vesperain"), _("Volcarona"), 80,60,62,110,110,82, TYPE_BUG,TYPE_FLYING},
    {SPECIES_DRUDDIGON, SPECIES_PAWMOT, _("Dragonami"), _("Druddigon"), 91,105,100,75,134,95, TYPE_DRAGON,TYPE_WATER},
    {SPECIES_VIRIZION, SPECIES_WIGLETT, _("Mandraloom"), _("Virizion"), 60,130,60,70,60,80, TYPE_POISON,TYPE_FAIRY},
    {SPECIES_BIBAREL, SPECIES_SCOVILLAIN, _("Ratybara"), _("Bibarel"), 95,91,90,60,50,97, TYPE_GRASS,TYPE_WATER},
    {SPECIES_DUCKLETT, SPECIES_NICKIT, _("Jirachi"), _("Ducklett"), 110,110,110,110,110,110, TYPE_STEEL,TYPE_GHOST},
    {SPECIES_ESCAVALIER, SPECIES_CLOBBOPUS, _("Celebi"), _("Escavalier"), 110,110,110,110,110,110, TYPE_DARK,TYPE_FAIRY},
    {SPECIES_SWANNA, SPECIES_GRAPPLOCT, _("Suicune"), _("Swanna"), 100,40,115,115,120,115, TYPE_DARK,TYPE_FAIRY},
};

static const u16 sExpectedTeachable0[] = {
    MOVE_ATTRACT,
    MOVE_BODY_SLAM,
    MOVE_COUNTER,
    MOVE_DARK_PULSE,
    MOVE_DIG,
    MOVE_DOUBLE_EDGE,
    MOVE_DOUBLE_TEAM,
    MOVE_ENDURE,
    MOVE_FOUL_PLAY,
    MOVE_HYPER_BEAM,
    MOVE_IRON_TAIL,
    MOVE_MUD_SLAP,
    MOVE_PLAY_ROUGH,
    MOVE_PROTECT,
    MOVE_PSYCH_UP,
    MOVE_RAIN_DANCE,
    MOVE_REST,
    MOVE_ROAR,
    MOVE_ROCK_SMASH,
    MOVE_SHADOW_BALL,
    MOVE_SLEEP_TALK,
    MOVE_SNATCH,
    MOVE_SNORE,
    MOVE_STRENGTH,
    MOVE_SUNNY_DAY,
    MOVE_SWAGGER,
    MOVE_TAUNT,
    MOVE_THIEF,
    MOVE_TORMENT,
    MOVE_TOXIC,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable1[] = {
    MOVE_ACROBATICS,
    MOVE_ATTRACT,
    MOVE_BODY_SLAM,
    MOVE_CUT,
    MOVE_DOUBLE_EDGE,
    MOVE_ENDURE,
    MOVE_FLIP_TURN,
    MOVE_FLY,
    MOVE_GIGA_DRAIN,
    MOVE_HYPER_BEAM,
    MOVE_LIGHT_SCREEN,
    MOVE_POISON_JAB,
    MOVE_PROTECT,
    MOVE_PSYCHIC,
    MOVE_RAIN_DANCE,
    MOVE_REST,
    MOVE_SAFEGUARD,
    MOVE_SLEEP_TALK,
    MOVE_SNORE,
    MOVE_SOLAR_BEAM,
    MOVE_SUNNY_DAY,
    MOVE_U_TURN,
    MOVE_WILL_O_WISP,
    MOVE_X_SCISSOR,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable2[] = {
    MOVE_ATTRACT,
    MOVE_BLIZZARD,
    MOVE_BODY_SLAM,
    MOVE_DARK_PULSE,
    MOVE_DIG,
    MOVE_DIVE,
    MOVE_DRAGON_CLAW,
    MOVE_DRAGON_PULSE,
    MOVE_DRAGON_TAIL,
    MOVE_EARTHQUAKE,
    MOVE_ENDURE,
    MOVE_FIRE_PUNCH,
    MOVE_FLAMETHROWER,
    MOVE_FLASH_CANNON,
    MOVE_FLIP_TURN,
    MOVE_FREEZE_DRY,
    MOVE_HAIL,
    MOVE_HAZE,
    MOVE_HYPER_BEAM,
    MOVE_ICE_BEAM,
    MOVE_ICE_PUNCH,
    MOVE_IRON_TAIL,
    MOVE_MEGA_PUNCH,
    MOVE_PROTECT,
    MOVE_RAIN_DANCE,
    MOVE_REST,
    MOVE_ROCK_SLIDE,
    MOVE_SAFEGUARD,
    MOVE_SHADOW_CLAW,
    MOVE_SLASH,
    MOVE_SLEEP_TALK,
    MOVE_SLUDGE_BOMB,
    MOVE_SNORE,
    MOVE_STEALTH_ROCK,
    MOVE_SUNNY_DAY,
    MOVE_SURF,
    MOVE_TAUNT,
    MOVE_THUNDER_PUNCH,
    MOVE_THUNDER_WAVE,
    MOVE_WATERFALL,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable3[] = {
    MOVE_AURA_SPHERE,
    MOVE_BODY_SLAM,
    MOVE_BRICK_BREAK,
    MOVE_BULLET_SEED,
    MOVE_DAZZLING_GLEAM,
    MOVE_DOUBLE_EDGE,
    MOVE_ENDURE,
    MOVE_GIGA_DRAIN,
    MOVE_HYPER_BEAM,
    MOVE_LIGHT_SCREEN,
    MOVE_PLAY_ROUGH,
    MOVE_POISON_JAB,
    MOVE_PROTECT,
    MOVE_PSYCH_UP,
    MOVE_REFLECT,
    MOVE_REST,
    MOVE_ROAR,
    MOVE_SAFEGUARD,
    MOVE_SLEEP_TALK,
    MOVE_SLUDGE_BOMB,
    MOVE_SNORE,
    MOVE_SOLAR_BEAM,
    MOVE_SUNNY_DAY,
    MOVE_SWIFT,
    MOVE_SWORDS_DANCE,
    MOVE_TAUNT,
    MOVE_TOXIC,
    MOVE_X_SCISSOR,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable4[] = {
    MOVE_BLIZZARD,
    MOVE_BULLET_SEED,
    MOVE_DIVE,
    MOVE_FLIP_TURN,
    MOVE_FREEZE_DRY,
    MOVE_GIGA_DRAIN,
    MOVE_HAIL,
    MOVE_ICE_BEAM,
    MOVE_ICE_PUNCH,
    MOVE_KNOCK_OFF,
    MOVE_RAIN_DANCE,
    MOVE_SOLAR_BEAM,
    MOVE_SURF,
    MOVE_WATERFALL,
    MOVE_WOOD_HAMMER,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable5[] = {
    MOVE_DIVE,
    MOVE_DOUBLE_EDGE,
    MOVE_ENDURE,
    MOVE_FLY,
    MOVE_ICE_BEAM,
    MOVE_ICY_WIND,
    MOVE_PROTECT,
    MOVE_RAIN_DANCE,
    MOVE_REST,
    MOVE_SLEEP_TALK,
    MOVE_STEEL_WING,
    MOVE_SURF,
    MOVE_SWIFT,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable6[] = {
    MOVE_ATTRACT,
    MOVE_COUNTER,
    MOVE_DOUBLE_EDGE,
    MOVE_ENDURE,
    MOVE_FURY_CUTTER,
    MOVE_GIGA_DRAIN,
    MOVE_HYPER_BEAM,
    MOVE_KNOCK_OFF,
    MOVE_POISON_JAB,
    MOVE_PROTECT,
    MOVE_RAIN_DANCE,
    MOVE_REST,
    MOVE_SLASH,
    MOVE_SLEEP_TALK,
    MOVE_SNORE,
    MOVE_SWORDS_DANCE,
    MOVE_TAUNT,
    MOVE_X_SCISSOR,
    MOVE_UNAVAILABLE,
};

static const u16 sExpectedTeachable7[] = {
    MOVE_ACROBATICS,
    MOVE_DIVE,
    MOVE_DOUBLE_EDGE,
    MOVE_ENDURE,
    MOVE_FLIP_TURN,
    MOVE_FLY,
    MOVE_HYPER_BEAM,
    MOVE_ICE_BEAM,
    MOVE_ICY_WIND,
    MOVE_KNOCK_OFF,
    MOVE_PROTECT,
    MOVE_RAIN_DANCE,
    MOVE_REST,
    MOVE_SLEEP_TALK,
    MOVE_STEEL_WING,
    MOVE_SURF,
    MOVE_SWIFT,
    MOVE_UNAVAILABLE,
};

static const u16 *const sExpectedTeachables[] = {
    sExpectedTeachable0,
    sExpectedTeachable1,
    sExpectedTeachable2,
    sExpectedTeachable3,
    sExpectedTeachable4,
    sExpectedTeachable5,
    sExpectedTeachable6,
    sExpectedTeachable7,
};

TEST("Species relocation: custom names stats types and overworld frames stay intact")
{
    u32 index = 0;
    for (u32 i = 0; i < ARRAY_COUNT(sForms); i++)
        PARAMETRIZE { index = i; }
    const struct SpeciesInfo *info = &gSpeciesInfo[sForms[index].newSpecies];
    EXPECT_EQ(StringCompare(info->speciesName, sForms[index].name), 0);
    EXPECT_EQ(info->baseHP, sForms[index].hp);
    EXPECT_EQ(info->baseAttack, sForms[index].attack);
    EXPECT_EQ(info->baseDefense, sForms[index].defense);
    EXPECT_EQ(info->baseSpeed, sForms[index].speed);
    EXPECT_EQ(info->baseSpAttack, sForms[index].spAttack);
    EXPECT_EQ(info->baseSpDefense, sForms[index].spDefense);
    EXPECT_EQ(info->types[0], sForms[index].type1);
    EXPECT_EQ(info->types[1], sForms[index].type2);
    EXPECT_EQ(info->overworldData.width, 32);
    EXPECT_EQ(info->overworldData.height, 32);
    // Following sprites encode one relative-frame descriptor, not six array
    // entries. The animation selects offsets within the six-frame sheet.
    EXPECT_EQ(info->overworldData.images[0].size, 512);
    EXPECT_EQ(info->overworldData.images[0].relativeFrames, TRUE);
    EXPECT(info->frontPic != NULL);
    EXPECT(info->backPic != NULL);
    EXPECT(info->palette != NULL);
    EXPECT(info->shinyPalette != NULL);
    EXPECT_EQ(HlwSpecies_GetCurrentSpecies(sForms[index].oldSpecies), sForms[index].newSpecies);
    EXPECT_EQ(HlwSpecies_GetCurrentSpecies(sForms[index].newSpecies), sForms[index].newSpecies);
    EXPECT_EQ(StringCompare(gSpeciesInfo[sForms[index].oldSpecies].speciesName, sForms[index].nativeName), 0);
    EXPECT_EQ(ShadowPokemon_GetIdForSpecies(sForms[index].oldSpecies), SHADOW_ID_NONE);
    EXPECT_EQ(WishForm_GetIdForSpecies(sForms[index].oldSpecies), WISH_FORM_ID_NONE);
}

TEST("Species relocation: generated TM tutor lists retain all eight custom move sets")
{
    u32 index = 0;
    for (u32 i = 0; i < ARRAY_COUNT(sForms); i++)
        PARAMETRIZE { index = i; }
    const u16 *actual = gSpeciesInfo[sForms[index].newSpecies].teachableLearnset;
    const u16 *expected = sExpectedTeachables[index];
    for (u32 i = 0; ; i++)
    {
        EXPECT_EQ(actual[i], expected[i]);
        if (expected[i] == MOVE_UNAVAILABLE)
            break;
    }
}

TEST("Species relocation: encrypted box data and eggs retain every field except species")
{
    u32 index = 0;
    bool32 egg = FALSE;
    for (u32 i = 0; i < ARRAY_COUNT(sForms); i++)
        for (u32 isEgg = 0; isEgg < 2; isEgg++)
            PARAMETRIZE { index = i; egg = isEgg; }
    struct BoxPokemon mon, expected;
    static const u8 nickname[] = _("Keep name");
    u16 legacySpecies = sForms[index].oldSpecies;
    u16 currentSpecies = sForms[index].newSpecies;
    CreateBoxMon(&mon, currentSpecies, 40, 17, TRUE, 0x12345678, OT_ID_PRESET, 0x89ABCDEF);
    SetBoxMonData(&mon, MON_DATA_NICKNAME, nickname);
    SetBoxMonData(&mon, MON_DATA_IS_EGG, &egg);
    expected = mon;
    SetBoxMonData(&mon, MON_DATA_SPECIES, &legacySpecies);
    HlwSpecies_MigrateBoxMon(&mon);
    EXPECT_EQ(GetBoxMonData(&mon, MON_DATA_SPECIES), currentSpecies);
    EXPECT_EQ(memcmp(&mon, &expected, sizeof(mon)), 0);
    HlwSpecies_MigrateBoxMon(&mon);
    EXPECT_EQ(memcmp(&mon, &expected, sizeof(mon)), 0);
}

TEST("Species relocation: native parents and discarded filler parents remain separate")
{
    EXPECT_EQ(gSpeciesInfo[SPECIES_MIGHTYENA].evolutions[0].targetSpecies, SPECIES_DACHSBUN);
    EXPECT_EQ(gSpeciesInfo[SPECIES_MASQUERAIN].evolutions[0].targetSpecies, SPECIES_ARBOLIVA);
    EXPECT_EQ(gSpeciesInfo[SPECIES_RATICATE].evolutions[0].targetSpecies, SPECIES_SCOVILLAIN);
    EXPECT_EQ(gSpeciesInfo[SPECIES_SHROOMISH].evolutions[0].targetSpecies, SPECIES_WIGLETT);
    bool32 foundDragonami = FALSE;
    for (u32 i = 0; gSpeciesInfo[SPECIES_DRAGONAIR].evolutions[i].method != EVOLUTIONS_END; i++)
        foundDragonami |= gSpeciesInfo[SPECIES_DRAGONAIR].evolutions[i].targetSpecies == SPECIES_PAWMOT;
    EXPECT_EQ(foundDragonami, TRUE);
    EXPECT_EQ(gSpeciesInfo[SPECIES_BIDOOF].evolutions[0].targetSpecies, SPECIES_BIBAREL);
    EXPECT_EQ(gSpeciesInfo[SPECIES_LARVESTA].evolutions[0].targetSpecies, SPECIES_VOLCARONA);
    EXPECT_EQ(gSpeciesInfo[SPECIES_DUCKLETT].evolutions[0].targetSpecies, SPECIES_SWANNA);
    EXPECT_EQ(gSpeciesInfo[SPECIES_KARRABLAST].evolutions[0].targetSpecies, SPECIES_ESCAVALIER);
    EXPECT(gSpeciesInfo[SPECIES_FIDOUGH].evolutions == NULL);
    EXPECT(gSpeciesInfo[SPECIES_DOLLIV].evolutions == NULL);
    EXPECT(gSpeciesInfo[SPECIES_PAWMO].evolutions == NULL);
    EXPECT(gSpeciesInfo[SPECIES_CAPSAKID].evolutions == NULL);
    EXPECT(gSpeciesInfo[SPECIES_NICKIT].evolutions == NULL);
    EXPECT(gSpeciesInfo[SPECIES_CLOBBOPUS].evolutions == NULL);
}

TEST("Species relocation: regional dex and persistent Wish IDs follow the moved content")
{
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_DACHSBUN), 9);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_ARBOLIVA), 40);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_PAWMOT), 47);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_WIGLETT), 50);
    EXPECT_EQ(WishForm_GetIdForSpecies(SPECIES_SCOVILLAIN), 68);
    EXPECT_EQ(HoennToNationalOrder(HOENN_DEX_DARKRAI), NATIONAL_DEX_DACHSBUN);
    EXPECT_EQ(HoennToNationalOrder(HOENN_DEX_VOLCARONA), NATIONAL_DEX_ARBOLIVA);
    EXPECT_EQ(HoennToNationalOrder(HOENN_DEX_DRUDDIGON), NATIONAL_DEX_PAWMOT);
    EXPECT_EQ(HoennToNationalOrder(HOENN_DEX_VIRIZION), NATIONAL_DEX_WIGLETT);
    EXPECT_EQ(HoennToNationalOrder(HOENN_DEX_BIBAREL), NATIONAL_DEX_SCOVILLAIN);
}
