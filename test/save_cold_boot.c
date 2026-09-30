#include "global.h"
#include "agb_flash.h"
#include "battle_setup.h"
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
#include "text.h"
#include "test/test.h"

// These are an opt-in process pair, not a same-process round trip. Run only
// through tools/check_hlw_cold_boot.sh: it creates a private ROM/battery file,
// exits the writer emulator, then launches a fresh reader emulator.
static IntrFunc sSavedTimer3Handler;
static u16 sSavedTimer3Low, sSavedTimer3High, sSavedTimer3Ie;
static bool8 sTimerBorrowed;
static u32 sProgress, sLastProgress;

static void ColdBootSetUp(void *data)
{
    (void)data;
    sTimerBorrowed = FALSE;
    sProgress = sLastProgress = 0;
    // A broad test-suite invocation must not accidentally erase a battery.
    ASSUME(strcmp(gTestRunnerArgv, gTestRunnerState.test->name) == 0);
    EXPECT_EQ(gFlashMemoryPresent, TRUE);
    EXPECT(gFlash != NULL);
    EXPECT_EQ(gFlash->romSize, FLASH_ROM_SIZE_1M);
    sSavedTimer3Handler = gIntrTable[2];
    sSavedTimer3Low = REG_TM3CNT_L;
    sSavedTimer3High = REG_TM3CNT_H;
    sSavedTimer3Ie = REG_IE & INTR_FLAG_TIMER3;
    REG_TM3CNT_H = 0;
    SetFlashTimerIntr(3, &gIntrTable[2]);
    sTimerBorrowed = TRUE;
    HlwSave_TestFailWriteAfter(-1);
}

static void ColdBootRun(void *data)
{
    void (*function)(void) = data;
    function();
}

static void ColdBootTearDown(void *data)
{
    IntrFunc ignored;
    (void)data;
    HlwSave_TestAbort();
    if (gHoFSaveBuffer != NULL)
        FREE_AND_SET_NULL(gHoFSaveBuffer);
    if (sTimerBorrowed)
    {
        REG_TM3CNT_H = 0;
        REG_IF = INTR_FLAG_TIMER3;
        REG_IE = (REG_IE & ~INTR_FLAG_TIMER3) | sSavedTimer3Ie;
        gIntrTable[2] = sSavedTimer3Handler;
        REG_TM3CNT_L = sSavedTimer3Low;
        REG_TM3CNT_H = sSavedTimer3High;
        SetFlashTimerIntr(2, &ignored);
    }
}

static bool32 ColdBootCheckProgress(void *data)
{
    bool32 progressed = sProgress != sLastProgress;
    (void)data;
    sLastProgress = sProgress;
    return progressed;
}

static const struct TestRunner sColdBootRunner =
{
    .setUp = ColdBootSetUp,
    .run = ColdBootRun,
    .tearDown = ColdBootTearDown,
    .checkProgress = ColdBootCheckProgress,
};

#define COLD_BOOT_TEST(name_, function_) \
    static void function_(void); \
    __attribute__((section(".tests"), used)) static const struct Test CAT(sTest_, function_) = \
    { \
        .name = name_, .filename = __FILE__, .runner = &sColdBootRunner, \
        .sourceLine = __LINE__, .data = (void *)function_, \
    }; \
    static void function_(void)

