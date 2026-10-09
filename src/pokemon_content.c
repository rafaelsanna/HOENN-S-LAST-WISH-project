#include "global.h"
#include "pokemon.h"
#include "pokemon_content.h"

static const u16 sChaosPool[] =
{
#define CHAOS_SPECIES(name) SPECIES_##name,
#include "data/pokemon/full_chaos_pool.inc"
#undef CHAOS_SPECIES
};

static bool32 IsFillerSlot(u16 species)
{
    switch (species)
    {
#define FILLER_SPECIES(name) case SPECIES_##name:
#include "data/pokemon/filler_species.inc"
#undef FILLER_SPECIES
        return TRUE;
    default:
        return FALSE;
    }
}

bool32 PokemonContent_IsFiller(u16 species)
{
    if (species >= NUM_SPECIES)
        return FALSE;
    if (IsFillerSlot(species))
        return TRUE;
    u16 base = GET_BASE_SPECIES_ID(species);
    if (!IsFillerSlot(base))
        return FALSE;
    // Block forms that inherit the damaged pictures/palettes. A fully
    // independent regional form (e.g. Hisuian Avalugg) remains a real Pokemon.
    return gSpeciesInfo[species].frontPic == gSpeciesInfo[base].frontPic
        || gSpeciesInfo[species].backPic == gSpeciesInfo[base].backPic
        || gSpeciesInfo[species].palette == gSpeciesInfo[base].palette
        || gSpeciesInfo[species].shinyPalette == gSpeciesInfo[base].shinyPalette;
}

bool32 PokemonContent_CanGive(u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES || species == SPECIES_EGG
     || !IsSpeciesEnabled(species) || PokemonContent_IsFiller(species))
        return FALSE;
    return gSpeciesInfo[species].frontPic != NULL
        && gSpeciesInfo[species].backPic != NULL
        && gSpeciesInfo[species].palette != NULL
        && gSpeciesInfo[species].shinyPalette != NULL;
}

u16 PokemonContent_NextGiveSpecies(u16 species, bool32 backwards)
{
    // Bounded scan, including wraparound. Preserve the numeric selector but
    // never show/confirm a filler or disabled entry, even for +/-1000 jumps.
    for (u32 i = 0; i < NUM_SPECIES; i++)
    {
        if (PokemonContent_CanGive(species))
            return species;
        if (backwards)
            species = species <= 1 ? NUM_SPECIES - 1 : species - 1;
        else
            species = species >= NUM_SPECIES - 1 ? 1 : species + 1;
    }
    return SPECIES_NONE;
}

bool32 PokemonContent_IsChaosSpecies(u16 species)
{
    if (!PokemonContent_CanGive(species))
        return FALSE;
    // The roster is sorted by species ID. No per-save list or EWRAM cache.
    u32 lo = 0, hi = ARRAY_COUNT(sChaosPool);
    while (lo < hi)
    {
        u32 mid = lo + (hi - lo) / 2;
        if (sChaosPool[mid] == species)
            return TRUE;
        if (sChaosPool[mid] < species)
            lo = mid + 1;
        else
            hi = mid;
    }
    return FALSE;
}

static bool32 ChaosSpeciesMeetsMinimumBST(u16 species, u16 minimumBST)
{
    if (!PokemonContent_CanGive(species))
        return FALSE;
    if (minimumBST == 0)
        return TRUE;
    const struct SpeciesInfo *info = &gSpeciesInfo[species];
    return info->baseHP + info->baseAttack + info->baseDefense
        + info->baseSpAttack + info->baseSpDefense + info->baseSpeed >= minimumBST;
}

u16 PokemonContent_ChaosCountWithMinBST(u16 minimumBST)
{
    u16 count = 0;
    for (u32 i = 0; i < ARRAY_COUNT(sChaosPool); i++)
        count += ChaosSpeciesMeetsMinimumBST(sChaosPool[i], minimumBST);
    return count;
}

u16 PokemonContent_ChaosSpeciesAtWithMinBST(u16 index, u16 minimumBST)
{
    for (u32 i = 0; i < ARRAY_COUNT(sChaosPool); i++)
        if (ChaosSpeciesMeetsMinimumBST(sChaosPool[i], minimumBST) && index-- == 0)
            return sChaosPool[i];
    return SPECIES_NONE;
}

u16 PokemonContent_ChaosCount(void)
{
    return PokemonContent_ChaosCountWithMinBST(0);
}

u16 PokemonContent_ChaosSpeciesAt(u16 index)
{
    return PokemonContent_ChaosSpeciesAtWithMinBST(index, 0);
}
