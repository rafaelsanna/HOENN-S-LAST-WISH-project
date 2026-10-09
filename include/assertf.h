#ifndef GUARD_ASSERTF_H
#define GUARD_ASSERTF_H

// Backported from pokeemerald-expansion PRs 8196, 8580 and 10156.
// Only use resumable assertions with an explicit, reviewed recovery block.
// Fatal checks remain enabled even with NDEBUG or ordinary reporting disabled.
#define assertf(cond, ...) CAT(_ASSERTF, FIRST(__VA_OPT__(_FMT,) _COND))(cond __VA_OPT__(,) __VA_ARGS__)
#define fatal_assertf(cond, ...) CAT(_FATALASSERTF, FIRST(__VA_OPT__(_FMT,) _COND))(cond __VA_OPT__(,) __VA_ARGS__)
#define errorf(fmt, ...) _ASSERTF_HANDLE("%s:%u: " fmt, __FILE__, __LINE__ __VA_OPT__(,) __VA_ARGS__)
#define fatalf(fmt, ...) _FATALASSERTF_HANDLE("%s:%u: " fmt, __FILE__, __LINE__ __VA_OPT__(,) __VA_ARGS__)

#define _ASSERTF_COND(cond) for (bool32 _recover = !(cond); _recover && (_ASSERTF_HANDLE("%s:%u: %s", __FILE__, __LINE__, STR(cond)), TRUE); _recover = FALSE)
#define _ASSERTF_FMT(cond, fmt, ...) for (bool32 _recover = !(cond); _recover && (_ASSERTF_HANDLE("%s:%u: " fmt, __FILE__, __LINE__ __VA_OPT__(,) __VA_ARGS__), TRUE); _recover = FALSE)
#define _FATALASSERTF_COND(cond) do { if (!(cond)) _FATALASSERTF_HANDLE("%s:%u: %s", __FILE__, __LINE__, STR(cond)); } while (0)
#define _FATALASSERTF_FMT(cond, fmt, ...) do { if (!(cond)) _FATALASSERTF_HANDLE("%s:%u: " fmt, __FILE__, __LINE__ __VA_OPT__(,) __VA_ARGS__); } while (0)

#if TESTING
#include "test/test.h"
#define _ASSERTF_HANDLE(fmt, ...) Test_ExitWithResult(TEST_RESULT_INVALID, __LINE__, fmt, ##__VA_ARGS__)
#define _FATALASSERTF_HANDLE(fmt, ...) Test_ExitWithResult(TEST_RESULT_ERROR, __LINE__, fmt, ##__VA_ARGS__)
#else
#if ASSERTF_SCREEN_ENABLED
#define _ASSERTF_HANDLE(fmt, ...) AssertfCrashScreen(__builtin_return_address(0), fmt, ##__VA_ARGS__)
#else
#define _ASSERTF_HANDLE(...) (void)0
#endif
#define _FATALASSERTF_HANDLE(fmt, ...) FatalfCrashScreen(__builtin_return_address(0), fmt, ##__VA_ARGS__)
#endif

void AssertfCrashScreen(const void *caller, const char *fmt, ...);
_Noreturn void FatalfCrashScreen(const void *caller, const char *fmt, ...);

#if TESTING
void Assertf_TestRender(const char *fmt, ...);
char Assertf_TestReadChar(u32 x, u32 y);
#endif

#endif
