#include "global.h"
#include "battle.h"
#include "battle_interface.h"
#include "battle_main.h"
#include "malloc.h"
#include "pokemon.h"
#include "sprite.h"
#include "trig.h"
#include "window.h"
#include "test/test.h"

static void SetUpHealthboxLayers(void)
{
    static const struct WindowTemplate emptyWindows[] = {DUMMY_WIN_TEMPLATE};

    ResetSpriteData();
    FreeAllSpritePalettes();
    InitWindows(emptyWindows);
    gBattleStruct = AllocZeroed(sizeof(*gBattleStruct));
    gBattleSpritesDataPtr = AllocZeroed(sizeof(*gBattleSpritesDataPtr));
    gBattleSpritesDataPtr->battlerData = AllocZeroed(sizeof(*gBattleSpritesDataPtr->battlerData) * MAX_BATTLERS_COUNT);
    gBattleSpritesDataPtr->healthBoxesData = AllocZeroed(sizeof(*gBattleSpritesDataPtr->healthBoxesData) * MAX_BATTLERS_COUNT);
    gBattleTypeFlags = BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TRAINER;
    gBattlersCount = MAX_BATTLERS_COUNT;
    gPlayerPartyCount = gEnemyPartyCount = 2;
    gAbsentBattlerFlags = 0;

    for (u8 battler = 0; battler < gBattlersCount; battler++)
    {
        u8 mainId = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
        u8 rightId = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
        u8 barId = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);

        gBattlerPositions[battler] = battler;
        gBattlerPartyIndexes[battler] = battler / 2;
        gBattleMons[battler].hp = 100;
        CreateMon(GetBattlerMon(battler), SPECIES_WOBBUFFET, 50, 26, TRUE, battler + 100, OT_ID_PLAYER_ID, 0);
        gHealthboxSpriteIds[battler] = mainId;
        gSprites[mainId].data[5] = barId;
        gSprites[mainId].data[6] = battler;
        gSprites[mainId].oam.affineParam = rightId;
        gSprites[mainId].oam.tileNum = battler * 128;
        gSprites[barId].oam.tileNum = battler * 128 + 64;
        gSprites[barId].subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        gBattleStruct->gimmick.indicatorSpriteId[battler] = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
    }
}

static void TearDownHealthboxLayers(void)
{
    ResetSpriteData();
    FreeAllSpritePalettes();
    FreeAllWindowBuffers();
    Free(gBattleStruct);
    gBattleStruct = NULL;
    Free(gBattleSpritesDataPtr->battlerData);
    Free(gBattleSpritesDataPtr->healthBoxesData);
    Free(gBattleSpritesDataPtr);
    gBattleSpritesDataPtr = NULL;
}

static void ExpectBarLayer(u8 battler, u8 priority, u8 parts)
{
    struct OamData emitted[4];
    u8 emittedCount = 0;
    u8 mainId = gHealthboxSpriteIds[battler];
    struct Sprite *bar = &gSprites[gSprites[mainId].data[5]];

    EXPECT(!bar->invisible);
    EXPECT_EQ((u8)bar->oam.priority, priority);
    EXPECT_EQ(AddSubspritesToOamBuffer(bar, emitted, &emittedCount), 0);
    EXPECT_EQ(emittedCount, parts);
    for (u8 i = 0; i < emittedCount; i++)
        EXPECT_EQ((u8)emitted[i].priority, priority);
    EXPECT_EQ((u8)bar->subspriteMode, SUBSPRITES_IGNORE_PRIORITY);
}

