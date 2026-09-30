#include "global.h"
#include "achievements.h"
#include "battle.h"
#include "data.h"
#include "event_data.h"
#include "item.h"
#include "overworld.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "pokedex.h"
#include "string_util.h"
#include "constants/game_stat.h"
#include "constants/items.h"
#include "constants/flags.h"
#include "constants/trainers.h"
#include "constants/species.h"
#include "constants/vars.h"

#define TRAINER_NONE_ACH 0xFFFF

static bool32 Achievement_PredicateHasLevel100Pokemon(void);
static bool32 Achievement_PredicateHasPerfectPokemon(void);
static bool32 Achievement_PredicateVisitedAllCities(void);
static bool32 Achievement_PredicateCaughtTitanPair(void);
static bool32 Achievement_PredicateControlsBothPrimals(void);

static bool32 Achievement_PokemonHasPerfectIVs(struct Pokemon *mon)
{
    return GetMonData(mon, MON_DATA_HP_IV) == 31
        && GetMonData(mon, MON_DATA_ATK_IV) == 31
        && GetMonData(mon, MON_DATA_DEF_IV) == 31
        && GetMonData(mon, MON_DATA_SPEED_IV) == 31
        && GetMonData(mon, MON_DATA_SPATK_IV) == 31
        && GetMonData(mon, MON_DATA_SPDEF_IV) == 31;
}

static bool32 Achievement_BoxPokemonHasPerfectIVs(struct BoxPokemon *boxMon)
{
    return GetBoxMonData(boxMon, MON_DATA_HP_IV) == 31
        && GetBoxMonData(boxMon, MON_DATA_ATK_IV) == 31
        && GetBoxMonData(boxMon, MON_DATA_DEF_IV) == 31
        && GetBoxMonData(boxMon, MON_DATA_SPEED_IV) == 31
        && GetBoxMonData(boxMon, MON_DATA_SPATK_IV) == 31
        && GetBoxMonData(boxMon, MON_DATA_SPDEF_IV) == 31;
}

static bool32 Achievement_PredicateHasPerfectPokemon(void)
{
    u8 partyIndex;
    u8 boxId;
    u8 boxPosition;

    for (partyIndex = 0; partyIndex < PARTY_SIZE; partyIndex++)
    {
        u16 species = GetMonData(&gPlayerParty[partyIndex], MON_DATA_SPECIES_OR_EGG);

        if (species != SPECIES_NONE
         && species != SPECIES_EGG
         && Achievement_PokemonHasPerfectIVs(&gPlayerParty[partyIndex]))
            return TRUE;
    }

    if (gPokemonStoragePtr == NULL)
        return FALSE;

    for (boxId = 0; boxId < TOTAL_BOXES_COUNT; boxId++)
    {
        for (boxPosition = 0; boxPosition < IN_BOX_COUNT; boxPosition++)
        {
            struct BoxPokemon *boxMon = GetBoxedMonPtr(boxId, boxPosition);
            u16 species = GetBoxMonData(boxMon, MON_DATA_SPECIES_OR_EGG);

            if (species != SPECIES_NONE
             && species != SPECIES_EGG
             && Achievement_BoxPokemonHasPerfectIVs(boxMon))
                return TRUE;
        }
    }

    return FALSE;
}

static bool32 Achievement_PredicateVisitedAllCities(void)
{
    static const u16 sRequiredCityFlags[] =
    {
        FLAG_VISITED_LITTLEROOT_TOWN,
        FLAG_VISITED_OLDALE_TOWN,
        FLAG_VISITED_DEWFORD_TOWN,
        FLAG_VISITED_LAVARIDGE_TOWN,
        FLAG_VISITED_FALLARBOR_TOWN,
        FLAG_VISITED_VERDANTURF_TOWN,
        FLAG_VISITED_PACIFIDLOG_TOWN,
        FLAG_VISITED_PETALBURG_CITY,
        FLAG_VISITED_SLATEPORT_CITY,
        FLAG_VISITED_MAUVILLE_CITY,
        FLAG_VISITED_RUSTBORO_CITY,
        FLAG_VISITED_FORTREE_CITY,
        FLAG_VISITED_LILYCOVE_CITY,
        FLAG_VISITED_MOSSDEEP_CITY,
        FLAG_VISITED_SOOTOPOLIS_CITY,
        FLAG_VISITED_EVER_GRANDE_CITY,
    };
    u32 i;

    for (i = 0; i < ARRAY_COUNT(sRequiredCityFlags); i++)
    {
        if (!FlagGet(sRequiredCityFlags[i]))
            return FALSE;
    }

    return TRUE;
}

