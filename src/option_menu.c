#include "global.h"
#include "comfy_anim.h"
#include "debug.h"
#include "event_data.h"
#include "option_menu.h"
#include "bg.h"
#include "gpu_regs.h"
#include "international_string_util.h"
#include "main.h"
#include "menu.h"
#include "palette.h"
#include "scanline_effect.h"
#include "sprite.h"
#include "strings.h"
#include "sound.h"
#include "task.h"
#include "text.h"
#include "text_window.h"
#include "window.h"
#include "gba/m4a_internal.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "malloc.h"

// HLW Battle Speed values stored by the Options Menu.
enum
{
    HLW_BATTLE_SPEED_NORMAL,
    HLW_BATTLE_SPEED_2X,
    HLW_BATTLE_SPEED_4X,
    HLW_BATTLE_SPEED_COUNT,
};

// Persistent Battle Speed slot inside HLWSaveExtension.future[].
// future[64..67] is already used by the shared Party/Summary theme,
// future[68..71] is used by the Pokédex theme, so Battle Speed starts at 72.
#define HLW_BATTLE_SPEED_SAVE_TAG0_OFFSET      72
#define HLW_BATTLE_SPEED_SAVE_TAG1_OFFSET      73
#define HLW_BATTLE_SPEED_SAVE_VERSION_OFFSET   74
#define HLW_BATTLE_SPEED_SAVE_VALUE_OFFSET     75
#define HLW_BATTLE_SPEED_SAVE_TAG0             0x42 // 'B'
#define HLW_BATTLE_SPEED_SAVE_TAG1             0x53 // 'S'
#define HLW_BATTLE_SPEED_SAVE_VERSION          1
#define HLW_BATTLE_SPEED_SAVE_MAGIC            0x484C5753
#define HLW_BATTLE_SPEED_SAVE_EXTENSION_VERSION 1

// HLW HP bar animation values stored by the Options Menu.
enum
{
    HLW_HP_BAR_NORMAL,
    HLW_HP_BAR_INSTANT,
    HLW_HP_BAR_COUNT,
};

// Persistent HP Bar slot inside HLWSaveExtension.future[].
// Battle Speed uses future[72..75], so HP Bar starts at 76.
#define HLW_HP_BAR_SAVE_TAG0_OFFSET       76
#define HLW_HP_BAR_SAVE_TAG1_OFFSET       77
#define HLW_HP_BAR_SAVE_VERSION_OFFSET    78
#define HLW_HP_BAR_SAVE_VALUE_OFFSET      79
#define HLW_HP_BAR_SAVE_TAG0              0x48 // 'H'
#define HLW_HP_BAR_SAVE_TAG1              0x50 // 'P'
#define HLW_HP_BAR_SAVE_VERSION           1
#define HLW_HP_BAR_SAVE_MAGIC             0x484C5753
#define HLW_HP_BAR_SAVE_EXTENSION_VERSION 1


#ifndef OPTIONS_TEXT_SPEED_INSTANT
#define OPTIONS_TEXT_SPEED_INSTANT 3
#endif

#define tMenuSelection data[0]
#define tTextSpeed data[1]
#define tBattleSceneOff data[2]
#define tBattleStyle data[3]
#define tSound data[4]
#define tButtonMode data[5]
#define tWindowFrameType data[6]

enum //Options Pages
{
    PAGE_GENERAL,
    PAGE_DIFFICULTY,
    PAGE_COUNT
};

enum //General's Menu Items
{
    MENUITEM_GEN_TEXTSPEED,
    MENUITEM_GEN_BATTLESCENE,
    MENUITEM_GEN_BATTLESPEED,
    MENUITEM_GEN_FASTSLIDE,
    MENUITEM_GEN_HPBAR,
    MENUITEM_GEN_AUTORUN,
    MENUITEM_GEN_AUTOFISHING,
    MENUITEM_GEN_SOUND,
    MENUITEM_GEN_BUTTONMODE,
    MENUITEM_GEN_FRAMETYPE,
    MENUITEM_GEN_CANCEL,
    MENUITEM_GEN_COUNT,
};

enum //Difficulty's Menu Items
{
    MENUITEM_DIF_NPCTEAMS,
    MENUITEM_DIF_BATTLEITEMS,
    MENUITEM_DIF_BATTLESTYLE,
    MENUITEM_DIF_INFCANDY,
    MENUITEM_DIF_LEVELCAPS,
    MENUITEM_DIF_NUZLOCKE,
    MENUITEM_DIF_RANDOMIZER_E,
    MENUITEM_DIF_RANDOMIZER_T,
    MENUITEM_DIF_DEBUGMENU,
    MENUITEM_DIF_CANCEL,
    MENUITEM_DIF_COUNT,
};

enum //Windows
{
    WIN_TOPBAR,
    WIN_OPTIONS,
    WIN_DESCRIPTION
};

static const struct WindowTemplate sOptionMenuWinTemplates[] =
{
    {//WIN_TOPBAR
        .bg = 1,
        .tilemapLeft = 0,
        .tilemapTop = 0,
        .width = 30,
        .height = 2,
        .paletteNum = 1,
        .baseBlock = 2
    },
    {//WIN_OPTIONS
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 3,
        .width = 26,
        .height = 10,
        .paletteNum = 2,
        .baseBlock = 62
    },
    {//WIN_DESCRIPTION
        .bg = 1,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 26,
        .height = 4,
        .paletteNum = 1,
        .baseBlock = 500
    },
    DUMMY_WIN_TEMPLATE
};

static const struct BgTemplate sOptionMenuBgTemplates[] =
{
    {
       .bg = 0,
       .charBaseIndex = 1,
       .mapBaseIndex = 30,
       .screenSize = 0,
       .paletteMode = 0,
       .priority = 1,
       .baseTile = 0
    },
    {
       .bg = 1,
       .charBaseIndex = 1,
       .mapBaseIndex = 31,
       .screenSize = 0,
       .paletteMode = 0,
       .priority = 0,
       .baseTile = 0
    },
    {
       // HLW animated options background. A 32x64 tilemap gives enough
       // vertical room to repeat the 32x24 bgscroll map seamlessly while
       // the visible 240x160 area drifts down and to the right.
       .bg = 2,
       .charBaseIndex = 0,
       .mapBaseIndex = 28,
       .screenSize = 2, // 256x512
       .paletteMode = 0,
       .priority = 2,
       .baseTile = 0
    },
};

struct OptionMenu
{
    u8 submenu;
    u8 sel[MENUITEM_GEN_COUNT];
    u8 sel_difficulty[MENUITEM_DIF_COUNT];
    int menuCursor[PAGE_COUNT];
    int visibleCursor[PAGE_COUNT];
    u8 arrowTaskId;
};

#define Y_DIFF 16 // Difference in pixels between items.
#define OPTIONS_ON_SCREEN 5
#define NUM_OPTIONS_FROM_BORDER 1

//Local Functions
static void MainCB2(void);
static void VBlankCB(void);
static void LoadOptionMenuScrollingBackground(void);
static void UpdateOptionMenuScrollingBackground(void);
static void DrawTopBarText(void); //top Option text
static void DrawLeftSideOptionText(int selection, int y);
static void DrawRightSideChoiceText(const u8 *str, int x, int y, bool8 choosen, bool8 active);
static void DrawOptionMenuTexts(void); //left side text;
static void DrawChoices(u32 id, int y); //right side draw function
static void HighlightOptionMenuItem(void);
static void Task_OptionMenuFadeIn(u8 taskId);
static void Task_OptionMenuProcessInput(u8 taskId);
static void Task_OptionMenuSave(u8 taskId);
static void Task_OptionMenuFadeOut(u8 taskId);
static void ScrollMenu(int direction);
static void ScrollAll(int direction); // to bottom or top
static int GetMiddleX(const u8 *txt1, const u8 *txt2, const u8 *txt3);
static int XOptions_ProcessInput(int x, int selection);
static int ProcessInput_Options_Two(int selection);
static int ProcessInput_Options_Three(int selection);
static int ProcessInput_TextSpeed(int selection);
static int ProcessInput_Sound(int selection);
static void InitBattleSpeedSaveExtensionIfNeeded(void);
static u8 LoadBattleSpeedOption(void);
static void SaveBattleSpeedOption(u8 selection);
static void InitHpBarSaveExtensionIfNeeded(void);
static u8 LoadHpBarOption(void);
static void SaveHpBarOption(u8 selection);
bool32 IsHpBarInstant(void);
static int ProcessInput_FrameType(int selection);
static const u8 *const OptionTextDescription(void);
static const u8 *const OptionTextRight(u8 menuItem);
static bool8 IsHardNpcTeamsSelected(void);
static void EnforceHardNpcTeamsRules(void);
static u8 MenuItemCount(void);
static u8 MenuItemCancel(void);
static void DrawDescriptionText(void);
static void DrawOptionMenuChoice(const u8 *text, u8 x, u8 y, u8 style, bool8 active);
static void DrawChoices_Options_Three(const u8 *const *const strings, int selection, int y, bool8 active);
static void ReDrawAll(void);
static void DrawChoices_TextSpeed(int selection, int y);
static void DrawChoices_BattleScene(int selection, int y);
static void DrawChoices_BattleSpeed(int selection, int y);
static void DrawChoices_FastSlide(int selection, int y);
static void DrawChoices_AutoRun(int selection, int y);
static void DrawChoices_HpBar(int selection, int y);
static void DrawChoices_Sound(int selection, int y);
static void DrawChoices_ButtonMode(int selection, int y);
static void DrawChoices_OnOff(int selection, int y);
static void DrawChoices_FrameType(int selection, int y);
static void DrawChoices_NpcTeams(int selection, int y);
static void DrawChoices_BattleItems(int selection, int y);
static void DrawChoices_BattleStyle(int selection, int y);
static void DrawChoices_InfCandy(int selection, int y);
static void DrawChoices_LevelCaps(int selection, int y);
static void DrawChoices_Nuzlocke(int selection, int y);
static void DrawChoices_AutoFishing(int selection, int y);
static void DrawChoices_RandomizerE(int selection, int y);
static void DrawChoices_RandomizerT(int selection, int y);
static void DrawBgWindowFrames(void);
static EWRAM_DATA u8 sOptionMenuStartPage = PAGE_GENERAL;
bool8 Debug_IsWishMenuBlockedByEliteFour(void);

// EWRAM vars
EWRAM_DATA static struct OptionMenu *sOptions = NULL;
static u32 sOptionMenuBgScrollX;
static u32 sOptionMenuBgScrollY;

static const u16 sOptionMenuText_Pal[] = INCBIN_U16("graphics/interface/option_menu_text.gbapal");

// HLW options-screen background. bgscroll.png is the tileset source and
// bgscroll.bin is its 32x24 tilemap. The build system generates bgscroll.4bpp
// and bgscroll.gbapal from the PNG, while the tilemap is kept exactly as authored.
#define OPTION_SCROLL_BG_PALETTE          3
#define OPTION_SCROLL_SOURCE_WIDTH_TILES  32
#define OPTION_SCROLL_SOURCE_HEIGHT_TILES 24
#define OPTION_SCROLL_BG_HEIGHT_TILES     64
#define OPTION_SCROLL_X_PERIOD_PIXELS     (OPTION_SCROLL_SOURCE_WIDTH_TILES * 8)
#define OPTION_SCROLL_Y_PERIOD_PIXELS     (OPTION_SCROLL_SOURCE_HEIGHT_TILES * 8)
#define OPTION_SCROLL_SPEED_X             32 // 1/8 px per frame: gentle drift to the right.
#define OPTION_SCROLL_SPEED_Y             48 // 3/16 px per frame: smooth drift from top to bottom.
static const u32 sOptionMenuScrolling_Gfx[] = INCBIN_U32("graphics/options/bgscroll.4bpp");
static const u16 sOptionMenuScrolling_Tilemap[] = INCBIN_U16("graphics/options/bgscroll.bin");
static const u16 sOptionMenuScrolling_Pal[] = INCBIN_U16("graphics/options/bgscroll.gbapal");

