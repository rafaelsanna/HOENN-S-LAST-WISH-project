#include "global.h"
#include "hlw_media_save.h"
#include "event_data.h"
#include "random.h"
#include "constants/items.h"

// Persistent entries have one fixed owner; the manager initializes them.
#define HUNGRY_CHANSEY_SAVE_TABLE_OFFSET HLW_MEDIA_CHANSEY_OFFSET
#define HUNGRY_CHANSEY_SAVE_ENTRY_SIZE HLW_MEDIA_CHANSEY_ENTRY_SIZE
#define HUNGRY_CHANSEY_SAVE_ENTRY_COUNT HLW_MEDIA_CHANSEY_ENTRY_COUNT

// Each entry stores map group, map number, local ID, and the requested berry
// as a frozen one-based berry ID (table indices below + 1). Never renumber
// these assignments; zero means unused.
static const u16 sHungryChanseyBerryPool[] =
{
    [0] = ITEM_CHERI_BERRY,
    [1] = ITEM_CHESTO_BERRY,
    [2] = ITEM_PECHA_BERRY,
    [3] = ITEM_RAWST_BERRY,
    [4] = ITEM_ASPEAR_BERRY,
    [5] = ITEM_LEPPA_BERRY,
    [6] = ITEM_ORAN_BERRY,
    [7] = ITEM_PERSIM_BERRY,
    [8] = ITEM_LUM_BERRY,
    [9] = ITEM_SITRUS_BERRY,
};

STATIC_ASSERT(HUNGRY_CHANSEY_SAVE_TABLE_OFFSET
              + HUNGRY_CHANSEY_SAVE_ENTRY_SIZE * HUNGRY_CHANSEY_SAVE_ENTRY_COUNT
              <= sizeof(((struct HLWSaveExtension *)0)->future),
              HungryChanseySaveFitsInExtension);

static u8 *HungryChansey_GetEntry(u8 entry)
{
    return &gSaveBlock1Ptr->hlwSave.future[
        HUNGRY_CHANSEY_SAVE_TABLE_OFFSET + entry * HUNGRY_CHANSEY_SAVE_ENTRY_SIZE];
}

static u8 *HungryChansey_FindEntry(void)
{
    u8 i;
    u8 mapGroup = (u8)gSaveBlock1Ptr->location.mapGroup;
    u8 mapNum = (u8)gSaveBlock1Ptr->location.mapNum;
    u8 localId = (u8)gSpecialVar_LastTalked;

    for (i = 0; i < HUNGRY_CHANSEY_SAVE_ENTRY_COUNT; i++)
    {
        u8 *entry = HungryChansey_GetEntry(i);
        if (entry[3] != 0
         && entry[0] == mapGroup
         && entry[1] == mapNum
         && entry[2] == localId)
            return entry;
    }

    return NULL;
}

static u8 *HungryChansey_FindFreeEntry(void)
{
    u8 i;

    for (i = 0; i < HUNGRY_CHANSEY_SAVE_ENTRY_COUNT; i++)
    {
        u8 *entry = HungryChansey_GetEntry(i);
        if (entry[3] == 0)
            return entry;
    }

    return NULL;
}

u16 HungryChansey_GetRequestedBerry(void)
{
    u8 *entry;
    u16 berry;
    u8 berryId;

    if (gSaveBlock1Ptr == NULL)
        return sHungryChanseyBerryPool[Random() % ARRAY_COUNT(sHungryChanseyBerryPool)];

    entry = HungryChansey_FindEntry();
    if (entry != NULL && entry[3] <= ARRAY_COUNT(sHungryChanseyBerryPool))
        return sHungryChanseyBerryPool[entry[3] - 1];

    berryId = Random() % ARRAY_COUNT(sHungryChanseyBerryPool);
    berry = sHungryChanseyBerryPool[berryId];
    entry = HungryChansey_FindFreeEntry();
    if (entry != NULL)
    {
        entry[0] = (u8)gSaveBlock1Ptr->location.mapGroup;
        entry[1] = (u8)gSaveBlock1Ptr->location.mapNum;
        entry[2] = (u8)gSpecialVar_LastTalked;
        entry[3] = berryId + 1;
    }

    return berry;
}

void HungryChansey_ClearRequestedBerry(void)
{
    u8 *entry;

    if (gSaveBlock1Ptr == NULL)
        return;

    entry = HungryChansey_FindEntry();
    if (entry != NULL)
        memset(entry, 0, HUNGRY_CHANSEY_SAVE_ENTRY_SIZE);
}
