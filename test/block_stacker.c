#include "global.h"
#include "game_corner_block_stacker.h"
#include "main.h"
#include "sound.h"
#include "palette.h"
#include "sprite.h"
#include "task.h"
#include "test/test.h"

static const u8 sNosepassTiles[] = INCBIN_U8("graphics/block_stacker/nosepass.4bpp");
static const u16 sNosepassPalette[] = INCBIN_U16("graphics/block_stacker/nosepass.gbapal");
static const u8 sGameOverTiles[] = INCBIN_U8("graphics/block_stacker/gameover.4bpp");
static const u16 sTitlePalette[] = INCBIN_U16("graphics/block_stacker/title.gbapal");

TEST("Block Stacker: Nosepass loads only four frames and its PNG palette")
{
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    ResetSpriteData();
    FreeAllSpritePalettes();
    u8 id = BlockStacker_TestCreateNosepass();
    EXPECT_LT(id, MAX_SPRITES);
    struct Sprite *sprite = &gSprites[id];
    EXPECT_EQ(sizeof(sNosepassTiles), 4 * 64 * 64 / 2);
    EXPECT_EQ((u32)sprite->oam.shape, SPRITE_SHAPE(64x64));
    EXPECT_EQ((u32)sprite->oam.size, SPRITE_SIZE(64x64));
    EXPECT_EQ(sprite->x, 183);
    EXPECT_EQ(sprite->y, 112);
    EXPECT_EQ(memcmp((const u8 *)OBJ_VRAM0 + sprite->sheetTileStart * TILE_SIZE_4BPP,
                     sNosepassTiles, sizeof(sNosepassTiles)), 0);
    EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(sprite->oam.paletteNum)],
                     sNosepassPalette, sizeof(sNosepassPalette)), 0);
    DestroySpriteAndFreeResources(sprite);
    FreeAllSpritePalettes();
    SetVBlankCallback(vblank);
}

TEST("Block Stacker: Nosepass plays all four poses then alternates horizontal facing each cycle")
{
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    for (u32 visit = 0; visit < 2; visit++)
    {
        ResetSpriteData();
        FreeAllSpritePalettes();
        u8 id = BlockStacker_TestCreateNosepass();
        EXPECT_LT(id, MAX_SPRITES);
        struct Sprite *sprite = &gSprites[id];
        for (u32 pose = 0; pose < 4; pose++)
            EXPECT_EQ((u32)sprite->anims[0][pose].frame.duration, 6);
        u32 cycle = 0;
        u32 seenPoses = 0;
        u32 previousPose = 0;
        for (u32 frame = 0; frame < 600 && cycle < 4; frame++)
        {
            AnimateSprites();
            u32 tile = sprite->oam.tileNum - sprite->sheetTileStart;
            EXPECT_EQ(tile % 64, 0);
            EXPECT_LT(tile, 4 * 64);
            u32 pose = tile / 64;
            if ((u32)sprite->hFlip != (cycle & 1))
            {
                EXPECT_EQ(seenPoses, 0xF);
                EXPECT_EQ(previousPose, 3);
                EXPECT_EQ(pose, 0);
                cycle++;
                seenPoses = 0;
                previousPose = 0;
            }
            EXPECT_EQ((u32)sprite->hFlip, cycle & 1);
            EXPECT_EQ(((u32)sprite->oam.matrixNum >> 3) & 1, cycle & 1);
            EXPECT_EQ(((u32)sprite->oam.matrixNum >> 4) & 1, 0);
            EXPECT(pose == previousPose || pose == previousPose + 1);
            seenPoses |= 1 << pose;
            previousPose = pose;
            EXPECT_EQ((bool32)sprite->invisible, FALSE);
        }
        EXPECT_EQ(cycle, 4);
        DestroySpriteAndFreeResources(sprite);
        EXPECT_EQ((bool32)sprite->inUse, FALSE);
        for (u32 frame = 0; frame < 32; frame++)
            AnimateSprites();
        EXPECT_EQ((bool32)sprite->inUse, FALSE);
        FreeAllSpritePalettes();
    }
    SetVBlankCallback(vblank);
}

TEST("Block Stacker: full highlight intro cannot change Nosepass animation or flip it vertically")
{
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    for (u32 visit = 0; visit < 2; visit++)
    {
        ResetSpriteData();
        FreeAllSpritePalettes();
        u8 id = BlockStacker_TestStartIntro();
        EXPECT_EQ(id, 0);
        struct Sprite *sprite = &gSprites[id];
        for (u32 frame = 0; frame < 600; frame++)
        {
            BlockStacker_TestStepIntro();
            // Catch the invalid table index before the renderer dereferences it.
            EXPECT_EQ(sprite->animNum, 0);
            EXPECT_EQ((bool32)sprite->inUse, TRUE);
            AnimateSprites();
            BuildOamBuffer();
            EXPECT_EQ(((u32)sprite->oam.matrixNum >> 4) & 1, 0);
            EXPECT_EQ(((u32)sprite->oam.matrixNum >> 3) & 1, (u32)sprite->hFlip);
            EXPECT_LT(sprite->oam.tileNum - sprite->sheetTileStart, 4 * 64);
        }
        EXPECT(BlockStacker_TestIntroFinished());
        EXPECT_EQ(memcmp((const u8 *)OBJ_VRAM0 + sprite->sheetTileStart * TILE_SIZE_4BPP,
                         sNosepassTiles, sizeof(sNosepassTiles)), 0);
        EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(sprite->oam.paletteNum)],
                         sNosepassPalette, sizeof(sNosepassPalette)), 0);
        // A defeat after the complete intro must load its own sheet, not fall
        // back to Nosepass's tile zero because duplicate highlights filled VRAM.
        u8 gameOverId = BlockStacker_TestLoseGame();
        EXPECT_LT(gameOverId, MAX_SPRITES);
        struct Sprite *gameOver = &gSprites[gameOverId];
        EXPECT(GetSpriteTileStartByTag(gameOver->template->tileTag) != 0xFFFF);
        EXPECT(gameOver->sheetTileStart != sprite->sheetTileStart);
        EXPECT_EQ(memcmp((const u8 *)OBJ_VRAM0 + gameOver->sheetTileStart * TILE_SIZE_4BPP,
                         sGameOverTiles, sizeof(sGameOverTiles)), 0);
        EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(gameOver->oam.paletteNum)],
                         sTitlePalette, sizeof(sTitlePalette)), 0);
        EXPECT_EQ(memcmp((const u8 *)OBJ_VRAM0 + sprite->sheetTileStart * TILE_SIZE_4BPP,
                         sNosepassTiles, sizeof(sNosepassTiles)), 0);
        for (u32 frame = 0; frame < 600 && !IsFanfareTaskInactive(); frame++)
            RunTasks();
        BlockStacker_TestFreeIntro();
    }
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetVBlankCallback(vblank);
}
