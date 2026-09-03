#include "global.h"
#include "achievements.h"
#include "comfy_anim.h"
#include "battle_pike.h"
#include "battle_pyramid.h"
#include "battle_pyramid_bag.h"
#include "bg.h"
#include "debug.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "event_object_lock.h"
#include "event_scripts.h"
#include "fieldmap.h"
#include "field_effect.h"
#include "field_player_avatar.h"
#include "field_specials.h"
#include "field_weather.h"
#include "field_screen_effect.h"
#include "frontier_pass.h"
#include "frontier_util.h"
#include "gpu_regs.h"
#include "international_string_util.h"
#include "item_menu.h"
#include "link.h"
#include "load_save.h"
#include "main.h"
#include "menu.h"
#include "money.h"
#include "new_game.h"
#include "option_menu.h"
#include "overworld.h"
#include "palette.h"
#include "party_menu.h"
#include "pokedex.h"
#include "pokenav.h"
#include "safari_zone.h"
#include "save.h"
#include "scanline_effect.h"
#include "script.h"
#include "sound.h"
#include "start_menu.h"
#include "strings.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "text_window.h"
#include "trainer_card.h"
#include "window.h"
#include "union_room.h"
#include "dexnav.h"
#include "wild_encounter.h"
#include "caps.h"
#include "constants/battle_frontier.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "rtc.h"
#include "comfy_anim.h"

// Menu actions
enum
{
    MENU_ACTION_POKEDEX,
    MENU_ACTION_POKEMON,
    MENU_ACTION_BAG,
    MENU_ACTION_POKENAV,
    MENU_ACTION_PLAYER,
    MENU_ACTION_SAVE,
    MENU_ACTION_OPTION,
    MENU_ACTION_CONFIG,
    MENU_ACTION_ACHIEVEMENTS,
    MENU_ACTION_RETIRE_SAFARI,
    MENU_ACTION_PLAYER_LINK,
    MENU_ACTION_REST_FRONTIER,
    MENU_ACTION_RETIRE_FRONTIER,
    MENU_ACTION_PYRAMID_BAG,
    MENU_ACTION_DEBUG,
    MENU_ACTION_DEXNAV,
};

// Save status
enum
{
    SAVE_IN_PROGRESS,
    SAVE_SUCCESS,
    SAVE_CANCELED,
    SAVE_ERROR
};

// IWRAM common
COMMON_DATA bool8 (*gMenuCallback)(void) = NULL;

// EWRAM
EWRAM_DATA static u8 sSafariBallsWindowId = 0;
EWRAM_DATA static u8 sStartClockWindowId = 0;
EWRAM_DATA static u8 sBattlePyramidFloorWindowId = 0;
EWRAM_DATA static u8 sStartMenuCursorPos = 0;
EWRAM_DATA static u8 sNumStartMenuActions = 0;
EWRAM_DATA static u8 sCurrentStartMenuActions[9] = {0};
EWRAM_DATA static s8 sInitStartMenuData[2] = {0};
EWRAM_DATA static bool8 sWishMenuReorderActive = FALSE;
EWRAM_DATA static u8 sWishMenuOrderBackup[9] = {0};
EWRAM_DATA static u8 sWishMenuReorderStartPos = 0;

// WISHMENU order persistence. Summary/Party themes currently own future[64..67],
// so this feature starts at 68 and keeps the frozen HLW save extension size intact.
#define WISH_MENU_ORDER_SAVE_TAG0_OFFSET      68
#define WISH_MENU_ORDER_SAVE_TAG1_OFFSET      69
#define WISH_MENU_ORDER_SAVE_VERSION_OFFSET   70
#define WISH_MENU_ORDER_SAVE_COUNT_OFFSET     71
#define WISH_MENU_ORDER_SAVE_DATA_OFFSET      72
#define WISH_MENU_ORDER_SAVE_TAG0             0x57 // 'W'
#define WISH_MENU_ORDER_SAVE_TAG1             0x4D // 'M'
#define WISH_MENU_ORDER_SAVE_VERSION          1

// WISHMENU adds a ninth entry to the normal Start Menu. The stock Start Menu
// window assumes 16 px per entry plus two extra interior tile rows; with nine
// entries that makes the frame extend two tiles past the bottom of the GBA
// screen. Only the WISHMENU layout uses this compact spacing.
#define WISH_START_MENU_WINDOW_ACTIONS 8
#define WISH_START_MENU_TEXT_Y         5
#define WISH_START_MENU_ROW_HEIGHT     15


EWRAM_DATA static u8 (*sSaveDialogCallback)(void) = NULL;
EWRAM_DATA static u8 sSaveDialogTimer = 0;
EWRAM_DATA static bool8 sSavingComplete = FALSE;
EWRAM_DATA static u8 sSaveInfoWindowId = 0;

// Menu action callbacks
static bool8 StartMenuPokedexCallback(void);
static bool8 StartMenuPokemonCallback(void);
static bool8 StartMenuBagCallback(void);
static bool8 StartMenuPokeNavCallback(void);
static bool8 StartMenuPlayerNameCallback(void);
static bool8 StartMenuSaveCallback(void);
static bool8 StartMenuOptionCallback(void);
static bool8 StartMenuConfigCallback(void);
static bool8 StartMenuAchievementsCallback(void);
static bool8 StartMenuSafariZoneRetireCallback(void);
static bool8 StartMenuLinkModePlayerNameCallback(void);
static bool8 StartMenuBattlePyramidRetireCallback(void);
static bool8 StartMenuBattlePyramidBagCallback(void);
static bool8 StartMenuDebugCallback(void);
static bool8 StartMenuDexNavCallback(void);

// Menu callbacks
static bool8 SaveStartCallback(void);
static bool8 SaveCallback(void);
static bool8 BattlePyramidRetireStartCallback(void);
static bool8 BattlePyramidRetireReturnCallback(void);
static bool8 BattlePyramidRetireCallback(void);
static bool8 HandleStartMenuInput(void);

// Save dialog callbacks
static u8 SaveConfirmSaveCallback(void);
static u8 SaveYesNoCallback(void);
static u8 SaveConfirmInputCallback(void);
static u8 SaveFileExistsCallback(void);
static u8 SaveConfirmOverwriteDefaultNoCallback(void);
static u8 SaveConfirmOverwriteCallback(void);
static u8 SaveOverwriteInputCallback(void);
static u8 SaveSavingMessageCallback(void);
static u8 SaveDoSaveCallback(void);
static u8 SaveSuccessCallback(void);
static u8 SaveReturnSuccessCallback(void);
static u8 SaveErrorCallback(void);
static u8 SaveReturnErrorCallback(void);
static u8 BattlePyramidConfirmRetireCallback(void);
static u8 BattlePyramidRetireYesNoCallback(void);
static u8 BattlePyramidRetireInputCallback(void);

// Task callbacks
static void StartMenuTask(u8 taskId);
static void SaveGameTask(u8 taskId);
static void Task_SaveAfterLinkBattle(u8 taskId);
static void Task_WaitForBattleTowerLinkSave(u8 taskId);
static bool8 FieldCB_ReturnToFieldStartMenu(void);

static u16 sOriginalColor5 = 0;
static u16 sOriginalColor6 = 0;
static u16 sOriginalColor5Unfaded = 0;
static u16 sOriginalColor6Unfaded = 0;

// Reorder feedback: the grabbed WISHMENU entry and its selector arrow use a
// muted gray foreground with a darker shadow until the new position is confirmed.
static const u8 sWishMenuReorderTextColors[] =
{
    TEXT_COLOR_TRANSPARENT,
    TEXT_COLOR_LIGHT_GRAY,
    TEXT_COLOR_DARK_GRAY,
};

static const struct WindowTemplate sWindowTemplate_SafariBalls = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 5,
    .width = 9,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x8
};

static const struct WindowTemplate sWindowTemplate_StartClock = {
    .bg = 0, 
    .tilemapLeft = 1, 
    .tilemapTop = 1, 
    .width = 16,
    .height = 8,
    .paletteNum = 15,
    .baseBlock = 0x30
};

// Compact lower-left profile panel used only by the full 9-entry WISHMENU.
// Three lines keep the player sprite and most of the map visible.
static const struct WindowTemplate sWindowTemplate_StartClockWish = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 14,
    .width = 18,
    .height = 5,
    .paletteNum = 15,
    .baseBlock = 0x30
};

static const u8 *const sPyramidFloorNames[FRONTIER_STAGES_PER_CHALLENGE + 1] =
{
    gText_Floor1,
    gText_Floor2,
    gText_Floor3,
    gText_Floor4,
    gText_Floor5,
    gText_Floor6,
    gText_Floor7,
    gText_Peak
};

static const struct WindowTemplate sWindowTemplate_PyramidFloor = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 5,
    .width = 10,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x8
};