static bool32 Achievement_IsSpeciesCaught(u16 species)
{
    return GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_CAUGHT);
}

static bool32 Achievement_PredicateCaughtTitanPair(void)
{
    return Achievement_IsSpeciesCaught(SPECIES_GROUDON)
        && Achievement_IsSpeciesCaught(SPECIES_KYOGRE);
}

static bool32 Achievement_PredicateControlsBothPrimals(void)
{
    // Primal forms are battle transformations, not permanently stored species.
    // Owning both titans plus both Orbs is the persistent "control" state.
    return Achievement_PredicateCaughtTitanPair()
        && CheckBagHasItem(ITEM_RED_ORB, 1)
        && CheckBagHasItem(ITEM_BLUE_ORB, 1);
}

static u32 Achievement_CountCollectedTMs(void);
static u32 Achievement_CountWishForms(void);
static void Achievement_RegisterWishForm(u16 species);
static void Achievement_RegisterOwnedWishForms(void);
static void Achievement_QueuePopup(enum AchievementId id);

static const u8 sText_AchReceiveStarterName[] = _("I Choose You!");
static const u8 sText_AchReceiveStarterDesc[] = _("Receive your first partner Pokémon.");
static const u8 sText_AchFirstCaptureName[] = _("First Catch");
static const u8 sText_AchFirstCaptureDesc[] = _("Catch your first Pokémon with a Ball.");
static const u8 sText_AchFirstCriticalName[] = _("Lucky Strike");
static const u8 sText_AchFirstCriticalDesc[] = _("Land your first critical hit.");
static const u8 sText_AchCritical100Name[] = _("Critical Thinker");
static const u8 sText_AchCritical100Desc[] = _("Land 100 critical hits.");
static const u8 sText_AchCapture100Name[] = _("Collector");
static const u8 sText_AchCapture100Desc[] = _("Catch 100 Pokémon.");
static const u8 sText_AchCaptureShinyName[] = _("Rare Spark");
static const u8 sText_AchCaptureShinyDesc[] = _("Catch a shiny Pokémon.");
static const u8 sText_AchDaycareEgg1Name[] = _("New Life");
static const u8 sText_AchDaycareEgg1Desc[] = _("Receive an Egg from Day Care.");
static const u8 sText_AchDaycareEggs100Name[] = _("Day Care Regular");
static const u8 sText_AchDaycareEggs100Desc[] = _("Receive 30 Day Care Eggs.");
static const u8 sText_AchHatchEggs100Name[] = _("Shell Breaker");
static const u8 sText_AchHatchEggs100Desc[] = _("Hatch 30 Eggs.");
static const u8 sText_AchTm1Name[] = _("TM Student");
static const u8 sText_AchTm1Desc[] = _("Collect your first TM.");
static const u8 sText_AchTm20Name[] = _("TM Seeker");
static const u8 sText_AchTm20Desc[] = _("Collect 20 TMs.");
static const u8 sText_AchTm50Name[] = _("TM Expert");
static const u8 sText_AchTm50Desc[] = _("Collect 50 TMs.");
static const u8 sText_AchPokedex200Name[] = _("Field Researcher");
static const u8 sText_AchPokedex200Desc[] = _("Register 200 caught Pokémon.");
static const u8 sText_AchPokedex350Name[] = _("Dex Specialist");
static const u8 sText_AchPokedex350Desc[] = _("Register 350 caught Pokémon.");
static const u8 sText_AchPeakOfPowerName[] = _("Peak of Power");
static const u8 sText_AchPeakOfPowerDesc[] = _("Raise a Pokémon to Lv. 100.");
static const u8 sText_AchGainingPowerName[] = _("Gaining Power");
static const u8 sText_AchGainingPowerDesc[] = _("Evolve 25 Pokémon.");