// GBA palettes are 5-bit per channel, so RGB(18,22,29) is the closest
// hardware representation of the requested #95B4EC top-bar blue.
static const u16 sOptionMenuBg_Pal[] = {RGB(18, 22, 29)};
static const u16 sOptionMenuTopBarBg_Pal[] = {RGB(18, 22, 29)};
static const u16 sOptionMenuPanelBg_Pal[] = {RGB(4, 4, 5)};      // normal panel: #212129
static const u16 sOptionMenuHighlightBg_Pal[] = {RGB(6, 6, 7)};  // selected row: ~#313139
// note: this is only used in the Japanese release
static const u8 sEqualSignGfx[] = INCBIN_U8("graphics/interface/option_menu_equals_sign.4bpp");

#define TEXT_COLOR_OPTIONS_WHITE                1
#define TEXT_COLOR_OPTIONS_GRAY_FG              2
#define TEXT_COLOR_OPTIONS_GRAY_SHADOW          3
#define TEXT_COLOR_OPTIONS_GRAY_LIGHT_FG        4
#define TEXT_COLOR_OPTIONS_ORANGE_FG            5
#define TEXT_COLOR_OPTIONS_ORANGE_SHADOW        6
#define TEXT_COLOR_OPTIONS_RED_FG               7
#define TEXT_COLOR_OPTIONS_RED_SHADOW           8
#define TEXT_COLOR_OPTIONS_GREEN_FG             9
#define TEXT_COLOR_OPTIONS_GREEN_SHADOW         10
#define TEXT_COLOR_OPTIONS_GREEN_DARK_FG        11
#define TEXT_COLOR_OPTIONS_GREEN_DARK_SHADOW    12
#define TEXT_COLOR_OPTIONS_RED_DARK_FG          13
#define TEXT_COLOR_OPTIONS_RED_DARK_SHADOW      14

struct // PAGE_GENERAL
{
    void (*drawChoices)(int selection, int y);
    int (*processInput)(int selection);
} static const sItemFunctionsGeneral[MENUITEM_GEN_COUNT] =
{
    [MENUITEM_GEN_TEXTSPEED]     = {DrawChoices_TextSpeed,   ProcessInput_TextSpeed},
    [MENUITEM_GEN_BATTLESCENE]   = {DrawChoices_BattleScene, ProcessInput_Options_Two},
    [MENUITEM_GEN_BATTLESPEED]   = {DrawChoices_BattleSpeed, ProcessInput_Options_Three},
    [MENUITEM_GEN_FASTSLIDE]     = {DrawChoices_FastSlide,   ProcessInput_Options_Two},
    [MENUITEM_GEN_HPBAR]         = {DrawChoices_HpBar,       ProcessInput_Options_Two},
    [MENUITEM_GEN_AUTORUN]       = {DrawChoices_AutoRun,     ProcessInput_Options_Two},
    [MENUITEM_GEN_AUTOFISHING]   = {DrawChoices_AutoFishing, ProcessInput_Options_Two},
    [MENUITEM_GEN_SOUND]         = {DrawChoices_Sound,       ProcessInput_Sound},
    [MENUITEM_GEN_BUTTONMODE]    = {DrawChoices_ButtonMode,  ProcessInput_Options_Three},
    [MENUITEM_GEN_FRAMETYPE]      = {DrawChoices_FrameType,       ProcessInput_FrameType},
    [MENUITEM_GEN_CANCEL]         = {NULL, NULL},
};

struct // PAGE_DIFFICULTY
{
    void (*drawChoices)(int selection, int y);
    int (*processInput)(int selection);
} static const sItemFunctionsDifficulty[MENUITEM_DIF_COUNT] =
{
    [MENUITEM_DIF_NPCTEAMS]       = {DrawChoices_NpcTeams,    ProcessInput_Options_Two},
    [MENUITEM_DIF_BATTLEITEMS]    = {DrawChoices_BattleItems, ProcessInput_Options_Two},
    [MENUITEM_DIF_BATTLESTYLE]    = {DrawChoices_BattleStyle, ProcessInput_Options_Two},
    [MENUITEM_DIF_INFCANDY]       = {DrawChoices_InfCandy,    ProcessInput_Options_Two},
    [MENUITEM_DIF_LEVELCAPS]      = {DrawChoices_LevelCaps,   ProcessInput_Options_Two},
    [MENUITEM_DIF_NUZLOCKE]       = {DrawChoices_Nuzlocke,    ProcessInput_Options_Three},
    [MENUITEM_DIF_RANDOMIZER_E]   = {DrawChoices_RandomizerE, ProcessInput_Options_Two},
    [MENUITEM_DIF_RANDOMIZER_T]   = {DrawChoices_RandomizerT, ProcessInput_Options_Two},
    [MENUITEM_DIF_DEBUGMENU]      = {DrawChoices_OnOff,        ProcessInput_Options_Two},
    [MENUITEM_DIF_CANCEL]         = {NULL, NULL},
};

// Menu left side option names text
static const u8 sText_NpcTeams[]        = _("NPC TEAMS");
static const u8 sText_BattleItems[]     = _("BTL ITEMS");
static const u8 sText_InfiniteCandy[]   = _("INF. CANDY");
static const u8 sText_LevelCaps[]       = _("LEVEL CAPS");
static const u8 sText_Nuzlocke[]        = _("NUZLOCKE");
static const u8 sText_RandomizerE[]     = _("RANDOM POKéMON");
static const u8 sText_RandomizerT[]     = _("RANDOM TRAINERS");
static const u8 sText_AutoFishing[]     = _("AUTO FISH");
static const u8 sText_FastSlide[]       = _("FAST SLIDE");
static const u8 sText_AutoRun[]         = _("AUTO RUN");
static const u8 sText_BattleSpeed[]     = _("BATTLE SPEED");
static const u8 sText_HpBar[]           = _("HP BAR");

static const u8 sText_Desc_FastSlideOff[] = _("Display the slide animation at the\nbeginning of battles.");
static const u8 sText_Desc_FastSlideOn[]  = _("Skip the slide animation at the\nbeginning of battles.");

static const u8 *const sOptionMenuItemsNamesGeneral[MENUITEM_GEN_COUNT] =
{
    [MENUITEM_GEN_TEXTSPEED]     = gText_TextSpeed,
    [MENUITEM_GEN_BATTLESCENE]   = gText_BattleScene,
    [MENUITEM_GEN_BATTLESPEED]   = sText_BattleSpeed,
    [MENUITEM_GEN_FASTSLIDE]     = sText_FastSlide,
    [MENUITEM_GEN_HPBAR]         = sText_HpBar,
    [MENUITEM_GEN_AUTORUN]       = sText_AutoRun,
    [MENUITEM_GEN_AUTOFISHING]   = sText_AutoFishing,
    [MENUITEM_GEN_SOUND]         = gText_Sound,
    [MENUITEM_GEN_BUTTONMODE]    = gText_ButtonMode,
    [MENUITEM_GEN_FRAMETYPE]      = gText_Frame,
    [MENUITEM_GEN_CANCEL]         = gText_OptionMenuSave,
};

static const u8 *const sOptionMenuItemsNamesDifficulty[MENUITEM_DIF_COUNT] =
{
    [MENUITEM_DIF_NPCTEAMS]       = sText_NpcTeams,
    [MENUITEM_DIF_BATTLEITEMS]    = sText_BattleItems,
    [MENUITEM_DIF_BATTLESTYLE]    = gText_BattleStyle,
    [MENUITEM_DIF_INFCANDY]       = sText_InfiniteCandy,
    [MENUITEM_DIF_LEVELCAPS]      = sText_LevelCaps,
    [MENUITEM_DIF_NUZLOCKE]       = sText_Nuzlocke,
    [MENUITEM_DIF_RANDOMIZER_E]   = sText_RandomizerE,
    [MENUITEM_DIF_RANDOMIZER_T]   = sText_RandomizerT,
    [MENUITEM_DIF_DEBUGMENU]      = COMPOUND_STRING("WISH MENU"),
    [MENUITEM_DIF_CANCEL]         = gText_OptionMenuSave,
};

static const u8 *const OptionTextRight(u8 menuItem)
{
    switch (sOptions->submenu)
    {
    case PAGE_GENERAL:      return sOptionMenuItemsNamesGeneral[menuItem];
    case PAGE_DIFFICULTY:   return sOptionMenuItemsNamesDifficulty[menuItem];
    }
    return sOptionMenuItemsNamesDifficulty[menuItem];
}

static bool8 IsHardNpcTeamsSelected(void)
{
    return sOptions->sel_difficulty[MENUITEM_DIF_NPCTEAMS] == OPTIONS_NPCTEAMS_HARD;
}

static void EnforceHardNpcTeamsRules(void)
{
    if (!IsHardNpcTeamsSelected())
        return;

    sOptions->sel_difficulty[MENUITEM_DIF_BATTLEITEMS]  = OPTIONS_BATTLEITEMS_OFF;
    sOptions->sel_difficulty[MENUITEM_DIF_BATTLESTYLE]  = OPTIONS_BATTLE_STYLE_SET;
    sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]    = OPTIONS_LEVELCAPS_ON;
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T] = FALSE;
}

// Menu left side text conditions
static bool8 CheckConditions(int selection)
{
    switch (sOptions->submenu)
    {
    case PAGE_GENERAL:
        switch(selection)
        {
        case MENUITEM_GEN_TEXTSPEED:        return TRUE;
        case MENUITEM_GEN_BATTLESCENE:      return TRUE;
        case MENUITEM_GEN_BATTLESPEED:      return TRUE;
        case MENUITEM_GEN_FASTSLIDE:        return TRUE;
        case MENUITEM_GEN_HPBAR:            return TRUE;
        case MENUITEM_GEN_AUTORUN:          return TRUE;
        case MENUITEM_GEN_AUTOFISHING:      return TRUE;
        case MENUITEM_GEN_SOUND:            return TRUE;
        case MENUITEM_GEN_BUTTONMODE:       return TRUE;
        case MENUITEM_GEN_FRAMETYPE:        return TRUE;
        case MENUITEM_GEN_CANCEL:           return TRUE;
        case MENUITEM_GEN_COUNT:            return TRUE;
        }
    case PAGE_DIFFICULTY:
        switch(selection)
        {
        case MENUITEM_DIF_NPCTEAMS:         return TRUE;
        case MENUITEM_DIF_BATTLEITEMS:      return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_BATTLESTYLE:      return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_INFCANDY:         return TRUE;
        case MENUITEM_DIF_LEVELCAPS:        return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_NUZLOCKE:         return TRUE;
        case MENUITEM_DIF_RANDOMIZER_E:     return TRUE;
        case MENUITEM_DIF_RANDOMIZER_T:     return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_DEBUGMENU:        return TRUE;
        case MENUITEM_DIF_CANCEL:           return TRUE;
        case MENUITEM_DIF_COUNT:            return TRUE;
        }
    }
    return FALSE;
}

