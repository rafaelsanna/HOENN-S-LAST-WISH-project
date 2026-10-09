#include "global.h"
#include "agb_flash.h"
#include "gba/flash_internal.h"
#include "save.h"
#include "fieldmap.h"
#include "task.h"
#include "item.h"
#include "load_save.h"
#include "overworld.h"
#include "hall_of_fame.h"
#include "pokemon_storage_system.h"
#include "main.h"
#include "trainer_hill.h"
#include "link.h"
#include "random.h"
#include "malloc.h"
#include "hlw_media_save.h"
#include "follower_npc.h"
#include "new_game.h"
#include "species_relocation.h"
#include "event_data.h"
#include "constants/flags.h"
#include "constants/game_stat.h"
#include "hlw_save_abi_asserts.h"

// Each normal slot owns fourteen sectors plus its mandatory extension (30/31).
// 28/29 are alternating 28-team HOF archives, with two teams in PC storage.
// A transaction never updates an active bundle in place.
STATIC_ASSERT(sizeof(struct SaveBlock1) == 15872, SaveBlock1AbiSize);
STATIC_ASSERT(sizeof(struct SaveBlock2) == 3968, SaveBlock2AbiSize);
STATIC_ASSERT(sizeof(struct SaveBlock3) == 1624, SaveBlock3AbiSize);
STATIC_ASSERT(sizeof(struct PokemonStorage) == 35712, PokemonStorageAbiSize);
STATIC_ASSERT(sizeof(struct SaveSector) == 4096, SaveSectorAbiSize);
STATIC_ASSERT(sizeof(struct HlwSaveMetadata) == 64, SaveMetadataAbiSize);
STATIC_ASSERT(sizeof(struct HlwSaveExtensionSector) == 4096, ExtensionAbiSize);
STATIC_ASSERT(sizeof(struct HlwHallOfFameArchive) == 4096, HallOfFameArchiveAbiSize);
STATIC_ASSERT(sizeof(struct HallofFameTeam) == HLW_HOF_TEAM_BYTES, HallOfFameTeamAbiSize);
STATIC_ASSERT(P_FUSION_FORMS == FALSE, FusionFormsHaveNoSaveStorage);

COMMON_DATA u16 gLastWrittenSector = 0;
COMMON_DATA u32 gLastSaveCounter = 0;
COMMON_DATA u16 gLastKnownGoodSector = 0;
COMMON_DATA u32 gDamagedSaveSectors = 0;
COMMON_DATA u32 gSaveCounter = 0;
COMMON_DATA struct SaveSector *gReadWriteSector = NULL;
COMMON_DATA u16 gIncrementalSectorId = 0;
COMMON_DATA u16 gSaveFileStatus = 0;
COMMON_DATA void (*gGameContinueCallback)(void) = NULL;
COMMON_DATA struct SaveSectorLocation gRamSaveSectorLocations[NUM_SECTORS_PER_SLOT] = {0};
COMMON_DATA u16 gSaveAttemptStatus = 0;
EWRAM_DATA struct SaveSector gSaveDataBuffer = {0};
EWRAM_DATA struct HlwSaveBlock4Payload gHlwSaveBlock4 = {0};

#define LAST_STORAGE_OFFSET(field) (offsetof(struct PokemonStorage, field) - 8 * SECTOR_DATA_SIZE)
struct HlwSaveTransaction
{
    // Mutable banks are frozen. PC sectors 5..13 are written synchronously
    // before BeginTransaction yields: no live PC read occurs between frames.
    // This bounded snapshot fits even in the link-contest results heap.
    u8 primary[5][SECTOR_DATA_SIZE];
    u8 storageLast[SECTOR_DATA_SIZE];
    struct SaveBlock3 striped;
    struct HlwSaveBlock4Payload extension;
    struct HlwSaveMetadata metadata;
    u32 generation;
    u32 mainCrc;
    u16 rotation;
    u8 slot;
    u8 nextSector;
    bool8 retireOtherSlot;
    u8 previousHofBank;
    bool8 relocatesHof;
};

struct HlwSlotInfo
{
    u32 generation;
    u8 physical[NUM_SECTORS_PER_SLOT];
    u8 status;
    struct HlwSaveMetadata metadata;
};

struct HlwBagHeader { u32 magic; u16 version, size; };
static EWRAM_DATA struct HlwSaveTransaction *sTransaction = NULL;
static EWRAM_DATA u8 sTransactionStatus = 0;
static EWRAM_DATA bool8 sHofStatPending = FALSE;
// Validation is synchronous and non-reentrant. Do not put these 2 KiB records
// on the tiny IWRAM stack (also shared by flash callbacks and test runners).
static EWRAM_DATA struct SaveBlock3 sValidationSb3 = {0};
static EWRAM_DATA struct HLWSaveExtension sValidationMedia = {0};

#if TESTING
static EWRAM_DATA s32 sFailWriteAfter = 0;
static EWRAM_DATA bool8 sInjectWriteFailure = FALSE;
void HlwSave_TestFailWriteAfter(s32 count)
{
    sInjectWriteFailure = count >= 0;
    sFailWriteAfter = count;
}
#endif

static u32 CrcUpdate(u32 crc, const void *data, u32 size)
{
    const u8 *bytes = data;
    for (u32 i = 0; i < size; i++)
    {
        crc ^= bytes[i];
        for (u32 bit = 0; bit < 8; bit++)
            crc = (crc >> 1) ^ (0xEDB88320u & -(crc & 1));
    }
    return crc;
}

u32 HlwSave_Crc32(const void *data, u32 size)
{
    return ~CrcUpdate(0xFFFFFFFFu, data, size);
}

static bool8 AllowWrite(void)
{
#if TESTING
    if (sInjectWriteFailure && sFailWriteAfter == 0)
        return FALSE;
    if (sInjectWriteFailure && sFailWriteAfter > 0)
        sFailWriteAfter--;
#endif
    return TRUE;
}