// Hoenn's Last Wish achievements.
static const u8 sText_AchWishAddictionName[] = _("Wish Addiction");
static const u8 sText_AchWishAddictionDesc[] = _("Register 85 Wish Forms.");
static const u8 sText_AchTouristName[] = _("Tourist");
static const u8 sText_AchTouristDesc[] = _("Visit every town and city in Hoenn.");
static const u8 sText_AchTimeTravellerName[] = _("Time Traveller");
static const u8 sText_AchTimeTravellerDesc[] = _("Activate the Time Gear 50 times.");
static const u8 sText_AchPerfectionistName[] = _("Perfectionist");
static const u8 sText_AchPerfectionistDesc[] = _("Own a Pokémon with all six IVs at 31.");
static const u8 sText_AchSushiManName[] = _("Sushi Man");
static const u8 sText_AchSushiManDesc[] = _("Catch 50 Pokémon while fishing.");
static const u8 sText_AchGamblerName[] = _("Gambler");
static const u8 sText_AchGamblerDesc[] = _("Play every game in the Game Corner.");
static const u8 sText_AchAllInName[] = _("ALL IN");
static const u8 sText_AchAllInDesc[] = _("Play 100 times in the Game Corner.");
static const u8 sText_AchIndeedChampionName[] = _("Indeed Champion");
static const u8 sText_AchIndeedChampionDesc[] = _("Enter the Hall of Fame 10 times.");
static const u8 sText_AchTitanPowerName[] = _("Titan Power");
static const u8 sText_AchTitanPowerDesc[] = _("Catch both Groudon and Kyogre.");
static const u8 sText_AchGodsOfNatureName[] = _("Gods of Nature");
static const u8 sText_AchGodsOfNatureDesc[] = _("Control both Primal Groudon and Kyogre.");
static const u8 sText_AchMagmaHaterName[] = _("Team Magma Hater");
static const u8 sText_AchMagmaHaterDesc[] = _("Defeat 100 Team Magma grunts.");
static const u8 sText_AchAquaHaterName[] = _("Team Aqua Hater");
static const u8 sText_AchAquaHaterDesc[] = _("Defeat 100 Team Aqua grunts.");

static const u8 sText_TierBronze[] = _("POKE BALL");
static const u8 sText_TierSilver[] = _("GREAT BALL");
static const u8 sText_TierGold[] = _("ULTRA BALL");
static const u8 sText_TierPlatinum[] = _("MASTER BALL");

