#include "global.h"
#include "event_data.h"
#include "pokedex.h"
#include "save.h"
#include "achievements.h"

#define SPECIAL_FLAGS_SIZE  (NUM_SPECIAL_FLAGS / 8)  // 8 flags per byte
#define TEMP_FLAGS_SIZE     (NUM_TEMP_FLAGS / 8)
#define DAILY_FLAGS_SIZE    (NUM_DAILY_FLAGS / 8)
#define TEMP_VARS_SIZE      (NUM_TEMP_VARS * 2)      // 1/2 var per byte

STATIC_ASSERT(FLAGS_COUNT == 0x9F0, FrozenLegacyFlagCount);
STATIC_ASSERT(FLAGS_COUNT <= NUM_FLAG_BYTES * 8, LegacyFlagSaveCapacity);
STATIC_ASSERT(VARS_COUNT == ARRAY_COUNT(((struct SaveBlock1 *)0)->vars), LegacyVarSaveCapacity);
STATIC_ASSERT(NUM_HLW_CUSTOM_FLAGS == HLW_CUSTOM_FLAG_BYTES * 8, CustomFlagSaveCapacity);
STATIC_ASSERT(NUM_HLW_CUSTOM_VARS == HLW_CUSTOM_VAR_COUNT, CustomVarSaveCapacity);
STATIC_ASSERT(NUM_TRAINER_FLAGS == HLW_TRAINER_FLAG_COUNT, TrainerFlagSaveCapacity);
STATIC_ASSERT(TRAINERS_COUNT <= HLW_TRAINER_FLAG_COUNT, TrainerContentFitsSaveBank);
STATIC_ASSERT(FLAGS_COUNT <= HLW_CUSTOM_FLAGS_START, LegacyFlagsBeforeCustomFlags);
STATIC_ASSERT(HLW_CUSTOM_FLAGS_END < TRAINER_FLAGS_START, CustomFlagsBeforeTrainerFlags);
STATIC_ASSERT(TRAINER_FLAGS_END < SPECIAL_FLAGS_START, TrainerFlagsBeforeSpecialFlags);
STATIC_ASSERT((TRAINER_FLAGS_START & 7) == 0, TrainerFlagBankByteAligned);
STATIC_ASSERT((LEGACY_TRAINER_FLAGS_START & 7) == 0, LegacyTrainerAliasesByteAligned);
STATIC_ASSERT((HLW_CUSTOM_FLAGS_START & 7) == 0, CustomFlagBankByteAligned);
STATIC_ASSERT(LEGACY_TRAINER_FLAGS_END < SYSTEM_FLAGS, LegacyTrainerAliasesBeforeSystemFlags);
STATIC_ASSERT(SYSTEM_FLAGS == 0x8E9, FrozenSystemFlagStart);
STATIC_ASSERT(VARS_END < HLW_CUSTOM_VARS_START, LegacyVarsBeforeCustomVars);
STATIC_ASSERT(HLW_CUSTOM_VARS_END < SPECIAL_VARS_START, CustomVarsBeforeSpecialVars);

EWRAM_DATA u16 gSpecialVar_0x8000 = 0;
EWRAM_DATA u16 gSpecialVar_0x8001 = 0;
EWRAM_DATA u16 gSpecialVar_0x8002 = 0;
EWRAM_DATA u16 gSpecialVar_0x8003 = 0;
EWRAM_DATA u16 gSpecialVar_0x8004 = 0;
EWRAM_DATA u16 gSpecialVar_0x8005 = 0;
EWRAM_DATA u16 gSpecialVar_0x8006 = 0;
EWRAM_DATA u16 gSpecialVar_0x8007 = 0;
EWRAM_DATA u16 gSpecialVar_0x8008 = 0;
EWRAM_DATA u16 gSpecialVar_0x8009 = 0;
EWRAM_DATA u16 gSpecialVar_0x800A = 0;
EWRAM_DATA u16 gSpecialVar_0x800B = 0;
EWRAM_DATA u16 gSpecialVar_Result = 0;
EWRAM_DATA u16 gSpecialVar_LastTalked = 0;
EWRAM_DATA u16 gSpecialVar_Facing = 0;
EWRAM_DATA u16 gSpecialVar_MonBoxId = 0;
EWRAM_DATA u16 gSpecialVar_MonBoxPos = 0;
EWRAM_DATA u16 gSpecialVar_Unused_0x8014 = 0;
EWRAM_DATA static u8 sSpecialFlags[SPECIAL_FLAGS_SIZE] = {0};

