#include "global.h"
#include "assertf.h"
#include "battle_main.h"
#include "crash_context.h"
#include "main.h"
#include "malloc.h"
#include "overworld.h"
#include "task.h"
#include "test/test.h"

static void Test_BlockStacker(void) {}
static void Test_Pinball(void) {}
static void Test_NamingScreen(void) {}
static void Test_PartyMenu(void) {}
static void Test_ItemMenuFromBattle(void) {}
static void Test_UnknownScreen(void) {}

static void ExpectText(u32 x, u32 y, const char *text)
{
    while (*text)
        EXPECT_EQ(Assertf_TestReadChar(x++, y), *text++);
}

TEST("Crash context: screen changes preserve setter behavior and cover battle storage party naming and minigames")
{
    MainCallback original = gMain.callback2;
    u8 originalState = gMain.state;
    bool32 inBattle = gMain.inBattle;
    const char *originalName = CrashContext_GetScreenName();
    gMain.state = 99;
    SetMainCallback2(Test_BlockStacker);
    EXPECT(gMain.callback2 == Test_BlockStacker);
    EXPECT_EQ(gMain.state, 0);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "BLOCK STACKER"), 0);
    SetMainCallback2(Test_Pinball);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "PINBALL"), 0);
    SetMainCallback2(Test_NamingScreen);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "NAMING SCREEN"), 0);
    SetMainCallback2(BattleMainCB2);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "BATTLE"), 0);
    // Battle menus are still their own screen, not mislabeled as battle.
    gMain.inBattle = TRUE;
    SetMainCallback2(Test_PartyMenu);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "PARTY MENU"), 0);
    SetMainCallback2(Test_ItemMenuFromBattle);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "BAG"), 0);
    SetMainCallback2(CrashContext_TestStorageCallback());
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "PC/STORAGE"), 0);
    gMain.inBattle = inBattle;
    SetMainCallback2Named(original, originalName);
    gMain.state = originalState;
}

TEST("Crash context: stale direct assignments and invalid labels fall back without reading bad memory")
{
    MainCallback original = gMain.callback2;
    u8 originalState = gMain.state;
    bool32 inBattle = gMain.inBattle;
    const char *originalName = CrashContext_GetScreenName();
    gMain.inBattle = FALSE;
    SetMainCallback2(Test_BlockStacker);
    gMain.callback2 = Test_UnknownScreen;
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "UNKNOWN"), 0);
    SetMainCallback2Named(Test_UnknownScreen, (const char *)1);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "UNKNOWN"), 0);
    SetMainCallback2Named(Test_UnknownScreen, (const char *)(ROM_END - 1));
    // If that ROM byte is NUL it may represent an empty label; either way
    // this must not scan past the mapped ROM boundary or reach a reporter.
    const char *name = CrashContext_GetScreenName();
    EXPECT(name != NULL);
    (SetMainCallback2)(Test_UnknownScreen); // Original callable ABI still works.
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "UNKNOWN"), 0);
    gMain.inBattle = inBattle;
    SetMainCallback2Named(original, originalName);
    gMain.state = originalState;
}

TEST("Crash context: field PC and Wish menus are identified without running or reading their UI state")
{
    MainCallback original = gMain.callback2;
    u8 originalState = gMain.state;
    const char *originalName = CrashContext_GetScreenName();
    ResetTasks();
    SetMainCallback2(CB2_Overworld);
    u8 id = CreateTask(CrashContext_TestPokemonPCMenuTask(), 0);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "PC/STORAGE"), 0);
    SetMainCallback2(BattleMainCB2);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "BATTLE"), 0);
    DestroyTask(id);
    SetMainCallback2(CB2_Overworld);
    id = CreateTask(CrashContext_TestPlayerPCMenuTask(), 0);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "PLAYER PC"), 0);
    DestroyTask(id);
    id = CreateTask(CrashContext_TestWishMenuTask(), 0);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "WISH MENU"), 0);
    DestroyTask(id);
    EXPECT_EQ(strcmp(CrashContext_GetScreenName(), "FIELD/MENU"), 0);
    SetMainCallback2Named(original, originalName);
    gMain.state = originalState;
}