// Descriptions
static const u8 sText_Empty[]                   = _("");
static const u8 sText_Desc_Save[]               = _("Save your settings.");
static const u8 sText_Desc_TextSpeed[]          = _("Choose one of the three text-display\nspeeds.");
static const u8 sText_Desc_BattleScene_On[]     = _("Show the POKéMON battle animations.");
static const u8 sText_Desc_BattleScene_Off[]    = _("Skip the POKéMON battle animations.");
static const u8 sText_Desc_BattleSpeedNormal[]  = _("Use standard battle timing.\n10x is only in the Wish Menu.");
static const u8 sText_Desc_BattleSpeed2x[]      = _("Run battle animations and delays at\n2x speed. Menus stay at normal speed.");
static const u8 sText_Desc_BattleSpeed4x[]      = _("Run battle animations and delays at\n4x speed. Menus stay at normal speed.");
static const u8 sText_Desc_AutoRunOff[]         = _("Hold B to run normally.\nAuto Run can also be toggled with L+B.");
static const u8 sText_Desc_AutoRunOn[]          = _("Run without holding B.\nAuto Run can also be toggled with L+B.");
static const u8 sText_Desc_HpBarNormal[]        = _("Animate HP changes with the standard\nhealth-bar drain and recovery.");
static const u8 sText_Desc_HpBarInstant[]       = _("Apply HP bar changes immediately.\nDamage and healing skip bar animation.");
static const u8 sText_Desc_SoundMono[]          = _("Sound is the same in all speakers.\nRecommended for original hardware.");
static const u8 sText_Desc_SoundStereo[]        = _("Play the left and right audio channel\nseperatly. Great with headphones.");
static const u8 sText_Desc_ButtonMode[]         = _("All buttons work as normal.");
static const u8 sText_Desc_ButtonMode_LR[]      = _("On some screens the L and R buttons\nact as left and right.");
static const u8 sText_Desc_ButtonMode_LA[]      = _("The L button acts as another A\nbutton for one-handed play.");
static const u8 sText_Desc_FrameType[]          = _("Choose the frame surrounding the\nwindows.");
static const u8 sText_Desc_NpcTeams[]           = _("The difficulty of NPC teams,\ncasual = vanilla, hard = competitive.");
static const u8 sText_Desc_InfiniteCandyOff[]   = _("Disables the use of the infinite\ncandy.");
static const u8 sText_Desc_InfiniteCandyOn[]    = _("Enables the use of the infinite candy.");
static const u8 sText_Desc_BattleStyle_Shift[]  = _("Get the option to switch your\nPOKéMON after the enemies faints.");
static const u8 sText_Desc_BattleStyle_Set[]    = _("No free switch after fainting the\nenemies POKéMON.");
static const u8 sText_Desc_LevelCapsOn[]        = _("Your POKéMON cannot outlevel the\nace of the next gym leader.");
static const u8 sText_Desc_LevelCapsOff[]       = _("Your POKéMON can reach any level,\nbut may disobey if too overleveled.");
static const u8 sText_Desc_BattleItemsOn[]      = _("Permits the use of items in battle.");
static const u8 sText_Desc_BattleItemsOff[]     = _("Disallows the use of items in battle.");
static const u8 sText_Desc_NuzlockeOff[]        = _("Play without nuzlocke rules.");
static const u8 sText_Desc_NuzlockeNormal[]     = _("One non-shiny capture per route,\nbut any shiny may still be caught.");
static const u8 sText_Desc_NuzlockeHard[]       = _("Only the first wild POKeMON seen\nin each route may be captured.");
static const u8 sText_Desc_RandomizerEOff[]     = _("Wild POKéMON appear normally.");
static const u8 sText_Desc_RandomizerEOn[]      = _("Wild POKéMON are randomized.");
static const u8 sText_Desc_RandomizerTOff[]     = _("Trainer teams appear normally.");
static const u8 sText_Desc_RandomizerTOn[]      = _("Trainer POKéMON are randomized.");
static const u8 sText_Desc_AutoFishingOff[]     = _("Fishing uses the normal wait timer\nand A-button check.");
static const u8 sText_Desc_AutoFishingOn[]      = _("Fishing advances automatically.");
static const u8 sText_Desc_HardLocked[]         = _("Locked by HARD NPC\nTEAMS.");

// Option strings
static const u8 sText_OptionNpcTeamsCasual[]    = _("CASUAL");
static const u8 sText_OptionNpcTeamsHard[]      = _("HARD");
static const u8 sText_OptionBattleItemsOn[]     = _("ON");
static const u8 sText_OptionBattleItemsOff[]    = _("OFF");
static const u8 sText_OptionInfCandyOff[]       = _("OFF");
static const u8 sText_OptionInfCandyOn[]        = _("ON");
static const u8 sText_OptionLevelCapsOn[]       = _("ON");
static const u8 sText_OptionLevelCapsOff[]      = _("OFF");
static const u8 sText_OptionNuzlockeOff[]       = _("OFF");
static const u8 sText_OptionNuzlockeNormal[]    = _("NORMAL");
static const u8 sText_OptionNuzlockeHard[]      = _("HARD");
static const u8 sText_OptionFalse[]             = _("OFF");
static const u8 sText_OptionTrue[]              = _("ON");

static const u8 *const sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_COUNT][3] =
{
    [MENUITEM_GEN_TEXTSPEED]    = {sText_Desc_TextSpeed,            sText_Empty,                sText_Empty},
    [MENUITEM_GEN_BATTLESCENE]  = {sText_Desc_BattleScene_On,       sText_Desc_BattleScene_Off, sText_Empty},
    [MENUITEM_GEN_BATTLESPEED]  = {sText_Desc_BattleSpeedNormal,    sText_Desc_BattleSpeed2x,   sText_Desc_BattleSpeed4x},
    [MENUITEM_GEN_FASTSLIDE]    = {sText_Desc_FastSlideOff,         sText_Desc_FastSlideOn,     sText_Empty},
    [MENUITEM_GEN_HPBAR]        = {sText_Desc_HpBarNormal,          sText_Desc_HpBarInstant,    sText_Empty},
    [MENUITEM_GEN_AUTORUN]      = {sText_Desc_AutoRunOff,           sText_Desc_AutoRunOn,       sText_Empty},
    [MENUITEM_GEN_AUTOFISHING]  = {sText_Desc_AutoFishingOff,       sText_Desc_AutoFishingOn,   sText_Empty},
    [MENUITEM_GEN_SOUND]        = {sText_Desc_SoundMono,            sText_Desc_SoundStereo,     sText_Empty},
    [MENUITEM_GEN_BUTTONMODE]   = {sText_Desc_ButtonMode,           sText_Desc_ButtonMode_LR,   sText_Desc_ButtonMode_LA},
    [MENUITEM_GEN_FRAMETYPE]      = {sText_Desc_FrameType,             sText_Empty,                    sText_Empty},
    [MENUITEM_GEN_CANCEL]         = {sText_Desc_Save,                 sText_Empty,                    sText_Empty},
};

static const u8 *const sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_COUNT][3] =
{
    [MENUITEM_DIF_NPCTEAMS]     = {sText_Desc_NpcTeams,            sText_Empty,               sText_Empty},
    [MENUITEM_DIF_BATTLEITEMS]  = {sText_Desc_BattleItemsOn,       sText_Desc_BattleItemsOff, sText_Empty},
    [MENUITEM_DIF_BATTLESTYLE]  = {sText_Desc_BattleStyle_Shift,   sText_Desc_BattleStyle_Set, sText_Empty},
    [MENUITEM_DIF_INFCANDY]     = {sText_Desc_InfiniteCandyOff,    sText_Desc_InfiniteCandyOn, sText_Empty},
    [MENUITEM_DIF_LEVELCAPS]    = {sText_Desc_LevelCapsOn,         sText_Desc_LevelCapsOff,   sText_Empty},
    [MENUITEM_DIF_NUZLOCKE]     = {sText_Desc_NuzlockeOff,         sText_Desc_NuzlockeNormal, sText_Desc_NuzlockeHard},
    [MENUITEM_DIF_RANDOMIZER_E] = {sText_Desc_RandomizerEOff,      sText_Desc_RandomizerEOn,  sText_Empty},
    [MENUITEM_DIF_RANDOMIZER_T] = {sText_Desc_RandomizerTOff,      sText_Desc_RandomizerTOn,  sText_Empty},
    [MENUITEM_DIF_DEBUGMENU]    = {
        COMPOUND_STRING("Disables the debug menu completely."),
        COMPOUND_STRING("Enables the wish menu (debug menu)."),
        COMPOUND_STRING("")
    },
    [MENUITEM_DIF_CANCEL]       = {sText_Desc_Save,                sText_Empty,               sText_Empty},
};

// Disabled Descriptions
static const u8 sText_Desc_Disabled_Textspeed[]     = _("Only active if xyz.");
static const u8 *const sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_COUNT + 2] =
{
    [MENUITEM_GEN_TEXTSPEED]    = sText_Desc_Disabled_Textspeed,
    [MENUITEM_GEN_BATTLESCENE]  = sText_Empty,
    [MENUITEM_GEN_BATTLESPEED]  = sText_Empty,
    [MENUITEM_GEN_FASTSLIDE]    = sText_Empty,
    [MENUITEM_GEN_HPBAR]        = sText_Empty,
    [MENUITEM_GEN_AUTORUN]      = sText_Empty,
    [MENUITEM_GEN_AUTOFISHING]  = sText_Empty,
    [MENUITEM_GEN_SOUND]        = sText_Empty,
    [MENUITEM_GEN_BUTTONMODE]   = sText_Empty,
    [MENUITEM_GEN_FRAMETYPE]     = sText_Empty,
    [MENUITEM_GEN_CANCEL]        = sText_Empty,
};

// Disabled Difficulty
static const u8 *const sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_COUNT] =
{
    [MENUITEM_DIF_NPCTEAMS]     = sText_Empty,
    [MENUITEM_DIF_BATTLEITEMS]  = sText_Desc_HardLocked,
    [MENUITEM_DIF_BATTLESTYLE]  = sText_Desc_HardLocked,
    [MENUITEM_DIF_INFCANDY]     = sText_Empty,
    [MENUITEM_DIF_LEVELCAPS]    = sText_Desc_HardLocked,
    [MENUITEM_DIF_NUZLOCKE]     = sText_Empty,
    [MENUITEM_DIF_RANDOMIZER_E] = sText_Empty,
    [MENUITEM_DIF_RANDOMIZER_T] = sText_Desc_HardLocked,
    [MENUITEM_DIF_DEBUGMENU]    = sText_Empty,
    [MENUITEM_DIF_CANCEL]       = sText_Empty,
};

