#ifndef GUARD_NUZLOCKE_H
#define GUARD_NUZLOCKE_H

#include "global.h"

bool8 Nuzlocke_IsEnabled(void);
void Nuzlocke_OnBattleStart(void);
bool8 Nuzlocke_CanThrowBallThisBattle(void);
void Nuzlocke_ApplyPermadeathToPlayerParty(void);

#endif // GUARD_NUZLOCKE_H
