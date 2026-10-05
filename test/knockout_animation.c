#include "global.h"
#include "battle.h"
#include "battle_controllers.h"
#include "malloc.h"
#include "pokemon.h"
#include "pokemon_animation.h"
#include "sprite.h"
#include "task.h"
#include "test/test.h"

static void SetUpKnockoutSprites(u32 survivor, u32 species, u32 nature)
{
    ResetSpriteData();
    ResetTasks();
    gBattleStruct = AllocZeroed(sizeof(*gBattleStruct));
    gBattleSpritesDataPtr = AllocZeroed(sizeof(*gBattleSpritesDataPtr));
    gBattleSpritesDataPtr->battlerData = AllocZeroed(sizeof(*gBattleSpritesDataPtr->battlerData) * MAX_BATTLERS_COUNT);
    gBattleSpritesDataPtr->healthBoxesData = AllocZeroed(sizeof(*gBattleSpritesDataPtr->healthBoxesData) * MAX_BATTLERS_COUNT);
    gBattleTypeFlags = BATTLE_TYPE_DOUBLE;
    gBattlersCount = MAX_BATTLERS_COUNT;
    gPlayerPartyCount = gEnemyPartyCount = 2;
    gAbsentBattlerFlags = 1 << BATTLE_PARTNER(survivor);
    ZeroPlayerPartyMons();
    ZeroEnemyPartyMons();

    for (u32 battler = 0; battler < MAX_BATTLERS_COUNT; battler++)
    {
        u32 spriteId = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
        u32 healthboxId = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
        gBattlerPositions[battler] = battler;
        gBattlerPartyIndexes[battler] = battler / 2;
        gBattleMons[battler].hp = battler == survivor ? 100 : 0;
        gBattleMons[battler].species = battler == survivor ? species : SPECIES_WOBBUFFET;
        CreateMon(GetBattlerMon(battler), gBattleMons[battler].species, 50, 26, TRUE, nature, OT_ID_PLAYER_ID, 0);
        gBattlerSpriteIds[battler] = spriteId;
        gSprites[spriteId].data[0] = battler;
        gSprites[spriteId].data[2] = gBattleMons[battler].species;
        gSprites[spriteId].oam.affineMode = ST_OAM_AFFINE_NORMAL;
        gSprites[spriteId].oam.matrixNum = battler;
        // The dummy's END-only frame script never enters ContinueAnim. Model
        // a battle Pokémon whose image-frame animation has already finished.
        gSprites[spriteId].animBeginning = FALSE;
        gSprites[spriteId].animEnded = TRUE;
        gSprites[spriteId].animPaused = TRUE;
        gSprites[spriteId].affineAnimPaused = TRUE;
        gHealthboxSpriteIds[battler] = healthboxId;
        gSprites[healthboxId].data[5] = healthboxId;
        gSprites[healthboxId].data[6] = battler;
        gSprites[healthboxId].oam.affineParam = healthboxId;
        gBattleStruct->gimmick.indicatorSpriteId[battler] = 0;
    }
}

static void TearDownKnockoutSprites(void)
{
    ResetSpriteData();
    ResetTasks();
    Free(gBattleSpritesDataPtr->battlerData);
    Free(gBattleSpritesDataPtr->healthBoxesData);
    Free(gBattleSpritesDataPtr);
    gBattleSpritesDataPtr = NULL;
    Free(gBattleStruct);
    gBattleStruct = NULL;
}

static void StepAnimations(void)
{
    // Match the battle frame order: sprite callbacks run before task callbacks.
    AnimateSprites();
    RunTasks();
}

static u32 CountMonAnimations(void)
{
    u32 count = 0;
    for (u32 sprite = 0; sprite < MAX_SPRITES; sprite++)
        count += IsMonSpriteAnimationRunning(&gSprites[sprite]);
    return count;
}

