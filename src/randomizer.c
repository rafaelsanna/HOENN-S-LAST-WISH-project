// ============================================================
// src/randomizer.c — Randomizador In-Game (VERSÃO CORRIGIDA)
// Baseada na versão que funcionava, com inicialização do RNG
// ============================================================

#include "global.h"
#include "randomizer.h"
#include "event_data.h"
#include "pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/species.h"

#ifndef EVOS_PER_MON
#define EVOS_PER_MON 5
#endif

#if RANDOMIZER_AVAILABLE == TRUE

static const u16 sHoennDexPool[] =
{
    // ── Starters ─────────────────────────────────────────────────────────
    SPECIES_BULBASAUR,
    SPECIES_IVYSAUR,
    SPECIES_VENUSAUR,
    SPECIES_TOTODILE,
    SPECIES_CROCONAW,
    SPECIES_FERALIGATR,
    SPECIES_TORCHIC,
    SPECIES_COMBUSKEN,
    SPECIES_BLAZIKEN,

    // ── Rotas iniciais ────────────────────────────────────────────────────
    SPECIES_POOCHYENA,
    SPECIES_MIGHTYENA,
    SPECIES_DARKRAI,
    SPECIES_ZIGZAGOON,
    SPECIES_LINOONE,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GALARIAN_FORMS
    SPECIES_OBSTAGOON,
#endif
    SPECIES_SENTRET,
    SPECIES_FURRET,
    SPECIES_WURMPLE,
    SPECIES_SILCOON,
    SPECIES_BEAUTIFLY,
    SPECIES_CASCOON,
    SPECIES_DUSTOX,
    SPECIES_NIDORAN_F,
    SPECIES_NIDORINA,
    SPECIES_NIDOQUEEN,
    SPECIES_NIDORAN_M,
    SPECIES_NIDORINO,
    SPECIES_NIDOKING,
    SPECIES_RATTATA,
    SPECIES_RATICATE,
    SPECIES_BIBAREL,
    SPECIES_LOTAD,
    SPECIES_LOMBRE,
    SPECIES_LUDICOLO,
    SPECIES_SEEDOT,
    SPECIES_NUZLEAF,
    SPECIES_SHIFTRY,
    SPECIES_TAILLOW,
    SPECIES_SWELLOW,
    SPECIES_WINGULL,
    SPECIES_PELIPPER,
    SPECIES_PIDGEY,
    SPECIES_PIDGEOTTO,
    SPECIES_PIDGEOT,
    SPECIES_RALTS,
    SPECIES_KIRLIA,
    SPECIES_GARDEVOIR,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_GALLADE,
#endif
    SPECIES_SURSKIT,
    SPECIES_MASQUERAIN,
    SPECIES_VOLCARONA,
    SPECIES_SHROOMISH,
    SPECIES_BRELOOM,
    SPECIES_SLAKOTH,
    SPECIES_VIGOROTH,
    SPECIES_SLAKING,
    SPECIES_ABRA,
    SPECIES_KADABRA,
    SPECIES_ALAKAZAM,
    SPECIES_NINCADA,
    SPECIES_NINJASK,
    SPECIES_SHEDINJA,
    SPECIES_WHISMUR,
    SPECIES_LOUDRED,
    SPECIES_EXPLOUD,
    SPECIES_MAKUHITA,
    SPECIES_HARIYAMA,

    // ── Linhas aquáticas ──────────────────────────────────────────────────
    SPECIES_POLIWAG,
    SPECIES_POLIWHIRL,
    SPECIES_POLIWRATH,
    SPECIES_POLITOED,
    SPECIES_GOLDEEN,
    SPECIES_SEAKING,
    SPECIES_MAGIKARP,
    SPECIES_GYARADOS,
    SPECIES_AZURILL,
    SPECIES_MARILL,
    SPECIES_AZUMARILL,
    SPECIES_HOPPIP,
    SPECIES_SKIPLOOM,
    SPECIES_JUMPLUFF,

    // ── Rocha / Terra ─────────────────────────────────────────────────────
    SPECIES_GEODUDE,
    SPECIES_GRAVELER,
    SPECIES_GOLEM,
    SPECIES_NOSEPASS,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_PROBOPASS,
#endif

    // ── Normais / Fofos ───────────────────────────────────────────────────
    SPECIES_SKITTY,
    SPECIES_DELCATTY,

    // ── Veneno / Voadores ─────────────────────────────────────────────────
    SPECIES_ZUBAT,
    SPECIES_GOLBAT,
    SPECIES_CROBAT,
    SPECIES_TENTACOOL,
    SPECIES_TENTACRUEL,

    // ── Sombra / Aço ──────────────────────────────────────────────────────
    SPECIES_SABLEYE,
    SPECIES_MAWILE,
    SPECIES_ARON,
    SPECIES_LAIRON,
    SPECIES_AGGRON,

    // ── Normal / Lutador ──────────────────────────────────────────────────
    SPECIES_MEOWTH,
    SPECIES_PERSIAN,
    SPECIES_MANKEY,
    SPECIES_PRIMEAPE,
    SPECIES_ANNIHILAPE,
    SPECIES_MACHOP,
    SPECIES_MACHOKE,
    SPECIES_MACHAMP,
    SPECIES_MEDITITE,
    SPECIES_MEDICHAM,

    // ── Elétrico ──────────────────────────────────────────────────────────
    SPECIES_ELECTRIKE,
    SPECIES_MANECTRIC,
    SPECIES_PLUSLE,
    SPECIES_MINUN,
    SPECIES_MAGNEMITE,
    SPECIES_MAGNETON,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_MAGNEZONE,
#endif
    SPECIES_VOLTORB,
    SPECIES_ELECTRODE,
    SPECIES_VOLBEAT,
    SPECIES_ILLUMISE,

    // ── Grama / Veneno ────────────────────────────────────────────────────
    SPECIES_ODDISH,
    SPECIES_GLOOM,
    SPECIES_VILEPLUME,
    SPECIES_BELLOSSOM,
    SPECIES_DODUO,
    SPECIES_DODRIO,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_BUDEW,
    SPECIES_ROSELIA,
    SPECIES_ROSERADE,
#else
    SPECIES_ROSELIA,
#endif
    SPECIES_GULPIN,
    SPECIES_SWALOT,

    // ── Água / Escuro ─────────────────────────────────────────────────────
    SPECIES_CARVANHA,
    SPECIES_SHARPEDO,
    SPECIES_WAILMER,
    SPECIES_WAILORD,

    // ── Fogo / Terra ──────────────────────────────────────────────────────
    SPECIES_NUMEL,
    SPECIES_CAMERUPT,
    SPECIES_SLUGMA,
    SPECIES_MAGCARGO,
    SPECIES_TORKOAL,
    SPECIES_HOUNDOUR,
    SPECIES_HOUNDOOM,
    SPECIES_SNUBBULL,
    SPECIES_GRANBULL,

    // ── Veneno ────────────────────────────────────────────────────────────
    SPECIES_GRIMER,
    SPECIES_MUK,
    SPECIES_KOFFING,
    SPECIES_WEEZING,

    // ── Psíquico ──────────────────────────────────────────────────────────
    SPECIES_SPOINK,
    SPECIES_GRUMPIG,

    // ── Terra ─────────────────────────────────────────────────────────────
    SPECIES_SANDSHREW,
    SPECIES_SANDSLASH,
    SPECIES_PINECO,
    SPECIES_FORRETRESS,
    SPECIES_SPINDA,

    // ── Aço / Voador ──────────────────────────────────────────────────────
    SPECIES_SKARMORY,
    SPECIES_SCYTHER,
    SPECIES_SCIZOR,
    SPECIES_KLEAVOR,

    // ── Gelo / Escuro ─────────────────────────────────────────────────────
    SPECIES_SNEASEL,
    SPECIES_WEAVILE,

    // ── Dragão / Terra ────────────────────────────────────────────────────
    SPECIES_TRAPINCH,
    SPECIES_VIBRAVA,
    SPECIES_FLYGON,

    // ── Grama / Escuro ────────────────────────────────────────────────────
    SPECIES_CACNEA,
    SPECIES_CACTURNE,

    // ── Terra / Voador ────────────────────────────────────────────────────
    SPECIES_GLIGAR,
    SPECIES_GLISCOR,

    // ── Normal / Dragão ───────────────────────────────────────────────────
    SPECIES_SWABLU,
    SPECIES_ALTARIA,

    // ── Normal ────────────────────────────────────────────────────────────
    SPECIES_ZANGOOSE,
    SPECIES_TEDDIURSA,
    SPECIES_URSARING,
    SPECIES_URSALUNA,

    // ── Veneno / Normal ───────────────────────────────────────────────────
    SPECIES_SEVIPER,

    // ── Rocha / Psíquico ──────────────────────────────────────────────────
    SPECIES_LUNATONE,
    SPECIES_SOLROCK,

    // ── Fada ──────────────────────────────────────────────────────────────
    SPECIES_CLEFFA,
    SPECIES_CLEFAIRY,
    SPECIES_CLEFABLE,

    // ── Água / Terra ──────────────────────────────────────────────────────
    SPECIES_BARBOACH,
    SPECIES_WHISCASH,
    SPECIES_CORPHISH,
    SPECIES_CRAWDAUNT,

    // ── Terra / Psíquico ──────────────────────────────────────────────────
    SPECIES_BALTOY,
    SPECIES_CLAYDOL,

    // ── Fósseis ───────────────────────────────────────────────────────────
    SPECIES_LILEEP,
    SPECIES_CRADILY,
    SPECIES_ANORITH,
    SPECIES_ARMALDO,

    // ── Normal / Fada ─────────────────────────────────────────────────────
    SPECIES_IGGLYBUFF,
    SPECIES_JIGGLYPUFF,
    SPECIES_WIGGLYTUFF,

    // ── Água ──────────────────────────────────────────────────────────────
    SPECIES_FEEBAS,
    SPECIES_MILOTIC,
    SPECIES_CASTFORM,
    SPECIES_STARYU,
    SPECIES_STARMIE,

    // ── Normal ────────────────────────────────────────────────────────────
    SPECIES_KECLEON,

    // ── Fantasma ──────────────────────────────────────────────────────────
    SPECIES_SHUPPET,
    SPECIES_BANETTE,
    SPECIES_DUSKULL,
    SPECIES_DUSCLOPS,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_DUSKNOIR,
#endif
    SPECIES_GASTLY,
    SPECIES_HAUNTER,
    SPECIES_GENGAR,

    // ── Grama / Normal ───────────────────────────────────────────────────
    SPECIES_TROPIUS,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_CHINGLING,
#endif
    SPECIES_YANMA,
    SPECIES_YANMEGA,

    // ── Psíquico / Normal ────────────────────────────────────────────────
    SPECIES_CHIMECHO,

    // ── Escuro ────────────────────────────────────────────────────────────
    SPECIES_ABSOL,
    SPECIES_MISDREAVUS,
    SPECIES_MISMAGIUS,

    // ── Fogo ──────────────────────────────────────────────────────────────
    SPECIES_VULPIX,
    SPECIES_NINETALES,
    SPECIES_GROWLITHE,
    SPECIES_ARCANINE,

    // ── Elétrico / Normal ────────────────────────────────────────────────
    SPECIES_PICHU,
    SPECIES_PIKACHU,
    SPECIES_RAICHU,

    // ── Eevee e evoluções ────────────────────────────────────────────────
    SPECIES_EEVEE,
    SPECIES_VAPOREON,
    SPECIES_JOLTEON,
    SPECIES_FLAREON,
    SPECIES_ESPEON,
    SPECIES_UMBREON,
    SPECIES_LEAFEON,
    SPECIES_GLACEON,
    SPECIES_SYLVEON,

    // ── Água / Psíquico ──────────────────────────────────────────────────
    SPECIES_PSYDUCK,
    SPECIES_GOLDUCK,
    SPECIES_SLOWPOKE,
    SPECIES_SLOWBRO,
    SPECIES_SLOWKING,
    SPECIES_WOOPER,
    SPECIES_QUAGSIRE,

    // ── Grama ────────────────────────────────────────────────────────────
    SPECIES_TANGELA,
    SPECIES_TANGROWTH,

    // ── Psíquico ─────────────────────────────────────────────────────────
    SPECIES_WYNAUT,
    SPECIES_WOBBUFFET,
    SPECIES_NATU,
    SPECIES_XATU,

    // ── Voador / Escuro ──────────────────────────────────────────────────
    SPECIES_MURKROW,
    SPECIES_HONCHKROW,

    // ── Normal / Psíquico ────────────────────────────────────────────────
    SPECIES_GIRAFARIG,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_9_CROSS_EVOS
    SPECIES_FARIGIRAF,
#endif
    SPECIES_STANTLER,
    SPECIES_WYRDEER,

    // ── Terra ────────────────────────────────────────────────────────────
    SPECIES_PHANPY,
    SPECIES_DONPHAN,

    // ── Normal ───────────────────────────────────────────────────────────
    SPECIES_SMEARGLE,
    SPECIES_PINSIR,
    SPECIES_HERACROSS,

    // ── Terra / Rocha ────────────────────────────────────────────────────
    SPECIES_RHYHORN,
    SPECIES_RHYDON,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_RHYPERIOR,
#endif

    // ── Fada / Voador ────────────────────────────────────────────────────
    SPECIES_TOGEPI,
    SPECIES_TOGETIC,
    SPECIES_TOGEKISS,

    // ── Elétrico / Fogo ──────────────────────────────────────────────────
    SPECIES_ELEKID,
    SPECIES_ELECTABUZZ,
    SPECIES_ELECTIVIRE,
    SPECIES_MAGBY,
    SPECIES_MAGMAR,
    SPECIES_MAGMORTAR,

    // ── Gelo / Psíquico ──────────────────────────────────────────────────
    SPECIES_SMOOCHUM,
    SPECIES_JYNX,

    // ── Gelo ─────────────────────────────────────────────────────────────
    SPECIES_SNORUNT,
    SPECIES_GLALIE,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GEN_4_CROSS_EVOS
    SPECIES_FROSLASS,
#endif
    SPECIES_SPHEAL,
    SPECIES_SEALEO,
    SPECIES_WALREIN,

    // ── Água ─────────────────────────────────────────────────────────────
    SPECIES_CLAMPERL,
    SPECIES_HUNTAIL,
    SPECIES_GOREBYSS,
    SPECIES_RELICANTH,
    SPECIES_CORSOLA,
#if P_NEW_EVOS_IN_REGIONAL_DEX && P_GALARIAN_FORMS
    SPECIES_CURSOLA,
#endif
    SPECIES_CHINCHOU,
    SPECIES_LANTURN,
    SPECIES_MANTYKE,
    SPECIES_MANTINE,
    SPECIES_LUVDISC,
    SPECIES_LAPRAS,
    SPECIES_HORSEA,
    SPECIES_SEADRA,
    SPECIES_KINGDRA,

    // ── Dragão ───────────────────────────────────────────────────────────
    SPECIES_DRATINI,
    SPECIES_DRAGONAIR,
    SPECIES_DRAGONITE,
    SPECIES_DRUDDIGON,
    SPECIES_BAGON,
    SPECIES_SHELGON,
    SPECIES_SALAMENCE,

    // ── Aço / Psíquico ───────────────────────────────────────────────────
    SPECIES_BELDUM,
    SPECIES_METANG,
    SPECIES_METAGROSS,

    // ── Lendários ────────────────────────────────────────────────────────
    // Incluídos no pool para que possam ser randomizados entre si,
    // mas RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON os bloqueia em
    // encontros comuns quando o original NÃO é lendário.
    SPECIES_REGIROCK,
    SPECIES_REGICE,
    SPECIES_REGISTEEL,
    SPECIES_LATIAS,
    SPECIES_LATIOS,
    SPECIES_KYOGRE,
    SPECIES_GROUDON,
    SPECIES_RAYQUAZA,
    SPECIES_CELEBI,
    SPECIES_JIRACHI,
    SPECIES_DEOXYS,
};

