#include "global.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "hidden_grotto.h"
#include "item_menu.h"
#include "overworld.h"
#include "pokemon.h"
#include "random.h"
#include "script.h"
#include "script_pokemon_util.h"
#include "constants/abilities.h"
#include "constants/event_objects.h"
#include "constants/items.h"
#include "constants/species.h"
#include "constants/vars.h"

#define HIDDEN_GROTTO_NO_MAP_GROUP 0xFF
#define HIDDEN_GROTTO_NO_MAP_NUM   0xFF
#define HIDDEN_GROTTO_HIDDEN_ABILITY_SLOT 2
#define HIDDEN_GROTTO_PACKED_TYPE_SHIFT 13
#define HIDDEN_GROTTO_PACKED_ID_MASK ((1 << HIDDEN_GROTTO_PACKED_TYPE_SHIFT) - 1)
#define HIDDEN_GROTTO_RESET_INTERVAL_DAYS 10

struct HiddenGrottoMon
{
    u16 species;
    u8 form;
};

enum HiddenGrottoItemPool
{
    HIDDEN_GROTTO_ITEM_POOL_DEFAULT,
    HIDDEN_GROTTO_ITEM_POOL_GRANITE_HILL,
    HIDDEN_GROTTO_ITEM_POOL_ROUTE111,
    HIDDEN_GROTTO_ITEM_POOL_FIERY_PATH,
    HIDDEN_GROTTO_ITEM_POOL_ROUTE114,
};

struct HiddenGrotto
{
    u8 mapGroup;
    u8 mapNum;
    u8 monLevel;
    u8 monObjectLocalId;
    u8 itemPool;
    u16 rareItem;
    struct HiddenGrottoMon mons[4];
};

struct WeightedHiddenGrottoItem
{
    u16 itemId;
    u8 weight;
};

#define HIDDEN_GROTTO_PLACEHOLDER {HIDDEN_GROTTO_NO_MAP_GROUP, HIDDEN_GROTTO_NO_MAP_NUM, 5, LOCALID_NONE, HIDDEN_GROTTO_ITEM_POOL_DEFAULT, ITEM_NONE, {{SPECIES_NONE, 0}, {SPECIES_NONE, 0}, {SPECIES_NONE, 0}, {SPECIES_NONE, 0}}}

static const u16 sHiddenGrottoVars[NUM_HIDDEN_GROTTOES] =
{
    VAR_HIDDEN_GROTTO_00,
    VAR_HIDDEN_GROTTO_01,
    VAR_HIDDEN_GROTTO_02,
    VAR_HIDDEN_GROTTO_03,
    VAR_HIDDEN_GROTTO_04,
    VAR_HIDDEN_GROTTO_05,
    VAR_HIDDEN_GROTTO_06,
    VAR_HIDDEN_GROTTO_07,
    VAR_HIDDEN_GROTTO_08,
    VAR_HIDDEN_GROTTO_09,
    VAR_HIDDEN_GROTTO_10,
    VAR_HIDDEN_GROTTO_11,
    VAR_HIDDEN_GROTTO_12,
    VAR_HIDDEN_GROTTO_13,
    VAR_HIDDEN_GROTTO_14,
    VAR_HIDDEN_GROTTO_15,
    VAR_HIDDEN_GROTTO_16,
    VAR_HIDDEN_GROTTO_17,
    VAR_HIDDEN_GROTTO_18,
    VAR_HIDDEN_GROTTO_19,
};