static u8 ProgramSector(u8 sector, const void *data)
{
    if (!AllowWrite() || ProgramFlashSectorAndVerify(sector, (u8 *)data) != 0)
    {
        gDamagedSaveSectors |= 1u << sector;
        return SAVE_STATUS_ERROR;
    }
    gDamagedSaveSectors &= ~(1u << sector);
    return SAVE_STATUS_OK;
}

static void RetireSector(u8 sector)
{
    // Cleanup is not the commit point. The replacement marker makes the new
    // UUID authoritative even if power loss or an erase failure stops cleanup.
    if (AllowWrite())
        EraseFlashSector(sector);
}

static u16 SectorChecksum(const struct SaveSector *sector)
{
    const u32 *words = (const void *)sector->data;
    u32 sum = 0;
    // Cover the full primary and SB3 stripe, including all reserves.
    for (u32 i = 0; i < (SECTOR_DATA_SIZE + SAVE_BLOCK_3_CHUNK_SIZE) / 4; i++)
        sum += words[i];
    return sum + (sum >> 16);
}

static void UpdateSaveAddresses(void)
{
    for (u32 id = 0; id < NUM_SECTORS_PER_SLOT; id++)
    {
        if (id == 0)
            gRamSaveSectorLocations[id].data = gSaveBlock2Ptr;
        else if (id <= 4)
            gRamSaveSectorLocations[id].data = (u8 *)gSaveBlock1Ptr + (id - 1) * SECTOR_DATA_SIZE;
        else
            gRamSaveSectorLocations[id].data = (u8 *)gPokemonStoragePtr + (id - 5) * SECTOR_DATA_SIZE;
        gRamSaveSectorLocations[id].size = SECTOR_DATA_SIZE;
    }
    gReadWriteSector = &gSaveDataBuffer;
}

static bool8 FeatureHeadersValid(const struct SaveBlock3 *sb3, const struct HLWSaveExtension *media,
                               const struct HlwBagHeader *bag)
{
    if (sb3->header.magic != HLW_SAVE_BLOCK3_MAGIC
     || sb3->header.version != HLW_SAVE_BLOCK3_VERSION || sb3->header.size != sizeof(*sb3)
     || sb3->achievements.magic != ACHIEVEMENT_SAVE_MAGIC
     || sb3->achievements.version != ACHIEVEMENT_SAVE_VERSION
     || sb3->achievements.size != sizeof(sb3->achievements)
     || sb3->achievements.shadowNightmareState > 1
     || (sb3->achievements.shadowPokemon[0] & 3) != 0
     || (sb3->achievements.shadowPokemon[3] & 0xC0) != 0
     || sb3->miningWalls.version != 1 || sb3->miningWalls.count > 80
     || media->magic != HLW_MEDIA_SAVE_MAGIC || media->version != HLW_MEDIA_SAVE_VERSION
     || media->size != sizeof(*media) || media->radio.magic != 0x484C5752
     || media->radio.version != 1
     || media->future[HLW_MEDIA_WISH_MENU_COUNT_OFFSET] > HLW_MEDIA_WISH_MENU_ACTION_CAPACITY
     || bag->magic != BAG_EXPANSION_MAGIC || bag->version != BAG_EXPANSION_VERSION
     || bag->size != sizeof(struct BagExpansionSave))
        return FALSE;
    for (u32 i = 0; i < ARRAY_COUNT(sb3->miningWalls.sessionCounts); i++)
        if (sb3->miningWalls.sessionCounts[i] > 5)
            return FALSE;
    if (sb3->NPCfollower.inProgress && sb3->NPCfollower.customScriptId > FOLLOWER_SCRIPT_DEBUG)
        return FALSE;
    return TRUE;
}

bool8 ValidateHlwPersistentData(void)
{
    const struct HlwSaveMetadata *m = &gPokemonStoragePtr->metadata;
    return m->magic == HLW_SAVE_METADATA_MAGIC && m->schemaVersion == HLW_SAVE_SCHEMA_VERSION
        && m->size == sizeof(*m) && (m->hallOfFameBank < 2 || m->hallOfFameBank == HLW_HOF_NO_BANK)
        && FeatureHeadersValid(gSaveBlock3Ptr, &gSaveBlock1Ptr->hlwSave, (const void *)&gSaveBlock1Ptr->bagExpansion);
}

void InitHlwPersistentData(void)
{
    struct HlwSaveMetadata *m = &gPokemonStoragePtr->metadata;
    memset(&gHlwSaveBlock4, 0, sizeof(gHlwSaveBlock4));
    memset(m, 0, sizeof(*m));
    m->magic = HLW_SAVE_METADATA_MAGIC;
    m->schemaVersion = HLW_SAVE_SCHEMA_VERSION;
    m->size = sizeof(*m);
    m->hallOfFameBank = HLW_HOF_NO_BANK;
    memcpy(m->saveUuid, gSaveBlock2Ptr->playerTrainerId, TRAINER_ID_LENGTH);
    for (u32 i = TRAINER_ID_LENGTH; i < sizeof(m->saveUuid); i += 4)
    {
        u32 random = Random32();
        memcpy(m->saveUuid + i, &random, 4);
    }
    gSaveBlock3Ptr->header.magic = HLW_SAVE_BLOCK3_MAGIC;
    gSaveBlock3Ptr->header.version = HLW_SAVE_BLOCK3_VERSION;
    gSaveBlock3Ptr->header.size = sizeof(*gSaveBlock3Ptr);
    memset(&gSaveBlock3Ptr->achievements, 0, sizeof(gSaveBlock3Ptr->achievements));
    gSaveBlock3Ptr->achievements.magic = ACHIEVEMENT_SAVE_MAGIC;
    gSaveBlock3Ptr->achievements.version = ACHIEVEMENT_SAVE_VERSION;
    gSaveBlock3Ptr->achievements.size = sizeof(gSaveBlock3Ptr->achievements);
    memset(&gSaveBlock3Ptr->miningWalls, 0, sizeof(gSaveBlock3Ptr->miningWalls));
    gSaveBlock3Ptr->miningWalls.version = 1;
    memset(&gSaveBlock1Ptr->hlwSave, 0, sizeof(gSaveBlock1Ptr->hlwSave));
    gSaveBlock1Ptr->hlwSave.magic = HLW_MEDIA_SAVE_MAGIC;
    gSaveBlock1Ptr->hlwSave.version = HLW_MEDIA_SAVE_VERSION;
    gSaveBlock1Ptr->hlwSave.size = sizeof(gSaveBlock1Ptr->hlwSave);
    HlwMedia_InitDefaults();
    sHofStatPending = FALSE;
}

