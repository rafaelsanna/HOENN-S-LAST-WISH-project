#include "global.h"
#include "battle_setup.h"
#include "achievements.h"
#include "event_data.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "test/test.h"

// Development guard for the in-progress HLW 0.9 save ABI. Field-offset
// assertions and golden-save fixtures will supplement these size checks.
#define T_SAVEBLOCK1_SIZE 15872
#define T_SAVEBLOCK2_SIZE 3968
#define T_SAVEBLOCK3_SIZE 1624
#define T_POKEMONSTORAGE_SIZE 35712

TEST("SaveBlock1 matches the HLW 0.9 save ABI")
{
    EXPECT_EQ(sizeof(struct SaveBlock1), T_SAVEBLOCK1_SIZE);
}

TEST("SaveBlock2 matches the HLW 0.9 save ABI")
{
    EXPECT_EQ(sizeof(struct SaveBlock2), T_SAVEBLOCK2_SIZE);
}

TEST("SaveBlock3 matches the HLW 0.9 save ABI")
{
    EXPECT_EQ(sizeof(struct SaveBlock3), T_SAVEBLOCK3_SIZE);
}

TEST("PokemonStorage matches the HLW 0.9 save ABI")
{
    EXPECT_EQ(sizeof(struct PokemonStorage), T_POKEMONSTORAGE_SIZE);
    EXPECT_EQ(TOTAL_BOXES_COUNT, 14);
    EXPECT_EQ(TOTAL_BOXES_COUNT * IN_BOX_COUNT, 420);
}

TEST("HLW SaveBlock4 matches the frozen 0.9 extension ABI")
{
    EXPECT_EQ(sizeof(struct HlwSaveMetadata), 64);
    EXPECT_EQ(sizeof(struct HlwSaveExtensionHeader), 64);
    EXPECT_EQ(sizeof(struct HlwSaveBlock4Payload), 4032);
    EXPECT_EQ(sizeof(struct HlwSaveExtensionSector), 4096);
    EXPECT_EQ(NUM_HLW_CUSTOM_FLAGS, 2048);
    EXPECT_EQ(NUM_HLW_CUSTOM_VARS, 256);
    EXPECT_EQ(NUM_TRAINER_FLAGS, 2048);
    EXPECT_EQ(sizeof(gSaveBlock3Ptr->trainerFlags), 256);
    EXPECT_EQ(offsetof(struct HlwSaveBlock4Payload, customFlags), 0);
    EXPECT_EQ(offsetof(struct HlwSaveBlock4Payload, customVars), 256);
    EXPECT_EQ(offsetof(struct HlwSaveBlock4Payload, dexNavSearch), 768);
    EXPECT_EQ(offsetof(struct HlwSaveBlock4Payload, grottoStates), 2816);
}

TEST("HLW custom flags route the complete 0x1000 through 0x17FF range")
{
    memset(gHlwSaveBlock4.customFlags, 0, sizeof(gHlwSaveBlock4.customFlags));

    FlagSet(FLAG_UNUSED_0x1000);
    FlagSet(FLAG_UNUSED_0x17FF);

    EXPECT_EQ(FlagGet(FLAG_UNUSED_0x1000), TRUE);
    EXPECT_EQ(FlagGet(FLAG_UNUSED_0x17FF), TRUE);
    EXPECT_EQ(gHlwSaveBlock4.customFlags[0], 0x01);
    EXPECT_EQ(gHlwSaveBlock4.customFlags[HLW_CUSTOM_FLAG_BYTES - 1], 0x80);

    FlagClear(FLAG_UNUSED_0x1000);
    FlagClear(FLAG_UNUSED_0x17FF);
}