static const u8 *const OptionTextDescription(void)
{
    switch (sOptions->submenu)
    {
    case PAGE_GENERAL:
        switch (sOptions->menuCursor[PAGE_GENERAL])
        {
        case MENUITEM_GEN_TEXTSPEED:
            if (!CheckConditions(MENUITEM_GEN_TEXTSPEED))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_TEXTSPEED];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_TEXTSPEED][0];
        case MENUITEM_GEN_BATTLESCENE:
            if (!CheckConditions(MENUITEM_GEN_BATTLESCENE))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_BATTLESCENE];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_BATTLESCENE][sOptions->sel[MENUITEM_GEN_BATTLESCENE]];
        case MENUITEM_GEN_BATTLESPEED:
            if (!CheckConditions(MENUITEM_GEN_BATTLESPEED))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_BATTLESPEED];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_BATTLESPEED][sOptions->sel[MENUITEM_GEN_BATTLESPEED]];
        case MENUITEM_GEN_FASTSLIDE:
            if (!CheckConditions(MENUITEM_GEN_FASTSLIDE))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_FASTSLIDE];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_FASTSLIDE][sOptions->sel[MENUITEM_GEN_FASTSLIDE]];
        case MENUITEM_GEN_HPBAR:
            if (!CheckConditions(MENUITEM_GEN_HPBAR))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_HPBAR];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_HPBAR][sOptions->sel[MENUITEM_GEN_HPBAR]];
        case MENUITEM_GEN_AUTORUN:
            if (!CheckConditions(MENUITEM_GEN_AUTORUN))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_AUTORUN];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_AUTORUN][sOptions->sel[MENUITEM_GEN_AUTORUN]];
        case MENUITEM_GEN_AUTOFISHING:
            if (!CheckConditions(MENUITEM_GEN_AUTOFISHING))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_AUTOFISHING];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_AUTOFISHING][sOptions->sel[MENUITEM_GEN_AUTOFISHING]];
        case MENUITEM_GEN_SOUND:
            if (!CheckConditions(MENUITEM_GEN_SOUND))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_SOUND];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_SOUND][sOptions->sel[MENUITEM_GEN_SOUND]];
        case MENUITEM_GEN_BUTTONMODE:
            if (!CheckConditions(MENUITEM_GEN_BUTTONMODE))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_BUTTONMODE];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_BUTTONMODE][sOptions->sel[MENUITEM_GEN_BUTTONMODE]];
        case MENUITEM_GEN_FRAMETYPE:
            if (!CheckConditions(MENUITEM_GEN_FRAMETYPE))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_FRAMETYPE];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_FRAMETYPE][0];
        case MENUITEM_GEN_CANCEL:
            if (!CheckConditions(MENUITEM_GEN_CANCEL))
                return sOptionMenuItemDescriptionsDisabledGeneral[MENUITEM_GEN_CANCEL];
            return sOptionMenuItemDescriptionsGeneral[MENUITEM_GEN_CANCEL][0];
        }
        return sText_Empty;
    case PAGE_DIFFICULTY:
        switch (sOptions->menuCursor[PAGE_DIFFICULTY])
        {
        case MENUITEM_DIF_NPCTEAMS:
            if (!CheckConditions(MENUITEM_DIF_NPCTEAMS))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_NPCTEAMS];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_NPCTEAMS][0];
        case MENUITEM_DIF_BATTLEITEMS:
            if (!CheckConditions(MENUITEM_DIF_BATTLEITEMS))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_BATTLEITEMS];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_BATTLEITEMS][sOptions->sel_difficulty[MENUITEM_DIF_BATTLEITEMS]];
        case MENUITEM_DIF_BATTLESTYLE:
            if (!CheckConditions(MENUITEM_DIF_BATTLESTYLE))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_BATTLESTYLE];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_BATTLESTYLE][sOptions->sel_difficulty[MENUITEM_DIF_BATTLESTYLE]];
        case MENUITEM_DIF_INFCANDY:
            if (!CheckConditions(MENUITEM_DIF_INFCANDY))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_INFCANDY];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_INFCANDY][sOptions->sel_difficulty[MENUITEM_DIF_INFCANDY]];
        case MENUITEM_DIF_LEVELCAPS:
            if (!CheckConditions(MENUITEM_DIF_LEVELCAPS))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_LEVELCAPS];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_LEVELCAPS][sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]];
        case MENUITEM_DIF_NUZLOCKE:
            if (!CheckConditions(MENUITEM_DIF_NUZLOCKE))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_NUZLOCKE];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_NUZLOCKE][sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE]];
        case MENUITEM_DIF_RANDOMIZER_E:
            if (!CheckConditions(MENUITEM_DIF_RANDOMIZER_E))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_RANDOMIZER_E];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_RANDOMIZER_E][sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E]];
        case MENUITEM_DIF_RANDOMIZER_T:
            if (!CheckConditions(MENUITEM_DIF_RANDOMIZER_T))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_RANDOMIZER_T];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_RANDOMIZER_T][sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T]];
        case MENUITEM_DIF_DEBUGMENU:
            if (!CheckConditions(MENUITEM_DIF_DEBUGMENU))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_DEBUGMENU];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_DEBUGMENU][sOptions->sel_difficulty[MENUITEM_DIF_DEBUGMENU]];
        case MENUITEM_DIF_CANCEL:
            if (!CheckConditions(MENUITEM_DIF_CANCEL))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_CANCEL];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_CANCEL][0];
        }
        return sText_Empty;
    }
    return sText_Empty;
}

static u8 MenuItemCount(void)
{
    switch (sOptions->submenu)
    {
    case PAGE_GENERAL:      return MENUITEM_GEN_COUNT;
    case PAGE_DIFFICULTY:   return MENUITEM_DIF_COUNT;
    }
    return MENUITEM_DIF_COUNT;
}

static u8 MenuItemCancel(void)
{
    switch (sOptions->submenu)
    {
    case PAGE_GENERAL:      return MENUITEM_GEN_CANCEL;
    case PAGE_DIFFICULTY:   return MENUITEM_DIF_CANCEL;
    }
    return MENUITEM_DIF_CANCEL;
}

// Persistent battle-speed option.
// This uses HLWSaveExtension.future[] instead of changing SaveBlock2's frozen ABI.
static void InitBattleSpeedSaveExtensionIfNeeded(void)
{
    struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return;

    ext = &gSaveBlock1Ptr->hlwSave;

    if (ext->magic != HLW_BATTLE_SPEED_SAVE_MAGIC
     || ext->version != HLW_BATTLE_SPEED_SAVE_EXTENSION_VERSION
     || ext->size != sizeof(*ext))
    {
        memset(ext, 0, sizeof(*ext));
        ext->magic = HLW_BATTLE_SPEED_SAVE_MAGIC;
        ext->version = HLW_BATTLE_SPEED_SAVE_EXTENSION_VERSION;
        ext->size = sizeof(*ext);
    }
}

static u8 LoadBattleSpeedOption(void)
{
    struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return HLW_BATTLE_SPEED_NORMAL;

    InitBattleSpeedSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;

    if (ext->future[HLW_BATTLE_SPEED_SAVE_TAG0_OFFSET] != HLW_BATTLE_SPEED_SAVE_TAG0
     || ext->future[HLW_BATTLE_SPEED_SAVE_TAG1_OFFSET] != HLW_BATTLE_SPEED_SAVE_TAG1
     || ext->future[HLW_BATTLE_SPEED_SAVE_VERSION_OFFSET] != HLW_BATTLE_SPEED_SAVE_VERSION
     || ext->future[HLW_BATTLE_SPEED_SAVE_VALUE_OFFSET] >= HLW_BATTLE_SPEED_COUNT)
    {
        ext->future[HLW_BATTLE_SPEED_SAVE_TAG0_OFFSET] = HLW_BATTLE_SPEED_SAVE_TAG0;
        ext->future[HLW_BATTLE_SPEED_SAVE_TAG1_OFFSET] = HLW_BATTLE_SPEED_SAVE_TAG1;
        ext->future[HLW_BATTLE_SPEED_SAVE_VERSION_OFFSET] = HLW_BATTLE_SPEED_SAVE_VERSION;
        ext->future[HLW_BATTLE_SPEED_SAVE_VALUE_OFFSET] = HLW_BATTLE_SPEED_NORMAL;
    }

    return ext->future[HLW_BATTLE_SPEED_SAVE_VALUE_OFFSET];
}

static void SaveBattleSpeedOption(u8 selection)
{
    struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return;

    if (selection >= HLW_BATTLE_SPEED_COUNT)
        selection = HLW_BATTLE_SPEED_NORMAL;

    InitBattleSpeedSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;

    ext->future[HLW_BATTLE_SPEED_SAVE_TAG0_OFFSET] = HLW_BATTLE_SPEED_SAVE_TAG0;
    ext->future[HLW_BATTLE_SPEED_SAVE_TAG1_OFFSET] = HLW_BATTLE_SPEED_SAVE_TAG1;
    ext->future[HLW_BATTLE_SPEED_SAVE_VERSION_OFFSET] = HLW_BATTLE_SPEED_SAVE_VERSION;
    ext->future[HLW_BATTLE_SPEED_SAVE_VALUE_OFFSET] = selection;
}

// Persistent HP-bar animation option.
// Kept in HLWSaveExtension.future[] so SaveBlock2's frozen ABI is untouched.
static void InitHpBarSaveExtensionIfNeeded(void)
{
    struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return;

    ext = &gSaveBlock1Ptr->hlwSave;

    if (ext->magic != HLW_HP_BAR_SAVE_MAGIC
     || ext->version != HLW_HP_BAR_SAVE_EXTENSION_VERSION
     || ext->size != sizeof(*ext))
    {
        memset(ext, 0, sizeof(*ext));
        ext->magic = HLW_HP_BAR_SAVE_MAGIC;
        ext->version = HLW_HP_BAR_SAVE_EXTENSION_VERSION;
        ext->size = sizeof(*ext);
    }
}

static u8 LoadHpBarOption(void)
{
    struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return HLW_HP_BAR_NORMAL;

    InitHpBarSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;

    if (ext->future[HLW_HP_BAR_SAVE_TAG0_OFFSET] != HLW_HP_BAR_SAVE_TAG0
     || ext->future[HLW_HP_BAR_SAVE_TAG1_OFFSET] != HLW_HP_BAR_SAVE_TAG1
     || ext->future[HLW_HP_BAR_SAVE_VERSION_OFFSET] != HLW_HP_BAR_SAVE_VERSION
     || ext->future[HLW_HP_BAR_SAVE_VALUE_OFFSET] >= HLW_HP_BAR_COUNT)
    {
        ext->future[HLW_HP_BAR_SAVE_TAG0_OFFSET] = HLW_HP_BAR_SAVE_TAG0;
        ext->future[HLW_HP_BAR_SAVE_TAG1_OFFSET] = HLW_HP_BAR_SAVE_TAG1;
        ext->future[HLW_HP_BAR_SAVE_VERSION_OFFSET] = HLW_HP_BAR_SAVE_VERSION;
        ext->future[HLW_HP_BAR_SAVE_VALUE_OFFSET] = HLW_HP_BAR_NORMAL;
    }

    return ext->future[HLW_HP_BAR_SAVE_VALUE_OFFSET];
}

static void SaveHpBarOption(u8 selection)
{
    struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return;

    if (selection >= HLW_HP_BAR_COUNT)
        selection = HLW_HP_BAR_NORMAL;

    InitHpBarSaveExtensionIfNeeded();
    ext = &gSaveBlock1Ptr->hlwSave;

    ext->future[HLW_HP_BAR_SAVE_TAG0_OFFSET] = HLW_HP_BAR_SAVE_TAG0;
    ext->future[HLW_HP_BAR_SAVE_TAG1_OFFSET] = HLW_HP_BAR_SAVE_TAG1;
    ext->future[HLW_HP_BAR_SAVE_VERSION_OFFSET] = HLW_HP_BAR_SAVE_VERSION;
    ext->future[HLW_HP_BAR_SAVE_VALUE_OFFSET] = selection;
}