// Tamanho calculado em tempo de compilação — nunca desincroniza do array.
#define HOENN_POOL_SIZE ARRAY_COUNT(sHoennDexPool)

// EWRAM - inicializada como 0
EWRAM_DATA static u32 sRngState = 0;

// Inicialização do RNG
static void Rz_InitRNG(void)
{
    if (sRngState == 0)
    {
        if (gSaveBlock2Ptr != NULL)
        {
            sRngState = (u32)gSaveBlock2Ptr->playerTrainerId[0]
                      | ((u32)gSaveBlock2Ptr->playerTrainerId[1] << 8)
                      | ((u32)gSaveBlock2Ptr->playerTrainerId[2] << 16)
                      | ((u32)gSaveBlock2Ptr->playerTrainerId[3] << 24);
        }
        if (sRngState == 0)
            sRngState = 0x12345678;
    }
}

// RNG original (xorshift32)
static u32 Rz_Xorshift32(u32 x)
{
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    return x;
}

static u32 Rz_MixSeed(u32 seed, u32 context)
{
    u32 h = seed ^ context;
    h ^= h >> 16;
    h *= 0x45d9f3b;
    h ^= h >> 16;
    h *= 0x45d9f3b;
    h ^= h >> 16;
    return h != 0 ? h : 1;
}