TEST("HLW flag banks reject invalid IDs without modifying adjacent storage")
{
    static const u16 invalidIds[] =
    {
        0, FLAGS_COUNT, HLW_CUSTOM_FLAGS_START - 1,
        HLW_CUSTOM_FLAGS_END + 1, TRAINER_FLAGS_START - 1,
        TRAINER_FLAGS_END + 1, SPECIAL_FLAGS_START - 1,
        SPECIAL_FLAGS_END + 1, TESTING_FLAGS_START - 1,
        TESTING_FLAGS_START + 8, 0xFFFF,
    };

    memset(gSaveBlock1Ptr->flags, 0xA5, sizeof(gSaveBlock1Ptr->flags));
    memset(gHlwSaveBlock4.customFlags, 0xA5, sizeof(gHlwSaveBlock4.customFlags));
    memset(gSaveBlock3Ptr->trainerFlags, 0xA5, sizeof(gSaveBlock3Ptr->trainerFlags));
    gHlwSaveBlock4.customVars[0] = 0x1234;
    for (u32 i = 0; i < ARRAY_COUNT(invalidIds); i++)
    {
        EXPECT_EQ(GetFlagPointer(invalidIds[i]), NULL);
        EXPECT_EQ(FlagGet(invalidIds[i]), FALSE);
        FlagSet(invalidIds[i]);
        FlagClear(invalidIds[i]);
        FlagToggle(invalidIds[i]);
    }
    for (u32 i = 0; i < sizeof(gSaveBlock1Ptr->flags); i++)
        EXPECT_EQ(gSaveBlock1Ptr->flags[i], 0xA5);
    for (u32 i = 0; i < sizeof(gHlwSaveBlock4.customFlags); i++)
        EXPECT_EQ(gHlwSaveBlock4.customFlags[i], 0xA5);
    for (u32 i = 0; i < sizeof(gSaveBlock3Ptr->trainerFlags); i++)
        EXPECT_EQ(gSaveBlock3Ptr->trainerFlags[i], 0xA5);
    EXPECT_EQ(gHlwSaveBlock4.customVars[0], 0x1234);
}

TEST("HLW custom variables store all sixteen bits at both bank boundaries")
{
    InitEventData();
    gHlwSaveBlock4.customFlags[HLW_CUSTOM_FLAG_BYTES - 1] = 0x5A;
    gHlwSaveBlock4.dexNavSearch[0] = 0xA5;

    EXPECT_EQ(VarSet(HLW_CUSTOM_VARS_START, 0xABCD), TRUE);
    EXPECT_EQ(VarSet(VAR_UNUSED_0x50FF, 0xFFFF), TRUE);
    EXPECT_EQ(VarGet(HLW_CUSTOM_VARS_START), 0xABCD);
    EXPECT_EQ(VarGet(VAR_UNUSED_0x50FF), 0xFFFF);
    EXPECT_EQ(GetVarPointer(HLW_CUSTOM_VARS_START), &gHlwSaveBlock4.customVars[0]);
    EXPECT_EQ(GetVarPointer(VAR_UNUSED_0x50FF), &gHlwSaveBlock4.customVars[255]);
    EXPECT_EQ(gHlwSaveBlock4.customFlags[HLW_CUSTOM_FLAG_BYTES - 1], 0x5A);
    EXPECT_EQ(gHlwSaveBlock4.dexNavSearch[0], 0xA5);
    EXPECT_EQ(gSaveBlock1Ptr->vars[VARS_COUNT - 1], 0);
}

TEST("HLW special and test flag endpoints retain isolated bit routing")
{
    static const u16 validIds[] =
    {
        SPECIAL_FLAGS_START, SPECIAL_FLAGS_END,
        TESTING_FLAGS_START, TESTING_FLAGS_START + 7,
    };

    for (u32 i = 0; i < ARRAY_COUNT(validIds); i++)
    {
        EXPECT_EQ(IsFlagValid(validIds[i]), TRUE);
        FlagClear(validIds[i]);
    }
    for (u32 i = 0; i < ARRAY_COUNT(validIds); i++)
    {
        FlagSet(validIds[i]);
        EXPECT_EQ(FlagGet(validIds[i]), TRUE);
        for (u32 j = i + 1; j < ARRAY_COUNT(validIds); j++)
            EXPECT_EQ(FlagGet(validIds[j]), FALSE);
        FlagToggle(validIds[i]);
        EXPECT_EQ(FlagGet(validIds[i]), FALSE);
    }
}

