// ============================================================
// src/randomizer.c — Randomizador In-Game
// pokeemerald-expansion 1.13.3
//
// Pool restrita à Hoenn Dex customizada do projeto.
// Ver INTEGRATION.md para detalhes de integração.
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

// ────────────────────────────────────────────────────────────────────────────
// Pool de espécies válidas para randomização
//
// APENAS os Pokémon da sua Hoenn Dex customizada são candidatos.
// Adicione ou remova entradas aqui conforme editar o enum HoennDexOrder.
//
// Regra: uma linha por família/espécie, na mesma ordem do enum.
// Formas alternativas (Mega, Gmax, regional) NÃO entram aqui a menos
// que você as queira como resultado de randomização.
// ────────────────────────────────────────────────────────────────────────────

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

// ────────────────────────────────────────────────────────────────────────────
// RNG interno: xorshift32 + mistura de contexto
// ────────────────────────────────────────────────────────────────────────────

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
    *state = Rz_Xorshift32(*state);
    return (u32)(((u64)(*state) * range) >> 32);
}

// ────────────────────────────────────────────────────────────────────────────
// Seed do jogador
// ────────────────────────────────────────────────────────────────────────────

u32 Randomizer_GetSeed(void)
{
#if RANDOMIZER_SEED_FROM_TRAINER_ID == TRUE
    if (gSaveBlock2Ptr == NULL)
        return 0x12345678;

    return (u32)gSaveBlock2Ptr->playerTrainerId[0]
         | ((u32)gSaveBlock2Ptr->playerTrainerId[1] << 8)
         | ((u32)gSaveBlock2Ptr->playerTrainerId[2] << 16)
         | ((u32)gSaveBlock2Ptr->playerTrainerId[3] << 24);
#else
    u32 lo = VarGet(RANDOMIZER_VAR_SEED_L);
    u32 hi = VarGet(RANDOMIZER_VAR_SEED_H);
    u32 seed = lo | (hi << 16);
    return seed != 0 ? seed : 1;
#endif
}

// ────────────────────────────────────────────────────────────────────────────
// Consulta de estado
// ────────────────────────────────────────────────────────────────────────────

bool8 Randomizer_WildEnabled(void)
{
#ifdef FORCE_RANDOMIZE_WILD_MON
    return FORCE_RANDOMIZE_WILD_MON;
#else
    return FlagGet(RANDOMIZER_FLAG_WILD_MON);
#endif
}

bool8 Randomizer_TrainerEnabled(void)
{
#ifdef FORCE_RANDOMIZE_TRAINER_MON
    return FORCE_RANDOMIZE_TRAINER_MON;
#else
    return FlagGet(RANDOMIZER_FLAG_TRAINER_MON);
#endif
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

// ────────────────────────────────────────────────────────────────────────────
// Predicados de espécie
// (operam apenas sobre entradas do pool, mas ficam aqui para reúso)
// ────────────────────────────────────────────────────────────────────────────

static bool8 Rz_IsLegendary(u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return FALSE;
    return gSpeciesInfo[species].isLegendary || gSpeciesInfo[species].isMythical;
}

static u16 Rz_GetBST(u16 species)
{
    const struct SpeciesInfo *info;
    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return 0;
    info = &gSpeciesInfo[species];
    return (u16)(info->baseHP + info->baseAttack + info->baseDefense
               + info->baseSpAttack + info->baseSpDefense + info->baseSpeed);
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
            u8 i;
            const struct Evolution *evos = gSpeciesInfo[s].evolutions;
            if (evos == NULL)
                continue;
            for (i = 0; i < EVOS_PER_MON; i++)
            {
                if (evos[i].targetSpecies == prev)
                {
                    prev = s;
                    foundPrev = TRUE;
                    break;
                }
            }
            if (foundPrev)
                break;
        }
        if (!foundPrev)
            break;
        stage++;
    }
    return stage;
}

// ────────────────────────────────────────────────────────────────────────────
// Core: seleciona espécie randomizada **dentro do pool da Hoenn Dex**
//
// Diferença principal vs. versão anterior:
//   • Iteramos sobre sHoennDexPool[] (tamanho fixo ~280 entradas)
//     em vez de [1..NUM_SPECIES) (até ~1300+ entradas).
//   • Qualquer espécie fora do seu dex simplesmente nunca aparece.
//   • Performance melhor: ~4× menos iterações por chamada.
// ────────────────────────────────────────────────────────────────────────────

