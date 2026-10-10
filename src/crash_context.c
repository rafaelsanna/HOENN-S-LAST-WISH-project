#include "global.h"
#include "battle_main.h"
#include "crash_context.h"
#include "overworld.h"

// Diagnostic-only, not saved. No IWRAM reservation or failure-time allocation.
static EWRAM_DATA MainCallback sScreenCallback = NULL;
static EWRAM_DATA const char *sScreenName = NULL;

struct CrashMapName
{
    u16 id;
    const char *name;
};

#include "data/crash_map_names.h"

struct ScreenAlias
{
    const char *match;
    const char *label;
};

static const struct ScreenAlias sScreenAliases[] =
{
    {"PokeStorage", "PC/STORAGE"},
    {"PokemonStorage", "PC/STORAGE"},
    {"ItemMenu", "BAG"},
    {"BagMenu", "BAG"},
    {"PartyMenu", "PARTY MENU"},
    {"Summary", "POKEMON SUMMARY"},
    {"TrainerCard", "TRAINER CARD"},
    {"Pokedex", "POKEDEX"},
    {"Naming", "NAMING SCREEN"},
    {"Battle", "BATTLE"},
    {"BlockStacker", "BLOCK STACKER"},
    {"Pinball", "PINBALL"},
    {"Voltorb", "VOLTORB FLIP"},
    {"Flappy", "FLAPPY BIRD"},
    {"Blackjack", "BLACKJACK"},
    {"Roulette", "ROULETTE"},
    {"SlotMachine", "SLOT MACHINE"},
    {"Mining", "MINING"},
    {"Gacha", "GACHA"},
    {"Achievements", "ACHIEVEMENTS"},
    {"Option", "OPTIONS"},
    {"MainMenu", "MAIN MENU"},
    {"TitleScreen", "TITLE SCREEN"},
    {"Overworld", "FIELD/MENU"},
    {"ReturnToField", "FIELD/MENU"},
};

static bool32 RomName(const char *name)
{
    uintptr_t p = (uintptr_t)name;
    if (p < ROM_START || p >= ROM_END)
        return FALSE;
    for (u32 i = 0; i < 128 && p + i < ROM_END; i++)
        if (name[i] == '\0')
            return TRUE;
    return FALSE;
}

static bool32 Contains(const char *name, const char *part)
{
    // Both strings are bounded ROM strings, never scene-owned heap buffers.
    for (u32 i = 0; name[i] != '\0'; i++)
    {
        u32 j = 0;
        while (part[j] != '\0' && name[i + j] == part[j])
            j++;
        if (part[j] == '\0')
            return TRUE;
    }
    return FALSE;
}

void CrashContext_SetCallback(MainCallback callback, const char *name)
{
    // A report interrupting this update must not reuse an old label.
    sScreenName = NULL;
    sScreenCallback = callback;
    sScreenName = name;
}

const char *CrashContext_GetScreenName(void)
{
    MainCallback callback = gMain.callback2;
    if (CrashContext_PokemonPCActive())
        return "PC/STORAGE";
    if (callback == CB2_Overworld || callback == CB2_OverworldBasic)
    {
        if (CrashContext_PlayerPCActive())
            return "PLAYER PC";
        if (CrashContext_WishMenuActive())
            return "WISH MENU";
        return "FIELD/MENU";
    }
    if (callback == BattleMainCB2)
        return "BATTLE";
    if (callback == sScreenCallback && RomName(sScreenName))
    {
        for (u32 i = 0; i < ARRAY_COUNT(sScreenAliases); i++)
            if (Contains(sScreenName, sScreenAliases[i].match))
                return sScreenAliases[i].label;
        return sScreenName;
    }
    if (gMain.inBattle)
        return "BATTLE";
    return "UNKNOWN";
}

static bool32 RamSpan(const void *pointer, u32 size)
{
    uintptr_t p = (uintptr_t)pointer;
    return p >= EWRAM_START && p < EWRAM_END
        && size <= EWRAM_END - p && (p & 3) == 0;
}

bool32 CrashContext_GetMap(u8 *group, u8 *num, const char **name)
{
    *name = NULL;
    // The header is a fixed global. Do not dereference its layout or trust a
    // NULL/invalid save pointer, including title-screen and damaged-save cases.
    uintptr_t layout = (uintptr_t)gMapHeader.mapLayout;
    if (!((layout >= ROM_START && layout < ROM_END)
       || (layout >= EWRAM_START && layout < EWRAM_END))
     || !RamSpan(gSaveBlock1Ptr, sizeof(*gSaveBlock1Ptr)))
        return FALSE;
    *group = (u8)gSaveBlock1Ptr->location.mapGroup;
    *num = (u8)gSaveBlock1Ptr->location.mapNum;
    u32 id = (*group << 8) | *num;
    u32 first = 0, last = ARRAY_COUNT(sCrashMapNames);
    while (first < last)
    {
        u32 middle = first + (last - first) / 2;
        if (sCrashMapNames[middle].id < id)
            first = middle + 1;
        else
            last = middle;
    }
    if (first < ARRAY_COUNT(sCrashMapNames) && sCrashMapNames[first].id == id)
        *name = sCrashMapNames[first].name;
    return TRUE;
}
