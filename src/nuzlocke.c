#include "global.h"
#include "battle.h"
#include "event_data.h"
#include "nuzlocke.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "constants/flags.h"
#include "constants/map_types.h"
#include "constants/battle.h"

static const u8 sTextNuzlockeLoneMonPenalty[] = _("You lost with Nuzlocke, so your only Pokemon lost 2 levels.");

EWRAM_DATA static bool8 sNuzlockeCanThrowBallThisBattle = FALSE;
EWRAM_DATA static bool8 sNuzlockeShowLoneMonPenaltyMessage = FALSE;

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
    return gMapHeader.mapType == MAP_TYPE_ROUTE || gMapHeader.mapType == MAP_TYPE_OCEAN_ROUTE;
}

bool8 Nuzlocke_IsEnabled(void)
{
    return gSaveBlock2Ptr != NULL && gSaveBlock2Ptr->optionsNuzlocke == OPTIONS_NUZLOCKE_ON;
}

static bool8 Nuzlocke_HasStarted(void)
{
    return Nuzlocke_IsEnabled() && FlagGet(FLAG_SYS_POKEDEX_GET);
}

void Nuzlocke_OnBattleStart(void)
{
    u8 mapSecId;
    u8 index;
    u8 bit;

    sNuzlockeCanThrowBallThisBattle = FALSE;

    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
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
    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return TRUE;

    return sNuzlockeCanThrowBallThisBattle;
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
