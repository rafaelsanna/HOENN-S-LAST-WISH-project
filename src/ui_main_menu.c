#include "global.h"
#include "comfy_anim.h"
#include "ui_main_menu.h"
#include "strings.h"
#include "bg.h"
#include "data.h"
#include "decompress.h"
#include "event_data.h"
#include "field_weather.h"
#include "gpu_regs.h"
#include "graphics.h"
#include "item.h"
#include "item_menu.h"
#include "item_menu_icons.h"
#include "list_menu.h"
#include "item_icon.h"
#include "item_use.h"
#include "international_string_util.h"
#include "main.h"
#include "malloc.h"
#include "menu.h"
#include "menu_helpers.h"
#include "palette.h"
#include "party_menu.h"
#include "scanline_effect.h"
#include "script.h"
#include "sound.h"
#include "string_util.h"
#include "strings.h"
#include "task.h"
#include "text_window.h"
#include "overworld.h"
#include "event_data.h"
#include "constants/items.h"
#include "constants/field_weather.h"
#include "constants/songs.h"
#include "constants/rgb.h"
#include "pokemon_icon.h"
#include "region_map.h"
#include "pokedex.h"
#include "title_screen.h"
#include "main_menu.h"
#include "option_menu.h"
#include "mystery_event_menu.h"
#include "mystery_gift_menu.h"
#include "link.h"
#include "random.h"
#include "trig.h"
#include "paintings.h"
#include "constants/paintings.h"
#include "ui_credits_viewer.h"

//==========DEFINES==========//
struct MainMenuResources
{
    MainCallback savedCallback;
    u8 gfxLoadState;
    u16 iconBoxSpriteIds[6];
    u16 iconMonSpriteIds[6];
    u16 mugshotSpriteId;
    u16 celebiSpriteId;
    u16 jirachiSpriteId;
    u16 bgScrollX;       // sub-tile 8.8 offset, always 0..7.99 px
    u8 bgVirtualTileX;   // 0..59 in original+mirrored virtual background
    u8 sSelectedOption;
};

enum WindowIds
{
    WINDOW_HEADER,
    WINDOW_MIDDLE,
};

enum {
    HW_WIN_CONTINUE,
    HW_WIN_NEW_GAME,
    HW_WIN_CREDITS,
    HW_WIN_OPTIONS,
    HW_WIN_DIFFICULTY,
};

enum Colors
{
    FONT_BLACK,
    FONT_WHITE,
    FONT_RED,
    FONT_BLUE,
};

enum
{
    HAS_NO_SAVED_GAME,
    HAS_SAVED_GAME,
    HAS_MYSTERY_GIFT,
    HAS_MYSTERY_EVENTS,
};

#define try_free(ptr) ({        \
    void ** ptr__ = (void **)&(ptr);   \
    if (*ptr__ != NULL)                \
        Free(*ptr__);                  \
})

#define NUM_STARS       30
#define STAR_TAG        5000
#define STAR_PRIORITY   2
#define STAR_PALETTE_SLOT_FIRST          12

// Slow decorative flyers behind the menu UI.
#define MAIN_MENU_CELEBI_TAG                5100
#define MAIN_MENU_JIRACHI_TAG               5101
#define MAIN_MENU_FLYER_PRIORITY            2
#define MAIN_MENU_FLYER_RESPAWN_BASE_DELAY  120
#define MAIN_MENU_FLYER_RESPAWN_DELAY_VAR   60

// Broad random cruising band shared by both flyers.
// Each spawn picks a fresh horizontal flight height anywhere in this range.
// The safety gap prevents Celebi/Jirachi from spawning on nearly the same line.
#define MAIN_MENU_FLYER_MIN_Y             40
#define MAIN_MENU_FLYER_MAX_Y            142
#define MAIN_MENU_FLYER_Y_SAFETY_GAP      24
#define MAIN_MENU_FLYER_Y_RANDOM_TRIES    12

// Authored first pass: keep the first appearance low and easy to notice.
// Once that pass finishes, all later spawns use the random-Y system.
#define MAIN_MENU_CELEBI_FIRST_Y          136
#define MAIN_MENU_JIRACHI_FIRST_Y         104

// Lowercase custom background:
// graphics/ui_main_menu/bg.png + graphics/ui_main_menu/bg.bin
//
// Horizontal scroll uses the same 8.8 fixed-point speed as the Pokémon
// naming screen: 0x080 = 0.5 pixel per frame.
#define MAIN_MENU_BG_SCROLL_SPEED        0x020
#define MAIN_MENU_BG_TILEMAP_WIDTH       32
#define MAIN_MENU_BG_TILEMAP_HEIGHT      20
#define MAIN_MENU_BG_VISIBLE_COLS        30
#define MAIN_MENU_BG_VIRTUAL_COLS        (MAIN_MENU_BG_VISIBLE_COLS * 2)
#define MAIN_MENU_BG_TILE_WIDTH_FIXED    (8 << 8)
#define MAIN_MENU_BG_PALETTE_OFFSET      1
#define MAIN_MENU_BG_TILEMAP_BUFFER_SIZE 0x800

// Apenas dois tamanhos: MEDIUM e LARGE
enum {
    STAR_SIZE_MEDIUM,
    STAR_SIZE_LARGE,
    STAR_SIZE_COUNT
};

//==========EWRAM==========//
static EWRAM_DATA struct MainMenuResources *sMainMenuDataPtr = NULL;
static EWRAM_DATA u8 *sBg1TilemapBuffer = NULL;
static EWRAM_DATA u8 *sBg2TilemapBuffer = NULL;
static EWRAM_DATA u8 sSelectedOption = {0};
static EWRAM_DATA u8 menuType = {0};

//==========STATIC DECLARATIONS==========//
static void MainMenu_RunSetup(void);
static bool8 MainMenu_DoGfxSetup(void);
static bool8 MainMenu_InitBgs(void);
static void MainMenu_FadeAndBail(void);
static bool8 MainMenu_LoadGraphics(void);
static void MainMenu_InitWindows(void);
static void PrintToWindow(u8 windowId, u8 colorIdx);
static void Task_MainMenuWaitFadeIn(u8 taskId);
static void Task_MainMenuMain(u8 taskId);
static void MainMenu_InitializeGPUWindows(void);
static void MoveHWindowsWithInput(void);
static void UpdateMainMenuBackgroundScroll(void);
static void BuildMainMenuBackgroundTilemap(void);

static void CreateMugshot(void);
static void DestroyMugshot(void);
static void CreateIconShadow(void);
static void DestroyIconShadow(void);
static u32 GetHPEggCyclePercent(u32 partyIndex);
static void CreatePartyMonIcons(void);
static void DestroyMonIcons(void);

static u8 sStarSpriteIds[NUM_STARS];
static void Task_FloatingStars(u8 taskId);
static void CreateStars(void);
static void LoadStarGfx(void);

static void LoadMainMenuFlyerGfx(void);
static void CreateMainMenuFlyers(void);
static void DestroyMainMenuFlyers(void);
static void SpriteCB_MainMenuCelebi(struct Sprite *sprite);
static void SpriteCB_MainMenuJirachi(struct Sprite *sprite);
static void UpdateMainMenuFlyerBob(struct Sprite *sprite);
static u16 GetMainMenuFlyerRespawnDelay(void);
static s16 GetMainMenuFlyerRandomY(bool8 isCelebi);
static void SpawnMainMenuFlyerAtY(struct Sprite *sprite, bool8 isCelebi, s16 y);
static void SpawnMainMenuFlyer(struct Sprite *sprite, bool8 isCelebi);
static void QueueMainMenuFlyerRespawn(struct Sprite *sprite, bool8 isCelebi, u16 delay);

static void Task_ReturnToMainMenu(u8 taskId);