#if TESTING
#define TEST_FLAGS_SIZE     1
#define TEST_VARS_SIZE      8
EWRAM_DATA static u8 sTestFlags[TEST_FLAGS_SIZE] = {0};
EWRAM_DATA static u16 sTestVars[TEST_VARS_SIZE] = {0};
#endif // TESTING

extern u16 *const gSpecialVars[];

const u16 gBadgeFlags[NUM_BADGES] =
{
    FLAG_BADGE01_GET,
    FLAG_BADGE02_GET,
    FLAG_BADGE03_GET,
    FLAG_BADGE04_GET,
    FLAG_BADGE05_GET,
    FLAG_BADGE06_GET,
    FLAG_BADGE07_GET,
    FLAG_BADGE08_GET,
};

void InitEventData(void)
{
    memset(gSaveBlock1Ptr->flags, 0, sizeof(gSaveBlock1Ptr->flags));
    memset(gHlwSaveBlock4.customFlags, 0, sizeof(gHlwSaveBlock4.customFlags));
    memset(gSaveBlock3Ptr->trainerFlags, 0, sizeof(gSaveBlock3Ptr->trainerFlags));
    memset(gSaveBlock1Ptr->vars, 0, sizeof(gSaveBlock1Ptr->vars));
    memset(gHlwSaveBlock4.customVars, 0, sizeof(gHlwSaveBlock4.customVars));
    gSaveBlock3Ptr->achievements.shadowNightmareState = 0;
    ShadowPokemon_SetDefeated(SHADOW_ID_SUICUNE, FALSE);
    memset(sSpecialFlags, 0, sizeof(sSpecialFlags));
}

void ClearTempFieldEventData(void)
{
    memset(&gSaveBlock1Ptr->flags[TEMP_FLAGS_START / 8], 0, TEMP_FLAGS_SIZE);
    memset(&gSaveBlock1Ptr->vars[TEMP_VARS_START - VARS_START], 0, TEMP_VARS_SIZE);
    FlagClear(FLAG_SYS_ENC_UP_ITEM);
    FlagClear(FLAG_SYS_ENC_DOWN_ITEM);
    FlagClear(FLAG_SYS_USE_STRENGTH);
    FlagClear(FLAG_SYS_CTRL_OBJ_DELETE);
    FlagClear(FLAG_NURSE_UNION_ROOM_REMINDER);
}

void ClearDailyFlags(void)
{
    memset(&gSaveBlock1Ptr->flags[DAILY_FLAGS_START / 8], 0, DAILY_FLAGS_SIZE);
}

void DisableNationalPokedex(void)
{
    u16 *nationalDexVar = GetVarPointer(VAR_NATIONAL_DEX);
    gSaveBlock2Ptr->pokedex.nationalMagic = 0;
    *nationalDexVar = 0;
    FlagClear(FLAG_SYS_NATIONAL_DEX);
}

void EnableNationalPokedex(void)
{
    u16 *nationalDexVar = GetVarPointer(VAR_NATIONAL_DEX);
    gSaveBlock2Ptr->pokedex.nationalMagic = 0xDA;
    *nationalDexVar = 0x302;
    FlagSet(FLAG_SYS_NATIONAL_DEX);
    gSaveBlock2Ptr->pokedex.mode = DEX_MODE_NATIONAL;
    gSaveBlock2Ptr->pokedex.order = 0;
    ResetPokedexScrollPositions();
}