static u16 Rz_CountValidFromPool(enum RandomizerSpeciesMode mode,
                                  u16 originalSpecies,
                                  bool8 isOriginalLegendary,
                                  u16 originalBST,
                                  u8 originalStage)
{
    u16 count = 0;
    u16 i;

    for (i = 0; i < HOENN_POOL_SIZE; i++)
    {
        u16 s = sHoennDexPool[i];

        switch (mode)
        {
        case MON_RANDOM:
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
            if (!isOriginalLegendary && Rz_IsLegendary(s))
                continue;
#endif
            break;

        case MON_RANDOM_NO_LEGEND:
            if (Rz_IsLegendary(s))
                continue;
            break;

        case MON_RANDOM_BST:
            {
                s32 diff = (s32)Rz_GetBST(s) - (s32)originalBST;
                if (diff < -(s32)RANDOMIZER_BST_TOLERANCE || diff > (s32)RANDOMIZER_BST_TOLERANCE)
                    continue;
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
                if (!isOriginalLegendary && Rz_IsLegendary(s))
                    continue;
#endif
            }
            break;

        case MON_EVOLUTION_STAGE:
            if (Rz_GetEvolutionStage(s) != originalStage)
                continue;
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
            if (!isOriginalLegendary && Rz_IsLegendary(s))
                continue;
#endif
            break;

        default:
            break;
        }

        count++;
    }

    return count;
}

static u16 Rz_GetNthFromPool(enum RandomizerSpeciesMode mode,
                               u16 originalSpecies,
                               bool8 isOriginalLegendary,
                               u16 originalBST,
                               u8 originalStage,
                               u16 n)
{
    u16 idx = 0;
    u16 i;

    for (i = 0; i < HOENN_POOL_SIZE; i++)
    {
        u16 s = sHoennDexPool[i];

        switch (mode)
        {
        case MON_RANDOM:
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
            if (!isOriginalLegendary && Rz_IsLegendary(s))
                continue;
#endif
            break;

        case MON_RANDOM_NO_LEGEND:
            if (Rz_IsLegendary(s))
                continue;
            break;

        case MON_RANDOM_BST:
            {
                s32 diff = (s32)Rz_GetBST(s) - (s32)originalBST;
                if (diff < -(s32)RANDOMIZER_BST_TOLERANCE || diff > (s32)RANDOMIZER_BST_TOLERANCE)
                    continue;
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
                if (!isOriginalLegendary && Rz_IsLegendary(s))
                    continue;
#endif
            }
            break;

        case MON_EVOLUTION_STAGE:
            if (Rz_GetEvolutionStage(s) != originalStage)
                continue;
#if RANDOMIZER_EXCLUDE_LEGENDS_FROM_COMMON
            if (!isOriginalLegendary && Rz_IsLegendary(s))
                continue;
#endif
            break;

        default:
            break;
        }

        if (idx == n)
            return s;
        idx++;
    }

    return originalSpecies; // fallback: mantém o original
}

u16 Randomizer_GetSpecies(u16 originalSpecies, enum RandomizerContext context, u32 contextKey)
{
    enum RandomizerSpeciesMode mode;
    bool8 isLegendary;
    u16 originalBST;
    u8  originalStage;
    u16 poolSize;
    u32 state;
    u32 seed;
    u32 pick;

    if (originalSpecies == SPECIES_NONE || originalSpecies >= NUM_SPECIES)
        return originalSpecies;

    mode         = Randomizer_GetSpeciesMode();
    isLegendary  = Rz_IsLegendary(originalSpecies);
    originalBST  = (mode == MON_RANDOM_BST)      ? Rz_GetBST(originalSpecies)          : 0;
    originalStage= (mode == MON_EVOLUTION_STAGE)  ? Rz_GetEvolutionStage(originalSpecies) : 0;

    poolSize = Rz_CountValidFromPool(mode, originalSpecies, isLegendary, originalBST, originalStage);
    if (poolSize == 0)
        return originalSpecies;

    seed  = Randomizer_GetSeed();
    state = Rz_MixSeed(seed, (u32)context ^ contextKey ^ (u32)originalSpecies);

    pick = Rz_Next(&state, poolSize);
    return Rz_GetNthFromPool(mode, originalSpecies, isLegendary, originalBST, originalStage, (u16)pick);
}

// ────────────────────────────────────────────────────────────────────────────
// Hooks chamados pelo engine
// ────────────────────────────────────────────────────────────────────────────

u16 Randomizer_OnWildEncounter(u16 species, u8 mapGroup, u8 mapNum, u8 area, u8 slot)
{
    u32 key;
    if (!Randomizer_WildEnabled())
        return species;

    key = ((u32)mapGroup << 24)
        | ((u32)mapNum   << 16)
        | ((u32)area     <<  8)
        | ((u32)slot);

    return Randomizer_GetSpecies(species, RZ_CTX_WILD_ENCOUNTER, key);
}

u16 Randomizer_OnTrainerMon(u16 species, u16 trainerId, u8 slotIndex)
{
    u32 key;
    if (!Randomizer_TrainerEnabled())
        return species;

    key = ((u32)trainerId << 8) | ((u32)slotIndex);

    return Randomizer_GetSpecies(species, RZ_CTX_TRAINER_MON, key);
}

#endif // RANDOMIZER_AVAILABLE
