#include "global.h"
#include "battle.h"
#include "battle_setup.h"
#include "data.h"
#include "difficulty.h"
#include "event_data.h"
#include "nuzlocke.h"
#include "script.h"
#include "constants/battle.h"
#include "constants/flags.h"
#include "constants/trainers.h"

enum DifficultyVictory
{
    VICTORY_GYM_1,
    VICTORY_GYM_2,
    VICTORY_GYM_3,
    VICTORY_GYM_4,
    VICTORY_GYM_5,
    VICTORY_GYM_6,
    VICTORY_GYM_7,
    VICTORY_GYM_8,
    VICTORY_ELITE_FOUR_1,
    VICTORY_ELITE_FOUR_2,
    VICTORY_ELITE_FOUR_3,
    VICTORY_ELITE_FOUR_4,
    VICTORY_CHAMPION,
    VICTORY_COUNT,
};

static const u16 sDifficultyVictoryFlags[VICTORY_COUNT][DIFFICULTY_COUNT] =
{
    [VICTORY_GYM_1] = {FLAG_DEFEATED_GYM_1_NORMAL, FLAG_DEFEATED_GYM_1_HARD},
    [VICTORY_GYM_2] = {FLAG_DEFEATED_GYM_2_NORMAL, FLAG_DEFEATED_GYM_2_HARD},
    [VICTORY_GYM_3] = {FLAG_DEFEATED_GYM_3_NORMAL, FLAG_DEFEATED_GYM_3_HARD},
    [VICTORY_GYM_4] = {FLAG_DEFEATED_GYM_4_NORMAL, FLAG_DEFEATED_GYM_4_HARD},
    [VICTORY_GYM_5] = {FLAG_DEFEATED_GYM_5_NORMAL, FLAG_DEFEATED_GYM_5_HARD},
    [VICTORY_GYM_6] = {FLAG_DEFEATED_GYM_6_NORMAL, FLAG_DEFEATED_GYM_6_HARD},
    [VICTORY_GYM_7] = {FLAG_DEFEATED_GYM_7_NORMAL, FLAG_DEFEATED_GYM_7_HARD},
    [VICTORY_GYM_8] = {FLAG_DEFEATED_GYM_8_NORMAL, FLAG_DEFEATED_GYM_8_HARD},
    [VICTORY_ELITE_FOUR_1] = {FLAG_DEFEATED_ELITE_FOUR_1_NORMAL, FLAG_DEFEATED_ELITE_FOUR_1_HARD},
    [VICTORY_ELITE_FOUR_2] = {FLAG_DEFEATED_ELITE_FOUR_2_NORMAL, FLAG_DEFEATED_ELITE_FOUR_2_HARD},
    [VICTORY_ELITE_FOUR_3] = {FLAG_DEFEATED_ELITE_FOUR_3_NORMAL, FLAG_DEFEATED_ELITE_FOUR_3_HARD},
    [VICTORY_ELITE_FOUR_4] = {FLAG_DEFEATED_ELITE_FOUR_4_NORMAL, FLAG_DEFEATED_ELITE_FOUR_4_HARD},
    [VICTORY_CHAMPION] = {FLAG_DEFEATED_CHAMPION_NORMAL, FLAG_DEFEATED_CHAMPION_HARD},
};

static const u16 sGymBadgeFlags[] =
{
    FLAG_BADGE01_GET, FLAG_BADGE02_GET, FLAG_BADGE03_GET, FLAG_BADGE04_GET,
    FLAG_BADGE05_GET, FLAG_BADGE06_GET, FLAG_BADGE07_GET, FLAG_BADGE08_GET,
};

static const u16 sEliteFourVictoryFlags[DIFFICULTY_COUNT] =
{
    [DIFFICULTY_NORMAL] = FLAG_DEFEATED_ELITE_FOUR_NORMAL,
    [DIFFICULTY_HARD] = FLAG_DEFEATED_ELITE_FOUR_HARD,
};

