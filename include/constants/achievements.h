#ifndef GUARD_CONSTANTS_ACHIEVEMENTS_H
#define GUARD_CONSTANTS_ACHIEVEMENTS_H

#define ACHIEVEMENTS_MAX 256
#define ACHIEVEMENT_UNLOCKED_BYTES ((ACHIEVEMENTS_MAX + 7) / 8)
#define ACHIEVEMENT_POPUP_QUEUE_SIZE 6
#define ACHIEVEMENT_SAVE_MAGIC 0x48434148 // "HACH"
#define ACHIEVEMENT_SAVE_VERSION 1
#define ACHIEVEMENT_SAVE_DATA_SIZE 208
#define ACHIEVEMENT_SAVED_COUNTERS 32

// Frozen 0.9 registries. The first 100 Wish slots have an explicit species
// manifest; the second 100 are reserved for custom/DLC forms. Shadow tracking
// has 30 stable slots, of which the first three are assigned at release.
#define ACH_WISH_ORIGINAL_FORM_COUNT 100
#define ACH_WISH_CUSTOM_FORM_COUNT 100
#define ACH_WISH_FORM_COUNT (ACH_WISH_ORIGINAL_FORM_COUNT + ACH_WISH_CUSTOM_FORM_COUNT)
#define ACH_WISH_FORM_BYTES ((ACH_WISH_FORM_COUNT + 7) / 8)
#define ACH_WISH_FORM_TARGET 85
#define ACH_SHADOW_POKEMON_COUNT 30
#define ACH_SHADOW_POKEMON_BYTES ((ACH_SHADOW_POKEMON_COUNT + 7) / 8)

enum AchievementTier
{
    ACH_TIER_BRONZE,
    ACH_TIER_SILVER,
    ACH_TIER_GOLD,
    ACH_TIER_PLATINUM,
};

enum AchievementCounter
{
    // Original save-backed counters. These remain in the low 16 bits of the
    // original five u32 slots for save compatibility.
    ACH_COUNTER_CRITICAL_HITS,
    ACH_COUNTER_CAPTURED_MONS,
    ACH_COUNTER_SHINY_CAPTURES,
    ACH_COUNTER_DAYCARE_EGGS,
    ACH_COUNTER_HATCHED_EGGS,
    ACH_COUNTER_TIME_GEAR_USES,
    ACH_COUNTER_FISHING_CATCHES,
    ACH_COUNTER_GAME_CORNER_PLAYS,
    ACH_COUNTER_LEAGUE_WINS,
    ACH_COUNTER_MAGMA_GRUNTS,
    ACH_COUNTER_AQUA_GRUNTS,
    ACH_COUNTER_COUNT,

    // Counters resolved from existing game state.
    ACH_COUNTER_GAME_CORNER_GAMES = 0xF4,
    ACH_COUNTER_WISH_FORMS = 0xF5,
    ACH_COUNTER_EVOLVED_POKEMON = 0xF6,
    ACH_COUNTER_TMS_COLLECTED = 0xFD,
    ACH_COUNTER_POKEDEX_CAUGHT = 0xFE,
    ACH_COUNTER_NONE = 0xFF,
};

enum AchievementGameCornerGame
{
    ACH_GAME_CORNER_SLOTS,
    ACH_GAME_CORNER_ROULETTE,
    ACH_GAME_CORNER_GAME_COUNT,
};

enum AchievementId
{
    // Keep all original IDs stable for existing saves.
    ACH_RECEIVE_STARTER,
    ACH_FIRST_CAPTURE,
    ACH_FIRST_CRITICAL,
    ACH_CRITICAL_100,
    ACH_CAPTURE_100,
    ACH_CAPTURE_SHINY,
    ACH_DAYCARE_EGG_1,
    ACH_DAYCARE_EGGS_100,
    ACH_HATCH_EGGS_100,
    ACH_TM_1,
    ACH_TM_20,
    ACH_TM_50,

    // Legacy IDs intentionally hidden from the new menu.
    // Do not reuse these values or old saves could unlock the wrong trophy.
    ACH_TM_100,
    ACH_POKEDEX_200,
    ACH_POKEDEX_350,
    ACH_POKEDEX_500,

    ACH_PEAK_OF_POWER,
    ACH_GAINING_POWER,

    // New Hoenn's Last Wish achievements.
    ACH_WISH_ADDICTION,
    ACH_TOURIST,
    ACH_TIME_TRAVELLER,
    ACH_PERFECTIONIST,
    ACH_SUSHI_MAN,
    ACH_GAMBLER,
    ACH_ALL_IN,
    ACH_INDEED_CHAMPION,
    ACH_TITAN_POWER,
    ACH_GODS_OF_NATURE,
    ACH_TEAM_MAGMA_HATER,
    ACH_TEAM_AQUA_HATER,

    ACH_ID_COUNT,
};

#define ACH_LEGACY_ID_COUNT 0

// Two legacy trophies (TM Master / Living Archive) retain IDs but are no
// longer displayed or counted toward the total.
#define ACH_REMOVED_COUNT 2
#define ACH_COUNT (ACH_ID_COUNT - ACH_REMOVED_COUNT)

#endif // GUARD_CONSTANTS_ACHIEVEMENTS_H
