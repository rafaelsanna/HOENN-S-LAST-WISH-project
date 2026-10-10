#include "global.h"
#include "battle.h"
#include "battle_ai_amaterasu.h"
#include "battle_ai_util.h"
#include "battle_ai_switch_items.h"
#include "battle_controllers.h"
#include "battle_setup.h"
#include "battle_util.h"
#include "pokemon.h"
#include "random.h"
#include "constants/moves.h"
#include "constants/opponents.h"
#include "constants/species.h"
#include "constants/hold_effects.h"
#include "constants/abilities.h"
#include "item.h"

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

static u32 GetDanceAttackStat(enum AmaterasuDance dance)
{
    return dance == AMATERASU_DANCE_VICTORY ? STAT_ATK : STAT_SPATK;
}

static enum AmaterasuDance GetPreferredDance(u32 battler)
{
    u32 attack = gBattleMons[battler].statStages[STAT_ATK];
    u32 spAttack = gBattleMons[battler].statStages[STAT_SPATK];

    // Offensive drops take priority over the opponent's damage category.
    // Intimidate -> Quiver Dance; a Special Attack drop -> Victory Dance.
    if (attack < DEFAULT_STAT_STAGE && attack < spAttack)
        return AMATERASU_DANCE_QUIVER;
    if (spAttack < DEFAULT_STAT_STAGE && spAttack < attack)
        return AMATERASU_DANCE_VICTORY;

    // A drop after setup can also cancel the whole offensive gain. Do not
    // pass a neutral Attack just because Victory Dance succeeded earlier.
    if (gAiBattleData->amaterasuDance == AMATERASU_DANCE_VICTORY
        && attack <= DEFAULT_STAT_STAGE && spAttack >= DEFAULT_STAT_STAGE)
        return AMATERASU_DANCE_QUIVER;
    if (gAiBattleData->amaterasuDance == AMATERASU_DANCE_QUIVER
        && spAttack <= DEFAULT_STAT_STAGE && attack >= DEFAULT_STAT_STAGE)
        return AMATERASU_DANCE_VICTORY;

    // Keep building the same useful pass while the sash is intact.
    if (gAiBattleData->amaterasuDance != AMATERASU_DANCE_NONE)
        return gAiBattleData->amaterasuDance;
    return GetDefensiveDance(GetOppositeBattler(battler));
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
            if (GetRecipientMask(battler, AMATERASU_DANCE_QUIVER)
                && gBattleMons[battler].statStages[STAT_SPATK] < MAX_STAT_STAGE)
                setupMask |= 1u << i;
            break;
        case MOVE_VICTORY_DANCE:
            if (GetRecipientMask(battler, AMATERASU_DANCE_VICTORY)
                && gBattleMons[battler].statStages[STAT_ATK] < MAX_STAT_STAGE)
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
    {
        u32 attackingStage = gBattleMons[battler].statStages[GetDanceAttackStat(gAiBattleData->amaterasuDance)];
        bool32 usefulPass = attackingStage > DEFAULT_STAT_STAGE
            && GetRecipientMask(battler, gAiBattleData->amaterasuDance);
        bool32 protectedSetup = gBattleMons[battler].hp == gBattleMons[battler].maxHP
            && gAiLogicData->holdEffects[battler] == HOLD_EFFECT_FOCUS_SASH
            && GetBattlerSecondaryDamage(battler) == 0
            && !(gBattleMons[battler].status1 & STATUS1_BURN)
            && !CanTargetFaintAi(GetOppositeBattler(battler), battler);

        // Do not wait for exactly 1 HP: chip, multi-hit moves, PP and lost
        // sash protection can make waiting suicidal. Stop at +6 as well.
        if (usefulPass && (!protectedSetup || attackingStage == MAX_STAT_STAGE || setupMask == 0))
            return 1u << batonPass;
        if (setupMask == 0)
            return 0; // No useful legal setup/pass: let Smart AI recover.
    }

    enum AmaterasuDance defensiveDance = GetPreferredDance(battler);
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        if ((setupMask & (1u << i))
            && ((defensiveDance == AMATERASU_DANCE_VICTORY && gBattleMons[battler].moves[i] == MOVE_VICTORY_DANCE)
                || (defensiveDance == AMATERASU_DANCE_QUIVER && gBattleMons[battler].moves[i] == MOVE_QUIVER_DANCE)))
            return 1u << i;
    }
    return setupMask;
}

bool32 BattleAI_AmaterasuReserveSmeargle(u32 battler, u32 partyIndex)
{
    u32 i;

    if (!IsAmaterasu(battler) || partyIndex != 0
        || GetMonData(&gEnemyParty[0], MON_DATA_SPECIES) != SPECIES_SMEARGLE
        || !IsValidForBattle(&gEnemyParty[0]))
        return FALSE;

    // Never choose the benched lead as an ordinary replacement while a
    // teammate lives. Include the active sweeper when considering a switch.
    // The last usable Pokemon must remain eligible, even at 1 HP.
    for (i = 1; i < PARTY_SIZE; i++)
    {
        if (IsValidForBattle(&gEnemyParty[i]))
            return TRUE;
    }
    return FALSE;
}

