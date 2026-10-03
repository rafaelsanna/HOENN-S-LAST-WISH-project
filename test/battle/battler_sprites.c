#include "global.h"
#include "battle_anim.h"
#include "battle_interface.h"
#include "pokemon.h"
#include "sprite.h"
#include "test/battle.h"

static void ExpectPlayerHealthboxIntact(enum BattleCoordTypes layout)
{
    u8 mainId = gHealthboxSpriteIds[B_POSITION_PLAYER_LEFT];
    u8 rightId = gSprites[mainId].oam.affineParam;
    u8 barId = gSprites[mainId].data[5];

    EXPECT_EQ(GetBattlerCoordsIndex(B_POSITION_PLAYER_LEFT), layout);
    EXPECT(!gSprites[mainId].invisible);
    EXPECT(!gSprites[rightId].invisible);
    EXPECT(!gSprites[barId].invisible);
    EXPECT_EQ((u8)gSprites[mainId].oam.affineMode, ST_OAM_AFFINE_OFF);
    EXPECT_EQ((u8)gSprites[rightId].oam.affineMode, ST_OAM_AFFINE_OFF);
}

DOUBLE_BATTLE_TEST("Battler sprites: initial one-versus-two survives stat and full-screen animations")
{
    GIVEN {
        FORCE_MOVE_ANIM(TRUE);
        PLAYER(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        PLAYER(SPECIES_WOBBUFFET);
        // Declare both DSL slots, then empty the unused one before battle startup.
        ZeroMonData(&PLAYER_PARTY[1]);
        OPPONENT(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        OPPONENT(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
    } WHEN {
        TURN { MOVE(playerLeft, MOVE_GROWTH); MOVE(opponentLeft, MOVE_GROWL); }
        TURN { MOVE(playerLeft, MOVE_CHLOROBLAST, target: opponentRight); }
    } THEN {
        EXPECT(gAbsentBattlerFlags & (1u << B_POSITION_PLAYER_RIGHT));
        EXPECT_EQ(gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT], SPRITE_NONE);
        EXPECT(!IsBattlerSpritePresent(B_POSITION_PLAYER_RIGHT));
        ExpectPlayerHealthboxIntact(BATTLE_COORDS_SINGLES);
    }
}

DOUBLE_BATTLE_TEST("Battler sprites: a two-versus-two becoming one-versus-two retains its doubles healthbox")
{
    GIVEN {
        FORCE_MOVE_ANIM(TRUE);
        PLAYER(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        PLAYER(SPECIES_WOBBUFFET) { HP(1); }
        OPPONENT(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        OPPONENT(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
    } WHEN {
        TURN { MOVE(opponentLeft, MOVE_SCRATCH, target: playerRight); }
        TURN { MOVE(playerLeft, MOVE_CHLOROBLAST, target: opponentRight); }
    } THEN {
        EXPECT_EQ(gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT], SPRITE_NONE);
        ExpectPlayerHealthboxIntact(BATTLE_COORDS_DOUBLES);
    }
}

DOUBLE_BATTLE_TEST("Battler sprites: both fainted partner slots stay invalid during later animations")
{
    GIVEN {
        FORCE_MOVE_ANIM(TRUE);
        PLAYER(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        PLAYER(SPECIES_WOBBUFFET) { HP(1); }
        OPPONENT(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        OPPONENT(SPECIES_WOBBUFFET) { HP(1); }
    } WHEN {
        TURN { MOVE(playerLeft, MOVE_SCRATCH, target: opponentRight); MOVE(opponentLeft, MOVE_SCRATCH, target: playerRight); }
        TURN { MOVE(playerLeft, MOVE_CHLOROBLAST, target: opponentLeft); }
    } THEN {
        EXPECT_EQ(gBattlerSpriteIds[B_POSITION_PLAYER_RIGHT], SPRITE_NONE);
        EXPECT_EQ(gBattlerSpriteIds[B_POSITION_OPPONENT_RIGHT], SPRITE_NONE);
        ExpectPlayerHealthboxIntact(BATTLE_COORDS_DOUBLES);
    }
}
