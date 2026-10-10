#ifndef GUARD_CRASH_CONTEXT_H
#define GUARD_CRASH_CONTEXT_H

#include "main.h"

void CrashContext_SetCallback(MainCallback callback, const char *name);
const char *CrashContext_GetScreenName(void);
bool32 CrashContext_GetMap(u8 *group, u8 *num, const char **name);

// Read-only probes for field menus that do not replace the main callback.
bool32 CrashContext_PokemonPCActive(void);
bool32 CrashContext_PlayerPCActive(void);
bool32 CrashContext_WishMenuActive(void);

#if TESTING
#include "task.h"
MainCallback CrashContext_TestStorageCallback(void);
TaskFunc CrashContext_TestPokemonPCMenuTask(void);
TaskFunc CrashContext_TestPlayerPCMenuTask(void);
TaskFunc CrashContext_TestWishMenuTask(void);
#endif

#endif
