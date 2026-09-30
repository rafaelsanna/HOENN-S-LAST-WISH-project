#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

// Each 4 KiB flash sector contains 3968 bytes of actual data followed by 116 bytes of SaveBlock3 and then 12 bytes of footer.
#define SECTOR_DATA_SIZE 3968
#define SAVE_BLOCK_3_CHUNK_SIZE 116
#define SECTOR_FOOTER_SIZE 12
#define SECTOR_SIZE (SECTOR_DATA_SIZE + SAVE_BLOCK_3_CHUNK_SIZE + SECTOR_FOOTER_SIZE)

#define NUM_SAVE_SLOTS 2

// If the sector's signature field is not this value then the sector is either invalid or empty.
#define SECTOR_SIGNATURE 0x8012025

#define SPECIAL_SECTOR_SENTINEL 0xB39D

#define SECTOR_ID_SAVEBLOCK2          0
#define SECTOR_ID_SAVEBLOCK1_START    1
#define SECTOR_ID_SAVEBLOCK1_END      4
#define SECTOR_ID_PKMN_STORAGE_START  5
#define SECTOR_ID_PKMN_STORAGE_END   13
#define NUM_SECTORS_PER_SLOT         14
// Save Slot 1: 0-13;  Save Slot 2: 14-27
#define SECTOR_ID_HOF_1              28
#define SECTOR_ID_HOF_2              29
#define SECTOR_ID_HLW_EXTENSION_A    30
#define SECTOR_ID_HLW_EXTENSION_B    31
// Compatibility names for the retired APIs. These sectors now belong to the
// mandatory HLW 0.9 save extension and must never be written independently.
#define SECTOR_ID_TRAINER_HILL       SECTOR_ID_HLW_EXTENSION_A
#define SECTOR_ID_RECORDED_BATTLE    SECTOR_ID_HLW_EXTENSION_B
#define SECTORS_COUNT                32

#define NUM_HOF_SECTORS 2

#define SAVE_STATUS_EMPTY    0
#define SAVE_STATUS_OK       1
#define SAVE_STATUS_CORRUPT  2
#define SAVE_STATUS_NO_FLASH 4
#define SAVE_STATUS_INCOMPATIBLE 5
#define SAVE_STATUS_NEWER_VERSION 6
#define SAVE_STATUS_ERROR    0xFF

// Special sector id value for certain save functions to
// indicate that no specific sector should be used.
#define FULL_SAVE_SLOT 0xFFFF

// SetDamagedSectorBits states
enum
{
    ENABLE,
    DISABLE,
    CHECK // unused
};

// Do save types
enum
{
    SAVE_NORMAL,
    SAVE_LINK, // Link / Battle Frontier
    SAVE_EREADER, // deprecated in Emerald
    SAVE_HALL_OF_FAME,
    SAVE_OVERWRITE_DIFFERENT_FILE,
    SAVE_HALL_OF_FAME_ERASE_BEFORE // unused
};

// A save sector location holds a pointer to the data for a particular sector
// and the size of that data. Size cannot be greater than SECTOR_DATA_SIZE.
struct SaveSectorLocation
{
    void *data;
    u16 size;
};

struct SaveSector
{
    u8 data[SECTOR_DATA_SIZE];
    u8 saveBlock3Chunk[SAVE_BLOCK_3_CHUNK_SIZE];
    u16 id;
    u16 checksum;
    u32 signature;
    u32 counter;
}; // size is SECTOR_SIZE (0x1000)

// HLW 0.9 save extension. One complete image is stored in sector 30 for normal
// slot A and sector 31 for normal slot B. The exact layout is part of the
// frozen 0.9 save ABI.
#define HLW_SAVE_EXTENSION_MAGIC             0x45574C48 // "HLWE"
#define HLW_SAVE_EXTENSION_COMPLETE_MARKER   0xC0DEC0DE
#define HLW_SAVE_PHYSICAL_VERSION            1
#define HLW_SAVE_SCHEMA_VERSION              1
#define HLW_SAVE_FLAG_REPLACED_GAME           1
#define HLW_SAVE_EXTENSION_HEADER_SIZE       64
#define HLW_SAVE_EXTENSION_PAYLOAD_SIZE      (SECTOR_SIZE - HLW_SAVE_EXTENSION_HEADER_SIZE)
#define HLW_CUSTOM_FLAG_BYTES                256
#define HLW_CUSTOM_VAR_COUNT                 256
#define HLW_DEXNAV_SEARCH_BYTES              2048
#define HLW_GROTTO_STATE_COUNT               64
#define HLW_EXTENSION_RESERVED_BYTES         1088