static void ExpectMarkersAndPrintCrcs(void)
{
    EXPECT_EQ(gSaveCounter, 2);
    EXPECT_EQ(gSaveBlock1Ptr->money, 0x123456);
    EXPECT_EQ(gSaveBlock2Ptr->playerName[0], 0xBB);
    EXPECT_EQ(gSaveBlock2Ptr->playTimeHours, 321);
    EXPECT_EQ(gSaveBlock3Ptr->trainerFlags[0], 1);
    EXPECT_EQ(gSaveBlock3Ptr->trainerFlags[255], 0x80);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.wishOriginalForms[15], 0xA5);
    EXPECT_EQ(gSaveBlock3Ptr->dexSeen[128], 1);
    EXPECT_EQ(gHlwSaveBlock4.customFlags[0], 1);
    EXPECT_EQ(gHlwSaveBlock4.customFlags[255], 0x80);
    EXPECT_EQ(gHlwSaveBlock4.customVars[255], 0xBEEF);
    EXPECT_EQ(gHlwSaveBlock4.dexNavSearch[2047], 0x73);
    EXPECT_EQ(gHlwSaveBlock4.grottoStates[63], 0x2A15);
    EXPECT_EQ(gPokemonStoragePtr->boxNames[13][0], 0xBC);
    EXPECT_EQ(gPokemonStoragePtr->bagSupplement.keyItemsExtra[33].itemId, ITEM_POTION);
    EXPECT_EQ(gPokemonStoragePtr->bagSupplement.keyItemsExtra[33].quantity, 7);
    EXPECT_EQ(gPokemonStoragePtr->metadata.hallOfFameGeneration, 1);
    EXPECT_EQ(gPokemonStoragePtr->metadata.hallOfFameBank, 0);

    gHoFSaveBuffer = gHoFSaveBuffer != NULL ? gHoFSaveBuffer : AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    EXPECT_EQ(LoadGameSave(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    for (u32 team = 0; team < HLW_HOF_TOTAL_TEAMS; team++)
    {
        EXPECT_EQ(gHoFSaveBuffer[team].mon[0].tid, 0xC0010000u | team);
        EXPECT_EQ((u16)gHoFSaveBuffer[team].mon[0].species, SPECIES_BULBASAUR);
        EXPECT_EQ(gHoFSaveBuffer[team].mon[0].lvl, team + 1);
    }

    // Compare all bytes after the normal load hooks have run in each process.
    // Print 16-bit halves because the test logger's format is intentionally small.
    const void *banks[] = {gSaveBlock1Ptr, gSaveBlock2Ptr, gSaveBlock3Ptr, gPokemonStoragePtr, &gHlwSaveBlock4};
    const u32 sizes[] = {sizeof(*gSaveBlock1Ptr), sizeof(*gSaveBlock2Ptr), sizeof(*gSaveBlock3Ptr), sizeof(*gPokemonStoragePtr), sizeof(gHlwSaveBlock4)};
    for (u32 bank = 0; bank < ARRAY_COUNT(banks); bank++)
    {
        u32 crc = HlwSave_Crc32(banks[bank], sizes[bank]);
        Test_MgbaPrintf("HLW_COLD_CRC bank%d %d:%d", bank, crc >> 16, crc & 0xFFFF);
    }
}

COLD_BOOT_TEST("HLW cold boot writer", ColdBootWriter)
{
    // The script guarantees a fresh private ROM and battery path before this
    // deliberately destructive fixture initialization is selected explicitly.
    ClearSaveData();
    memset(gSaveBlock1Ptr, 0, sizeof(*gSaveBlock1Ptr));
    memset(gSaveBlock2Ptr, 0, sizeof(*gSaveBlock2Ptr));
    memset(gSaveBlock3Ptr, 0, sizeof(*gSaveBlock3Ptr));
    memset(gPokemonStoragePtr, 0, sizeof(*gPokemonStoragePtr));
    memset(gPlayerParty, 0, sizeof(gPlayerParty));
    gPlayerPartyCount = 0;
    gDifferentSaveFile = FALSE;
    ResetPokemonStorageSystem();
    InitHlwPersistentData();
    ClearBag();
    Save_ResetSaveCounters();

    gSaveBlock1Ptr->money = 0x123456;
    gSaveBlock2Ptr->playerName[0] = 0xBB;
    gSaveBlock2Ptr->playerName[1] = EOS;
    gSaveBlock2Ptr->playTimeHours = 321;
    SetTrainerFlag(0);
    SetTrainerFlag(HLW_TRAINER_FLAG_COUNT - 1);
    gSaveBlock3Ptr->achievements.wishOriginalForms[15] = 0xA5;
    gSaveBlock3Ptr->dexSeen[128] = 1;
    FlagSet(HLW_CUSTOM_FLAGS_START);
    FlagSet(HLW_CUSTOM_FLAGS_END);
    VarSet(HLW_CUSTOM_VARS_END, 0xBEEF);
    gHlwSaveBlock4.dexNavSearch[2047] = 0x73;
    gHlwSaveBlock4.grottoStates[63] = 0x2A15;
    gPokemonStoragePtr->boxNames[13][0] = 0xBC;
    gPokemonStoragePtr->bagSupplement.keyItemsExtra[33] = (struct ItemSlot){ITEM_POTION, 7};
    gHoFSaveBuffer = AllocZeroed(SECTOR_SIZE * NUM_HOF_SECTORS);
    EXPECT(gHoFSaveBuffer != NULL);
    for (u32 team = 0; team < HLW_HOF_TOTAL_TEAMS; team++)
    {
        gHoFSaveBuffer[team].mon[0].tid = 0xC0010000u | team;
        gHoFSaveBuffer[team].mon[0].species = SPECIES_BULBASAUR;
        gHoFSaveBuffer[team].mon[0].lvl = team + 1;
    }
    EXPECT_EQ(HandleSavingData(SAVE_HALL_OF_FAME), SAVE_STATUS_OK);
    sProgress++;
    EXPECT_EQ(HandleSavingData(SAVE_NORMAL), SAVE_STATUS_OK);
    sProgress++;
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_OK);
    ExpectMarkersAndPrintCrcs();
    Test_MgbaPrintf("HLW_COLD_WRITER_COMMITTED generation=2");
}

COLD_BOOT_TEST("HLW cold boot reader", ColdBootReader)
{
    // NO erase, initialization, migration-by-reset, or save call here. The
    // fresh emulator must recover the battery created by the exited writer.
    memset(gSaveBlock1Ptr, 0xA5, sizeof(*gSaveBlock1Ptr));
    memset(gSaveBlock2Ptr, 0xA5, sizeof(*gSaveBlock2Ptr));
    memset(gSaveBlock3Ptr, 0xA5, sizeof(*gSaveBlock3Ptr));
    memset(gPokemonStoragePtr, 0xA5, sizeof(*gPokemonStoragePtr));
    memset(&gHlwSaveBlock4, 0xA5, sizeof(gHlwSaveBlock4));
    EXPECT_EQ(LoadGameSave(SAVE_NORMAL), SAVE_STATUS_OK);
    sProgress++;
    ExpectMarkersAndPrintCrcs();
    Test_MgbaPrintf("HLW_COLD_READER_VERIFIED generation=2");
}
