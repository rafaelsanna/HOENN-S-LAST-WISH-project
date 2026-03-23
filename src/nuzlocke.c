#include "global.h"
#include "battle.h"
#include "event_data.h"
#include "nuzlocke.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "constants/flags.h"
#include "constants/map_types.h"
#include "constants/battle.h"

static const u8 sTextNuzlockeLoneMonPenalty[] = _("You lost with Nuzlocke, so your only Pokemon lost 2 levels.");

EWRAM_DATA static bool8 sNuzlockeCanThrowBallThisBattle = FALSE;
EWRAM_DATA static bool8 sNuzlockeShowLoneMonPenaltyMessage = FALSE;

static void Nuzlocke_EnsureMapFlagsInit(void)
{
    if (FlagGet(FLAG_SYS_NUZLOCKE_FLAGS_INITIALIZED))
        return;
    if (gSaveBlock2Ptr == NULL)
        return;

    memset(gSaveBlock2Ptr->nuzlockeEncounterMapFlags, 0, NUZLOCKE_AREA_FLAGS_COUNT);
    memset(gSaveBlock2Ptr->nuzlockeCaptureMapFlags, 0, NUZLOCKE_AREA_FLAGS_COUNT);
    if (gSaveBlock1Ptr != NULL)
        memset(gSaveBlock1Ptr->nuzlockeReleasedSpeciesFlags, 0, ROUND_BITS_TO_BYTES(NUM_SPECIES));
    FlagSet(FLAG_SYS_NUZLOCKE_FLAGS_INITIALIZED);
}

static bool8 Nuzlocke_IsSpeciesFlagSet(const u8 *flags, u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return FALSE;

    return flags[species >> 3] & (1 << (species & 7));
}

static void Nuzlocke_SetSpeciesFlag(u8 *flags, u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return;

    flags[species >> 3] |= 1 << (species & 7);
}

static bool8 Nuzlocke_IsSpeciesInPlayerCollection(u16 species)
{
    s32 i;
    s32 box;
    s32 slot;

    if (species == SPECIES_NONE)
        return FALSE;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == species)
            return TRUE;
    }

    if (gPokemonStoragePtr == NULL)
        return FALSE;

    for (box = 0; box < TOTAL_BOXES_COUNT; box++)
    {
        for (slot = 0; slot < IN_BOX_COUNT; slot++)
        {
            if (GetBoxMonData(&gPokemonStoragePtr->boxes[box][slot], MON_DATA_SPECIES) == species)
                return TRUE;
        }
    }

    return FALSE;
}

static bool8 Nuzlocke_IsSpeciesAlreadyOwned(u16 species)
{
    u16 dexNum;

    if (species == SPECIES_NONE || gSaveBlock2Ptr == NULL)
        return FALSE;

    dexNum = SpeciesToNationalPokedexNum(species);
    if (dexNum != 0 && dexNum <= NATIONAL_DEX_COUNT
     && GetSetPokedexFlag(dexNum, FLAG_GET_CAUGHT))
        return TRUE;

    if (Nuzlocke_IsSpeciesInPlayerCollection(species))
        return TRUE;

    if (gSaveBlock1Ptr != NULL && Nuzlocke_IsSpeciesFlagSet(gSaveBlock1Ptr->nuzlockeReleasedSpeciesFlags, species))
        return TRUE;

    return FALSE;
}

static bool8 Nuzlocke_HasAvailableWildSpecies(void)
{
    s32 i;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        u16 species = GetMonData(&gEnemyParty[i], MON_DATA_SPECIES);

        if (species == SPECIES_NONE)
            continue;

        if (!Nuzlocke_IsSpeciesAlreadyOwned(species))
            return TRUE;
    }

    return FALSE;
}

static void Nuzlocke_RecordReleasedSpecies(u16 species)
{
    if (gSaveBlock1Ptr == NULL)
        return;

    Nuzlocke_SetSpeciesFlag(gSaveBlock1Ptr->nuzlockeReleasedSpeciesFlags, species);
}

static bool8 IsCurrentRouteShinyEncounter(void)
{
    if (gBattlersCount <= B_POSITION_OPPONENT_LEFT)
        return FALSE;

    return GetMonData(&gEnemyParty[gBattlerPartyIndexes[B_POSITION_OPPONENT_LEFT]], MON_DATA_IS_SHINY);
}

static bool8 GetMapFlag(const u8 *flags, u8 mapSecId)
{
    return flags[mapSecId >> 3] & (1 << (mapSecId & 7));
}

static void SetMapFlag(u8 *flags, u8 mapSecId)
{
    flags[mapSecId >> 3] |= 1 << (mapSecId & 7);
}

static u16 CountOwnedNonEggMons(void)
{
    u16 count = 0;
    s32 i;
    s32 box;
    s32 slot;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) != SPECIES_NONE
         && !GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
        {
            count++;
        }
    }

    for (box = 0; box < TOTAL_BOXES_COUNT; box++)
    {
        for (slot = 0; slot < IN_BOX_COUNT; slot++)
        {
            struct BoxPokemon *boxMon = &gPokemonStoragePtr->boxes[box][slot];
            if (GetBoxMonData(boxMon, MON_DATA_SPECIES) != SPECIES_NONE
             && !GetBoxMonData(boxMon, MON_DATA_IS_EGG))
            {
                count++;
            }
        }
    }

    return count;
}

