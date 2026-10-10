#ifndef GUARD_BATTLE_AI_AMATERASU_H
#define GUARD_BATTLE_AI_AMATERASU_H

void BattleAI_ResetAmaterasuDance(void);
void BattleAI_RecordAmaterasuDance(u32 battler, u32 move);
void BattleAI_AmaterasuStatsCleared(u32 battler);
bool32 BattleAI_AmaterasuStartsInSun(void);
u32 BattleAI_GetAmaterasuMoveMask(u32 battler);
u32 BattleAI_GetAmaterasuAttackMask(u32 battler);
u32 BattleAI_GetAmaterasuSwitchIn(u32 battler);

#endif // GUARD_BATTLE_AI_AMATERASU_H
