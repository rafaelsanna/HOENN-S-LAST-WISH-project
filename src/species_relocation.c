#include "global.h"
#include "species_relocation.h"
#include "battle_tower.h"
#include "event_data.h"
#include "hall_of_fame.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "constants/event_objects.h"
#include "constants/flags.h"
#include "constants/pokedex.h"
#include "constants/vars.h"
#include "dexnav.h"

struct SpeciesRelocation
{
    u16 oldSpecies;
    u16 newSpecies;
};

static const struct SpeciesRelocation sRelocations[] =
{
    {SPECIES_DARKRAI, SPECIES_DACHSBUN},     // Howlyena
    {SPECIES_VOLCARONA, SPECIES_ARBOLIVA},   // Vesperain
    {SPECIES_DRUDDIGON, SPECIES_PAWMOT},     // Dragonami
    {SPECIES_VIRIZION, SPECIES_WIGLETT},     // Mandraloom
    {SPECIES_BIBAREL, SPECIES_SCOVILLAIN},   // Ratybara
    {SPECIES_DUCKLETT, SPECIES_NICKIT},      // Shadow Jirachi
    {SPECIES_ESCAVALIER, SPECIES_CLOBBOPUS}, // Shadow Celebi
    {SPECIES_SWANNA, SPECIES_GRAPPLOCT},    // Dark Suicune
};

u16 HlwSpecies_GetCurrentSpecies(u16 legacySpecies)
{
    for (u32 i = 0; i < ARRAY_COUNT(sRelocations); i++)
        if (sRelocations[i].oldSpecies == legacySpecies)
            return sRelocations[i].newSpecies;
    return legacySpecies;
}

void HlwSpecies_MigrateBoxMon(struct BoxPokemon *mon)
{
    u16 oldSpecies = GetBoxMonData(mon, MON_DATA_SPECIES);
    u16 newSpecies = HlwSpecies_GetCurrentSpecies(oldSpecies);
    if (newSpecies != oldSpecies)
        // The accessor preserves encryption, personality, nickname and all
        // trained data, and recomputes the encrypted Pokemon's checksum.
        SetBoxMonData(mon, MON_DATA_SPECIES, &newSpecies);
}

static u16 MigrateGraphics(u16 graphicsId)
{
    if (graphicsId & OBJ_EVENT_MON)
        return (graphicsId & ~OBJ_EVENT_MON_SPECIES_MASK)
             | HlwSpecies_GetCurrentSpecies(graphicsId & OBJ_EVENT_MON_SPECIES_MASK);
    return graphicsId;
}

static void MoveBit(u8 *bits, u16 oldIndex, u16 newIndex)
{
    if (bits[oldIndex / 8] & (1 << (oldIndex % 8)))
        bits[newIndex / 8] |= 1 << (newIndex % 8);
    bits[oldIndex / 8] &= ~(1 << (oldIndex % 8));
}

static void MigrateTowerRecord(struct EmeraldBattleTowerRecord *record)
{
    bool32 changed = FALSE;
    for (u32 i = 0; i < ARRAY_COUNT(record->party); i++)
    {
        u16 species = HlwSpecies_GetCurrentSpecies(record->party[i].species);
        changed |= species != record->party[i].species;
        record->party[i].species = species;
    }
    if (changed)
        CalcEmeraldBattleTowerChecksum(record);
}