// Fill these entries when actual Hidden Grotto maps/objects are placed in Hoenn.
static const struct HiddenGrotto sHiddenGrottoData[NUM_HIDDEN_GROTTOES] =
{
    {
        MAP_GROUP(MAP_PETALBURG_WOODS_EAST_GROTTO),
        MAP_NUM(MAP_PETALBURG_WOODS_EAST_GROTTO),
        8,
        LOCALID_PETALBURG_WOODS_EAST_GROTTO_POKEMON,
        HIDDEN_GROTTO_ITEM_POOL_DEFAULT,
        ITEM_LEAF_STONE,
        {
            {SPECIES_RALTS, 0},
            {SPECIES_MUDKIP, 0},
            {SPECIES_HERACROSS, 0},
            {SPECIES_PINSIR, 0},
        },
    },
    {
        MAP_GROUP(MAP_GRANITE_HILL_GROTTO),
        MAP_NUM(MAP_GRANITE_HILL_GROTTO),
        18,
        LOCALID_GRANITE_HILL_GROTTO_POKEMON,
        HIDDEN_GROTTO_ITEM_POOL_GRANITE_HILL,
        ITEM_BIG_PEARL,
        {
            {SPECIES_BULBASAUR, 0},
            {SPECIES_NUMEL, 0},
            {SPECIES_AIPOM, 0},
            {SPECIES_WOOPER, 0},
        },
    },
    {
        MAP_GROUP(MAP_ROUTE111GROTTO_),
        MAP_NUM(MAP_ROUTE111GROTTO_),
        25,
        LOCALID_ROUTE111GROTTO__POKEMON,
        HIDDEN_GROTTO_ITEM_POOL_ROUTE111,
        ITEM_THUNDER_STONE,
        {
            {SPECIES_VOLTORB, 0},
            {SPECIES_PICHU, 0},
            {SPECIES_VOLBEAT, 0},
            {SPECIES_ILLUMISE, 0},
        },
    },
    {
        MAP_GROUP(MAP_FIERY_PATH_GROTTO),
        MAP_NUM(MAP_FIERY_PATH_GROTTO),
        24,
        LOCALID_FIERY_PATH_GROTTO_POKEMON,
        HIDDEN_GROTTO_ITEM_POOL_FIERY_PATH,
        ITEM_FIRE_STONE,
        {
            {SPECIES_TOTODILE, 0},
            {SPECIES_CARVANHA, 0},
            {SPECIES_VULPIX, 0},
            {SPECIES_CHIMECHO, 0},
        },
    },
    {
        MAP_GROUP(MAP_ROUTE114GROTTO),
        MAP_NUM(MAP_ROUTE114GROTTO),
        26,
        LOCALID_ROUTE114GROTTO_POKEMON,
        HIDDEN_GROTTO_ITEM_POOL_ROUTE114,
        ITEM_YELLOW_FLUTE,
        {
            {SPECIES_NUZLEAF, 0},
            {SPECIES_SEVIPER, 0},
            {SPECIES_SKARMORY, 0},
            {SPECIES_GOLBAT, 0},
        },
    },
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
    HIDDEN_GROTTO_PLACEHOLDER,
};

static const struct WeightedHiddenGrottoItem sHiddenGrottoVisibleItems[] =
{
    {ITEM_POTION, 20},
    {ITEM_SUPER_POTION, 16},
    {ITEM_REPEL, 12},
    {ITEM_ESCAPE_ROPE, 10},
    {ITEM_TINYMUSHROOM, 8},
    {ITEM_BIG_MUSHROOM, 4},
    {ITEM_NUGGET, 2},
};

static const struct WeightedHiddenGrottoItem sHiddenGrottoHiddenItems[] =
{
    {ITEM_GROWTH_MULCH, 30},
    {ITEM_TINYMUSHROOM, 20},
    {ITEM_BIG_MUSHROOM, 12},
    {ITEM_BALMMUSHROOM, 4},
    {ITEM_HEART_SCALE, 10},
    {ITEM_PEARL, 10},
    {ITEM_RARE_CANDY, 5},
    {ITEM_PP_UP, 5},
    {ITEM_PP_MAX, 4},
};

static const struct WeightedHiddenGrottoItem sGraniteHillGrottoVisibleItems[] =
{
    {ITEM_SUPER_POTION, 18},
    {ITEM_GREAT_BALL, 16},
    {ITEM_NET_BALL, 12},
    {ITEM_NEST_BALL, 12},
    {ITEM_DIVE_BALL, 10},
    {ITEM_HONEY, 10},
    {ITEM_ESCAPE_ROPE, 8},
    {ITEM_ETHER, 6},
};

static const struct WeightedHiddenGrottoItem sGraniteHillGrottoHiddenItems[] =
{
    {ITEM_HONEY, 20},
    {ITEM_TINYMUSHROOM, 18},
    {ITEM_BIG_MUSHROOM, 10},
    {ITEM_PEARL, 12},
    {ITEM_STARDUST, 12},
    {ITEM_HEART_SCALE, 10},
    {ITEM_BIG_PEARL, 6},
    {ITEM_PP_UP, 6},
    {ITEM_RARE_CANDY, 3},
};