//==========BACKGROUND TEMPLATES==========//
static const struct BgTemplate sMainMenuBgTemplates[] =
{
    {   // BG0: Texto
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 31,
        .priority = 0
    },
    {   // BG1: UI principal
        .bg = 1,
        .charBaseIndex = 3,
        .mapBaseIndex = 30,
        .priority = 1
    },
    {   // BG2: fundo custom animado (bg.png)
        .bg = 2,
        // Keep the custom background in the original BG2 VRAM region.
        // charblock 1 can be overwritten by BG0/window graphics.
        .charBaseIndex = 2,
        .mapBaseIndex = 28,
        .screenSize = 0,    // 256x256; streamed ring-buffer tilemap
        .priority = 3
    }
};

static const struct WindowTemplate sMainMenuWindowTemplates[] = 
{
    [WINDOW_HEADER] = {
        .bg = 0,
        .tilemapLeft = 10,
        .tilemapTop = 1,
        .width = 18,
        .height = 2,
        .paletteNum = 0,
        .baseBlock = 1,
    },
    [WINDOW_MIDDLE] = {
        .bg = 0,
        .tilemapLeft = 8,
        .tilemapTop = 4,
        .width = 18,
        .height = 7,
        .paletteNum = 0,
        .baseBlock = 1 + (18 * 2),
    },
    DUMMY_WIN_TEMPLATE
};

struct HighlightWindowCoords { u8 left; u8 right; };
struct HWWindowPosition { struct HighlightWindowCoords winh, winv; };

static const struct HWWindowPosition HWinCoords[5] = 
{
    [HW_WIN_CONTINUE]   = {{7, 233}, {7, 89}},
    [HW_WIN_NEW_GAME]   = {{7, 113}, {103, 122}},
    [HW_WIN_CREDITS]    = {{7, 113}, {135, 154}},     // igual ao MYSTERY_GIFT
    [HW_WIN_OPTIONS]    = {{126, 233}, {103, 122}},
    [HW_WIN_DIFFICULTY] = {{126, 233}, {135, 154}},   // igual ao MYSTERY_EVENT
};

//==========ASSETS==========//
static const u32 sMainBgTiles[]    = INCBIN_U32("graphics/ui_main_menu/main_tiles.4bpp.lz");
static const u32 sMainBgTilemap[]  = INCBIN_U32("graphics/ui_main_menu/main_tiles.bin.lz");
static const u16 sMainBgPalette[]  = INCBIN_U16("graphics/ui_main_menu/main_tiles.gbapal");
static const u32 sMainBgTilesFem[]   = INCBIN_U32("graphics/ui_main_menu/main_tiles.4bpp.lz");
static const u32 sMainBgTilemapFem[] = INCBIN_U32("graphics/ui_main_menu/main_tiles.bin.lz");
static const u16 sMainBgPaletteFem[] = INCBIN_U16("graphics/ui_main_menu/main_tiles.gbapal");
// New lowercase background.
// Linux is case-sensitive: lowercase bg.* is distinct from the old uppercase BG/BG5 assets.
// bg.png -> bg.4bpp + bg.gbapal; bg.bin is the raw 32x20 text-BG tilemap.
static const u8 sStaticBgTiles[]    = INCBIN_U8("graphics/ui_main_menu/bg.4bpp");
static const u16 sStaticBgTilemap[] = INCBIN_U16("graphics/ui_main_menu/bg.bin");
static const u16 sStaticBgPalette[] = INCBIN_U16("graphics/ui_main_menu/bg.gbapal");
static const u16 sIconBox_Pal[]    = INCBIN_U16("graphics/ui_main_menu/icon_shadow.gbapal");
static const u32 sIconBox_Gfx[]    = INCBIN_U32("graphics/ui_main_menu/icon_shadow.4bpp.lz");
static const u16 sIconBox_PalFem[] = INCBIN_U16("graphics/ui_main_menu/icon_shadow_fem.gbapal");
static const u32 sIconBox_GfxFem[] = INCBIN_U32("graphics/ui_main_menu/icon_shadow_fem.4bpp.lz");
static const u16 sBrendanMugshot_Pal[] = INCBIN_U16("graphics/ui_main_menu/brendan_mugshot.gbapal");
static const u32 sBrendanMugshot_Gfx[] = INCBIN_U32("graphics/ui_main_menu/brendan_mugshot.4bpp.lz");
static const u16 sMayMugshot_Pal[] = INCBIN_U16("graphics/ui_main_menu/may_mugshot.gbapal");
static const u32 sMayMugshot_Gfx[] = INCBIN_U32("graphics/ui_main_menu/may_mugshot.4bpp.lz");

// Decorative flyers: 4 frames stacked vertically, 64x64 each.
// The build pipeline generates .4bpp/.gbapal from celebi.png / jirachi.png.
static const u32 sMainMenuCelebi_Gfx[]  = INCBIN_U32("graphics/ui_main_menu/celebi.4bpp");
static const u16 sMainMenuCelebi_Pal[]  = INCBIN_U16("graphics/ui_main_menu/celebi.gbapal");
static const u32 sMainMenuJirachi_Gfx[] = INCBIN_U32("graphics/ui_main_menu/jirachi.4bpp");
static const u16 sMainMenuJirachi_Pal[] = INCBIN_U16("graphics/ui_main_menu/jirachi.gbapal");

static const struct SpriteSheet sMainMenuCelebiSheet =
{
    .data = sMainMenuCelebi_Gfx,
    .size = 0x2000, // 4 x 64x64, 4bpp
    .tag = MAIN_MENU_CELEBI_TAG,
};

static const struct SpriteSheet sMainMenuJirachiSheet =
{
    .data = sMainMenuJirachi_Gfx,
    .size = 0x2000,
    .tag = MAIN_MENU_JIRACHI_TAG,
};

static const struct SpritePalette sMainMenuCelebiPalette =
{
    .data = sMainMenuCelebi_Pal,
    .tag = MAIN_MENU_CELEBI_TAG,
};

static const struct SpritePalette sMainMenuJirachiPalette =
{
    .data = sMainMenuJirachi_Pal,
    .tag = MAIN_MENU_JIRACHI_TAG,
};

static const struct OamData sOamData_MainMenuFlyer =
{
    .shape = SPRITE_SHAPE(64x64),
    .size = SPRITE_SIZE(64x64),
    // BG0 text/UI = priority 0, BG1 menu art = priority 1.
    // OBJ priority 2 therefore stays behind the menu, but above BG2.
    .priority = MAIN_MENU_FLYER_PRIORITY,
};

