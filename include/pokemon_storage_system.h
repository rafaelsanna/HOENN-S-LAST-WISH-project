#ifndef GUARD_POKEMON_STORAGE_SYSTEM_H
#define GUARD_POKEMON_STORAGE_SYSTEM_H
#include "main.h"

#define TOTAL_BOXES_COUNT       14
#define IN_BOX_ROWS             5 // Number of rows, 6 Pokémon per row
#define IN_BOX_COLUMNS          6 // Number of columns, 5 Pokémon per column
#define IN_BOX_COUNT            (IN_BOX_ROWS * IN_BOX_COLUMNS)
#define BOX_NAME_LENGTH         8

// 0.9 save ABI: all nine storage sectors are part of the fixed image.
// Fusion storage was deliberately removed; HLW does not support fusion forms.
#define POKEMON_STORAGE_SAVE_SIZE                    0x8B80
#define POKEMON_STORAGE_METADATA_SIZE                64
#define POKEMON_STORAGE_HALL_OF_FAME_TAIL_SIZE       288
#define POKEMON_STORAGE_BAG_SUPPLEMENT_SIZE           336
#define POKEMON_STORAGE_FUTURE_RESERVED_SIZE         1280

#define HLW_SAVE_METADATA_MAGIC                      0x4D574C48 // "HLWM"
#define HLW_SAVE_METADATA_SIZE                       64

struct HlwSaveMetadata
{
    u32 magic;
    u16 schemaVersion;
    u16 size;
    u8 saveUuid[16];
    u32 hallOfFameGeneration;
    u32 hallOfFameCrc32;
    u8 hallOfFameBank;
    u8 flags;
    u8 reserved[30];
};

// Fixed 0.9 overflow segments for pockets that do not fit in SaveBlock1's
// legacy bag or its Mystery Gift replacement. This structure owns the entire
// 336-byte storage range; append-only changes may consume reserved bytes.
struct HlwBagSupplement
{
    struct ItemSlot TMsHMsExtra[BAG_TMHM_SUPPLEMENT_COUNT];
    struct ItemSlot keyItemsExtra[BAG_KEYITEMS_EXTRA_COUNT];
    struct ItemSlot berriesExtra[BAG_BERRIES_EXTRA_COUNT];
    u8 reserved[4];
};

STATIC_ASSERT(sizeof(struct HlwBagSupplement) == POKEMON_STORAGE_BAG_SUPPLEMENT_SIZE, HlwBagSupplementSize);

/*
            COLUMNS
ROWS        0   1   2   3   4   5
            6   7   8   9   10  11
            12  13  14  15  16  17
            18  19  20  21  22  23
            24  25  26  27  28  29
*/

struct PokemonStorage
{
    /*0x0000*/ u8 currentBox;
    /*0x0004*/ struct BoxPokemon boxes[TOTAL_BOXES_COUNT][IN_BOX_COUNT];
    /*0x8344*/ u8 boxNames[TOTAL_BOXES_COUNT][BOX_NAME_LENGTH + 1];
    /*0x83C2*/ u8 boxWallpapers[TOTAL_BOXES_COUNT];
    /*0x83D0*/ struct HlwSaveMetadata metadata;
    /*0x8410*/ u8 hallOfFameTail[POKEMON_STORAGE_HALL_OF_FAME_TAIL_SIZE];
    /*0x8530*/ struct HlwBagSupplement bagSupplement;
    /*0x8680*/ u8 futureReserved[POKEMON_STORAGE_FUTURE_RESERVED_SIZE];
};

extern struct PokemonStorage *gPokemonStoragePtr;

void DrawTextWindowAndBufferTiles(const u8 *string, void *dst, u8 zero1, u8 zero2, s32 bytesToBuffer);
u8 CountMonsInBox(u8 boxId);
s16 GetFirstFreeBoxSpot(u8 boxId);
u8 CountPartyAliveNonEggMonsExcept(u8 slotToIgnore);
u16 CountPartyAliveNonEggMons_IgnoreVar0x8004Slot(void);
u8 CountPartyMons(void);
u8 *StringCopyAndFillWithSpaces(u8 *dst, const u8 *src, u16 n);
void ShowPokemonStorageSystemPC(void);
void ResetPokemonStorageSystem(void);
void ShowPokemonPCFromParty(void);
void CB2_ShowPokemonPCFromParty(void);
void PokemonPC_SetReturnToPartyCallback(MainCallback cb);
s16 CompactPartySlots(void);
u8 StorageGetCurrentBox(void);
u32 GetBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request);
void SetBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request, const void *value);
u32 GetCurrentBoxMonData(u8 boxPosition, s32 request);
void SetCurrentBoxMonData(u8 boxPosition, s32 request, const void *value);
void GetBoxMonNickAt(u8 boxId, u8 boxPosition, u8 *dst);
u32 GetBoxMonLevelAt(u8 boxId, u8 boxPosition);
void SetBoxMonNickAt(u8 boxId, u8 boxPosition, const u8 *nick);
u32 GetAndCopyBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request, void *dst);
void SetBoxMonAt(u8 boxId, u8 boxPosition, struct BoxPokemon *src);
void CopyBoxMonAt(u8 boxId, u8 boxPosition, struct BoxPokemon *dst);
void CreateBoxMonAt(u8 boxId, u8 boxPosition, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 personality, u8 otIDType, u32 otID);
void ZeroBoxMonAt(u8 boxId, u8 boxPosition);
void BoxMonAtToMon(u8 boxId, u8 boxPosition, struct Pokemon *dst);
struct BoxPokemon *GetBoxedMonPtr(u8 boxId, u8 boxPosition);
u8 *GetBoxNamePtr(u8 boxId);
s16 AdvanceStorageMonIndex(struct BoxPokemon *boxMons, u8 currIndex, u8 maxIndex, u8 mode);
bool8 CheckFreePokemonStorageSpace(void);
bool32 CheckBoxMonSanityAt(u32 boxId, u32 boxPosition);
u32 CountStorageNonEggMons(void);
u32 CountAllStorageMons(void);
bool32 AnyStorageMonWithMove(u16 move);

void ResetWaldaWallpaper(void);
void SetWaldaWallpaperLockedOrUnlocked(bool32 unlocked);
bool32 IsWaldaWallpaperUnlocked(void);
u32 GetWaldaWallpaperPatternId(void);
void SetWaldaWallpaperPatternId(u8 id);
u32 GetWaldaWallpaperIconId(void);
void SetWaldaWallpaperIconId(u8 id);
u16 *GetWaldaWallpaperColorsPtr(void);
void SetWaldaWallpaperColors(u16 color1, u16 color2);
u8 *GetWaldaPhrasePtr(void);
void SetWaldaPhrase(const u8 *src);
bool32 IsWaldaPhraseEmpty(void);

void EnterPokeStorage(u8 boxOption);
u32 CountPartyNonEggMons(void);

#endif // GUARD_POKEMON_STORAGE_SYSTEM_H
