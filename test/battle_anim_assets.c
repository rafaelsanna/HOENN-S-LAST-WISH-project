#include "global.h"
#include "battle_anim.h"
#include "decompress.h"
#include "graphics.h"
#include "palette.h"
#include "sprite.h"
#include "constants/battle_anim.h"
#include "test/test.h"

TEST("Battle animation assets match every registered particle ID")
{
    for (u16 tag = ANIM_SPRITES_START; tag <= ANIM_TAG_TATSUGIRI_STRETCHY; tag++)
    {
        u16 index = GET_TRUE_SPRITE_INDEX(tag);

        EXPECT_EQ(gBattleAnimPicTable[index].tag, tag);
        EXPECT_EQ(gBattleAnimPaletteTable[index].tag, tag);
        // These reserved IDs intentionally have no assets; do not collapse their slots.
        if (tag == ANIM_TAG_UNAVAILABLE_1 || tag == ANIM_TAG_UNAVAILABLE_2)
        {
            EXPECT(gBattleAnimPicTable[index].data == NULL);
            EXPECT(gBattleAnimPaletteTable[index].data == NULL);
            EXPECT_EQ(gBattleAnimPicTable[index].size, 0);
            continue;
        }
        EXPECT(gBattleAnimPicTable[index].data != NULL);
        EXPECT(gBattleAnimPaletteTable[index].data != NULL);
        EXPECT(gBattleAnimPicTable[index].size > 0);
        EXPECT_EQ(gBattleAnimPicTable[index].size % 32, 0);
    }
}

TEST("Battle animation assets resolve Beam, Red Explosion, and Sap Drip 2 to their own graphics and colors")
{
    u16 tag, size;
    const u32 *graphics;
    const u16 *colors;

    PARAMETRIZE { tag = ANIM_TAG_BEAM; graphics = gBattleAnimSpriteGfx_Beam; colors = gBattleAnimSpritePal_Beam; size = 0x0800; }
    PARAMETRIZE { tag = ANIM_TAG_RED_EXPLOSION; graphics = gBattleAnimSpriteGfx_RedExplosion; colors = gBattleAnimSpritePal_RedExplosion; size = 0x0800; }
    PARAMETRIZE { tag = ANIM_TAG_SAP_DRIP_2; graphics = gBattleAnimSpriteGfx_SapDrip; colors = gBattleAnimSpritePal_SapDrip2; size = 0x1000; }

    EXPECT_EQ(gBattleAnimPicTable[GET_TRUE_SPRITE_INDEX(tag)].data, graphics);
    EXPECT_EQ(gBattleAnimPicTable[GET_TRUE_SPRITE_INDEX(tag)].size, size);
    EXPECT_EQ(gBattleAnimPicTable[GET_TRUE_SPRITE_INDEX(tag)].tag, tag);
    EXPECT_EQ(gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(tag)].data, colors);
    EXPECT_EQ(gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(tag)].tag, tag);
}

TEST("Battle animation assets load and unload each affected particle independently")
{
    u16 tag;
    const u16 *colors;
    u32 paletteNum;

    PARAMETRIZE { tag = ANIM_TAG_BEAM; colors = gBattleAnimSpritePal_Beam; }
    PARAMETRIZE { tag = ANIM_TAG_RED_EXPLOSION; colors = gBattleAnimSpritePal_RedExplosion; }
    PARAMETRIZE { tag = ANIM_TAG_SAP_DRIP_2; colors = gBattleAnimSpritePal_SapDrip2; }

    ResetSpriteData();
    FreeAllSpritePalettes();
    // Use the same loaders as the battle-animation loadspritegfx command.
    LoadCompressedSpriteSheetUsingHeap(&gBattleAnimPicTable[GET_TRUE_SPRITE_INDEX(tag)]);
    paletteNum = LoadSpritePalette(&gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(tag)]);
    EXPECT(paletteNum < 16);
    EXPECT(GetSpriteTileStartByTag(tag) != TAG_NONE);
    EXPECT_EQ(GetSpritePaletteTagByPaletteNum(paletteNum), tag);
    EXPECT_EQ(IndexOfSpritePaletteTag(tag), paletteNum);
    EXPECT(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(paletteNum)], colors, PLTT_SIZE_4BPP) == 0);

    FreeSpriteTilesByTag(tag);
    FreeSpritePaletteByTag(tag);
    EXPECT_EQ(GetSpriteTileStartByTag(tag), TAG_NONE);
    EXPECT_EQ(IndexOfSpritePaletteTag(tag), 0xFF);
}
