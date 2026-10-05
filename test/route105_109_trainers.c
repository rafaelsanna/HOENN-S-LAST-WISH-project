#include "global.h"
#include "data.h"
#include "difficulty.h"
#include "test/test.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/trainers.h"

struct ExpectedRouteMon
{
    u16 species;
    u16 heldItem;
    u8 level;
    u8 uniformIv;
};

struct ExpectedRouteTrainer
{
    u16 trainerId;
    u8 partySize;
    u8 battleType;
    struct ExpectedRouteMon party[3];
};

#define MON(species, level, iv) {SPECIES_##species, ITEM_NONE, level, iv}
#define HELD_MON(species, level, iv, item) {SPECIES_##species, ITEM_##item, level, iv}
#define TEAM(trainer, size, battle, ...) \
    {TRAINER_##trainer, size, TRAINER_BATTLE_TYPE_##battle, {__VA_ARGS__}}

// Independent expectations for all 37 placed initial-battle teams. The nine
// explicitly excluded trainers retain their original species and levels.
// This is const ROM data, not another large allocation in the test's IWRAM.
static const struct ExpectedRouteTrainer sExpectedTrainers[] =
{
    // Route 105.
    TEAM(FOSTER, 2, SINGLES, MON(SANDSLASH, 40, 12), MON(SANDSLASH, 40, 12)),
    TEAM(LUIS, 1, SINGLES, MON(TENTACRUEL, 41, 0)),
    TEAM(DOMINIK, 1, SINGLES, MON(TENTACRUEL, 41, 0)),
    TEAM(BEVERLY, 2, SINGLES, MON(PELIPPER, 40, 0), MON(WAILORD, 40, 0)),
    TEAM(IMANI, 1, SINGLES, MON(AZUMARILL, 41, 0)),
    TEAM(JOSUE, 2, SINGLES, MON(SWELLOW, 40, 6), MON(PELIPPER, 40, 6)),
    TEAM(ANDRES_1, 2, SINGLES, MON(SANDSLASH, 40, 6), MON(SANDSLASH, 40, 6)),

    // Route 106: Elliot and Ned are deliberately unchanged.
    TEAM(DOUGLAS, 2, SINGLES, MON(TENTACRUEL, 39, 1), MON(TENTACRUEL, 39, 1)),
    TEAM(KYLA, 1, SINGLES, HELD_MON(WAILORD, 41, 0, SITRUS_BERRY)),
    TEAM(ELLIOT_1, 3, SINGLES, MON(MAGIKARP, 15, 10), MON(TENTACOOL, 15, 10), MON(LOTAD, 15, 10)),
    TEAM(NED, 2, SINGLES, MON(KRABBY, 16, 1), MON(WINGULL, 16, 1)),

    // Route 107: Lisa and Ray are one shared double-battle team.
    TEAM(DARRIN, 3, SINGLES, MON(TENTACRUEL, 39, 1), MON(PELIPPER, 39, 1), MON(TENTACRUEL, 39, 1)),
    TEAM(TONY_1, 1, SINGLES, HELD_MON(TENTACRUEL, 41, 0, BLACK_SLUDGE)),
    TEAM(DENISE, 2, SINGLES, MON(PELIPPER, 40, 0), MON(SEAKING, 40, 0)),
    TEAM(BETH, 1, SINGLES, MON(SEAKING, 41, 0)),
    TEAM(LISA_AND_RAY, 2, DOUBLES, MON(SEAKING, 42, 0), MON(TENTACRUEL, 40, 0)),
    TEAM(CAMRON, 1, SINGLES, MON(STARMIE, 41, 0)),

    // Route 108.
    TEAM(JEROME, 1, SINGLES, MON(TENTACRUEL, 41, 0)),
    TEAM(MATTHEW, 1, SINGLES, MON(TENTACRUEL, 41, 0)),
    TEAM(TARA, 2, SINGLES, MON(KINGDRA, 40, 0), MON(AZUMARILL, 40, 0)),
    TEAM(MISSY, 1, SINGLES, MON(SEAKING, 41, 0)),
    TEAM(CAROLINA, 3, SINGLES, HELD_MON(MANECTRIC, 39, 6, AIR_BALLOON), HELD_MON(SWELLOW, 39, 6, CHARTI_BERRY), HELD_MON(MANECTRIC, 39, 6, SHUCA_BERRY)),
    TEAM(CORY_1, 3, SINGLES, HELD_MON(PELIPPER, 39, 0, WACAN_BERRY), HELD_MON(MACHAMP, 39, 0, BLACK_BELT), HELD_MON(TENTACRUEL, 39, 0, SITRUS_BERRY)),

    // Route 109: seven trainers keep their original pre-Surf teams.
    TEAM(DAVID, 2, SINGLES, MON(TENTACRUEL, 40, 0), MON(TENTACRUEL, 40, 0)),
    TEAM(ALICE, 3, SINGLES, MON(SEAKING, 39, 0), MON(PELIPPER, 39, 0), MON(SEAKING, 39, 0)),
    TEAM(HUEY, 2, SINGLES, MON(MANKEY, 20, 10), MON(MACHOP, 20, 10)),
    TEAM(GONG, 2, DOUBLES, MON(KRABBY, 20, 10), MON(SLOWPOKE, 20, 10)),
    TEAM(EDMOND, 2, SINGLES, MON(WINGULL, 20, 10), MON(KRABBY, 20, 10)),
    TEAM(RICKY_1, 1, SINGLES, MON(ZIGZAGOON, 23, 15)),
    TEAM(LOLA_1, 2, SINGLES, MON(BEAUTIFLY, 20, 30), MON(POLIWAG, 20, 30)),
    TEAM(AUSTINA, 1, SINGLES, MON(AZUMARILL, 41, 0)),
    TEAM(GWEN, 1, SINGLES, MON(AZUMARILL, 41, 0)),
    TEAM(CARTER, 2, SINGLES, MON(WAILORD, 40, 1), MON(TENTACRUEL, 40, 1)),
    TEAM(MEL_AND_PAUL, 2, DOUBLES, MON(DUSTOX, 42, 0), MON(BEAUTIFLY, 42, 0)),
    TEAM(CHANDLER, 2, SINGLES, MON(DUSTOX, 20, 30), MON(TENTACOOL, 20, 30)),
    TEAM(HAILEY, 2, SINGLES, MON(MARILL, 20, 10), MON(CORPHISH, 20, 10)),
    TEAM(ELIJAH, 2, SINGLES, MON(SKARMORY, 40, 0), MON(SKARMORY, 40, 0)),
};

#undef MON
#undef HELD_MON
#undef TEAM

TEST("Route105-109 trainers: initial parties have the requested species, levels, items and preserved IVs")
{
    u32 trainerIndex = 0;
    const struct ExpectedRouteTrainer *expected;
    const struct Trainer *trainer;

    for (u32 i = 0; i < ARRAY_COUNT(sExpectedTrainers); i++)
        PARAMETRIZE { trainerIndex = i; }

    EXPECT_EQ(ARRAY_COUNT(sExpectedTrainers), 37);
    expected = &sExpectedTrainers[trainerIndex];
    trainer = &gTrainers[DIFFICULTY_NORMAL][expected->trainerId];
    EXPECT_NE(trainer->party, NULL);
    EXPECT_EQ(trainer->partySize, expected->partySize);
    EXPECT_EQ((u32)trainer->battleType, expected->battleType);

    for (u32 slot = 0; slot < expected->partySize; slot++)
    {
        const struct ExpectedRouteMon *expectedMon = &expected->party[slot];
        const struct TrainerMon *mon = &trainer->party[slot];
        u32 iv = expectedMon->uniformIv;

        EXPECT_EQ(mon->species, expectedMon->species);
        EXPECT_EQ(mon->lvl, expectedMon->level);
        EXPECT_EQ(mon->heldItem, expectedMon->heldItem);
        EXPECT_EQ(mon->iv, TRAINER_PARTY_IVS(iv, iv, iv, iv, iv, iv));
    }
}

TEST("Route105-109 trainers: Hard still falls back to each trainer's Normal party")
{
    u32 trainerIndex = 0;
    u8 savedDifficulty = gSaveBlock2Ptr->optionsNpcTeams;
    u16 trainerId;

    for (u32 i = 0; i < ARRAY_COUNT(sExpectedTrainers); i++)
        PARAMETRIZE { trainerIndex = i; }

    trainerId = sExpectedTrainers[trainerIndex].trainerId;
    EXPECT_EQ(gTrainers[DIFFICULTY_HARD][trainerId].party, NULL);
    gSaveBlock2Ptr->optionsNpcTeams = DIFFICULTY_HARD;
    EXPECT_EQ(GetTrainerDifficultyLevel(trainerId), DIFFICULTY_NORMAL);
    gSaveBlock2Ptr->optionsNpcTeams = savedDifficulty;
}

TEST("Route105-109 trainers: existing explicit moves and Carolina's trainer-use potion are preserved")
{
    static const u16 fosterMoves[] = {MOVE_DIG, MOVE_SLASH, MOVE_SAND_ATTACK, MOVE_POISON_STING};
    static const u16 dustoxMoves[] = {MOVE_GUST, MOVE_PSYBEAM, MOVE_TOXIC, MOVE_PROTECT};
    static const u16 beautiflyMoves[] = {MOVE_GUST, MOVE_MEGA_DRAIN, MOVE_ATTRACT, MOVE_STUN_SPORE};
    static const u16 rickyMoves[] = {MOVE_SAND_ATTACK, MOVE_HEADBUTT, MOVE_TAIL_WHIP, MOVE_SURF};

    for (u32 move = 0; move < MAX_MON_MOVES; move++)
    {
        EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_FOSTER].party[0].moves[move], fosterMoves[move]);
        EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_FOSTER].party[1].moves[move], fosterMoves[move]);
        EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_MEL_AND_PAUL].party[0].moves[move], dustoxMoves[move]);
        EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_MEL_AND_PAUL].party[1].moves[move], beautiflyMoves[move]);
        EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_RICKY_1].party[0].moves[move], rickyMoves[move]);
    }
    EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_CAROLINA].items[0], ITEM_HYPER_POTION);
    for (u32 item = 1; item < MAX_TRAINER_ITEMS; item++)
        EXPECT_EQ(gTrainers[DIFFICULTY_NORMAL][TRAINER_CAROLINA].items[item], ITEM_NONE);
}
