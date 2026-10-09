#include "global.h"
#include "achievements.h"
#include "bg.h"
#include "comfy_anim.h"
#include "dma3.h"
#include "fieldmap.h"
#include "gpu_regs.h"
#include "international_string_util.h"
#include "main.h"
#include "malloc.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "pokedex_area_screen.h"
#include "sprite.h"
#include "task.h"
#include "text.h"
#include "window.h"
#include "constants/map_groups.h"
#include "test/test.h"

static void MenuReturnCallback(void)
{
}

static void ExpectBlankAchievementsBackground(void)
{
    EXPECT_EQ(GetBgTilemapBuffer(3), NULL);
    EXPECT_EQ(GetBgAttribute(3, BG_ATTR_MAPBASEINDEX), 28);
    EXPECT_EQ(GetBgAttribute(3, BG_ATTR_CHARBASEINDEX), 2);
    const vu16 *map = (const vu16 *)BG_SCREEN_ADDR(28);
    const vu16 *tile = (const vu16 *)BG_CHAR_ADDR(2);
    for (u32 i = 0; i < BG_SCREEN_SIZE / sizeof(u16); i++)
        EXPECT_EQ(map[i], 0);
    for (u32 i = 0; i < TILE_SIZE_4BPP / sizeof(u16); i++)
        EXPECT_EQ(tile[i], 0);
    for (u32 bg = 0; bg < 3; bg++)
        EXPECT(GetBgTilemapBuffer(bg) != NULL);
}

static void TickAchievements(u16 keys)
{
    gMain.newKeys = keys;
    gMain.newAndRepeatedKeys = keys;
    gMain.callback2();
    ProcessDma3Requests();
    if (gMain.vblankCallback != NULL)
        gMain.vblankCallback();
    gMain.newKeys = 0;
    gMain.newAndRepeatedKeys = 0;
}