static const struct WindowTemplate sWindowTemplate_PyramidPeak = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 5,
    .width = 12,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x8
};

static const u8 sText_MenuDebug[] = _("WISHMENU");
static const u8 sText_MenuConfig[] = _("CONFIG");
static const u8 sText_MenuAchievements[] = _("TROPHIES");

static const struct MenuAction sStartMenuItems[] =
{
    [MENU_ACTION_POKEDEX]         = {gText_MenuPokedex, {.u8_void = StartMenuPokedexCallback}},
    [MENU_ACTION_POKEMON]         = {gText_MenuPokemon, {.u8_void = StartMenuPokemonCallback}},
    [MENU_ACTION_BAG]             = {gText_MenuBag,     {.u8_void = StartMenuBagCallback}},
    [MENU_ACTION_POKENAV]         = {gText_MenuPokenav, {.u8_void = StartMenuPokeNavCallback}},
    [MENU_ACTION_PLAYER]          = {gText_MenuPlayer,  {.u8_void = StartMenuPlayerNameCallback}},
    [MENU_ACTION_SAVE]            = {gText_MenuSave,    {.u8_void = StartMenuSaveCallback}},
    [MENU_ACTION_OPTION]          = {gText_MenuOption,  {.u8_void = StartMenuOptionCallback}},
    [MENU_ACTION_CONFIG]          = {sText_MenuConfig,  {.u8_void = StartMenuConfigCallback}},
    [MENU_ACTION_ACHIEVEMENTS]   = {sText_MenuAchievements, {.u8_void = StartMenuAchievementsCallback}},
    [MENU_ACTION_RETIRE_SAFARI]   = {gText_MenuRetire,  {.u8_void = StartMenuSafariZoneRetireCallback}},
    [MENU_ACTION_PLAYER_LINK]     = {gText_MenuPlayer,  {.u8_void = StartMenuLinkModePlayerNameCallback}},
    [MENU_ACTION_REST_FRONTIER]   = {gText_MenuRest,    {.u8_void = StartMenuSaveCallback}},
    [MENU_ACTION_RETIRE_FRONTIER] = {gText_MenuRetire,  {.u8_void = StartMenuBattlePyramidRetireCallback}},
    [MENU_ACTION_PYRAMID_BAG]     = {gText_MenuBag,     {.u8_void = StartMenuBattlePyramidBagCallback}},
    [MENU_ACTION_DEBUG]           = {sText_MenuDebug,   {.u8_void = StartMenuDebugCallback}},
    [MENU_ACTION_DEXNAV]          = {gText_MenuDexNav,  {.u8_void = StartMenuDexNavCallback}},
};

static const struct BgTemplate sBgTemplates_LinkBattleSave[] =
{
    {
        .bg = 0,
        .charBaseIndex = 2,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    }
};

static const struct WindowTemplate sWindowTemplates_LinkBattleSave[] =
{
    {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 26,
        .height = 4,
        .paletteNum = 15,
        .baseBlock = 0x194
    },
    DUMMY_WIN_TEMPLATE
};

static const struct WindowTemplate sSaveInfoWindowTemplate = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 1,
    .width = 16,
    .height = 10,
    .paletteNum = 15,
    .baseBlock = 8
};

// Local functions
static bool8 IsWishMenuStartLayout(void);
static bool8 IsWishMenuSavedOrderValid(const u8 *order);
static void LoadWishMenuOrderFromSave(void);
static void SaveWishMenuOrderToSave(void);
static void RedrawWishMenuActions(void);
static void DrawWishMenuReorderHighlight(void);
static void BeginWishMenuReorder(void);
static void MoveWishMenuReorder(s8 direction);
static void FinishWishMenuReorder(bool8 saveChanges);
static void BuildStartMenuActions(void);
static void AddStartMenuAction(u8 action);
static void BuildNormalStartMenu(void);
static void BuildDebugStartMenu(void);
static void BuildSafariZoneStartMenu(void);
static void BuildLinkModeStartMenu(void);
static void BuildUnionRoomStartMenu(void);
static void BuildBattlePikeStartMenu(void);
static void BuildBattlePyramidStartMenu(void);
static void BuildMultiPartnerRoomStartMenu(void);
static void ShowSafariBallsWindow(void);
static void ShowPyramidFloorWindow(void);
static void RemoveExtraStartMenuWindows(void);
static bool32 PrintStartMenuActions(s8 *pIndex, u32 count);
static bool32 InitStartMenuStep(void);
static void InitStartMenu(void);
static void CreateStartMenuTask(TaskFunc followupFunc);
static void InitSave(void);
static u8 RunSaveCallback(void);
static void ShowSaveMessage(const u8 *message, u8 (*saveCallback)(void));
static void HideSaveMessageWindow(void);
static void HideSaveInfoWindow(void);
static void SaveStartTimer(void);
static bool8 SaveSuccesTimer(void);
static bool8 SaveErrorTimer(void);
static void InitBattlePyramidRetire(void);
static void VBlankCB_LinkBattleSave(void);
static bool32 InitSaveWindowAfterLinkBattle(u8 *par1);
static void CB2_SaveAfterLinkBattle(void);
static void ShowSaveInfoWindow(void);
static void RemoveSaveInfoWindow(void);
static void HideStartMenuWindow(void);
static void HideStartMenuDebug(void);
static void ShowTimeWindow(void);

void SetDexPokemonPokenavFlags(void) // unused
{
    FlagSet(FLAG_SYS_POKEDEX_GET);
    FlagSet(FLAG_SYS_POKEMON_GET);
    FlagSet(FLAG_SYS_POKENAV_GET);
}

static bool8 IsWishMenuStartLayout(void)
{
    u8 i;

    // The custom order can move WISHMENU away from slot 0, so detecting the
    // layout by "first action == DEBUG" would stop working after the first
    // reorder. The full 9-entry menu is unique; require nine entries and the
    // WISHMENU action anywhere in the list.
    if (sNumStartMenuActions != ARRAY_COUNT(sCurrentStartMenuActions))
        return FALSE;

    for (i = 0; i < sNumStartMenuActions; i++)
    {
        if (sCurrentStartMenuActions[i] == MENU_ACTION_DEBUG)
            return TRUE;
    }
    return FALSE;
}

static bool8 IsWishMenuSavedOrderValid(const u8 *order)
{
    u8 i;
    u8 j;

    if (!IsWishMenuStartLayout())
        return FALSE;

    // The saved list must be an exact permutation of the nine actions that are
    // currently available. This also makes old/incompatible saves fall back to
    // the normal order automatically if the menu contents ever change.
    for (i = 0; i < sNumStartMenuActions; i++)
    {
        bool8 found = FALSE;

        for (j = 0; j < sNumStartMenuActions; j++)
        {
            if (order[i] == sCurrentStartMenuActions[j])
            {
                found = TRUE;
                break;
            }
        }
        if (!found)
            return FALSE;

        for (j = i + 1; j < sNumStartMenuActions; j++)
        {
            if (order[i] == order[j])
                return FALSE;
        }
    }
    return TRUE;
}

static void LoadWishMenuOrderFromSave(void)
{
    struct HLWSaveExtension *ext;
    u8 savedOrder[ARRAY_COUNT(sCurrentStartMenuActions)];

    if (!IsWishMenuStartLayout() || gSaveBlock1Ptr == NULL)
        return;

    ext = &gSaveBlock1Ptr->hlwSave;
    if (ext->future[WISH_MENU_ORDER_SAVE_TAG0_OFFSET] != WISH_MENU_ORDER_SAVE_TAG0
     || ext->future[WISH_MENU_ORDER_SAVE_TAG1_OFFSET] != WISH_MENU_ORDER_SAVE_TAG1
     || ext->future[WISH_MENU_ORDER_SAVE_VERSION_OFFSET] != WISH_MENU_ORDER_SAVE_VERSION
     || ext->future[WISH_MENU_ORDER_SAVE_COUNT_OFFSET] != sNumStartMenuActions)
        return;

    memcpy(savedOrder,
           &ext->future[WISH_MENU_ORDER_SAVE_DATA_OFFSET],
           sizeof(savedOrder));

    if (IsWishMenuSavedOrderValid(savedOrder))
        memcpy(sCurrentStartMenuActions, savedOrder, sizeof(savedOrder));
}