static const union AnimCmd sAnim_MainMenuFlyer[] =
{
    ANIMCMD_FRAME(0,   12),
    ANIMCMD_FRAME(64,  12),
    ANIMCMD_FRAME(128, 12),
    ANIMCMD_FRAME(192, 12),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_MainMenuFlyer[] =
{
    sAnim_MainMenuFlyer,
};

static const struct SpriteTemplate sMainMenuCelebiTemplate =
{
    .tileTag = MAIN_MENU_CELEBI_TAG,
    .paletteTag = MAIN_MENU_CELEBI_TAG,
    .oam = &sOamData_MainMenuFlyer,
    .anims = sAnims_MainMenuFlyer,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_MainMenuCelebi,
};

static const struct SpriteTemplate sMainMenuJirachiTemplate =
{
    .tileTag = MAIN_MENU_JIRACHI_TAG,
    .paletteTag = MAIN_MENU_JIRACHI_TAG,
    .oam = &sOamData_MainMenuFlyer,
    .anims = sAnims_MainMenuFlyer,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_MainMenuJirachi,
};

//==========SPRITE TEMPLATES (UI)==========//
#define TAG_MUGSHOT  30012
#define TAG_ICON_BOX 30006

static const struct OamData sOamData_Mugshot = {
    .size = SPRITE_SIZE(64x64), .shape = SPRITE_SHAPE(64x64), .priority = 1,
};
static const struct CompressedSpriteSheet sSpriteSheet_BrendanMugshot = {
    .data = sBrendanMugshot_Gfx, .size = 64*64/2, .tag = TAG_MUGSHOT,
};
static const struct SpritePalette sSpritePal_BrendanMugshot = { .data = sBrendanMugshot_Pal, .tag = TAG_MUGSHOT };
static const struct CompressedSpriteSheet sSpriteSheet_MayMugshot = {
    .data = sMayMugshot_Gfx, .size = 64*64/2, .tag = TAG_MUGSHOT,
};
static const struct SpritePalette sSpritePal_MayMugshot = { .data = sMayMugshot_Pal, .tag = TAG_MUGSHOT };
static const union AnimCmd sSpriteAnim_Mugshot[] = { ANIMCMD_FRAME(0, 32), ANIMCMD_JUMP(0) };
static const union AnimCmd *const sSpriteAnimTable_Mugshot[] = { sSpriteAnim_Mugshot };
static const struct SpriteTemplate sSpriteTemplate_Mugshot = {
    .tileTag = TAG_MUGSHOT, .paletteTag = TAG_MUGSHOT, .oam = &sOamData_Mugshot,
    .anims = sSpriteAnimTable_Mugshot, .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable, .callback = SpriteCallbackDummy
};

static const struct OamData sOamData_IconBox = {
    .size = SPRITE_SIZE(32x32), .shape = SPRITE_SHAPE(32x32), .priority = 1,
};
static const struct CompressedSpriteSheet sSpriteSheet_IconBox = {
    .data = sIconBox_Gfx, .size = 32*32/2, .tag = TAG_ICON_BOX,
};
static const struct CompressedSpriteSheet sSpriteSheet_IconBoxFem = {
    .data = sIconBox_GfxFem, .size = 32*32/2, .tag = TAG_ICON_BOX,
};
static const struct SpritePalette sSpritePal_IconBox = { .data = sIconBox_Pal, .tag = TAG_ICON_BOX };
static const struct SpritePalette sSpritePal_IconBoxFem = { .data = sIconBox_PalFem, .tag = TAG_ICON_BOX };
static const union AnimCmd sSpriteAnim_IconBox0[] = { ANIMCMD_FRAME(0, 32), ANIMCMD_JUMP(0) };
static const union AnimCmd *const sSpriteAnimTable_IconBox[] = { sSpriteAnim_IconBox0 };
static const struct SpriteTemplate sSpriteTemplate_IconBox = {
    .tileTag = TAG_ICON_BOX, .paletteTag = TAG_ICON_BOX, .oam = &sOamData_IconBox,
    .anims = sSpriteAnimTable_IconBox, .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable, .callback = SpriteCallbackDummy
};

//==========INITIALIZATION==========//
void Task_OpenMainMenu(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    if (!gPaletteFade.active)
    {
        switch (data[0])
        {
            case HAS_NO_SAVED_GAME:
            default:
                SetMainCallback2(CB2_NewGameBirchSpeech_FromNewMainMenu);
                DestroyTask(taskId);
                return;
            case HAS_SAVED_GAME:
            case HAS_MYSTERY_GIFT:
            case HAS_MYSTERY_EVENTS:
                menuType = HAS_SAVED_GAME;   // Força apenas 3 opções
                break;
        }
        CleanupOverworldWindowsAndTilemaps();
        MainMenu_Init(CB2_InitTitleScreen);
        DestroyTask(taskId);
    }
}

void MainMenu_Init(MainCallback callback)
{
    u32 i;
    if (!(sMainMenuDataPtr = AllocZeroed(sizeof(struct MainMenuResources))))
    {
        SetMainCallback2(callback);
        return;
    }
    sMainMenuDataPtr->gfxLoadState = 0;
    sMainMenuDataPtr->savedCallback = callback;
    sMainMenuDataPtr->celebiSpriteId = SPRITE_NONE;
    sMainMenuDataPtr->jirachiSpriteId = SPRITE_NONE;
    sMainMenuDataPtr->bgScrollX = 0;
    sMainMenuDataPtr->bgVirtualTileX = 0;
    for (i = 0; i < 6; i++)
    {
        sMainMenuDataPtr->iconBoxSpriteIds[i] = SPRITE_NONE;
        sMainMenuDataPtr->iconMonSpriteIds[i] = SPRITE_NONE;
    }
    SetMainCallback2(MainMenu_RunSetup);
}

static void MainMenu_RunSetup(void) { while (MainMenu_DoGfxSetup() != TRUE); }

static void MainMenu_MainCB(void)
{
    RunTasks();
    UpdateMainMenuBackgroundScroll();
    AnimateSprites();
    BuildOamBuffer();
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();
}

static void MainMenu_VBlankCB(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void MainMenu_FreeResources(void)
{
    // Destroi estrelas
    for (int i = 0; i < NUM_STARS; i++)
        if (sStarSpriteIds[i] != SPRITE_NONE)
            DestroySprite(&gSprites[sStarSpriteIds[i]]);

    DestroyMainMenuFlyers();

    try_free(sMainMenuDataPtr);
    try_free(sBg1TilemapBuffer);
    try_free(sBg2TilemapBuffer);
    FreeAllWindowBuffers();
    DestroyMugshot();
    DestroyIconShadow();
    DestroyMonIcons();
    DmaClearLarge16(3, (void *)VRAM, VRAM_SIZE, 0x1000);
}

static void Task_MainMenuWaitFadeAndBail(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        SetMainCallback2(sMainMenuDataPtr->savedCallback);
        MainMenu_FreeResources();
        DestroyTask(taskId);
    }
}

static void MainMenu_FadeAndBail(void)
{
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
    CreateTask(Task_MainMenuWaitFadeAndBail, 0);
    SetVBlankCallback(MainMenu_VBlankCB);
    SetMainCallback2(MainMenu_MainCB);
}

static void Task_MainMenuWaitFadeIn(u8 taskId) { if (!gPaletteFade.active) gTasks[taskId].func = Task_MainMenuMain; }

static void Task_MainMenuTurnOff(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_WIN0H, 0); SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WIN1H, 0); SetGpuReg(REG_OFFSET_WIN1V, 0);
        SetGpuReg(REG_OFFSET_WININ, 0); SetGpuReg(REG_OFFSET_WINOUT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, 0); SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        CpuFastFill(0, gPlttBufferFaded, PLTT_SIZE);
        SetMainCallback2(sMainMenuDataPtr->savedCallback);
        MainMenu_FreeResources();
        DestroyTask(taskId);
    }
}

static bool8 MainMenu_DoGfxSetup(void)
{
    switch (gMain.state)
    {
    case 0:
        DmaClearLarge16(3, (void *)VRAM, VRAM_SIZE, 0x1000);
        SetGpuReg(REG_OFFSET_DISPCNT, 0);
        SetGpuReg(REG_OFFSET_WIN0H, 0); SetGpuReg(REG_OFFSET_WIN0V, 0);
        SetGpuReg(REG_OFFSET_WININ, 0); SetGpuReg(REG_OFFSET_WINOUT, 0);
        SetGpuReg(REG_OFFSET_BLDCNT, 0); SetGpuReg(REG_OFFSET_BLDALPHA, 0);
        SetGpuReg(REG_OFFSET_BLDY, 0);
        SetVBlankHBlankCallbacksToNull();
        ClearScheduledBgCopiesToVram();
        ResetVramOamAndBgCntRegs();
        gMain.state++;
        break;
    case 1:
        ScanlineEffect_Stop();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        ResetSpriteData();
        ResetTasks();
        ReleaseComfyAnims();
        MainMenu_InitializeGPUWindows();
        gMain.state++;
        break;
    case 2:
        if (MainMenu_InitBgs()) { sMainMenuDataPtr->gfxLoadState = 0; gMain.state++; }
        else { MainMenu_FadeAndBail(); return TRUE; }
        break;
    case 3:
        if (MainMenu_LoadGraphics() == TRUE) gMain.state++;
        break;
    case 4:
        LoadMessageBoxAndBorderGfx();
        MainMenu_InitWindows();
        gMain.state++;
        break;
    case 5:
        PrintToWindow(WINDOW_HEADER, FONT_WHITE);
        CreateIconShadow();
        CreatePartyMonIcons();
        CreateMugshot();
        LoadMainMenuFlyerGfx();
        CreateMainMenuFlyers();
        CreateStars();
        CreateTask(Task_MainMenuWaitFadeIn, 0);
        BlendPalettes(0xFFFFFFFF, 16, RGB_BLACK);
        PlayBGM(MUS_RG_TITLE);
        gMain.state++;
        break;
    case 6:
        ShowBg(0); ShowBg(1); ShowBg(2);
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, RGB_BLACK);
        gMain.state++;
        break;
    default:
        SetVBlankCallback(MainMenu_VBlankCB);
        SetMainCallback2(MainMenu_MainCB);
        return TRUE;
    }
    return FALSE;
}