TEST("Crash context: Porymap names and IDs render in both headers and invalid map IDs stay bounded")
{
    struct SaveBlock1 *originalSave = gSaveBlock1Ptr;
    struct MapHeader originalHeader = gMapHeader;
    MainCallback original = gMain.callback2;
    u8 originalState = gMain.state;
    const char *originalName = CrashContext_GetScreenName();
    struct SaveBlock1 *save = AllocZeroed(sizeof(*save));
    EXPECT(save != NULL);
    gSaveBlock1Ptr = save;
    // Metadata only checks the layout address, never dereferences it.
    gMapHeader.mapLayout = (const struct MapLayout *)ROM_START;
    save->location.mapGroup = MAP_GROUP(MAP_MAUVILLE_CITY_GAME_CORNER);
    save->location.mapNum = MAP_NUM(MAP_MAUVILLE_CITY_GAME_CORNER);
    u8 group = 0, num = 0;
    const char *name;
    EXPECT(CrashContext_GetMap(&group, &num, &name));
    EXPECT_EQ(group, MAP_GROUP(MAP_MAUVILLE_CITY_GAME_CORNER));
    EXPECT_EQ(num, MAP_NUM(MAP_MAUVILLE_CITY_GAME_CORNER));
    EXPECT_EQ(strcmp(name, "MauvilleCity_GameCorner"), 0);
    SetMainCallback2(Test_Pinball);
    for (u32 fatal = 0; fatal < 2; fatal++)
    {
        Assertf_TestRenderHeader(fatal);
        ExpectText(0, 3, "SCREEN PINBALL");
        ExpectText(0, 4, "MAP 10/3 CB2 ");
        ExpectText(0, 5, "MAUVILLECITY_GAMECORNER");
        EXPECT_EQ(Assertf_TestReadChar(0, 6), ' ');
    }
    // Long room names remain bounded to their own row, with an ellipsis.
    save->location.mapGroup = MAP_GROUP(MAP_ROUTE110_SEASIDE_CYCLING_ROAD_SOUTH_ENTRANCE);
    save->location.mapNum = MAP_NUM(MAP_ROUTE110_SEASIDE_CYCLING_ROAD_SOUTH_ENTRANCE);
    EXPECT(CrashContext_GetMap(&group, &num, &name));
    EXPECT(name != NULL);
    EXPECT(strlen(name) > 30);
    Assertf_TestRenderHeader(TRUE);
    ExpectText(27, 5, "...");
    EXPECT_EQ(Assertf_TestReadChar(0, 6), ' ');
    save->location.mapGroup = -1;
    save->location.mapNum = -1;
    EXPECT(CrashContext_GetMap(&group, &num, &name));
    EXPECT_EQ(group, 255);
    EXPECT_EQ(num, 255);
    EXPECT(name == NULL);
    Assertf_TestRenderHeader(TRUE);
    ExpectText(0, 4, "MAP 255/255 CB2 ");
    ExpectText(0, 5, "UNKNOWN MAP");
    gSaveBlock1Ptr = originalSave;
    gMapHeader = originalHeader;
    SetMainCallback2Named(original, originalName);
    gMain.state = originalState;
    Free(save);
}

TEST("Crash context: null unmapped truncated and ROM save pointers render unavailable without dereferencing")
{
    struct SaveBlock1 *originalSave = gSaveBlock1Ptr;
    struct MapHeader originalHeader = gMapHeader;
    gMapHeader.mapLayout = (const struct MapLayout *)ROM_START;
    const uintptr_t bad[] = {0, 1, EWRAM_END - 4, ROM_START, EWRAM_START + 1};
    for (u32 i = 0; i < ARRAY_COUNT(bad); i++)
    {
        gSaveBlock1Ptr = (struct SaveBlock1 *)bad[i];
        u8 group = 0, num = 0;
        const char *name;
        EXPECT_EQ(CrashContext_GetMap(&group, &num, &name), FALSE);
        EXPECT(name == NULL);
        Assertf_TestRenderHeader(TRUE);
        ExpectText(0, 4, "MAP N/A CB2 ");
        ExpectText(0, 5, "NO MAP LOADED");
    }
    gSaveBlock1Ptr = originalSave;
    gMapHeader.mapLayout = NULL;
    u8 group = 0, num = 0;
    const char *name;
    EXPECT_EQ(CrashContext_GetMap(&group, &num, &name), FALSE);
    gMapHeader = originalHeader;
}

TEST("Crash context: long screen names stay in their row and do not overwrite map or error text")
{
    MainCallback original = gMain.callback2;
    u8 originalState = gMain.state;
    const char *originalName = CrashContext_GetScreenName();
    static const char longName[] = "LONG_DIAGNOSTIC_SCREEN_NAME_WITHOUT_ALIAS";
    SetMainCallback2Named(Test_UnknownScreen, longName);
    Assertf_TestRenderHeader(TRUE);
    ExpectText(0, 3, "SCREEN ");
    for (u32 i = 0; i < 20; i++)
        EXPECT_EQ(Assertf_TestReadChar(7 + i, 3), longName[i]);
    ExpectText(27, 3, "...");
    ExpectText(0, 4, "MAP ");
    EXPECT_EQ(Assertf_TestReadChar(0, 6), ' ');
    SetMainCallback2Named(original, originalName);
    gMain.state = originalState;
}
