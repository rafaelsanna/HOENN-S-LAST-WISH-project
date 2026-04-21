#include "global.h"
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

//==========DEFINES==========//
struct MainMenuResources
{
    MainCallback savedCallback;
    u8 gfxLoadState;
    u16 iconBoxSpriteIds[6];
    u16 iconMonSpriteIds[6];
    u16 mugshotSpriteId;
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
    HW_WIN_OPTIONS,
    HW_WIN_MYSTERY_GIFT,
    HW_WIN_MYSTERY_EVENT,
    HW_WIN_MYSTERY_BOTH,
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
    {   // BG2: Fundo estático (BG.png)
        .bg = 2,
        .charBaseIndex = 2,
        .mapBaseIndex = 28,
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

static const struct HWWindowPosition HWinCoords[6] = 
{
    [HW_WIN_CONTINUE]      = {{7, 233}, {7, 89}},
    [HW_WIN_NEW_GAME]      = {{7, 113}, {103, 122}},
    [HW_WIN_OPTIONS]       = {{126, 233}, {103, 122}},
    [HW_WIN_MYSTERY_GIFT]  = {{7, 113}, {135, 154}},
    [HW_WIN_MYSTERY_EVENT] = {{126, 233}, {135, 154}},
    [HW_WIN_MYSTERY_BOTH]  = {{7, 233}, {135, 154}},
};

//==========ASSETS==========//
static const u32 sMainBgTiles[]    = INCBIN_U32("graphics/ui_main_menu/main_tiles.4bpp.lz");
static const u32 sMainBgTilemap[]  = INCBIN_U32("graphics/ui_main_menu/main_tiles.bin.lz");
static const u16 sMainBgPalette[]  = INCBIN_U16("graphics/ui_main_menu/main_tiles.gbapal");
static const u32 sMainBgTilesFem[]   = INCBIN_U32("graphics/ui_main_menu/main_tiles.4bpp.lz");
static const u32 sMainBgTilemapFem[] = INCBIN_U32("graphics/ui_main_menu/main_tiles.bin.lz");
static const u16 sMainBgPaletteFem[] = INCBIN_U16("graphics/ui_main_menu/main_tiles.gbapal");
static const u32 sStaticBgTiles[]   = INCBIN_U32("graphics/ui_main_menu/BG5.4bpp.lz");
static const u32 sStaticBgTilemap[] = INCBIN_U32("graphics/ui_main_menu/BG5.bin.lz");
static const u16 sStaticBgPalette[] = INCBIN_U16("graphics/ui_main_menu/BG5.gbapal");
static const u16 sIconBox_Pal[]    = INCBIN_U16("graphics/ui_main_menu/icon_shadow.gbapal");
static const u32 sIconBox_Gfx[]    = INCBIN_U32("graphics/ui_main_menu/icon_shadow.4bpp.lz");
static const u16 sIconBox_PalFem[] = INCBIN_U16("graphics/ui_main_menu/icon_shadow_fem.gbapal");
static const u32 sIconBox_GfxFem[] = INCBIN_U32("graphics/ui_main_menu/icon_shadow_fem.4bpp.lz");
static const u16 sBrendanMugshot_Pal[] = INCBIN_U16("graphics/ui_main_menu/brendan_mugshot.gbapal");
static const u32 sBrendanMugshot_Gfx[] = INCBIN_U32("graphics/ui_main_menu/brendan_mugshot.4bpp.lz");
static const u16 sMayMugshot_Pal[] = INCBIN_U16("graphics/ui_main_menu/may_mugshot.gbapal");
static const u32 sMayMugshot_Gfx[] = INCBIN_U32("graphics/ui_main_menu/may_mugshot.4bpp.lz");

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
        CreateStars();
        CreateTask(Task_MainMenuWaitFadeIn, 0);
        BlendPalettes(0xFFFFFFFF, 16, RGB_BLACK);
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

static bool8 MainMenu_InitBgs(void)
{
    ResetAllBgsCoordinates();
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sMainMenuBgTemplates, NELEMS(sMainMenuBgTemplates));
    sBg1TilemapBuffer = Alloc(0x800); if (!sBg1TilemapBuffer) return FALSE;
    memset(sBg1TilemapBuffer, 0, 0x800); SetBgTilemapBuffer(1, sBg1TilemapBuffer); ScheduleBgCopyTilemapToVram(1);
    sBg2TilemapBuffer = Alloc(0x800); if (!sBg2TilemapBuffer) return FALSE;
    memset(sBg2TilemapBuffer, 0, 0x800); SetBgTilemapBuffer(2, sBg2TilemapBuffer); ScheduleBgCopyTilemapToVram(2);
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

static bool8 MainMenu_LoadGraphics(void)
{
    switch (sMainMenuDataPtr->gfxLoadState)
    {
    case 0:
        ResetTempTileDataBuffers();
        if (gSaveBlock2Ptr->playerGender == MALE) DecompressAndCopyTileDataToVram(1, sMainBgTiles, 0, 0, 0);
        else DecompressAndCopyTileDataToVram(1, sMainBgTilesFem, 0, 0, 0);
        sMainMenuDataPtr->gfxLoadState++; break;
    case 1:
        if (FreeTempTileDataBuffersIfPossible() != TRUE)
        {
            if (gSaveBlock2Ptr->playerGender == MALE) DecompressDataWithHeaderWram(sMainBgTilemap, sBg1TilemapBuffer);
            else DecompressDataWithHeaderWram(sMainBgTilemapFem, sBg1TilemapBuffer);
            sMainMenuDataPtr->gfxLoadState++;
        } break;
    case 2:
        ResetTempTileDataBuffers();
        DecompressAndCopyTileDataToVram(2, sStaticBgTiles, 0, 0, 0);
        sMainMenuDataPtr->gfxLoadState++; break;
    case 3:
        if (FreeTempTileDataBuffersIfPossible() != TRUE)
        {
            u16 *bgTilemap = (u16 *)sBg2TilemapBuffer;
            DecompressDataWithHeaderWram(sStaticBgTilemap, sBg2TilemapBuffer);
            for (int i = 0; i < 1024; i++) bgTilemap[i] = (bgTilemap[i] & 0x0FFF) | (1 << 12);
            ScheduleBgCopyTilemapToVram(2);
            sMainMenuDataPtr->gfxLoadState++;
        } break;
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
        LoadPalette(sStaticBgPalette, BG_PLTT_ID(1), PLTT_SIZE_4BPP);
        sMainMenuDataPtr->gfxLoadState++; break;
    default:
        sMainMenuDataPtr->gfxLoadState = 0; return TRUE;
    }
    return FALSE;
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
        s16 x, y;
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
    const u8 colors[3] = {0,2,3}; u8 mapDisplayHeader[24]; u8 *withoutPrefixPtr, *playTimePtr; u16 dexCount=0; u8 badgeCount=0; u32 i;
    FillWindowPixelBuffer(WINDOW_HEADER, PIXEL_FILL(TEXT_COLOR_TRANSPARENT));
    FillWindowPixelBuffer(WINDOW_MIDDLE, PIXEL_FILL(TEXT_COLOR_TRANSPARENT));
    withoutPrefixPtr = &mapDisplayHeader[3]; GetMapName(withoutPrefixPtr, GetCurrentRegionMapSectionId(), 0);
    mapDisplayHeader[0]=EXT_CTRL_CODE_BEGIN; mapDisplayHeader[1]=EXT_CTRL_CODE_HIGHLIGHT; mapDisplayHeader[2]=TEXT_COLOR_TRANSPARENT;
    AddTextPrinterParameterized4(WINDOW_HEADER, FONT_NARROW, GetStringCenterAlignXOffset(FONT_NARROW, withoutPrefixPtr, 10*8), 1,0,0, colors, 0xFF, mapDisplayHeader);
    playTimePtr = ConvertIntToDecimalStringN(gStringVar4, gSaveBlock2Ptr->playTimeHours, STR_CONV_MODE_LEFT_ALIGN, 3);
    *playTimePtr = 0xF0; ConvertIntToDecimalStringN(playTimePtr+1, gSaveBlock2Ptr->playTimeMinutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    AddTextPrinterParameterized4(WINDOW_HEADER, FONT_NORMAL, (104-12)+GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, 6*8), 1,0,0, colors, TEXT_SKIP_DRAW, gStringVar4);
    if (FlagGet(FLAG_SYS_POKEDEX_GET)) {
        if (IsNationalPokedexEnabled()) dexCount = GetNationalPokedexCount(FLAG_GET_CAUGHT);
        else dexCount = GetHoennPokedexCount(FLAG_GET_CAUGHT);
        ConvertIntToDecimalStringN(gStringVar1, dexCount, STR_CONV_MODE_RIGHT_ALIGN, 4); StringExpandPlaceholders(gStringVar4, sText_DexNum);
        AddTextPrinterParameterized4(WINDOW_MIDDLE, FONT_NORMAL, 16, 18, 0,0, colors, TEXT_SKIP_DRAW, gStringVar4);
    }
    for (i=FLAG_BADGE01_GET; i<FLAG_BADGE01_GET+NUM_BADGES; i++) if (FlagGet(i)) badgeCount++;
    ConvertIntToDecimalStringN(gStringVar1, badgeCount, STR_CONV_MODE_LEADING_ZEROS, 1); StringExpandPlaceholders(gStringVar4, sText_Badges);
    AddTextPrinterParameterized4(WINDOW_MIDDLE, FONT_NORMAL, 16, 34, 0,0, colors, TEXT_SKIP_DRAW, gStringVar4);
    AddTextPrinterParameterized3(WINDOW_MIDDLE, FONT_NORMAL, 16, 2, colors, TEXT_SKIP_DRAW, gSaveBlock2Ptr->playerName);
    PutWindowTilemap(WINDOW_HEADER); CopyWindowToVram(WINDOW_HEADER, 3);
    PutWindowTilemap(WINDOW_MIDDLE); CopyWindowToVram(WINDOW_MIDDLE, 3);
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

// Quatro níveis de brilho (OBJ palette slots 8-11)
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
    LoadSpritePalette(&sStarPaletteDummy);               // registra a tag
    LoadPalette(sStarPal0, OBJ_PLTT_ID(8),  sizeof(sStarPal0)); // dim
    LoadPalette(sStarPal1, OBJ_PLTT_ID(9),  sizeof(sStarPal1)); // escuro-médio
    LoadPalette(sStarPal2, OBJ_PLTT_ID(10), sizeof(sStarPal2)); // médio-claro
    LoadPalette(sStarPal3, OBJ_PLTT_ID(11), sizeof(sStarPal3)); // brilhante
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
        spr->oam.paletteNum = 9 + depth + hiPhase;
    }
}

//==========INPUT CONTROL==========//
static void Task_MainMenuMain(u8 taskId)
{
    if (JOY_NEW(A_BUTTON))
    {
        PlaySE(SE_SELECT); BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
        switch (sSelectedOption)
        {
            case HW_WIN_CONTINUE: sMainMenuDataPtr->savedCallback = CB2_ContinueSavedGame; sSelectedOption = HW_WIN_CONTINUE; break;
            case HW_WIN_NEW_GAME: sMainMenuDataPtr->savedCallback = CB2_NewGameBirchSpeech_FromNewMainMenu; sSelectedOption = HW_WIN_CONTINUE; break;
            case HW_WIN_OPTIONS: gMain.savedCallback = CB2_ReinitMainMenu; sMainMenuDataPtr->savedCallback = CB2_InitOptionMenu; break;
            case HW_WIN_MYSTERY_EVENT: sMainMenuDataPtr->savedCallback = CB2_InitMysteryEventMenu; sSelectedOption = HW_WIN_CONTINUE; break;
            case HW_WIN_MYSTERY_GIFT: sMainMenuDataPtr->savedCallback = CB2_InitMysteryGift; sSelectedOption = HW_WIN_CONTINUE; break;
        }
        gTasks[taskId].func = Task_MainMenuTurnOff;
    }
    if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_PC_OFF); BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB_BLACK);
        sMainMenuDataPtr->savedCallback = CB2_InitTitleScreen; sSelectedOption = HW_WIN_CONTINUE;
        gTasks[taskId].func = Task_MainMenuTurnOff;
    }
    if (JOY_NEW(DPAD_DOWN))
    {
        // Apenas 3 opções: Continue(0), New Game(1), Option(2)
        if (sSelectedOption == HW_WIN_CONTINUE)
            sSelectedOption = HW_WIN_NEW_GAME;
        else if (sSelectedOption == HW_WIN_NEW_GAME)
            sSelectedOption = HW_WIN_OPTIONS;
        else
            sSelectedOption = HW_WIN_CONTINUE;
        MoveHWindowsWithInput();
    }
    if (JOY_NEW(DPAD_UP))
    {
        if (sSelectedOption == HW_WIN_CONTINUE)
            sSelectedOption = HW_WIN_OPTIONS;
        else if (sSelectedOption == HW_WIN_NEW_GAME)
            sSelectedOption = HW_WIN_CONTINUE;
        else
            sSelectedOption = HW_WIN_NEW_GAME;
        MoveHWindowsWithInput();
    }
    if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_RIGHT))
    {
        // Alterna entre New Game e Option (Continue não participa)
        if (sSelectedOption == HW_WIN_NEW_GAME)
            sSelectedOption = HW_WIN_OPTIONS;
        else if (sSelectedOption == HW_WIN_OPTIONS)
            sSelectedOption = HW_WIN_NEW_GAME;
        MoveHWindowsWithInput();
    }
}
