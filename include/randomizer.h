#ifndef GUARD_RANDOMIZER_H
#define GUARD_RANDOMIZER_H

#include "config/randomizer.h"

#if RANDOMIZER_AVAILABLE == TRUE

enum RandomizerContext
{
    RZ_CTX_WILD_ENCOUNTER,
    RZ_CTX_TRAINER_MON
};

enum RandomizerSpeciesMode
{
    MON_RANDOM,
    MON_RANDOM_NO_LEGEND,
    MON_RANDOM_BST,
    MON_EVOLUTION_STAGE,
    MAX_RANDOMIZER_SPECIES_MODE
};

void Randomizer_Init(bool8 randomizeWild, bool8 randomizeTrainers, enum RandomizerSpeciesMode mode);
bool8 Randomizer_WildEnabled(void);
bool8 Randomizer_TrainerEnabled(void);
enum RandomizerSpeciesMode Randomizer_GetSpeciesMode(void);
u32 Randomizer_GetSeed(void);
u16 Randomizer_GetSpecies(u16 originalSpecies, enum RandomizerContext context, u32 contextKey);
u16 Randomizer_OnWildEncounter(u16 species, u8 mapGroup, u8 mapNum, u8 area, u8 slot);
u16 Randomizer_OnTrainerMon(u16 species, u16 trainerId, u8 slotIndex);

#include "script.h"
void RandomizerApplyFromVars_NativeCall(struct ScriptContext *ctx);

#else

#define Randomizer_WildEnabled() FALSE
#define Randomizer_TrainerEnabled() FALSE
#define Randomizer_OnWildEncounter(species, mapGroup, mapNum, area, slot) (species)
#define Randomizer_OnTrainerMon(species, trainerId, slotIndex) (species)
#define Randomizer_Init(wild, trainers, mode) ((void)0)

#endif

#endif
