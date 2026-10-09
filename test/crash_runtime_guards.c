#include "global.h"
#include "battle_transition.h"
#include "decompress.h"
#include "task.h"
#include "test/test.h"

enum { INVALID_TRANSITION, MISSING_TRANSITION, FULL_TASKS, BAD_HEADER };

static void Guard_SetUp(void *data)
{
    (void)data;
    ResetTasks();
}

static void Guard_Run(void *data)
{
    Test_ExpectedResult(TEST_RESULT_ERROR);
    switch ((uintptr_t)data)
    {
    case INVALID_TRANSITION:
        BattleTransition_Start(B_TRANSITION_COUNT);
        break;
    case MISSING_TRANSITION:
        IsBattleTransitionDone();
        break;
    case FULL_TASKS:
        for (u32 i = 0; i < NUM_TASKS; i++)
            CreateTask(TaskDummy, 0);
        gTasks[0].data[1] = 1234;
        BattleTransition_Start(B_TRANSITION_SLICE);
        break;
    case BAD_HEADER:
        DecompressDataWithHeaderWram((const u32 *)1, (void *)EWRAM_START);
        break;
    }
    Test_ExpectedResult(TEST_RESULT_PASS);
    EXPECT(FALSE); // A missing guard must not silently pass.
}

static void Guard_TearDown(void *data)
{
    bool32 taskUntouched = (uintptr_t)data != FULL_TASKS
        || (gTasks[0].func == TaskDummy && gTasks[0].data[1] == 1234);
    ResetTasks();
    EXPECT(taskUntouched);
}

static const struct TestRunner sGuardRunner =
{
    .setUp = Guard_SetUp,
    .run = Guard_Run,
    .tearDown = Guard_TearDown,
};

#define GUARD_TEST(name_, kind_) \
    __attribute__((section(".tests"), used)) static const struct Test CAT(sGuardTest, __LINE__) = \
    { .name = name_, .filename = __FILE__, .runner = &sGuardRunner, \
      .sourceLine = __LINE__, .data = (void *)(kind_) }

GUARD_TEST("Crash runtime guards: invalid transition ID is rejected before table lookup", INVALID_TRANSITION);
GUARD_TEST("Crash runtime guards: missing transition task is rejected before indexing", MISSING_TRANSITION);
GUARD_TEST("Crash runtime guards: full task array cannot clobber task zero", FULL_TASKS);
GUARD_TEST("Crash runtime guards: invalid compression header is rejected before copying", BAD_HEADER);
