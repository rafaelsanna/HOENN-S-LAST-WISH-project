#include "global.h"
#include "event_data.h"
#include "random.h"
#include "constants/items.h"

#define HUNGRY_CHANSEY_SAVE_MAGIC              0x484C5753
#define HUNGRY_CHANSEY_SAVE_VERSION            1

// The first 80 bytes are already used by the radio, UI themes, and options.
// This table uses the remaining reserved extension space without changing the
// size or layout of the save block.
#define HUNGRY_CHANSEY_SAVE_TAG0_OFFSET        80
#define HUNGRY_CHANSEY_SAVE_TAG1_OFFSET        81
#define HUNGRY_CHANSEY_SAVE_VERSION_OFFSET     82
#define HUNGRY_CHANSEY_SAVE_TABLE_OFFSET       84
#define HUNGRY_CHANSEY_SAVE_ENTRY_SIZE         4
#define HUNGRY_CHANSEY_SAVE_ENTRY_COUNT        64

// Each entry stores map group, map number, local ID, and the requested berry
// as a one-based index into sHungryChanseyBerryPool. Zero means unused.
static const u16 sHungryChanseyBerryPool[] =
{
    ITEM_CHERI_BERRY,
    ITEM_CHESTO_BERRY,
    ITEM_PECHA_BERRY,
    ITEM_RAWST_BERRY,
    ITEM_ASPEAR_BERRY,
    ITEM_LEPPA_BERRY,
    ITEM_ORAN_BERRY,
    ITEM_PERSIM_BERRY,
    ITEM_LUM_BERRY,
    ITEM_SITRUS_BERRY,
};

STATIC_ASSERT(HUNGRY_CHANSEY_SAVE_TABLE_OFFSET
              + HUNGRY_CHANSEY_SAVE_ENTRY_SIZE * HUNGRY_CHANSEY_SAVE_ENTRY_COUNT
              <= sizeof(((struct HLWSaveExtension *)0)->future),
              HungryChanseySaveFitsInExtension);

static void HungryChansey_InitSaveData(void)
{
    struct HLWSaveExtension *extension;

    if (gSaveBlock1Ptr == NULL)
        return;

    extension = &gSaveBlock1Ptr->hlwSave;
    if (extension->magic != HUNGRY_CHANSEY_SAVE_MAGIC
     || extension->version != HUNGRY_CHANSEY_SAVE_VERSION
     || extension->size != sizeof(*extension))
    {
        memset(extension, 0, sizeof(*extension));
        extension->magic = HUNGRY_CHANSEY_SAVE_MAGIC;
        extension->version = HUNGRY_CHANSEY_SAVE_VERSION;
        extension->size = sizeof(*extension);
    }

    if (extension->future[HUNGRY_CHANSEY_SAVE_TAG0_OFFSET] != 'C'
     || extension->future[HUNGRY_CHANSEY_SAVE_TAG1_OFFSET] != 'H'
     || extension->future[HUNGRY_CHANSEY_SAVE_VERSION_OFFSET] != HUNGRY_CHANSEY_SAVE_VERSION)
    {
        extension->future[HUNGRY_CHANSEY_SAVE_TAG0_OFFSET] = 'C';
        extension->future[HUNGRY_CHANSEY_SAVE_TAG1_OFFSET] = 'H';
        extension->future[HUNGRY_CHANSEY_SAVE_VERSION_OFFSET] = HUNGRY_CHANSEY_SAVE_VERSION;
        memset(&extension->future[HUNGRY_CHANSEY_SAVE_TABLE_OFFSET],
               0,
               HUNGRY_CHANSEY_SAVE_ENTRY_SIZE * HUNGRY_CHANSEY_SAVE_ENTRY_COUNT);
    }
}

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

    HungryChansey_InitSaveData();
    if (gSaveBlock1Ptr == NULL)
        return sHungryChanseyBerryPool[Random() % ARRAY_COUNT(sHungryChanseyBerryPool)];

    entry = HungryChansey_FindEntry();
    if (entry != NULL && entry[3] <= ARRAY_COUNT(sHungryChanseyBerryPool))
        return sHungryChanseyBerryPool[entry[3] - 1];

    berry = sHungryChanseyBerryPool[Random() % ARRAY_COUNT(sHungryChanseyBerryPool)];
    entry = HungryChansey_FindFreeEntry();
    if (entry != NULL)
    {
        entry[0] = (u8)gSaveBlock1Ptr->location.mapGroup;
        entry[1] = (u8)gSaveBlock1Ptr->location.mapNum;
        entry[2] = (u8)gSpecialVar_LastTalked;
        entry[3] = (u8)(berry - ITEM_CHERI_BERRY + 1);
    }

    return berry;
}

void HungryChansey_ClearRequestedBerry(void)
{
    u8 *entry;

    HungryChansey_InitSaveData();
    if (gSaveBlock1Ptr == NULL)
        return;

    entry = HungryChansey_FindEntry();
    if (entry != NULL)
        memset(entry, 0, HUNGRY_CHANSEY_SAVE_ENTRY_SIZE);
}
