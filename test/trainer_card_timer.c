#include "global.h"
#include "menu.h"
#include "text.h"
#include "trainer_card.h"
#include "window.h"
#include "test/test.h"

#define CARD_TEXT_WIDTH 28
#define CARD_TEXT_HEIGHT 18
#define TIMER_ROW_Y 19
#define TIMER_ROW_HEIGHT 12
#define MONEY_ROW_Y 30
#define ROW_CANARY 7

static const u8 sMoneyText[] = _("money 9999999 {EMOJI_PIPE} achievement 100");
static const u8 sWinWhiteoutText[] = _("win 9999 {EMOJI_PIPE} whiteout 9999");
static const u8 sCardTextColors[] = {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_DARK_GRAY, TEXT_COLOR_LIGHT_GRAY};

static const struct WindowTemplate sTimerTestWindows[] =
{
    {.bg = 0, .width = CARD_TEXT_WIDTH, .height = CARD_TEXT_HEIGHT},
    {.bg = 0, .width = CARD_TEXT_WIDTH, .height = CARD_TEXT_HEIGHT},
    DUMMY_WIN_TEMPLATE,
};

static void PrepareTimerWindow(u8 windowId)
{
    FillWindowPixelBuffer(windowId, PIXEL_FILL(ROW_CANARY));
    FillWindowPixelRect(windowId, PIXEL_FILL(0), 0, TIMER_ROW_Y,
        CARD_TEXT_WIDTH * 8, TIMER_ROW_HEIGHT);
}

static bool32 OtherRowsKeepCanary(u8 windowId)
{
    const u8 *tiles = gWindows[windowId].tileData;

    // The timer's actual glyph/shadow footprint is 12 pixels, despite its
    // 8-pixel line metadata. Guard all rows outside that footprint, including
    // y=31 onward and the former legacy timer position. The composition check
    // below also verifies the money line's padding at its y=30 anchor.
    for (u32 y = 0; y < CARD_TEXT_HEIGHT * 8; y++)
    {
        if (y >= TIMER_ROW_Y && y < TIMER_ROW_Y + TIMER_ROW_HEIGHT)
            continue;
        for (u32 tileX = 0; tileX < CARD_TEXT_WIDTH; tileX++)
        {
            u32 rowOffset = ((y / 8) * CARD_TEXT_WIDTH + tileX) * 32 + (y % 8) * 4;
            for (u32 byte = 0; byte < 4; byte++)
            {
                if (tiles[rowOffset + byte] != PIXEL_FILL(ROW_CANARY))
                    return FALSE;
            }
        }
    }
    return TRUE;
}

static bool32 TimerRowHasText(u8 windowId)
{
    const u8 *tiles = gWindows[windowId].tileData;

    for (u32 y = TIMER_ROW_Y; y < TIMER_ROW_Y + TIMER_ROW_HEIGHT; y++)
    {
        for (u32 tileX = 0; tileX < CARD_TEXT_WIDTH; tileX++)
        {
            u32 rowOffset = ((y / 8) * CARD_TEXT_WIDTH + tileX) * 32 + (y % 8) * 4;
            for (u32 byte = 0; byte < 4; byte++)
            {
                if (tiles[rowOffset + byte] != 0)
                    return TRUE;
            }
        }
    }
    return FALSE;
}

TEST("Trainer card timer: live redraw matches clean text and preserves neighboring rows")
{
    u16 oldHours, oldMinutes, newHours, newMinutes;
    const struct FontInfo *savedFonts = gFonts;
    u8 savedFg, savedBg, savedShadow;
    bool32 oldRowsIntact, newRowsIntact, cleanRowsIntact, hasText, matchesClean, matchesMoney;

    PARAMETRIZE { oldHours = 0; oldMinutes = 9; newHours = 0; newMinutes = 10; }
    PARAMETRIZE { oldHours = 9; oldMinutes = 59; newHours = 10; newMinutes = 0; }
    PARAMETRIZE { oldHours = 99; oldMinutes = 59; newHours = 100; newMinutes = 0; }
    PARAMETRIZE { oldHours = 999; oldMinutes = 58; newHours = 999; newMinutes = 59; }

    SaveTextColors(&savedFg, &savedBg, &savedShadow);
    SetDefaultFontsPointer();
    EXPECT_LE(GetStringWidth(FONT_SMALL_NARROW, sMoneyText, 0), CARD_TEXT_WIDTH * 8 - 6);
    EXPECT_LE(GetStringWidth(FONT_SMALL_NARROW, sWinWhiteoutText, 0), CARD_TEXT_WIDTH * 8 - 6);
    EXPECT(InitWindows(sTimerTestWindows));
    PrepareTimerWindow(0);
    PrepareTimerWindow(1);

    TrainerCard_DrawTimeAndDex(0, oldHours, oldMinutes, 123, 456);
    oldRowsIntact = OtherRowsKeepCanary(0);
    TrainerCard_DrawTimeAndDex(0, newHours, newMinutes, 123, 456);
    newRowsIntact = OtherRowsKeepCanary(0);
    hasText = TimerRowHasText(0);

    TrainerCard_DrawTimeAndDex(1, newHours, newMinutes, 123, 456);
    cleanRowsIntact = OtherRowsKeepCanary(1);
    matchesClean = memcmp(gWindows[0].tileData, gWindows[1].tileData,
        CARD_TEXT_WIDTH * CARD_TEXT_HEIGHT * 32) == 0;

    // Reproduce the real neighboring line and its initial draw order. A live
    // timer update must preserve the money text without redrawing that line.
    FillWindowPixelBuffer(0, PIXEL_FILL(0));
    FillWindowPixelBuffer(1, PIXEL_FILL(0));
    TrainerCard_DrawTimeAndDex(0, oldHours, oldMinutes, 123, 456);
    AddTextPrinterParameterized3(0, FONT_SMALL_NARROW, 6, MONEY_ROW_Y,
        sCardTextColors, TEXT_SKIP_DRAW, sMoneyText);
    TrainerCard_DrawTimeAndDex(0, newHours, newMinutes, 123, 456);

    TrainerCard_DrawTimeAndDex(1, newHours, newMinutes, 123, 456);
    AddTextPrinterParameterized3(1, FONT_SMALL_NARROW, 6, MONEY_ROW_Y,
        sCardTextColors, TEXT_SKIP_DRAW, sMoneyText);
    matchesMoney = memcmp(gWindows[0].tileData, gWindows[1].tileData,
        CARD_TEXT_WIDTH * CARD_TEXT_HEIGHT * 32) == 0;

    FreeAllWindowBuffers();
    RestoreTextColors(&savedFg, &savedBg, &savedShadow);
    gFonts = savedFonts;
    EXPECT(oldRowsIntact);
    EXPECT(newRowsIntact);
    EXPECT(cleanRowsIntact);
    EXPECT(hasText);
    EXPECT(matchesClean);
    EXPECT(matchesMoney);
}