TEST("HLW variable routing rejects gaps and out of range special and test IDs")
{
    static const u16 invalidIds[] =
    {
        0, VARS_START - 1, VARS_END + 1,
        HLW_CUSTOM_VARS_START - 1, HLW_CUSTOM_VARS_END + 1,
        SPECIAL_VARS_START - 1, SPECIAL_VARS_END + 1,
        TESTING_VARS_START - 1, TESTING_VARS_START + 8, 0xFFFF,
    };

    InitEventData();
    VarSet(VARS_END, 0x1234);
    VarSet(HLW_CUSTOM_VARS_START, 0x2345);
    VarSet(HLW_CUSTOM_VARS_END, 0x3456);
    for (u32 i = 0; i < ARRAY_COUNT(invalidIds); i++)
    {
        EXPECT_EQ(GetVarPointer(invalidIds[i]), NULL);
        EXPECT_EQ(VarSet(invalidIds[i], 0xBEEF), FALSE);
        EXPECT_EQ(VarGet(invalidIds[i]), invalidIds[i]);
        EXPECT_EQ(VarGetIfExist(invalidIds[i]), 0xFFFF);
    }
    EXPECT_EQ(VarGet(VARS_END), 0x1234);
    EXPECT_EQ(VarGet(HLW_CUSTOM_VARS_START), 0x2345);
    EXPECT_EQ(VarGet(HLW_CUSTOM_VARS_END), 0x3456);
}

TEST("HLW valid special and test variable endpoints retain their routing")
{
    static const u16 validIds[] =
    {
        VARS_START, VARS_END, SPECIAL_VARS_START, SPECIAL_VARS_END,
        TESTING_VARS_START, TESTING_VARS_START + 7,
    };
    for (u32 i = 0; i < ARRAY_COUNT(validIds); i++)
    {
        EXPECT(GetVarPointer(validIds[i]) != NULL);
        EXPECT_EQ(VarSet(validIds[i], 0xAB00 + i), TRUE);
        EXPECT_EQ(VarGet(validIds[i]), 0xAB00 + i);
        VarSet(validIds[i], 0);
    }
}

TEST("HLW defeated trainers use their own bank including both boundaries")
{
    InitEventData();
    EXPECT_EQ(GetTrainerFlagId(0), 0x2000);
    EXPECT_EQ(GetTrainerFlagId(HLW_TRAINER_FLAG_COUNT - 1), 0x27FF);
    SetTrainerFlag(0);
    SetTrainerFlag(HLW_TRAINER_FLAG_COUNT - 1);
    // This ID used to collide with the first system flag.
    SetTrainerFlag(1001);
    EXPECT_EQ(HasTrainerBeenFought(0), TRUE);
    EXPECT_EQ(HasTrainerBeenFought(HLW_TRAINER_FLAG_COUNT - 1), TRUE);
    EXPECT_EQ(HasTrainerBeenFought(1001), TRUE);
    EXPECT_EQ(gSaveBlock3Ptr->trainerFlags[0], 0x01);
    EXPECT_EQ(gSaveBlock3Ptr->trainerFlags[HLW_TRAINER_FLAG_BYTES - 1], 0x80);
    EXPECT_EQ(FlagGet(FLAG_SYS_POKEMON_GET), FALSE);
    EXPECT_EQ(FlagGet(HLW_CUSTOM_FLAGS_START), FALSE);
    ClearTrainerFlag(HLW_TRAINER_FLAG_COUNT - 1);
    EXPECT_EQ(HasTrainerBeenFought(HLW_TRAINER_FLAG_COUNT - 1), FALSE);
}

