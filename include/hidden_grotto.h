#ifndef GUARD_HIDDEN_GROTTO_H
#define GUARD_HIDDEN_GROTTO_H

#include "constants/hidden_grotto.h"

void ResetHiddenGrottoes(void);
void UpdateHiddenGrottoesPerDay(u16 daysSince);
void HiddenGrotto_InitializeCurrent(void);
void HiddenGrotto_EmptyCurrent(void);
void HiddenGrotto_GetCurrentContentType(void);
void HiddenGrotto_GetCurrentContentId(void);
void HiddenGrotto_CreateCurrentMon(void);
void HiddenGrotto_TestCurrentMonBounds(void);
void HiddenGrotto_IsCurrentMap(void);
bool8 IsCurrentMapHiddenGrotto(void);

#endif // GUARD_HIDDEN_GROTTO_H
