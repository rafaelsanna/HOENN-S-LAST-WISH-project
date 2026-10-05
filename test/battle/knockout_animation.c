#include "global.h"
#include "battle.h"
#include "test/battle.h"
#include "constants/difficulty.h"

DOUBLE_BATTLE_TEST("Knockout animation: last survivor wins with Lava Plume after five teammates faint")
{
    u32 survivor, nature;
    PARAMETRIZE { survivor = B_POSITION_PLAYER_LEFT; nature = NATURE_HARDY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_LEFT; nature = NATURE_BOLD; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_LEFT; nature = NATURE_LONELY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; nature = NATURE_HARDY; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; nature = NATURE_BOLD; }
    PARAMETRIZE { survivor = B_POSITION_PLAYER_RIGHT; nature = NATURE_LONELY; }
    struct BattlePokemon *survivingPlayer = survivor == B_POSITION_PLAYER_LEFT ? playerLeft : playerRight;
    struct BattlePokemon *faintingPlayer = survivor == B_POSITION_PLAYER_LEFT ? playerRight : playerLeft;

    GIVEN {
        gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
        gSaveBlock2Ptr->optionsNuzlocke = OPTIONS_NUZLOCKE_OFF;
        PLAYER(survivor == B_POSITION_PLAYER_LEFT ? SPECIES_FERALIGATR : SPECIES_WOBBUFFET) {
            HP(survivor == B_POSITION_PLAYER_LEFT ? 100 : 1);
            Nature(nature);
        }
        PLAYER(survivor == B_POSITION_PLAYER_RIGHT ? SPECIES_FERALIGATR : SPECIES_WOBBUFFET) {
            HP(survivor == B_POSITION_PLAYER_RIGHT ? 100 : 1);
            Nature(nature);
        }
        for (u32 teammate = 0; teammate < 4; teammate++)
            PLAYER(SPECIES_WOBBUFFET) { HP(1); }
        OPPONENT(SPECIES_WOBBUFFET) { HP(1); }
        OPPONENT(SPECIES_WYNAUT) { HP(1); }
    } WHEN {
        for (u32 teammate = 0; teammate < 5; teammate++)
        {
            TURN {
                MOVE(opponentLeft, MOVE_SCRATCH, target: faintingPlayer);
                MOVE(survivingPlayer, MOVE_SPLASH);
                if (teammate < 4)
                    SEND_OUT(faintingPlayer, teammate + 2);
            }
        }
        TURN { MOVE(survivingPlayer, MOVE_LAVA_PLUME); }
    } SCENE {
        for (u32 teammate = 0; teammate < 5; teammate++)
            MESSAGE("Wobbuffet fainted!");
        ANIMATION(ANIM_TYPE_MOVE, MOVE_LAVA_PLUME, survivingPlayer);
        MESSAGE("The opposing Wobbuffet fainted!");
        MESSAGE("The opposing Wynaut fainted!");
    } THEN {
        EXPECT_EQ(gBattleOutcome, B_OUTCOME_WON);
        EXPECT_EQ(GetMonData(&gPlayerParty[survivor / 2], MON_DATA_HP), 100);
        for (u32 teammate = 0; teammate < PARTY_SIZE; teammate++)
            if (teammate != survivor / 2)
                EXPECT_EQ(GetMonData(&gPlayerParty[teammate], MON_DATA_HP), 0);
    }
}

WILD_BATTLE_TEST("Knockout animation: Lava Plume knockout finishes before experience is awarded")
{
    GIVEN {
        PLAYER(SPECIES_FERALIGATR) { Level(5); Nature(NATURE_LONELY); }
        OPPONENT(SPECIES_CATERPIE) { HP(1); }
    } WHEN {
        TURN { MOVE(player, MOVE_LAVA_PLUME); }
    } SCENE {
        ANIMATION(ANIM_TYPE_MOVE, MOVE_LAVA_PLUME, player);
        MESSAGE("The wild Caterpie fainted!");
        EXPERIENCE_BAR(player);
    } THEN {
        EXPECT_EQ(gBattleOutcome, B_OUTCOME_WON);
        EXPECT_GT(GetMonData(&gPlayerParty[0], MON_DATA_EXP), gExperienceTables[gSpeciesInfo[SPECIES_FERALIGATR].growthRate][5]);
    }
}