static u32 GetAmaterasuEntryDamage(u32 battler, struct BattlePokemon *mon)
{
    u32 side = GetBattlerSide(battler), damage = 0;
    u32 holdEffect = gItemsInfo[mon->item].holdEffect;

    if (mon->ability == ABILITY_KLUTZ || (gFieldStatuses & STATUS_FIELD_MAGIC_ROOM))
        holdEffect = HOLD_EFFECT_NONE;
    if (mon->ability == ABILITY_MAGIC_GUARD || holdEffect == HOLD_EFFECT_HEAVY_DUTY_BOOTS)
        return 0;
    if (IsHazardOnSide(side, HAZARDS_STEALTH_ROCK))
        damage += GetStealthHazardDamageByTypesAndHP(TYPE_SIDE_HAZARD_POINTED_STONES, mon->types[0], mon->types[1], mon->maxHP);
    if (IsHazardOnSide(side, HAZARDS_STEELSURGE))
        damage += GetStealthHazardDamageByTypesAndHP(TYPE_SIDE_HAZARD_SHARP_STEEL, mon->types[0], mon->types[1], mon->maxHP);
    if (IsHazardOnSide(side, HAZARDS_SPIKES)
        && IsMonGrounded(holdEffect, mon->ability, mon->types[0], mon->types[1]))
        damage += max(1, mon->maxHP / ((5 - gSideTimers[side].spikesAmount) * 2));
    return damage;
}

u32 BattleAI_GetAmaterasuEscapeSwitch(u32 battler)
{
    struct BattlePokemon candidate;
    u32 opponent = GetOppositeBattler(battler), i, j, threat = MAX_MON_MOVES;
    u32 incoming = GetIncomingMoveSpeedCheck(battler, opponent, gAiLogicData);
    u16 *moves = GetMovesArray(opponent);
    bool32 usefulFreeEntry = FALSE;

    if (!IsAmaterasu(battler) || !IsBattlerAlive(battler) || IsAmaterasuSmeargle(battler)
        || gAiLogicData->aiPredictionInProgress
        || gBattleMons[battler].volatiles.substitute
        || GetAmaterasuEntryDamage(battler, &gBattleMons[battler]) >= gBattleMons[battler].hp
        || !CanBattlerEscape(battler) || IsAbilityPreventingEscape(battler)
        || !BattleAI_AmaterasuReserveSmeargle(battler, 0)
        || GetMonData(&gEnemyParty[0], MON_DATA_HP) != 1)
        return PARTY_SIZE;

    // A predicted setup/status turn is not an opportunity to spend the sac.
    // Otherwise use a known legal KO threat, never the player's selected input.
    if (incoming != MOVE_NONE && IsBattleMoveStatus(incoming))
        return PARTY_SIZE;
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        if (!IsMoveUnusable(i, moves[i], gAiLogicData->moveLimitations[opponent])
            && (incoming == MOVE_NONE || incoming == moves[i])
            && CanIndexMoveFaintTarget(opponent, battler, i, AI_DEFENDING))
        {
            threat = i;
            break;
        }
    }
    if (threat == MAX_MON_MOVES)
        return PARTY_SIZE;
    incoming = moves[threat];

    // Keep a winning attack rather than throw away a boost and a teammate.
    for (i = 0; i < MAX_MON_MOVES; i++)
    {
        u32 move = gBattleMons[battler].moves[i];
        if (!IsMoveUnusable(i, move, gAiLogicData->moveLimitations[battler])
            && CanIndexMoveFaintTarget(battler, opponent, i, AI_ATTACKING)
            && AI_IsFaster(battler, opponent, move, incoming, CONSIDER_PRIORITY))
            return PARTY_SIZE;
    }

    PokemonToBattleMon(&gEnemyParty[0], &candidate);
    if (GetAmaterasuEntryDamage(battler, &candidate) >= candidate.hp
        || AI_CalcPartyMonDamage(incoming, opponent, battler, candidate, AI_DEFENDING) <= 0)
        return PARTY_SIZE; // Hazard KO / immunity would not absorb the attack.

    for (i = 1; i < PARTY_SIZE; i++)
    {
        if (i == gBattlerPartyIndexes[battler] || !IsValidForBattle(&gEnemyParty[i]))
            continue;
        PokemonToBattleMon(&gEnemyParty[i], &candidate);
        u32 entryDamage = GetAmaterasuEntryDamage(battler, &candidate);
        if (entryDamage >= candidate.hp)
            continue;
        s32 damageTaken = AI_CalcPartyMonDamage(incoming, opponent, battler, candidate, AI_DEFENDING);
        u32 hp = candidate.hp - entryDamage;
        for (j = 0; j < MAX_MON_MOVES; j++)
        {
            u32 move = candidate.moves[j];
            if (!candidate.pp[j] || move == MOVE_NONE || IsBattleMoveStatus(move))
                continue;
            s32 damageDealt = AI_CalcPartyMonDamage(move, battler, opponent, candidate, AI_ATTACKING);
            if (damageDealt <= 0)
                continue;
            u32 attacksNeeded = (gBattleMons[opponent].hp + damageDealt - 1) / damageDealt;
            bool32 faster = AI_IsPartyMonFaster(battler, opponent, candidate, move, incoming, CONSIDER_PRIORITY);
            u32 hitsOnFreeEntry = attacksNeeded - (faster ? 1 : 0);
            if (damageTaken <= 0 || hitsOnFreeEntry * damageTaken < hp)
            {
                usefulFreeEntry = TRUE;
                // If the same plan survives the entry attack too, save Smeargle.
                if (damageTaken <= 0 || (hitsOnFreeEntry + 1) * damageTaken < hp)
                    return i;
            }
        }
    }
    // Explicit choice, deliberately separate from normal replacement ranking.
    return usefulFreeEntry ? 0 : PARTY_SIZE;
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