static const struct WeightedHiddenGrottoItem sRoute111GrottoVisibleItems[] =
{
    {ITEM_HYPER_POTION, 18},
    {ITEM_ULTRA_BALL, 16},
    {ITEM_SUPER_REPEL, 12},
    {ITEM_REVIVE, 10},
    {ITEM_ETHER, 8},
    {ITEM_HONEY, 8},
    {ITEM_YELLOW_SHARD, 8},
    {ITEM_STARDUST, 6},
};

static const struct WeightedHiddenGrottoItem sRoute111GrottoHiddenItems[] =
{
    {ITEM_HONEY, 18},
    {ITEM_STARDUST, 14},
    {ITEM_YELLOW_SHARD, 12},
    {ITEM_ENERGY_ROOT, 12},
    {ITEM_LIGHT_CLAY, 8},
    {ITEM_MAGNET, 6},
    {ITEM_PP_UP, 6},
    {ITEM_ELIXIR, 4},
    {ITEM_CELL_BATTERY, 3},
};

static const struct WeightedHiddenGrottoItem sFieryPathGrottoVisibleItems[] =
{
    {ITEM_HYPER_POTION, 18},
    {ITEM_DUSK_BALL, 16},
    {ITEM_TIMER_BALL, 12},
    {ITEM_BURN_HEAL, 12},
    {ITEM_LAVA_COOKIE, 10},
    {ITEM_REVIVE, 8},
    {ITEM_ETHER, 8},
    {ITEM_RED_SHARD, 6},
};

static const struct WeightedHiddenGrottoItem sFieryPathGrottoHiddenItems[] =
{
    {ITEM_BURN_HEAL, 18},
    {ITEM_LAVA_COOKIE, 16},
    {ITEM_RED_SHARD, 14},
    {ITEM_STARDUST, 12},
    {ITEM_CHARCOAL, 8},
    {ITEM_SMOKE_BALL, 8},
    {ITEM_HEAT_ROCK, 6},
    {ITEM_PP_UP, 5},
    {ITEM_FLAME_ORB, 2},
};

static const struct WeightedHiddenGrottoItem sRoute114GrottoVisibleItems[] =
{
    {ITEM_HYPER_POTION, 18},
    {ITEM_ULTRA_BALL, 16},
    {ITEM_SUPER_REPEL, 12},
    {ITEM_REVIVE, 10},
    {ITEM_ETHER, 8},
    {ITEM_STARDUST, 8},
    {ITEM_RED_SHARD, 6},
    {ITEM_BLUE_FLUTE, 4},
};

static const struct WeightedHiddenGrottoItem sRoute114GrottoHiddenItems[] =
{
    {ITEM_STARDUST, 18},
    {ITEM_RED_SHARD, 14},
    {ITEM_YELLOW_SHARD, 12},
    {ITEM_BURN_HEAL, 12},
    {ITEM_CHARCOAL, 8},
    {ITEM_RED_FLUTE, 6},
    {ITEM_YELLOW_FLUTE, 5},
    {ITEM_PP_UP, 4},
    {ITEM_RARE_CANDY, 2},
};

static u8 GetCurrentHiddenGrottoId(void);
static const struct HiddenGrotto *GetCurrentHiddenGrotto(void);
static u16 GetCurrentHiddenGrottoPackedContent(void);
static void SetCurrentHiddenGrottoPackedContent(u16 packed);
static struct HiddenGrottoContent UnpackHiddenGrottoContent(u16 packed);
static u16 PackHiddenGrottoContent(struct HiddenGrottoContent content);
static u16 GetHiddenGrottoMonSpecies(const struct HiddenGrotto *grotto);
static u16 GetHiddenGrottoWeightedItem(const struct WeightedHiddenGrottoItem *items, u8 count, enum RandomTag tag);
static const struct WeightedHiddenGrottoItem *GetHiddenGrottoVisibleItemPool(const struct HiddenGrotto *grotto, u8 *count);
static const struct WeightedHiddenGrottoItem *GetHiddenGrottoHiddenItemPool(const struct HiddenGrotto *grotto, u8 *count);
static u16 GetHiddenGrottoVisibleItem(const struct HiddenGrotto *grotto);
static u16 GetHiddenGrottoHiddenItem(const struct HiddenGrotto *grotto);
static void SetCurrentHiddenGrottoObject(u16 species);
static bool8 IsHiddenGrottoContentValid(struct HiddenGrottoContent content);