// Battle code can query this without mutating save data.
// NORMAL is the safe fallback for old/invalid saves.
bool32 IsHpBarInstant(void)
{
    const struct HLWSaveExtension *ext;

    if (gSaveBlock1Ptr == NULL)
        return FALSE;

    ext = &gSaveBlock1Ptr->hlwSave;

    if (ext->magic != HLW_HP_BAR_SAVE_MAGIC
     || ext->version != HLW_HP_BAR_SAVE_EXTENSION_VERSION
     || ext->size != sizeof(*ext)
     || ext->future[HLW_HP_BAR_SAVE_TAG0_OFFSET] != HLW_HP_BAR_SAVE_TAG0
     || ext->future[HLW_HP_BAR_SAVE_TAG1_OFFSET] != HLW_HP_BAR_SAVE_TAG1
     || ext->future[HLW_HP_BAR_SAVE_VERSION_OFFSET] != HLW_HP_BAR_SAVE_VERSION)
        return FALSE;

    return ext->future[HLW_HP_BAR_SAVE_VALUE_OFFSET] == HLW_HP_BAR_INSTANT;
}

// Main code
static void MainCB2(void)
{
    UpdateOptionMenuScrollingBackground();
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void LoadOptionMenuScrollingBackground(void)
{
    u32 x, y;
    vu16 *dst = (vu16 *)BG_SCREEN_ADDR(28);

    // BG2 is 32x64 tiles. Repeat the authored 32x24 map far enough that a
    // complete 240x160 viewport is always available while we scroll through
    // one 192px source period. The scroll itself resets at exactly 192px, so
    // the player never sees the 512px hardware-map wrap.
    for (y = 0; y < OPTION_SCROLL_BG_HEIGHT_TILES; y++)
    {
        const u32 srcY = y % OPTION_SCROLL_SOURCE_HEIGHT_TILES;

        for (x = 0; x < OPTION_SCROLL_SOURCE_WIDTH_TILES; x++)
        {
            const u16 entry = sOptionMenuScrolling_Tilemap[srcY * OPTION_SCROLL_SOURCE_WIDTH_TILES + x];
            dst[y * OPTION_SCROLL_SOURCE_WIDTH_TILES + x] =
                (entry & 0x0FFF) | (OPTION_SCROLL_BG_PALETTE << 12);
        }
    }
}

static void UpdateOptionMenuScrollingBackground(void)
{
    // Decreasing the BG camera offsets makes the artwork itself drift down and
    // to the right. Y keeps the existing vertical loop, while X wraps across
    // the 256px-wide BG. The slower X speed gives the motion a soft diagonal
    // angle instead of making it look like a 45-degree slide.
    if (sOptionMenuBgScrollX <= OPTION_SCROLL_SPEED_X)
        sOptionMenuBgScrollX = OPTION_SCROLL_X_PERIOD_PIXELS << 8;
    else
        sOptionMenuBgScrollX -= OPTION_SCROLL_SPEED_X;

    if (sOptionMenuBgScrollY <= OPTION_SCROLL_SPEED_Y)
        sOptionMenuBgScrollY = OPTION_SCROLL_Y_PERIOD_PIXELS << 8;
    else
        sOptionMenuBgScrollY -= OPTION_SCROLL_SPEED_Y;

    ChangeBgX(2, sOptionMenuBgScrollX, BG_COORD_SET);
    ChangeBgY(2, sOptionMenuBgScrollY, BG_COORD_SET);
}

static void VBlankCB(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static const u8 sText_TopBar_General[]         = _("GENERAL");
static const u8 sText_TopBar_General_Right[]   = _("{R_BUTTON}CONFIGURATION");
static const u8 sText_TopBar_Difficulty[]       = _("CONFIGURATION");
static const u8 sText_TopBar_Difficulty_Left[]  = _("{L_BUTTON}GENERAL");
static void DrawTopBarText(void)
{
    const u8 color[3] = { TEXT_DYNAMIC_COLOR_6, TEXT_COLOR_WHITE, TEXT_COLOR_OPTIONS_GRAY_FG };

    FillWindowPixelBuffer(WIN_TOPBAR, PIXEL_FILL(15));
    switch (sOptions->submenu)
    {
        case PAGE_GENERAL:
            AddTextPrinterParameterized3(WIN_TOPBAR, FONT_SMALL, 105, 1, color, 0, sText_TopBar_General);
            AddTextPrinterParameterized3(WIN_TOPBAR, FONT_SMALL, 158, 1, color, 0, sText_TopBar_General_Right);
            break;
        case PAGE_DIFFICULTY:
            AddTextPrinterParameterized3(WIN_TOPBAR, FONT_SMALL, 105, 1, color, 0, sText_TopBar_Difficulty);
            AddTextPrinterParameterized3(WIN_TOPBAR, FONT_SMALL, 2, 1, color, 0, sText_TopBar_Difficulty_Left);
            break;
    }
    PutWindowTilemap(WIN_TOPBAR);
    CopyWindowToVram(WIN_TOPBAR, COPYWIN_FULL);
}

static void DrawOptionMenuTexts(void) //left side text
{
    u8 i;

    FillWindowPixelBuffer(WIN_OPTIONS, PIXEL_FILL(2));
    for (i = 0; i < MenuItemCount(); i++)
        DrawLeftSideOptionText(i, (i * Y_DIFF) + 1);
    CopyWindowToVram(WIN_OPTIONS, COPYWIN_FULL);
}

static void DrawDescriptionText(void)
{
    u8 color_gray[3];
    color_gray[0] = TEXT_COLOR_TRANSPARENT;
    color_gray[1] = TEXT_COLOR_WHITE;  // BRANCO (índice 1)
    color_gray[2] = 4;  // CINZA ESCURO (índice 2) - sombra
        
    FillWindowPixelBuffer(WIN_DESCRIPTION, PIXEL_FILL(2));
    AddTextPrinterParameterized4(WIN_DESCRIPTION, FONT_NORMAL, 8, 1, 0, 0, color_gray, TEXT_SKIP_DRAW, OptionTextDescription());
    CopyWindowToVram(WIN_DESCRIPTION, COPYWIN_FULL);
}

static void DrawLeftSideOptionText(int selection, int y)
{
    u8 color_yellow[3];
    u8 color_white[3];

    color_yellow[0] = TEXT_COLOR_TRANSPARENT;
    color_yellow[1] = TEXT_COLOR_OPTIONS_ORANGE_FG;
    color_yellow[2] = TEXT_COLOR_OPTIONS_ORANGE_SHADOW;
    color_white[0] = TEXT_COLOR_TRANSPARENT;
    color_white[1] = TEXT_COLOR_WHITE;  // BRANCO (índice 1)
    color_white[2] = 4;  // CINZA ESCURO (índice 2) - sombra

    if (CheckConditions(selection))
        AddTextPrinterParameterized4(WIN_OPTIONS, FONT_NORMAL, 8, y, 0, 0, color_yellow, TEXT_SKIP_DRAW, OptionTextRight(selection));
    else
        AddTextPrinterParameterized4(WIN_OPTIONS, FONT_NORMAL, 8, y, 0, 0, color_white, TEXT_SKIP_DRAW, OptionTextRight(selection));
}

static void DrawRightSideChoiceText(const u8 *text, int x, int y, bool8 chosen, bool8 active)
{
    u8 color_red[3];
    u8 color_white[3];

    if (active)
    {
        color_red[0] = TEXT_COLOR_TRANSPARENT;
        color_red[1] = TEXT_COLOR_OPTIONS_RED_FG;
        color_red[2] = TEXT_COLOR_OPTIONS_RED_SHADOW;
        color_white[0] = TEXT_COLOR_TRANSPARENT;
        color_white[1] = TEXT_COLOR_WHITE;  // BRANCO (índice 1)
        color_white[2] = 4;  // CINZA ESCURO (índice 2) - sombra
    }
    else
    {
        color_red[0] = TEXT_COLOR_TRANSPARENT;
        color_red[1] = TEXT_COLOR_OPTIONS_RED_DARK_FG;
        color_red[2] = TEXT_COLOR_OPTIONS_RED_DARK_SHADOW;
        color_white[0] = TEXT_COLOR_TRANSPARENT;
        color_white[1] = TEXT_COLOR_WHITE;  // BRANCO (índice 1)
        color_white[2] = 4;  // CINZA ESCURO (índice 2) - sombra
    }

    if (chosen)
        AddTextPrinterParameterized4(WIN_OPTIONS, FONT_NORMAL, x, y, 0, 0, color_red, TEXT_SKIP_DRAW, text);
    else
        AddTextPrinterParameterized4(WIN_OPTIONS, FONT_NORMAL, x, y, 0, 0, color_white, TEXT_SKIP_DRAW, text);
}

static void DrawChoices(u32 id, int y) //right side draw function
{
    switch (sOptions->submenu)
    {
        case PAGE_GENERAL:
            if (sItemFunctionsGeneral[id].drawChoices != NULL)
                sItemFunctionsGeneral[id].drawChoices(sOptions->sel[id], y);
            break;
        case PAGE_DIFFICULTY:
            if (sItemFunctionsDifficulty[id].drawChoices != NULL)
                sItemFunctionsDifficulty[id].drawChoices(sOptions->sel_difficulty[id], y);
            break;
    }
}

static void HighlightOptionMenuItem(void)
{
    int cursor = sOptions->visibleCursor[sOptions->submenu];

    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(Y_DIFF, 224));
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(cursor * Y_DIFF + 24, cursor * Y_DIFF + 40));
}