// Retained public name; never use this as a loaded-save repair.
void ResetHlwSaveBlock4(void) { InitHlwPersistentData(); }

void ClearSaveData(void)
{
    // Explicit save deletion only (including Hard Nuzlocke game over).
    // Overwrite saves do not call this.
    for (u32 i = 0; i < SECTORS_COUNT; i++)
        EraseFlashSector(i);
}

void Save_ResetSaveCounters(void)
{
    gSaveCounter = 0;
    gLastWrittenSector = 0;
    gDamagedSaveSectors = 0;
    sHofStatPending = FALSE;
}

static void ReadPrimaryRange(const struct HlwSlotInfo *slot, u32 logical, u32 offset, void *dst, u32 size)
{
    u8 *bytes = dst;
    logical += offset / SECTOR_DATA_SIZE;
    offset %= SECTOR_DATA_SIZE;
    while (size != 0)
    {
        u32 count = min(size, SECTOR_DATA_SIZE - offset);
        ReadFlash(slot->physical[logical], offset, bytes, count);
        logical++;
        offset = 0;
        bytes += count;
        size -= count;
    }
}

static bool8 HallOfFameValid(const struct HlwSaveMetadata *m)
{
    struct HlwHallOfFameArchive *archive = (void *)&gSaveDataBuffer;
    u32 crc;
    if (m->hallOfFameBank == HLW_HOF_NO_BANK)
        return m->hallOfFameGeneration == 0 && m->hallOfFameCrc32 == 0;
    if (m->hallOfFameBank >= 2)
        return FALSE;
    ReadFlash(SECTOR_ID_HOF_1 + m->hallOfFameBank, 0, (u8 *)archive, sizeof(*archive));
    if (archive->header.magic != HLW_HOF_MAGIC
     || archive->header.physicalVersion != HLW_SAVE_PHYSICAL_VERSION
     || archive->header.headerLength != sizeof(archive->header)
     || archive->header.completeMarker != HLW_SAVE_EXTENSION_COMPLETE_MARKER
     || archive->header.generation != m->hallOfFameGeneration
     || archive->header.payloadCrc32 != m->hallOfFameCrc32
     || memcmp(archive->header.saveUuid, m->saveUuid, 16) != 0)
        return FALSE;
    crc = archive->header.headerCrc32;
    archive->header.headerCrc32 = 0;
    return crc == HlwSave_Crc32(&archive->header, sizeof(archive->header))
        && m->hallOfFameCrc32 == HlwSave_Crc32(archive->teams, sizeof(archive->teams));
}