TEST("HLW trainer aliases share state and invalid trainer IDs never wrap")
{
    InitEventData();
    FlagSet(LEGACY_TRAINER_FLAGS_START);
    FlagSet(LEGACY_TRAINER_FLAGS_END);
    EXPECT_EQ(HasTrainerBeenFought(0), TRUE);
    EXPECT_EQ(HasTrainerBeenFought(LEGACY_TRAINER_FLAGS_END - LEGACY_TRAINER_FLAGS_START), TRUE);
    EXPECT_EQ(gSaveBlock1Ptr->flags[LEGACY_TRAINER_FLAGS_START / 8], 0);
    EXPECT_EQ(gSaveBlock1Ptr->flags[LEGACY_TRAINER_FLAGS_END / 8], 0);
    ClearTrainerFlag(0);
    EXPECT_EQ(FlagGet(LEGACY_TRAINER_FLAGS_START), FALSE);

    EXPECT_EQ(GetTrainerFlagId(HLW_TRAINER_FLAG_COUNT), 0);
    EXPECT_EQ(GetTrainerFlagId(0xFFFF), 0);
    SetTrainerFlag(HLW_TRAINER_FLAG_COUNT);
    SetTrainerFlag(0xFFFF);
    SetTrainerFlag(0xE002); // Would wrap to low flag 2 without a pre-add check.
    FlagSet(FLAG_TEMP_1);
    ClearTrainerFlag(0xE001); // Would wrap to low flag 1 without a pre-add check.
    EXPECT_EQ(HasTrainerBeenFought(HLW_TRAINER_FLAG_COUNT), FALSE);
    EXPECT_EQ(HasTrainerBeenFought(0xFFFF), FALSE);
    EXPECT_EQ(FlagGet(FLAG_TEMP_1), TRUE);
    EXPECT_EQ(FlagGet(FLAG_TEMP_2), FALSE);
    EXPECT_EQ(FlagGet(FLAG_SYS_POKEMON_GET), FALSE);
}

TEST("HLW event initialization clears all persistent event banks")
{
    FlagSet(HLW_CUSTOM_FLAGS_START);
    FlagSet(HLW_CUSTOM_FLAGS_END);
    SetTrainerFlag(0);
    SetTrainerFlag(HLW_TRAINER_FLAG_COUNT - 1);
    VarSet(HLW_CUSTOM_VARS_START, 0xFFFF);
    VarSet(HLW_CUSTOM_VARS_END, 0xFFFF);
    InitEventData();
    EXPECT_EQ(FlagGet(HLW_CUSTOM_FLAGS_START), FALSE);
    EXPECT_EQ(FlagGet(HLW_CUSTOM_FLAGS_END), FALSE);
    EXPECT_EQ(HasTrainerBeenFought(0), FALSE);
    EXPECT_EQ(HasTrainerBeenFought(HLW_TRAINER_FLAG_COUNT - 1), FALSE);
    EXPECT_EQ(VarGet(HLW_CUSTOM_VARS_START), 0);
    EXPECT_EQ(VarGet(HLW_CUSTOM_VARS_END), 0);
}

TEST("HLW Shadow story aliases share one persistent owner")
{
    InitEventData();
    EXPECT_EQ(IsFlagValid(FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA), TRUE);
    EXPECT_EQ(GetFlagPointer(FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA), NULL);
    FlagSet(FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_SUICUNE), TRUE);
    EXPECT_EQ(FlagGet(FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA), TRUE);
    EXPECT_EQ(gSaveBlock1Ptr->flags[FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA / 8], 0);
    FlagToggle(FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_SUICUNE), FALSE);
    ShadowPokemon_SetDefeated(SHADOW_ID_SUICUNE, TRUE);
    FlagClear(FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_SUICUNE), FALSE);

    EXPECT_EQ(VarSet(VAR_NIGHTMARE_STATE, 1), TRUE);
    EXPECT_EQ(gSaveBlock3Ptr->achievements.shadowNightmareState, 1);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_EVIL_CELEBI), TRUE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_JIRACHI), TRUE);
    EXPECT_EQ(gSaveBlock1Ptr->vars[VAR_NIGHTMARE_STATE - VARS_START], 0);
    VarSet(VAR_NIGHTMARE_STATE, 0);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_EVIL_CELEBI), FALSE);
    EXPECT_EQ(ShadowPokemon_IsDefeated(SHADOW_ID_JIRACHI), FALSE);
}

#undef T_SAVEBLOCK1_SIZE
#undef T_SAVEBLOCK2_SIZE
#undef T_SAVEBLOCK3_SIZE
#undef T_POKEMONSTORAGE_SIZE