static void FinishAnimations(void)
{
    // A real knockout also creates a sound task that waits on audio playback.
    // This synchronous fixture advances animation frames without audio frames.
    for (u32 frame = 0; frame < 600 && CountMonAnimations() != 0; frame++)
        StepAnimations();
    EXPECT_EQ(CountMonAnimations(), 0);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 0);
}

TEST("Knockout animation: faint setup and substitute waits do not launch celebrations")
{
    SetUpKnockoutSprites(B_POSITION_PLAYER_RIGHT, SPECIES_FERALIGATR, NATURE_LONELY);
    BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_LEFT);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 0);
    EXPECT_EQ(GetTaskCount(), 0);
    gBattleSpritesDataPtr->healthBoxesData[B_POSITION_OPPONENT_LEFT].specialAnimActive = TRUE;
    for (u32 frame = 0; frame < 4; frame++)
        BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_LEFT);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 0);
    EXPECT_EQ(GetTaskCount(), 0);
    gBattleSpritesDataPtr->healthBoxesData[B_POSITION_OPPONENT_LEFT].specialAnimActive = FALSE;
    BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_LEFT);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 1);
    EXPECT_EQ(CountMonAnimations(), 1);
    // These fixtures have no Pokémon graphics allocation for the faint effect.
    // Exercise the real celebration callback on the surviving sprite instead.
    gSprites[gBattlerSpriteIds[B_POSITION_OPPONENT_LEFT]].callback = SpriteCallbackDummy;
    FinishAnimations();
    TearDownKnockoutSprites();
}

TEST("Knockout animation: real callbacks survive consecutive opponent faints and restore both player positions")
{
    u32 survivor, species, nature;
    PARAMETRIZE { survivor = B_POSITION_PLAYER_LEFT; species = SPECIES_FERALIGATR; nature = NATURE_HARDY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_LEFT; species = SPECIES_FERALIGATR; nature = NATURE_BOLD; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_LEFT; species = SPECIES_FERALIGATR; nature = NATURE_LONELY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; species = SPECIES_FERALIGATR; nature = NATURE_HARDY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; species = SPECIES_FERALIGATR; nature = NATURE_BOLD; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; species = SPECIES_FERALIGATR; nature = NATURE_LONELY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; species = SPECIES_BULBASAUR; nature = NATURE_HARDY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; species = SPECIES_BULBASAUR; nature = NATURE_BOLD; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; species = SPECIES_BULBASAUR; nature = NATURE_LONELY; }
    ASSUME(!gTestRunnerHeadless);
    SetUpKnockoutSprites(survivor, species, nature);
    struct Sprite *sprite = &gSprites[gBattlerSpriteIds[survivor]];
    BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_LEFT);
    BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_LEFT);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 1);
    gSprites[gBattlerSpriteIds[B_POSITION_OPPONENT_LEFT]].callback = SpriteCallbackDummy;
    StepAnimations();
    for (u32 frame = 0; frame < 6; frame++)
        StepAnimations();
    EXPECT(IsMonSpriteAnimationRunning(sprite));
    BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_RIGHT);
    BtlController_HandleFaintAnimation(B_POSITION_OPPONENT_RIGHT);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 1);
    EXPECT_EQ(CountMonAnimations(), 1);
    gSprites[gBattlerSpriteIds[B_POSITION_OPPONENT_RIGHT]].callback = SpriteCallbackDummy;
    FinishAnimations();
    EXPECT_EQ(sprite->data[0], survivor);
    EXPECT_EQ(sprite->data[2], species);
    EXPECT_EQ(sprite->x2, 0);
    EXPECT_EQ(sprite->y2, 0);
    // A later, non-overlapping knockout must still animate normally.
    EXPECT(LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(species), FALSE));
    FinishAnimations();
    EXPECT_EQ(sprite->data[0], survivor);
    EXPECT_EQ(sprite->data[2], species);
    TearDownKnockoutSprites();
}

