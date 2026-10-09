#ifndef GUARD_DEBUG_H
#define GUARD_DEBUG_H

void Debug_ShowMainMenu(void);
bool8 Debug_IsWishMenuBlockedByEliteFour(void);
extern const u8 Debug_FlagsAndVarNotSetBattleConfigMessage[];
const u8 *GetWeatherName(u32 weatherId);
const struct Trainer* GetDebugAiTrainer(void);

#if TESTING
const u8 *Debug_TestChaosLabel(bool8 enabled);
const u8 *Debug_TestChaosTrainersLabel(bool8 enabled);
const u8 *Debug_TestChaosDescription(bool8 trainers);
void Debug_TestDrawChaosDescription(u8 windowId, bool8 trainers);
bool32 Debug_TestChaosSubmenus(void);
const u8 *Debug_TestChaosTrainersHardMessage(void);
const u8 *Debug_TestChaosHardMessage(void);
u32 Debug_TestUtilitiesCount(void);
const u8 *Debug_TestChaosConfirmationText(void);
bool32 Debug_TestChaosNeedsConfirmation(bool8 trainers);
bool32 Debug_TestConfirmChaos(bool8 trainers, bool8 yes);
void Debug_TestDrawChaosConfirmation(u8 windowId, bool8 yes);
#if DEBUG_CRASH_SCREEN_TEST
bool32 Debug_TestCrashConfirmed(bool8 yes, u16 keys);
void Debug_TestRunCrashReport(bool8 fatal);
const u8 *Debug_TestCrashConfirmationText(bool8 fatal);
void Debug_TestShowCrashConfirmation(u8 taskId, bool8 fatal);
bool32 Debug_TestCrashChoiceIsYes(u8 taskId);
#endif
#endif

extern EWRAM_DATA bool8 gIsDebugBattle;
extern EWRAM_DATA u64 gDebugAIFlags;

#endif // GUARD_DEBUG_H