static u32 Rz_Next(u32 *state, u32 range)
{
    Rz_InitRNG();  // ⭐ GARANTE INICIALIZAÇÃO
    *state = Rz_Xorshift32(*state);
    return (u32)(((u64)(*state) * range) >> 32);
}

// Funções públicas
bool8 Randomizer_WildEnabled(void)
{
    return FlagGet(RANDOMIZER_FLAG_WILD_MON);
}

bool8 Randomizer_TrainerEnabled(void)
{
    return FlagGet(RANDOMIZER_FLAG_TRAINER_MON);
}

u32 Randomizer_GetSeed(void)
{
    if (gSaveBlock2Ptr != NULL)
    {
        return (u32)gSaveBlock2Ptr->playerTrainerId[0]
             | ((u32)gSaveBlock2Ptr->playerTrainerId[1] << 8)
             | ((u32)gSaveBlock2Ptr->playerTrainerId[2] << 16)
             | ((u32)gSaveBlock2Ptr->playerTrainerId[3] << 24);
    }
    return 0x12345678;
}

enum RandomizerSpeciesMode Randomizer_GetSpeciesMode(void)
{
    u16 mode = VarGet(RANDOMIZER_VAR_SPECIES_MODE);
    if (mode >= MAX_RANDOMIZER_SPECIES_MODE)
        return MON_RANDOM;
    return (enum RandomizerSpeciesMode)mode;
}

