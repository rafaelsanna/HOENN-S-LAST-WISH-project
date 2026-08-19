#include "global.h"
#include "achievements.h"
#include "event_data.h"
#include "item.h"
#include "overworld.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "pokedex.h"
#include "string_util.h"
#include "constants/game_stat.h"
#include "constants/items.h"
#include "constants/species.h"
#include "constants/vars.h"

#define TRAINER_NONE_ACH 0xFFFF

static bool32 Achievement_PredicateHasLevel100Pokemon(void);
static u32 Achievement_CountCollectedTMs(void);
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
static const u8 sText_AchTm100Name[] = _("TM Master");
static const u8 sText_AchTm100Desc[] = _("Collect 100 TMs.");
static const u8 sText_AchPokedex200Name[] = _("Field Researcher");
static const u8 sText_AchPokedex200Desc[] = _("Register 200 caught Pokémon.");
static const u8 sText_AchPokedex350Name[] = _("Dex Specialist");
static const u8 sText_AchPokedex350Desc[] = _("Register 350 caught Pokémon.");
static const u8 sText_AchPokedex500Name[] = _("Living Archive");
static const u8 sText_AchPokedex500Desc[] = _("Register 500 caught Pokémon.");
static const u8 sText_AchPeakOfPowerName[] = _("Peak of Power");
static const u8 sText_AchPeakOfPowerDesc[] = _("Raise a Pokémon to Lv. 100.");
static const u8 sText_AchGainingPowerName[] = _("Gaining Power");
static const u8 sText_AchGainingPowerDesc[] = _("Evolve 25 Pokémon.");

static const u8 sText_TierBronze[] = _("POKE BALL");
static const u8 sText_TierSilver[] = _("GREAT BALL");
static const u8 sText_TierGold[] = _("ULTRA BALL");
static const u8 sText_TierPlatinum[] = _("MASTER BALL");

