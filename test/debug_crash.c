#include "global.h"
#include "bg.h"
#include "debug.h"
#include "dma3.h"
#include "main.h"
#include "task.h"
#include "text.h"
#include "window.h"
#include "test/test.h"

#if DEBUG_CRASH_SCREEN_TEST
static const struct BgTemplate sCrashTestBg = {.bg = 0, .mapBaseIndex = 31};
static const struct WindowTemplate sCrashTestWindows[] =
{
    {.bg = 0, .width = 26, .height = 18, .baseBlock = 1},
    DUMMY_WIN_TEMPLATE,
};

TEST("Crash menu: test entry fits Utilities without displacing the Chaos submenus")
{
    EXPECT_EQ(Debug_TestUtilitiesCount(), 23);
    EXPECT(Debug_TestChaosSubmenus());
}

TEST("Crash menu: a report requires explicit YES and A; NO and B never trigger it")
{
    EXPECT_EQ(Debug_TestCrashConfirmed(FALSE, A_BUTTON), FALSE);
    EXPECT_EQ(Debug_TestCrashConfirmed(TRUE, 0), FALSE);
    EXPECT_EQ(Debug_TestCrashConfirmed(TRUE, B_BUTTON), FALSE);
    EXPECT_EQ(Debug_TestCrashConfirmed(TRUE, A_BUTTON | B_BUTTON), FALSE);
    EXPECT_EQ(Debug_TestCrashConfirmed(TRUE, DPAD_LEFT), FALSE);
    EXPECT_EQ(Debug_TestCrashConfirmed(TRUE, A_BUTTON), TRUE);
}

TEST("Crash menu: both warnings fit and begin on NO")
{
    const struct FontInfo *savedFonts = gFonts;
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    SetDefaultFontsPointer();
    ResetTasks();
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, &sCrashTestBg, 1);
    EXPECT(InitWindows(sCrashTestWindows));
    u8 taskId = CreateTask(TaskDummy, 0);
    // The production handler stores its window ID in task data[1].
    gTasks[taskId].data[1] = 0;
    for (u32 fatal = 0; fatal < 2; fatal++)
    {
        EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestCrashConfirmationText(fatal), 0) <= 200);
        Debug_TestShowCrashConfirmation(taskId, fatal);
        EXPECT_EQ(Debug_TestCrashChoiceIsYes(taskId), FALSE);
        ProcessDma3Requests();
    }
    DestroyTask(taskId);
    FreeAllWindowBuffers();
    UnsetBgTilemapBuffer(0);
    gFonts = savedFonts;
    SetVBlankCallback(vblank);
}

TEST("Crash menu: blue test calls the ordinary reporter")
{
    Test_ExpectedResult(TEST_RESULT_INVALID);
    Debug_TestRunCrashReport(FALSE);
}

TEST("Crash menu: fatal test calls the non-returning reporter")
{
    Test_ExpectedResult(TEST_RESULT_ERROR);
    Debug_TestRunCrashReport(TRUE);
}
#endif