TEST("Healthbox positions keep doubles spacing and clear the dialogue window")
{
    static const s16 expectedCoords[MAX_BATTLERS_COUNT][2] =
    {
        [B_POSITION_PLAYER_LEFT] = {159, 75},
        [B_POSITION_OPPONENT_LEFT] = {44, 19},
        [B_POSITION_PLAYER_RIGHT] = {171, 100},
        [B_POSITION_OPPONENT_RIGHT] = {32, 44},
    };
    s16 x, y;

    SetUpHealthboxLayers();
    for (u8 battler = 0; battler < gBattlersCount; battler++)
    {
        GetBattlerHealthboxCoords(battler, &x, &y);
        EXPECT_EQ(x, expectedCoords[battler][0]);
        EXPECT_EQ(y, expectedCoords[battler][1]);
        InitBattlerHealthboxCoords(battler);
        EXPECT_EQ(gSprites[gHealthboxSpriteIds[battler]].x, x);
        EXPECT_EQ(gSprites[gHealthboxSpriteIds[battler]].y, y);
    }
    // The white footer is at sprite row 27, with a 16-pixel anchor offset.
    // It must stay above the dialogue window, which begins at screen y=112.
    EXPECT(expectedCoords[B_POSITION_PLAYER_RIGHT][1] - 16 + 27 < 112);
    gBattleTypeFlags = BATTLE_TYPE_TRAINER;
    GetBattlerHealthboxCoords(B_POSITION_PLAYER_LEFT, &x, &y);
    EXPECT_EQ(x, 158);
    EXPECT_EQ(y, 88);
    GetBattlerHealthboxCoords(B_POSITION_OPPONENT_LEFT, &x, &y);
    EXPECT_EQ(x, 44);
    EXPECT_EQ(y, 30);
    TearDownHealthboxLayers();
}

TEST("Player healthboxes bounce one pixel upward without entering the dialogue window")
{
    static const s8 speeds[] = {7, 15};

    SetUpHealthboxLayers();
    for (u8 doubles = FALSE; doubles <= TRUE; doubles++)
    {
        gBattleTypeFlags = BATTLE_TYPE_TRAINER | (doubles ? BATTLE_TYPE_DOUBLE : 0);
        gBattlersCount = doubles ? MAX_BATTLERS_COUNT : 2;
        for (u8 battler = 0; battler < gBattlersCount; battler += 2)
        {
            u8 mainId = gHealthboxSpriteIds[battler];

            InitBattlerHealthboxCoords(battler);
            for (u8 speed = 0; speed < ARRAY_COUNT(speeds); speed++)
            {
                bool32 sawRest = FALSE, sawUp = FALSE;
                u8 bounceId;

                DoBounceEffect(battler, BOUNCE_HEALTHBOX, speeds[speed], 1);
                bounceId = gBattleSpritesDataPtr->healthBoxesData[battler].healthboxBounceSpriteId;
                EXPECT(gBattleSpritesDataPtr->healthBoxesData[battler].healthboxIsBouncing);
                // Repeated selection updates must reuse the existing bounce.
                DoBounceEffect(battler, BOUNCE_HEALTHBOX, speeds[speed], 1);
                EXPECT_EQ(gBattleSpritesDataPtr->healthBoxesData[battler].healthboxBounceSpriteId, bounceId);
                for (u16 frame = 0; frame < 256; frame++)
                {
                    gSprites[bounceId].callback(&gSprites[bounceId]);
                    EXPECT(gSprites[mainId].y2 >= -1);
                    EXPECT(gSprites[mainId].y2 <= 0);
                    EXPECT_EQ(gSprites[mainId].x2, 0);
                    sawRest |= gSprites[mainId].y2 == 0;
                    sawUp |= gSprites[mainId].y2 == -1;
                    if (doubles)
                        EXPECT(gSprites[mainId].y + gSprites[mainId].y2 - 16 + 27 < 112);
                }
                EXPECT(sawRest);
                EXPECT(sawUp);
                EndBounceEffect(battler, BOUNCE_HEALTHBOX);
                EXPECT_EQ(gSprites[mainId].y2, 0);
                EXPECT(!gBattleSpritesDataPtr->healthBoxesData[battler].healthboxIsBouncing);
                EXPECT(!gSprites[bounceId].inUse);
            }
        }
    }
    TearDownHealthboxLayers();
}

TEST("Upward player healthbox bouncing does not change Pokemon or opponent healthbox bouncing")
{
    static const s8 speeds[] = {7, 15};

    SetUpHealthboxLayers();
    for (u8 battler = 0; battler < gBattlersCount; battler++)
    {
        gBattlerSpriteIds[battler] = CreateSprite(&gDummySpriteTemplate, 0, 0, 0);
        for (u8 which = BOUNCE_MON; which <= BOUNCE_HEALTHBOX; which++)
        {
            u8 mainId = which == BOUNCE_HEALTHBOX ? gHealthboxSpriteIds[battler] : gBattlerSpriteIds[battler];

            if (which == BOUNCE_HEALTHBOX && IsOnPlayerSide(battler))
                continue;
            for (u8 speed = 0; speed < ARRAY_COUNT(speeds); speed++)
            {
                u8 bounceId;
                s16 phase = which == BOUNCE_HEALTHBOX ? 128 : 192;

                DoBounceEffect(battler, which, speeds[speed], 1);
                bounceId = which == BOUNCE_HEALTHBOX
                         ? gBattleSpritesDataPtr->healthBoxesData[battler].healthboxBounceSpriteId
                         : gBattleSpritesDataPtr->healthBoxesData[battler].battlerBounceSpriteId;
                for (u16 frame = 0; frame < 256; frame++)
                {
                    gSprites[bounceId].callback(&gSprites[bounceId]);
                    EXPECT_EQ(gSprites[mainId].y2, Sin(phase, 1) + 1);
                    phase = (phase + speeds[speed]) & 0xFF;
                }
                EndBounceEffect(battler, which);
                EXPECT_EQ(gSprites[mainId].y2, 0);
            }
        }
    }
    TearDownHealthboxLayers();
}