bool32 IsNationalPokedexEnabled(void)
{
    if (gSaveBlock2Ptr->pokedex.nationalMagic == 0xDA && VarGet(VAR_NATIONAL_DEX) == 0x302 && FlagGet(FLAG_SYS_NATIONAL_DEX))
        return TRUE;
    else
        return FALSE;
}

void DisableMysteryEvent(void)
{
    FlagClear(FLAG_SYS_MYSTERY_EVENT_ENABLE);
}

void EnableMysteryEvent(void)
{
    FlagSet(FLAG_SYS_MYSTERY_EVENT_ENABLE);
}

bool32 IsMysteryEventEnabled(void)
{
    return FlagGet(FLAG_SYS_MYSTERY_EVENT_ENABLE);
}

void DisableMysteryGift(void)
{
    FlagClear(FLAG_SYS_MYSTERY_GIFT_ENABLE);
}

void EnableMysteryGift(void)
{
    FlagSet(FLAG_SYS_MYSTERY_GIFT_ENABLE);
}

bool32 IsMysteryGiftEnabled(void)
{
    return FlagGet(FLAG_SYS_MYSTERY_GIFT_ENABLE);
}

void ClearMysteryGiftFlags(void)
{
    FlagClear(FLAG_MYSTERY_GIFT_DONE);
    FlagClear(FLAG_MYSTERY_GIFT_1);
    FlagClear(FLAG_MYSTERY_GIFT_2);
    FlagClear(FLAG_MYSTERY_GIFT_3);
    FlagClear(FLAG_MYSTERY_GIFT_4);
    FlagClear(FLAG_MYSTERY_GIFT_5);
    FlagClear(FLAG_MYSTERY_GIFT_6);
    FlagClear(FLAG_MYSTERY_GIFT_7);
    FlagClear(FLAG_MYSTERY_GIFT_8);
    FlagClear(FLAG_MYSTERY_GIFT_9);
    FlagClear(FLAG_MYSTERY_GIFT_10);
    FlagClear(FLAG_MYSTERY_GIFT_11);
    FlagClear(FLAG_MYSTERY_GIFT_12);
    FlagClear(FLAG_MYSTERY_GIFT_13);
    FlagClear(FLAG_MYSTERY_GIFT_14);
    FlagClear(FLAG_MYSTERY_GIFT_15);
}

void ClearMysteryGiftVars(void)
{
    VarSet(VAR_GIFT_PICHU_SLOT, 0);
}

void DisableResetRTC(void)
{
    VarSet(VAR_RESET_RTC_ENABLE, 0);
    FlagClear(FLAG_SYS_RESET_RTC_ENABLE);
}

void EnableResetRTC(void)
{
    VarSet(VAR_RESET_RTC_ENABLE, 0x920);
    FlagSet(FLAG_SYS_RESET_RTC_ENABLE);
}

bool32 CanResetRTC(void)
{
    if (FlagGet(FLAG_SYS_RESET_RTC_ENABLE) && VarGet(VAR_RESET_RTC_ENABLE) == 0x920)
        return TRUE;
    else
        return FALSE;
}

u16 *GetVarPointer(u16 id)
{
    // This story variable is the canonical defeated state of the linked
    // Celebi/Jirachi encounter. Its former legacy slot is retired.
    if (id == VAR_NIGHTMARE_STATE)
        return &gSaveBlock3Ptr->achievements.shadowNightmareState;
    else if (id >= VARS_START && id <= VARS_END)
        return &gSaveBlock1Ptr->vars[id - VARS_START];
    else if (id >= HLW_CUSTOM_VARS_START && id <= HLW_CUSTOM_VARS_END)
        return &gHlwSaveBlock4.customVars[id - HLW_CUSTOM_VARS_START];
    else if (id >= SPECIAL_VARS_START && id <= SPECIAL_VARS_END)
        return gSpecialVars[id - SPECIAL_VARS_START];
#if TESTING
    else if (id >= TESTING_VARS_START && id < TESTING_VARS_START + ARRAY_COUNT(sTestVars))
        return &sTestVars[id - TESTING_VARS_START];
#endif // TESTING
    return NULL;
}