static u8 ValidateSlot(u8 index, struct HlwSlotInfo *slot, bool8 prepared)
{
    struct HlwSaveExtensionSector *ext = (void *)&gSaveDataBuffer;
    u32 mask = 0, crc = 0xFFFFFFFFu, headerCrc;
    bool8 any = FALSE, malformed = FALSE, first = TRUE;
    struct HlwBagHeader bag;
    memset(slot, 0, sizeof(*slot));
    for (u32 physical = index * 14; physical < (index + 1) * 14; physical++)
    {
        struct SaveSector *s = &gSaveDataBuffer;
        ReadFlash(physical, 0, (u8 *)s, sizeof(*s));
        if (s->signature == 0xFFFFFFFFu && s->counter == 0xFFFFFFFFu)
            continue;
        any = TRUE;
        // Bounds precede array accesses and bit shifts.
        if (s->id >= 14
         || (s->signature != SECTOR_SIGNATURE
          && !(prepared && s->id == 4 && s->signature == (SECTOR_SIGNATURE | 0xFFu)))
         || s->checksum != SectorChecksum(s) || (mask & (1u << s->id)) != 0)
        {
            malformed = TRUE;
            continue;
        }
        if (first)
        {
            slot->generation = s->counter;
            first = FALSE;
        }
        if (slot->generation != s->counter || s->counter % 2 != index)
            malformed = TRUE;
        mask |= 1u << s->id;
        slot->physical[s->id] = physical;
    }
    if (!any)
        return SAVE_STATUS_EMPTY;
    if (malformed || mask != 0x3FFF)
    {
        // Legacy sector checksums excluded SB3 and lacked 0.9 metadata.
        for (u32 physical = index * 14; physical < (index + 1) * 14; physical++)
        {
            ReadFlash(physical, 0, (u8 *)&gSaveDataBuffer, sizeof(gSaveDataBuffer));
            if (gSaveDataBuffer.id == 13 && gSaveDataBuffer.signature == SECTOR_SIGNATURE)
            {
                memcpy(&slot->metadata, gSaveDataBuffer.data + LAST_STORAGE_OFFSET(metadata), sizeof(slot->metadata));
                if (slot->metadata.magic != HLW_SAVE_METADATA_MAGIC)
                    return SAVE_STATUS_INCOMPATIBLE;
            }
        }
        return SAVE_STATUS_CORRUPT;
    }
    ReadPrimaryRange(slot, 5, offsetof(struct PokemonStorage, metadata), &slot->metadata, sizeof(slot->metadata));
    if (slot->metadata.magic != HLW_SAVE_METADATA_MAGIC || slot->metadata.size != sizeof(slot->metadata))
        return SAVE_STATUS_INCOMPATIBLE;
    for (u32 id = 0; id < 14; id++)
    {
        ReadFlash(slot->physical[id], 0, (u8 *)&gSaveDataBuffer, sizeof(gSaveDataBuffer));
        crc = CrcUpdate(crc, &gSaveDataBuffer, SECTOR_DATA_SIZE + SAVE_BLOCK_3_CHUNK_SIZE);
        memcpy((u8 *)&sValidationSb3 + id * SAVE_BLOCK_3_CHUNK_SIZE, gSaveDataBuffer.saveBlock3Chunk, SAVE_BLOCK_3_CHUNK_SIZE);
    }
    ReadFlash(SECTOR_ID_HLW_EXTENSION_A + index, 0, (u8 *)ext, sizeof(*ext));
    headerCrc = ext->header.headerCrc32;
    ext->header.headerCrc32 = 0;
    if (headerCrc != HlwSave_Crc32(&ext->header, sizeof(ext->header))
     || ext->header.magic != HLW_SAVE_EXTENSION_MAGIC
     || ext->header.headerLength != sizeof(ext->header)
     || ext->header.payloadLength != sizeof(ext->payload)
     || ext->header.generation != slot->generation || ext->header.normalSlot != index
     || ext->header.mainImageCrc32 != ~crc
     || ext->header.completeMarker != HLW_SAVE_EXTENSION_COMPLETE_MARKER
     || ext->header.payloadCrc32 != HlwSave_Crc32(&ext->payload, sizeof(ext->payload))
     || memcmp(ext->header.saveUuid, slot->metadata.saveUuid, 16) != 0
     || ext->header.hallOfFameBank != slot->metadata.hallOfFameBank
     || ext->header.flags != slot->metadata.flags
     || ext->header.hallOfFameGeneration != slot->metadata.hallOfFameGeneration
     || ext->header.hallOfFameCrc32 != slot->metadata.hallOfFameCrc32)
        return SAVE_STATUS_CORRUPT;
    if (ext->header.physicalVersion > HLW_SAVE_PHYSICAL_VERSION || ext->header.schemaVersion > HLW_SAVE_SCHEMA_VERSION
     || slot->metadata.schemaVersion > HLW_SAVE_SCHEMA_VERSION)
        return SAVE_STATUS_NEWER_VERSION;
    if (ext->header.physicalVersion != HLW_SAVE_PHYSICAL_VERSION || ext->header.schemaVersion != HLW_SAVE_SCHEMA_VERSION
     || slot->metadata.schemaVersion != HLW_SAVE_SCHEMA_VERSION)
        return SAVE_STATUS_INCOMPATIBLE;
    ReadPrimaryRange(slot, 1, offsetof(struct SaveBlock1, hlwSave), &sValidationMedia, sizeof(sValidationMedia));
    ReadPrimaryRange(slot, 1, offsetof(struct SaveBlock1, bagExpansion), &bag, sizeof(bag));
    if (!FeatureHeadersValid(&sValidationSb3, &sValidationMedia, &bag) || !HallOfFameValid(&slot->metadata))
        return SAVE_STATUS_CORRUPT;
    return SAVE_STATUS_OK;
}

static bool8 GenerationAfter(u32 a, u32 b) { return (s32)(a - b) > 0; }

static bool8 PublishedReplacementOf(u8 index, const struct HlwSlotInfo *old)
{
    struct HlwSaveExtensionSector *ext = (void *)&gSaveDataBuffer;
    struct HlwSaveExtensionHeader header;
    u32 storedCrc;
    ReadFlash(SECTOR_ID_HLW_EXTENSION_A + index, 0, (u8 *)ext, sizeof(*ext));
    header = ext->header;
    storedCrc = header.headerCrc32;
    header.headerCrc32 = 0;
    if (header.magic != HLW_SAVE_EXTENSION_MAGIC || header.headerLength != sizeof(header)
     || header.physicalVersion != HLW_SAVE_PHYSICAL_VERSION || header.schemaVersion != HLW_SAVE_SCHEMA_VERSION
     || header.normalSlot != index || header.completeMarker != HLW_SAVE_EXTENSION_COMPLETE_MARKER
     || !(header.flags & HLW_SAVE_FLAG_REPLACED_GAME)
     || storedCrc != HlwSave_Crc32(&header, sizeof(header))
     || !GenerationAfter(header.generation, old->generation)
     || memcmp(header.saveUuid, old->metadata.saveUuid, 16) == 0)
        return FALSE;
    for (u32 physical = index * 14; physical < (index + 1) * 14; physical++)
    {
        ReadFlash(physical, 0, (u8 *)&gSaveDataBuffer, sizeof(gSaveDataBuffer));
        if (gSaveDataBuffer.id == 4 && gSaveDataBuffer.signature == SECTOR_SIGNATURE
         && gSaveDataBuffer.counter == header.generation
         && gSaveDataBuffer.checksum == SectorChecksum(&gSaveDataBuffer))
            return TRUE;
    }
    return FALSE;
}