void Randomizer_Init(bool8 randomizeWild, bool8 randomizeTrainers, enum RandomizerSpeciesMode mode)
{
    if (randomizeWild)
        FlagSet(RANDOMIZER_FLAG_WILD_MON);
    else
        FlagClear(RANDOMIZER_FLAG_WILD_MON);

    if (randomizeTrainers)
        FlagSet(RANDOMIZER_FLAG_TRAINER_MON);
    else
        FlagClear(RANDOMIZER_FLAG_TRAINER_MON);

    VarSet(RANDOMIZER_VAR_SPECIES_MODE, (u16)mode);
}

// Predicados (versão simplificada para não dar lag)
static bool8 Rz_IsLegendary(u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return FALSE;
    return gSpeciesInfo[species].isLegendary || gSpeciesInfo[species].isMythical;
}

static u16 Rz_GetBST(u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return 0;
    return (u16)(gSpeciesInfo[species].baseHP + gSpeciesInfo[species].baseAttack
               + gSpeciesInfo[species].baseDefense + gSpeciesInfo[species].baseSpAttack
               + gSpeciesInfo[species].baseSpDefense + gSpeciesInfo[species].baseSpeed);
}

static u8 Rz_GetEvolutionStage(u16 species)
{
    u16 s;
    u8 stage = 0;
    u16 prev = species;
    while (stage < 5)
    {
        bool8 foundPrev = FALSE;
        for (s = 1; s < NUM_SPECIES; s++)
        {
            for (u8 i = 0; i < EVOS_PER_MON; i++)
            {
                if (gSpeciesInfo[s].evolutions[i].targetSpecies == prev)
                {
                    prev = s;
                    foundPrev = TRUE;
                    break;
                }
            }
            if (foundPrev) break;
        }
        if (!foundPrev) break;
        stage++;
    }
    return stage;
}