static bool8 MainMenu_LoadGraphics(void)
{
    switch (sMainMenuDataPtr->gfxLoadState)
    {
    case 0:
        ResetTempTileDataBuffers();
        if (gSaveBlock2Ptr->playerGender == MALE) 
            DecompressAndCopyTileDataToVram(1, sMainBgTiles, 0, 0, 0);
        else 
            DecompressAndCopyTileDataToVram(1, sMainBgTilesFem, 0, 0, 0);
        sMainMenuDataPtr->gfxLoadState++; 
        break;
case 1:
    if (FreeTempTileDataBuffersIfPossible() != TRUE)
    {
        if (gSaveBlock2Ptr->playerGender == MALE) 
            DecompressDataWithHeaderWram(sMainBgTilemap, sBg1TilemapBuffer);
        else 
            DecompressDataWithHeaderWram(sMainBgTilemapFem, sBg1TilemapBuffer);
        
        // Removido o loop que apagava os tiles
        
        ScheduleBgCopyTilemapToVram(1);
        sMainMenuDataPtr->gfxLoadState++;
    } 
    break;
    case 2:
        // Raw 4bpp generated from graphics/ui_main_menu/bg.png.
        LoadBgTiles(2, sStaticBgTiles, sizeof(sStaticBgTiles), 0);
        sMainMenuDataPtr->gfxLoadState++;
        break;
    case 3:
        BuildMainMenuBackgroundTilemap();
        ScheduleBgCopyTilemapToVram(2);
        sMainMenuDataPtr->gfxLoadState++;
        break;
    case 4:
        if (gSaveBlock2Ptr->playerGender == MALE)
        {
            LoadCompressedSpriteSheet(&sSpriteSheet_IconBox);
            LoadSpritePalette(&sSpritePal_IconBox);
            LoadCompressedSpriteSheet(&sSpriteSheet_BrendanMugshot);
            LoadSpritePalette(&sSpritePal_BrendanMugshot);
            LoadPalette(sMainBgPalette, 0, 32);
        }
        else
        {
            LoadCompressedSpriteSheet(&sSpriteSheet_IconBoxFem);
            LoadSpritePalette(&sSpritePal_IconBoxFem);
            LoadCompressedSpriteSheet(&sSpriteSheet_MayMugshot);
            LoadSpritePalette(&sSpritePal_MayMugshot);
            LoadPalette(sMainBgPaletteFem, 0, 32);
        }
        // The custom bg uses one 16-color palette only.
        // Keep palette 0 reserved for the main UI and load the bg into slot 1.
        LoadPalette(
            sStaticBgPalette,
            BG_PLTT_ID(MAIN_MENU_BG_PALETTE_OFFSET),
            PLTT_SIZE_4BPP
        );
        sMainMenuDataPtr->gfxLoadState++; 
        break;
    default:
        sMainMenuDataPtr->gfxLoadState = 0; 
        return TRUE;
    }
    return FALSE;
}

static void BuildMainMenuBackgroundTilemap(void)
{
    u16 *dst = (u16 *)sBg2TilemapBuffer;
    u16 y;
    u16 x;

    memset(sBg2TilemapBuffer, 0, MAIN_MENU_BG_TILEMAP_BUFFER_SIZE);

    for (y = 0; y < MAIN_MENU_BG_TILEMAP_HEIGHT; y++)
    {
        const u16 *srcRow =
            &sStaticBgTilemap[y * MAIN_MENU_BG_TILEMAP_WIDTH];
        u16 *dstRow = &dst[y * MAIN_MENU_BG_TILEMAP_WIDTH];

        // Fill all 32 hardware columns from the 60-column virtual strip.
        // The source's columns 30/31 are padding and are never used.
        for (x = 0; x < MAIN_MENU_BG_TILEMAP_WIDTH; x++)
        {
            u16 virtualCol =
                (sMainMenuDataPtr->bgVirtualTileX + x)
                % MAIN_MENU_BG_VIRTUAL_COLS;
            u16 sourceCol;
            u16 entry;

            if (virtualCol < MAIN_MENU_BG_VISIBLE_COLS)
            {
                // First half: original image, columns 0..29.
                sourceCol = virtualCol;
                entry = srcRow[sourceCol];
            }
            else
            {
                // Second half: true horizontal mirror.
                // virtual 30 -> source 29
                // virtual 59 -> source 0
                sourceCol = (MAIN_MENU_BG_VIRTUAL_COLS - 1) - virtualCol;
                entry = srcRow[sourceCol] ^ 0x0400; // toggle HFLIP
            }

            dstRow[x] = (entry & 0x0FFF)
                      | (MAIN_MENU_BG_PALETTE_OFFSET << 12);
        }
    }
}

static void UpdateMainMenuBackgroundScroll(void)
{
    if (sMainMenuDataPtr == NULL)
        return;

    // 0x040 = 0.25 px/frame in 8.8 fixed point.
    sMainMenuDataPtr->bgScrollX += MAIN_MENU_BG_SCROLL_SPEED;

    // Keep hardware scrolling inside one tile. Each time we cross 8 px,
    // advance the virtual texture by one column and rebuild the 32-column
    // viewport. This allows an arbitrary seamless virtual loop while BG2
    // itself remains a simple 256x256 text background.
    if (sMainMenuDataPtr->bgScrollX >= MAIN_MENU_BG_TILE_WIDTH_FIXED)
    {
        sMainMenuDataPtr->bgScrollX -= MAIN_MENU_BG_TILE_WIDTH_FIXED;

        sMainMenuDataPtr->bgVirtualTileX++;
        if (sMainMenuDataPtr->bgVirtualTileX >= MAIN_MENU_BG_VIRTUAL_COLS)
            sMainMenuDataPtr->bgVirtualTileX = 0;

        BuildMainMenuBackgroundTilemap();
        ScheduleBgCopyTilemapToVram(2);
    }

    ChangeBgX(2, sMainMenuDataPtr->bgScrollX, BG_COORD_SET);
}

static bool8 MainMenu_InitBgs(void)
{
    ResetAllBgsCoordinates();
    ResetBgsAndClearDma3BusyFlags(0);
    ChangeBgX(2, 0, BG_COORD_SET);
    InitBgsFromTemplates(0, sMainMenuBgTemplates, NELEMS(sMainMenuBgTemplates));
    sBg1TilemapBuffer = Alloc(0x800); if (!sBg1TilemapBuffer) return FALSE;
    memset(sBg1TilemapBuffer, 0, 0x800); SetBgTilemapBuffer(1, sBg1TilemapBuffer); ScheduleBgCopyTilemapToVram(1);
    sBg2TilemapBuffer = Alloc(MAIN_MENU_BG_TILEMAP_BUFFER_SIZE); if (!sBg2TilemapBuffer) return FALSE;
    memset(sBg2TilemapBuffer, 0, MAIN_MENU_BG_TILEMAP_BUFFER_SIZE); SetBgTilemapBuffer(2, sBg2TilemapBuffer); ScheduleBgCopyTilemapToVram(2);
    return TRUE;
}

static void MainMenu_InitializeGPUWindows(void)
{
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_WIN1_ON | DISPCNT_WIN0_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP);
    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(HWinCoords[sSelectedOption].winh.left, HWinCoords[sSelectedOption].winh.right));
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(HWinCoords[sSelectedOption].winv.left, HWinCoords[sSelectedOption].winv.right));

    // Window 1 desativada – não precisamos mais dela
    SetGpuReg(REG_OFFSET_WIN1H, 0);
    SetGpuReg(REG_OFFSET_WIN1V, 0);

    // Ajuste no WININ: remova referências a WIN1 já que não será usada
    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_ALL);

    // Efeito de escurecimento para highlight (continua funcionando)
    SetGpuReg(REG_OFFSET_BLDCNT,
        BLDCNT_EFFECT_DARKEN
        | BLDCNT_TGT1_BG0
        | BLDCNT_TGT1_BG1
    );
    SetGpuReg(REG_OFFSET_BLDY, 7);
}