void CB2_InitOptionMenu(void)
{
    u32 i;
    switch (gMain.state)
    {
    default:
    case 0:
        SetVBlankCallback(NULL);
        gMain.state++;
        break;
    case 1:
        DmaClearLarge16(3, (void *)(VRAM), VRAM_SIZE, 0x1000);
        DmaClear32(3, OAM, OAM_SIZE);
        DmaClear16(3, PLTT, PLTT_SIZE);
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sOptionMenuBgTemplates, ARRAY_COUNT(sOptionMenuBgTemplates));
        ResetBgPositions();
        InitWindows(sOptionMenuWinTemplates);
        DeactivateAllTextPrinters();
        SetGpuReg(REG_OFFSET_WIN0H, 0);
        SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG0 | WININ_WIN1_BG0 | WININ_WIN0_OBJ);
        SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG0 | WINOUT_WIN01_BG1 | WINOUT_WIN01_BG2 | WINOUT_WIN01_OBJ | WINOUT_WIN01_CLR);
        // WIN0 is the selected row and has color effects disabled.
        // Everything outside WIN0 on BG0 is darkened.
        // With the dedicated options palette below this makes:
        //   selected row  = RGB(6,6,7)
        //   normal rows   ≈ RGB(4,4,5) = HLW #212129
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_BG0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 4);
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP);
        ShowBg(0);
        ShowBg(1);
        ShowBg(2);
        sOptionMenuBgScrollX = OPTION_SCROLL_X_PERIOD_PIXELS << 8;
        sOptionMenuBgScrollY = OPTION_SCROLL_Y_PERIOD_PIXELS << 8;
        gMain.state++;
        break;
    case 2:
        ResetPaletteFade();
        ScanlineEffect_Stop();
        ResetTasks();
        ReleaseComfyAnims();
        ResetSpriteData();
        gMain.state++;
        break;
    case 3:
        LoadBgTiles(1, GetWindowFrameTilesPal(gSaveBlock2Ptr->optionsWindowFrameType)->tiles, 0x120, 0x1A2);
        LoadBgTiles(2, sOptionMenuScrolling_Gfx, sizeof(sOptionMenuScrolling_Gfx), 0);
        LoadOptionMenuScrollingBackground();
        gMain.state++;
        break;
    case 4:
        LoadPalette(sOptionMenuBg_Pal, 0, sizeof(sOptionMenuBg_Pal));
        LoadPalette(sOptionMenuScrolling_Pal, BG_PLTT_ID(OPTION_SCROLL_BG_PALETTE), PLTT_SIZE_4BPP);
        LoadPalette(GetWindowFrameTilesPal(gSaveBlock2Ptr->optionsWindowFrameType)->pal, 0x70, 0x20);
        gMain.state++;
        break;
    case 5:
        // Palette 1: top bar + description panel.
        LoadPalette(sOptionMenuText_Pal, 16, sizeof(sOptionMenuText_Pal));
        LoadPalette(sOptionMenuPanelBg_Pal, 18, sizeof(sOptionMenuPanelBg_Pal));
        // WIN_TOPBAR is filled with palette index 15. Override just that slot
        // so the header becomes the requested #95B4EC family without recoloring
        // the description panel or any option text.
        LoadPalette(sOptionMenuTopBarBg_Pal, BG_PLTT_ID(1) + 15, sizeof(sOptionMenuTopBarBg_Pal));

        // Palette 2: options list. Its base background is intentionally lighter;
        // BG0 darkening outside WIN0 brings unselected rows back to #212129,
        // while the selected WIN0 row keeps the lighter highlight.
        LoadPalette(sOptionMenuText_Pal, 32, sizeof(sOptionMenuText_Pal));
        LoadPalette(sOptionMenuHighlightBg_Pal, 34, sizeof(sOptionMenuHighlightBg_Pal));

        gMain.state++;
        break;
    case 6:
    sOptions = AllocZeroed(sizeof(*sOptions));
    sOptions->sel[MENUITEM_GEN_TEXTSPEED]   = gSaveBlock2Ptr->optionsTextSpeed;
    // SLOW is no longer exposed in HLW. Old saves using it become MID.
    if (sOptions->sel[MENUITEM_GEN_TEXTSPEED] == OPTIONS_TEXT_SPEED_SLOW
     || sOptions->sel[MENUITEM_GEN_TEXTSPEED] > OPTIONS_TEXT_SPEED_INSTANT)
        sOptions->sel[MENUITEM_GEN_TEXTSPEED] = OPTIONS_TEXT_SPEED_MID;
    sOptions->sel[MENUITEM_GEN_BATTLESCENE] = gSaveBlock2Ptr->optionsBattleSceneOff;
    sOptions->sel[MENUITEM_GEN_BATTLESPEED] = LoadBattleSpeedOption();
    sOptions->sel[MENUITEM_GEN_FASTSLIDE]   = FlagGet(FLAG_FAST_INTRO_NO_SLIDE);
    sOptions->sel[MENUITEM_GEN_HPBAR]       = LoadHpBarOption();
    sOptions->sel[MENUITEM_GEN_AUTORUN]     = FlagGet(FLAG_SYS_AUTO_RUN);
    sOptions->sel[MENUITEM_GEN_AUTOFISHING] = FlagGet(FLAG_AUTO_FISHING);
    sOptions->sel[MENUITEM_GEN_SOUND]       = gSaveBlock2Ptr->optionsSound;
    sOptions->sel[MENUITEM_GEN_BUTTONMODE]  = gSaveBlock2Ptr->optionsButtonMode;
    sOptions->sel[MENUITEM_GEN_FRAMETYPE]   = gSaveBlock2Ptr->optionsWindowFrameType;
    
    sOptions->sel_difficulty[MENUITEM_DIF_NPCTEAMS]       = gSaveBlock2Ptr->optionsNpcTeams;
    sOptions->sel_difficulty[MENUITEM_DIF_BATTLEITEMS]    = gSaveBlock2Ptr->optionsBattleItems;
    sOptions->sel_difficulty[MENUITEM_DIF_BATTLESTYLE]    = gSaveBlock2Ptr->optionsBattleStyle;
    sOptions->sel_difficulty[MENUITEM_DIF_INFCANDY]       = gSaveBlock2Ptr->optionsInfiniteCandy;
    sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]      = gSaveBlock2Ptr->optionsLevelCaps;
    sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE]       = gSaveBlock2Ptr->optionsNuzlocke;
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E]   = FlagGet(RANDOMIZER_FLAG_WILD_MON);
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T]   = FlagGet(RANDOMIZER_FLAG_TRAINER_MON);
    sOptions->sel_difficulty[MENUITEM_DIF_DEBUGMENU]      = gSaveBlock2Ptr->optionsDebugMenu;
    EnforceHardNpcTeamsRules();

    // NOVO: Usar a página inicial configurada
    sOptions->submenu = sOptionMenuStartPage;
    
    // Reset para a página padrão para a próxima vez
    sOptionMenuStartPage = PAGE_GENERAL;

    gMain.state++;
    break;
    case 7:
        PutWindowTilemap(WIN_TOPBAR);
        DrawTopBarText();
        gMain.state++;
        break;
    case 8:
        PutWindowTilemap(WIN_DESCRIPTION);
        DrawDescriptionText();
        gMain.state++;
        break;
    case 9:
        PutWindowTilemap(WIN_OPTIONS);
        DrawOptionMenuTexts();
        gMain.state++;
        break;
    case 10:
        CreateTask(Task_OptionMenuFadeIn, 0);
        
        sOptions->arrowTaskId = AddScrollIndicatorArrowPairParameterized(SCROLL_ARROW_UP, 240 / 2, 20, 110, MENUITEM_GEN_COUNT - 1, 110, 110, 0);

        for (i = 0; i < min(OPTIONS_ON_SCREEN, MenuItemCount()); i++)
            DrawChoices(i, i * Y_DIFF);

        HighlightOptionMenuItem();

        CopyWindowToVram(WIN_OPTIONS, COPYWIN_FULL);
        gMain.state++;
        break;
    case 11:
        DrawBgWindowFrames();
        gMain.state++;
        break;
    case 12:
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0x10, 0, RGB_BLACK);
        SetVBlankCallback(VBlankCB);
        SetMainCallback2(MainCB2);
        return;
    }
}

static void Task_OptionMenuFadeIn(u8 taskId)
{
    if (!gPaletteFade.active)
        gTasks[taskId].func = Task_OptionMenuProcessInput;
}

static void Task_OptionMenuProcessInput(u8 taskId)
{
    u8 optionsToDraw = min(OPTIONS_ON_SCREEN , MenuItemCount());
    if (JOY_NEW(A_BUTTON))
    {
        if (sOptions->menuCursor[sOptions->submenu] == MenuItemCancel())
            gTasks[taskId].func = Task_OptionMenuSave;
    }
    else if (JOY_NEW(B_BUTTON))
    {
        gTasks[taskId].func = Task_OptionMenuSave;
    }
    else if (JOY_NEW(DPAD_UP))
    {
        if (sOptions->visibleCursor[sOptions->submenu] == NUM_OPTIONS_FROM_BORDER) // don't advance visible cursor until scrolled to the bottom
        {
            if (--sOptions->menuCursor[sOptions->submenu] == 0)
                sOptions->visibleCursor[sOptions->submenu]--;
            else
                ScrollMenu(1);
        }
        else
        {
            if (--sOptions->menuCursor[sOptions->submenu] < 0) // Scroll all the way to the bottom.
            {
                sOptions->visibleCursor[sOptions->submenu] = sOptions->menuCursor[sOptions->submenu] = optionsToDraw-2;
                ScrollAll(0);
                sOptions->visibleCursor[sOptions->submenu] = optionsToDraw-1;
                sOptions->menuCursor[sOptions->submenu] = MenuItemCount() - 1;
            }
            else
            {
                sOptions->visibleCursor[sOptions->submenu]--;
            }
        }
        HighlightOptionMenuItem();
        DrawDescriptionText();
        PlaySE(SE_SELECT);
    }
    else if (JOY_NEW(DPAD_DOWN))
    {
        if (sOptions->visibleCursor[sOptions->submenu] == optionsToDraw-2) // don't advance visible cursor until scrolled to the bottom
        {
            if (++sOptions->menuCursor[sOptions->submenu] == MenuItemCount() - 1)
                sOptions->visibleCursor[sOptions->submenu]++;
            else
                ScrollMenu(0);
        }
        else
        {
            if (++sOptions->menuCursor[sOptions->submenu] >= MenuItemCount()-1) // Scroll all the way to the top.
            {
                sOptions->visibleCursor[sOptions->submenu] = optionsToDraw-2;
                sOptions->menuCursor[sOptions->submenu] = MenuItemCount() - optionsToDraw-1;
                ScrollAll(1);
                sOptions->visibleCursor[sOptions->submenu] = sOptions->menuCursor[sOptions->submenu] = 0;
            }
            else
            {
                sOptions->visibleCursor[sOptions->submenu]++;
            }
        }
        HighlightOptionMenuItem();
        DrawDescriptionText();
        PlaySE(SE_SELECT);
    }
    else if (JOY_NEW(DPAD_LEFT | DPAD_RIGHT))
    {
        if (sOptions->submenu == PAGE_GENERAL)
        {
            int cursor = sOptions->menuCursor[sOptions->submenu];
            u8 previousOption = sOptions->sel[cursor];
            if (CheckConditions(cursor))
            {
                if (sItemFunctionsGeneral[cursor].processInput != NULL)
                {
                    sOptions->sel[cursor] = sItemFunctionsGeneral[cursor].processInput(previousOption);
                    ReDrawAll();
                    DrawDescriptionText();
                }

                if (previousOption != sOptions->sel[cursor])
                {
                    PlaySE(SE_SELECT);
                    DrawChoices(cursor, sOptions->visibleCursor[sOptions->submenu] * Y_DIFF);
                }
            }
            else
            {
                PlaySE(SE_FAILURE);
            }
        }
        else if (sOptions->submenu == PAGE_DIFFICULTY)
        {
            int cursor = sOptions->menuCursor[sOptions->submenu];
            u8 previousOption = sOptions->sel_difficulty[cursor];
            if (CheckConditions(cursor))
            {
                if (sItemFunctionsDifficulty[cursor].processInput != NULL)
                {
                    sOptions->sel_difficulty[cursor] = sItemFunctionsDifficulty[cursor].processInput(previousOption);
                    EnforceHardNpcTeamsRules();
                    ReDrawAll();
                    DrawDescriptionText();
                }

                if (previousOption != sOptions->sel_difficulty[cursor])
                {
                    PlaySE(SE_SELECT);
                    DrawChoices(cursor, sOptions->visibleCursor[sOptions->submenu] * Y_DIFF);
                }
            }
            else
            {
                PlaySE(SE_FAILURE);
            }
        }
    }
    else if (JOY_NEW(R_BUTTON))
    {
        if (sOptions->submenu == PAGE_GENERAL && Debug_IsWishMenuBlockedByEliteFour())
        {
            PlaySE(SE_FAILURE);
            return;
        }

        if (sOptions->submenu != PAGE_DIFFICULTY)
        {
            sOptions->submenu++;
            PlaySE(SE_SELECT);
        }

        DrawTopBarText();
        ReDrawAll();
        HighlightOptionMenuItem();
        DrawDescriptionText();
    }
    else if (JOY_NEW(L_BUTTON))
    {
        if (sOptions->submenu != PAGE_GENERAL)
        {
            sOptions->submenu--;
            PlaySE(SE_SELECT);
        }
        
        DrawTopBarText();
        ReDrawAll();
        HighlightOptionMenuItem();
        DrawDescriptionText();
    }
}