void ResetHiddenGrottoes(void)
{
    u8 i;

    for (i = 0; i < NUM_HIDDEN_GROTTOES; i++)
        VarSet(sHiddenGrottoVars[i], 0);

    VarSet(VAR_HIDDEN_GROTTO_RESET_DAYS, 0);
}

void UpdateHiddenGrottoesPerDay(u16 daysSince)
{
    u16 daysSinceReset = VarGet(VAR_HIDDEN_GROTTO_RESET_DAYS);

    if (daysSinceReset >= HIDDEN_GROTTO_RESET_INTERVAL_DAYS)
        return;

    daysSinceReset += daysSince;
    if (daysSinceReset >= HIDDEN_GROTTO_RESET_INTERVAL_DAYS)
    {
        if (IsCurrentMapHiddenGrotto())
        {
            VarSet(VAR_HIDDEN_GROTTO_RESET_DAYS, HIDDEN_GROTTO_RESET_INTERVAL_DAYS);
            return;
        }

        ResetHiddenGrottoes();
        daysSinceReset %= HIDDEN_GROTTO_RESET_INTERVAL_DAYS;
    }

    VarSet(VAR_HIDDEN_GROTTO_RESET_DAYS, daysSinceReset);
}

void HiddenGrotto_InitializeCurrent(void)
{
    const struct HiddenGrotto *grotto = GetCurrentHiddenGrotto();
    struct HiddenGrottoContent content;
    u8 type;

    gSpecialVar_Result = HIDDEN_GROTTO_EMPTY;
    gSpecialVar_0x8004 = ITEM_NONE;
    gSpecialVar_ItemId = ITEM_NONE;

    if (grotto == NULL)
        return;

    if (VarGet(VAR_HIDDEN_GROTTO_RESET_DAYS) >= HIDDEN_GROTTO_RESET_INTERVAL_DAYS)
        ResetHiddenGrottoes();

    content = UnpackHiddenGrottoContent(GetCurrentHiddenGrottoPackedContent());
    if (!IsHiddenGrottoContentValid(content))
    {
        content.type = HIDDEN_GROTTO_UNSET;
        content.id = 0;
    }

    if (content.type == HIDDEN_GROTTO_UNSET)
    {
        if (!FlagGet(FLAG_SYS_HIDDEN_GROTTO_FIRST_VISIT))
        {
            type = HIDDEN_GROTTO_POKEMON;
            FlagSet(FLAG_SYS_HIDDEN_GROTTO_FIRST_VISIT);
        }
        else
        {
            switch (RandomWeighted(RNG_HIDDEN_GROTTO_CONTENT, 6, 2, 2))
            {
            default:
            case 0:
                type = HIDDEN_GROTTO_POKEMON;
                break;
            case 1:
                type = HIDDEN_GROTTO_ITEM;
                break;
            case 2:
                type = HIDDEN_GROTTO_HIDDEN_ITEM;
                break;
            }
        }

        content.type = type;
        switch (type)
        {
        case HIDDEN_GROTTO_POKEMON:
            content.id = GetHiddenGrottoMonSpecies(grotto);
            break;
        case HIDDEN_GROTTO_ITEM:
            content.id = GetHiddenGrottoVisibleItem(grotto);
            break;
        case HIDDEN_GROTTO_HIDDEN_ITEM:
            content.id = GetHiddenGrottoHiddenItem(grotto);
            break;
        default:
            content.type = HIDDEN_GROTTO_EMPTY;
            content.id = 0;
            break;
        }

        if (content.id == 0)
        {
            content.type = HIDDEN_GROTTO_EMPTY;
            content.id = 0;
        }
        SetCurrentHiddenGrottoPackedContent(PackHiddenGrottoContent(content));
    }

    if (content.type == HIDDEN_GROTTO_POKEMON)
        SetCurrentHiddenGrottoObject(content.id);

    gSpecialVar_Result = content.type;
    gSpecialVar_0x8004 = content.id;
    if (content.type == HIDDEN_GROTTO_ITEM || content.type == HIDDEN_GROTTO_HIDDEN_ITEM)
        gSpecialVar_ItemId = content.id;
}

