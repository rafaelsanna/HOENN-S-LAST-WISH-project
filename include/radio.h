#ifndef GUARD_RADIO_H
#define GUARD_RADIO_H

#include "global.h"

// Call this from ItemUseOutOfBattle_Radio (item_use.c)
// returnCallback is typically CB2_ReturnToField or CB2_ReturnToFieldContinueScript
void Radio_Open(MainCallback returnCallback);
bool32 RadioPopup_IsActive(void);
void Radio_CancelNowPlayingPopup(void);
void Radio_TryShowQueuedPopup(void);

#endif // GUARD_RADIO_H
