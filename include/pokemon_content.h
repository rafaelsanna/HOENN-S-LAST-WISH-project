#ifndef GUARD_POKEMON_CONTENT_H
#define GUARD_POKEMON_CONTENT_H

bool32 PokemonContent_IsFiller(u16 species);
bool32 PokemonContent_CanGive(u16 species);
u16 PokemonContent_NextGiveSpecies(u16 species, bool32 backwards);
bool32 PokemonContent_IsChaosSpecies(u16 species);
u16 PokemonContent_ChaosCount(void);
u16 PokemonContent_ChaosSpeciesAt(u16 index);

#endif