static const struct Achievement sAchievements[] =
{
    {ACH_RECEIVE_STARTER,     sText_AchReceiveStarterName,     sText_AchReceiveStarterDesc,     ACH_TIER_BRONZE,   ACH_COUNTER_NONE,              0,   TRAINER_NONE_ACH, NULL},
    {ACH_FIRST_CAPTURE,       sText_AchFirstCaptureName,       sText_AchFirstCaptureDesc,       ACH_TIER_BRONZE,   ACH_COUNTER_CAPTURED_MONS,     1,   TRAINER_NONE_ACH, NULL},
    {ACH_FIRST_CRITICAL,      sText_AchFirstCriticalName,      sText_AchFirstCriticalDesc,      ACH_TIER_BRONZE,   ACH_COUNTER_CRITICAL_HITS,     1,   TRAINER_NONE_ACH, NULL},
    {ACH_CRITICAL_100,        sText_AchCritical100Name,        sText_AchCritical100Desc,        ACH_TIER_SILVER,   ACH_COUNTER_CRITICAL_HITS,     100, TRAINER_NONE_ACH, NULL},
    {ACH_CAPTURE_100,         sText_AchCapture100Name,         sText_AchCapture100Desc,         ACH_TIER_SILVER,   ACH_COUNTER_CAPTURED_MONS,     100, TRAINER_NONE_ACH, NULL},
    {ACH_CAPTURE_SHINY,       sText_AchCaptureShinyName,       sText_AchCaptureShinyDesc,       ACH_TIER_GOLD,     ACH_COUNTER_SHINY_CAPTURES,    1,   TRAINER_NONE_ACH, NULL},
    {ACH_DAYCARE_EGG_1,       sText_AchDaycareEgg1Name,        sText_AchDaycareEgg1Desc,        ACH_TIER_BRONZE,   ACH_COUNTER_DAYCARE_EGGS,      1,   TRAINER_NONE_ACH, NULL},
    {ACH_DAYCARE_EGGS_100,    sText_AchDaycareEggs100Name,     sText_AchDaycareEggs100Desc,     ACH_TIER_GOLD,     ACH_COUNTER_DAYCARE_EGGS,      30,  TRAINER_NONE_ACH, NULL},
    {ACH_HATCH_EGGS_100,      sText_AchHatchEggs100Name,       sText_AchHatchEggs100Desc,       ACH_TIER_GOLD,     ACH_COUNTER_HATCHED_EGGS,      30,  TRAINER_NONE_ACH, NULL},
    {ACH_TM_1,                sText_AchTm1Name,                 sText_AchTm1Desc,                 ACH_TIER_BRONZE,   ACH_COUNTER_TMS_COLLECTED,     1,   TRAINER_NONE_ACH, NULL},
    {ACH_TM_20,               sText_AchTm20Name,                sText_AchTm20Desc,                ACH_TIER_SILVER,   ACH_COUNTER_TMS_COLLECTED,     20,  TRAINER_NONE_ACH, NULL},
    {ACH_TM_50,               sText_AchTm50Name,                sText_AchTm50Desc,                ACH_TIER_GOLD,     ACH_COUNTER_TMS_COLLECTED,     50,  TRAINER_NONE_ACH, NULL},
    {ACH_POKEDEX_200,         sText_AchPokedex200Name,          sText_AchPokedex200Desc,          ACH_TIER_SILVER,   ACH_COUNTER_POKEDEX_CAUGHT,    200, TRAINER_NONE_ACH, NULL},
    {ACH_POKEDEX_350,         sText_AchPokedex350Name,          sText_AchPokedex350Desc,          ACH_TIER_GOLD,     ACH_COUNTER_POKEDEX_CAUGHT,    350, TRAINER_NONE_ACH, NULL},
    {ACH_PEAK_OF_POWER,       sText_AchPeakOfPowerName,         sText_AchPeakOfPowerDesc,         ACH_TIER_GOLD,     ACH_COUNTER_NONE,              0,   TRAINER_NONE_ACH, Achievement_PredicateHasLevel100Pokemon},
    {ACH_GAINING_POWER,       sText_AchGainingPowerName,        sText_AchGainingPowerDesc,        ACH_TIER_SILVER,   ACH_COUNTER_EVOLVED_POKEMON,   25,  TRAINER_NONE_ACH, NULL},

    {ACH_WISH_ADDICTION,      sText_AchWishAddictionName,       sText_AchWishAddictionDesc,       ACH_TIER_PLATINUM, ACH_COUNTER_WISH_FORMS,        ACH_WISH_FORM_TARGET, TRAINER_NONE_ACH, NULL},
    {ACH_TOURIST,             sText_AchTouristName,             sText_AchTouristDesc,             ACH_TIER_GOLD,     ACH_COUNTER_NONE,              0,   TRAINER_NONE_ACH, Achievement_PredicateVisitedAllCities},
    {ACH_TIME_TRAVELLER,      sText_AchTimeTravellerName,       sText_AchTimeTravellerDesc,       ACH_TIER_GOLD,     ACH_COUNTER_TIME_GEAR_USES,    50,  TRAINER_NONE_ACH, NULL},
    {ACH_PERFECTIONIST,       sText_AchPerfectionistName,       sText_AchPerfectionistDesc,       ACH_TIER_PLATINUM, ACH_COUNTER_NONE,              0,   TRAINER_NONE_ACH, Achievement_PredicateHasPerfectPokemon},
    {ACH_SUSHI_MAN,           sText_AchSushiManName,            sText_AchSushiManDesc,            ACH_TIER_SILVER,   ACH_COUNTER_FISHING_CATCHES,   50,  TRAINER_NONE_ACH, NULL},
    {ACH_GAMBLER,             sText_AchGamblerName,             sText_AchGamblerDesc,             ACH_TIER_SILVER,   ACH_COUNTER_GAME_CORNER_GAMES, ACH_GAME_CORNER_GAME_COUNT, TRAINER_NONE_ACH, NULL},
    {ACH_ALL_IN,              sText_AchAllInName,               sText_AchAllInDesc,               ACH_TIER_GOLD,     ACH_COUNTER_GAME_CORNER_PLAYS, 100, TRAINER_NONE_ACH, NULL},
    {ACH_INDEED_CHAMPION,     sText_AchIndeedChampionName,      sText_AchIndeedChampionDesc,      ACH_TIER_PLATINUM, ACH_COUNTER_LEAGUE_WINS,       10,  TRAINER_NONE_ACH, NULL},
    {ACH_TITAN_POWER,         sText_AchTitanPowerName,          sText_AchTitanPowerDesc,          ACH_TIER_GOLD,     ACH_COUNTER_NONE,              0,   TRAINER_NONE_ACH, Achievement_PredicateCaughtTitanPair},
    {ACH_GODS_OF_NATURE,      sText_AchGodsOfNatureName,        sText_AchGodsOfNatureDesc,        ACH_TIER_PLATINUM, ACH_COUNTER_NONE,              0,   TRAINER_NONE_ACH, Achievement_PredicateControlsBothPrimals},
    {ACH_TEAM_MAGMA_HATER,    sText_AchMagmaHaterName,          sText_AchMagmaHaterDesc,          ACH_TIER_GOLD,     ACH_COUNTER_MAGMA_GRUNTS,      100, TRAINER_NONE_ACH, NULL},
    {ACH_TEAM_AQUA_HATER,     sText_AchAquaHaterName,           sText_AchAquaHaterDesc,           ACH_TIER_GOLD,     ACH_COUNTER_AQUA_GRUNTS,       100, TRAINER_NONE_ACH, NULL},
};

