#include "global.h"
#include "test/battle.h"
#include "battle_ai_amaterasu.h"
#include "battle_ai_util.h"
#include "battle_ai_switch_items.h"
#include "battle_setup.h"
#include "data.h"

#define AMATERASU_AI (AI_FLAG_SMART_TRAINER | AI_FLAG_PREDICTION | AI_FLAG_TRY_TO_2HKO | AI_FLAG_PREFER_HIGHEST_DAMAGE_MOVE | AI_FLAG_OMNISCIENT)

static void SetAmaterasu(void)
{
    gBattleTestRunnerState->data.recordedBattle.opponentA = TRAINER_FLANNERY_1;
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_HARD;
}

AI_SINGLE_BATTLE_TEST("Amaterasu: real Hard lead retains Victory Dance and its Baton Pass moveset")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        const struct TrainerMon *party = GetTrainerPartyFromId(TRAINER_FLANNERY_1);
        EXPECT_EQ(party[0].species, SPECIES_SMEARGLE);
        EXPECT_EQ(party[0].ability, ABILITY_OWN_TEMPO);
        EXPECT_EQ(party[0].moves[0], MOVE_QUIVER_DANCE);
        EXPECT_EQ(party[0].moves[1], MOVE_VICTORY_DANCE);
        EXPECT_EQ(party[0].moves[2], MOVE_FIERY_DANCE);
        EXPECT_EQ(party[0].moves[3], MOVE_BATON_PASS);
        EXPECT_EQ(party[1].species, SPECIES_NINETALES);
        EXPECT_EQ(party[1].ability, ABILITY_DROUGHT);
        EXPECT_EQ(party[5].moves[3], MOVE_SLUDGE_BOMB);
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { Moves(MOVE_SPLASH); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_SPLASH); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: mixed attackers receive Quiver Dance or Victory Dance with equal probability")
{
    PARAMETRIZE { }
    PASSES_RANDOMLY(1, 2, RNG_AI_AMATERASU_SETUP);
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { Moves(MOVE_SCRATCH, MOVE_EMBER, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_MOODY); Item(ITEM_FOCUS_SASH); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: physical and special attackers force the appropriate defensive dance")
{
    u32 species, attack, dance;
    PARAMETRIZE { species = SPECIES_MACHAMP; attack = MOVE_CLOSE_COMBAT; dance = MOVE_VICTORY_DANCE; }
    PARAMETRIZE { species = SPECIES_JOLTEON; attack = MOVE_THUNDERBOLT; dance = MOVE_QUIVER_DANCE; }
    PARAMETRIZE { species = SPECIES_MACHAMP; attack = MOVE_BODY_PRESS; dance = MOVE_VICTORY_DANCE; }
    // Moveset overrides the species stereotype: a specially trained Machamp.
    PARAMETRIZE { species = SPECIES_MACHAMP; attack = MOVE_FLAMETHROWER; dance = MOVE_QUIVER_DANCE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(species) { MaxHP(500); HP(500); Moves(attack, MOVE_PROTECT, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, dance); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, dance, opponent);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: dynamic physical or special categories preserve the battle category flags")
{
    u32 atk, spAtk, dance;
    PARAMETRIZE { atk = 500; spAtk = 50; dance = MOVE_VICTORY_DANCE; }
    PARAMETRIZE { atk = 50; spAtk = 500; dance = MOVE_QUIVER_DANCE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { MaxHP(1000); HP(1000); Attack(atk); SpAttack(spAtk); Moves(MOVE_PHOTON_GEYSER, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, dance); }
    } THEN {
        BattleAI_ResetAmaterasuDance();
        gBattleStruct->swapDamageCategory = TRUE;
        gBattleStruct->categoryOverride = DAMAGE_CATEGORY_SPECIAL;
        EXPECT_EQ(BattleAI_GetAmaterasuMoveMask(B_POSITION_OPPONENT_LEFT), dance == MOVE_QUIVER_DANCE ? 1 : 2);
        EXPECT_EQ((bool32)gBattleStruct->swapDamageCategory, TRUE);
        EXPECT_EQ((u32)gBattleStruct->categoryOverride, DAMAGE_CATEGORY_SPECIAL);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: status-only opponents are classified by Attack and Special Attack")
{
    u32 species, dance;
    PARAMETRIZE { species = SPECIES_MACHAMP; dance = MOVE_VICTORY_DANCE; }
    PARAMETRIZE { species = SPECIES_JOLTEON; dance = MOVE_QUIVER_DANCE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(species) { MaxHP(500); HP(500); Moves(MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, dance); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Hard battle starts in ordinary sun and keeps it beyond five turns")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_OWN_TEMPO); Moves(MOVE_SPLASH); }
    } WHEN {
        for (u32 turn = 0; turn < 7; turn++)
            TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_SPLASH); }
    } SCENE {
        MESSAGE("The sunlight is harsh!");
        ANIMATION(ANIM_TYPE_MOVE, MOVE_SPLASH, player);
        NONE_OF {
            MESSAGE("The sunlight faded.");
        }
    } THEN {
        EXPECT_EQ(gBattleWeather, B_WEATHER_SUN_NORMAL);
        EXPECT_EQ(gWishFutureKnock.weatherDuration, 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: opening sun is not applied to Casual or other trainers")
{
    u32 trainer, mode;
    PARAMETRIZE { trainer = TRAINER_FLANNERY_1; mode = OPTIONS_NPCTEAMS_CASUAL; }
    PARAMETRIZE { trainer = TRAINER_FLANNERY_CASUAL; mode = OPTIONS_NPCTEAMS_HARD; }
    PARAMETRIZE { trainer = TRAINER_LEAF; mode = OPTIONS_NPCTEAMS_HARD; }
    GIVEN {
        gBattleTestRunnerState->data.recordedBattle.opponentA = trainer;
        gSaveBlock2Ptr->optionsNpcTeams = mode;
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { Moves(MOVE_SPLASH); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_SPLASH); }
    } SCENE {
        NOT MESSAGE("The sunlight is harsh!");
    } THEN {
        EXPECT_EQ(gBattleWeather & B_WEATHER_SUN, 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Ninetales restores sun after rain snow or sand replaces it and Smeargle faints")
{
    u32 weatherMove;
    PARAMETRIZE { weatherMove = MOVE_RAIN_DANCE; }
    PARAMETRIZE { weatherMove = MOVE_SNOWSCAPE; }
    PARAMETRIZE { weatherMove = MOVE_SANDSTORM; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_AMBIPOM) { Speed(300); Attack(500); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); HP(40); MaxHP(40); Defense(10); Ability(ABILITY_OWN_TEMPO); Item(ITEM_FOCUS_SASH); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); Ability(ABILITY_DROUGHT); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, weatherMove); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_DOUBLE_HIT, hit: TRUE); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
    } SCENE {
        MESSAGE("The sunlight is harsh!");
        ANIMATION(ANIM_TYPE_MOVE, weatherMove, player);
        MESSAGE("The opposing Smeargle fainted!");
        ABILITY_POPUP(opponent, ABILITY_DROUGHT);
    } THEN {
        EXPECT_EQ(gBattleWeather, B_WEATHER_SUN_NORMAL);
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].species, SPECIES_NINETALES);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: boosted Houndoom attacks with Smart AI coverage instead of Taunt")
{
    u32 species, ability, expectedMove;
    PARAMETRIZE { species = SPECIES_WOBBUFFET; ability = ABILITY_NONE; expectedMove = MOVE_DARK_PULSE; }
    PARAMETRIZE { species = SPECIES_GASTRODON; ability = ABILITY_STORM_DRAIN; expectedMove = MOVE_SOLAR_BEAM; }
    // HLW Ninetales is Fire/Fairy: Dark Pulse and Solar Beam tie for damage.
    PARAMETRIZE { species = SPECIES_NINETALES; ability = ABILITY_FLASH_FIRE; expectedMove = MOVE_NONE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI | AI_FLAG_POWERFUL_STATUS);
        PLAYER(species) { Speed(50); MaxHP(1000); HP(1000); SpDefense(200); Ability(ability); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); HP(0); }
        // Deliberately keep the old Taunt in this regression fixture.
        OPPONENT(SPECIES_HOUNDOOM) { Speed(100); SpAttack(100); Ability(ABILITY_SOLAR_POWER); Moves(MOVE_SOLAR_BEAM, MOVE_DARK_PULSE, MOVE_FIERY_DANCE, MOVE_TAUNT); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 2); }
        TURN {
            MOVE(player, MOVE_SPLASH);
            if (expectedMove == MOVE_NONE)
                EXPECT_MOVES(opponent, MOVE_DARK_PULSE, MOVE_SOLAR_BEAM);
            else
                EXPECT_MOVE(opponent, expectedMove);
        }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_BATON_PASS, opponent);
        if (expectedMove == MOVE_NONE) {
            ONE_OF {
                ANIMATION(ANIM_TYPE_MOVE, MOVE_DARK_PULSE, opponent);
                ANIMATION(ANIM_TYPE_MOVE, MOVE_SOLAR_BEAM, opponent);
            }
        } else {
            ANIMATION(ANIM_TYPE_MOVE, expectedMove, opponent);
        }
        NOT ANIMATION(ANIM_TYPE_MOVE, MOVE_TAUNT, opponent);
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].species, SPECIES_HOUNDOOM);
        EXPECT(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_SPATK] > DEFAULT_STAT_STAGE);
        EXPECT_EQ(gAiBattleData->finalScore[B_POSITION_OPPONENT_LEFT][B_POSITION_PLAYER_LEFT][3], 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: boosted sweeper excludes a zero PP attack without falling back to status")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI | AI_FLAG_POWERFUL_STATUS);
        PLAYER(SPECIES_WOBBUFFET) { Speed(50); MaxHP(1000); HP(1000); SpDefense(200); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); HP(0); }
        OPPONENT(SPECIES_HOUNDOOM) { Speed(100); SpAttack(100); MovesWithPP({MOVE_SOLAR_BEAM, 10}, {MOVE_DARK_PULSE, 0}, {MOVE_FIERY_DANCE, 10}, {MOVE_TAUNT, 10}); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 2); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_FIERY_DANCE); }
    } THEN {
        EXPECT_EQ(gAiBattleData->finalScore[B_POSITION_OPPONENT_LEFT][B_POSITION_PLAYER_LEFT][1], 0);
        EXPECT_EQ(gAiBattleData->finalScore[B_POSITION_OPPONENT_LEFT][B_POSITION_PLAYER_LEFT][3], 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Flareon does not count as a physical Baton Pass recipient")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI | AI_FLAG_POWERFUL_STATUS);
        PLAYER(SPECIES_NINETALES) { Speed(50); MaxHP(1000); HP(1000); Ability(ABILITY_FLASH_FIRE); Moves(MOVE_SCRATCH, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); HP(100); }
        OPPONENT(SPECIES_FLAREON) { Speed(100); Ability(ABILITY_GUTS); Item(ITEM_TOXIC_ORB); Moves(MOVE_FACADE, MOVE_FLARE_BLITZ, MOVE_WILL_O_WISP, MOVE_PROTECT); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].species, SPECIES_NINETALES);
        EXPECT_EQ(GetMonData(&gEnemyParty[2], MON_DATA_HELD_ITEM), ITEM_TOXIC_ORB);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: pass follows the successful dance without a Sash and never hard-switches")
{
    u32 dance, recipient;
    PARAMETRIZE { dance = MOVE_QUIVER_DANCE; recipient = 1; }
    PARAMETRIZE { dance = MOVE_VICTORY_DANCE; recipient = 2; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { Speed(50); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); Ability(ABILITY_OWN_TEMPO); Moves(dance, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); Ability(ABILITY_DROUGHT); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, dance); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, recipient); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, dance, opponent);
        ANIMATION(ANIM_TYPE_MOVE, MOVE_BATON_PASS, opponent);
    } THEN {
        EXPECT_EQ(gBattlerPartyIndexes[B_POSITION_OPPONENT_LEFT], recipient);
        // A new entry clears the plan: Smeargle must set up again if it returns.
        EXPECT_EQ((u32)gAiBattleData->amaterasuDance, 0);
        if (recipient == 1)
            EXPECT(gBattleWeather & B_WEATHER_SUN);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: each eligible physical or special pair receives Baton Pass with equal probability")
{
    u32 dance, recipient;
    PARAMETRIZE { dance = MOVE_QUIVER_DANCE; recipient = 1; }
    PARAMETRIZE { dance = MOVE_QUIVER_DANCE; recipient = 5; }
    PARAMETRIZE { dance = MOVE_VICTORY_DANCE; recipient = 2; }
    PARAMETRIZE { dance = MOVE_VICTORY_DANCE; recipient = 3; }
    PASSES_RANDOMLY(1, 2, RNG_AI_AMATERASU_PASS);
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { Moves(dance, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Ability(ABILITY_DROUGHT); }
        OPPONENT(SPECIES_GRANBULL);
        OPPONENT(SPECIES_ARCANINE);
        OPPONENT(SPECIES_FLAREON);
        OPPONENT(SPECIES_HOUNDOOM);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, dance); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, recipient); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: the surviving member of either pair receives the pass, never Flareon")
{
    u32 dance, recipient;
    PARAMETRIZE { dance = MOVE_QUIVER_DANCE; recipient = 1; }
    PARAMETRIZE { dance = MOVE_QUIVER_DANCE; recipient = 5; }
    PARAMETRIZE { dance = MOVE_VICTORY_DANCE; recipient = 2; }
    PARAMETRIZE { dance = MOVE_VICTORY_DANCE; recipient = 3; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { Moves(dance, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { HP(recipient == 1 ? 100 : 0); }
        OPPONENT(SPECIES_GRANBULL) { HP(recipient == 2 ? 100 : 0); }
        OPPONENT(SPECIES_ARCANINE) { HP(recipient == 3 ? 100 : 0); }
        OPPONENT(SPECIES_FLAREON) { Ability(ABILITY_GUTS); Item(ITEM_TOXIC_ORB); }
        OPPONENT(SPECIES_HOUNDOOM) { HP(recipient == 5 ? 100 : 0); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, dance); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, recipient); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: only Flareon remaining does not initiate a useless setup or pass")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); }
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_FLAREON) { Ability(ABILITY_GUTS); Item(ITEM_TOXIC_ORB); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_FIERY_DANCE); }
    } THEN {
        EXPECT_EQ(gBattlerPartyIndexes[B_POSITION_OPPONENT_LEFT], 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: immediate Fiery Dance KO overrides setup")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { HP(1); }
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_FIERY_DANCE); SEND_OUT(player, 1); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_FIERY_DANCE, opponent);
        MESSAGE("Wobbuffet fainted!");
    } THEN {
        EXPECT_EQ((u32)gAiBattleData->amaterasuDance, 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Taunt triggers Fiery Dance and a blocked dance is not recorded as successful")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { Speed(200); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); Moves(MOVE_QUIVER_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, MOVE_TAUNT); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_FIERY_DANCE); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_TAUNT, player);
        NOT ANIMATION(ANIM_TYPE_MOVE, MOVE_QUIVER_DANCE, opponent);
        ANIMATION(ANIM_TYPE_MOVE, MOVE_FIERY_DANCE, opponent);
    } THEN {
        EXPECT_EQ((u32)gAiBattleData->amaterasuDance, 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: emergency attack does not erase Victory Dance before the following pass")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { HP(120); MaxHP(120); SpDefense(100); Speed(200); }
        PLAYER(SPECIES_WOBBUFFET) { MaxHP(500); HP(500); SpDefense(500); Speed(200); }
        OPPONENT(SPECIES_SMEARGLE) { Level(50); SpAttack(200); Speed(100); Moves(MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, MOVE_BELLY_DRUM); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_FIERY_DANCE); SEND_OUT(player, 1); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 2); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_VICTORY_DANCE, opponent);
        ANIMATION(ANIM_TYPE_MOVE, MOVE_FIERY_DANCE, opponent);
        ANIMATION(ANIM_TYPE_MOVE, MOVE_BATON_PASS, opponent);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: flinched or snatched setup is retried rather than passed")
{
    u32 disruption;
    PARAMETRIZE { disruption = MOVE_FAKE_OUT; }
    PARAMETRIZE { disruption = MOVE_SNATCH; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { Speed(200); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); MaxHP(300); HP(300); Moves(MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, disruption); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 2); }
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].species, SPECIES_ARCANINE);
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_ATK], DEFAULT_STAT_STAGE + 1);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Haze or Clear Smog removes the setup plan without confusing it with Moody")
{
    u32 disruption;
    PARAMETRIZE { disruption = MOVE_HAZE; }
    PARAMETRIZE { disruption = MOVE_CLEAR_SMOG; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { Speed(50); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); MaxHP(300); HP(300); Moves(MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); MOVE(player, disruption); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 2); }
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].species, SPECIES_ARCANINE);
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_ATK], DEFAULT_STAT_STAGE + 1);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: with sun active Smart AI can send either Ninetales or a better sweeper after Smeargle faints")
{
    bool32 afterSetup;
    u32 bestRecipient;
    PARAMETRIZE { afterSetup = FALSE; bestRecipient = 2; }
    PARAMETRIZE { afterSetup = TRUE; bestRecipient = 2; }
    PARAMETRIZE { afterSetup = FALSE; bestRecipient = 1; }
    PARAMETRIZE { afterSetup = TRUE; bestRecipient = 1; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_AMBIPOM) { Speed(300); Attack(500); Defense(100); SpDefense(200); MaxHP(300); HP(300); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); HP(40); MaxHP(40); Defense(10); Item(ITEM_FOCUS_SASH); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Level(bestRecipient == 1 ? 100 : 1); Speed(400); SpAttack(500); Defense(500); MaxHP(1000); HP(1000); Ability(ABILITY_DROUGHT); Moves(bestRecipient == 1 ? MOVE_TORCH_SONG : MOVE_SPLASH); }
        OPPONENT(SPECIES_ARCANINE) { Level(bestRecipient == 2 ? 100 : 1); Speed(400); Attack(500); Defense(500); MaxHP(1000); HP(1000); Moves(bestRecipient == 2 ? MOVE_CLOSE_COMBAT : MOVE_SPLASH); }
    } WHEN {
        if (afterSetup)
            TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVES(opponent, MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE); }
        TURN {
            MOVE(player, MOVE_DOUBLE_HIT, hit: TRUE);
            if (afterSetup)
                EXPECT_MOVE(opponent, MOVE_BATON_PASS);
            else
                EXPECT_MOVES(opponent, MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE);
            EXPECT_SEND_OUT(opponent, bestRecipient);
        }
    } SCENE {
        MESSAGE("The opposing Smeargle fainted!");
        // Sun is already active from the opening; redundant Drought need not pop up.
    } THEN {
        EXPECT(gBattleWeather & B_WEATHER_SUN);
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].species, bestRecipient == 1 ? SPECIES_NINETALES : SPECIES_ARCANINE);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: missing or fainted Ninetales falls back to a living teammate after Smeargle faints")
{
    u32 species;
    bool32 rain;
    PARAMETRIZE { species = SPECIES_NINETALES; rain = FALSE; }
    PARAMETRIZE { species = SPECIES_HOUNDOOM; rain = FALSE; }
    PARAMETRIZE { species = SPECIES_NINETALES; rain = TRUE; }
    PARAMETRIZE { species = SPECIES_HOUNDOOM; rain = TRUE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { Speed(300); Attack(500); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(100); HP(1); Defense(10); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(species) { Speed(100); HP(0); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); HP(100); }
    } WHEN {
        if (rain)
            TURN { MOVE(player, MOVE_RAIN_DANCE); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SCRATCH); EXPECT_SEND_OUT(opponent, 2); }
    } THEN {
        EXPECT(gBattleMons[B_POSITION_OPPONENT_LEFT].hp > 0);
        EXPECT_NE(gBattleMons[B_POSITION_OPPONENT_LEFT].species, SPECIES_NINETALES);
        EXPECT_EQ((gBattleWeather & B_WEATHER_SUN) != 0, !rain);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: setup excludes dances without PP or a living recipient")
{
    bool32 noPP;
    PARAMETRIZE { noPP = TRUE; }
    PARAMETRIZE { noPP = FALSE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(SPECIES_SMEARGLE) { MovesWithPP({MOVE_QUIVER_DANCE, noPP ? 0 : 10}, {MOVE_VICTORY_DANCE, 10}, {MOVE_FIERY_DANCE, 10}, {MOVE_BATON_PASS, 10}); }
        OPPONENT(SPECIES_NINETALES) { HP(noPP ? 100 : 0); }
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 2); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Focus Sash Sturdy and Flash Fire are not mistaken for a Fiery Dance KO")
{
    u32 species, ability, item;
    PARAMETRIZE { species = SPECIES_WOBBUFFET; ability = ABILITY_NONE; item = ITEM_FOCUS_SASH; }
    PARAMETRIZE { species = SPECIES_GOLEM; ability = ABILITY_STURDY; item = ITEM_NONE; }
    PARAMETRIZE { species = SPECIES_NINETALES; ability = ABILITY_FLASH_FIRE; item = ITEM_NONE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(species) { Ability(ability); Item(item); HP(1); MaxHP(1); }
        OPPONENT(SPECIES_SMEARGLE) { Moves(MOVE_QUIVER_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: overrides exclude Casual other trainers and non-Smeargle leads")
{
    u32 trainer, mode, species;
    PARAMETRIZE { trainer = TRAINER_FLANNERY_1; mode = OPTIONS_NPCTEAMS_CASUAL; species = SPECIES_SMEARGLE; }
    PARAMETRIZE { trainer = TRAINER_FLANNERY_CASUAL; mode = OPTIONS_NPCTEAMS_HARD; species = SPECIES_SMEARGLE; }
    PARAMETRIZE { trainer = TRAINER_LEAF; mode = OPTIONS_NPCTEAMS_HARD; species = SPECIES_SMEARGLE; }
    PARAMETRIZE { trainer = TRAINER_FLANNERY_1; mode = OPTIONS_NPCTEAMS_HARD; species = SPECIES_NINETALES; }
    GIVEN {
        gBattleTestRunnerState->data.recordedBattle.opponentA = trainer;
        gSaveBlock2Ptr->optionsNpcTeams = mode;
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET);
        OPPONENT(species) { Moves(MOVE_FIERY_DANCE); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_FIERY_DANCE); }
    } THEN {
        EXPECT_EQ(BattleAI_GetAmaterasuMoveMask(B_POSITION_OPPONENT_LEFT), 0);
        EXPECT_EQ(BattleAI_GetAmaterasuMoveMask(B_POSITION_PLAYER_LEFT), 0);
        EXPECT_EQ(BattleAI_GetAmaterasuSwitchIn(B_POSITION_OPPONENT_LEFT), PARTY_SIZE);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Intimidate takes priority over a physical opponent")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_LANDORUS_THERIAN) { Ability(ABILITY_INTIMIDATE); HP(1000); MaxHP(1000); Moves(MOVE_EARTHQUAKE, MOVE_SPLASH); }
        // Own Tempo can block Intimidate; force a susceptible lead to test the drop.
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_TECHNICIAN); Item(ITEM_FOCUS_SASH); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
        OPPONENT(SPECIES_ARCANINE);
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_ATK], DEFAULT_STAT_STAGE - 1);
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_SPATK], DEFAULT_STAT_STAGE + 1);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: an offensive drop cancelling setup changes dance instead of passing neutral offense")
{
    u32 species, drop, firstDance, nextDance, recipient;
    PARAMETRIZE { species = SPECIES_MACHAMP; drop = MOVE_GROWL; firstDance = MOVE_VICTORY_DANCE; nextDance = MOVE_QUIVER_DANCE; recipient = 1; }
    PARAMETRIZE { species = SPECIES_JOLTEON; drop = MOVE_EERIE_IMPULSE; firstDance = MOVE_QUIVER_DANCE; nextDance = MOVE_VICTORY_DANCE; recipient = 2; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(species) { Speed(400); HP(1000); MaxHP(1000); Moves(drop, species == SPECIES_MACHAMP ? MOVE_SCRATCH : MOVE_THUNDERBOLT, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(50); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_QUIVER_DANCE, MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, drop); EXPECT_MOVE(opponent, firstDance); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, nextDance); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, recipient); }
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: full HP intact Sash permits repeated useful setup but chip triggers Baton Pass")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_JOLTEON) { Speed(10); SpAttack(1); HP(1000); MaxHP(1000); Moves(MOVE_CALM_MIND, MOVE_THUNDER_SHOCK); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(200); Ability(ABILITY_OWN_TEMPO); Item(ITEM_FOCUS_SASH); Moves(MOVE_QUIVER_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES) { Speed(100); }
    } WHEN {
        TURN { MOVE(player, MOVE_CALM_MIND); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_CALM_MIND); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_THUNDER_SHOCK, secondaryEffect: FALSE); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_CALM_MIND); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_SPATK], DEFAULT_STAT_STAGE + 3);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: intact Sash does not cause infinite setup at the offensive cap")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_WOBBUFFET) { HP(1000); MaxHP(1000); Moves(MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Ability(ABILITY_OWN_TEMPO); Item(ITEM_FOCUS_SASH); Moves(MOVE_QUIVER_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_NINETALES);
    } WHEN {
        for (u32 i = 0; i < 6; i++)
            TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_QUIVER_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
    } THEN {
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].statStages[STAT_SPATK], MAX_STAT_STAGE);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Sash survivor stays reserved after a recipient faints and is allowed only as the last survivor")
{
    bool32 lastSurvivor;
    PARAMETRIZE { lastSurvivor = FALSE; }
    PARAMETRIZE { lastSurvivor = TRUE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_MACHAMP) { Level(100); Speed(100); Attack(500); HP(1000); MaxHP(1000); Moves(MOVE_EARTHQUAKE, MOVE_FISSURE, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(500); Defense(10); HP(40); MaxHP(40); Ability(ABILITY_OWN_TEMPO); Item(ITEM_FOCUS_SASH); Moves(MOVE_VICTORY_DANCE, MOVE_FIERY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); Defense(10); HP(40); MaxHP(40); }
        OPPONENT(SPECIES_NINETALES) { Speed(50); Defense(500); HP(1000); MaxHP(1000); Moves(MOVE_SPLASH); }
    } WHEN {
        TURN { MOVE(player, MOVE_EARTHQUAKE); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_EARTHQUAKE); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); EXPECT_SEND_OUT(opponent, 2); }
        if (lastSurvivor)
            TURN { MOVE(player, MOVE_FISSURE, hit: TRUE); EXPECT_MOVE(opponent, MOVE_SPLASH); EXPECT_SEND_OUT(opponent, 0); }
    } THEN {
        EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HP), 1);
        EXPECT_EQ(gBattlerPartyIndexes[B_POSITION_OPPONENT_LEFT], lastSurvivor ? 0 : 2);
        EXPECT_EQ(BattleAI_AmaterasuReserveSmeargle(B_POSITION_OPPONENT_LEFT, 0), !lastSurvivor);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: Smeargle absorbs a lethal attack to save a boosted sweeper and give a free entry")
{
    PARAMETRIZE { }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_MACHAMP) { Speed(100); Attack(500); Defense(1000); SpDefense(1); HP(100); MaxHP(100); Moves(MOVE_EARTHQUAKE, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(1000); HP(1); MaxHP(40); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_VICTORY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); Attack(1); Defense(10); HP(200); MaxHP(200); Ability(ABILITY_FLASH_FIRE); Moves(MOVE_SCRATCH); }
        OPPONENT(SPECIES_NINETALES) { Level(100); Speed(500); SpAttack(500); Defense(10); HP(40); MaxHP(40); Ability(ABILITY_DROUGHT); Moves(MOVE_FLAMETHROWER); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
        TURN { MOVE(player, MOVE_EARTHQUAKE); EXPECT_SWITCH(opponent, 0); EXPECT_SEND_OUT(opponent, 2); }
    } THEN {
        EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HP), 0);
        EXPECT_EQ(GetMonData(&gEnemyParty[1], MON_DATA_HP), 200);
        EXPECT_EQ(gBattleMons[B_POSITION_OPPONENT_LEFT].hp, 40);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: preserves the sacrifice when a direct switch or faster KO is safe")
{
    bool32 directSwitch;
    PARAMETRIZE { directSwitch = TRUE; }
    PARAMETRIZE { directSwitch = FALSE; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_MACHAMP) { Speed(100); Attack(500); Defense(directSwitch ? 1000 : 1); SpDefense(1); HP(100); MaxHP(100); Moves(MOVE_EARTHQUAKE, MOVE_SPLASH); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(1000); HP(1); MaxHP(40); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_VICTORY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_ARCANINE) { Speed(500); Attack(directSwitch ? 1 : 500); Defense(10); HP(200); MaxHP(200); Ability(ABILITY_FLASH_FIRE); Moves(MOVE_SCRATCH); }
        OPPONENT(SPECIES_NINETALES) { Level(100); Speed(500); SpAttack(500); Defense(1000); HP(1000); MaxHP(1000); Ability(ABILITY_DROUGHT); Moves(MOVE_FLAMETHROWER); }
    } WHEN {
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
        if (directSwitch)
            TURN { MOVE(player, MOVE_EARTHQUAKE); EXPECT_SWITCH(opponent, 2); }
        else
            TURN { MOVE(player, MOVE_EARTHQUAKE); EXPECT_MOVE(opponent, MOVE_SCRATCH); }
    } THEN {
        EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HP), 1);
        EXPECT_EQ(GetMonData(&gEnemyParty[1], MON_DATA_HP), 200);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}