u16 VarGet(u16 id)
{
    u16 *ptr = GetVarPointer(id);
    if (!ptr)
        return id;
    return *ptr;
}

u16 VarGetIfExist(u16 id)
{
    u16 *ptr = GetVarPointer(id);
    if (!ptr)
        return 65535;
    return *ptr;
}

bool8 VarSet(u16 id, u16 value)
{
    u16 *ptr = GetVarPointer(id);
    if (!ptr)
        return FALSE;
    *ptr = value;
    return TRUE;
}

u16 VarGetObjectEventGraphicsId(u8 id)
{
    return VarGet(VAR_OBJ_GFX_ID_0 + id);
}

u16 GetTrainerFlagId(u16 trainerId)
{
    // Check before addition so malformed trainer IDs cannot wrap into flags
    // owned by another system. Flag zero is the existing no-op sentinel.
    if (trainerId >= HLW_TRAINER_FLAG_COUNT)
        return 0;
    return TRAINER_FLAGS_START + trainerId;
}

u8 *GetFlagPointer(u16 id)
{
    // The Shadow alias has a different bit index from its script flag ID and
    // must use FlagGet/Set/Clear/Toggle rather than a direct byte pointer.
    if (id == 0 || id == FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA)
        return NULL;
    else if (id >= LEGACY_TRAINER_FLAGS_START && id <= LEGACY_TRAINER_FLAGS_END)
        return &gSaveBlock3Ptr->trainerFlags[(id - LEGACY_TRAINER_FLAGS_START) / 8];
    else if (id < FLAGS_COUNT)
        return &gSaveBlock1Ptr->flags[id / 8];
    else if (id >= HLW_CUSTOM_FLAGS_START && id <= HLW_CUSTOM_FLAGS_END)
        return &gHlwSaveBlock4.customFlags[(id - HLW_CUSTOM_FLAGS_START) / 8];
    else if (id >= TRAINER_FLAGS_START && id <= TRAINER_FLAGS_END)
        return &gSaveBlock3Ptr->trainerFlags[(id - TRAINER_FLAGS_START) / 8];
    else if (id >= SPECIAL_FLAGS_START && id <= SPECIAL_FLAGS_END)
        return &sSpecialFlags[(id - SPECIAL_FLAGS_START) / 8];
#if TESTING
    else if (id >= TESTING_FLAGS_START && id < TESTING_FLAGS_START + TEST_FLAGS_SIZE * 8)
        return &sTestFlags[(id - TESTING_FLAGS_START) / 8];
#endif // TESTING
    return NULL;
}

bool8 IsFlagValid(u16 id)
{
    return id == FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA || GetFlagPointer(id) != NULL;
}

u8 FlagSet(u16 id)
{
    if (id == FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA)
    {
        ShadowPokemon_SetDefeated(SHADOW_ID_SUICUNE, TRUE);
        return 0;
    }
    u8 *ptr = GetFlagPointer(id);
    if (ptr)
        *ptr |= 1 << (id & 7);
    return 0;
}

u8 FlagToggle(u16 id)
{
    if (id == FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA)
    {
        ShadowPokemon_SetDefeated(SHADOW_ID_SUICUNE, !ShadowPokemon_IsDefeated(SHADOW_ID_SUICUNE));
        return 0;
    }
    u8 *ptr = GetFlagPointer(id);
    if (ptr)
        *ptr ^= 1 << (id & 7);
    return 0;
}

u8 FlagClear(u16 id)
{
    if (id == FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA)
    {
        ShadowPokemon_SetDefeated(SHADOW_ID_SUICUNE, FALSE);
        return 0;
    }
    u8 *ptr = GetFlagPointer(id);
    if (ptr)
        *ptr &= ~(1 << (id & 7));
    return 0;
}

bool8 FlagGet(u16 id)
{
    if (id == FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA)
        return ShadowPokemon_IsDefeated(SHADOW_ID_SUICUNE);
    u8 *ptr = GetFlagPointer(id);

    if (!ptr)
        return FALSE;

    if (!(((*ptr) >> (id & 7)) & 1))
        return FALSE;

    return TRUE;
}