struct HlwSaveBlock4Payload
{
    u8 customFlags[HLW_CUSTOM_FLAG_BYTES];
    u16 customVars[HLW_CUSTOM_VAR_COUNT];
    u8 dexNavSearch[HLW_DEXNAV_SEARCH_BYTES];
    u16 grottoStates[HLW_GROTTO_STATE_COUNT];
    u8 futureReserved[HLW_EXTENSION_RESERVED_BYTES];
};

struct HlwSaveExtensionHeader
{
    u32 magic;
    u16 physicalVersion;
    u16 headerLength;
    u16 schemaVersion;
    u16 payloadLength;
    u32 generation;
    u8 saveUuid[16];
    u32 mainImageCrc32;
    u32 payloadCrc32;
    u32 hallOfFameGeneration;
    u32 hallOfFameCrc32;
    u8 normalSlot;
    u8 hallOfFameBank;
    u16 flags;
    u32 headerCrc32;
    u32 reserved;
    u32 completeMarker;
};

struct HlwSaveExtensionSector
{
    struct HlwSaveExtensionHeader header;
    struct HlwSaveBlock4Payload payload;
};

#define HLW_HOF_MAGIC                 0x46485748 // "HWHF"
#define HLW_HOF_NO_BANK               0xFF
#define HLW_HOF_ARCHIVE_TEAMS         28
#define HLW_HOF_TOTAL_TEAMS           30
#define HLW_HOF_TEAM_BYTES            144

struct HlwHallOfFameHeader
{
    u32 magic;
    u16 physicalVersion;
    u16 headerLength;
    u32 generation;
    u8 saveUuid[16];
    u32 payloadCrc32;
    u32 headerCrc32;
    u32 completeMarker;
    u8 reserved[24];
};

struct HlwHallOfFameArchive
{
    struct HlwHallOfFameHeader header;
    u8 teams[HLW_HOF_ARCHIVE_TEAMS * HLW_HOF_TEAM_BYTES];
};

// CRC-32/ISO-HDLC: reflected 0xEDB88320, init/final xor 0xFFFFFFFF.
u32 HlwSave_Crc32(const void *data, u32 size);
void InitHlwPersistentData(void);
bool8 ValidateHlwPersistentData(void);

#if TESTING
void HlwSave_TestFailWriteAfter(s32 count);
u8 HlwSave_TestBegin(u8 saveType);
u8 HlwSave_TestWriteNext(void);
u8 HlwSave_TestCommit(void);
void HlwSave_TestAbort(void);
u8 HlwSave_TestSelect(void);
#endif

#define SECTOR_SIGNATURE_OFFSET offsetof(struct SaveSector, signature)
#define SECTOR_COUNTER_OFFSET   offsetof(struct SaveSector, counter)

extern u16 gLastWrittenSector;
extern u32 gLastSaveCounter;
extern u16 gLastKnownGoodSector;
extern u32 gDamagedSaveSectors;
extern u32 gSaveCounter;
extern struct SaveSector *gFastSaveSector;
extern u16 gIncrementalSectorId;
extern u16 gSaveFileStatus;
extern void (*gGameContinueCallback)(void);
extern struct SaveSectorLocation gRamSaveSectorLocations[];

extern struct SaveSector gSaveDataBuffer;
extern struct HlwSaveBlock4Payload gHlwSaveBlock4;

void ClearSaveData(void);
void Save_ResetSaveCounters(void);
void ResetHlwSaveBlock4(void);
u8 HandleSavingData(u8 saveType);
u8 TrySavingData(u8 saveType);
bool8 LinkFullSave_Init(void);
bool8 LinkFullSave_WriteSector(void);
bool8 LinkFullSave_ReplaceLastSector(void);
bool8 LinkFullSave_SetLastSectorSignature(void);
bool8 WriteSaveBlock2(void);
bool8 WriteSaveBlock1Sector(void);
u8 LoadGameSave(u8 saveType);
u16 GetSaveBlocksPointersBaseOffset(void);
u32 TryReadSpecialSaveSector(u8 sector, u8 *dst);
u32 TryWriteSpecialSaveSector(u8 sector, u8 *src);
void Task_LinkFullSave(u8 taskId);

// save_failed_screen.c
void DoSaveFailedScreen(u8 saveType);
#if TESTING
bool32 SaveFailedScreen_TestWindowBufferBounds(bool32 clockWindow, u8 fillValue);
#endif

#endif // GUARD_SAVE_H