static u8 SelectSlot(struct HlwSlotInfo *selected)
{
    struct HlwSlotInfo slots[2];
    u8 good;
    for (u32 i = 0; i < 2; i++)
        slots[i].status = ValidateSlot(i, &slots[i], FALSE);
    // A newer-schema image forbids an accidental downgrade. A later committed
    // new UUID may explicitly retire it after the player confirms replacement.
    for (u32 i = 0; i < 2; i++)
        if (slots[i].status == SAVE_STATUS_NEWER_VERSION
         && !(slots[1 - i].status == SAVE_STATUS_OK
           && (slots[1 - i].metadata.flags & HLW_SAVE_FLAG_REPLACED_GAME)
           && GenerationAfter(slots[1 - i].generation, slots[i].generation)
           && memcmp(slots[1 - i].metadata.saveUuid, slots[i].metadata.saveUuid, 16) != 0))
            return SAVE_STATUS_NEWER_VERSION;
    if (slots[0].status == SAVE_STATUS_OK || slots[1].status == SAVE_STATUS_OK)
    {
        good = slots[0].status == SAVE_STATUS_OK ? 0 : 1;
        if (slots[1 - good].status == SAVE_STATUS_OK && GenerationAfter(slots[1 - good].generation, slots[good].generation))
            good = 1 - good;
        // Cleanup may have been interrupted. Never resurrect the previous
        // player's UUID after a later replacement was actually published.
        if (slots[1 - good].status != SAVE_STATUS_OK && PublishedReplacementOf(1 - good, &slots[good]))
            return SAVE_STATUS_CORRUPT;
        *selected = slots[good];
        gSaveCounter = selected->generation;
        gLastWrittenSector = selected->physical[0] % 14;
        return slots[1 - good].status == SAVE_STATUS_CORRUPT ? SAVE_STATUS_ERROR : SAVE_STATUS_OK;
    }
    if (slots[0].status == SAVE_STATUS_EMPTY && slots[1].status == SAVE_STATUS_EMPTY)
        return SAVE_STATUS_EMPTY;
    if (slots[0].status == SAVE_STATUS_INCOMPATIBLE || slots[1].status == SAVE_STATUS_INCOMPATIBLE)
        return SAVE_STATUS_INCOMPATIBLE;
    return SAVE_STATUS_CORRUPT;
}

static void EndTransaction(u8 status)
{
    if (sTransaction != NULL && status == SAVE_STATUS_OK && sTransaction->relocatesHof)
        FlagSet(FLAG_HLW_HOF_SPECIES_RELOCATED);
    if (sTransaction != NULL)
        FREE_AND_SET_NULL(sTransaction);
    sTransactionStatus = status;
    gSaveAttemptStatus = status;
}

static u8 WriteHofArchive(struct HlwSaveTransaction *t)
{
    struct HlwHallOfFameArchive *archive = (void *)&gSaveDataBuffer;
    if (gHoFSaveBuffer == NULL)
        return SAVE_STATUS_ERROR;
    t->metadata.hallOfFameBank = t->previousHofBank == 0 ? 1 : 0;
    t->metadata.hallOfFameGeneration = t->generation;
    memset(archive, 0, sizeof(*archive));
    archive->header.magic = HLW_HOF_MAGIC;
    archive->header.physicalVersion = HLW_SAVE_PHYSICAL_VERSION;
    archive->header.headerLength = sizeof(archive->header);
    archive->header.generation = t->generation;
    memcpy(archive->header.saveUuid, t->metadata.saveUuid, 16);
    memcpy(archive->teams, gHoFSaveBuffer, sizeof(archive->teams));
    t->metadata.hallOfFameCrc32 = archive->header.payloadCrc32 = HlwSave_Crc32(archive->teams, sizeof(archive->teams));
    archive->header.completeMarker = HLW_SAVE_EXTENSION_COMPLETE_MARKER;
    archive->header.headerCrc32 = HlwSave_Crc32(&archive->header, sizeof(archive->header));
    if (ProgramSector(SECTOR_ID_HOF_1 + t->metadata.hallOfFameBank, archive) != SAVE_STATUS_OK
     || !HallOfFameValid(&t->metadata))
        return SAVE_STATUS_ERROR;
    memcpy(t->storageLast + LAST_STORAGE_OFFSET(hallOfFameTail),
           (u8 *)gHoFSaveBuffer + sizeof(archive->teams), 2 * HLW_HOF_TEAM_BYTES);
    return SAVE_STATUS_OK;
}

static const u8 *TransactionPrimary(const struct HlwSaveTransaction *t, u32 id)
{
    if (id < 5)
        return t->primary[id];
    if (id == 13)
        return t->storageLast;
    return gRamSaveSectorLocations[id].data;
}

static u8 WriteTransactionSector(u32 id)
{
    struct HlwSaveTransaction *t = sTransaction;
    struct SaveSector *s = &gSaveDataBuffer;
    u32 physical = t->slot * 14 + (id + t->rotation) % 14;
    memset(s, 0, sizeof(*s));
    memcpy(s->data, TransactionPrimary(t, id), SECTOR_DATA_SIZE);
    memcpy(s->saveBlock3Chunk, (u8 *)&t->striped + id * SAVE_BLOCK_3_CHUNK_SIZE, SAVE_BLOCK_3_CHUNK_SIZE);
    s->id = id;
    s->checksum = SectorChecksum(s);
    // Logical 4 is the final synchronous/incremental write and commit latch.
    s->signature = id == 4 ? SECTOR_SIGNATURE | 0xFFu : SECTOR_SIGNATURE;
    s->counter = t->generation;
    return ProgramSector(physical, s);
}