static void MoveHWindowsWithInput(void)
{
    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(HWinCoords[sSelectedOption].winh.left, HWinCoords[sSelectedOption].winh.right));
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(HWinCoords[sSelectedOption].winv.left, HWinCoords[sSelectedOption].winv.right));
}

static void MainMenu_InitWindows(void)
{
    InitWindows(sMainMenuWindowTemplates);
    DeactivateAllTextPrinters();
    ScheduleBgCopyTilemapToVram(0);
    FillWindowPixelBuffer(WINDOW_HEADER, 0); PutWindowTilemap(WINDOW_HEADER); CopyWindowToVram(WINDOW_HEADER, 3);
    FillWindowPixelBuffer(WINDOW_MIDDLE, 0); PutWindowTilemap(WINDOW_MIDDLE); CopyWindowToVram(WINDOW_MIDDLE, 3);
}

//==========SPRITE FUNCTIONS (UI)==========//
static void CreateMugshot(void)
{
    sMainMenuDataPtr->mugshotSpriteId = CreateSprite(&sSpriteTemplate_Mugshot, 48, 56, 1);
    gSprites[sMainMenuDataPtr->mugshotSpriteId].invisible = FALSE;
    StartSpriteAnim(&gSprites[sMainMenuDataPtr->mugshotSpriteId], 0);
    gSprites[sMainMenuDataPtr->mugshotSpriteId].oam.priority = 0;
}
static void DestroyMugshot(void) { if (sMainMenuDataPtr->mugshotSpriteId != SPRITE_NONE) DestroySprite(&gSprites[sMainMenuDataPtr->mugshotSpriteId]); sMainMenuDataPtr->mugshotSpriteId = SPRITE_NONE; }

#define ICON_BOX_1_START_X      (136 + 8)
#define ICON_BOX_1_START_Y      38
#define ICON_BOX_X_DIFFERENCE   32
#define ICON_BOX_Y_DIFFERENCE   32
static void CreateIconShadow(void)
{
    u8 i;
    for (i = 0; i < 6; i++) sMainMenuDataPtr->iconBoxSpriteIds[i] = SPRITE_NONE;
    sMainMenuDataPtr->iconBoxSpriteIds[0] = CreateSprite(&sSpriteTemplate_IconBox, ICON_BOX_1_START_X, ICON_BOX_1_START_Y, 2);
    sMainMenuDataPtr->iconBoxSpriteIds[1] = CreateSprite(&sSpriteTemplate_IconBox, ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE, ICON_BOX_1_START_Y, 2);
    sMainMenuDataPtr->iconBoxSpriteIds[2] = CreateSprite(&sSpriteTemplate_IconBox, ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE*2, ICON_BOX_1_START_Y, 2);
    sMainMenuDataPtr->iconBoxSpriteIds[3] = CreateSprite(&sSpriteTemplate_IconBox, ICON_BOX_1_START_X, ICON_BOX_1_START_Y + ICON_BOX_Y_DIFFERENCE, 2);
    sMainMenuDataPtr->iconBoxSpriteIds[4] = CreateSprite(&sSpriteTemplate_IconBox, ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE, ICON_BOX_1_START_Y + ICON_BOX_Y_DIFFERENCE, 2);
    sMainMenuDataPtr->iconBoxSpriteIds[5] = CreateSprite(&sSpriteTemplate_IconBox, ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE*2, ICON_BOX_1_START_Y + ICON_BOX_Y_DIFFERENCE, 2);
    for (i = 0; i < gPlayerPartyCount; i++) { gSprites[sMainMenuDataPtr->iconBoxSpriteIds[i]].invisible = FALSE; StartSpriteAnim(&gSprites[sMainMenuDataPtr->iconBoxSpriteIds[i]], 0); gSprites[sMainMenuDataPtr->iconBoxSpriteIds[i]].oam.priority = 1; }
    for (i = gPlayerPartyCount; i < 6; i++) gSprites[sMainMenuDataPtr->iconBoxSpriteIds[i]].invisible = TRUE;
}
static void DestroyIconShadow(void) { for (u8 i = 0; i < 6; i++) { if (sMainMenuDataPtr->iconBoxSpriteIds[i] != SPRITE_NONE) DestroySprite(&gSprites[sMainMenuDataPtr->iconBoxSpriteIds[i]]); sMainMenuDataPtr->iconBoxSpriteIds[i] = SPRITE_NONE; } }

static u32 GetHPEggCyclePercent(u32 partyIndex)
{
    struct Pokemon *mon = &gPlayerParty[partyIndex];
    if (!GetMonData(mon, MON_DATA_IS_EGG)) return (GetMonData(mon, MON_DATA_HP)*100) / GetMonData(mon, MON_DATA_MAX_HP);
    else return (GetMonData(mon, MON_DATA_FRIENDSHIP)*100) / gSpeciesInfo[GetMonData(mon, MON_DATA_SPECIES)].eggCycles;
}
static void CreatePartyMonIcons(void)
{
    LoadMonIconPalettes();
    for (u8 i = 0; i < gPlayerPartyCount; i++)
    {
        s16 x = 0, y = 0; /// that line was glitching the compiler 
        switch (i) {
            case 0: x = ICON_BOX_1_START_X; y = ICON_BOX_1_START_Y; break;
            case 1: x = ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE; y = ICON_BOX_1_START_Y; break;
            case 2: x = ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE*2; y = ICON_BOX_1_START_Y; break;
            case 3: x = ICON_BOX_1_START_X; y = ICON_BOX_1_START_Y + ICON_BOX_Y_DIFFERENCE; break;
            case 4: x = ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE; y = ICON_BOX_1_START_Y + ICON_BOX_Y_DIFFERENCE; break;
            case 5: x = ICON_BOX_1_START_X + ICON_BOX_X_DIFFERENCE*2; y = ICON_BOX_1_START_Y + ICON_BOX_Y_DIFFERENCE; break;
        }
#ifdef RHH_EXPANSION
        sMainMenuDataPtr->iconMonSpriteIds[i] = CreateMonIcon(GetMonData(&gPlayerParty[i], MON_DATA_SPECIES_OR_EGG), SpriteCB_MonIcon, x, y-2, 0, GetMonData(&gPlayerParty[i], MON_DATA_PERSONALITY));
#else
        sMainMenuDataPtr->iconMonSpriteIds[i] = CreateMonIcon(GetMonData(&gPlayerParty[i], MON_DATA_SPECIES_OR_EGG), SpriteCB_MonIcon, x, y-2, 0, GetMonData(&gPlayerParty[i], MON_DATA_PERSONALITY), TRUE);
#endif
        gSprites[sMainMenuDataPtr->iconMonSpriteIds[i]].oam.priority = 0;
        if (GetHPEggCyclePercent(i) == 0) gSprites[sMainMenuDataPtr->iconMonSpriteIds[i]].callback = SpriteCallbackDummy;
    }
}
static void DestroyMonIcons(void) { for (u8 i = 0; i < 6; i++) { if (sMainMenuDataPtr->iconMonSpriteIds[i] != SPRITE_NONE) DestroySprite(&gSprites[sMainMenuDataPtr->iconMonSpriteIds[i]]); sMainMenuDataPtr->iconMonSpriteIds[i] = SPRITE_NONE; } }

