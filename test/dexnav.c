#include "global.h"
#include "dexnav.h"
#include "event_data.h"
#include "event_scripts.h"
#include "main.h"
#include "overworld.h"
#include "palette.h"
#include "randomizer.h"
#include "script.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "wild_encounter.h"
#include "test/test.h"

extern const u8 DexNav_Text_Blocked[];

static void SetUpDexNav(u16 map, bool8 tables, bool8 full)
{
    ScriptContext_Init();
    UnlockPlayerFieldControls();
    Randomizer_SetWildModes(tables, full);
    FlagClear(RANDOMIZER_FLAG_TRAINER_MON);
    FlagClear(DN_FLAG_SEARCHING);
    VarSet(DN_VAR_SPECIES, SPECIES_NONE);
    gSaveBlock1Ptr->location.mapGroup = MAP_GROUP(map);
    gSaveBlock1Ptr->location.mapNum = MAP_NUM(map);
    gPaletteFade.active = FALSE;
}

static void ClearDexNavMessage(void)
{
    ScriptContext_Init();
    UnlockPlayerFieldControls();
}

static u32 CountActiveTasks(void)
{
    u32 count = 0;

    for (u32 i = 0; i < NUM_TASKS; i++)
        if (gTasks[i].isActive)
            count++;
    return count;
}

TEST("DexNav blocked message uses the requested wording in a normal dismissible message box")
{
    struct ScriptContext ctx;
    static const u8 expected[] = _("You can't use the DexNav\nright now.");

    EXPECT_EQ(StringCompare(DexNav_Text_Blocked, expected), 0);
    EXPECT(GetStringWidth(FONT_NORMAL, DexNav_Text_Blocked, 0) <= 216);
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE | SCREFF_SAVE,
        EventScript_DexNavBlocked, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)DexNav_Text_Blocked);
}

TEST("DexNav menu and shortcut share the intentional randomizer block")
{
    bool8 tables, full;

    PARAMETRIZE { tables = FALSE; full = FALSE; }
    PARAMETRIZE { tables = TRUE; full = FALSE; }
    PARAMETRIZE { tables = FALSE; full = TRUE; }
    SetUpDexNav(MAP_ROUTE101, tables, full);
    EXPECT_EQ(MapHasNoEncounterData(), FALSE);
    EXPECT_EQ(DexNav_IsBlocked(), tables || full);
}

TEST("DexNav shortcut shows the blocked message without creating a search task")
{
    bool8 tables;
    u32 tasks;

    PARAMETRIZE { tables = FALSE; }
    PARAMETRIZE { tables = TRUE; }
    SetUpDexNav(MAP_ROUTE101, tables, !tables);
    VarSet(DN_VAR_SPECIES, SPECIES_POOCHYENA);
    tasks = CountActiveTasks();
    EXPECT_EQ(TryStartDexNavSearch(), TRUE);
    EXPECT_EQ(ScriptContext_IsEnabled(), TRUE);
    EXPECT_EQ(ArePlayerFieldControlsLocked(), TRUE);
    EXPECT_EQ(CountActiveTasks(), tasks);
    EXPECT_EQ(FlagGet(DN_FLAG_SEARCHING), FALSE);
    EXPECT_EQ(VarGet(DN_VAR_SPECIES), SPECIES_POOCHYENA);
    ClearDexNavMessage();
}

TEST("DexNav maps without encounter data show the same blocked message")
{
    SetUpDexNav(MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB, FALSE, FALSE);
    EXPECT_EQ(MapHasNoEncounterData(), TRUE);
    EXPECT_EQ(DexNav_IsBlocked(), TRUE);
    EXPECT_EQ(TryStartDexNavSearch(), TRUE);
    EXPECT_EQ(ScriptContext_IsEnabled(), TRUE);
    EXPECT_EQ(FlagGet(DN_FLAG_SEARCHING), FALSE);
    ClearDexNavMessage();
}

TEST("DexNav shortcut remains silent with no registered species when use is allowed")
{
    SetUpDexNav(MAP_ROUTE101, FALSE, FALSE);
    EXPECT_EQ(DexNav_IsBlocked(), FALSE);
    EXPECT_EQ(TryStartDexNavSearch(), FALSE);
    EXPECT_EQ(ScriptContext_IsEnabled(), FALSE);
    EXPECT_EQ(ArePlayerFieldControlsLocked(), FALSE);
}

TEST("DexNav trainer randomization alone does not block the menu or search shortcut")
{
    SetUpDexNav(MAP_ROUTE101, FALSE, FALSE);
    FlagSet(RANDOMIZER_FLAG_TRAINER_MON);
    EXPECT_EQ(DexNav_IsBlocked(), FALSE);
    EXPECT_EQ(TryStartDexNavSearch(), FALSE);
    EXPECT_EQ(ScriptContext_IsEnabled(), FALSE);
}

TEST("DexNav blocked fallback waits for the fade and resumes the message after returning to the field")
{
    u16 map;
    bool8 tables, full;
    u8 taskId;
    MainCallback previousCallback = gMain.callback2;

    PARAMETRIZE { map = MAP_ROUTE101; tables = TRUE; full = FALSE; }
    PARAMETRIZE { map = MAP_ROUTE101; tables = FALSE; full = TRUE; }
    PARAMETRIZE { map = MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB; tables = FALSE; full = FALSE; }
    SetUpDexNav(map, tables, full);
    taskId = CreateTask(Task_OpenDexNavFromStartMenu, 0);
    gPaletteFade.active = TRUE;
    Task_OpenDexNavFromStartMenu(taskId);
    EXPECT_EQ(gTasks[taskId].isActive, TRUE);
    EXPECT_EQ(ScriptContext_IsEnabled(), FALSE);
    EXPECT_EQ(gMain.callback2, previousCallback);

    gPaletteFade.active = FALSE;
    Task_OpenDexNavFromStartMenu(taskId);
    EXPECT_EQ(gTasks[taskId].isActive, FALSE);
    EXPECT_EQ(gMain.callback2, CB2_ReturnToFieldContinueScript);
    EXPECT_EQ(ArePlayerFieldControlsLocked(), TRUE);
    // The script waits until the normal return-to-field fade enables it again.
    EXPECT_EQ(ScriptContext_IsEnabled(), FALSE);
    SetMainCallback2(previousCallback);
    ClearDexNavMessage();
}