static u8 BeginTransaction(u8 saveType)
{
    struct HlwSaveTransaction *t;
    struct HlwSaveExtensionSector *ext = (void *)&gSaveDataBuffer;
    struct HlwSlotInfo old[2];
    s32 newest = -1;
    bool8 replacement = saveType == SAVE_OVERWRITE_DIFFERENT_FILE || gDifferentSaveFile;
    u32 crc = 0xFFFFFFFFu;
    if (sTransaction != NULL || gFlashMemoryPresent != TRUE || !ValidateHlwPersistentData())
        return SAVE_STATUS_ERROR;
    // Flash is authoritative, even after a new game's RAM counters reset or
    // after an ambiguous final-byte failure. Never guess its active HOF bank.
    for (u32 i = 0; i < 2; i++)
    {
        u8 status = ValidateSlot(i, &old[i], FALSE);
        old[i].status = status;
        if ((status == SAVE_STATUS_OK || status == SAVE_STATUS_NEWER_VERSION)
         && (newest < 0 || GenerationAfter(old[i].generation, old[newest].generation)))
            newest = i;
    }
    if (newest >= 0)
    {
        bool8 differentUuid = memcmp(old[newest].metadata.saveUuid, gPokemonStoragePtr->metadata.saveUuid, 16) != 0;
        if (differentUuid && !replacement && !gDifferentSaveFile)
            return SAVE_STATUS_ERROR;
        if (old[newest].status == SAVE_STATUS_NEWER_VERSION && !differentUuid && !replacement)
            return SAVE_STATUS_ERROR;
        replacement |= differentUuid;
        gSaveCounter = old[newest].generation;
        gLastWrittenSector = old[newest].physical[0] % 14;
    }
    t = Alloc(sizeof(*t));
    if (t == NULL)
        return SAVE_STATUS_ERROR;
    sTransaction = t;
    t->relocatesHof = FALSE;
    sTransactionStatus = SAVE_STATUS_ERROR;
    gDamagedSaveSectors = 0;
    UpdateSaveAddresses();
    CopyPartyAndObjectsToSave();
    if ((saveType == SAVE_HALL_OF_FAME || saveType == SAVE_HALL_OF_FAME_ERASE_BEFORE) && !sHofStatPending)
    {
        if (GetGameStat(GAME_STAT_ENTERED_HOF) < 999)
            IncrementGameStat(GAME_STAT_ENTERED_HOF);
        sHofStatPending = TRUE;
    }
    for (u32 id = 0; id < 5; id++)
        memcpy(t->primary[id], gRamSaveSectorLocations[id].data, SECTOR_DATA_SIZE);
    memcpy(t->storageLast, gRamSaveSectorLocations[13].data, SECTOR_DATA_SIZE);
    memcpy(&t->striped, gSaveBlock3Ptr, sizeof(t->striped));
    memcpy(&t->extension, &gHlwSaveBlock4, sizeof(t->extension));
    t->metadata = gPokemonStoragePtr->metadata;
    if (replacement)
    {
        // New-game RNG may repeat (for example after an identical emulator
        // boot). A confirmed replacement must not share either surviving
        // bundle's identity, even if the generated trainer ID also repeats.
        bool8 collision;
        do
        {
            collision = FALSE;
            for (u32 i = 0; i < 2; i++)
                if ((old[i].status == SAVE_STATUS_OK || old[i].status == SAVE_STATUS_NEWER_VERSION)
                 && memcmp(old[i].metadata.saveUuid, t->metadata.saveUuid, 16) == 0)
                    collision = TRUE;
            if (collision)
                for (s32 i = sizeof(t->metadata.saveUuid) - 1; i >= 0; i--)
                    if (++t->metadata.saveUuid[i] != 0)
                        break;
        } while (collision);
    }
    t->generation = gSaveCounter + 1;
    t->slot = t->generation % 2;
    t->rotation = (gLastWrittenSector + 1) % 14;
    t->nextSector = 0;
    t->retireOtherSlot = replacement;
    t->previousHofBank = newest >= 0 ? old[newest].metadata.hallOfFameBank : t->metadata.hallOfFameBank;
    if (replacement)
        t->metadata.flags |= HLW_SAVE_FLAG_REPLACED_GAME;
    gIncrementalSectorId = 0;
    if ((saveType == SAVE_HALL_OF_FAME || saveType == SAVE_HALL_OF_FAME_ERASE_BEFORE)
     && WriteHofArchive(t) != SAVE_STATUS_OK)
    {
        EndTransaction(SAVE_STATUS_ERROR);
        return SAVE_STATUS_ERROR;
    }
    if (saveType == SAVE_HALL_OF_FAME || saveType == SAVE_HALL_OF_FAME_ERASE_BEFORE)
    {
        // HOF loads translate old archives before appending the current team.
        // Publish that marker with this archive, not before a failed save.
        u32 bit = FLAG_HLW_HOF_SPECIES_RELOCATED - HLW_CUSTOM_FLAGS_START;
        t->extension.customFlags[bit / 8] |= 1 << (bit % 8);
        t->relocatesHof = TRUE;
    }
    memcpy(t->storageLast + LAST_STORAGE_OFFSET(metadata), &t->metadata, sizeof(t->metadata));
    for (u32 id = 0; id < 14; id++)
    {
        crc = CrcUpdate(crc, TransactionPrimary(t, id), SECTOR_DATA_SIZE);
        crc = CrcUpdate(crc, (u8 *)&t->striped + id * SAVE_BLOCK_3_CHUNK_SIZE, SAVE_BLOCK_3_CHUNK_SIZE);
    }
    t->mainCrc = ~crc;
    memset(ext, 0, sizeof(*ext));
    ext->header.magic = HLW_SAVE_EXTENSION_MAGIC;
    ext->header.physicalVersion = HLW_SAVE_PHYSICAL_VERSION;
    ext->header.headerLength = sizeof(ext->header);
    ext->header.schemaVersion = HLW_SAVE_SCHEMA_VERSION;
    ext->header.payloadLength = sizeof(ext->payload);
    ext->header.generation = t->generation;
    memcpy(ext->header.saveUuid, t->metadata.saveUuid, 16);
    ext->header.mainImageCrc32 = t->mainCrc;
    ext->header.hallOfFameGeneration = t->metadata.hallOfFameGeneration;
    ext->header.hallOfFameCrc32 = t->metadata.hallOfFameCrc32;
    ext->header.normalSlot = t->slot;
    ext->header.hallOfFameBank = t->metadata.hallOfFameBank;
    ext->header.flags = t->metadata.flags;
    ext->header.completeMarker = HLW_SAVE_EXTENSION_COMPLETE_MARKER;
    memcpy(&ext->payload, &t->extension, sizeof(ext->payload));
    ext->header.payloadCrc32 = HlwSave_Crc32(&ext->payload, sizeof(ext->payload));
    ext->header.headerCrc32 = HlwSave_Crc32(&ext->header, sizeof(ext->header));
    if (ProgramSector(SECTOR_ID_HLW_EXTENSION_A + t->slot, ext) != SAVE_STATUS_OK)
    {
        EndTransaction(SAVE_STATUS_ERROR);
        return SAVE_STATUS_ERROR;
    }
    // PC data cannot change while these synchronous writes execute; after
    // this point all remaining writes use the frozen mutable-bank snapshot.
    for (u32 id = 5; id < 14; id++)
        if (WriteTransactionSector(id) != SAVE_STATUS_OK)
        {
            EndTransaction(SAVE_STATUS_ERROR);
            return SAVE_STATUS_ERROR;
        }
    return SAVE_STATUS_OK;
}