AI_SINGLE_BATTLE_TEST("Amaterasu: entry hazards do not waste the sacrifice without absorbing an attack")
{
    u32 hazard;
    PARAMETRIZE { hazard = MOVE_STEALTH_ROCK; }
    PARAMETRIZE { hazard = MOVE_SPIKES; }
    GIVEN {
        SetAmaterasu();
        AI_FLAGS(AMATERASU_AI);
        PLAYER(SPECIES_MACHAMP) { Speed(100); Attack(500); Defense(1000); SpDefense(1); HP(100); MaxHP(100); Moves(MOVE_EARTHQUAKE, MOVE_SPLASH, hazard); }
        OPPONENT(SPECIES_SMEARGLE) { Speed(1000); HP(1); MaxHP(40); Ability(ABILITY_OWN_TEMPO); Moves(MOVE_VICTORY_DANCE, MOVE_BATON_PASS); }
        OPPONENT(SPECIES_ARCANINE) { Speed(100); Attack(1); Defense(10); HP(200); MaxHP(200); Ability(ABILITY_FLASH_FIRE); Moves(MOVE_SCRATCH); }
        OPPONENT(SPECIES_NINETALES) { Level(100); Speed(500); SpAttack(500); Defense(10); HP(40); MaxHP(40); Ability(ABILITY_DROUGHT); Moves(MOVE_FLAMETHROWER); }
    } WHEN {
        TURN { MOVE(player, hazard); EXPECT_MOVE(opponent, MOVE_VICTORY_DANCE); }
        TURN { MOVE(player, MOVE_SPLASH); EXPECT_MOVE(opponent, MOVE_BATON_PASS); EXPECT_SEND_OUT(opponent, 1); }
        TURN { MOVE(player, MOVE_EARTHQUAKE); EXPECT_MOVE(opponent, MOVE_SCRATCH); EXPECT_SEND_OUT(opponent, 2); }
    } THEN {
        EXPECT_EQ(GetMonData(&gEnemyParty[0], MON_DATA_HP), 1);
        EXPECT_EQ(GetMonData(&gEnemyParty[1], MON_DATA_HP), 0);
    } FINALLY {
        gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    }
}