static void SaveWishMenuOrderToSave(void)
{
    struct HLWSaveExtension *ext;

    if (!IsWishMenuStartLayout() || gSaveBlock1Ptr == NULL)
        return;

    ext = &gSaveBlock1Ptr->hlwSave;
    ext->future[WISH_MENU_ORDER_SAVE_TAG0_OFFSET] = WISH_MENU_ORDER_SAVE_TAG0;
    ext->future[WISH_MENU_ORDER_SAVE_TAG1_OFFSET] = WISH_MENU_ORDER_SAVE_TAG1;
    ext->future[WISH_MENU_ORDER_SAVE_VERSION_OFFSET] = WISH_MENU_ORDER_SAVE_VERSION;
    ext->future[WISH_MENU_ORDER_SAVE_COUNT_OFFSET] = sNumStartMenuActions;
    memcpy(&ext->future[WISH_MENU_ORDER_SAVE_DATA_OFFSET],
           sCurrentStartMenuActions,
           ARRAY_COUNT(sCurrentStartMenuActions));
}

static void RedrawWishMenuActions(void)
{
    s8 index = 0;

    if (!IsWishMenuStartLayout())
        return;

    FillWindowPixelBuffer(GetStartMenuWindowId(), PIXEL_FILL(1));
    PrintStartMenuActions(&index, sNumStartMenuActions);
    sStartMenuCursorPos = InitMenuNormal(GetStartMenuWindowId(), FONT_NORMAL, 0,
                                         WISH_START_MENU_TEXT_Y, WISH_START_MENU_ROW_HEIGHT,
                                         sNumStartMenuActions, sStartMenuCursorPos);

    if (sWishMenuReorderActive)
        DrawWishMenuReorderHighlight();

    CopyWindowToVram(GetStartMenuWindowId(), COPYWIN_GFX);
}

static void DrawWishMenuReorderHighlight(void)
{
    u8 y;
    u16 rowWidth;

    if (!sWishMenuReorderActive || !IsWishMenuStartLayout())
        return;

    y = WISH_START_MENU_TEXT_Y + sStartMenuCursorPos * WISH_START_MENU_ROW_HEIGHT;
    rowWidth = GetWindowAttribute(GetStartMenuWindowId(), WINDOW_WIDTH) * 8;

    // Clear the normal white cursor + current row, then redraw only the grabbed
    // entry in gray. This makes it obvious that SELECT has entered "move" mode.
    FillWindowPixelRect(GetStartMenuWindowId(), PIXEL_FILL(1), 0, y,
                        rowWidth, WISH_START_MENU_ROW_HEIGHT);

    AddTextPrinterParameterized3(GetStartMenuWindowId(), FONT_NORMAL,
                                 0, y, sWishMenuReorderTextColors, 0,
                                 gText_SelectorArrow3);

    StringExpandPlaceholders(gStringVar4,
                             sStartMenuItems[sCurrentStartMenuActions[sStartMenuCursorPos]].text);
    AddTextPrinterParameterized3(GetStartMenuWindowId(), FONT_NORMAL,
                                 8, y, sWishMenuReorderTextColors, 0,
                                 gStringVar4);
}

static void BeginWishMenuReorder(void)
{
    if (!IsWishMenuStartLayout() || sWishMenuReorderActive)
        return;

    memcpy(sWishMenuOrderBackup,
           sCurrentStartMenuActions,
           ARRAY_COUNT(sCurrentStartMenuActions));
    sWishMenuReorderStartPos = sStartMenuCursorPos;
    sWishMenuReorderActive = TRUE;
    PlaySE(SE_SELECT);
    RedrawWishMenuActions();
}

static void MoveWishMenuReorder(s8 direction)
{
    s8 oldPos;
    s8 newPos;
    u8 action;

    if (!sWishMenuReorderActive)
        return;

    oldPos = sStartMenuCursorPos;
    newPos = oldPos + direction;
    if (newPos < 0)
        newPos = sNumStartMenuActions - 1;
    else if (newPos >= sNumStartMenuActions)
        newPos = 0;

    action = sCurrentStartMenuActions[oldPos];
    sCurrentStartMenuActions[oldPos] = sCurrentStartMenuActions[newPos];
    sCurrentStartMenuActions[newPos] = action;
    sStartMenuCursorPos = newPos;
    PlaySE(SE_SELECT);
    RedrawWishMenuActions();
}

static void FinishWishMenuReorder(bool8 saveChanges)
{
    if (!sWishMenuReorderActive)
        return;

    if (saveChanges)
    {
        SaveWishMenuOrderToSave();
        PlaySE(SE_SELECT);
    }
    else
    {
        memcpy(sCurrentStartMenuActions,
               sWishMenuOrderBackup,
               ARRAY_COUNT(sCurrentStartMenuActions));
        sStartMenuCursorPos = sWishMenuReorderStartPos;
        PlaySE(SE_SELECT);
    }

    sWishMenuReorderActive = FALSE;
    RedrawWishMenuActions();
}

static void BuildStartMenuActions(void)
{
    sNumStartMenuActions = 0;

    if (IsOverworldLinkActive() == TRUE)
    {
        BuildLinkModeStartMenu();
    }
    else if (InUnionRoom() == TRUE)
    {
        BuildUnionRoomStartMenu();
    }
    else if (GetSafariZoneFlag() == TRUE)
    {
        BuildSafariZoneStartMenu();
    }
    else if (InBattlePike())
    {
        BuildBattlePikeStartMenu();
    }
    else if (CurrentBattlePyramidLocation() != PYRAMID_LOCATION_NONE)
    {
        BuildBattlePyramidStartMenu();
    }
    else if (InMultiPartnerRoom())
    {
        BuildMultiPartnerRoomStartMenu();
    }
    else
    {
        if (DEBUG_OVERWORLD_MENU == TRUE && DEBUG_OVERWORLD_IN_MENU == TRUE)
        {
            if (gSaveBlock2Ptr->optionsDebugMenu == TRUE)
            {
                FlagSet(FLAG_UNUSED_0x275);
                BuildDebugStartMenu();
            }
            else
            {
                FlagClear(FLAG_UNUSED_0x275);
                BuildNormalStartMenu();
            }
        }
        else
        {
            BuildNormalStartMenu();
        }
    }

    LoadWishMenuOrderFromSave();
}

static void AddStartMenuAction(u8 action)
{
    AppendToList(sCurrentStartMenuActions, &sNumStartMenuActions, action);
}

static void BuildNormalStartMenu(void)
{
    if (FlagGet(FLAG_SYS_POKEDEX_GET) == TRUE)
        AddStartMenuAction(MENU_ACTION_POKEDEX);

    if (FlagGet(FLAG_SYS_POKEMON_GET) == TRUE)
        AddStartMenuAction(MENU_ACTION_POKEMON);

    AddStartMenuAction(MENU_ACTION_BAG);

    // DEXNAV AQUI! (baseado nas flags que você setou)
    if (FlagGet(DN_FLAG_DEXNAV_GET) == TRUE)   // <-- USA A FLAG DO DEXNAV
        AddStartMenuAction(MENU_ACTION_DEXNAV);

    // POKENAV (se quiser manter, mas você disse que não tem)
    // if (FlagGet(FLAG_SYS_POKENAV_GET) == TRUE)
    //     AddStartMenuAction(MENU_ACTION_POKENAV);

    AddStartMenuAction(MENU_ACTION_PLAYER);
    AddStartMenuAction(MENU_ACTION_SAVE);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}
static void BuildDebugStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_DEBUG);
    BuildNormalStartMenu();
}

static void BuildSafariZoneStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_RETIRE_SAFARI);
    AddStartMenuAction(MENU_ACTION_POKEDEX);
    AddStartMenuAction(MENU_ACTION_POKEMON);
    AddStartMenuAction(MENU_ACTION_BAG);
    AddStartMenuAction(MENU_ACTION_PLAYER);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}

static void BuildLinkModeStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_POKEMON);
    AddStartMenuAction(MENU_ACTION_BAG);

    if (FlagGet(FLAG_SYS_POKENAV_GET) == TRUE)
    {
        AddStartMenuAction(MENU_ACTION_POKENAV);
    }

    AddStartMenuAction(MENU_ACTION_PLAYER_LINK);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}

static void BuildUnionRoomStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_POKEMON);
    AddStartMenuAction(MENU_ACTION_BAG);

    if (FlagGet(FLAG_SYS_POKENAV_GET) == TRUE)
    {
        AddStartMenuAction(MENU_ACTION_POKENAV);
    }

    AddStartMenuAction(MENU_ACTION_PLAYER);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}

static void BuildBattlePikeStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_POKEDEX);
    AddStartMenuAction(MENU_ACTION_POKEMON);
    AddStartMenuAction(MENU_ACTION_PLAYER);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}

static void BuildBattlePyramidStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_POKEMON);
    AddStartMenuAction(MENU_ACTION_PYRAMID_BAG);
    AddStartMenuAction(MENU_ACTION_PLAYER);
    AddStartMenuAction(MENU_ACTION_REST_FRONTIER);
    AddStartMenuAction(MENU_ACTION_RETIRE_FRONTIER);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}