STATIC_ASSERT(ARRAY_COUNT(sAchievements) == ACH_COUNT, AchievementTableMatchesIdCount);
STATIC_ASSERT(ACH_ID_COUNT <= ACHIEVEMENTS_MAX, AchievementIdsWithinSaveBitmap);

static const u8 *const sTierLabels[] =
{
    [ACH_TIER_BRONZE] = sText_TierBronze,
    [ACH_TIER_SILVER] = sText_TierSilver,
    [ACH_TIER_GOLD] = sText_TierGold,
    [ACH_TIER_PLATINUM] = sText_TierPlatinum,
};

static const u16 sTierBallItems[] =
{
    [ACH_TIER_BRONZE] = ITEM_POKE_BALL,
    [ACH_TIER_SILVER] = ITEM_GREAT_BALL,
    [ACH_TIER_GOLD] = ITEM_ULTRA_BALL,
    [ACH_TIER_PLATINUM] = ITEM_MASTER_BALL,
};

// Explicit IDs, independent of species numbers and registry order.
struct WishFormRegistryEntry { u16 id; u16 species; };
static const struct WishFormRegistryEntry sWishFormRegistry[] =
{
#define WISH_FORM(id, species) { id, SPECIES_##species },
#include "data/wish_form_registry.inc"
#undef WISH_FORM
};
STATIC_ASSERT(ACH_WISH_ORIGINAL_FORM_COUNT == 128, WishOriginalCapacity);
STATIC_ASSERT(ACH_WISH_CUSTOM_FORM_COUNT == 100, WishCustomCapacity);
STATIC_ASSERT(ACH_SHADOW_POKEMON_COUNT == 30, ShadowCapacity);
STATIC_ASSERT(ACH_COUNTER_COUNT <= ACHIEVEMENT_SAVED_COUNTERS, AchievementCounterCapacity);

u16 WishForm_GetIdForSpecies(u16 species)
{
    u32 i;
    for (i = 0; i < ARRAY_COUNT(sWishFormRegistry); i++)
        if (sWishFormRegistry[i].species == species)
            return sWishFormRegistry[i].id;
    return WISH_FORM_ID_NONE;
}

bool32 WishForm_IsRegistered(bool32 custom, u16 id)
{
    const u8 *bits;
    if (gSaveBlock3Ptr == NULL || id >= (custom ? ACH_WISH_CUSTOM_FORM_COUNT : ACH_WISH_ORIGINAL_FORM_COUNT))
        return FALSE;
    bits = custom ? gSaveBlock3Ptr->achievements.wishCustomForms : gSaveBlock3Ptr->achievements.wishOriginalForms;
    return (bits[id / 8] & (1 << (id % 8))) != 0;
}

bool32 WishForm_Register(bool32 custom, u16 id)
{
    u8 *bits;
    if (gSaveBlock3Ptr == NULL || id >= (custom ? ACH_WISH_CUSTOM_FORM_COUNT : ACH_WISH_ORIGINAL_FORM_COUNT))
        return FALSE;
    bits = custom ? gSaveBlock3Ptr->achievements.wishCustomForms : gSaveBlock3Ptr->achievements.wishOriginalForms;
    bits[id / 8] |= 1 << (id % 8);
    return TRUE;
}

u16 ShadowPokemon_GetIdForSpecies(u16 species)
{
    // Repurposed species slots are content; these small IDs are persistent.
    switch (species)
    {
    case SPECIES_ESCAVALIER: return SHADOW_ID_EVIL_CELEBI;
    case SPECIES_DUCKLETT:   return SHADOW_ID_JIRACHI;
    case SPECIES_SWANNA:     return SHADOW_ID_SUICUNE;
    default:                return SHADOW_ID_NONE;
    }
}

bool32 ShadowPokemon_IsDefeated(u16 id)
{
    if (gSaveBlock3Ptr == NULL || id >= ACH_SHADOW_POKEMON_COUNT)
        return FALSE;
    // Celebi and Jirachi share the existing Nightmare story encounter.
    // Their bitmap positions stay reserved; there is only one live owner.
    if (id == SHADOW_ID_EVIL_CELEBI || id == SHADOW_ID_JIRACHI)
        return gSaveBlock3Ptr->achievements.shadowNightmareState == 1;
    return (gSaveBlock3Ptr->achievements.shadowPokemon[id / 8] & (1 << (id % 8))) != 0;
}

