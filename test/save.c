#include "global.h"
#include "event_data.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "test/test.h"

// Development guard for the in-progress HLW 0.9 save ABI. Field-offset
// assertions and golden-save fixtures will supplement these size checks.
#define T_SAVEBLOCK1_SIZE 15696
#define T_SAVEBLOCK2_SIZE 3888
#define T_SAVEBLOCK3_SIZE 1600
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

#undef T_SAVEBLOCK1_SIZE
#undef T_SAVEBLOCK2_SIZE
#undef T_SAVEBLOCK3_SIZE
#undef T_POKEMONSTORAGE_SIZE
