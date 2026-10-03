#include "global.h"
#include "battle.h"
#include "battle_anim.h"
#include "battle_gfx_sfx_util.h"
#include "battle_interface.h"
#include "malloc.h"
#include "main.h"
#include "pokemon.h"
#include "sprite.h"
#include "task.h"
#include "test/test.h"
#include "constants/battle_anim.h"

extern void AnimTask_AllBattlersInvisible(u8 taskId);
extern void AnimTask_AllBattlersVisible(u8 taskId);
extern void AnimTask_AllBattlersInvisibleExceptAttackerAndTarget(u8 taskId);

static u8 sHealthboxParts[3];
static bool8 sWasInBattle;

static void SetUpOneVsTwoSprites(void)
{
    ResetSpriteData();
    ResetTasks();
    sWasInBattle = gMain.inBattle;
    gMain.inBattle = TRUE;
    gBattleStruct = AllocZeroed(sizeof(*gBattleStruct));
    gBattleSpritesDataPtr = AllocZeroed(sizeof(*gBattleSpritesDataPtr));
    gBattleSpritesDataPtr->battlerData = AllocZeroed(sizeof(*gBattleSpritesDataPtr->battlerData) * MAX_BATTLERS_COUNT);
    gBattleSpritesDataPtr->healthBoxesData = AllocZeroed(sizeof(*gBattleSpritesDataPtr->healthBoxesData) * MAX_BATTLERS_COUNT);
    gBattleTypeFlags = BATTLE_TYPE_DOUBLE;
    gBattlersCount = MAX_BATTLERS_COUNT;
    gPlayerPartyCount = 1;
    gEnemyPartyCount = 2;
    gAbsentBattlerFlags = 1u << B_POSITION_PLAYER_RIGHT;
    gBattleAnimAttacker = B_POSITION_PLAYER_LEFT;
    gBattleAnimTarget = B_POSITION_OPPONENT_LEFT;
    ZeroPlayerPartyMons();
    ZeroEnemyPartyMons();

    // Match the real healthbox's low-ID main sprite and high-ID children.
    sHealthboxParts[0] = CreateSprite(&gDummySpriteTemplate, 158, 88, 1);
    sHealthboxParts[1] = CreateSpriteAtEnd(&gDummySpriteTemplate, 222, 88, 1);
    sHealthboxParts[2] = CreateSpriteAtEnd(&gDummySpriteTemplate, 174, 88, 0);
    gHealthboxSpriteIds[B_POSITION_PLAYER_LEFT] = sHealthboxParts[0];
    gSprites[sHealthboxParts[0]].oam.affineParam = sHealthboxParts[1];
    gSprites[sHealthboxParts[0]].data[5] = sHealthboxParts[2];

    for (u8 battler = 0; battler < gBattlersCount; battler++)
    {
        gBattlerPositions[battler] = battler;
        gBattlerPartyIndexes[battler] = battler / 2;
        gBattlerSpriteIds[battler] = SPRITE_NONE;
        gBattleMons[battler].hp = 0;
        if (battler == B_POSITION_PLAYER_RIGHT)
            continue;
        CreateMon(GetBattlerMon(battler), SPECIES_WOBBUFFET, 50, 26, TRUE, battler + 100, OT_ID_PLAYER_ID, 0);
        gBattleMons[battler].hp = 100;
        gBattlerSpriteIds[battler] = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
        gSprites[gBattlerSpriteIds[battler]].data[0] = battler;
        gSprites[gBattlerSpriteIds[battler]].oam.affineMode = ST_OAM_AFFINE_NORMAL;
        gSprites[gBattlerSpriteIds[battler]].oam.matrixNum = battler;
    }
}

static void TearDownOneVsTwoSprites(void)
{
    ResetSpriteData();
    ResetTasks();
    Free(gBattleSpritesDataPtr->battlerData);
    Free(gBattleSpritesDataPtr->healthBoxesData);
    Free(gBattleSpritesDataPtr);
    gBattleSpritesDataPtr = NULL;
    Free(gBattleStruct);
    gBattleStruct = NULL;
    gMain.inBattle = sWasInBattle;
}

static void RunVisualTask(TaskFunc func)
{
    u8 taskId = CreateTask(func, 0);
    gAnimVisualTaskCount = 1;
    func(taskId);
    EXPECT(!gTasks[taskId].isActive);
    EXPECT_EQ(gAnimVisualTaskCount, 0);
}

static void ExpectHealthboxVisible(void)
{
    for (u8 part = 0; part < ARRAY_COUNT(sHealthboxParts); part++)
        EXPECT(!gSprites[sHealthboxParts[part]].invisible);
}

TEST("Battler sprites: one versus two keeps the singles-style player healthbox")
{
    s16 x, y;
    SetUpOneVsTwoSprites();
    EXPECT_EQ(GetBattlerCoordsIndex(B_POSITION_PLAYER_LEFT), BATTLE_COORDS_SINGLES);
    EXPECT_EQ(GetBattlerCoordsIndex(B_POSITION_OPPONENT_LEFT), BATTLE_COORDS_DOUBLES);
    EXPECT_EQ(GetBattlerCoordsIndex(B_POSITION_OPPONENT_RIGHT), BATTLE_COORDS_DOUBLES);
    GetBattlerHealthboxCoords(B_POSITION_PLAYER_LEFT, &x, &y);
    EXPECT_EQ(x, 158);
    EXPECT_EQ(y, 88);
    TearDownOneVsTwoSprites();
}

