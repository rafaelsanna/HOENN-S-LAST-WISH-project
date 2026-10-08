#include "global.h"
#include "agb_flash.h"
#include "gba/flash_internal.h"
#include "event_data.h"
#include "hall_of_fame.h"
#include "item.h"
#include "load_save.h"
#include "main.h"
#include "malloc.h"
#include "new_game.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "species_relocation.h"
#include "constants/event_objects.h"
#include "constants/flags.h"
#include "test/test.h"

// These tests program only mGBA's private emulated flash. No host save file or
// replacement flash implementation is used. Timer 2 remains the test timeout;
// the real flash driver temporarily borrows the idle link Timer 3 instead.
static IntrFunc sSavedTimer3Handler;
static u16 sSavedTimer3Low;
static u16 sSavedTimer3High;
static u16 sSavedTimer3Ie;
static bool8 sFlashFixtureReady;
static bool8 sSavedDifferentSaveFile;
static void *sContextAllocation;
static u32 sProgress;
static u32 sLastProgress;

static void FlashFixtureResetRam(void)
{
    HlwSave_TestAbort();
    HlwSave_TestFailWriteAfter(-1);
    memset(gSaveBlock1Ptr, 0, sizeof(*gSaveBlock1Ptr));
    memset(gSaveBlock2Ptr, 0, sizeof(*gSaveBlock2Ptr));
    memset(gSaveBlock3Ptr, 0, sizeof(*gSaveBlock3Ptr));
    memset(gPokemonStoragePtr, 0, sizeof(*gPokemonStoragePtr));
    memset(gPlayerParty, 0, sizeof(gPlayerParty));
    gPlayerPartyCount = 0;
    ResetPokemonStorageSystem();
    InitHlwPersistentData();
    // These fixtures create current-format games, just like New Game. Tests
    // that deliberately model legacy saves clear the marker explicitly.
    FlagSet(FLAG_HLW_SPECIES_RELOCATED);
    FlagSet(FLAG_HLW_HOF_SPECIES_RELOCATED);
    ClearBag();
    Save_ResetSaveCounters();
}

static void FlashFixtureSetUp(void *data)
{
    (void)data;
    sFlashFixtureReady = FALSE;
    sSavedDifferentSaveFile = gDifferentSaveFile;
    gDifferentSaveFile = FALSE;
    sContextAllocation = NULL;
    sProgress = sLastProgress = 0;
    if (gFlashMemoryPresent != TRUE || gFlash == NULL || gFlash->romSize != FLASH_ROM_SIZE_1M)
        return;
    sSavedTimer3Handler = gIntrTable[2];
    sSavedTimer3Low = REG_TM3CNT_L;
    sSavedTimer3High = REG_TM3CNT_H;
    sSavedTimer3Ie = REG_IE & INTR_FLAG_TIMER3;
    REG_TM3CNT_H = 0;
    SetFlashTimerIntr(3, &gIntrTable[2]);
    sFlashFixtureReady = TRUE;
    FlashFixtureResetRam();
    ClearSaveData();
}

static void FlashFixtureRun(void *data)
{
    void (*function)(void) = data;
    EXPECT_EQ(sFlashFixtureReady, TRUE);
    function();
}

static void FlashFixtureTearDown(void *data)
{
    IntrFunc ignored;
    (void)data;
    HlwSave_TestAbort();
    HlwSave_TestFailWriteAfter(-1);
    gDifferentSaveFile = sSavedDifferentSaveFile;
    if (gHoFSaveBuffer != NULL)
        FREE_AND_SET_NULL(gHoFSaveBuffer);
    if (sContextAllocation != NULL)
        FREE_AND_SET_NULL(sContextAllocation);
    if (sFlashFixtureReady)
    {
        REG_TM3CNT_H = 0;
        REG_IF = INTR_FLAG_TIMER3;
        REG_IE = (REG_IE & ~INTR_FLAG_TIMER3) | sSavedTimer3Ie;
        gIntrTable[2] = sSavedTimer3Handler;
        REG_TM3CNT_L = sSavedTimer3Low;
        REG_TM3CNT_H = sSavedTimer3High;
        // Restore the driver's timer selection without replacing the runner's
        // Timer 2 interrupt handler.
        SetFlashTimerIntr(2, &ignored);
    }
}

static bool32 FlashFixtureCheckProgress(void *data)
{
    bool32 progressed = sProgress != sLastProgress;
    (void)data;
    sLastProgress = sProgress;
    return progressed;
}

static const struct TestRunner sFlashTestRunner =
{
    .setUp = FlashFixtureSetUp,
    .run = FlashFixtureRun,
    .tearDown = FlashFixtureTearDown,
    .checkProgress = FlashFixtureCheckProgress,
};