// Core de randomização
static u16 Rz_CountValidFromPool(enum RandomizerSpeciesMode mode, u16 originalSpecies,
                                  bool8 isOriginalLegendary, u16 originalBST, u8 originalStage)
{
    u16 count = 0;
    for (u16 i = 0; i < HOENN_POOL_SIZE; i++)
    {
        u16 s = sHoennDexPool[i];
        if (mode == MON_RANDOM_NO_LEGEND && Rz_IsLegendary(s)) continue;
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
        if (!isOriginalLegendary && Rz_IsLegendary(s)) continue;
#endif
        count++;
    }
    return count;
}

static u16 Rz_GetNthFromPool(enum RandomizerSpeciesMode mode, u16 originalSpecies,
                              bool8 isOriginalLegendary, u16 originalBST, u8 originalStage, u16 n)
{
    u16 idx = 0;
    for (u16 i = 0; i < HOENN_POOL_SIZE; i++)
    {
        u16 s = sHoennDexPool[i];
        if (mode == MON_RANDOM_NO_LEGEND && Rz_IsLegendary(s)) continue;
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
        if (!isOriginalLegendary && Rz_IsLegendary(s)) continue;
#endif
        if (idx == n) return s;
        idx++;
    }
    return originalSpecies;
}

u16 Randomizer_GetSpecies(u16 originalSpecies, enum RandomizerContext context, u32 contextKey)
{
    if (originalSpecies == SPECIES_NONE || originalSpecies >= NUM_SPECIES)
        return originalSpecies;

    enum RandomizerSpeciesMode mode = Randomizer_GetSpeciesMode();
    bool8 isLegendary = Rz_IsLegendary(originalSpecies);
    u16 originalBST = (mode == MON_RANDOM_BST) ? Rz_GetBST(originalSpecies) : 0;
    u8 originalStage = (mode == MON_EVOLUTION_STAGE) ? Rz_GetEvolutionStage(originalSpecies) : 0;

    u16 poolSize = Rz_CountValidFromPool(mode, originalSpecies, isLegendary, originalBST, originalStage);
    if (poolSize == 0) return originalSpecies;

    u32 seed = Randomizer_GetSeed();
    u32 state = Rz_MixSeed(seed, (u32)context ^ contextKey ^ (u32)originalSpecies);
    u32 pick = Rz_Next(&state, poolSize);
    return Rz_GetNthFromPool(mode, originalSpecies, isLegendary, originalBST, originalStage, (u16)pick);
}