TEST("Battler sprites: absent-slot hide and reveal cannot hide any healthbox piece")
{
    SetUpOneVsTwoSprites();
    for (u8 part = 0; part < ARRAY_COUNT(sHealthboxParts); part++)
    {
        // Simulate both a zero-initialized reference and recycled child IDs.
        gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT] = sHealthboxParts[part];
        RunVisualTask(AnimTask_AllBattlersInvisible);
        ExpectHealthboxVisible();
        for (u8 battler = 0; battler < gBattlersCount; battler++)
            if (battler != B_POSITION_PLAYER_RIGHT)
                EXPECT(gSprites[gBattlerSpriteIds[battler]].invisible);
        RunVisualTask(AnimTask_AllBattlersVisible);
        for (u8 battler = 0; battler < gBattlersCount; battler++)
            if (battler != B_POSITION_PLAYER_RIGHT)
                EXPECT(!gSprites[gBattlerSpriteIds[battler]].invisible);
        RunVisualTask(AnimTask_AllBattlersInvisibleExceptAttackerAndTarget);
        ExpectHealthboxVisible();
        EXPECT(!gSprites[gBattlerSpriteIds[gBattleAnimAttacker]].invisible);
        EXPECT(!gSprites[gBattlerSpriteIds[gBattleAnimTarget]].invisible);
        EXPECT(gSprites[gBattlerSpriteIds[B_POSITION_OPPONENT_RIGHT]].invisible);
        RunVisualTask(AnimTask_AllBattlersVisible);
    }
    TearDownOneVsTwoSprites();
}

TEST("Battler sprites: absent slots never join affine animations even when zero HP is ignored")
{
    SetUpOneVsTwoSprites();
    gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT] = sHealthboxParts[0];
    gBattleStruct->spriteIgnore0Hp = TRUE;
    EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_RIGHT));
    EXPECT_EQ(GetAnimBattlerSpriteId(ANIM_ATK_PARTNER), SPRITE_NONE);
    for (u8 repeat = 0; repeat < 3; repeat++)
    {
        SetBattlerSpriteAffineMode(ST_OAM_AFFINE_OFF);
        SetBattlerSpriteAffineMode(ST_OAM_AFFINE_NORMAL);
        for (u8 part = 0; part < ARRAY_COUNT(sHealthboxParts); part++)
            EXPECT_EQ((u8)gSprites[sHealthboxParts[part]].oam.affineMode, ST_OAM_AFFINE_OFF);
    }
    TearDownOneVsTwoSprites();
}

TEST("Battler sprites: invalid or destroyed references are not present")
{
    SetUpOneVsTwoSprites();
    u8 spriteId = gBattlerSpriteIds[B_POSITION_PLAYER_LEFT];
    EXPECT(IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    gSprites[spriteId].invisible = TRUE;
    EXPECT(IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    gBattlerSpriteIds[B_POSITION_PLAYER_LEFT] = SPRITE_NONE;
    EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    gBattlerSpriteIds[B_POSITION_PLAYER_LEFT] = MAX_SPRITES;
    EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    gBattlerSpriteIds[B_POSITION_PLAYER_LEFT] = spriteId;
    DestroySprite(&gSprites[spriteId]);
    EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    EXPECT(!IsBattlerSpritePresent(MAX_BATTLERS_COUNT));
    TearDownOneVsTwoSprites();
}

TEST("Battler sprites: legitimate zero-HP animations remain supported")
{
    u16 hp = 0;
    SetUpOneVsTwoSprites();
    SetMonData(GetBattlerMon(B_POSITION_PLAYER_LEFT), MON_DATA_HP, &hp);
    EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    gBattleStruct->spriteIgnore0Hp = TRUE;
    EXPECT(IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    gAbsentBattlerFlags |= 1u << B_POSITION_PLAYER_LEFT;
    EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_LEFT));
    TearDownOneVsTwoSprites();
}

TEST("Battler sprites: absent references do not affect a recycled Poke Ball sprite")
{
    SetUpOneVsTwoSprites();
    u8 ballId = CreateSprite(&gDummySpriteTemplate, 180, 70, 0);
    gSprites[ballId].oam.affineMode = ST_OAM_AFFINE_NORMAL;
    gSprites[ballId].oam.matrixNum = 5;
    gSprites[ballId].x2 = 3;
    gSprites[ballId].y2 = -2;
    gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT] = ballId;
    gBattleStruct->spriteIgnore0Hp = TRUE;
    SetBattlerSpriteAffineMode(ST_OAM_AFFINE_OFF);
    EXPECT_EQ((u8)gSprites[ballId].oam.affineMode, ST_OAM_AFFINE_NORMAL);
    EXPECT_EQ((u8)gSprites[ballId].oam.matrixNum, 5);
    RunVisualTask(AnimTask_AllBattlersInvisible);
    RunVisualTask(AnimTask_AllBattlersVisible);
    EXPECT(!gSprites[ballId].invisible);
    EXPECT_EQ(gSprites[ballId].x2, 3);
    EXPECT_EQ(gSprites[ballId].y2, -2);
    TearDownOneVsTwoSprites();
}

TEST("Battler sprites: invisibility snapshots handle missing sprite IDs")
{
    SetUpOneVsTwoSprites();
    CopyAllBattleSpritesInvisibilities();
    EXPECT(gBattleSpritesDataPtr->battlerData[B_POSITION_PLAYER_RIGHT].invisible);
    EXPECT(!gBattleSpritesDataPtr->battlerData[B_POSITION_PLAYER_LEFT].invisible);
    TearDownOneVsTwoSprites();
}
