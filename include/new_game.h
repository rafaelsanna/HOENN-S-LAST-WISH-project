#ifndef GUARD_NEW_GAME_H
#define GUARD_NEW_GAME_H

// External variable declarations
extern bool8 gDifferentSaveFile;
extern bool8 gEnableContestDebugging;

// Core trainer ID functions
void SetTrainerId(u32 trainerId, u8 *dst);
u32 GetTrainerId(u8 *trainerId);
void CopyTrainerId(u8 *dst, u8 *src);

// Main new game initialization functions
void NewGameInitData(void);
void ResetMenuAndMonGlobals(void);
void Sav2_ClearSetDefault(void);

// Contest winner management
void ClearAllContestWinnerPics(void);

#endif // GUARD_NEW_GAME_H