// Hooks
u16 Randomizer_OnWildEncounter(u16 species, u8 mapGroup, u8 mapNum, u8 area, u8 slot)
{
    if (!Randomizer_WildEnabled()) return species;
    u32 key = ((u32)mapGroup << 24) | ((u32)mapNum << 16) | ((u32)area << 8) | ((u32)slot);
    return Randomizer_GetSpecies(species, RZ_CTX_WILD_ENCOUNTER, key);
}

u16 Randomizer_OnTrainerMon(u16 species, u16 trainerId, u8 slotIndex)
{
    if (!Randomizer_TrainerEnabled()) return species;
    u32 key = ((u32)trainerId << 8) | ((u32)slotIndex);
    return Randomizer_GetSpecies(species, RZ_CTX_TRAINER_MON, key);
}

// Starters
static u32 Rz_GetStarterSeed(void)
{
    if (gSaveBlock2Ptr != NULL)
    {
        return (u32)gSaveBlock2Ptr->playerTrainerId[0]
             | ((u32)gSaveBlock2Ptr->playerTrainerId[1] << 8)
             | ((u32)gSaveBlock2Ptr->playerTrainerId[2] << 16)
             | ((u32)gSaveBlock2Ptr->playerTrainerId[3] << 24);
    }
    return 0x12345678;
}

u16 Randomizer_GetFixedStarter(u8 slot)
{
    if (!Randomizer_WildEnabled())
    {
        static const u16 vanillaStarters[3] = { SPECIES_BULBASAUR, SPECIES_TOTODILE, SPECIES_TORCHIC };
        return vanillaStarters[slot % 3];
    }

    u32 seed = Rz_GetStarterSeed();
    seed ^= (slot * 0x9E3779B9);
    u32 state = seed;
    state = state * 1103515245 + 12345;
    return sHoennDexPool[(state >> 16) % HOENN_POOL_SIZE];
}

u16 Randomizer_GetRandomStarter(u16 originalSpecies, u8 slot)
{
    return Randomizer_GetFixedStarter(slot);
}

#endif
