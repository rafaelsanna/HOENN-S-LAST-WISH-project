#include "global.h"
#include "hlw_save_abi_asserts.h"
#include "test/test.h"

// offsetof cannot address a bitfield. Verify the actual ARM byte packing as
// well as the declaration/order snapshots checked by check_hlw_save_abi.py.
static u16 ReadOptionBits(void)
{
    const u8 *bytes = (const u8 *)gSaveBlock2Ptr;
    return bytes[20] | (bytes[21] << 8);
}

static void ClearOptionBits(void)
{
    u8 *bytes = (u8 *)gSaveBlock2Ptr;
    bytes[20] = 0;
    bytes[21] = 0;
}

TEST("HLW save ABI freezes packed option bits independently of block size")
{
    u16 previous = ReadOptionBits();
    u8 *bytes = (u8 *)gSaveBlock2Ptr;

#define CHECK_OPTION(member, value, expected) \
    do { ClearOptionBits(); gSaveBlock2Ptr->member = value; EXPECT_EQ(ReadOptionBits(), expected); } while (0)
    CHECK_OPTION(optionsTextSpeed, 15, 0x000F);
    CHECK_OPTION(optionsWindowFrameType, 31, 0x01F0);
    CHECK_OPTION(optionsSound, 1, 0x0200);
    CHECK_OPTION(optionsBattleStyle, 1, 0x0400);
    CHECK_OPTION(optionsBattleSceneOff, 1, 0x0800);
    CHECK_OPTION(regionMapZoom, 1, 0x1000);
    CHECK_OPTION(optionsNuzlocke, 3, 0x6000);
    CHECK_OPTION(optionsDebugMenu, 1, 0x8000);
#undef CHECK_OPTION
    bytes[20] = previous;
    bytes[21] = previous >> 8;
}

TEST("HLW save ABI freezes boxed Pokemon bitfield identities")
{
    struct BoxPokemon mon;
    const u8 *bytes = (const u8 *)&mon;

#define CHECK_MON_BITS(member, value, offset, expected) \
    do { memset(&mon, 0, sizeof(mon)); mon.member = value; EXPECT_EQ(bytes[offset], expected); } while (0)
    CHECK_MON_BITS(language, 7, 18, 0x07);
    CHECK_MON_BITS(hiddenNatureModifier, 31, 18, 0xF8);
    CHECK_MON_BITS(isBadEgg, 1, 19, 0x01);
    CHECK_MON_BITS(hasSpecies, 1, 19, 0x02);
    CHECK_MON_BITS(isEgg, 1, 19, 0x04);
    CHECK_MON_BITS(blockBoxRS, 1, 19, 0x08);
    CHECK_MON_BITS(daysSinceFormChange, 7, 19, 0x70);
    CHECK_MON_BITS(markings, 15, 27, 0x0F);
    CHECK_MON_BITS(compressedStatus, 15, 27, 0xF0);
    CHECK_MON_BITS(hpLost, 0x3FFF, 30, 0xFF);
    EXPECT_EQ(bytes[31], 0x3F);
    CHECK_MON_BITS(shinyModifier, 1, 31, 0x40);
#undef CHECK_MON_BITS
}

TEST("HLW save ABI freezes NPC follower bit packing")
{
    struct NPCFollower follower;
    const u8 *bytes = (const u8 *)&follower;

#define CHECK_FOLLOWER_BITS(member, value, expected) \
    do { memset(&follower, 0, sizeof(follower)); follower.member = value; EXPECT_EQ(bytes[0], expected); } while (0)
    CHECK_FOLLOWER_BITS(inProgress, 1, 0x01);
    CHECK_FOLLOWER_BITS(warpEnd, 1, 0x02);
    CHECK_FOLLOWER_BITS(createSurfBlob, 7, 0x1C);
    CHECK_FOLLOWER_BITS(comeOutDoorStairs, 3, 0x60);
    CHECK_FOLLOWER_BITS(forcedMovement, 1, 0x80);
#undef CHECK_FOLLOWER_BITS
}