static void Task_OptionMenuSave(u8 taskId)
{
    EnforceHardNpcTeamsRules();

    gSaveBlock2Ptr->optionsTextSpeed        = sOptions->sel[MENUITEM_GEN_TEXTSPEED];
    gSaveBlock2Ptr->optionsBattleSceneOff   = sOptions->sel[MENUITEM_GEN_BATTLESCENE];
    SaveBattleSpeedOption(sOptions->sel[MENUITEM_GEN_BATTLESPEED]);

    if (sOptions->sel[MENUITEM_GEN_FASTSLIDE])
        FlagSet(FLAG_FAST_INTRO_NO_SLIDE);
    else
        FlagClear(FLAG_FAST_INTRO_NO_SLIDE);

    SaveHpBarOption(sOptions->sel[MENUITEM_GEN_HPBAR]);

    if (sOptions->sel[MENUITEM_GEN_AUTORUN])
        FlagSet(FLAG_SYS_AUTO_RUN);
    else
        FlagClear(FLAG_SYS_AUTO_RUN);

    if (sOptions->sel[MENUITEM_GEN_AUTOFISHING])
        FlagSet(FLAG_AUTO_FISHING);
    else
        FlagClear(FLAG_AUTO_FISHING);

    gSaveBlock2Ptr->optionsSound            = sOptions->sel[MENUITEM_GEN_SOUND];
    gSaveBlock2Ptr->optionsButtonMode       = sOptions->sel[MENUITEM_GEN_BUTTONMODE];
    gSaveBlock2Ptr->optionsWindowFrameType  = sOptions->sel[MENUITEM_GEN_FRAMETYPE];

    gSaveBlock2Ptr->optionsNpcTeams         = sOptions->sel_difficulty[MENUITEM_DIF_NPCTEAMS];
    gSaveBlock2Ptr->optionsBattleItems      = sOptions->sel_difficulty[MENUITEM_DIF_BATTLEITEMS];
    gSaveBlock2Ptr->optionsBattleStyle      = sOptions->sel_difficulty[MENUITEM_DIF_BATTLESTYLE];
    gSaveBlock2Ptr->optionsInfiniteCandy    = sOptions->sel_difficulty[MENUITEM_DIF_INFCANDY];
    gSaveBlock2Ptr->optionsLevelCaps        = sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS];
    gSaveBlock2Ptr->optionsNuzlocke         = sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE];

    if (sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E])
        FlagSet(RANDOMIZER_FLAG_WILD_MON);
    else
        FlagClear(RANDOMIZER_FLAG_WILD_MON);

    if (sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T])
        FlagSet(RANDOMIZER_FLAG_TRAINER_MON);
    else
        FlagClear(RANDOMIZER_FLAG_TRAINER_MON);

    gSaveBlock2Ptr->optionsDebugMenu        = sOptions->sel_difficulty[MENUITEM_DIF_DEBUGMENU];
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 0x10, RGB_BLACK);
    gTasks[taskId].func = Task_OptionMenuFadeOut;
}

static void Task_OptionMenuFadeOut(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        if (sOptions != NULL && sOptions->arrowTaskId != TASK_NONE)
        {
            RemoveScrollIndicatorArrowPair(sOptions->arrowTaskId);
            sOptions->arrowTaskId = TASK_NONE;
        }

        // Ensure option menu-specific window/blend state does not leak to the next callback.
        SetGpuReg(REG_OFFSET_WIN0H, 0);
        SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WININ, 0);
        SetGpuReg(REG_OFFSET_WINOUT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, 0);
        SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);

        DestroyTask(taskId);
        FreeAllWindowBuffers();
        FREE_AND_SET_NULL(sOptions);
        SetMainCallback2(gMain.savedCallback);
    }
}

static void ScrollMenu(int direction)
{
    int menuItem, pos;
    u8 optionsToDraw = min(OPTIONS_ON_SCREEN, MenuItemCount());

    if (direction == 0) // scroll down
        menuItem = sOptions->menuCursor[sOptions->submenu] + NUM_OPTIONS_FROM_BORDER, pos = optionsToDraw - 1;
    else
        menuItem = sOptions->menuCursor[sOptions->submenu] - NUM_OPTIONS_FROM_BORDER, pos = 0;

    // Hide one
    ScrollWindow(WIN_OPTIONS, direction, Y_DIFF, PIXEL_FILL(2));
    // Show one
    FillWindowPixelRect(WIN_OPTIONS, PIXEL_FILL(2), 0, Y_DIFF * pos, 26 * 8, Y_DIFF);
    // Print
    DrawChoices(menuItem, pos * Y_DIFF);
    DrawLeftSideOptionText(menuItem, (pos * Y_DIFF) + 1);
    CopyWindowToVram(WIN_OPTIONS, COPYWIN_GFX);
}

static void ScrollAll(int direction) // to bottom or top
{
    int i, y, menuItem, pos;
    int scrollCount;
    u8 optionsToDraw = min(OPTIONS_ON_SCREEN, MenuItemCount());

    scrollCount = MenuItemCount() - optionsToDraw;

    // Move items up/down
    ScrollWindow(WIN_OPTIONS, direction, Y_DIFF * scrollCount, PIXEL_FILL(2));

    // Clear moved items
    if (direction == 0)
    {
        y = optionsToDraw - scrollCount;
        if (y < 0)
            y = optionsToDraw;
        y *= Y_DIFF;
    }
    else
    {
        y = 0;
    }

    FillWindowPixelRect(WIN_OPTIONS, PIXEL_FILL(2), 0, y, 26 * 8, Y_DIFF * scrollCount);
    // Print new texts
    for (i = 0; i < scrollCount; i++)
    {
        if (direction == 0) // From top to bottom
            menuItem = MenuItemCount() - 1 - i, pos = optionsToDraw - 1 - i;
        else // From bottom to top
            menuItem = i, pos = i;
        DrawChoices(menuItem, pos * Y_DIFF);
        DrawLeftSideOptionText(menuItem, (pos * Y_DIFF) + 1);
    }
    CopyWindowToVram(WIN_OPTIONS, COPYWIN_GFX);
}

// Process Input functions ****GENERIC****
static int GetMiddleX(const u8 *txt1, const u8 *txt2, const u8 *txt3)
{
    int xMid;
    int widthLeft = GetStringWidth(1, txt1, 0);
    int widthMid = GetStringWidth(1, txt2, 0);
    int widthRight = GetStringWidth(1, txt3, 0);

    widthMid -= (198 - 104);
    xMid = (widthLeft - widthMid - widthRight) / 2 + 104;
    return xMid;
}

static int XOptions_ProcessInput(int x, int selection)
{
    if (JOY_NEW(DPAD_RIGHT))
    {
        if (++selection > (x - 1))
            selection = 0;
    }
    if (JOY_NEW(DPAD_LEFT))
    {
        if (--selection < 0)
            selection = (x - 1);
    }
    return selection;
}

static int ProcessInput_Options_Two(int selection)
{
    if (JOY_NEW(DPAD_LEFT | DPAD_RIGHT))
        selection ^= 1;

    return selection;
}

static int ProcessInput_Options_Three(int selection)
{
    return XOptions_ProcessInput(3, selection);
}

static int ProcessInput_TextSpeed(int selection)
{
    if (selection != OPTIONS_TEXT_SPEED_MID
     && selection != OPTIONS_TEXT_SPEED_FAST
     && selection != OPTIONS_TEXT_SPEED_INSTANT)
        selection = OPTIONS_TEXT_SPEED_MID;

    if (JOY_NEW(DPAD_RIGHT))
    {
        switch (selection)
        {
        case OPTIONS_TEXT_SPEED_MID:
            selection = OPTIONS_TEXT_SPEED_FAST;
            break;
        case OPTIONS_TEXT_SPEED_FAST:
            selection = OPTIONS_TEXT_SPEED_INSTANT;
            break;
        default:
            selection = OPTIONS_TEXT_SPEED_MID;
            break;
        }
    }

    if (JOY_NEW(DPAD_LEFT))
    {
        switch (selection)
        {
        case OPTIONS_TEXT_SPEED_MID:
            selection = OPTIONS_TEXT_SPEED_INSTANT;
            break;
        case OPTIONS_TEXT_SPEED_FAST:
            selection = OPTIONS_TEXT_SPEED_MID;
            break;
        default:
            selection = OPTIONS_TEXT_SPEED_FAST;
            break;
        }
    }

    return selection;
}

// Process Input functions ****SPECIFIC****
static int ProcessInput_Sound(int selection)
{
    if (JOY_NEW(DPAD_LEFT | DPAD_RIGHT))
    {
        selection ^= 1;
        SetPokemonCryStereo(selection);
    }

    return selection;
}

static int ProcessInput_FrameType(int selection)
{
    if (JOY_NEW(DPAD_RIGHT))
    {
        if (selection < WINDOW_FRAMES_COUNT - 1)
            selection++;
        else
            selection = 0;

        LoadBgTiles(1, GetWindowFrameTilesPal(selection)->tiles, 0x120, 0x1A2);
        LoadPalette(GetWindowFrameTilesPal(selection)->pal, 0x70, 0x20);
    }
    if (JOY_NEW(DPAD_LEFT))
    {
        if (selection != 0)
            selection--;
        else
            selection = WINDOW_FRAMES_COUNT - 1;

        LoadBgTiles(1, GetWindowFrameTilesPal(selection)->tiles, 0x120, 0x1A2);
        LoadPalette(GetWindowFrameTilesPal(selection)->pal, 0x70, 0x20);
    }
    return selection;
}

// Draw Choices functions ****GENERIC****
static void DrawOptionMenuChoice(const u8 *text, u8 x, u8 y, u8 style, bool8 active)
{
    bool8 choosen = FALSE;
    if (style != 0)
        choosen = TRUE;

    DrawRightSideChoiceText(text, x, y+1, choosen, active);
}

static void DrawChoices_Options_Three(const u8 *const *const strings, int selection, int y, bool8 active)
{
    u8 styles[3] = {0};
    int xMid;

    styles[selection] = 1;
    xMid = GetMiddleX(strings[0], strings[1], strings[2]);

    DrawOptionMenuChoice(strings[0], 104, y, styles[0], active);
    DrawOptionMenuChoice(strings[1], xMid, y, styles[1], active);
    DrawOptionMenuChoice(strings[2], GetStringRightAlignXOffset(1, strings[2], 198), y, styles[2], active);
}