bool32 ShadowPokemon_SetDefeated(u16 id, bool32 defeated)
{
    u8 *byte;
    if (gSaveBlock3Ptr == NULL || id >= ACH_SHADOW_POKEMON_COUNT)
        return FALSE;
    if (id == SHADOW_ID_EVIL_CELEBI || id == SHADOW_ID_JIRACHI)
    {
        gSaveBlock3Ptr->achievements.shadowNightmareState = defeated ? 1 : 0;
        return TRUE;
    }
    byte = &gSaveBlock3Ptr->achievements.shadowPokemon[id / 8];
    if (defeated)
        *byte |= 1 << (id % 8);
    else
        *byte &= ~(1 << (id % 8));
    return TRUE;
}

static void Achievement_RegisterWishForm(u16 species)
{
    WishForm_Register(FALSE, WishForm_GetIdForSpecies(species));
}

static u32 Achievement_CountWishForms(void)
{
    u32 i, count = 0;
    for (i = 0; i < ACH_WISH_ORIGINAL_FORM_COUNT; i++)
        count += WishForm_IsRegistered(FALSE, i);
    return count;
}

static void Achievement_RegisterOwnedWishForms(void)
{
    u8 partyIndex;
    u8 boxId;
    u8 boxPosition;

    // Backfill forms currently owned when loading an older save that predates
    // Wish Addiction. Once registered, the bit remains permanent.
    for (partyIndex = 0; partyIndex < PARTY_SIZE; partyIndex++)
    {
        u16 species = GetMonData(&gPlayerParty[partyIndex], MON_DATA_SPECIES_OR_EGG);

        if (species != SPECIES_NONE && species != SPECIES_EGG)
            Achievement_RegisterWishForm(species);
    }

    if (gPokemonStoragePtr == NULL)
        return;

    for (boxId = 0; boxId < TOTAL_BOXES_COUNT; boxId++)
    {
        for (boxPosition = 0; boxPosition < IN_BOX_COUNT; boxPosition++)
        {
            struct BoxPokemon *boxMon = GetBoxedMonPtr(boxId, boxPosition);
            u16 species = GetBoxMonData(boxMon, MON_DATA_SPECIES_OR_EGG);

            if (species != SPECIES_NONE && species != SPECIES_EGG)
                Achievement_RegisterWishForm(species);
        }
    }
}

static bool32 Achievement_PredicateHasLevel100Pokemon(void)
{
    u8 boxId;
    u8 boxPosition;
    u8 partyIndex;

    for (partyIndex = 0; partyIndex < PARTY_SIZE; partyIndex++)
    {
        if (GetMonData(&gPlayerParty[partyIndex], MON_DATA_SPECIES_OR_EGG) != SPECIES_NONE
         && GetMonData(&gPlayerParty[partyIndex], MON_DATA_SPECIES_OR_EGG) != SPECIES_EGG
         && GetMonData(&gPlayerParty[partyIndex], MON_DATA_LEVEL) >= MAX_LEVEL)
            return TRUE;
    }

    if (gPokemonStoragePtr == NULL)
        return FALSE;

    for (boxId = 0; boxId < TOTAL_BOXES_COUNT; boxId++)
    {
        for (boxPosition = 0; boxPosition < IN_BOX_COUNT; boxPosition++)
        {
            struct BoxPokemon *boxMon = GetBoxedMonPtr(boxId, boxPosition);

            if (GetBoxMonData(boxMon, MON_DATA_SPECIES_OR_EGG) != SPECIES_NONE
             && GetBoxMonData(boxMon, MON_DATA_SPECIES_OR_EGG) != SPECIES_EGG
             && GetLevelFromBoxMonExp(boxMon) >= MAX_LEVEL)
                return TRUE;
        }
    }

    return FALSE;
}

static u32 Achievement_CountCollectedTMs(void)
{
    u16 i;
    u32 count = 0;

    for (i = 0; i < gBagPockets[POCKET_TM_HM].capacity; i++)
    {
        enum TMHMIndex index = GetItemTMHMIndex(GetBagItemId(POCKET_TM_HM, i));

        if (index > 0 && index <= NUM_TECHNICAL_MACHINES)
            count++;
    }
    return count;
}

u16 Achievement_GetCount(void)
{
    return ARRAY_COUNT(sAchievements);
}

const struct Achievement *Achievement_GetByIndex(u16 index)
{
    if (index >= ARRAY_COUNT(sAchievements))
        return NULL;
    return &sAchievements[index];
}