static void MigrateTVShow(TVShow *show)
{
#define MOVE(member, field) show->member.field = HlwSpecies_GetCurrentSpecies(show->member.field)
    // Only typed species fields: scanning the union as u16 would corrupt
    // names, moves and other unrelated data that happen to match an old ID.
    switch (show->common.kind)
    {
    case TVSHOW_FAN_CLUB_LETTER: MOVE(fanclubLetter, species); break;
    case TVSHOW_RECENT_HAPPENINGS: MOVE(recentHappenings, species); break;
    case TVSHOW_PKMN_FAN_CLUB_OPINIONS: MOVE(fanclubOpinions, species); break;
    case TVSHOW_DUMMY: MOVE(dummy, species); break;
    case TVSHOW_NAME_RATER_SHOW: MOVE(nameRaterShow, species); MOVE(nameRaterShow, randomSpecies); break;
    case TVSHOW_BRAVO_TRAINER_POKEMON_PROFILE: MOVE(bravoTrainer, species); break;
    case TVSHOW_BRAVO_TRAINER_BATTLE_TOWER_PROFILE: MOVE(bravoTrainerTower, species); MOVE(bravoTrainerTower, defeatedSpecies); break;
    case TVSHOW_CONTEST_LIVE_UPDATES: MOVE(contestLiveUpdates, losingSpecies); MOVE(contestLiveUpdates, winningSpecies); break;
    case TVSHOW_BATTLE_UPDATE: MOVE(battleUpdate, speciesOpponent); MOVE(battleUpdate, speciesPlayer); break;
    case TVSHOW_POKEMON_TODAY_CAUGHT: MOVE(pokemonToday, species); break;
    case TVSHOW_POKEMON_TODAY_FAILED: MOVE(pokemonTodayFailed, species); MOVE(pokemonTodayFailed, species2); break;
    case TVSHOW_FISHING_ADVICE: MOVE(pokemonAngler, species); break;
    case TVSHOW_WORLD_OF_MASTERS: MOVE(worldOfMasters, species); break;
    case TVSHOW_BREAKING_NEWS: MOVE(breakingNews, lastOpponentSpecies); MOVE(breakingNews, poke1Species); break;
    case TVSHOW_SECRET_BASE_VISIT: MOVE(secretBaseVisit, species); break;
    case TVSHOW_BATTLE_SEMINAR: MOVE(battleSeminar, species); MOVE(battleSeminar, foeSpecies); break;
    case TVSHOW_FRONTIER: MOVE(frontier, species1); MOVE(frontier, species2); MOVE(frontier, species3); MOVE(frontier, species4); break;
    case TVSHOW_MASS_OUTBREAK: MOVE(massOutbreak, species); break;
    }
#undef MOVE
}

void HlwSpecies_MigrateSave(void)
{
    if (FlagGet(FLAG_HLW_SPECIES_RELOCATED))
        return;

    for (u32 i = 0; i < PARTY_SIZE; i++)
    {
        HlwSpecies_MigrateBoxMon(&gPlayerParty[i].box);
        HlwSpecies_MigrateBoxMon(&gSaveBlock1Ptr->playerParty[i].box);
    }
    for (u32 box = 0; box < TOTAL_BOXES_COUNT; box++)
        for (u32 i = 0; i < IN_BOX_COUNT; i++)
            HlwSpecies_MigrateBoxMon(&gPokemonStoragePtr->boxes[box][i]);
    for (u32 i = 0; i < ARRAY_COUNT(gSaveBlock1Ptr->daycare.mons); i++)
    {
        HlwSpecies_MigrateBoxMon(&gSaveBlock1Ptr->daycare.mons[i].mon);
        gSaveBlock1Ptr->daycare.mons[i].mail.message.species = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->daycare.mons[i].mail.message.species);
    }
    for (u32 i = 0; i < ARRAY_COUNT(sRelocations); i++)
    {
        u16 oldSpecies = sRelocations[i].oldSpecies;
        u16 newSpecies = sRelocations[i].newSpecies;
        MoveBit(gSaveBlock3Ptr->dexSeen, SpeciesToNationalPokedexNum(oldSpecies) - 1, SpeciesToNationalPokedexNum(newSpecies) - 1);
        MoveBit(gSaveBlock3Ptr->dexCaught, SpeciesToNationalPokedexNum(oldSpecies) - 1, SpeciesToNationalPokedexNum(newSpecies) - 1);
        MoveBit(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, oldSpecies, newSpecies);
        gHlwSaveBlock4.dexNavSearch[newSpecies] = max(gHlwSaveBlock4.dexNavSearch[newSpecies], gHlwSaveBlock4.dexNavSearch[oldSpecies]);
        gHlwSaveBlock4.dexNavSearch[oldSpecies] = 0;
    }
    for (u32 i = 0; i < OBJECT_EVENTS_COUNT; i++)
    {
        gObjectEvents[i].graphicsId = MigrateGraphics(gObjectEvents[i].graphicsId);
        // Saved graphics IDs are byte-swapped by SaveObjectEvents. Keep the
        // serialized RAM copy consistent if it is loaded again before saving.
        u16 saved = gSaveBlock1Ptr->objectEvents[i].graphicsId;
        saved = MigrateGraphics((saved >> 8) | (saved << 8));
        gSaveBlock1Ptr->objectEvents[i].graphicsId = (saved >> 8) | (saved << 8);
    }
    for (u32 i = 0; i < OBJECT_EVENT_TEMPLATES_COUNT; i++)
        gSaveBlock1Ptr->objectEventTemplates[i].graphicsId = MigrateGraphics(gSaveBlock1Ptr->objectEventTemplates[i].graphicsId);
    for (u32 var = VAR_OBJ_GFX_ID_0; var <= VAR_OBJ_GFX_ID_F; var++)
        VarSet(var, MigrateGraphics(VarGet(var)));
    {
        u16 registered = VarGet(DN_VAR_SPECIES);
        VarSet(DN_VAR_SPECIES, (registered & ~DEXNAV_MASK_SPECIES) | HlwSpecies_GetCurrentSpecies(registered & DEXNAV_MASK_SPECIES));
    }
    for (u32 i = 0; i < SECRET_BASES_COUNT; i++)
        for (u32 j = 0; j < PARTY_SIZE; j++)
            gSaveBlock1Ptr->secretBases[i].party.species[j] = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->secretBases[i].party.species[j]);
    for (u32 i = 0; i < NUM_CONTEST_WINNERS; i++)
        gSaveBlock1Ptr->contestWinners[i].species = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->contestWinners[i].species);
    for (u32 i = 0; i < ROAMER_COUNT; i++)
        gSaveBlock1Ptr->roamer[i].species = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->roamer[i].species);
    for (u32 i = 0; i < MAIL_COUNT; i++)
        gSaveBlock1Ptr->mail[i].species = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->mail[i].species);
    for (u32 i = 0; i < TV_SHOWS_COUNT; i++)
        MigrateTVShow(&gSaveBlock1Ptr->tvShows[i]);
    gSaveBlock1Ptr->outbreakPokemonSpecies = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->outbreakPokemonSpecies);
    gSaveBlock1Ptr->gabbyAndTyData.mon1 = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->gabbyAndTyData.mon1);
    gSaveBlock1Ptr->gabbyAndTyData.mon2 = HlwSpecies_GetCurrentSpecies(gSaveBlock1Ptr->gabbyAndTyData.mon2);
    MigrateTowerRecord(&gSaveBlock2Ptr->frontier.towerPlayer);
    for (u32 i = 0; i < BATTLE_TOWER_RECORD_COUNT; i++)
        MigrateTowerRecord(&gSaveBlock2Ptr->frontier.towerRecords[i]);