TEST("UI RAM: Achievements blank background survives stale VRAM scrolling themes exit and reopen")
{
    const struct FontInfo *savedFonts = gFonts;
    MainCallback savedCallback = gMain.callback2;
    IntrCallback savedVBlank = gMain.vblankCallback;
    SetDefaultFontsPointer();
    SetVBlankCallback(NULL);
    for (u32 visit = 0; visit < 2; visit++)
    {
        DmaFill16(3, 0xFFFF, (void *)BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
        DmaFill16(3, 0xFFFF, (void *)BG_CHAR_ADDR(2), TILE_SIZE_4BPP);
        CB2_InitAchievementsMenuWithCallback(MenuReturnCallback);
        for (u32 frame = 0; frame < 64; frame++)
            TickAchievements(0);
        EXPECT_EQ((bool32)gPaletteFade.active, FALSE);
        ExpectBlankAchievementsBackground();
        for (u32 step = 0; step < 8; step++)
        {
            TickAchievements(DPAD_DOWN);
            for (u32 frame = 0; frame < 8; frame++)
                TickAchievements(0);
        }
        TickAchievements(DPAD_RIGHT);
        TickAchievements(DPAD_LEFT);
        TickAchievements(R_BUTTON);
        TickAchievements(L_BUTTON);
        for (u32 frame = 0; frame < 16; frame++)
            TickAchievements(0);
        ExpectBlankAchievementsBackground();
        TickAchievements(B_BUTTON);
        for (u32 frame = 0; frame < 64 && gMain.callback2 != MenuReturnCallback; frame++)
            TickAchievements(0);
        EXPECT_EQ(gMain.callback2, MenuReturnCallback);
        SetVBlankCallback(NULL);
    }
    ReleaseComfyAnims();
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ClearScheduledBgCopiesToVram();
    SetVBlankCallback(savedVBlank);
    SetMainCallback2(savedCallback);
    gFonts = savedFonts;
}

static const struct BgTemplate sAreaTestBgs[] =
{
    {.bg = 0, .charBaseIndex = 0, .mapBaseIndex = 28},
    {.bg = 1, .charBaseIndex = 1, .mapBaseIndex = 29},
    {.bg = 2, .charBaseIndex = 2, .mapBaseIndex = 30},
    {.bg = 3, .charBaseIndex = 3, .mapBaseIndex = 31},
};

static const struct WindowTemplate sEmptyTestWindows[] = {DUMMY_WIN_TEMPLATE};

static void TickArea(u16 keys)
{
    gMain.newKeys = keys;
    gMain.newAndRepeatedKeys = keys;
    RunTasks();
    AnimateSprites();
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();
    ProcessDma3Requests();
    TransferPlttBuffer();
    gMain.newKeys = 0;
    gMain.newAndRepeatedKeys = 0;
}

static void WaitForAreaScreen(void)
{
    for (u32 frame = 0; frame < 80; frame++)
        TickArea(0);
    EXPECT_EQ((bool32)gPaletteFade.active, FALSE);
}

static void ExpectRenderedUnknownLabel(bool32 unknown)
{
    u32 window;
    for (window = 0; window < WINDOWS_MAX; window++)
    {
        if (gWindows[window].window.bg == 1 && gWindows[window].window.tilemapLeft == 12)
            break;
    }
    EXPECT_LT(window, WINDOWS_MAX);
    EXPECT_EQ(ShouldShowAreaUnknownLabel(), unknown);
    bool32 hasText = FALSE;
    for (u32 pixel = 0; pixel < 10 * 2 * TILE_SIZE_4BPP; pixel++)
    {
        if (!unknown)
            EXPECT_EQ(gWindows[window].tileData[pixel], 0);
        else
            hasText |= gWindows[window].tileData[pixel] != PIXEL_FILL(7);
    }
    if (unknown)
    {
        EXPECT(hasText);
        const u8 colors[] = {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_WHITE, 5};
        const u8 *text = COMPOUND_STRING("AREA UNKNOWN");
        u32 expected = AddWindow(&gWindows[window].window);
        EXPECT_LT(expected, WINDOWS_MAX);
        FillWindowPixelBuffer(expected, PIXEL_FILL(7));
        AddTextPrinterParameterized4(expected, FONT_NORMAL,
            GetStringCenterAlignXOffset(FONT_NORMAL, text, 80), 0, 0, 0,
            colors, TEXT_SKIP_DRAW, text);
        EXPECT_EQ(memcmp(gWindows[window].tileData, gWindows[expected].tileData,
                         10 * 2 * TILE_SIZE_4BPP), 0);
        RemoveWindow(expected);
    }
}

TEST("UI RAM: Pokedex excludes legacy sprite storage only for the time-of-day UI")
{
    EXPECT_EQ(PokedexArea_TestStateSize(), OW_TIME_OF_DAY_ENCOUNTERS ? 4020 : 5568);
}

#if OW_TIME_OF_DAY_ENCOUNTERS
TEST("UI RAM: Pokedex morning-only areas update rendered unknown labels and survive reopen")
{
    const struct FontInfo *savedFonts = gFonts;
    SetDefaultFontsPointer();
    SetVBlankCallback(NULL);
    ResetPaletteFade();
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sAreaTestBgs, ARRAY_COUNT(sAreaTestBgs));
    EXPECT(InitWindows(sEmptyTestWindows));
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(MAP_PETALBURG_CITY);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(MAP_PETALBURG_CITY);
    gSaveBlock1Ptr->pos.x = 16;
    gSaveBlock1Ptr->pos.y = 16;
    gMapHeader = *Overworld_GetMapHeaderByGroupAndId(MAP_GROUP(MAP_PETALBURG_CITY), MAP_NUM(MAP_PETALBURG_CITY));
    u8 screenSwitch = 0;
    for (u32 visit = 0; visit < 2; visit++)
    {
        DisplayPokedexAreaScreen(SPECIES_ARON, &screenSwitch, TIME_MORNING, DEX_SHOW_AREA_SCREEN);
        WaitForAreaScreen();
        ExpectRenderedUnknownLabel(FALSE);
        TickArea(DPAD_DOWN);
        for (u32 frame = 0; frame < 16 && screenSwitch == 0; frame++)
            TickArea(0);
        EXPECT_EQ(screenSwitch, 3);
        EXPECT_EQ(gAreaTimeOfDay, TIME_DAY);
        DisplayPokedexAreaScreen(SPECIES_ARON, &screenSwitch, gAreaTimeOfDay, DEX_UPDATE_AREA_SCREEN);
        WaitForAreaScreen();
        ExpectRenderedUnknownLabel(TRUE);
        TickArea(DPAD_UP);
        for (u32 frame = 0; frame < 16 && screenSwitch == 0; frame++)
            TickArea(0);
        EXPECT_EQ(screenSwitch, 3);
        EXPECT_EQ(gAreaTimeOfDay, TIME_MORNING);
        DisplayPokedexAreaScreen(SPECIES_ARON, &screenSwitch, gAreaTimeOfDay, DEX_UPDATE_AREA_SCREEN);
        WaitForAreaScreen();
        ExpectRenderedUnknownLabel(FALSE);
        TickArea(B_BUTTON);
        for (u32 frame = 0; frame < 80 && screenSwitch == 0; frame++)
            TickArea(0);
        EXPECT_EQ(screenSwitch, 1);
    }
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ClearScheduledBgCopiesToVram();
    DeactivateAllTextPrinters();
    FreeAllWindowBuffers();
    gFonts = savedFonts;
}
#endif
