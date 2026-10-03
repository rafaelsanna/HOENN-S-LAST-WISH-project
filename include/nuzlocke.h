#ifndef GUARD_NUZLOCKE_H
#define GUARD_NUZLOCKE_H

#include "global.h"

struct Pokemon;

bool8 Nuzlocke_IsEnabled(void);
u8 Nuzlocke_GetMode(void);
// History uses OPTIONS_NUZLOCKE_* values, independently of the live setting.
void Nuzlocke_RecordInitialChoice(u8 mode);
void Nuzlocke_RecordModeChoice(u8 mode);
// Called by the validated first story-champion victory hook.
void Nuzlocke_RecordChampionVictory(void);
// Eligible mode during the adventure; completed result after the champion.
u8 Nuzlocke_GetRunQualification(void);
// OFF until a qualifying champion win; immutable afterward.
u8 Nuzlocke_GetCompletedRunMode(void);
void Nuzlocke_OnBattleStart(void);
bool8 Nuzlocke_CanThrowBallThisBattle(void);
void Nuzlocke_OnMonCaught(struct Pokemon *mon);
void Nuzlocke_ApplyPermadeathToPlayerParty(void);
bool8 Nuzlocke_HasLoneMonPenaltyMessage(void);
bool8 Nuzlocke_ConsumeLoneMonPenaltyMessage(void);
const u8 *Nuzlocke_GetLoneMonPenaltyMessage(void);
// Check before boxing/releasing so Normal can recover the current party.
bool8 Nuzlocke_ShouldGameOver(void);
void Nuzlocke_StartGameOverScreen(void);


#endif // GUARD_NUZLOCKE_H