static void BuildMultiPartnerRoomStartMenu(void)
{
    AddStartMenuAction(MENU_ACTION_POKEMON);
    AddStartMenuAction(MENU_ACTION_PLAYER);
    AddStartMenuAction(MENU_ACTION_OPTION);
    AddStartMenuAction(MENU_ACTION_CONFIG);
    // Temporarily disabled to reserve a start-menu slot for CONFIG.
    // AddStartMenuAction(MENU_ACTION_ACHIEVEMENTS);
}

static void ShowSafariBallsWindow(void)
{
    sSafariBallsWindowId = AddWindow(&sWindowTemplate_SafariBalls);
    PutWindowTilemap(sSafariBallsWindowId);
    DrawStdWindowFrame(sSafariBallsWindowId, FALSE);
    ConvertIntToDecimalStringN(gStringVar1, gNumSafariBalls, STR_CONV_MODE_RIGHT_ALIGN, 2);
    StringExpandPlaceholders(gStringVar4, gText_SafariBallStock);
    AddTextPrinterParameterized(sSafariBallsWindowId, FONT_NORMAL, gStringVar4, 0, 1, TEXT_SKIP_DRAW, NULL);
    CopyWindowToVram(sSafariBallsWindowId, COPYWIN_GFX);
}

static void ShowPyramidFloorWindow(void)
{
    if (gSaveBlock2Ptr->frontier.curChallengeBattleNum == FRONTIER_STAGES_PER_CHALLENGE)
        sBattlePyramidFloorWindowId = AddWindow(&sWindowTemplate_PyramidPeak);
    else
        sBattlePyramidFloorWindowId = AddWindow(&sWindowTemplate_PyramidFloor);

    PutWindowTilemap(sBattlePyramidFloorWindowId);
    DrawStdWindowFrame(sBattlePyramidFloorWindowId, FALSE);
    StringCopy(gStringVar1, sPyramidFloorNames[gSaveBlock2Ptr->frontier.curChallengeBattleNum]);
    StringExpandPlaceholders(gStringVar4, gText_BattlePyramidFloor);
    AddTextPrinterParameterized(sBattlePyramidFloorWindowId, FONT_NORMAL, gStringVar4, 0, 1, TEXT_SKIP_DRAW, NULL);
    CopyWindowToVram(sBattlePyramidFloorWindowId, COPYWIN_GFX);
}

static const u8 sText_Name[] = _("NAME:  ");
static const u8 sText_LevelCapPrefix[] = _("LEVEL CAP:  ");
static const u8 sText_MoneyPrefix[] = _("MONEY:  ¥ ");

static const u8 sText_Saturday[] = _("Saturday,");
static const u8 sText_Sunday[] = _("Sunday,");
static const u8 sText_Monday[] = _("Monday,");
static const u8 sText_Tuesday[] = _("Tuesday,");
static const u8 sText_Wednesday[] = _("Wednesday,");
static const u8 sText_Thursday[] = _("Thursday,");
static const u8 sText_Friday[] = _("Friday,");

static const u8 sText_Sabado[] = _("Sabado,");
static const u8 sText_Domingo[] = _("Domingo,");
static const u8 sText_Lunes[] = _("Lunes,");
static const u8 sText_Martes[] = _("Martes,");
static const u8 sText_Miercoles[] = _("Miercoles,");
static const u8 sText_Jueves[] = _("Jueves,");
static const u8 sText_Viernes[] = _("Viernes,");

static const u8 *const sDayNameStringsTableEnglish[7] = {
    sText_Saturday,
    sText_Sunday,
    sText_Monday,
    sText_Tuesday,
    sText_Wednesday,
    sText_Thursday,
    sText_Friday,
};

static const u8 *const sDayNameStringsTableSpanish[7] = {
    sText_Sabado,
    sText_Domingo,
    sText_Lunes,
    sText_Martes,
    sText_Miercoles,
    sText_Jueves,
    sText_Viernes,
};

static const u8 *GetLocalizedDayName(u8 day)
{
    if (gGameLanguage == LANGUAGE_SPANISH)
        return sDayNameStringsTableSpanish[day % 7];

    return sDayNameStringsTableEnglish[day % 7];
}

