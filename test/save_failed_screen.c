#include "global.h"
#include "save.h"
#include "window.h"
#include "test/test.h"

TEST("Save failure text fill preserves internal and outer buffer canaries")
{
    struct Window before = gWindows[0];
    u8 fillValue;
    PARAMETRIZE { fillValue = 0x00; }
    PARAMETRIZE { fillValue = 0xFF; }
    PARAMETRIZE { fillValue = 0x33; }
    PARAMETRIZE { fillValue = 0xA5; }
    EXPECT_EQ(SaveFailedScreen_TestWindowBufferBounds(FALSE, fillValue), TRUE);
    EXPECT_EQ(memcmp(&gWindows[0], &before, sizeof(before)), 0);
}

TEST("Save failure clock fill preserves internal and outer buffer canaries")
{
    struct Window before = gWindows[0];
    u8 fillValue;
    PARAMETRIZE { fillValue = 0x00; }
    PARAMETRIZE { fillValue = 0xFF; }
    PARAMETRIZE { fillValue = 0x33; }
    PARAMETRIZE { fillValue = 0xA5; }
    EXPECT_EQ(SaveFailedScreen_TestWindowBufferBounds(TRUE, fillValue), TRUE);
    EXPECT_EQ(memcmp(&gWindows[0], &before, sizeof(before)), 0);
}