const struct Achievement *Achievement_GetById(enum AchievementId id)
{
    u16 i;

    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        if (sAchievements[i].id == id)
            return &sAchievements[i];
    }
    return NULL;
}

const u8 *Achievement_GetTierLabel(enum AchievementTier tier)
{
    if (tier >= ARRAY_COUNT(sTierLabels))
        return sTierLabels[ACH_TIER_BRONZE];
    return sTierLabels[tier];
}

u16 Achievement_GetTierBallItem(enum AchievementTier tier)
{
    if (tier >= ARRAY_COUNT(sTierBallItems))
        return sTierBallItems[ACH_TIER_BRONZE];
    return sTierBallItems[tier];
}

bool32 Achievement_IsUnlocked(enum AchievementId id)
{
    if ((u32)id >= ACHIEVEMENTS_MAX)
        return FALSE;
    return (gSaveBlock3Ptr->achievements.unlocked[id / 8] & (1 << (id % 8))) != 0;
}

u16 Achievement_CountUnlocked(void)
{
    u16 i, count = 0;

    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        enum AchievementId id = sAchievements[i].id;

        if (gSaveBlock3Ptr->achievements.unlocked[id / 8] & (1 << (id % 8)))
            count++;
    }
    return count;
}

void GetCompletedAchievementsCount(void)
{
    Achievement_CheckAll();
    gSpecialVar_Result = Achievement_CountUnlocked();
}

void Debug_UnlockNextAchievement(void)
{
    u16 i;

    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        enum AchievementId id = sAchievements[i].id;

        if (!Achievement_IsUnlocked(id))
        {
            Achievement_Unlock(id);
            gSpecialVar_Result = id;
            return;
        }
    }

    gSpecialVar_Result = 0xFFFF;
}

u32 Achievement_GetCounter(enum AchievementCounter counter)
{

    switch (counter)
    {
    case ACH_COUNTER_EVOLVED_POKEMON:
        return GetGameStat(GAME_STAT_EVOLVED_POKEMON);
    case ACH_COUNTER_TMS_COLLECTED:
        return Achievement_CountCollectedTMs();
    case ACH_COUNTER_POKEDEX_CAUGHT:
        return GetNationalPokedexCount(FLAG_GET_CAUGHT);

    case ACH_COUNTER_GAME_CORNER_GAMES:
    {
        u8 mask = gSaveBlock3Ptr->achievements.gameCornerMask;
        u8 i;
        u8 count = 0;

        for (i = 0; i < ACH_GAME_CORNER_GAME_COUNT; i++)
        {
            if (mask & (1 << i))
                count++;
        }
        return count;
    }
    case ACH_COUNTER_WISH_FORMS:
        return Achievement_CountWishForms();
    default:
        break;
    }

    if ((u32)counter < ACH_COUNTER_COUNT)
        return gSaveBlock3Ptr->achievements.counters[counter];

    return 0;
}

u32 Achievement_GetProgress(const struct Achievement *achievement)
{
    if (achievement == NULL)
        return 0;
    if (achievement->counter != ACH_COUNTER_NONE)
        return Achievement_GetCounter(achievement->counter);
    if (achievement->predicate != NULL && achievement->predicate())
        return 1;
    return Achievement_IsUnlocked(achievement->id) ? 1 : 0;
}

u32 Achievement_GetTarget(const struct Achievement *achievement)
{
    if (achievement == NULL)
        return 0;
    if (achievement->counter != ACH_COUNTER_NONE)
        return achievement->targetValue;
    return 1;
}

static void Achievement_QueuePopup(enum AchievementId id)
{
    u8 i;

    for (i = 0; i < ACHIEVEMENT_POPUP_QUEUE_SIZE; i++)
    {
        if (gSaveBlock3Ptr->achievements.popupQueue[i] == 0)
        {
            gSaveBlock3Ptr->achievements.popupQueue[i] = id + 1;
            return;
        }
    }
}

bool32 Achievement_Unlock(enum AchievementId id)
{
    if ((u32)id >= ACHIEVEMENTS_MAX || Achievement_GetById(id) == NULL || Achievement_IsUnlocked(id))
        return FALSE;

    gSaveBlock3Ptr->achievements.unlocked[id / 8] |= (1 << (id % 8));
    Achievement_QueuePopup(id);
    return TRUE;
}

void Achievement_OnPokemonObtained(u16 species)
{
    Achievement_RegisterWishForm(species);
    Achievement_CheckCounter(ACH_COUNTER_WISH_FORMS);
    Achievement_CheckAll();
}