TEST("Knockout animation: same-frame and running duplicates cannot take sprite ownership")
{
    SetUpKnockoutSprites(B_POSITION_PLAYER_RIGHT, SPECIES_FERALIGATR, NATURE_LONELY);
    struct Sprite *sprite = &gSprites[gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT]];
    EXPECT(LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    EXPECT(!LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    LaunchAnimationTaskForFrontSprite(sprite, ANIM_H_SLIDE);
    EXPECT_EQ(GetTaskCount(), 1);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 1);
    StepAnimations();
    EXPECT(!LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    LaunchAnimationTaskForBackSprite(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR));
    EXPECT_EQ(GetTaskCount(), 1);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 1);
    FinishAnimations();
    EXPECT_EQ(sprite->data[0], B_POSITION_PLAYER_RIGHT);
    EXPECT_EQ(sprite->data[2], SPECIES_FERALIGATR);
    TearDownKnockoutSprites();
}

TEST("Knockout animation: ordinary front animations do not consume another sprite's knockout count")
{
    SetUpKnockoutSprites(B_POSITION_PLAYER_RIGHT, SPECIES_FERALIGATR, NATURE_HARDY);
    struct Sprite *koSprite = &gSprites[gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT]];
    struct Sprite *frontSprite = &gSprites[gBattlerSpriteIds[B_POSITION_OPPONENT_LEFT]];
    EXPECT(LaunchMonKnockoutAnimation(koSprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    LaunchAnimationTaskForFrontSprite(frontSprite, ANIM_H_SLIDE);
    RunTasks();
    frontSprite->callback = SpriteCallbackDummy;
    RunTasks();
    EXPECT_EQ(GetTaskCount(), 1);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 1);
    FinishAnimations();
    TearDownKnockoutSprites();
}

TEST("Knockout animation: exhausted tasks and invalid sprites or back battlers fail without a wait count")
{
    SetUpKnockoutSprites(B_POSITION_PLAYER_RIGHT, SPECIES_FERALIGATR, NATURE_HARDY);
    struct Sprite *sprite = &gSprites[gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT]];
    for (u32 task = 0; task < NUM_TASKS; task++)
        CreateTask(TaskDummy, 0);
    EXPECT(!LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    EXPECT_EQ(GetTaskCount(), NUM_TASKS);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 0);
    for (u32 task = 0; task < NUM_TASKS; task++)
        EXPECT(gTasks[task].func == TaskDummy);
    ResetTasks();
    EXPECT(!LaunchMonKnockoutAnimation(NULL, ANIM_H_SLIDE, TRUE));
    sprite->inUse = FALSE;
    EXPECT(!LaunchMonKnockoutAnimation(sprite, ANIM_H_SLIDE, TRUE));
    sprite->inUse = TRUE;
    sprite->data[0] = MAX_BATTLERS_COUNT;
    EXPECT(!LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    sprite->data[0] = B_POSITION_PLAYER_RIGHT;
    gBattlerPartyIndexes[B_POSITION_PLAYER_RIGHT] = PARTY_SIZE;
    EXPECT(!LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    EXPECT_EQ(GetTaskCount(), 0);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 0);
    TearDownKnockoutSprites();
}

TEST("Knockout animation: destroying the sprite before its first task tick releases its wait count")
{
    SetUpKnockoutSprites(B_POSITION_PLAYER_RIGHT, SPECIES_FERALIGATR, NATURE_HARDY);
    struct Sprite *sprite = &gSprites[gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT]];
    EXPECT(LaunchMonKnockoutAnimation(sprite, GetSpeciesBackAnimSet(SPECIES_FERALIGATR), FALSE));
    DestroySprite(sprite);
    RunTasks();
    EXPECT_EQ(GetTaskCount(), 0);
    EXPECT_EQ((u32)gBattleStruct->battlerKOAnimsRunning, 0);
    EXPECT(!sprite->inUse);
    TearDownKnockoutSprites();
}