//==========TEXT PRINTING==========//
static const u8 sText_DexNum[] = _("Dex {STR_VAR_1}");
static const u8 sText_Badges[] = _("Badges {STR_VAR_1}");
static void PrintToWindow(u8 windowId, u8 colorIdx)
{
    const u8 colors[3] = {0,2,3};
    u8 mapDisplayHeader[24];
    u8 *withoutPrefixPtr, *playTimePtr;
    u16 dexCount = 0;
    u8 badgeCount = 0;
    u32 i;

    FillWindowPixelBuffer(WINDOW_HEADER, PIXEL_FILL(TEXT_COLOR_TRANSPARENT));
    FillWindowPixelBuffer(WINDOW_MIDDLE, PIXEL_FILL(TEXT_COLOR_TRANSPARENT));

    // Map name
    withoutPrefixPtr = &mapDisplayHeader[3];
    GetMapName(withoutPrefixPtr, GetCurrentRegionMapSectionId(), 0);
    mapDisplayHeader[0] = EXT_CTRL_CODE_BEGIN;
    mapDisplayHeader[1] = EXT_CTRL_CODE_HIGHLIGHT;
    mapDisplayHeader[2] = TEXT_COLOR_TRANSPARENT;
    AddTextPrinterParameterized4(WINDOW_HEADER, FONT_NARROW,
        GetStringCenterAlignXOffset(FONT_NARROW, withoutPrefixPtr, 10 * 8),
        1, 0, 0, colors, 0xFF, mapDisplayHeader);

    // Play time
    playTimePtr = ConvertIntToDecimalStringN(gStringVar4, gSaveBlock2Ptr->playTimeHours, STR_CONV_MODE_LEFT_ALIGN, 3);
    *playTimePtr = 0xF0;
    ConvertIntToDecimalStringN(playTimePtr + 1, gSaveBlock2Ptr->playTimeMinutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    AddTextPrinterParameterized4(WINDOW_HEADER, FONT_NORMAL,
        (104 - 12) + GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, 6 * 8),
        1, 0, 0, colors, TEXT_SKIP_DRAW, gStringVar4);

    // Dex count
    if (FlagGet(FLAG_SYS_POKEDEX_GET))
    {
        if (IsNationalPokedexEnabled())
            dexCount = GetNationalPokedexCount(FLAG_GET_CAUGHT);
        else
            dexCount = GetHoennPokedexCount(FLAG_GET_CAUGHT);
        ConvertIntToDecimalStringN(gStringVar1, dexCount, STR_CONV_MODE_RIGHT_ALIGN, 4);
        StringExpandPlaceholders(gStringVar4, sText_DexNum);
        AddTextPrinterParameterized4(WINDOW_MIDDLE, FONT_NORMAL, 16, 18, 0, 0, colors, TEXT_SKIP_DRAW, gStringVar4);
    }

    // Badge count
    for (i = FLAG_BADGE01_GET; i < FLAG_BADGE01_GET + NUM_BADGES; i++)
        if (FlagGet(i))
            badgeCount++;
    ConvertIntToDecimalStringN(gStringVar1, badgeCount, STR_CONV_MODE_LEADING_ZEROS, 1);
    StringExpandPlaceholders(gStringVar4, sText_Badges);
    AddTextPrinterParameterized4(WINDOW_MIDDLE, FONT_NORMAL, 16, 34, 0, 0, colors, TEXT_SKIP_DRAW, gStringVar4);

    // Player name
    AddTextPrinterParameterized3(WINDOW_MIDDLE, FONT_NORMAL, 16, 2, colors, TEXT_SKIP_DRAW, gSaveBlock2Ptr->playerName);

    PutWindowTilemap(WINDOW_HEADER);
    CopyWindowToVram(WINDOW_HEADER, 3);
    PutWindowTilemap(WINDOW_MIDDLE);
    CopyWindowToVram(WINDOW_MIDDLE, 3);
}

//==========STARS (SPRITES)==========//
// Múltiplos tiles para simular tamanhos diferentes (todos 8x8)
static const u32 sStarTiles[][8] = {
    // Média (cruz 3x3)
    {
        0x00000000,
        0x00010000,
        0x00111000,
        0x00010000,
        0x00000000,
        0x00000000,
        0x00000000,
        0x00000000,
    },
    // Grande (cruz 5x5 original)
    {
        0x00010000,
        0x00010000,
        0x00111000,
        0x01111100,
        0x00111000,
        0x00010000,
        0x00010000,
        0x00000000,
    },
};

// Quatro níveis de brilho. Usamos slots OBJ 12-15 para isolar
// as estrelas das paletas dos flyers e evitar o "preto estranho".
static const u16 sStarPal0[4] = { RGB(0,0,0), RGB( 7, 9,14), RGB(0,0,0), RGB(0,0,0) }; // muito escuro
static const u16 sStarPal1[4] = { RGB(0,0,0), RGB(14,16,22), RGB(0,0,0), RGB(0,0,0) }; // escuro-médio
static const u16 sStarPal2[4] = { RGB(0,0,0), RGB(22,24,29), RGB(0,0,0), RGB(0,0,0) }; // médio-claro
static const u16 sStarPal3[4] = { RGB(0,0,0), RGB(31,31,31), RGB(0,0,0), RGB(0,0,0) }; // brilhante

static const struct SpriteSheet sStarSheet = {
    .data = sStarTiles,
    .size = sizeof(sStarTiles),
    .tag  = STAR_TAG,
};

// Paleta dummy para satisfazer o sistema de tags (será sobrescrita pelos LoadPalette)
static const u16 sStarPalDummy[4] = { RGB(0,0,0), RGB(31,31,31), RGB(0,0,0), RGB(0,0,0) };
static const struct SpritePalette sStarPaletteDummy = {
    .data = sStarPalDummy,
    .tag  = STAR_TAG + 0,
};

static const struct OamData sOamData_Star = {
    .shape    = SPRITE_SHAPE(8x8),
    .size     = SPRITE_SIZE(8x8),
    .priority = STAR_PRIORITY,
};

// Animações fixas para cada tamanho
static const union AnimCmd sStarAnimMedium[] = { ANIMCMD_FRAME(STAR_SIZE_MEDIUM, 0), ANIMCMD_END };
static const union AnimCmd sStarAnimLarge[]  = { ANIMCMD_FRAME(STAR_SIZE_LARGE,  0), ANIMCMD_END };
static const union AnimCmd *const sStarAnimTable[] = { sStarAnimMedium, sStarAnimLarge };

static const struct SpriteTemplate sStarTemplate = {
    .tileTag    = STAR_TAG,
    .paletteTag = STAR_TAG + 0,
    .oam        = &sOamData_Star,
    .anims      = sStarAnimTable,
    .callback   = SpriteCallbackDummy,
};

static void LoadStarGfx(void)
{
    LoadSpriteSheet(&sStarSheet);
    LoadSpritePalette(&sStarPaletteDummy); // registra a tag
    LoadPalette(sStarPal0, OBJ_PLTT_ID(STAR_PALETTE_SLOT_FIRST + 0), sizeof(sStarPal0));
    LoadPalette(sStarPal1, OBJ_PLTT_ID(STAR_PALETTE_SLOT_FIRST + 1), sizeof(sStarPal1));
    LoadPalette(sStarPal2, OBJ_PLTT_ID(STAR_PALETTE_SLOT_FIRST + 2), sizeof(sStarPal2));
    LoadPalette(sStarPal3, OBJ_PLTT_ID(STAR_PALETTE_SLOT_FIRST + 3), sizeof(sStarPal3));
}

static void CreateStars(void)
{
    LoadStarGfx();

    for (int i = 0; i < NUM_STARS; i++)
    {
        u8 id = CreateSprite(&sStarTemplate,
                             Random2() % DISPLAY_WIDTH,
                             Random2() % DISPLAY_HEIGHT,
                             0);
        if (id == MAX_SPRITES)
        {
            sStarSpriteIds[i] = SPRITE_NONE;
            continue;
        }

        sStarSpriteIds[i] = id;

        // Distribuição: ~60% medium, ~40% large
        u8 sizeType = (Random2() % 10 < 6) ? STAR_SIZE_MEDIUM : STAR_SIZE_LARGE;
        StartSpriteAnim(&gSprites[id], sizeType);

        // data[0] = fase de glow aleatória (0-255)
        gSprites[id].data[0] = (s16)(Random2() & 0xFF);
        // data[1] = contador de glow (incrementado a cada frame)
        gSprites[id].data[1] = 0;
        // data[2] = intervalo de queda (medium mais rápido, large mais lento)
        gSprites[id].data[2] = (sizeType == STAR_SIZE_MEDIUM) ? 1 : 2;
        // data[3] = delay de movimento
        gSprites[id].data[3] = 0;
        // data[4] = tipo de profundidade (0 = medium, 1 = large)
        gSprites[id].data[4] = (s16)sizeType;
    }

    CreateTask(Task_FloatingStars, 0);
}