static void Build12HourTimeString(u8 *dest)
{
    const u8 *suffix;
    u8 *ptr;
    u8 convertedHours;

    if (gLocalTime.hours < 12)
    {
        if (gLocalTime.hours == 0)
            convertedHours = 12;
        else
            convertedHours = gLocalTime.hours;
        suffix = gText_AM;
    }
    else if (gLocalTime.hours == 12)
    {
        convertedHours = 12;
        suffix = gText_PM;
    }
    else
    {
        convertedHours = gLocalTime.hours - 12;
        suffix = gText_PM;
    }

    ptr = ConvertIntToDecimalStringN(dest, convertedHours, STR_CONV_MODE_LEFT_ALIGN, 2);
    *ptr++ = CHAR_COLON;
    ptr = ConvertIntToDecimalStringN(ptr, gLocalTime.minutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    ptr = StringAppend(ptr, gText_Space);
    ptr = StringAppend(ptr, suffix);
    *ptr = EOS;
}

static void ShowTimeWindow(void)
{
    u8 y;
    u8 *ptr;
    bool8 showLevelCap = (B_EXP_CAP_TYPE != EXP_CAP_NONE && gSaveBlock2Ptr->optionsLevelCaps == OPTIONS_LEVELCAPS_ON);

    if (IsWishMenuStartLayout())
    {
        // Compact three-line profile panel at the bottom-left:
        //   ZENNO Sunday, 10:10 PM
        //   MONEY: ¥ 999999
        //   LEVEL CAP: 100
        // Keeping the day/time after the name frees the center of the map and
        // stops the Start Menu from covering the player sprite.
        sStartClockWindowId = AddWindow(&sWindowTemplate_StartClockWish);
        PutWindowTilemap(sStartClockWindowId);
        DrawStdWindowFrame(sStartClockWindowId, FALSE);

        y = 1;
        StringCopy(gStringVar4, gSaveBlock2Ptr->playerName);
        StringAppend(gStringVar4, gText_Space);
        StringAppend(gStringVar4, GetLocalizedDayName(gLocalTime.days));
        StringAppend(gStringVar4, gText_Space);
        Build12HourTimeString(gStringVar1);
        StringAppend(gStringVar4, gStringVar1);
        AddTextPrinterParameterized(sStartClockWindowId, FONT_SMALL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);

        y += 12;
        StringCopy(gStringVar4, sText_MoneyPrefix);
        ptr = StringAppend(gStringVar4, gText_EmptyString2);
        ConvertIntToDecimalStringN(ptr, GetMoney(&gSaveBlock1Ptr->money), STR_CONV_MODE_LEFT_ALIGN, 6);
        AddTextPrinterParameterized(sStartClockWindowId, FONT_SMALL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);

        y += 12;
        if (showLevelCap)
        {
            StringCopy(gStringVar4, sText_LevelCapPrefix);
            ptr = StringAppend(gStringVar4, gText_EmptyString2);
            ConvertIntToDecimalStringN(ptr, GetCurrentLevelCap(), STR_CONV_MODE_LEFT_ALIGN, 3);
            AddTextPrinterParameterized(sStartClockWindowId, FONT_SMALL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);
        }

        CopyWindowToVram(sStartClockWindowId, COPYWIN_GFX);
        return;
    }

    y = 2;
    sStartClockWindowId = AddWindow(&sWindowTemplate_StartClock);
    PutWindowTilemap(sStartClockWindowId);
    DrawStdWindowFrame(sStartClockWindowId, FALSE);

    StringCopy(gStringVar4, GetLocalizedDayName(gLocalTime.days));
    StringAppend(gStringVar4, gText_Space);
    Build12HourTimeString(gStringVar1);
    StringAppend(gStringVar4, gStringVar1);
    AddTextPrinterParameterized(sStartClockWindowId, FONT_NORMAL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);
    y += 14;

    StringCopy(gStringVar4, sText_Name);
    ptr = StringAppend(gStringVar4, gText_Space);
    StringCopy(ptr, gSaveBlock2Ptr->playerName);
    AddTextPrinterParameterized(sStartClockWindowId, FONT_NORMAL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);
    y += 14;

    StringCopy(gStringVar4, sText_MoneyPrefix);
    ptr = StringAppend(gStringVar4, gText_EmptyString2);
    ConvertIntToDecimalStringN(ptr, GetMoney(&gSaveBlock1Ptr->money), STR_CONV_MODE_LEFT_ALIGN, 6);
    AddTextPrinterParameterized(sStartClockWindowId, FONT_NORMAL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);
    y += 14;

    if (showLevelCap)
    {
        StringCopy(gStringVar4, sText_LevelCapPrefix);
        ptr = StringAppend(gStringVar4, gText_EmptyString2);
        ConvertIntToDecimalStringN(ptr, GetCurrentLevelCap(), STR_CONV_MODE_LEFT_ALIGN, 3);
        AddTextPrinterParameterized(sStartClockWindowId, FONT_NORMAL, gStringVar4, 0, y, TEXT_SKIP_DRAW, NULL);
    }

    CopyWindowToVram(sStartClockWindowId, COPYWIN_GFX);
}

static void RemoveExtraStartMenuWindows(void)
{
    if (GetSafariZoneFlag() && sSafariBallsWindowId != WINDOW_NONE)
    {
        ClearStdWindowAndFrameToTransparent(sSafariBallsWindowId, FALSE);
        RemoveWindow(sSafariBallsWindowId);
        sSafariBallsWindowId = WINDOW_NONE;
    }
    else if (InBattlePyramid_() && sBattlePyramidFloorWindowId != WINDOW_NONE)
    {
        ClearStdWindowAndFrameToTransparent(sBattlePyramidFloorWindowId, FALSE);
        RemoveWindow(sBattlePyramidFloorWindowId);
        sBattlePyramidFloorWindowId = WINDOW_NONE;
    }

    if (sStartClockWindowId != WINDOW_NONE)
    {
        ClearStdWindowAndFrameToTransparent(sStartClockWindowId, FALSE);
        RemoveWindow(sStartClockWindowId);
        sStartClockWindowId = WINDOW_NONE;
    }
}

static bool32 PrintStartMenuActions(s8 *pIndex, u32 count)
{
    s8 index = *pIndex;

    do
    {
        u8 y = IsWishMenuStartLayout()
            ? (index * WISH_START_MENU_ROW_HEIGHT) + WISH_START_MENU_TEXT_Y
            : (index << 4) + 9;

        if (sStartMenuItems[sCurrentStartMenuActions[index]].func.u8_void == StartMenuPlayerNameCallback)
        {
            PrintPlayerNameOnWindow(GetStartMenuWindowId(), sStartMenuItems[sCurrentStartMenuActions[index]].text, 8, y);
        }
        else
        {
            StringExpandPlaceholders(gStringVar4, sStartMenuItems[sCurrentStartMenuActions[index]].text);
            AddTextPrinterParameterized(GetStartMenuWindowId(), FONT_NORMAL, gStringVar4, 8, y, TEXT_SKIP_DRAW, NULL);
        }

        index++;
        if (index >= sNumStartMenuActions)
        {
            *pIndex = index;
            return TRUE;
        }

        count--;
    }
    while (count != 0);

    *pIndex = index;
    return FALSE;
}

static bool32 InitStartMenuStep(void)
{
    s8 state = sInitStartMenuData[0];

    switch (state)
    {
    case 0:
        // EWRAM/.sbss variables must use zero initializers. WINDOW_NONE is
        // assigned at runtime before any Start Menu windows are created.
        sSafariBallsWindowId = WINDOW_NONE;
        sStartClockWindowId = WINDOW_NONE;
        sBattlePyramidFloorWindowId = WINDOW_NONE;
        sInitStartMenuData[0]++;
        break;
    case 1:
        sWishMenuReorderActive = FALSE;
        BuildStartMenuActions();
        sInitStartMenuData[0]++;
        break;
    case 2:
        LoadMessageBoxAndBorderGfx();
        // Nine WISHMENU entries would make AddStartMenuWindow(9) create a
        // 20-tile-tall interior and push the bottom frame off-screen. Reuse the
        // stock 8-action window height (18 tiles), then print the nine entries
        // with the compact 15 px row spacing below. This keeps both the top and
        // bottom frame fully visible inside 160 px.
        DrawStdWindowFrame(AddStartMenuWindow(IsWishMenuStartLayout()
                            ? WISH_START_MENU_WINDOW_ACTIONS
                            : sNumStartMenuActions), FALSE);
        FillWindowPixelBuffer(GetStartMenuWindowId(), PIXEL_FILL(1));
        sInitStartMenuData[1] = 0;
        sInitStartMenuData[0]++;
        break;
    case 3:
        if (GetSafariZoneFlag())
            ShowSafariBallsWindow();
        else if (InBattlePyramid_())
            ShowPyramidFloorWindow();
        sInitStartMenuData[0]++;
        break;
    case 4:
        ShowTimeWindow();
        sInitStartMenuData[0]++;
        break;
    case 5:
        if (PrintStartMenuActions(&sInitStartMenuData[1], 2))
            sInitStartMenuData[0]++;
        break;
    case 6:
        if (IsWishMenuStartLayout())
            sStartMenuCursorPos = InitMenuNormal(GetStartMenuWindowId(), FONT_NORMAL, 0,
                                                 WISH_START_MENU_TEXT_Y, WISH_START_MENU_ROW_HEIGHT,
                                                 sNumStartMenuActions, sStartMenuCursorPos);
        else
            sStartMenuCursorPos = InitMenuNormal(GetStartMenuWindowId(), FONT_NORMAL, 0, 9, 16,
                                                 sNumStartMenuActions, sStartMenuCursorPos);
        CopyWindowToVram(GetStartMenuWindowId(), COPYWIN_MAP);
        return TRUE;
    }

    return FALSE;
}

static void InitStartMenu(void)
{
    sInitStartMenuData[0] = 0;
    sInitStartMenuData[1] = 0;
    while (!InitStartMenuStep())
        ;
}

static void StartMenuTask(u8 taskId)
{
    if (InitStartMenuStep() == TRUE)
        SwitchTaskToFollowupFunc(taskId);
}

static void CreateStartMenuTask(TaskFunc followupFunc)
{
    u8 taskId;

    sInitStartMenuData[0] = 0;
    sInitStartMenuData[1] = 0;
    taskId = CreateTask(StartMenuTask, 0x50);
    SetTaskFuncWithFollowupFunc(taskId, StartMenuTask, followupFunc);
}

static bool8 FieldCB_ReturnToFieldStartMenu(void)
{
    if (InitStartMenuStep() == FALSE)
    {
        return FALSE;
    }

    ReturnToFieldOpenStartMenu();
    return TRUE;
}

void ShowReturnToFieldStartMenu(void)
{
    sInitStartMenuData[0] = 0;
    sInitStartMenuData[1] = 0;
    gFieldCallback2 = FieldCB_ReturnToFieldStartMenu;
}

void Task_ShowStartMenu(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    switch(task->data[0])
    {
    case 0:
        if (InUnionRoom() == TRUE)
            SetUsingUnionRoomStartMenu();

        gMenuCallback = HandleStartMenuInput;
        task->data[0]++;
        break;
    case 1:
        if (gMenuCallback() == TRUE)
            DestroyTask(taskId);
        break;
    }
}

void ShowStartMenu(void)
{
    if (!IsOverworldLinkActive())
    {
        FreezeObjectEvents();
        PlayerFreeze();
        StopPlayerAvatar();
    }
    CreateStartMenuTask(Task_ShowStartMenu);
    LockPlayerFieldControls();
}

static bool8 HandleStartMenuInput(void)
{
    if (sWishMenuReorderActive)
    {
        if (JOY_NEW(DPAD_UP))
            MoveWishMenuReorder(-1);
        else if (JOY_NEW(DPAD_DOWN))
            MoveWishMenuReorder(1);
        else if (JOY_NEW(SELECT_BUTTON | A_BUTTON))
            FinishWishMenuReorder(TRUE);
        else if (JOY_NEW(B_BUTTON))
            FinishWishMenuReorder(FALSE);

        RemoveExtraStartMenuWindows();
        ShowTimeWindow();
        return FALSE;
    }

    if (JOY_NEW(DPAD_UP))
    {
        PlaySE(SE_SELECT);
        sStartMenuCursorPos = Menu_MoveCursor(-1);
    }

    if (JOY_NEW(DPAD_DOWN))
    {
        PlaySE(SE_SELECT);
        sStartMenuCursorPos = Menu_MoveCursor(1);
    }

    if (JOY_NEW(SELECT_BUTTON) && IsWishMenuStartLayout())
    {
        BeginWishMenuReorder();
        RemoveExtraStartMenuWindows();
        ShowTimeWindow();
        return FALSE;
    }

    if (JOY_NEW(A_BUTTON))
    {
        if ((sCurrentStartMenuActions[sStartMenuCursorPos] == MENU_ACTION_DEBUG
          || sCurrentStartMenuActions[sStartMenuCursorPos] == MENU_ACTION_CONFIG)
         && Debug_IsWishMenuBlockedByEliteFour())
        {
            PlaySE(SE_FAILURE);
            return FALSE;
        }

        PlaySE(SE_SELECT);
        if (sStartMenuItems[sCurrentStartMenuActions[sStartMenuCursorPos]].func.u8_void == StartMenuPokedexCallback)
        {
            if (GetNationalPokedexCount(FLAG_GET_SEEN) == 0)
                return FALSE;
        }
        if (sCurrentStartMenuActions[sStartMenuCursorPos] == MENU_ACTION_DEXNAV
          && MapHasNoEncounterData())
            return FALSE;

        gMenuCallback = sStartMenuItems[sCurrentStartMenuActions[sStartMenuCursorPos]].func.u8_void;

        if (gMenuCallback != StartMenuSaveCallback
            && gMenuCallback != StartMenuDebugCallback
            && gMenuCallback != StartMenuAchievementsCallback
            && gMenuCallback != StartMenuSafariZoneRetireCallback
            && gMenuCallback != StartMenuBattlePyramidRetireCallback)
        {
           FadeScreen(FADE_TO_BLACK, 0);
        }

        return FALSE;
    }

    if (JOY_NEW(START_BUTTON | B_BUTTON))
    {
        RemoveExtraStartMenuWindows();
        HideStartMenu();
        return TRUE;
    }

    RemoveExtraStartMenuWindows();
    ShowTimeWindow();
    return FALSE;
}

bool8 StartMenuPokedexCallback(void)
{
    if (!gPaletteFade.active)
    {
        IncrementGameStat(GAME_STAT_CHECKED_POKEDEX);
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_OpenPokedex);

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuPokemonCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_PartyMenuFromStartMenu); // Display party menu

        return TRUE;
    }

    if (!GetSafariZoneFlag() && !InBattlePyramid_() && gSaveBlock2Ptr->playTimeSeconds == 0) 
    {
        RemoveExtraStartMenuWindows();
        ShowTimeWindow();
    }

    return FALSE;
}

