#include "global.h"
#include "battle.h"
#include "event_data.h"
#include "nuzlocke.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "constants/flags.h"
#include "constants/map_types.h"
#include "constants/battle.h"

EWRAM_DATA static bool8 sNuzlockeCanThrowBallThisBattle = FALSE;

static bool8 IsTrackableWildBattle(void)
{
    if (gBattleTypeFlags & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_SAFARI | BATTLE_TYPE_WALLY_TUTORIAL))
        return FALSE;

    // Nuzlocke encounter lock starts only after obtaining the Pokedex.
    if (!FlagGet(FLAG_SYS_POKEDEX_GET))
        return FALSE;

    // Encounter areas are route map sections.
    return gMapHeader.mapType == MAP_TYPE_ROUTE || gMapHeader.mapType == MAP_TYPE_OCEAN_ROUTE;
}

bool8 Nuzlocke_IsEnabled(void)
{
    return gSaveBlock2Ptr != NULL && gSaveBlock2Ptr->optionsNuzlocke == OPTIONS_NUZLOCKE_ON;
}

void Nuzlocke_OnBattleStart(void)
{
    u8 mapSecId;
    u8 index;
    u8 bit;

    sNuzlockeCanThrowBallThisBattle = FALSE;

    if (!Nuzlocke_IsEnabled() || !IsTrackableWildBattle())
        return;

    mapSecId = gMapHeader.regionMapSectionId;
    index = mapSecId >> 3;
    bit = 1 << (mapSecId & 7);

    if (!(gSaveBlock2Ptr->nuzlockeEncounterMapFlags[index] & bit))
    {
        gSaveBlock2Ptr->nuzlockeEncounterMapFlags[index] |= bit;
        sNuzlockeCanThrowBallThisBattle = TRUE;
    }
}

bool8 Nuzlocke_CanThrowBallThisBattle(void)
{
    if (!Nuzlocke_IsEnabled() || !IsTrackableWildBattle())
        return TRUE;

    return sNuzlockeCanThrowBallThisBattle;
}

void Nuzlocke_ApplyPermadeathToPlayerParty(void)
{
    bool8 removedAny = FALSE;
    s32 i;

    if (!Nuzlocke_IsEnabled())
        return;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE)
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_HP) != 0)
            continue;

        // Nuzlocke release: dead party mons are deleted permanently.
        ZeroMonData(&gPlayerParty[i]);
        removedAny = TRUE;
    }

    if (removedAny)
        CompactPartySlots();
}