static bool8 TryApplyLoneMonPenalty(struct Pokemon *mon)
{
    u16 species;
    u32 exp;
    u8 level;
    u8 targetLevel;

    if (CountOwnedNonEggMons() != 1)
        return FALSE;
    if (GetMonData(mon, MON_DATA_HP) != 0)
        return FALSE;

    species = GetMonData(mon, MON_DATA_SPECIES);
    level = GetMonData(mon, MON_DATA_LEVEL);
    targetLevel = (level > 2) ? (level - 2) : 1;
    exp = gExperienceTables[gSpeciesInfo[species].growthRate][targetLevel];

    SetMonData(mon, MON_DATA_EXP, &exp);
    CalculateMonStats(mon);
    sNuzlockeShowLoneMonPenaltyMessage = TRUE;
    return TRUE;
}

static bool8 IsTrackableWildBattle(void)
{
    if (gBattleTypeFlags & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_SAFARI | BATTLE_TYPE_WALLY_TUTORIAL))
        return FALSE;

    // Nuzlocke encounter lock starts only after obtaining the Pokedex.
    if (!FlagGet(FLAG_SYS_POKEDEX_GET))
        return FALSE;

    // Encounter areas are route map sections.
    return gMapHeader.mapType == MAP_TYPE_ROUTE || gMapHeader.mapType == MAP_TYPE_OCEAN_ROUTE || gMapHeader.mapType == MAP_TYPE_UNDERWATER || gMapHeader.mapType == MAP_TYPE_SECRET_BASE || gMapHeader.mapType == MAP_TYPE_TOWN || gMapHeader.mapType == MAP_TYPE_CITY || gMapHeader.mapType == MAP_TYPE_UNDERGROUND || gMapHeader.mapType == MAP_TYPE_INDOOR || gMapHeader.mapType == MAP_TYPE_UNKNOWN;
}

static bool8 HasUncaughtWildMonInBattle(void)
{
    return Nuzlocke_HasAvailableWildSpecies();
}

bool8 Nuzlocke_IsEnabled(void)
{
    return gSaveBlock2Ptr != NULL && gSaveBlock2Ptr->optionsNuzlocke != OPTIONS_NUZLOCKE_OFF;
}

u8 Nuzlocke_GetMode(void)
{
    if (gSaveBlock2Ptr == NULL)
        return OPTIONS_NUZLOCKE_OFF;

    if (gSaveBlock2Ptr->optionsNuzlocke > OPTIONS_NUZLOCKE_HARD)
        return OPTIONS_NUZLOCKE_OFF;

    return gSaveBlock2Ptr->optionsNuzlocke;
}

static bool8 Nuzlocke_HasStarted(void)
{
    return Nuzlocke_GetMode() != OPTIONS_NUZLOCKE_OFF && FlagGet(FLAG_SYS_POKEDEX_GET);
}

void Nuzlocke_OnBattleStart(void)
{
    Nuzlocke_EnsureMapFlagsInit();
    u8 mode;
    u8 mapSecId;

    sNuzlockeCanThrowBallThisBattle = FALSE;

    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return;

    mode = Nuzlocke_GetMode();
    if (mode != OPTIONS_NUZLOCKE_HARD)
        return;

    if (!HasUncaughtWildMonInBattle())
        return;

    mapSecId = gMapHeader.regionMapSectionId;

    if (!GetMapFlag(gSaveBlock2Ptr->nuzlockeEncounterMapFlags, mapSecId))
    {
        SetMapFlag(gSaveBlock2Ptr->nuzlockeEncounterMapFlags, mapSecId);
        sNuzlockeCanThrowBallThisBattle = TRUE;
    }
}

bool8 Nuzlocke_CanThrowBallThisBattle(void)
{
    Nuzlocke_EnsureMapFlagsInit();
    u8 mode;

    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return TRUE;

    mode = Nuzlocke_GetMode();

    if (mode == OPTIONS_NUZLOCKE_NORMAL)
    {
        if (IsCurrentRouteShinyEncounter())
            return TRUE;

        if (!Nuzlocke_HasAvailableWildSpecies())
            return FALSE;

        return !GetMapFlag(gSaveBlock2Ptr->nuzlockeCaptureMapFlags, gMapHeader.regionMapSectionId);
    }

    return sNuzlockeCanThrowBallThisBattle;
}

void Nuzlocke_OnMonCaught(struct Pokemon *mon)
{
    Nuzlocke_EnsureMapFlagsInit();
    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return;
    if (Nuzlocke_GetMode() != OPTIONS_NUZLOCKE_NORMAL)
        return;
    if (GetMonData(mon, MON_DATA_IS_SHINY))
        return;

    SetMapFlag(gSaveBlock2Ptr->nuzlockeCaptureMapFlags, gMapHeader.regionMapSectionId);
}

void Nuzlocke_ApplyPermadeathToPlayerParty(void)
{
    bool8 removedAny = FALSE;
    s32 i;

    if (!Nuzlocke_HasStarted())
        return;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE)
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_HP) != 0)
            continue;

        if (TryApplyLoneMonPenalty(&gPlayerParty[i]))
            continue;

        // Nuzlocke release: dead party mons are deleted permanently.
        Nuzlocke_RecordReleasedSpecies(GetMonData(&gPlayerParty[i], MON_DATA_SPECIES));
        ZeroMonData(&gPlayerParty[i]);
        removedAny = TRUE;
    }

    if (removedAny)
        CompactPartySlots();
}

bool8 Nuzlocke_HasLoneMonPenaltyMessage(void)
{
    return sNuzlockeShowLoneMonPenaltyMessage;
}

bool8 Nuzlocke_ConsumeLoneMonPenaltyMessage(void)
{
    bool8 hadMessage = sNuzlockeShowLoneMonPenaltyMessage;
    sNuzlockeShowLoneMonPenaltyMessage = FALSE;
    return hadMessage;
}

const u8 *Nuzlocke_GetLoneMonPenaltyMessage(void)
{
    return sTextNuzlockeLoneMonPenalty;
}