TEST("Healthbox layers keep both player doubles HP bars in front during stat animations after HP updates")
{
    SetUpHealthboxLayers();
    for (u8 repeat = 0; repeat < 3; repeat++)
    {
        for (u8 battler = B_POSITION_PLAYER_LEFT; battler <= B_POSITION_PLAYER_RIGHT; battler += 2)
            UpdateHpTextInHealthbox(gHealthboxSpriteIds[battler], HP_CURRENT, 100 - repeat * 10, 150);

        // Both stat-increase and stat-decrease animations bring healthboxes
        // to priority 0 before drawing their background overlay.
        UpdateOamPriorityInAllHealthboxes(0, FALSE);
        ExpectBarLayer(B_POSITION_PLAYER_LEFT, 0, 4);
        ExpectBarLayer(B_POSITION_PLAYER_RIGHT, 0, 4);
        UpdateOamPriorityInAllHealthboxes(1, FALSE);
        ExpectBarLayer(B_POSITION_PLAYER_LEFT, 1, 4);
        ExpectBarLayer(B_POSITION_PLAYER_RIGHT, 1, 4);
    }
    TearDownHealthboxLayers();
}

TEST("Healthbox layers preserve HP bar priority through doubles status badges and cures")
{
    static const u32 statuses[] = {STATUS1_SLEEP, STATUS1_POISON, STATUS1_BURN, STATUS1_FREEZE, STATUS1_PARALYSIS, STATUS1_FROSTBITE, 0};

    SetUpHealthboxLayers();
    for (u32 i = 0; i < ARRAY_COUNT(statuses); i++)
    {
        for (u8 battler = B_POSITION_PLAYER_LEFT; battler <= B_POSITION_PLAYER_RIGHT; battler += 2)
        {
            SetMonData(GetBattlerMon(battler), MON_DATA_STATUS, &statuses[i]);
            UpdateHpTextInHealthbox(gHealthboxSpriteIds[battler], HP_CURRENT, 100, 150);
            UpdateHealthboxAttribute(gHealthboxSpriteIds[battler], GetBattlerMon(battler), HEALTHBOX_STATUS_ICON);
        }
        UpdateOamPriorityInAllHealthboxes(0, FALSE);
        ExpectBarLayer(B_POSITION_PLAYER_LEFT, 0, statuses[i] ? 3 : 4);
        ExpectBarLayer(B_POSITION_PLAYER_RIGHT, 0, statuses[i] ? 3 : 4);
        UpdateOamPriorityInAllHealthboxes(1, FALSE);
    }
    TearDownHealthboxLayers();
}

TEST("Healthbox layers retain intentional full healthbox hiding for ordinary move animations")
{
    SetUpHealthboxLayers();
    UpdateOamPriorityInAllHealthboxes(0, TRUE);
    for (u8 battler = 0; battler < gBattlersCount; battler++)
    {
        u8 mainId = gHealthboxSpriteIds[battler];
        EXPECT(gSprites[mainId].invisible);
        EXPECT(gSprites[gSprites[mainId].oam.affineParam].invisible);
        EXPECT(gSprites[gSprites[mainId].data[5]].invisible);
    }
    UpdateOamPriorityInAllHealthboxes(1, TRUE);
    for (u8 battler = 0; battler < gBattlersCount; battler++)
    {
        u8 mainId = gHealthboxSpriteIds[battler];
        EXPECT(!gSprites[mainId].invisible);
        EXPECT(!gSprites[gSprites[mainId].oam.affineParam].invisible);
        EXPECT(!gSprites[gSprites[mainId].data[5]].invisible);
    }
    TearDownHealthboxLayers();
}