void HiddenGrotto_EmptyCurrent(void)
{
    if (GetCurrentHiddenGrotto() != NULL)
        SetCurrentHiddenGrottoPackedContent(PackHiddenGrottoContent((struct HiddenGrottoContent){HIDDEN_GROTTO_EMPTY, 0}));

    gSpecialVar_Result = HIDDEN_GROTTO_EMPTY;
    gSpecialVar_0x8004 = 0;
    gSpecialVar_ItemId = ITEM_NONE;
}

void HiddenGrotto_GetCurrentContentType(void)
{
    struct HiddenGrottoContent content;

    if (GetCurrentHiddenGrotto() == NULL)
    {
        gSpecialVar_Result = HIDDEN_GROTTO_EMPTY;
        return;
    }

    content = UnpackHiddenGrottoContent(GetCurrentHiddenGrottoPackedContent());
    if (!IsHiddenGrottoContentValid(content))
        gSpecialVar_Result = HIDDEN_GROTTO_EMPTY;
    else
        gSpecialVar_Result = content.type;
}

void HiddenGrotto_GetCurrentContentId(void)
{
    struct HiddenGrottoContent content;

    if (GetCurrentHiddenGrotto() == NULL)
        gSpecialVar_Result = 0;
    else
    {
        content = UnpackHiddenGrottoContent(GetCurrentHiddenGrottoPackedContent());
        if (!IsHiddenGrottoContentValid(content))
            gSpecialVar_Result = 0;
        else
            gSpecialVar_Result = content.id;
    }

    gSpecialVar_0x8004 = gSpecialVar_Result;
    gSpecialVar_ItemId = gSpecialVar_Result;
}

void HiddenGrotto_CreateCurrentMon(void)
{
    const struct HiddenGrotto *grotto = GetCurrentHiddenGrotto();
    struct HiddenGrottoContent content;
    struct Pokemon *mon = &gEnemyParty[0];
    u8 perfectIv;
    u8 abilityNum;
    u8 maxIv = MAX_PER_STAT_IVS;

    gSpecialVar_Result = FALSE;

    if (grotto == NULL)
        return;

    content = UnpackHiddenGrottoContent(GetCurrentHiddenGrottoPackedContent());
    if (content.type != HIDDEN_GROTTO_POKEMON || content.id == SPECIES_NONE || content.id >= NUM_SPECIES)
        return;

    CreateScriptedWildMon(content.id, grotto->monLevel, ITEM_NONE);

    perfectIv = RandomUniform(RNG_HIDDEN_GROTTO_IV, 0, NUM_STATS - 1);
    SetMonData(mon, MON_DATA_HP_IV + perfectIv, &maxIv);

    do
    {
        perfectIv = RandomUniform(RNG_HIDDEN_GROTTO_IV, 0, NUM_STATS - 1);
    } while (GetMonData(mon, MON_DATA_HP_IV + perfectIv, NULL) == MAX_PER_STAT_IVS);
    SetMonData(mon, MON_DATA_HP_IV + perfectIv, &maxIv);

    if (GetSpeciesAbility(content.id, HIDDEN_GROTTO_HIDDEN_ABILITY_SLOT) != ABILITY_NONE)
    {
        abilityNum = HIDDEN_GROTTO_HIDDEN_ABILITY_SLOT;
        SetMonData(mon, MON_DATA_ABILITY_NUM, &abilityNum);
    }

    CalculateMonStats(mon);
    gSpecialVar_Result = TRUE;
}

void HiddenGrotto_TestCurrentMonBounds(void)
{
    struct HiddenGrottoContent content;

    gSpecialVar_Result = FALSE;
    if (GetCurrentHiddenGrotto() == NULL)
        return;

    content = UnpackHiddenGrottoContent(GetCurrentHiddenGrottoPackedContent());
    if (content.type == HIDDEN_GROTTO_POKEMON && content.id != SPECIES_NONE && content.id < NUM_SPECIES)
        gSpecialVar_Result = TRUE;
}