#define FLASH_TEST(name_) \
    static void CAT(FlashTest, __LINE__)(void); \
    __attribute__((section(".tests"), used)) static const struct Test CAT(sFlashTest, __LINE__) = \
    { \
        .name = name_, .filename = __FILE__, .runner = &sFlashTestRunner, \
        .sourceLine = __LINE__, .data = (void *)CAT(FlashTest, __LINE__), \
    }; \
    static void CAT(FlashTest, __LINE__)(void)

FLASH_TEST("Species relocation: legacy saves translate party boxes daycare and progress once")
{
    // Emulate a pre-relocation save: custom content still carries the old ID.
    u16 legacy = SPECIES_DARKRAI;
    u16 current = SPECIES_DACHSBUN;
    CreateMon(&gPlayerParty[0], current, 40, 17, TRUE, 0x12345678, OT_ID_PRESET, 0xABCDEF);
    SetMonData(&gPlayerParty[0], MON_DATA_SPECIES, &legacy);
    gPlayerPartyCount = 1;
    gPokemonStoragePtr->boxes[0][0] = gPlayerParty[0].box;
    gSaveBlock1Ptr->daycare.mons[0].mon = gPlayerParty[0].box;
    FlagClear(FLAG_HLW_SPECIES_RELOCATED);
    gHlwSaveBlock4.dexNavSearch[legacy] = 73;
    u16 oldDex = SpeciesToNationalPokedexNum(legacy) - 1;
    u16 newDex = SpeciesToNationalPokedexNum(current) - 1;
    gSaveBlock3Ptr->dexSeen[oldDex / 8] |= 1 << (oldDex % 8);
    gSaveBlock3Ptr->dexCaught[oldDex / 8] |= 1 << (oldDex % 8);
    gObjectEvents[0].graphicsId = OBJ_EVENT_GFX_SPECIES_SHINY_FEMALE(DARKRAI);
    EXPECT_EQ(HandleSavingData(SAVE_NORMAL), SAVE_STATUS_OK);
    sProgress++;
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_OK);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), current);
    EXPECT_EQ(GetBoxMonData(&gPokemonStoragePtr->boxes[0][0], MON_DATA_SPECIES), current);
    EXPECT_EQ(GetBoxMonData(&gSaveBlock1Ptr->daycare.mons[0].mon, MON_DATA_SPECIES), current);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_PERSONALITY), 0x12345678);
    EXPECT_EQ(gHlwSaveBlock4.dexNavSearch[current], 73);
    EXPECT_EQ(gHlwSaveBlock4.dexNavSearch[legacy], 0);
    EXPECT_NE(gSaveBlock3Ptr->dexSeen[newDex / 8] & (1 << (newDex % 8)), 0);
    EXPECT_EQ(gSaveBlock3Ptr->dexSeen[oldDex / 8] & (1 << (oldDex % 8)), 0);
    EXPECT_EQ(gObjectEvents[0].graphicsId, OBJ_EVENT_GFX_SPECIES_SHINY_FEMALE(DACHSBUN));
    EXPECT_EQ(FlagGet(FLAG_HLW_SPECIES_RELOCATED), TRUE);
    // A genuine native Darkrai obtained AFTER migration must stay Darkrai.
    CreateMon(&gPlayerParty[1], legacy, 50, 31, FALSE, 0, OT_ID_PLAYER_ID, 0);
    gPlayerPartyCount = 2;
    HlwSpecies_MigrateSave();
    EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), legacy);
    EXPECT_EQ(HandleSavingData(SAVE_NORMAL), SAVE_STATUS_OK);
    sProgress++;
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_OK);
    EXPECT_EQ(GetMonData(&gPlayerParty[0], MON_DATA_SPECIES), current);
    EXPECT_EQ(GetMonData(&gPlayerParty[1], MON_DATA_SPECIES), legacy);
}

