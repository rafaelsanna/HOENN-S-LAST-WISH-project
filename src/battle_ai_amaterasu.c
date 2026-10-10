#include "global.h"
#include "battle.h"
#include "battle_ai_amaterasu.h"
#include "battle_ai_util.h"
#include "battle_controllers.h"
#include "battle_setup.h"
#include "battle_util.h"
#include "pokemon.h"
#include "random.h"
#include "constants/moves.h"
#include "constants/opponents.h"
#include "constants/species.h"

enum AmaterasuDance
{
    AMATERASU_DANCE_NONE,
    AMATERASU_DANCE_QUIVER,
    AMATERASU_DANCE_VICTORY,
};

static bool32 IsAmaterasu(u32 battler)
{
    return !IsOnPlayerSide(battler)
        && !IsDoubleBattle()
        && (gBattleTypeFlags & BATTLE_TYPE_TRAINER)
        && !(gBattleTypeFlags & (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_RECORDED_LINK))
        && TRAINER_BATTLE_PARAM.opponentA == TRAINER_FLANNERY_1
        && gSaveBlock2Ptr->optionsNpcTeams == OPTIONS_NPCTEAMS_HARD;
}

static bool32 IsAmaterasuSmeargle(u32 battler)
{
    return IsAmaterasu(battler)
        && gBattlerPartyIndexes[battler] == 0
        && gBattleMons[battler].species == SPECIES_SMEARGLE;
}

bool32 BattleAI_AmaterasuStartsInSun(void)
{
    return IsAmaterasu(GetBattlerAtPosition(B_POSITION_OPPONENT_LEFT));
}

void BattleAI_ResetAmaterasuDance(void)
{
    gAiBattleData->amaterasuDance = AMATERASU_DANCE_NONE;
}

void BattleAI_AmaterasuStatsCleared(u32 battler)
{
    if (IsAmaterasuSmeargle(battler))
        BattleAI_ResetAmaterasuDance();
}

void BattleAI_RecordAmaterasuDance(u32 battler, u32 move)
{
    if ((move != MOVE_QUIVER_DANCE && move != MOVE_VICTORY_DANCE)
        || !IsAmaterasuSmeargle(battler)
        || gBattleStruct->snatchedMoveIsUsed
        || WasUnableToUseMove(battler)
        || !(gHitMarker & HITMARKER_OBEYS)
        || (gBattleStruct->moveResultFlags[gBattlerTarget] & MOVE_RESULT_NO_EFFECT))
        return;

    // Remember the actual successful dance, not its stat stages: Moody can
    // change either attacking stat, and Fiery Dance can interrupt the combo.
    if (move == MOVE_QUIVER_DANCE)
        gAiBattleData->amaterasuDance = AMATERASU_DANCE_QUIVER;
    else if (move == MOVE_VICTORY_DANCE)
        gAiBattleData->amaterasuDance = AMATERASU_DANCE_VICTORY;
}

static u32 GetRecipientMask(u32 battler, enum AmaterasuDance dance)
{
    u32 mask = 0;
    u32 i;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (i == gBattlerPartyIndexes[battler] || !IsValidForBattle(&gEnemyParty[i]))
            continue;

        switch (GetMonData(&gEnemyParty[i], MON_DATA_SPECIES))
        {
        case SPECIES_GRANBULL:
        case SPECIES_ARCANINE:
        case SPECIES_FLAREON:
            if (dance == AMATERASU_DANCE_VICTORY)
                mask |= 1u << i;
            break;
        case SPECIES_NINETALES:
        case SPECIES_HOUNDOOM:
            if (dance == AMATERASU_DANCE_QUIVER)
                mask |= 1u << i;
            break;
        }
    }
    return mask;
}

static enum AmaterasuDance GetDefensiveDance(u32 opposingBattler)
{
    bool32 physical = FALSE, special = FALSE;
    bool32 savedSwapCategory = gBattleStruct->swapDamageCategory;
    enum DamageCategory savedCategoryOverride = gBattleStruct->categoryOverride;
    u16 *moves = GetMovesArray(opposingBattler);
    u32 i;

    // Use the same moveset information available to Smart Trainer AI, not
    // the player's selected action. Status moves do not make an attacker mixed.
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        if (IsMoveUnusable(i, moves[i], gAiLogicData->moveLimitations[opposingBattler]))
            continue;
        SetDynamicMoveCategory(opposingBattler, GetOppositeBattler(opposingBattler), moves[i]);
        enum DamageCategory category = GetBattleMoveCategory(moves[i]);
        if (category == DAMAGE_CATEGORY_PHYSICAL)
            physical = TRUE;
        else if (category == DAMAGE_CATEGORY_SPECIAL)
            special = TRUE;
    }
    gBattleStruct->swapDamageCategory = savedSwapCategory;
    gBattleStruct->categoryOverride = savedCategoryOverride;
    if (physical && !special)
        return AMATERASU_DANCE_VICTORY;
    if (special && !physical)
        return AMATERASU_DANCE_QUIVER;
    if (physical && special)
        return AMATERASU_DANCE_NONE; // Mixed: retain the equal-probability draw.

    // No usable damaging move known: fall back to the attacking stats.
    if (gBattleMons[opposingBattler].attack > gBattleMons[opposingBattler].spAttack)
        return AMATERASU_DANCE_VICTORY;
    if (gBattleMons[opposingBattler].spAttack > gBattleMons[opposingBattler].attack)
        return AMATERASU_DANCE_QUIVER;
    return AMATERASU_DANCE_NONE;
}