static u8 WriteNextSector(void)
{
    if (sTransaction == NULL || sTransaction->nextSector >= 5)
        return SAVE_STATUS_ERROR;
    if (WriteTransactionSector(sTransaction->nextSector) != SAVE_STATUS_OK)
    {
        EndTransaction(SAVE_STATUS_ERROR);
        return SAVE_STATUS_ERROR;
    }
    gIncrementalSectorId = ++sTransaction->nextSector;
    return SAVE_STATUS_OK;
}

static u8 CommitTransaction(void)
{
    struct HlwSaveTransaction *t = sTransaction;
    struct HlwSlotInfo slot;
    u8 physical;
    if (t == NULL)
        return sTransactionStatus == SAVE_STATUS_OK ? SAVE_STATUS_OK : SAVE_STATUS_ERROR;
    physical = t->slot * 14 + (4 + t->rotation) % 14;
    if (t->nextSector != 5 || ValidateSlot(t->slot, &slot, TRUE) != SAVE_STATUS_OK
     || slot.generation != t->generation
     || !AllowWrite() || ProgramFlashByte(physical, SECTOR_SIGNATURE_OFFSET, SECTOR_SIGNATURE & 0xFF) != 0
     || ValidateSlot(t->slot, &slot, FALSE) != SAVE_STATUS_OK)
    {
        gDamagedSaveSectors |= 1u << physical;
        EndTransaction(SAVE_STATUS_ERROR);
        return SAVE_STATUS_ERROR;
    }
    gLastSaveCounter = gSaveCounter;
    gLastKnownGoodSector = gLastWrittenSector;
    gSaveCounter = t->generation;
    gLastWrittenSector = t->rotation;
    gPokemonStoragePtr->metadata = t->metadata;
    // New-game replacement is consumed only after verified publication, for
    // every caller (including a first save through Hall of Fame or link).
    gDifferentSaveFile = FALSE;
    memcpy(gPokemonStoragePtr->hallOfFameTail, t->storageLast + LAST_STORAGE_OFFSET(hallOfFameTail),
           sizeof(gPokemonStoragePtr->hallOfFameTail));
    gDamagedSaveSectors = 0;
    sHofStatPending = FALSE;
    if (t->retireOtherSlot)
    {
        // The user confirmed replacement. Retire the previous UUID only after
        // publication is verified, so recovery cannot resurrect another game.
        u32 oldSlot = 1 - t->slot;
        for (u32 i = oldSlot * 14; i < (oldSlot + 1) * 14; i++)
            RetireSector(i);
        RetireSector(SECTOR_ID_HLW_EXTENSION_A + oldSlot);
        if (t->metadata.hallOfFameBank == HLW_HOF_NO_BANK)
        {
            RetireSector(SECTOR_ID_HOF_1);
            RetireSector(SECTOR_ID_HOF_2);
        }
        else
            RetireSector(SECTOR_ID_HOF_1 + (1 - t->metadata.hallOfFameBank));
    }
    EndTransaction(SAVE_STATUS_OK);
    return SAVE_STATUS_OK;
}

u8 HandleSavingData(u8 saveType)
{
    u32 *backup = gTrainerHillVBlankCounter;
    u8 status;
    gTrainerHillVBlankCounter = NULL;
    status = BeginTransaction(saveType);
    while (status == SAVE_STATUS_OK && sTransaction != NULL && sTransaction->nextSector < 5)
        status = WriteNextSector();
    if (status == SAVE_STATUS_OK)
        status = CommitTransaction();
    gTrainerHillVBlankCounter = backup;
    gSaveAttemptStatus = status;
    return status;
}

u8 TrySavingData(u8 saveType)
{
    u8 status = HandleSavingData(saveType);
    if (status != SAVE_STATUS_OK && gFlashMemoryPresent == TRUE)
        DoSaveFailedScreen(saveType);
    return status;
}

bool8 LinkFullSave_Init(void)
{
    if (BeginTransaction(SAVE_LINK) == SAVE_STATUS_OK)
        return FALSE;
    DoSaveFailedScreen(SAVE_LINK);
    return TRUE;
}

bool8 LinkFullSave_WriteSector(void)
{
    if (sTransaction == NULL || sTransaction->nextSector >= 4)
        return TRUE;
    if (WriteNextSector() == SAVE_STATUS_OK)
        return FALSE;
    DoSaveFailedScreen(SAVE_LINK);
    return TRUE;
}

bool8 LinkFullSave_ReplaceLastSector(void)
{
    if (sTransaction != NULL && WriteNextSector() != SAVE_STATUS_OK)
        DoSaveFailedScreen(SAVE_LINK);
    return FALSE;
}

bool8 LinkFullSave_SetLastSectorSignature(void)
{
    if (CommitTransaction() != SAVE_STATUS_OK)
        DoSaveFailedScreen(SAVE_LINK);
    return FALSE;
}