FLASH_TEST("Species relocation: HOF marker commits atomically and protects future native Darkrai")
{
    FlagSet(FLAG_HLW_SPECIES_RELOCATED);
    FlagClear(FLAG_HLW_HOF_SPECIES_RELOCATED);
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    gHoFSaveBuffer[0].mon[0].species = SPECIES_DARKRAI;
    EXPECT_EQ(HandleSavingData(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    sProgress++;
    // Clear only the marker in the next normal bundle to model a legacy HOF
    // archive without introducing an alternate flash/archive implementation.
    FlagClear(FLAG_HLW_HOF_SPECIES_RELOCATED);
    EXPECT_EQ(HandleSavingData(SAVE_NORMAL), SAVE_STATUS_OK);
    sProgress++;
    EXPECT_EQ(LoadGameSave(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ((u16)gHoFSaveBuffer[0].mon[0].species, SPECIES_DACHSBUN);
    EXPECT_EQ(FlagGet(FLAG_HLW_HOF_SPECIES_RELOCATED), FALSE);
    // Just as the game does: append the new team AFTER translating the old
    // archive. The new team can contain an actual restored native Darkrai.
    gHoFSaveBuffer[1].mon[0].species = SPECIES_DARKRAI;
    HlwSave_TestFailWriteAfter(1);
    EXPECT_NE(HandleSavingData(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ(FlagGet(FLAG_HLW_HOF_SPECIES_RELOCATED), FALSE);
    HlwSave_TestFailWriteAfter(-1);
    EXPECT_EQ(HandleSavingData(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    sProgress++;
    EXPECT_EQ(FlagGet(FLAG_HLW_HOF_SPECIES_RELOCATED), TRUE);
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_OK);
    EXPECT_EQ(LoadGameSave(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ((u16)gHoFSaveBuffer[0].mon[0].species, SPECIES_DACHSBUN);
    EXPECT_EQ((u16)gHoFSaveBuffer[1].mon[0].species, SPECIES_DARKRAI);
}

static bool32 SelectedSaveIsUsable(u8 status)
{
    // ERROR is the established "loaded the undamaged backup" UI status.
    return status == SAVE_STATUS_OK || status == SAVE_STATUS_ERROR;
}

static void SetBundleMarker(u8 marker)
{
    gSaveBlock1Ptr->money = marker;
    gSaveBlock2Ptr->playerName[0] = marker;
    gSaveBlock3Ptr->achievements.wishOriginalForms[15] = marker;
    gHlwSaveBlock4.customVars[255] = 0xAB00 | marker;
    gPokemonStoragePtr->boxNames[13][0] = marker;
}

static void ExpectBundleMarker(u8 marker)
{
    EXPECT_EQ(gSaveBlock1Ptr->money, marker);
    EXPECT_EQ(gSaveBlock2Ptr->playerName[0], marker);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.wishOriginalForms[15], marker);
    EXPECT_EQ(gHlwSaveBlock4.customVars[255], 0xAB00 | marker);
    EXPECT_EQ(gPokemonStoragePtr->boxNames[13][0], marker);
}

static void BundleCrcs(u32 crc[5])
{
    crc[0] = HlwSave_Crc32(gSaveBlock1Ptr, sizeof(*gSaveBlock1Ptr));
    crc[1] = HlwSave_Crc32(gSaveBlock2Ptr, sizeof(*gSaveBlock2Ptr));
    crc[2] = HlwSave_Crc32(gSaveBlock3Ptr, sizeof(*gSaveBlock3Ptr));
    crc[3] = HlwSave_Crc32(gPokemonStoragePtr, sizeof(*gPokemonStoragePtr));
    crc[4] = HlwSave_Crc32(&gHlwSaveBlock4, sizeof(gHlwSaveBlock4));
}

static u8 CommitBundle(u8 mode)
{
    u8 status = HlwSave_TestBegin(mode);
    if (status != SAVE_STATUS_OK)
        return status;
    // The bounded transaction writes the nine PC sectors synchronously at
    // Begin and the five mutable main sectors one at a time thereafter.
    for (u32 i = 0; i <= SECTOR_ID_SAVEBLOCK1_END; i++)
    {
        status = HlwSave_TestWriteNext();
        if (status != SAVE_STATUS_OK)
            return status;
    }
    status = HlwSave_TestCommit();
    sProgress++;
    return status;
}

static u16 FindSector(u8 slot, u16 logicalId)
{
    for (u16 sector = slot * NUM_SECTORS_PER_SLOT; sector < (slot + 1) * NUM_SECTORS_PER_SLOT; sector++)
    {
        ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
        if (gSaveDataBuffer.id == logicalId)
            return sector;
    }
    EXPECT(FALSE);
    return 0;
}

static void RewriteSector(u16 sector)
{
    EXPECT_EQ(ProgramFlashSectorAndVerify(sector, (u8 *)&gSaveDataBuffer), 0);
}

static void RepairNormalChecksum(void)
{
    u32 checksum = 0;
    for (u32 i = 0; i < (SECTOR_DATA_SIZE + SAVE_BLOCK_3_CHUNK_SIZE) / sizeof(u32); i++)
        checksum += ((u32 *)gSaveDataBuffer.data)[i];
    gSaveDataBuffer.checksum = (checksum >> 16) + checksum;
}

static void RepairExtensionHeaderCrc(void)
{
    struct HlwSaveExtensionHeader *header = (void *)&gSaveDataBuffer;
    header->headerCrc32 = 0;
    header->headerCrc32 = HlwSave_Crc32(header, sizeof(*header));
}

static u32 CreateTwoGenerations(void)
{
    SetBundleMarker(0x11);
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    u32 previous = gSaveCounter;
    SetBundleMarker(0x22);
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    EXPECT_NE(gSaveCounter, previous);
    return previous;
}

static void ExpectOlderGeneration(u32 previous)
{
    EXPECT(SelectedSaveIsUsable(HlwSave_TestSelect()));
    EXPECT_EQ(gSaveCounter, previous);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    ExpectBundleMarker(0x11);
}

FLASH_TEST("Physical save round-trips every byte of all five banks")
{
    u32 expected[5], actual[5];
    SetBundleMarker(0x19);
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    BundleCrcs(expected);
    memset(gSaveBlock1Ptr, 0xA5, sizeof(*gSaveBlock1Ptr));
    memset(gSaveBlock2Ptr, 0xA5, sizeof(*gSaveBlock2Ptr));
    memset(gSaveBlock3Ptr, 0xA5, sizeof(*gSaveBlock3Ptr));
    memset(gPokemonStoragePtr, 0xA5, sizeof(*gPokemonStoragePtr));
    memset(&gHlwSaveBlock4, 0xA5, sizeof(gHlwSaveBlock4));
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    BundleCrcs(actual);
    for (u32 i = 0; i < ARRAY_COUNT(expected); i++)
        EXPECT_EQ(actual[i], expected[i]);
    ExpectBundleMarker(0x19);
}

FLASH_TEST("Physical save preserves independent pickups without rewriting legacy story bits")
{
    static const u16 pickups[] =
    {
        FLAG_PICKUP_RUSTBORO_CITY_LIGHT_CLAY,
        FLAG_PICKUP_RUSTBORO_CITY_POTION,
        FLAG_PICKUP_ROUTE_104_QUIET_MINT,
        FLAG_PICKUP_PETALBURG_CAVE_QUIET_MINT,
        FLAG_PICKUP_LITTLEROOT_COAST_ETHER,
        FLAG_PICKUP_LONELY_CAVE_B2_TM51,
        FLAG_PICKUP_LONELY_CAVE_B2_RARE_CANDY,
        FLAG_PICKUP_RUSTURF_GROVE_SUPER_REPEL,
        FLAG_PICKUP_GRANITE_CAVE_B1F_RARE_CANDY,
        FLAG_PICKUP_FIERY_PATH_PROTEIN,
        FLAG_PICKUP_FIERY_PATH_PP_UP,
        FLAG_PICKUP_FIERY_PATH_ULTRA_BALL,
        FLAG_PICKUP_FIERY_PATH_REVIVE,
        FLAG_PICKUP_CARGO_SHIP_WATER_STONE,
        FLAG_PICKUP_ABANDONED_SHIP_ROOM_B1F_TM_ICE_BEAM,
    };
    static const u16 legacyFlags[] =
    {
        FLAG_MOSSDEEP_COLLECTED_ITEM_1,
        FLAG_MOSSDEEP_COLLECTED_ITEM_2,
        FLAG_MOSSDEEP_COLLECTED_ITEM_3,
        FLAG_MOSSDEEP_QUEST_COMPLETED,
        FLAG_HIDE_MOSSDEEP_COMET,
        FLAG_MOSSDEEP_CELEBI_RESCUED,
        FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER,
        FLAG_HIDE_MOSSDEEP_CELEBI_STATIC,
        FLAG_MOSSDEEP_PROLOGUE_COMPLETED,
        FLAG_MOSSDEEP_GRANDMA_DIALOGUE,
        FLAG_MOSSDEEP_GRANDPA_DIALOGUE,
        FLAG_HIDE_MOSSDEEP_RIVAL_MALE,
        FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE,
        FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL,
        FLAG_ITEM_ROUTE_104_QUIET_MINT,
        FLAG_ITEM_CARGO_SHIP_WATER_STONE,
    };

    // None, all, each individual pickup, and all except each pickup. This
    // covers both states of every bit without exponential flash writes.
    for (u32 pattern = 0; pattern < 2 + 2 * ARRAY_COUNT(pickups); pattern++)
    {
        u32 all = (1 << ARRAY_COUNT(pickups)) - 1;
        u32 mask;

        if (pattern == 0)
            mask = 0;
        else if (pattern == 1)
            mask = all;
        else if (pattern < 2 + ARRAY_COUNT(pickups))
            mask = 1 << (pattern - 2);
        else
            mask = all ^ (1 << (pattern - 2 - ARRAY_COUNT(pickups)));

        for (u32 i = 0; i < ARRAY_COUNT(legacyFlags); i++)
            FlagSet(legacyFlags[i]);
        FlagSet(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
        for (u32 i = 0; i < ARRAY_COUNT(pickups); i++)
        {
            if (mask & (1 << i))
                FlagSet(pickups[i]);
            else
                FlagClear(pickups[i]);
        }
        EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);

        for (u32 i = 0; i < ARRAY_COUNT(legacyFlags); i++)
            FlagClear(legacyFlags[i]);
        FlagClear(FLAG_PLAYER_AWOKE_IN_LITTLEROOT);
        for (u32 i = 0; i < ARRAY_COUNT(pickups); i++)
            FlagToggle(pickups[i]);
        EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));

        for (u32 i = 0; i < ARRAY_COUNT(legacyFlags); i++)
            EXPECT_EQ(FlagGet(legacyFlags[i]), TRUE);
        EXPECT_EQ(FlagGet(FLAG_PLAYER_AWOKE_IN_LITTLEROOT), TRUE);
        for (u32 i = 0; i < ARRAY_COUNT(pickups); i++)
            EXPECT_EQ(FlagGet(pickups[i]), !!(mask & (1 << i)));
    }
}

FLASH_TEST("Physical save freezes mutable banks and PC before incremental yielding")
{
    SetBundleMarker(0x31);
    EXPECT_EQ(HlwSave_TestBegin(SAVE_LINK), SAVE_STATUS_OK);
    SetBundleMarker(0x42);
    for (u32 i = 0; i <= SECTOR_ID_SAVEBLOCK1_END; i++)
        EXPECT_EQ(HlwSave_TestWriteNext(), SAVE_STATUS_OK);
    EXPECT_EQ(HlwSave_TestCommit(), SAVE_STATUS_OK);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    ExpectBundleMarker(0x31);
}

FLASH_TEST("Physical save fits with the link contest results heap lower bound live")
{
    // ARM sizeof measurements plus 16 real allocator headers: see
    // AllocContestResults, AllocateMonSpritesGfx, and its four 12x2 windows.
    sContextAllocation = Alloc(54852);
    EXPECT(sContextAllocation != NULL);
    SetBundleMarker(0x51);
    EXPECT_EQ(CommitBundle(SAVE_LINK), SAVE_STATUS_OK);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    ExpectBundleMarker(0x51);
    FREE_AND_SET_NULL(sContextAllocation);
}

FLASH_TEST("Physical save routes normal link eReader and overwrite through complete bundles")
{
    static const u8 modes[] = {SAVE_NORMAL, SAVE_LINK, SAVE_EREADER, SAVE_OVERWRITE_DIFFERENT_FILE};
    for (u32 i = 0; i < ARRAY_COUNT(modes); i++)
    {
        SetBundleMarker(0x61 + i);
        EXPECT_EQ(CommitBundle(modes[i]), SAVE_STATUS_OK);
        EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
        ExpectBundleMarker(0x61 + i);
        sProgress++;
    }
}

FLASH_TEST("Physical overwrite publishes a new game over an older higher-generation file")
{
    u8 oldUuid[16];
    CreateTwoGenerations();
    memcpy(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid));
    // New Game resets RAM and the counter, but the old on-flash game survives
    // until the user confirms overwriting it.
    FlashFixtureResetRam();
    EXPECT_NE(memcmp(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid)), 0);
    SetBundleMarker(0x66);
    EXPECT_EQ(CommitBundle(SAVE_OVERWRITE_DIFFERENT_FILE), SAVE_STATUS_OK);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    ExpectBundleMarker(0x66);
    EXPECT_NE(memcmp(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid)), 0);
}

FLASH_TEST("Physical confirmed replacement resolves a repeated new-game UUID")
{
    u8 oldUuid[16];
    CreateTwoGenerations();
    memcpy(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid));
    FlashFixtureResetRam();
    memcpy(gPokemonStoragePtr->metadata.saveUuid, oldUuid, sizeof(oldUuid));
    SetBundleMarker(0x66);
    // Publish, but interrupt obsolete-slot cleanup; the new UUID must still
    // prevent the old player's game from returning if the new main is damaged.
    HlwSave_TestFailWriteAfter(16);
    EXPECT_EQ(CommitBundle(SAVE_OVERWRITE_DIFFERENT_FILE), SAVE_STATUS_OK);
    EXPECT_NE(memcmp(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid)), 0);
    HlwSave_TestFailWriteAfter(-1);
    u16 sector = FindSector(gSaveCounter % NUM_SAVE_SLOTS, 1);
    gSaveDataBuffer.data[0] ^= 0x80;
    RepairNormalChecksum();
    RewriteSector(sector);
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_CORRUPT);
    ExpectBundleMarker(0x66);
}

