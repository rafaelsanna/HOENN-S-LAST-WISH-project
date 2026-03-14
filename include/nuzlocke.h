#ifndef GUARD_NUZLOCKE_H
#define GUARD_NUZLOCKE_H

#include "global.h"

struct Pokemon;

bool8 Nuzlocke_IsEnabled(void);
u8 Nuzlocke_GetMode(void);
void Nuzlocke_OnBattleStart(void);
bool8 Nuzlocke_CanThrowBallThisBattle(void);
void Nuzlocke_OnMonCaught(struct Pokemon *mon);
void Nuzlocke_ApplyPermadeathToPlayerParty(void);
bool8 Nuzlocke_HasLoneMonPenaltyMessage(void);
bool8 Nuzlocke_ConsumeLoneMonPenaltyMessage(void);
const u8 *Nuzlocke_GetLoneMonPenaltyMessage(void);

#endif // GUARD_NUZLOCKE_H