u32 BattleAI_GetAmaterasuAttackMask(u32 battler)
{
    u32 i, mask = 0;
    bool32 boosted = FALSE;

    if (!IsAmaterasu(battler) || !IsBattlerAlive(battler))
        return 0;
    switch (gBattleMons[battler].species)
    {
    case SPECIES_NINETALES:
    case SPECIES_HOUNDOOM:
    case SPECIES_GRANBULL:
    case SPECIES_ARCANINE:
    case SPECIES_FLAREON:
        break;
    default:
        return 0;
    }
    for (i = STAT_ATK; i < NUM_BATTLE_STATS; i++)
        boosted |= gBattleMons[battler].statStages[i] > DEFAULT_STAT_STAGE;
    if (!boosted)
        return 0;

    // Leave move ranking to Smart AI; restrict only the eligible candidates.
    // If none can damage the opponent, keep the ordinary switch/status fallback.
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        u32 move = gBattleMons[battler].moves[i];
        if (!IsMoveUnusable(i, move, gAiLogicData->moveLimitations[battler])
            && GetMoveCategory(move) != DAMAGE_CATEGORY_STATUS
            && AI_GetDamage(battler, GetOppositeBattler(battler), i, AI_ATTACKING, gAiLogicData) > 0)
            mask |= 1u << i;
    }
    return mask;
}

u32 BattleAI_GetAmaterasuMoveMask(u32 battler)
{
    u32 i, fieryDance = MAX_MON_MOVES, batonPass = MAX_MON_MOVES, setupMask = 0;
    u32 limitations;
    bool32 hasReserve = FALSE;

    if (!IsAmaterasuSmeargle(battler) || !IsBattlerAlive(battler))
        return 0;

    limitations = gAiLogicData->moveLimitations[battler];
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        u32 move = gBattleMons[battler].moves[i];
        if (IsMoveUnusable(i, move, limitations))
            continue;
        switch (move)
        {
        case MOVE_FIERY_DANCE:
            fieryDance = i;
            break;
        case MOVE_BATON_PASS:
            batonPass = i;
            break;
        case MOVE_QUIVER_DANCE:
            if (GetRecipientMask(battler, AMATERASU_DANCE_QUIVER))
                setupMask |= 1u << i;
            break;
        case MOVE_VICTORY_DANCE:
            if (GetRecipientMask(battler, AMATERASU_DANCE_VICTORY))
                setupMask |= 1u << i;
            break;
        }
    }

    // Attack only for Taunt or an immediate KO (including survival effects).
    if (fieryDance != MAX_MON_MOVES
        && (gDisableStructs[battler].tauntTimer
            || CanIndexMoveFaintTarget(battler, GetOppositeBattler(battler), fieryDance, AI_ATTACKING)))
        return 1u << fieryDance;

    if (batonPass == MAX_MON_MOVES)
        return 0; // No legal combo: leave PP/Encore/etc. handling to normal AI.

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (i != gBattlerPartyIndexes[battler] && IsValidForBattle(&gEnemyParty[i]))
        {
            hasReserve = TRUE;
            break;
        }
    }
    if (!hasReserve)
        return 0;

    if (gAiBattleData->amaterasuDance != AMATERASU_DANCE_NONE)
        return 1u << batonPass;

    enum AmaterasuDance defensiveDance = GetDefensiveDance(GetOppositeBattler(battler));
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        if ((setupMask & (1u << i))
            && ((defensiveDance == AMATERASU_DANCE_VICTORY && gBattleMons[battler].moves[i] == MOVE_VICTORY_DANCE)
                || (defensiveDance == AMATERASU_DANCE_QUIVER && gBattleMons[battler].moves[i] == MOVE_QUIVER_DANCE)))
            return 1u << i;
    }
    return setupMask;
}

u32 BattleAI_GetAmaterasuSwitchIn(u32 battler)
{
    u32 i, mask, count = 0, choice;

    if (!IsAmaterasuSmeargle(battler))
        return PARTY_SIZE;

    // With the opening sun still active, let Smart AI choose the matchup.
    // Only prioritize Drought after a faint when sunlight needs restoring.
    if (!IsBattlerAlive(battler))
    {
        if (gBattleWeather & B_WEATHER_SUN)
            return PARTY_SIZE;

        for (i = 0; i < PARTY_SIZE; i++)
        {
            if (i != gBattlerPartyIndexes[battler]
                && IsValidForBattle(&gEnemyParty[i])
                && GetMonData(&gEnemyParty[i], MON_DATA_SPECIES) == SPECIES_NINETALES)
                return i;
        }
        return PARTY_SIZE;
    }

    // Only override the recipient while Baton Pass is actually resolving,
    // never ordinary switch predictions or forced switches such as Roar.
    if (gAiLogicData->aiCalcInProgress || gAiLogicData->aiPredictionInProgress
        || gBattlerAttacker != battler || gCurrentMove != MOVE_BATON_PASS
        || gAiBattleData->amaterasuDance == AMATERASU_DANCE_NONE)
        return PARTY_SIZE;

    mask = GetRecipientMask(battler, gAiBattleData->amaterasuDance);
    for (i = 0; i < PARTY_SIZE; i++)
        count += (mask >> i) & 1;
    if (count == 0)
        return PARTY_SIZE; // Matching sweepers all fainted: normal safe fallback.

    choice = RandomUniform(RNG_AI_AMATERASU_PASS, 0, count - 1);
    for (i = 0; i < PARTY_SIZE; i++)
    {
        if ((mask & (1u << i)) && choice-- == 0)
            return i;
    }
    return PARTY_SIZE;
}