static bool8 StartMenuBagCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_BagMenuFromStartMenu); // Display bag menu

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuPokeNavCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_InitPokeNav);  // Display PokéNav

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuPlayerNameCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();

        if (IsOverworldLinkActive() || InUnionRoom())
            ShowPlayerTrainerCard(CB2_ReturnToFieldWithOpenMenu); // Display trainer card
        else if (FlagGet(FLAG_SYS_FRONTIER_PASS))
            ShowFrontierPass(CB2_ReturnToFieldWithOpenMenu); // Display frontier pass
        else
            ShowPlayerTrainerCard(CB2_ReturnToFieldWithOpenMenu); // Display trainer card

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuSaveCallback(void)
{
    // The custom WISHMENU clock/info panel uses its own window tiles. Remove it
    // before the save dialog starts so the save-info / Yes-No windows cannot
    // reuse overlapping blocks for a frame and leave visual garbage behind.
    RemoveExtraStartMenuWindows();

    gMenuCallback = SaveStartCallback; // Display save menu

    return FALSE;
}

static bool8 StartMenuOptionCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_InitOptionMenu); // Display option menu
        gMain.savedCallback = CB2_ReturnToFieldWithOpenMenu;

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuConfigCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_InitOptionMenu_DifficultyTab);
        gMain.savedCallback = CB2_ReturnToFieldWithOpenMenu;

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuAchievementsCallback(void)
{
    RemoveExtraStartMenuWindows();
    HideStartMenu();
    CB2_InitAchievementsMenu();

    return TRUE;
}

static bool8 StartMenuDebugCallback(void)
{
    RemoveExtraStartMenuWindows();
    HideStartMenuDebug(); // Hide start menu without enabling movement

    if (DEBUG_OVERWORLD_MENU && gSaveBlock2Ptr->optionsDebugMenu == TRUE)
    {
        FlagSet(FLAG_UNUSED_0x275);
        FreezeObjectEvents();
        Debug_ShowMainMenu();
    }
    else
    {
        FlagClear(FLAG_UNUSED_0x275);
    }

    return TRUE;
}

static bool8 StartMenuSafariZoneRetireCallback(void)
{
    RemoveExtraStartMenuWindows();
    HideStartMenu();
    SafariZoneRetirePrompt();

    return TRUE;
}

static void HideStartMenuDebug(void)
{
    PlaySE(SE_SELECT);
    ClearStdWindowAndFrame(GetStartMenuWindowId(), TRUE);
    RemoveStartMenuWindow();
}

static bool8 StartMenuLinkModePlayerNameCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        CleanupOverworldWindowsAndTilemaps();
        ShowTrainerCardInLink(gLocalLinkPlayerId, CB2_ReturnToFieldWithOpenMenu);

        return TRUE;
    }

    return FALSE;
}

static bool8 StartMenuBattlePyramidRetireCallback(void)
{
    gMenuCallback = BattlePyramidRetireStartCallback; // Confirm retire

    return FALSE;
}

// Functionally unused
void ShowBattlePyramidStartMenu(void)
{
    ClearDialogWindowAndFrameToTransparent(0, FALSE);
    ScriptUnfreezeObjectEvents();
    CreateStartMenuTask(Task_ShowStartMenu);
    LockPlayerFieldControls();
}

static bool8 StartMenuBattlePyramidBagCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        RemoveExtraStartMenuWindows();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_PyramidBagMenuFromStartMenu);

        return TRUE;
    }

    return FALSE;
}

static bool8 SaveStartCallback(void)
{
    InitSave();
    gMenuCallback = SaveCallback;

    return FALSE;
}

static bool8 SaveCallback(void)
{
    switch (RunSaveCallback())
    {
    case SAVE_IN_PROGRESS:
        return FALSE;
    case SAVE_CANCELED: // Back to start menu
        ClearDialogWindowAndFrameToTransparent(0, FALSE);
        InitStartMenu();
        gMenuCallback = HandleStartMenuInput;
        return FALSE;
    case SAVE_SUCCESS:
    case SAVE_ERROR:    // Close start menu
        // The right Start Menu window is removed when the save dialog opens,
        // but the custom clock/info window is still alive. Remove it before
        // returning to the field or its stale tilemap/palette can survive for a
        // frame (or longer) and visually corrupt the overworld after saving.
        RemoveExtraStartMenuWindows();
        ClearDialogWindowAndFrameToTransparent(0, TRUE);
        ScriptUnfreezeObjectEvents();
        UnlockPlayerFieldControls();
        SoftResetInBattlePyramid();
        return TRUE;
    }

    return FALSE;
}

static bool8 BattlePyramidRetireStartCallback(void)
{
    InitBattlePyramidRetire();
    gMenuCallback = BattlePyramidRetireCallback;

    return FALSE;
}

static bool8 BattlePyramidRetireReturnCallback(void)
{
    InitStartMenu();
    gMenuCallback = HandleStartMenuInput;

    return FALSE;
}

static bool8 BattlePyramidRetireCallback(void)
{
    switch (RunSaveCallback())
    {
    case SAVE_SUCCESS: // No (Stay in battle pyramid)
        RemoveExtraStartMenuWindows();
        gMenuCallback = BattlePyramidRetireReturnCallback;
        return FALSE;
    case SAVE_IN_PROGRESS:
        return FALSE;
    case SAVE_CANCELED: // Yes (Retire from battle pyramid)
        ClearDialogWindowAndFrameToTransparent(0, TRUE);
        ScriptUnfreezeObjectEvents();
        UnlockPlayerFieldControls();
        ScriptContext_SetupScript(BattlePyramid_Retire);
        return TRUE;
    }

    return FALSE;
}

static void InitSave(void)
{
    SaveMapView();
    sSaveDialogCallback = SaveConfirmSaveCallback;
    sSavingComplete = FALSE;
}

static u8 RunSaveCallback(void)
{
    // True if text is still printing
    if (RunTextPrintersAndIsPrinter0Active() == TRUE)
    {
        return SAVE_IN_PROGRESS;
    }

    sSavingComplete = FALSE;
    return sSaveDialogCallback();
}

void SaveGame(void)
{
    InitSave();
    CreateTask(SaveGameTask, 0x50);
}

static void ShowSaveMessage(const u8 *message, u8 (*saveCallback)(void))
{
    StringExpandPlaceholders(gStringVar4, message);
    LoadMessageBoxAndBorderGfx();
    DrawStdWindowFrame(0, TRUE);
    AddTextPrinterForMessage_2(TRUE);
    sSavingComplete = TRUE;
    sSaveDialogCallback = saveCallback;
}

static void SaveGameTask(u8 taskId)
{
    u8 status = RunSaveCallback();

    switch (status)
    {
    case SAVE_CANCELED:
    case SAVE_ERROR:
        gSpecialVar_Result = 0;
        break;
    case SAVE_SUCCESS:
        gSpecialVar_Result = status;
        break;
    case SAVE_IN_PROGRESS:
        return;
    }

    DestroyTask(taskId);
    ScriptContext_Enable();
}

static void HideSaveMessageWindow(void)
{
    ClearDialogWindowAndFrame(0, TRUE);
}

static void HideSaveInfoWindow(void)
{
    RemoveSaveInfoWindow();
}