static void Task_FloatingStars(u8 taskId)
{
    for (int i = 0; i < NUM_STARS; i++)
    {
        struct Sprite *spr = &gSprites[sStarSpriteIds[i]];
        if (!spr->inUse) continue;

        // Movimento de queda com delay
        spr->data[3]++;
        if (spr->data[3] >= spr->data[2] * 4)
        {
            spr->y += 1;
            spr->data[3] = 0;
        }

        // Reposiciona ao sair da tela
        if (spr->y > DISPLAY_HEIGHT + 16)
        {
            spr->y = -8;
            spr->x = Random2() % DISPLAY_WIDTH;
        }

        // Glow pulsante suave: onda triangular de 256 frames
        spr->data[1] = (spr->data[1] + 1) & 0xFF;
        u8 phase = (u8)((spr->data[1] + spr->data[0]) & 0xFF);
        u8 tv    = (phase < 128) ? phase : (u8)(255 - phase); // 0-127
        u8 hiPhase = (tv >= 64) ? 1 : 0;

        // depth: 0 = medium (usa slots 9-10), 1 = large (usa slots 10-11)
        u8 depth = (u8)spr->data[4];
        spr->oam.paletteNum = STAR_PALETTE_SLOT_FIRST + depth + hiPhase;
    }
}

//==========DECORATIVE FLYERS==========//
static void LoadMainMenuFlyerGfx(void)
{
    LoadSpriteSheet(&sMainMenuCelebiSheet);
    LoadSpritePalette(&sMainMenuCelebiPalette);
    LoadSpriteSheet(&sMainMenuJirachiSheet);
    LoadSpritePalette(&sMainMenuJirachiPalette);
}

static u16 GetMainMenuFlyerRespawnDelay(void)
{
    return MAIN_MENU_FLYER_RESPAWN_BASE_DELAY
        + (Random2() % (MAIN_MENU_FLYER_RESPAWN_DELAY_VAR + 1));
}

static s16 GetMainMenuFlyerRandomY(bool8 isCelebi)
{
    u16 otherSpriteId;
    s16 otherY = -1000;
    s16 candidate;
    u8 i;

    // Compare against the other flyer, if it exists.
    otherSpriteId = isCelebi
        ? sMainMenuDataPtr->jirachiSpriteId
        : sMainMenuDataPtr->celebiSpriteId;

    if (otherSpriteId != SPRITE_NONE
     && otherSpriteId < MAX_SPRITES
     && gSprites[otherSpriteId].inUse)
    {
        // data[4] stores the other flyer's chosen base flight height.
        otherY = gSprites[otherSpriteId].data[4];
    }

    // Try several random heights until one is safely separated.
    for (i = 0; i < MAIN_MENU_FLYER_Y_RANDOM_TRIES; i++)
    {
        candidate = MAIN_MENU_FLYER_MIN_Y
                  + (Random2() % (MAIN_MENU_FLYER_MAX_Y - MAIN_MENU_FLYER_MIN_Y + 1));

        if (otherY == -1000
         || abs(candidate - otherY) >= MAIN_MENU_FLYER_Y_SAFETY_GAP)
        {
            return candidate;
        }
    }

    // Deterministic fallback in the unlikely event all random tries were too close.
    // Choose the opposite side of the vertical range from the other flyer.
    if (otherY != -1000)
    {
        s16 midpoint = (MAIN_MENU_FLYER_MIN_Y + MAIN_MENU_FLYER_MAX_Y) / 2;

        if (otherY <= midpoint)
            candidate = otherY + MAIN_MENU_FLYER_Y_SAFETY_GAP;
        else
            candidate = otherY - MAIN_MENU_FLYER_Y_SAFETY_GAP;

        if (candidate < MAIN_MENU_FLYER_MIN_Y)
            candidate = MAIN_MENU_FLYER_MIN_Y;
        if (candidate > MAIN_MENU_FLYER_MAX_Y)
            candidate = MAIN_MENU_FLYER_MAX_Y;

        return candidate;
    }

    return MAIN_MENU_FLYER_MIN_Y
         + (Random2() % (MAIN_MENU_FLYER_MAX_Y - MAIN_MENU_FLYER_MIN_Y + 1));
}

static void SpawnMainMenuFlyerAtY(struct Sprite *sprite, bool8 isCelebi, s16 y)
{
    sprite->data[0] = 0;                    // subpixel timer for 0.5 px/frame
    sprite->data[1] = 0;                    // respawn counter
    sprite->data[2] = Random2() & 0xFF;     // bob phase
    sprite->data[3] = FALSE;                // active
    sprite->data[4] = y;                    // base Y
    sprite->data[5] = 2 + (Random2() % 3);  // amplitude 2..4
    sprite->data[6] = 2 + (Random2() % 2);  // phase step 2..3
    sprite->data[7] = GetMainMenuFlyerRespawnDelay();

    sprite->x = isCelebi ? -40 : (DISPLAY_WIDTH + 40);
    sprite->y = sprite->data[4];
    sprite->x2 = 0;
    sprite->y2 = 0;
    sprite->invisible = FALSE;
    sprite->oam.priority = MAIN_MENU_FLYER_PRIORITY;
}

static void SpawnMainMenuFlyer(struct Sprite *sprite, bool8 isCelebi)
{
    // Normal respawns are procedural/random.
    SpawnMainMenuFlyerAtY(sprite, isCelebi, GetMainMenuFlyerRandomY(isCelebi));
}

static void QueueMainMenuFlyerRespawn(struct Sprite *sprite, bool8 isCelebi, u16 delay)
{
    sprite->data[0] = 0;
    sprite->data[1] = 0;
    sprite->data[3] = TRUE;  // waiting
    sprite->data[7] = delay;
    sprite->x = isCelebi ? -40 : (DISPLAY_WIDTH + 40);
    sprite->y2 = 0;
    sprite->invisible = TRUE;
}

static void UpdateMainMenuFlyerBob(struct Sprite *sprite)
{
    u8 primaryPhase;
    u8 secondaryPhase;
    s16 primaryWave;
    s16 secondaryWave;

    sprite->data[2] = (sprite->data[2] + sprite->data[6]) & 0xFF;
    primaryPhase = (u8)sprite->data[2];
    secondaryPhase = (u8)((sprite->data[2] * 3) & 0xFF);

    // Two tiny sine waves make the flight less straight / more gliding.
    primaryWave = Sin(primaryPhase, sprite->data[5]);
    secondaryWave = Sin(secondaryPhase, 1);

    sprite->y = sprite->data[4];
    sprite->y2 = primaryWave + secondaryWave;
}

static void SpriteCB_MainMenuCelebi(struct Sprite *sprite)
{
    if (sprite->data[3])
    {
        if (++sprite->data[1] >= sprite->data[7])
            SpawnMainMenuFlyer(sprite, TRUE);
        return;
    }

    UpdateMainMenuFlyerBob(sprite);

    // 0.5 px/frame horizontal cruise.
    if (++sprite->data[0] >= 2)
    {
        sprite->data[0] = 0;
        sprite->x++;
    }

    if (sprite->x > DISPLAY_WIDTH + 40)
        QueueMainMenuFlyerRespawn(sprite, TRUE, GetMainMenuFlyerRespawnDelay());
}