static const struct Achievement sAchievements[] =
{
    {ACH_RECEIVE_STARTER, sText_AchReceiveStarterName, sText_AchReceiveStarterDesc, ACH_TIER_BRONZE, ACH_COUNTER_NONE, 0, TRAINER_NONE_ACH, NULL},
    {ACH_FIRST_CAPTURE, sText_AchFirstCaptureName, sText_AchFirstCaptureDesc, ACH_TIER_BRONZE, ACH_COUNTER_CAPTURED_MONS, 1, TRAINER_NONE_ACH, NULL},
    {ACH_FIRST_CRITICAL, sText_AchFirstCriticalName, sText_AchFirstCriticalDesc, ACH_TIER_BRONZE, ACH_COUNTER_CRITICAL_HITS, 1, TRAINER_NONE_ACH, NULL},
    {ACH_CRITICAL_100, sText_AchCritical100Name, sText_AchCritical100Desc, ACH_TIER_SILVER, ACH_COUNTER_CRITICAL_HITS, 100, TRAINER_NONE_ACH, NULL},
    {ACH_CAPTURE_100, sText_AchCapture100Name, sText_AchCapture100Desc, ACH_TIER_SILVER, ACH_COUNTER_CAPTURED_MONS, 100, TRAINER_NONE_ACH, NULL},
    {ACH_CAPTURE_SHINY, sText_AchCaptureShinyName, sText_AchCaptureShinyDesc, ACH_TIER_GOLD, ACH_COUNTER_SHINY_CAPTURES, 1, TRAINER_NONE_ACH, NULL},
    {ACH_DAYCARE_EGG_1, sText_AchDaycareEgg1Name, sText_AchDaycareEgg1Desc, ACH_TIER_BRONZE, ACH_COUNTER_DAYCARE_EGGS, 1, TRAINER_NONE_ACH, NULL},
    {ACH_DAYCARE_EGGS_100, sText_AchDaycareEggs100Name, sText_AchDaycareEggs100Desc, ACH_TIER_GOLD, ACH_COUNTER_DAYCARE_EGGS, 30, TRAINER_NONE_ACH, NULL},
    {ACH_HATCH_EGGS_100, sText_AchHatchEggs100Name, sText_AchHatchEggs100Desc, ACH_TIER_GOLD, ACH_COUNTER_HATCHED_EGGS, 30, TRAINER_NONE_ACH, NULL},
    {ACH_TM_1, sText_AchTm1Name, sText_AchTm1Desc, ACH_TIER_BRONZE, ACH_COUNTER_TMS_COLLECTED, 1, TRAINER_NONE_ACH, NULL},
    {ACH_TM_20, sText_AchTm20Name, sText_AchTm20Desc, ACH_TIER_SILVER, ACH_COUNTER_TMS_COLLECTED, 20, TRAINER_NONE_ACH, NULL},
    {ACH_TM_50, sText_AchTm50Name, sText_AchTm50Desc, ACH_TIER_GOLD, ACH_COUNTER_TMS_COLLECTED, 50, TRAINER_NONE_ACH, NULL},
    {ACH_TM_100, sText_AchTm100Name, sText_AchTm100Desc, ACH_TIER_PLATINUM, ACH_COUNTER_TMS_COLLECTED, 100, TRAINER_NONE_ACH, NULL},
    {ACH_POKEDEX_200, sText_AchPokedex200Name, sText_AchPokedex200Desc, ACH_TIER_SILVER, ACH_COUNTER_POKEDEX_CAUGHT, 200, TRAINER_NONE_ACH, NULL},
    {ACH_POKEDEX_350, sText_AchPokedex350Name, sText_AchPokedex350Desc, ACH_TIER_GOLD, ACH_COUNTER_POKEDEX_CAUGHT, 350, TRAINER_NONE_ACH, NULL},
    {ACH_POKEDEX_500, sText_AchPokedex500Name, sText_AchPokedex500Desc, ACH_TIER_PLATINUM, ACH_COUNTER_POKEDEX_CAUGHT, 500, TRAINER_NONE_ACH, NULL},
    {ACH_PEAK_OF_POWER, sText_AchPeakOfPowerName, sText_AchPeakOfPowerDesc, ACH_TIER_GOLD, ACH_COUNTER_NONE, 0, TRAINER_NONE_ACH, Achievement_PredicateHasLevel100Pokemon},
    {ACH_GAINING_POWER, sText_AchGainingPowerName, sText_AchGainingPowerDesc, ACH_TIER_SILVER, ACH_COUNTER_EVOLVED_POKEMON, 25, TRAINER_NONE_ACH, NULL},
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

void Achievement_EnsureSaveInitialized(void)
{
    if (gSaveBlock1Ptr->achievements.magic != ACHIEVEMENT_SAVE_MAGIC)
    {
        memset(&gSaveBlock1Ptr->achievements, 0, sizeof(gSaveBlock1Ptr->achievements));
        gSaveBlock1Ptr->achievements.magic = ACHIEVEMENT_SAVE_MAGIC;
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
    Achievement_EnsureSaveInitialized();
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
    Achievement_EnsureSaveInitialized();
    return (gSaveBlock1Ptr->achievements.unlocked[id / 8] & (1 << (id % 8))) != 0;
}

u16 Achievement_CountUnlocked(void)
{
    u16 i, count = 0;

    Achievement_EnsureSaveInitialized();
    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        enum AchievementId id = sAchievements[i].id;

        if (gSaveBlock1Ptr->achievements.unlocked[id / 8] & (1 << (id % 8)))
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

    Achievement_EnsureSaveInitialized();
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
    default:
        break;
    }

    if (counter >= ACH_COUNTER_COUNT)
        return 0;
    Achievement_EnsureSaveInitialized();
    return gSaveBlock1Ptr->achievements.counters[counter];
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

    Achievement_EnsureSaveInitialized();
    for (i = 0; i < ACHIEVEMENT_POPUP_QUEUE_SIZE; i++)
    {
        if (gSaveBlock1Ptr->achievements.popupQueue[i] == 0)
        {
            gSaveBlock1Ptr->achievements.popupQueue[i] = id + 1;
            return;
        }
    }
}

bool32 Achievement_Unlock(enum AchievementId id)
{
    if ((u32)id >= ACHIEVEMENTS_MAX || Achievement_GetById(id) == NULL || Achievement_IsUnlocked(id))
        return FALSE;

    Achievement_EnsureSaveInitialized();
    gSaveBlock1Ptr->achievements.unlocked[id / 8] |= (1 << (id % 8));
    Achievement_QueuePopup(id);
    return TRUE;
}

void Achievement_OnPokemonObtained(u16 species)
{
    (void)species;
}

void Achievement_CheckAll(void)
{
    u16 i;

    Achievement_EnsureSaveInitialized();
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
    Achievement_EnsureSaveInitialized();
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
}

void Achievement_IncrementCounter(enum AchievementCounter counter, u32 amount)
{
    if (counter >= ACH_COUNTER_COUNT)
        return;

    Achievement_EnsureSaveInitialized();
    if (UINT_MAX - gSaveBlock1Ptr->achievements.counters[counter] < amount)
        gSaveBlock1Ptr->achievements.counters[counter] = UINT_MAX;
    else
        gSaveBlock1Ptr->achievements.counters[counter] += amount;

    Achievement_CheckCounter(counter);
}

void Achievement_AddBattlePointsEarned(u32 amount)
{
    (void)amount;
}

void Achievement_SetCounterMax(enum AchievementCounter counter, u32 value)
{
    if (counter >= ACH_COUNTER_COUNT)
        return;

    Achievement_EnsureSaveInitialized();
    if (gSaveBlock1Ptr->achievements.counters[counter] < value)
    {
        gSaveBlock1Ptr->achievements.counters[counter] = value;
        Achievement_CheckCounter(counter);
    }
}

void Achievement_OnTrainerDefeated(u16 trainerId)
{
    u16 i;

    for (i = 0; i < ARRAY_COUNT(sAchievements); i++)
    {
        if (sAchievements[i].trainerId == trainerId)
            Achievement_Unlock(sAchievements[i].id);
    }
    Achievement_CheckAll();
}