void HiddenGrotto_IsCurrentMap(void)
{
    gSpecialVar_Result = IsCurrentMapHiddenGrotto();
}

bool8 IsCurrentMapHiddenGrotto(void)
{
    return GetCurrentHiddenGrottoId() != NUM_HIDDEN_GROTTOES;
}

static u8 GetCurrentHiddenGrottoId(void)
{
    u8 i;

    for (i = 0; i < NUM_HIDDEN_GROTTOES; i++)
    {
        if (sHiddenGrottoData[i].mapGroup == HIDDEN_GROTTO_NO_MAP_GROUP || sHiddenGrottoData[i].mapNum == HIDDEN_GROTTO_NO_MAP_NUM)
            continue;
        if (sHiddenGrottoData[i].mapGroup == gSaveBlock1Ptr->location.mapGroup && sHiddenGrottoData[i].mapNum == gSaveBlock1Ptr->location.mapNum)
            return i;
    }

    return NUM_HIDDEN_GROTTOES;
}

static const struct HiddenGrotto *GetCurrentHiddenGrotto(void)
{
    u8 id = GetCurrentHiddenGrottoId();

    if (id == NUM_HIDDEN_GROTTOES)
        return NULL;
    return &sHiddenGrottoData[id];
}

static u16 GetCurrentHiddenGrottoPackedContent(void)
{
    u8 id = GetCurrentHiddenGrottoId();

    if (id == NUM_HIDDEN_GROTTOES)
        return 0;
    return VarGet(sHiddenGrottoVars[id]);
}

static void SetCurrentHiddenGrottoPackedContent(u16 packed)
{
    u8 id = GetCurrentHiddenGrottoId();

    if (id != NUM_HIDDEN_GROTTOES)
        VarSet(sHiddenGrottoVars[id], packed);
}

static struct HiddenGrottoContent UnpackHiddenGrottoContent(u16 packed)
{
    struct HiddenGrottoContent content;

    content.type = packed >> HIDDEN_GROTTO_PACKED_TYPE_SHIFT;
    content.id = packed & HIDDEN_GROTTO_PACKED_ID_MASK;
    return content;
}

static u16 PackHiddenGrottoContent(struct HiddenGrottoContent content)
{
    if (content.id > HIDDEN_GROTTO_PACKED_ID_MASK)
        return 0;
    return (content.type << HIDDEN_GROTTO_PACKED_TYPE_SHIFT) | content.id;
}

static u16 GetHiddenGrottoMonSpecies(const struct HiddenGrotto *grotto)
{
    u8 slot;
    u8 attempts;
    u16 species;

    if (grotto == NULL)
        return SPECIES_NONE;

    for (attempts = 0; attempts < ARRAY_COUNT(grotto->mons); attempts++)
    {
        slot = RandomUniform(RNG_HIDDEN_GROTTO_POKEMON, 0, ARRAY_COUNT(grotto->mons) - 1);
        if (grotto->mons[slot].species == SPECIES_NONE)
            continue;
        species = GetFormSpeciesId(grotto->mons[slot].species, grotto->mons[slot].form);
        if (species != SPECIES_NONE && species < NUM_SPECIES)
            return species;
    }

    return SPECIES_NONE;
}

static u16 GetHiddenGrottoWeightedItem(const struct WeightedHiddenGrottoItem *items, u8 count, enum RandomTag tag)
{
    u8 i;
    u32 roll;
    u32 totalWeight = 0;

    for (i = 0; i < count; i++)
        totalWeight += items[i].weight;

    if (totalWeight == 0)
        return ITEM_NONE;

    roll = RandomUniform(tag, 0, totalWeight - 1);
    for (i = 0; i < count; i++)
    {
        if (roll < items[i].weight)
            return items[i].itemId;
        roll -= items[i].weight;
    }

    return ITEM_NONE;
}