static void ReDrawAll(void)
{
    u8 menuItem = sOptions->menuCursor[sOptions->submenu] - sOptions->visibleCursor[sOptions->submenu];
    u8 i;
    u8 optionsToDraw = min(OPTIONS_ON_SCREEN, MenuItemCount());

    if (MenuItemCount() <= OPTIONS_ON_SCREEN) // Draw or delete the scrolling arrows based on options in the menu
    {
        if (sOptions->arrowTaskId != TASK_NONE)
        {
            RemoveScrollIndicatorArrowPair(sOptions->arrowTaskId);
            sOptions->arrowTaskId = TASK_NONE;
        }
    }
    else
    {
        if (sOptions->arrowTaskId == TASK_NONE)
            sOptions->arrowTaskId = AddScrollIndicatorArrowPairParameterized(SCROLL_ARROW_UP, 240 / 2, 20, 110, MenuItemCount() - 1, 110, 110, 0);

    }

    FillWindowPixelBuffer(WIN_OPTIONS, PIXEL_FILL(2));
    for (i = 0; i < optionsToDraw; i++)
    {
        DrawChoices(menuItem+i, i * Y_DIFF);
        DrawLeftSideOptionText(menuItem+i, (i * Y_DIFF) + 1);
    }
    CopyWindowToVram(WIN_OPTIONS, COPYWIN_GFX);
}

// Process Input functions ****SPECIFIC****
static const u8 sText_TextSpeedMid[]     = _("MID");
static const u8 sText_TextSpeedFast[]    = _("FAST");
static const u8 sText_TextSpeedInstant[] = _("INST");

static void DrawChoices_TextSpeed(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_TEXTSPEED);
    u8 styles[3] = {0};
    int xMid;

    if (selection != OPTIONS_TEXT_SPEED_MID
     && selection != OPTIONS_TEXT_SPEED_FAST
     && selection != OPTIONS_TEXT_SPEED_INSTANT)
        selection = OPTIONS_TEXT_SPEED_MID;

    if (selection == OPTIONS_TEXT_SPEED_MID)
        styles[0] = 1;
    else if (selection == OPTIONS_TEXT_SPEED_FAST)
        styles[1] = 1;
    else
        styles[2] = 1;

    xMid = GetMiddleX(sText_TextSpeedMid, sText_TextSpeedFast, sText_TextSpeedInstant);

    DrawOptionMenuChoice(sText_TextSpeedMid, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_TextSpeedFast, xMid, y, styles[1], active);
    DrawOptionMenuChoice(
        sText_TextSpeedInstant,
        GetStringRightAlignXOffset(FONT_NORMAL, sText_TextSpeedInstant, 198),
        y,
        styles[2],
        active
    );
}

static const u8 sText_BattleSpeedNormal[] = _("NORMAL");
static const u8 sText_BattleSpeed2x[]     = _("2X");
static const u8 sText_BattleSpeed4x[]     = _("4X");
static const u8 *const sBattleSpeedStrings[] =
{
    sText_BattleSpeedNormal,
    sText_BattleSpeed2x,
    sText_BattleSpeed4x,
};

static void DrawChoices_BattleSpeed(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_BATTLESPEED);

    if (selection >= HLW_BATTLE_SPEED_COUNT)
        selection = HLW_BATTLE_SPEED_NORMAL;

    DrawChoices_Options_Three(sBattleSpeedStrings, selection, y, active);
}

static void DrawChoices_BattleScene(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_BATTLESCENE);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(gText_BattleSceneOn, 104, y, styles[0], active);
    DrawOptionMenuChoice(gText_BattleSceneOff, GetStringRightAlignXOffset(FONT_NORMAL, gText_BattleSceneOff, 198), y, styles[1], active);
}

static void DrawChoices_BattleStyle(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_BATTLESTYLE);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(gText_BattleStyleShift, 104, y, styles[0], active);
    DrawOptionMenuChoice(gText_BattleStyleSet, GetStringRightAlignXOffset(FONT_NORMAL, gText_BattleStyleSet, 198), y, styles[1], active);
}

static void DrawChoices_NpcTeams(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_NPCTEAMS);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionNpcTeamsCasual, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionNpcTeamsHard, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionNpcTeamsHard, 198), y, styles[1], active);
}

static void DrawChoices_BattleItems(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_BATTLEITEMS);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionBattleItemsOn, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionBattleItemsOff, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionBattleItemsOff, 198), y, styles[1], active);
}

static void DrawChoices_InfCandy(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_INFCANDY);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionInfCandyOff, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionInfCandyOn, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionInfCandyOn, 198), y, styles[1], active);
}

static void DrawChoices_Sound(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_SOUND);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(gText_SoundMono, 104, y, styles[0], active);
    DrawOptionMenuChoice(gText_SoundStereo, GetStringRightAlignXOffset(FONT_NORMAL, gText_SoundStereo, 198), y, styles[1], active);
}

static void DrawChoices_ButtonMode(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_BUTTONMODE);
    u8 styles[3] = {0};
    int xMid = GetMiddleX(gText_ButtonTypeNormal, gText_ButtonTypeLR, gText_ButtonTypeLEqualsA);
    styles[selection] = 1;

    DrawOptionMenuChoice(gText_ButtonTypeNormal, 104, y, styles[0], active);
    DrawOptionMenuChoice(gText_ButtonTypeLR, xMid, y, styles[1], active);
    DrawOptionMenuChoice(gText_ButtonTypeLEqualsA, GetStringRightAlignXOffset(1, gText_ButtonTypeLEqualsA, 198), y, styles[2], active);
}

static const u8 sText_Normal[] = _("NORMAL");

static void DrawChoices_FrameType(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_FRAMETYPE);
    u8 text[16];
    u8 n = selection + 1;
    u16 i;

    for (i = 0; gText_FrameTypeNumber[i] != EOS && i <= 5; i++)
        text[i] = gText_FrameTypeNumber[i];

    // Convert a number to decimal string
    if (n / 10 != 0)
    {
        text[i] = n / 10 + CHAR_0;
        i++;
        text[i] = n % 10 + CHAR_0;
        i++;
    }
    else
    {
        text[i] = n % 10 + CHAR_0;
        i++;
        text[i] = 0x77;
        i++;
    }

    text[i] = EOS;

    DrawOptionMenuChoice(gText_FrameType, 104, y, 0, active);
    DrawOptionMenuChoice(text, 128, y, 1, active);
}

static void DrawChoices_LevelCaps(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_LEVELCAPS);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionLevelCapsOn, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionLevelCapsOff, GetStringRightAlignXOffset(1, sText_OptionLevelCapsOff, 198), y, styles[1], active);
}

static void DrawChoices_Nuzlocke(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_NUZLOCKE);
    static const u8 *const sTextNuzlockeChoices[] =
    {
        sText_OptionNuzlockeOff,
        sText_OptionNuzlockeNormal,
        sText_OptionNuzlockeHard,
    };

    DrawChoices_Options_Three(sTextNuzlockeChoices, selection, y, active);
}

static void DrawChoices_FastSlide(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_FASTSLIDE);
    u8 styles[2] = {0};

    if (selection > TRUE)
        selection = FALSE;

    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionFalse, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionTrue, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionTrue, 198), y, styles[1], active);
}

static void DrawChoices_AutoRun(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_AUTORUN);
    u8 styles[2] = {0};

    if (selection > TRUE)
        selection = FALSE;

    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionFalse, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionTrue, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionTrue, 198), y, styles[1], active);
}

static const u8 sText_HpBarNormal[]  = _("NORMAL");
static const u8 sText_HpBarInstant[] = _("INSTANT");

static void DrawChoices_HpBar(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_HPBAR);
    u8 styles[2] = {0};

    if (selection >= HLW_HP_BAR_COUNT)
        selection = HLW_HP_BAR_NORMAL;

    styles[selection] = 1;

    DrawOptionMenuChoice(sText_HpBarNormal, 104, y, styles[HLW_HP_BAR_NORMAL], active);
    DrawOptionMenuChoice(sText_HpBarInstant,
                         GetStringRightAlignXOffset(FONT_NORMAL, sText_HpBarInstant, 198),
                         y,
                         styles[HLW_HP_BAR_INSTANT],
                         active);
}

static void DrawChoices_OnOff(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_DEBUGMENU);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionLevelCapsOff, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionLevelCapsOn, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionLevelCapsOn, 198), y, styles[1], active);
}

static void DrawChoices_RandomizerE(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_RANDOMIZER_E);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionFalse, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionTrue, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionTrue, 198), y, styles[1], active);
}

static void DrawChoices_RandomizerT(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_RANDOMIZER_T);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionFalse, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionTrue, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionTrue, 198), y, styles[1], active);
}

static void DrawChoices_AutoFishing(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_GEN_AUTOFISHING);
    u8 styles[2] = {0};
    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionFalse, 104, y, styles[0], active);
    DrawOptionMenuChoice(sText_OptionTrue, GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionTrue, 198), y, styles[1], active);
}

// Background tilemap
#define TILE_TOP_CORNER_L 0x1A2 // 418
#define TILE_TOP_EDGE     0x1A3 // 419
#define TILE_TOP_CORNER_R 0x1A4 // 420
#define TILE_LEFT_EDGE    0x1A5 // 421
#define TILE_RIGHT_EDGE   0x1A7 // 423
#define TILE_BOT_CORNER_L 0x1A8 // 424
#define TILE_BOT_EDGE     0x1A9 // 425
#define TILE_BOT_CORNER_R 0x1AA // 426

static void DrawBgWindowFrames(void)
{
    //                     bg, tile,              x, y, width, height, palNum
    // Option Texts window
    FillBgTilemapBufferRect(1, TILE_TOP_CORNER_L,  1,  2,  1,  1,  7);
    FillBgTilemapBufferRect(1, TILE_TOP_EDGE,      2,  2, 26,  1,  7);
    FillBgTilemapBufferRect(1, TILE_TOP_CORNER_R, 28,  2,  1,  1,  7);
    FillBgTilemapBufferRect(1, TILE_LEFT_EDGE,     1,  3,  1, 16,  7);
    FillBgTilemapBufferRect(1, TILE_RIGHT_EDGE,   28,  3,  1, 16,  7);
    FillBgTilemapBufferRect(1, TILE_BOT_CORNER_L,  1, 13,  1,  1,  7);
    FillBgTilemapBufferRect(1, TILE_BOT_EDGE,      2, 13, 26,  1,  7);
    FillBgTilemapBufferRect(1, TILE_BOT_CORNER_R, 28, 13,  1,  1,  7);

    // Description window
    FillBgTilemapBufferRect(1, TILE_TOP_CORNER_L,  1, 14,  1,  1,  7);
    FillBgTilemapBufferRect(1, TILE_TOP_EDGE,      2, 14, 27,  1,  7);
    FillBgTilemapBufferRect(1, TILE_TOP_CORNER_R, 28, 14,  1,  1,  7);
    FillBgTilemapBufferRect(1, TILE_LEFT_EDGE,     1, 15,  1,  2,  7);
    FillBgTilemapBufferRect(1, TILE_RIGHT_EDGE,   28, 15,  1,  2,  7);
    FillBgTilemapBufferRect(1, TILE_BOT_CORNER_L,  1, 19,  1,  1,  7);
    FillBgTilemapBufferRect(1, TILE_BOT_EDGE,      2, 19, 27,  1,  7);
    FillBgTilemapBufferRect(1, TILE_BOT_CORNER_R, 28, 19,  1,  1,  7);

    CopyBgTilemapBufferToVram(1);
}

void CB2_InitOptionMenu_DifficultyTab(void)
{
    sOptionMenuStartPage = PAGE_DIFFICULTY;
    CB2_InitOptionMenu();
}