#if FREE_BATTLE_TOWER_E_READER == FALSE
    {
        struct BattleTowerEReaderTrainer *record = &gSaveBlock2Ptr->frontier.ereaderTrainer;
        bool32 changed = FALSE;
        for (u32 i = 0; i < ARRAY_COUNT(record->party); i++)
        {
            u16 species = HlwSpecies_GetCurrentSpecies(record->party[i].species);
            changed |= species != record->party[i].species;
            record->party[i].species = species;
        }
        if (changed)
            SetEReaderTrainerChecksum(record);
    }
#endif //FREE_BATTLE_TOWER_E_READER
    gSaveBlock2Ptr->frontier.towerInterview.playerSpecies = HlwSpecies_GetCurrentSpecies(gSaveBlock2Ptr->frontier.towerInterview.playerSpecies);
    gSaveBlock2Ptr->frontier.towerInterview.opponentSpecies = HlwSpecies_GetCurrentSpecies(gSaveBlock2Ptr->frontier.towerInterview.opponentSpecies);
    for (u32 i = 0; i < APPRENTICE_COUNT; i++)
    {
        bool32 changed = FALSE;
        for (u32 j = 0; j < ARRAY_COUNT(gSaveBlock2Ptr->apprentices[i].party); j++)
        {
            u16 species = HlwSpecies_GetCurrentSpecies(gSaveBlock2Ptr->apprentices[i].party[j].species);
            changed |= species != gSaveBlock2Ptr->apprentices[i].party[j].species;
            gSaveBlock2Ptr->apprentices[i].party[j].species = species;
        }
        if (changed)
            CalcApprenticeChecksum(&gSaveBlock2Ptr->apprentices[i]);
    }
    // Wish and Shadow bitmaps use stable content IDs; no bit relocation is
    // needed. Persist the one-time marker only with the next normal save.
    FlagSet(FLAG_HLW_SPECIES_RELOCATED);
}

void HlwSpecies_MigrateHallOfFame(struct HallofFameTeam *teams)
{
    if (FlagGet(FLAG_HLW_HOF_SPECIES_RELOCATED))
        return;
    for (u32 i = 0; i < HLW_HOF_TOTAL_TEAMS; i++)
        for (u32 j = 0; j < PARTY_SIZE; j++)
            teams[i].mon[j].species = HlwSpecies_GetCurrentSpecies(teams[i].mon[j].species);
    // This is a RAM view only. The marker is published atomically by the HOF
    // transaction, after the translated archive and extension are verified.
}