bool8 WriteSaveBlock2(void)
{
    // Contest/record-mixing scheduling retained, but never write SB2 in place.
    return LinkFullSave_Init();
}

bool8 WriteSaveBlock1Sector(void)
{
    if (sTransaction == NULL)
        return TRUE;
    if (WriteNextSector() != SAVE_STATUS_OK)
    {
        DoSaveFailedScreen(SAVE_LINK);
        return TRUE;
    }
    if (sTransaction->nextSector < 5)
        return FALSE;
    if (CommitTransaction() != SAVE_STATUS_OK)
        DoSaveFailedScreen(SAVE_LINK);
    return TRUE;
}

u8 LoadGameSave(u8 saveType)
{
    struct HlwSlotInfo slot;
    u8 status;
    if (gFlashMemoryPresent != TRUE)
    {
        gSaveFileStatus = SAVE_STATUS_NO_FLASH;
        return SAVE_STATUS_NO_FLASH;
    }
    if (saveType == SAVE_HALL_OF_FAME)
    {
        struct HlwHallOfFameArchive *archive = (void *)&gSaveDataBuffer;
        if (gHoFSaveBuffer == NULL || gPokemonStoragePtr->metadata.hallOfFameBank == HLW_HOF_NO_BANK)
            return SAVE_STATUS_EMPTY;
        if (!HallOfFameValid(&gPokemonStoragePtr->metadata))
            return SAVE_STATUS_CORRUPT;
        memcpy(gHoFSaveBuffer, archive->teams, sizeof(archive->teams));
        memcpy((u8 *)gHoFSaveBuffer + sizeof(archive->teams), gPokemonStoragePtr->hallOfFameTail,
               sizeof(gPokemonStoragePtr->hallOfFameTail));
        HlwSpecies_MigrateHallOfFame(gHoFSaveBuffer);
        return SAVE_STATUS_OK;
    }
    UpdateSaveAddresses();
    status = SelectSlot(&slot);
    // Semantic headers and all flash integrity checks precede any live copy.
    if (status == SAVE_STATUS_OK || status == SAVE_STATUS_ERROR)
    {
        for (u32 id = 0; id < 14; id++)
        {
            ReadFlash(slot.physical[id], 0, (u8 *)&gSaveDataBuffer, sizeof(gSaveDataBuffer));
            memcpy(gRamSaveSectorLocations[id].data, gSaveDataBuffer.data, SECTOR_DATA_SIZE);
            memcpy((u8 *)gSaveBlock3Ptr + id * SAVE_BLOCK_3_CHUNK_SIZE, gSaveDataBuffer.saveBlock3Chunk, SAVE_BLOCK_3_CHUNK_SIZE);
        }
        ReadFlash(SECTOR_ID_HLW_EXTENSION_A + gSaveCounter % 2, HLW_SAVE_EXTENSION_HEADER_SIZE,
                  (u8 *)&gHlwSaveBlock4, sizeof(gHlwSaveBlock4));
        MigrateBagExpansion();
        CopyPartyAndObjectsFromSave();
        HlwSpecies_MigrateSave();
        Randomizer_RecordActiveChaosUsage();
    }
    gSaveFileStatus = status;
    gGameContinueCallback = NULL;
    return status;
}

u16 GetSaveBlocksPointersBaseOffset(void)
{
    struct HlwSlotInfo slot;
    u8 id[4];
    u8 status;
    if (gFlashMemoryPresent != TRUE)
        return 0;
    status = SelectSlot(&slot);
    if (status != SAVE_STATUS_OK && status != SAVE_STATUS_ERROR)
        return 0;
    ReadPrimaryRange(&slot, 0, offsetof(struct SaveBlock2, playerTrainerId), id, sizeof(id));
    return id[0] + id[1] + id[2] + id[3];
}

u32 TryReadSpecialSaveSector(u8 sector, u8 *dst) { return SAVE_STATUS_ERROR; }
u32 TryWriteSpecialSaveSector(u8 sector, u8 *src) { return SAVE_STATUS_ERROR; }

#if TESTING
u8 HlwSave_TestBegin(u8 type) { return BeginTransaction(type); }
u8 HlwSave_TestWriteNext(void) { return WriteNextSector(); }
u8 HlwSave_TestCommit(void) { return CommitTransaction(); }
void HlwSave_TestAbort(void) { EndTransaction(SAVE_STATUS_ERROR); }
u8 HlwSave_TestSelect(void)
{
    struct HlwSlotInfo slot;
    return SelectSlot(&slot);
}
#endif

#define tState         data[0]
#define tTimer         data[1]
#define tInBattleTower data[2]
void Task_LinkFullSave(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    switch (tState)
    {
    case 0: gSoftResetDisabled = TRUE; tState++; break;
    case 1: SetLinkStandbyCallback(); tState++; break;
    case 2:
        if (IsLinkTaskFinished())
        {
            if (!tInBattleTower) SaveMapView();
            tState++;
        }
        break;
    case 3:
        if (!tInBattleTower) SetContinueGameWarpStatusToDynamicWarp();
        LinkFullSave_Init(); tState++; break;
    case 4:
        if (++tTimer == 5) { tTimer = 0; tState++; }
        break;
    case 5: tState = LinkFullSave_WriteSector() ? 6 : 4; break;
    case 6: LinkFullSave_ReplaceLastSector(); tState++; break;
    case 7:
        if (!tInBattleTower) ClearContinueGameWarpStatus2();
        SetLinkStandbyCallback(); tState++; break;
    case 8:
        if (IsLinkTaskFinished()) { LinkFullSave_SetLastSectorSignature(); tState++; }
        break;
    case 9: SetLinkStandbyCallback(); tState++; break;
    case 10: if (IsLinkTaskFinished()) tState++; break;
    case 11:
        if (++tTimer > 5) { gSoftResetDisabled = FALSE; DestroyTask(taskId); }
        break;
    }
}