static void SaveStartTimer(void)
{
    sSaveDialogTimer = 60;
}

static bool8 SaveSuccesTimer(void)
{
    sSaveDialogTimer--;

    if (JOY_HELD(A_BUTTON))
    {
        PlaySE(SE_SELECT);
        return TRUE;
    }
    if (sSaveDialogTimer == 0)
    {
        return TRUE;
    }

    return FALSE;
}

static bool8 SaveErrorTimer(void)
{
    if (sSaveDialogTimer != 0)
    {
        sSaveDialogTimer--;
    }
    else if (JOY_HELD(A_BUTTON))
    {
        return TRUE;
    }

    return FALSE;
}

static u8 SaveConfirmSaveCallback(void)
{
    ClearStdWindowAndFrame(GetStartMenuWindowId(), TRUE);
    RemoveStartMenuWindow();
    ShowSaveInfoWindow();

    if (CurrentBattlePyramidLocation() != PYRAMID_LOCATION_NONE)
    {
        ShowSaveMessage(gText_BattlePyramidConfirmRest, SaveYesNoCallback);
    }
    else
    {
        ShowSaveMessage(gText_ConfirmSave, SaveYesNoCallback);
    }

    return SAVE_IN_PROGRESS;
}

static u8 SaveYesNoCallback(void)
{
    DisplayYesNoMenuDefaultYes(); // Show Yes/No menu
    sSaveDialogCallback = SaveConfirmInputCallback;
    return SAVE_IN_PROGRESS;
}

static u8 SaveConfirmInputCallback(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0: // Yes
        switch (gSaveFileStatus)
        {
        case SAVE_STATUS_EMPTY:
        case SAVE_STATUS_CORRUPT:
            if (gDifferentSaveFile == FALSE)
            {
                sSaveDialogCallback = SaveFileExistsCallback;
                return SAVE_IN_PROGRESS;
            }

            sSaveDialogCallback = SaveSavingMessageCallback;
            return SAVE_IN_PROGRESS;
        default:
            sSaveDialogCallback = SaveFileExistsCallback;
            return SAVE_IN_PROGRESS;
        }
    case MENU_B_PRESSED:
    case 1: // No
        HideSaveInfoWindow();
        HideSaveMessageWindow();
        return SAVE_CANCELED;
    }

    return SAVE_IN_PROGRESS;
}

// A different save file exists
static u8 SaveFileExistsCallback(void)
{
    if (gDifferentSaveFile == TRUE)
    {
        ShowSaveMessage(gText_DifferentSaveFile, SaveConfirmOverwriteDefaultNoCallback);
    }
    else
    {
        ShowSaveMessage(gText_AlreadySavedFile, SaveConfirmOverwriteCallback);
    }

    return SAVE_IN_PROGRESS;
}

static u8 SaveConfirmOverwriteDefaultNoCallback(void)
{
    DisplayYesNoMenuWithDefault(1); // Show Yes/No menu (No selected as default)
    sSaveDialogCallback = SaveOverwriteInputCallback;
    return SAVE_IN_PROGRESS;
}

static u8 SaveConfirmOverwriteCallback(void)
{
    DisplayYesNoMenuDefaultYes(); // Show Yes/No menu
    sSaveDialogCallback = SaveOverwriteInputCallback;
    return SAVE_IN_PROGRESS;
}

static u8 SaveOverwriteInputCallback(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0: // Yes
        sSaveDialogCallback = SaveSavingMessageCallback;
        return SAVE_IN_PROGRESS;
    case MENU_B_PRESSED:
    case 1: // No
        HideSaveInfoWindow();
        HideSaveMessageWindow();
        return SAVE_CANCELED;
    }

    return SAVE_IN_PROGRESS;
}

static u8 SaveSavingMessageCallback(void)
{
    ShowSaveMessage(gText_SavingDontTurnOff, SaveDoSaveCallback);
    return SAVE_IN_PROGRESS;
}

static u8 SaveDoSaveCallback(void)
{
    u8 saveStatus;

    IncrementGameStat(GAME_STAT_SAVED_GAME);
    PausePyramidChallenge();

    if (gDifferentSaveFile == TRUE)
    {
        saveStatus = TrySavingData(SAVE_OVERWRITE_DIFFERENT_FILE);
        gDifferentSaveFile = FALSE;
    }
    else
    {
        saveStatus = TrySavingData(SAVE_NORMAL);
    }

    if (saveStatus == SAVE_STATUS_OK)
        ShowSaveMessage(gText_PlayerSavedGame, SaveSuccessCallback);
    else
        ShowSaveMessage(gText_SaveError, SaveErrorCallback);

    SaveStartTimer();
    return SAVE_IN_PROGRESS;
}

static u8 SaveSuccessCallback(void)
{
    if (!IsTextPrinterActive(0))
    {
        PlaySE(SE_SAVE);
        sSaveDialogCallback = SaveReturnSuccessCallback;
    }

    return SAVE_IN_PROGRESS;
}

static u8 SaveReturnSuccessCallback(void)
{
    if (!IsSEPlaying() && SaveSuccesTimer())
    {
        HideSaveInfoWindow();
        return SAVE_SUCCESS;
    }
    else
    {
        return SAVE_IN_PROGRESS;
    }
}

static u8 SaveErrorCallback(void)
{
    if (!IsTextPrinterActive(0))
    {
        PlaySE(SE_BOO);
        sSaveDialogCallback = SaveReturnErrorCallback;
    }

    return SAVE_IN_PROGRESS;
}

static u8 SaveReturnErrorCallback(void)
{
    if (!SaveErrorTimer())
    {
        return SAVE_IN_PROGRESS;
    }
    else
    {
        HideSaveInfoWindow();
        return SAVE_ERROR;
    }
}

static void InitBattlePyramidRetire(void)
{
    sSaveDialogCallback = BattlePyramidConfirmRetireCallback;
    sSavingComplete = FALSE;
}

static u8 BattlePyramidConfirmRetireCallback(void)
{
    ClearStdWindowAndFrame(GetStartMenuWindowId(), TRUE);
    RemoveStartMenuWindow();
    ShowSaveMessage(gText_BattlePyramidConfirmRetire, BattlePyramidRetireYesNoCallback);

    return SAVE_IN_PROGRESS;
}

static u8 BattlePyramidRetireYesNoCallback(void)
{
    DisplayYesNoMenuWithDefault(1); // Show Yes/No menu (No selected as default)
    sSaveDialogCallback = BattlePyramidRetireInputCallback;

    return SAVE_IN_PROGRESS;
}

static u8 BattlePyramidRetireInputCallback(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0: // Yes
        return SAVE_CANCELED;
    case MENU_B_PRESSED:
    case 1: // No
        HideSaveMessageWindow();
        return SAVE_SUCCESS;
    }

    return SAVE_IN_PROGRESS;
}

static void VBlankCB_LinkBattleSave(void)
{
    TransferPlttBuffer();
}

static bool32 InitSaveWindowAfterLinkBattle(u8 *state)
{
    switch (*state)
    {
    case 0:
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0);
        SetVBlankCallback(NULL);
        ScanlineEffect_Stop();
        DmaClear16(3, PLTT, PLTT_SIZE);
        DmaFillLarge16(3, 0, (void *)VRAM, VRAM_SIZE, 0x1000);
        break;
    case 1:
        ResetSpriteData();
        ResetTasks();
        ReleaseComfyAnims();
        ResetPaletteFade();
        ScanlineEffect_Clear();
        break;
    case 2:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sBgTemplates_LinkBattleSave, ARRAY_COUNT(sBgTemplates_LinkBattleSave));
        InitWindows(sWindowTemplates_LinkBattleSave);
        LoadUserWindowBorderGfx_(0, 8, BG_PLTT_ID(14));
        Menu_LoadStdPalAt(BG_PLTT_ID(15));
        break;
    case 3:
        ShowBg(0);
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        SetVBlankCallback(VBlankCB_LinkBattleSave);
        EnableInterrupts(1);
        break;
    case 4:
        return TRUE;
    }

    (*state)++;
    return FALSE;
}

void CB2_SetUpSaveAfterLinkBattle(void)
{
    if (InitSaveWindowAfterLinkBattle(&gMain.state))
    {
        CreateTask(Task_SaveAfterLinkBattle, 0x50);
        SetMainCallback2(CB2_SaveAfterLinkBattle);
    }
}

static void CB2_SaveAfterLinkBattle(void)
{
    RunTasks();
    UpdatePaletteFade();
}