FLASH_TEST("Physical overwrite failures retain either the complete old or complete new game")
{
    for (s32 boundary = 0; boundary < 36; boundary++)
    {
        u8 oldUuid[16], nextUuid[16];
        ClearSaveData();
        FlashFixtureResetRam();
        CreateTwoGenerations();
        u32 previous = gSaveCounter;
        memcpy(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid));
        FlashFixtureResetRam();
        memcpy(nextUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(nextUuid));
        SetBundleMarker(0x66);
        HlwSave_TestFailWriteAfter(boundary);
        u8 status = CommitBundle(SAVE_OVERWRITE_DIFFERENT_FILE);
        HlwSave_TestAbort();
        HlwSave_TestFailWriteAfter(-1);
        EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
        if (status != SAVE_STATUS_OK)
        {
            EXPECT_EQ(gSaveCounter, previous);
            ExpectBundleMarker(0x22);
            EXPECT_EQ(memcmp(oldUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(oldUuid)), 0);
        }
        else
        {
            ExpectBundleMarker(0x66);
            EXPECT_EQ(memcmp(nextUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(nextUuid)), 0);
        }
        sProgress++;
    }
}

FLASH_TEST("Physical save rejects changed SaveBlock3 bytes with a repaired sector checksum")
{
    u32 previous = CreateTwoGenerations();
    u16 sector = FindSector(gSaveCounter % NUM_SAVE_SLOTS, 3);
    gSaveDataBuffer.saveBlock3Chunk[4] ^= 0x80;
    RepairNormalChecksum();
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects a changed main image with a repaired sector checksum")
{
    u32 previous = CreateTwoGenerations();
    u16 sector = FindSector(gSaveCounter % NUM_SAVE_SLOTS, 1);
    gSaveDataBuffer.data[0] ^= 0x80;
    RepairNormalChecksum();
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects a missing extension and keeps the older bundle")
{
    u32 previous = CreateTwoGenerations();
    EXPECT_EQ(EraseFlashSector(SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS), 0);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects extension header corruption")
{
    u32 previous = CreateTwoGenerations();
    u16 sector = SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS;
    ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->header.headerCrc32 ^= 1;
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects an unpublished extension with a valid header CRC")
{
    u32 previous = CreateTwoGenerations();
    u16 sector = SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS;
    ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->header.completeMarker = 0xFFFFFFFF;
    RepairExtensionHeaderCrc();
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects extension payload corruption")
{
    u32 previous = CreateTwoGenerations();
    u16 sector = SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS;
    ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->payload.customFlags[100] ^= 1;
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects an extension UUID from another save")
{
    u32 previous = CreateTwoGenerations();
    u16 sector = SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS;
    ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->header.saveUuid[8] ^= 1;
    RepairExtensionHeaderCrc();
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
}

FLASH_TEST("Physical save rejects invalid duplicate and mixed-generation logical sector IDs")
{
    for (u32 variant = 0; variant < 3; variant++)
    {
        ClearSaveData();
        FlashFixtureResetRam();
        u32 previous = CreateTwoGenerations();
        u16 sector = FindSector(gSaveCounter % NUM_SAVE_SLOTS, 3);
        if (variant == 0)
            gSaveDataBuffer.id = NUM_SECTORS_PER_SLOT;
        else if (variant == 1)
            gSaveDataBuffer.id = 2;
        else
            gSaveDataBuffer.counter = previous;
        RewriteSector(sector);
        ExpectOlderGeneration(previous);
        sProgress++;
    }
}

FLASH_TEST("Physical save distinguishes newer extension versions from legacy files")
{
    SetBundleMarker(0x71);
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    u16 sector = SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS;
    ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->header.schemaVersion++;
    RepairExtensionHeaderCrc();
    RewriteSector(sector);
    EXPECT_EQ(HlwSave_TestSelect(), SAVE_STATUS_NEWER_VERSION);
    EXPECT_NE(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);

    ClearSaveData();
    FlashFixtureResetRam();
    SetBundleMarker(0x72);
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    sector = FindSector(gSaveCounter % NUM_SAVE_SLOTS, SECTOR_ID_PKMN_STORAGE_END);
    // Pre-0.9 files had no HLW metadata at the fixed final-storage-sector offset.
    memset(gSaveDataBuffer.data + offsetof(struct PokemonStorage, metadata)
           - 8 * SECTOR_DATA_SIZE, 0, sizeof(struct HlwSaveMetadata));
    RepairNormalChecksum();
    RewriteSector(sector);
    EXPECT_EQ(EraseFlashSector(SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % NUM_SAVE_SLOTS), 0);
    EXPECT_EQ(HlwSave_TestSelect(), SAVE_STATUS_INCOMPATIBLE);
}

FLASH_TEST("Physical overwrite remains loadable when power stops before retiring a newer-schema old game")
{
    SetBundleMarker(0x11);
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    u8 oldSlot = gSaveCounter % NUM_SAVE_SLOTS;
    u16 oldExtension = SECTOR_ID_HLW_EXTENSION_A + oldSlot;
    ReadFlash(oldExtension, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->header.schemaVersion++;
    RepairExtensionHeaderCrc();
    RewriteSector(oldExtension);
    EXPECT_EQ(HlwSave_TestSelect(), SAVE_STATUS_NEWER_VERSION);
    FlashFixtureResetRam();
    SetBundleMarker(0x66);
    // Extension + nine PC + five main sectors + publication byte succeed.
    // Every retirement erase after publication fails, simulating a power cut.
    HlwSave_TestFailWriteAfter(16);
    EXPECT_EQ(CommitBundle(SAVE_OVERWRITE_DIFFERENT_FILE), SAVE_STATUS_OK);
    HlwSave_TestFailWriteAfter(-1);
    ReadFlash(oldExtension, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    EXPECT_EQ(((struct HlwSaveExtensionSector *)&gSaveDataBuffer)->header.schemaVersion, HLW_SAVE_SCHEMA_VERSION + 1);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    ExpectBundleMarker(0x66);
}

FLASH_TEST("Physical overwrite never resumes the replaced UUID after published-main corruption")
{
    CreateTwoGenerations();
    FlashFixtureResetRam();
    SetBundleMarker(0x66);
    HlwSave_TestFailWriteAfter(16);
    EXPECT_EQ(CommitBundle(SAVE_OVERWRITE_DIFFERENT_FILE), SAVE_STATUS_OK);
    HlwSave_TestFailWriteAfter(-1);
    u16 sector = FindSector(gSaveCounter % NUM_SAVE_SLOTS, 1);
    gSaveDataBuffer.data[0] ^= 0x80;
    RepairNormalChecksum();
    RewriteSector(sector);
    EXPECT_EQ(HlwSave_TestSelect(), SAVE_STATUS_CORRUPT);
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_CORRUPT);
    // Rejection is read-only: no old-player data may be copied into live RAM.
    ExpectBundleMarker(0x66);
}

FLASH_TEST("Physical save interruption at every write preserves the prior complete bundle")
{
    // 9 PC sectors, extension, 5 main sectors, and final publication; test
    // several additional boundaries so a newly added write cannot hide.
    for (s32 boundary = 0; boundary < 20; boundary++)
    {
        ClearSaveData();
        FlashFixtureResetRam();
        SetBundleMarker(0x11);
        EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
        u32 previous = gSaveCounter;
        SetBundleMarker(0x22);
        HlwSave_TestFailWriteAfter(boundary);
        u8 status = CommitBundle(SAVE_LINK);
        HlwSave_TestAbort();
        HlwSave_TestFailWriteAfter(-1);
        EXPECT(SelectedSaveIsUsable(HlwSave_TestSelect()));
        if (status != SAVE_STATUS_OK)
        {
            EXPECT_EQ(gSaveCounter, previous);
            EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
            ExpectBundleMarker(0x11);
        }
        else
        {
            EXPECT_NE(gSaveCounter, previous);
            EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
            ExpectBundleMarker(0x22);
        }
        sProgress++;
    }
}

FLASH_TEST("Physical save keeps all thirty Hall of Fame teams across a round trip")
{
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    for (u32 team = 0; team < HLW_HOF_TOTAL_TEAMS; team++)
    {
        gHoFSaveBuffer[team].mon[0].tid = 0x12340000 | team;
        gHoFSaveBuffer[team].mon[0].species = SPECIES_BULBASAUR;
        gHoFSaveBuffer[team].mon[0].lvl = team + 1;
    }
    u32 expected = HlwSave_Crc32(gHoFSaveBuffer, sizeof(*gHoFSaveBuffer) * HLW_HOF_TOTAL_TEAMS);
    SetBundleMarker(0x73);
    EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    memset(gHoFSaveBuffer, 0, SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_HALL_OF_FAME)));
    EXPECT_EQ(HlwSave_Crc32(gHoFSaveBuffer, sizeof(*gHoFSaveBuffer) * HLW_HOF_TOTAL_TEAMS), expected);
    FREE_AND_SET_NULL(gHoFSaveBuffer);
}

FLASH_TEST("Physical save interruption never publishes mismatched Hall of Fame history")
{
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    for (s32 boundary = 0; boundary < 21; boundary++)
    {
        ClearSaveData();
        FlashFixtureResetRam();
        memset(gHoFSaveBuffer, 0, SECTOR_SIZE * NUM_HOF_SECTORS);
        for (u32 team = 0; team < HLW_HOF_TOTAL_TEAMS; team++)
        {
            gHoFSaveBuffer[team].mon[0].tid = 0x11110000 | team;
            gHoFSaveBuffer[team].mon[0].species = SPECIES_BULBASAUR;
        }
        u32 previousCrc = HlwSave_Crc32(gHoFSaveBuffer, sizeof(*gHoFSaveBuffer) * HLW_HOF_TOTAL_TEAMS);
        SetBundleMarker(0x11);
        EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
        u32 previous = gSaveCounter;
        for (u32 team = 0; team < HLW_HOF_TOTAL_TEAMS; team++)
            gHoFSaveBuffer[team].mon[0].tid = 0x22220000 | team;
        u32 nextCrc = HlwSave_Crc32(gHoFSaveBuffer, sizeof(*gHoFSaveBuffer) * HLW_HOF_TOTAL_TEAMS);
        SetBundleMarker(0x22);
        HlwSave_TestFailWriteAfter(boundary);
        u8 status = CommitBundle(SAVE_HALL_OF_FAME);
        HlwSave_TestAbort();
        HlwSave_TestFailWriteAfter(-1);
        EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
        if (status != SAVE_STATUS_OK)
        {
            EXPECT_EQ(gSaveCounter, previous);
            ExpectBundleMarker(0x11);
        }
        else
        {
            EXPECT_NE(gSaveCounter, previous);
            ExpectBundleMarker(0x22);
        }
        memset(gHoFSaveBuffer, 0, SECTOR_SIZE * NUM_HOF_SECTORS);
        EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_HALL_OF_FAME)));
        EXPECT_EQ(HlwSave_Crc32(gHoFSaveBuffer, sizeof(*gHoFSaveBuffer) * HLW_HOF_TOTAL_TEAMS),
                  status == SAVE_STATUS_OK ? nextCrc : previousCrc);
        sProgress++;
    }
    FREE_AND_SET_NULL(gHoFSaveBuffer);
}

FLASH_TEST("Physical save rejects a damaged Hall of Fame archive and loads the older bundle")
{
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    gHoFSaveBuffer[0].mon[0].species = SPECIES_BULBASAUR;
    SetBundleMarker(0x11);
    EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    u32 previous = gSaveCounter;
    gHoFSaveBuffer[0].mon[0].species = SPECIES_IVYSAUR;
    SetBundleMarker(0x22);
    EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    u16 sector = SECTOR_ID_HOF_1 + gPokemonStoragePtr->metadata.hallOfFameBank;
    ReadFlash(sector, 0, (u8 *)&gSaveDataBuffer, SECTOR_SIZE);
    ((struct HlwHallOfFameArchive *)&gSaveDataBuffer)->teams[0] ^= 1;
    RewriteSector(sector);
    ExpectOlderGeneration(previous);
    EXPECT_EQ(LoadGameSave(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ((u16)gHoFSaveBuffer[0].mon[0].species, SPECIES_BULBASAUR);
    FREE_AND_SET_NULL(gHoFSaveBuffer);
}

FLASH_TEST("Physical first-save Hall of Fame replacement is consumed before the next normal save")
{
    u8 newUuid[16];
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    gHoFSaveBuffer[0].mon[0].species = SPECIES_BULBASAUR;
    EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    FlashFixtureResetRam();
    gDifferentSaveFile = TRUE;
    gHoFSaveBuffer[0].mon[0].species = SPECIES_IVYSAUR;
    EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ(gDifferentSaveFile, FALSE);
    memcpy(newUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(newUuid));
    u32 previous = gSaveCounter;
    EXPECT_EQ(CommitBundle(SAVE_NORMAL), SAVE_STATUS_OK);
    EXPECT_EQ(gSaveCounter, previous + 1);
    EXPECT_EQ(memcmp(newUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(newUuid)), 0);
    EXPECT(SelectedSaveIsUsable(LoadGameSave(SAVE_NORMAL)));
    EXPECT_EQ(memcmp(newUuid, gPokemonStoragePtr->metadata.saveUuid, sizeof(newUuid)), 0);
    memset(gHoFSaveBuffer, 0, SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT_EQ(LoadGameSave(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ((u16)gHoFSaveBuffer[0].mon[0].species, SPECIES_IVYSAUR);
    FREE_AND_SET_NULL(gHoFSaveBuffer);
}

FLASH_TEST("Physical first Hall of Fame save of a new game preserves the replaced archive on failure")
{
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    gHoFSaveBuffer[0].mon[0].species = SPECIES_BULBASAUR;
    SetBundleMarker(0x11);
    EXPECT_EQ(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    u32 previous = gSaveCounter;
    FlashFixtureResetRam();
    gHoFSaveBuffer[0].mon[0].species = SPECIES_IVYSAUR;
    gDifferentSaveFile = TRUE;
    SetBundleMarker(0x22);
    // The new archive is programmed, but publication has not begun.
    HlwSave_TestFailWriteAfter(1);
    EXPECT_NE(CommitBundle(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    HlwSave_TestAbort();
    HlwSave_TestFailWriteAfter(-1);
    ExpectOlderGeneration(previous);
    EXPECT_EQ(LoadGameSave(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    EXPECT_EQ((u16)gHoFSaveBuffer[0].mon[0].species, SPECIES_BULBASAUR);
    FREE_AND_SET_NULL(gHoFSaveBuffer);
}