static enum DifficultyVictory GetTrainerDifficultyVictory(u16 trainerId)
{
    switch (trainerId)
    {
    case TRAINER_TERRA_CASUAL:
    case TRAINER_TERRA_HARD:
        return VICTORY_GYM_1;
    case TRAINER_BRAWLY_1:
    case TRAINER_BRAWLY:
        return VICTORY_GYM_2;
    case TRAINER_DEN_CASUAL:
    case TRAINER_WATTSON_1:
        return VICTORY_GYM_3;
    case TRAINER_FLANNERY_CASUAL:
    case TRAINER_FLANNERY_1:
        return VICTORY_GYM_4;
    case TRAINER_CALENDULA_CASUAL:
    case TRAINER_NORMAN_1:
        return VICTORY_GYM_5;
    case TRAINER_TAKA_CASUAL:
    case TRAINER_WINONA_1:
        return VICTORY_GYM_6;
    case TRAINER_SOULLUNA_CASUAL:
    case TRAINER_TATE_AND_LIZA_1:
        return VICTORY_GYM_7;
    case TRAINER_RIO_CASUAL:
    case TRAINER_JUAN_1:
        return VICTORY_GYM_8;
    case TRAINER_SIDNEY:
    case TRAINER_TSUBAKI_HARD_DOUBLES:
    case TRAINER_TSUBAKI_HARD_SINGLES:
        return VICTORY_ELITE_FOUR_1;
    case TRAINER_PHOEBE:
    case TRAINER_PHOEBE_HARD_DOUBLES:
    case TRAINER_PHOEBE_HARD_SINGLES:
        return VICTORY_ELITE_FOUR_2;
    case TRAINER_GLACIA:
    case TRAINER_SARK_HARD_DOUBLES:
    case TRAINER_SARK_HARD_SINGLES:
        return VICTORY_ELITE_FOUR_3;
    case TRAINER_DRAKE:
    case TRAINER_DAEMON_HARD_DOUBLES:
    case TRAINER_DAEMON_HARD_SINGLES:
        return VICTORY_ELITE_FOUR_4;
    case TRAINER_WALLACE:
    case TRAINER_STELLA_HARD_DOUBLES_TROOM:
    case TRAINER_STELLA_HARD_HO_TAILWIND:
    case TRAINER_STELLA_HARD_BALANCE_HAZZARDS:
        return VICTORY_CHAMPION;
    default:
        return VICTORY_COUNT;
    }
}

void RecordTrainerDifficultyVictory(u16 trainerId)
{
    enum DifficultyLevel difficulty = GetCurrentDifficultyLevel();
    enum DifficultyVictory victory = GetTrainerDifficultyVictory(trainerId);

    // Read the configured mode, not the trainer's fallback party difficulty.
    // Facility/recorded IDs belong to other tables and may alias story IDs.
    if (gBattleOutcome != B_OUTCOME_WON
     || !(gBattleTypeFlags & BATTLE_TYPE_TRAINER)
     || (gBattleTypeFlags & (BATTLE_TYPE_LINK | BATTLE_TYPE_LINK_IN_BATTLE
                          | BATTLE_TYPE_RECORDED | BATTLE_TYPE_RECORDED_LINK
                          | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_TRAINER_HILL
                          | BATTLE_TYPE_SECRET_BASE | BATTLE_TYPE_EREADER_TRAINER))
     || difficulty >= DIFFICULTY_COUNT
     || victory == VICTORY_COUNT)
        return;

    // This runs before the victory script awards the badge. Rematches must
    // never add another mode, even if they reuse the initial trainer ID.
    if (victory <= VICTORY_GYM_8
     && (TRAINER_BATTLE_PARAM.isRematch || FlagGet(sGymBadgeFlags[victory])
      || FlagGet(sDifficultyVictoryFlags[victory][DIFFICULTY_NORMAL])
      || FlagGet(sDifficultyVictoryFlags[victory][DIFFICULTY_HARD])))
        return;

    FlagSet(sDifficultyVictoryFlags[victory][difficulty]);

    // Freeze the certificate at the first champion win, before the victory
    // script marks the game clear. Postgame settings cannot revoke or earn it.
    if (victory == VICTORY_CHAMPION && !FlagGet(FLAG_SYS_GAME_CLEAR))
    {
        Nuzlocke_RecordChampionVictory();
        RecordDifficultyChoice(difficulty);
        if (FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE)
         && FlagGet(FLAG_STARTED_ON_HARD)
         && !FlagGet(FLAG_HARD_RUN_BROKEN)
         && difficulty == DIFFICULTY_HARD)
            FlagSet(FLAG_HARD_RUN_COMPLETED);
    }

    if (victory >= VICTORY_ELITE_FOUR_1 && victory <= VICTORY_ELITE_FOUR_4)
    {
        for (u32 member = VICTORY_ELITE_FOUR_1; member <= VICTORY_ELITE_FOUR_4; member++)
        {
            if (!FlagGet(sDifficultyVictoryFlags[member][difficulty]))
                return;
        }
        FlagSet(sEliteFourVictoryFlags[difficulty]);
    }
}