static void Task_SaveAfterLinkBattle(u8 taskId)
{
    s16 *state = gTasks[taskId].data;

    if (!gPaletteFade.active)
    {
        switch (*state)
        {
        case 0:
            FillWindowPixelBuffer(0, PIXEL_FILL(1));
            AddTextPrinterParameterized2(0,
                                        FONT_NORMAL,
                                        gText_SavingDontTurnOffPower,
                                        TEXT_SKIP_DRAW,
                                        NULL,
                                        TEXT_COLOR_LIGHT_GRAY,
                                        TEXT_COLOR_DARK_GRAY,
                                        TEXT_COLOR_DARK_GRAY);
            DrawTextBorderOuter(0, 8, 14);
            PutWindowTilemap(0);
            CopyWindowToVram(0, COPYWIN_FULL);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);

            if (gWirelessCommType != 0 && InUnionRoom())
            {
                if (Link_AnyPartnersPlayingFRLG_JP())
                {
                    *state = 1;
                }
                else
                {
                    *state = 5;
                }
            }
            else
            {
                gSoftResetDisabled = TRUE;
                *state = 1;
            }
            break;
        case 1:
            SetContinueGameWarpStatusToDynamicWarp();
            WriteSaveBlock2();
            *state = 2;
            break;
        case 2:
            if (WriteSaveBlock1Sector())
            {
                ClearContinueGameWarpStatus2();
                *state = 3;
                gSoftResetDisabled = FALSE;
            }
            break;
        case 3:
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            *state = 4;
            break;
        case 4:
            FreeAllWindowBuffers();
            SetMainCallback2(gMain.savedCallback);
            DestroyTask(taskId);
            break;
        case 5:
            CreateTask(Task_LinkFullSave, 5);
            *state = 6;
            break;
        case 6:
            if (!FuncIsActiveTask(Task_LinkFullSave))
            {
                *state = 3;
            }
            break;
        }
    }
}

static void ShowSaveInfoWindow(void)
{
    struct WindowTemplate saveInfoWindow = sSaveInfoWindowTemplate;
    u8 gender;
    u8 color;
    u32 textRightEdge;
    u32 xOffset;
    u32 yOffset;

    if (!FlagGet(FLAG_SYS_POKEDEX_GET))
    {
        saveInfoWindow.height -= 2;
    }

    sSaveInfoWindowId = AddWindow(&saveInfoWindow);
    DrawStdWindowFrame(sSaveInfoWindowId, FALSE);
    textRightEdge = saveInfoWindow.width * 8;

    gender = gSaveBlock2Ptr->playerGender;
    // Use TEXT_DYNAMIC_COLOR_6 para feminino (roxo), TEXT_COLOR_LIGHT_BLUE para masculino
    color = TEXT_COLOR_LIGHT_GREEN;  // será roxo
    if (gender == MALE)
    {
        color = TEXT_COLOR_LIGHT_BLUE; // mantém azul claro
    }

    // ----- SALVAR CORES ORIGINAIS DOS ÍNDICES QUE VAMOS MODIFICAR -----
    // TEXT_DYNAMIC_COLOR_5 = 0xE (usado para o local, antes era verde)
    // TEXT_DYNAMIC_COLOR_6 = 0xF (usado para nome/badges/etc, antes era vermelho)
    sOriginalColor5 = gPlttBufferFaded[TEXT_DYNAMIC_COLOR_5];
    sOriginalColor6 = gPlttBufferFaded[TEXT_DYNAMIC_COLOR_6];
    sOriginalColor5Unfaded = gPlttBufferUnfaded[TEXT_DYNAMIC_COLOR_5];
    sOriginalColor6Unfaded = gPlttBufferUnfaded[TEXT_DYNAMIC_COLOR_6];

    // Definir novas cores (use os valores RGB que preferir)
    // lilás claro: R=200, G=160, B=255 -> valores GBA: 200/8=25, 160/8=20, 255/8=31
    // roxo: R=160, G=80, B=200 -> 160/8=20, 80/8=10, 200/8=25
    #define RGB_LILAS   ( (25) | (20 << 5) | (31 << 10) )
    #define RGB_PURPLE2 ( (20) | (10 << 5) | (25 << 10) )  // nome diferente para não conflitar

    gPlttBufferFaded[TEXT_DYNAMIC_COLOR_5] = RGB_LILAS;
    gPlttBufferFaded[TEXT_DYNAMIC_COLOR_6] = RGB_PURPLE2;
    gPlttBufferUnfaded[TEXT_DYNAMIC_COLOR_5] = RGB_LILAS;
    gPlttBufferUnfaded[TEXT_DYNAMIC_COLOR_6] = RGB_PURPLE2;
    UpdatePaletteFade();

    // Print region name (antes usava TEXT_COLOR_GREEN, agora usa TEXT_DYNAMIC_COLOR_5 = lilás)
    yOffset = 1;
    BufferSaveMenuText(SAVE_MENU_LOCATION, gStringVar4, TEXT_DYNAMIC_COLOR_5);
    AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gStringVar4, 0, yOffset, TEXT_SKIP_DRAW, NULL);

    // Print player name
    yOffset += 16;
    AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gText_SavingPlayer, 0, yOffset, TEXT_SKIP_DRAW, NULL);
    BufferSaveMenuText(SAVE_MENU_NAME, gStringVar4, color);  // color já é TEXT_DYNAMIC_COLOR_6 (roxo) ou azul
    xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, textRightEdge);
    PrintPlayerNameOnWindow(sSaveInfoWindowId, gStringVar4, xOffset, yOffset);

    // Print badge count
    yOffset += 16;
    AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gText_SavingBadges, 0, yOffset, TEXT_SKIP_DRAW, NULL);
    BufferSaveMenuText(SAVE_MENU_BADGES, gStringVar4, color);
    xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, textRightEdge);
    AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gStringVar4, xOffset, yOffset, TEXT_SKIP_DRAW, NULL);

    if (FlagGet(FLAG_SYS_POKEDEX_GET) == TRUE)
    {
        // Print Pokédex count
        yOffset += 16;
        AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gText_SavingPokedex, 0, yOffset, TEXT_SKIP_DRAW, NULL);
        BufferSaveMenuText(SAVE_MENU_CAUGHT, gStringVar4, color);
        xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, textRightEdge);
        AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gStringVar4, xOffset, yOffset, TEXT_SKIP_DRAW, NULL);
    }

    // Print play time
    yOffset += 16;
    AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gText_SavingTime, 0, yOffset, TEXT_SKIP_DRAW, NULL);
    BufferSaveMenuText(SAVE_MENU_PLAY_TIME, gStringVar4, color);
    xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, textRightEdge);
    AddTextPrinterParameterized(sSaveInfoWindowId, FONT_NORMAL, gStringVar4, xOffset, yOffset, TEXT_SKIP_DRAW, NULL);

    CopyWindowToVram(sSaveInfoWindowId, COPYWIN_GFX);
}

static void RemoveSaveInfoWindow(void)
{
    // Restaurar as cores originais dos índices dinâmicos
    gPlttBufferFaded[TEXT_DYNAMIC_COLOR_5] = sOriginalColor5;
    gPlttBufferFaded[TEXT_DYNAMIC_COLOR_6] = sOriginalColor6;
    gPlttBufferUnfaded[TEXT_DYNAMIC_COLOR_5] = sOriginalColor5Unfaded;
    gPlttBufferUnfaded[TEXT_DYNAMIC_COLOR_6] = sOriginalColor6Unfaded;
    UpdatePaletteFade();

    ClearStdWindowAndFrame(sSaveInfoWindowId, FALSE);
    RemoveWindow(sSaveInfoWindowId);
}

static void Task_WaitForBattleTowerLinkSave(u8 taskId)
{
    if (!FuncIsActiveTask(Task_LinkFullSave))
    {
        DestroyTask(taskId);
        ScriptContext_Enable();
    }
}

#define tInBattleTower data[2]

void SaveForBattleTowerLink(void)
{
    u8 taskId = CreateTask(Task_LinkFullSave, 5);
    gTasks[taskId].tInBattleTower = TRUE;
    gTasks[CreateTask(Task_WaitForBattleTowerLinkSave, 6)].data[1] = taskId;
}

#undef tInBattleTower

static void HideStartMenuWindow(void)
{
    ClearStdWindowAndFrame(GetStartMenuWindowId(), TRUE);
    RemoveStartMenuWindow();
    ScriptUnfreezeObjectEvents();
    UnlockPlayerFieldControls();
}

void HideStartMenu(void)
{
    PlaySE(SE_SELECT);
    HideStartMenuWindow();
}

void AppendToList(u8 *list, u8 *pos, u8 newEntry)
{
    list[*pos] = newEntry;
    (*pos)++;
}

static bool8 StartMenuDexNavCallback(void)
{
    CreateTask(Task_OpenDexNavFromStartMenu, 0);
    return TRUE;
}

void Script_ForceSaveGame(struct ScriptContext *ctx)
{
    SaveGame();
    ShowSaveInfoWindow();
    gMenuCallback = SaveCallback;
    sSaveDialogCallback = SaveSavingMessageCallback;
}
