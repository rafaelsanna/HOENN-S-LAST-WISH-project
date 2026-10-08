#ifndef GUARD_SPECIES_RELOCATION_H
#define GUARD_SPECIES_RELOCATION_H

struct BoxPokemon;
struct HallofFameTeam;

// Only for historical registry identities and pre-relocation save data.
// Ordinary species lookups must NOT translate the restored native Pokemon.
u16 HlwSpecies_GetCurrentSpecies(u16 legacySpecies);
void HlwSpecies_MigrateBoxMon(struct BoxPokemon *mon);
void HlwSpecies_MigrateSave(void);
void HlwSpecies_MigrateHallOfFame(struct HallofFameTeam *teams);

#endif