static void SpriteCB_MainMenuJirachi(struct Sprite *sprite)
{
    if (sprite->data[3])
    {
        s16 delay = sprite->data[7];

        if (delay < 0)
        {
            // One-time first appearance: keep the original authored height.
            if (++sprite->data[1] >= -delay)
                SpawnMainMenuFlyerAtY(sprite, FALSE, MAIN_MENU_JIRACHI_FIRST_Y);
        }
        else if (++sprite->data[1] >= delay)
        {
            // Every later pass uses the random-height system.
            SpawnMainMenuFlyer(sprite, FALSE);
        }
        return;
    }

    UpdateMainMenuFlyerBob(sprite);

    // 0.5 px/frame horizontal cruise.
    if (++sprite->data[0] >= 2)
    {
        sprite->data[0] = 0;
        sprite->x--;
    }

    if (sprite->x < -40)
        QueueMainMenuFlyerRespawn(sprite, FALSE, GetMainMenuFlyerRespawnDelay());
}

static void CreateMainMenuFlyers(void)
{
    u8 id;

    // FIRST PASS: Celebi always takes the original lower route.
    // After it leaves the screen, its callback switches to random Y forever.
    id = CreateSprite(
        &sMainMenuCelebiTemplate,
        -40,
        MAIN_MENU_CELEBI_FIRST_Y,
        MAIN_MENU_FLYER_PRIORITY
    );
    if (id != MAX_SPRITES)
    {
        sMainMenuDataPtr->celebiSpriteId = id;
        SpawnMainMenuFlyerAtY(&gSprites[id], TRUE, MAIN_MENU_CELEBI_FIRST_Y);
        gSprites[id].data[2] = 32;
    }

    // FIRST PASS: Jirachi also uses its original visible route.
    // Keep the initial stagger, then enable random Y from the second pass on.
    id = CreateSprite(
        &sMainMenuJirachiTemplate,
        DISPLAY_WIDTH + 40,
        MAIN_MENU_JIRACHI_FIRST_Y,
        MAIN_MENU_FLYER_PRIORITY
    );
    if (id != MAX_SPRITES)
    {
        sMainMenuDataPtr->jirachiSpriteId = id;

        SpawnMainMenuFlyerAtY(
            &gSprites[id],
            FALSE,
            MAIN_MENU_JIRACHI_FIRST_Y
        );

        gSprites[id].data[2] = 160;
        gSprites[id].data[0] = 0;
        gSprites[id].data[1] = 0;
        gSprites[id].data[3] = TRUE;

        // Negative delay is a one-time marker used by Jirachi's callback:
        // after this wait, launch the fixed first pass instead of a random one.
        gSprites[id].data[7] =
            -(MAIN_MENU_FLYER_RESPAWN_BASE_DELAY / 2);
        gSprites[id].invisible = TRUE;
    }
}

static void DestroyMainMenuFlyers(void)
{
    if (sMainMenuDataPtr == NULL)
        return;

    if (sMainMenuDataPtr->celebiSpriteId != SPRITE_NONE
     && sMainMenuDataPtr->celebiSpriteId < MAX_SPRITES
     && gSprites[sMainMenuDataPtr->celebiSpriteId].inUse)
    {
        DestroySprite(&gSprites[sMainMenuDataPtr->celebiSpriteId]);
    }

    if (sMainMenuDataPtr->jirachiSpriteId != SPRITE_NONE
     && sMainMenuDataPtr->jirachiSpriteId < MAX_SPRITES
     && gSprites[sMainMenuDataPtr->jirachiSpriteId].inUse)
    {
        DestroySprite(&gSprites[sMainMenuDataPtr->jirachiSpriteId]);
    }

    sMainMenuDataPtr->celebiSpriteId = SPRITE_NONE;
    sMainMenuDataPtr->jirachiSpriteId = SPRITE_NONE;

    FreeSpriteTilesByTag(MAIN_MENU_CELEBI_TAG);
    FreeSpritePaletteByTag(MAIN_MENU_CELEBI_TAG);
    FreeSpriteTilesByTag(MAIN_MENU_JIRACHI_TAG);
    FreeSpritePaletteByTag(MAIN_MENU_JIRACHI_TAG);
}

//==========INPUT CONTROL==========//
static void Task_MainMenuMain(u8 taskId)
{
    if (JOY_NEW(A_BUTTON))
    {
        PlaySE(SE_SELECT); BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
        switch (sSelectedOption)
        {
            case HW_WIN_CONTINUE:
                sMainMenuDataPtr->savedCallback = CB2_ContinueSavedGame;
                sSelectedOption = HW_WIN_CONTINUE;
                break;
            case HW_WIN_NEW_GAME:
                sMainMenuDataPtr->savedCallback = CB2_NewGameBirchSpeech_FromNewMainMenu;
                sSelectedOption = HW_WIN_CONTINUE;
                break;
case HW_WIN_CREDITS:
    gMain.savedCallback = CB2_ReinitMainMenu;
    sMainMenuDataPtr->savedCallback = CB2_ShowCreditsViewer;
    break;
            case HW_WIN_OPTIONS:
                gMain.savedCallback = CB2_ReinitMainMenu;
                sMainMenuDataPtr->savedCallback = CB2_InitOptionMenu;
                break;
            case HW_WIN_DIFFICULTY:
                gMain.savedCallback = CB2_ReinitMainMenu;
                sMainMenuDataPtr->savedCallback = CB2_InitOptionMenu_DifficultyTab;
                break;
        }
        gTasks[taskId].func = Task_MainMenuTurnOff;
    }
    if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_PC_OFF); BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
        sMainMenuDataPtr->savedCallback = CB2_InitTitleScreen; sSelectedOption = HW_WIN_CONTINUE;
        gTasks[taskId].func = Task_MainMenuTurnOff;
    }
    // DOWN: Continue→NewGame→Credits→Options→Difficulty→Continue (wrap)
    if (JOY_NEW(DPAD_DOWN))
    {
        if (sSelectedOption == HW_WIN_CONTINUE)
            sSelectedOption = HW_WIN_NEW_GAME;
        else if (sSelectedOption == HW_WIN_NEW_GAME)
            sSelectedOption = HW_WIN_CREDITS;
        else if (sSelectedOption == HW_WIN_CREDITS)
            sSelectedOption = HW_WIN_OPTIONS;
        else if (sSelectedOption == HW_WIN_OPTIONS)
            sSelectedOption = HW_WIN_DIFFICULTY;
        else
            sSelectedOption = HW_WIN_CONTINUE;
        PlaySE(SE_SELECT);
        MoveHWindowsWithInput();
    }
    // UP: reverse
    if (JOY_NEW(DPAD_UP))
    {
        if (sSelectedOption == HW_WIN_CONTINUE)
            sSelectedOption = HW_WIN_DIFFICULTY;
        else if (sSelectedOption == HW_WIN_NEW_GAME)
            sSelectedOption = HW_WIN_CONTINUE;
        else if (sSelectedOption == HW_WIN_CREDITS)
            sSelectedOption = HW_WIN_NEW_GAME;
        else if (sSelectedOption == HW_WIN_OPTIONS)
            sSelectedOption = HW_WIN_CREDITS;
        else
            sSelectedOption = HW_WIN_OPTIONS;
        PlaySE(SE_SELECT);
        MoveHWindowsWithInput();
    }
    // LEFT/RIGHT: swap between left and right columns
    if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_RIGHT))
    {
        if (sSelectedOption == HW_WIN_NEW_GAME)
            sSelectedOption = HW_WIN_OPTIONS;
        else if (sSelectedOption == HW_WIN_OPTIONS)
            sSelectedOption = HW_WIN_NEW_GAME;
        else if (sSelectedOption == HW_WIN_CREDITS)
            sSelectedOption = HW_WIN_DIFFICULTY;
        else if (sSelectedOption == HW_WIN_DIFFICULTY)
            sSelectedOption = HW_WIN_CREDITS;
        PlaySE(SE_SELECT);
        MoveHWindowsWithInput();
    }
}

static void Task_CreditsNavigation(u8 taskId)
{
    CB2_ShowCreditsViewer();
    DestroyTask(taskId);
}

static void Task_ReturnToMainMenu(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        // Restaura o callback anterior (menu principal)
        SetMainCallback2(sMainMenuDataPtr->savedCallback);
        DestroyTask(taskId);
    }
}