static const struct WeightedHiddenGrottoItem *GetHiddenGrottoVisibleItemPool(const struct HiddenGrotto *grotto, u8 *count)
{
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_GRANITE_HILL)
    {
        *count = ARRAY_COUNT(sGraniteHillGrottoVisibleItems);
        return sGraniteHillGrottoVisibleItems;
    }
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_ROUTE111)
    {
        *count = ARRAY_COUNT(sRoute111GrottoVisibleItems);
        return sRoute111GrottoVisibleItems;
    }
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_FIERY_PATH)
    {
        *count = ARRAY_COUNT(sFieryPathGrottoVisibleItems);
        return sFieryPathGrottoVisibleItems;
    }
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_ROUTE114)
    {
        *count = ARRAY_COUNT(sRoute114GrottoVisibleItems);
        return sRoute114GrottoVisibleItems;
    }

    *count = ARRAY_COUNT(sHiddenGrottoVisibleItems);
    return sHiddenGrottoVisibleItems;
}

static const struct WeightedHiddenGrottoItem *GetHiddenGrottoHiddenItemPool(const struct HiddenGrotto *grotto, u8 *count)
{
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_GRANITE_HILL)
    {
        *count = ARRAY_COUNT(sGraniteHillGrottoHiddenItems);
        return sGraniteHillGrottoHiddenItems;
    }
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_ROUTE111)
    {
        *count = ARRAY_COUNT(sRoute111GrottoHiddenItems);
        return sRoute111GrottoHiddenItems;
    }
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_FIERY_PATH)
    {
        *count = ARRAY_COUNT(sFieryPathGrottoHiddenItems);
        return sFieryPathGrottoHiddenItems;
    }
    if (grotto != NULL && grotto->itemPool == HIDDEN_GROTTO_ITEM_POOL_ROUTE114)
    {
        *count = ARRAY_COUNT(sRoute114GrottoHiddenItems);
        return sRoute114GrottoHiddenItems;
    }

    *count = ARRAY_COUNT(sHiddenGrottoHiddenItems);
    return sHiddenGrottoHiddenItems;
}

static u16 GetHiddenGrottoVisibleItem(const struct HiddenGrotto *grotto)
{
    u8 i;
    u8 count;
    u32 roll;
    u32 totalWeight = 0;
    const struct WeightedHiddenGrottoItem *items = GetHiddenGrottoVisibleItemPool(grotto, &count);

    for (i = 0; i < count; i++)
        totalWeight += items[i].weight;
    if (grotto != NULL && grotto->rareItem != ITEM_NONE)
        totalWeight += 44;

    if (totalWeight == 0)
        return ITEM_NONE;

    roll = RandomUniform(RNG_HIDDEN_GROTTO_VISIBLE_ITEM, 0, totalWeight - 1);
    for (i = 0; i < count; i++)
    {
        if (roll < items[i].weight)
            return items[i].itemId;
        roll -= items[i].weight;
    }

    if (grotto != NULL)
        return grotto->rareItem;
    return ITEM_NONE;
}

static u16 GetHiddenGrottoHiddenItem(const struct HiddenGrotto *grotto)
{
    u8 count;
    const struct WeightedHiddenGrottoItem *items = GetHiddenGrottoHiddenItemPool(grotto, &count);

    return GetHiddenGrottoWeightedItem(items, count, RNG_HIDDEN_GROTTO_HIDDEN_ITEM);
}

static void SetCurrentHiddenGrottoObject(u16 species)
{
    const struct HiddenGrotto *grotto = GetCurrentHiddenGrotto();
    u8 objectEventId;

    if (grotto == NULL || grotto->monObjectLocalId == LOCALID_NONE || species == SPECIES_NONE || species >= NUM_SPECIES)
        return;

    VarSet(VAR_OBJ_GFX_ID_0, OBJ_EVENT_MON + species);
    if (!TryGetObjectEventIdByLocalIdAndMap(grotto->monObjectLocalId, grotto->mapNum, grotto->mapGroup, &objectEventId))
        ObjectEventSetGraphicsId(&gObjectEvents[objectEventId], OBJ_EVENT_MON + species);
}

static bool8 IsHiddenGrottoContentValid(struct HiddenGrottoContent content)
{
    if (content.type > HIDDEN_GROTTO_HIDDEN_ITEM)
        return FALSE;
    if (content.type == HIDDEN_GROTTO_POKEMON && content.id >= NUM_SPECIES)
        return FALSE;
    if ((content.type == HIDDEN_GROTTO_ITEM || content.type == HIDDEN_GROTTO_HIDDEN_ITEM) && content.id >= ITEMS_COUNT)
        return FALSE;
    return TRUE;
}