void RecordInitialDifficultyChoice(enum DifficultyLevel difficulty)
{
    // Only the final selection saved in the intro counts. Later menu visits
    // cannot replace the starting mode or erase a previously broken run.
    if (FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE))
        return;

    FlagSet(FLAG_INITIAL_GAME_CONFIG_DONE);
    if (difficulty == DIFFICULTY_HARD)
        FlagSet(FLAG_STARTED_ON_HARD);
}

void RecordDifficultyChoice(enum DifficultyLevel difficulty)
{
    if (difficulty != DIFFICULTY_HARD
     && FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE)
     && FlagGet(FLAG_STARTED_ON_HARD)
     && !FlagGet(FLAG_HARD_RUN_COMPLETED)
     && !FlagGet(FLAG_SYS_GAME_CLEAR))
        FlagSet(FLAG_HARD_RUN_BROKEN);
}

bool32 HasCompletedHardRun(void)
{
    return FlagGet(FLAG_HARD_RUN_COMPLETED);
}

enum DifficultyLevel GetDifficultyRunQualification(void)
{
    // Earned credit survives postgame setting changes. Older saves without
    // initial configuration history must never receive guessed Hard credit.
    if (HasCompletedHardRun())
        return DIFFICULTY_HARD;
    if (FlagGet(FLAG_INITIAL_GAME_CONFIG_DONE)
     && FlagGet(FLAG_STARTED_ON_HARD)
     && !FlagGet(FLAG_HARD_RUN_BROKEN)
     && !FlagGet(FLAG_SYS_GAME_CLEAR))
        return DIFFICULTY_HARD;

    return DIFFICULTY_NORMAL;
}

enum DifficultyLevel GetCurrentDifficultyLevel(void)
{
    return gSaveBlock2Ptr->optionsNpcTeams;
}

void SetCurrentDifficultyLevel(enum DifficultyLevel desiredDifficulty)
{
    if (!B_VAR_DIFFICULTY)
        return;

    if (desiredDifficulty > DIFFICULTY_MAX)
        desiredDifficulty = DIFFICULTY_MAX;

    VarSet(B_VAR_DIFFICULTY, desiredDifficulty);
}

enum DifficultyLevel GetBattlePartnerDifficultyLevel(u16 partnerId)
{
    enum DifficultyLevel difficulty = GetCurrentDifficultyLevel();

    if (partnerId > TRAINER_PARTNER(PARTNER_NONE))
        partnerId -= TRAINER_PARTNER(PARTNER_NONE);

    if (difficulty == DIFFICULTY_NORMAL)
        return DIFFICULTY_NORMAL;

    if (gBattlePartners[difficulty][partnerId].party == NULL)
        return DIFFICULTY_NORMAL;

    return difficulty;
}

enum DifficultyLevel GetTrainerDifficultyLevel(u16 trainerId)
{
    enum DifficultyLevel difficulty = GetCurrentDifficultyLevel();

    if (difficulty == DIFFICULTY_NORMAL)
        return DIFFICULTY_NORMAL;

    if (gTrainers[difficulty][trainerId].party == NULL)
        return DIFFICULTY_NORMAL;

    return difficulty;
}

void Script_IncreaseDifficulty(void)
{
    enum DifficultyLevel currentDifficulty;

    if (!B_VAR_DIFFICULTY)
        return;

    currentDifficulty = GetCurrentDifficultyLevel();

    if (currentDifficulty++ > DIFFICULTY_MAX)
        return;

    Script_RequestEffects(SCREFF_V1);
    Script_RequestWriteVar(B_VAR_DIFFICULTY);

    SetCurrentDifficultyLevel(currentDifficulty);
}

void Script_DecreaseDifficulty(void)
{
    enum DifficultyLevel currentDifficulty;

    if (!B_VAR_DIFFICULTY)
        return;

    currentDifficulty = GetCurrentDifficultyLevel();

    if (!currentDifficulty)
        return;

    Script_RequestEffects(SCREFF_V1);
    Script_RequestWriteVar(B_VAR_DIFFICULTY);

    SetCurrentDifficultyLevel(--currentDifficulty);
}

void Script_GetDifficulty(void)
{
    Script_RequestEffects(SCREFF_V1);
    gSpecialVar_Result = GetCurrentDifficultyLevel();
}

void Script_SetDifficulty(struct ScriptContext *ctx)
{
    enum DifficultyLevel desiredDifficulty = ScriptReadByte(ctx);

    Script_RequestEffects(SCREFF_V1);
    Script_RequestWriteVar(B_VAR_DIFFICULTY);

    SetCurrentDifficultyLevel(desiredDifficulty);
}