void Achievement_CheckAll(void)
{
    u16 i;

    Achievement_RegisterOwnedWishForms();
    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        const struct Achievement *achievement = &sAchievements[i];

        if (Achievement_IsUnlocked(achievement->id))
            continue;
        if (achievement->counter != ACH_COUNTER_NONE
         && Achievement_GetCounter(achievement->counter) >= achievement->targetValue)
            Achievement_Unlock(achievement->id);
        else if (achievement->predicate != NULL && achievement->predicate())
            Achievement_Unlock(achievement->id);
    }
}

void Achievement_CheckCounter(enum AchievementCounter counter)
{
    u16 i;

    if (counter == ACH_COUNTER_NONE)
        return;
    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        const struct Achievement *achievement = &sAchievements[i];

        if (achievement->counter == counter
         && !Achievement_IsUnlocked(achievement->id)
         && Achievement_GetCounter(counter) >= achievement->targetValue)
            Achievement_Unlock(achievement->id);
    }
}

void Achievement_UnlockHallOfFameDebut(void)
{
    // Existing Hall of Fame hook now doubles as the repeat-win tracker.
    Achievement_RecordLeagueWin();
}

void Achievement_IncrementCounter(enum AchievementCounter counter, u32 amount)
{
    u32 value;
    if ((u32)counter >= ACH_COUNTER_COUNT)
        return;
    value = gSaveBlock3Ptr->achievements.counters[counter];
    gSaveBlock3Ptr->achievements.counters[counter] = (0xFFFFFFFFu - value < amount) ? 0xFFFFFFFFu : value + amount;
    Achievement_CheckCounter(counter);
}

void Achievement_AddBattlePointsEarned(u32 amount)
{
    (void)amount;
}

void Achievement_SetCounterMax(enum AchievementCounter counter, u32 value)
{
    if ((u32)counter >= ACH_COUNTER_COUNT)
        return;
    if (gSaveBlock3Ptr->achievements.counters[counter] < value)
    {
        gSaveBlock3Ptr->achievements.counters[counter] = value;
        Achievement_CheckCounter(counter);
    }
}

void Achievement_OnTrainerDefeated(u16 trainerId)
{
    u16 i;

    // Count only regular grunt trainer classes; admins/leaders do not inflate
    // the "Hater" trophies.
    if (trainerId != TRAINER_NONE_ACH
     && trainerId != TRAINER_SECRET_BASE
     && trainerId != TRAINER_LINK_OPPONENT
     && trainerId != TRAINER_UNION_ROOM)
    {
        if (GetTrainerStructFromId(trainerId)->trainerClass == TRAINER_CLASS_TEAM_MAGMA)
            Achievement_RecordMagmaGruntDefeat();
        else if (GetTrainerStructFromId(trainerId)->trainerClass == TRAINER_CLASS_TEAM_AQUA)
            Achievement_RecordAquaGruntDefeat();
    }

    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        if (sAchievements[i].trainerId == trainerId)
            Achievement_Unlock(sAchievements[i].id);
    }

    Achievement_CheckAll();
}

void Achievement_RecordTimeGearUse(void)
{
    Achievement_IncrementCounter(ACH_COUNTER_TIME_GEAR_USES, 1);
}

void Achievement_RecordFishingCatch(void)
{
    Achievement_IncrementCounter(ACH_COUNTER_FISHING_CATCHES, 1);
}

void Achievement_RecordGameCornerPlay(enum AchievementGameCornerGame game)
{
    u8 mask;


    // Every actual play counts toward ALL IN.
    Achievement_IncrementCounter(ACH_COUNTER_GAME_CORNER_PLAYS, 1);

    if (game >= ACH_GAME_CORNER_GAME_COUNT)
        return;

    // Gambler remembers which distinct Game Corner games were tried.
    mask = gSaveBlock3Ptr->achievements.gameCornerMask;
    mask |= 1 << game;
    gSaveBlock3Ptr->achievements.gameCornerMask = mask;
    Achievement_CheckCounter(ACH_COUNTER_GAME_CORNER_GAMES);
}

void Achievement_RecordLeagueWin(void)
{
    Achievement_IncrementCounter(ACH_COUNTER_LEAGUE_WINS, 1);
}

void Achievement_RecordMagmaGruntDefeat(void)
{
    Achievement_IncrementCounter(ACH_COUNTER_MAGMA_GRUNTS, 1);
}

void Achievement_RecordAquaGruntDefeat(void)
{
    Achievement_IncrementCounter(ACH_COUNTER_AQUA_GRUNTS, 1);
}

