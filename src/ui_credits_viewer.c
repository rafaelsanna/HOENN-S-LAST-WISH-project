#include "global.h"
#include "ui_credits_viewer.h"
#include "bg.h"
#include "gpu_regs.h"
#include "window.h"
#include "decompress.h"
#include "task.h"
#include "main.h"
#include "malloc.h"
#include "graphics.h"
#include "palette.h"
#include "constants/rgb.h"
#include "sound.h"
#include "constants/songs.h"

// ========== Declarações manuais ==========
// Por precaução, declaramos as funções usadas.
// Os protótipos originais estão em graphics.h e decompress.h,
// mas forçamos a declaração para evitar erros.
extern void ResetTempTileDataBuffers(void);
extern void DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);

#define CREDITS_PAGE_COUNT 3
#define INPUT_COOLDOWN_FRAMES 12

// Assets das páginas (use os caminhos corretos)
static const u16 sCreditsPage1_Pal[] = INCBIN_U16("graphics/credits/credits_01.gbapal");
static const u8 sCreditsPage1_Tiles[] = INCBIN_U8("graphics/credits/credits_01.4bpp.lz");
static const u8 sCreditsPage1_Map[] = INCBIN_U8("graphics/credits/credits_01.bin.lz");

static const u16 sCreditsPage2_Pal[] = INCBIN_U16("graphics/credits/credits_02.gbapal");
static const u8 sCreditsPage2_Tiles[] = INCBIN_U8("graphics/credits/credits_02.4bpp.lz");
static const u8 sCreditsPage2_Map[] = INCBIN_U8("graphics/credits/credits_02.bin.lz");

static const u16 sCreditsPage3_Pal[] = INCBIN_U16("graphics/credits/credits_03.gbapal");
static const u8 sCreditsPage3_Tiles[] = INCBIN_U8("graphics/credits/credits_03.4bpp.lz");
static const u8 sCreditsPage3_Map[] = INCBIN_U8("graphics/credits/credits_03.bin.lz");

static const struct {
    const u16 *pal;
    const u8 *tiles;
    const u8 *map;
} sCreditsPages[CREDITS_PAGE_COUNT] = {
    { sCreditsPage1_Pal, sCreditsPage1_Tiles, sCreditsPage1_Map },
    { sCreditsPage2_Pal, sCreditsPage2_Tiles, sCreditsPage2_Map },
    { sCreditsPage3_Pal, sCreditsPage3_Tiles, sCreditsPage3_Map },
};

static const struct BgTemplate sBgTemplate = {
    .bg = 0,
    .charBaseIndex = 0,
    .mapBaseIndex = 31,
    .screenSize = 0,
    .paletteMode = 0,
    .priority = 0,
    .baseTile = 0
};

static EWRAM_DATA u8 sCurrentPage = 0;
static EWRAM_DATA u8 sInputCooldown = 0;
static EWRAM_DATA u8 *sBg0TilemapBuffer = NULL;
static EWRAM_DATA bool8 sAllocated = FALSE;

static void VBlankCB_CreditsViewer(void);
static void CB2_CreditsViewerMain(void);
static void Task_FadeIn(u8 taskId);
static void Task_WaitInput(u8 taskId);
static void Task_FadeOut(u8 taskId);
static void LoadPage(u8 page);
static void FreeResources(void);

static void LoadPage(u8 page)
{
    if (page >= CREDITS_PAGE_COUNT) return;

    // Carrega paleta
    LoadPalette(sCreditsPages[page].pal, BG_PLTT_ID(0), 16 * PLTT_SIZE_4BPP);
    // Descomprime os tiles (mesma função usada em painting.c)
    DecompressAndCopyTileDataToVram(0, sCreditsPages[page].tiles, 0, 0, 0);
    // Copia tilemap para BG0
    CopyToBgTilemapBuffer(0, sCreditsPages[page].map, 0, 0);
    CopyBgTilemapBufferToVram(0);

    sInputCooldown = INPUT_COOLDOWN_FRAMES;
}

static void FreeResources(void)
{
    if (sAllocated && sBg0TilemapBuffer != NULL)
    {
        Free(sBg0TilemapBuffer);
        sBg0TilemapBuffer = NULL;
    }
    FreeAllWindowBuffers();
}

void CB2_ShowCreditsViewer(void)
{
    SetVBlankCallback(NULL);

    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, &sBgTemplate, 1);

    if (GetBgTilemapBuffer(0) == NULL)
    {
        sBg0TilemapBuffer = Alloc(BG_SCREEN_SIZE);
        SetBgTilemapBuffer(0, sBg0TilemapBuffer);
        sAllocated = TRUE;
    }
    else
    {
        sAllocated = FALSE;
    }

    sCurrentPage = 0;
    sInputCooldown = 0;
    LoadPage(sCurrentPage);

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    ShowBg(0);

    CreateTask(Task_FadeIn, 0);
    SetVBlankCallback(VBlankCB_CreditsViewer);
    SetMainCallback2(CB2_CreditsViewerMain);
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
}

static void VBlankCB_CreditsViewer(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_CreditsViewerMain(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void Task_FadeIn(u8 taskId)
{
    if (!gPaletteFade.active)
        gTasks[taskId].func = Task_WaitInput;
}

static void Task_WaitInput(u8 taskId)
{
    if (sInputCooldown > 0)
        sInputCooldown--;

    if (JOY_NEW(A_BUTTON) && sInputCooldown == 0)
    {
        PlaySE(SE_SELECT);
        sCurrentPage = (sCurrentPage + 1) % CREDITS_PAGE_COUNT;
        LoadPage(sCurrentPage);
    }
    else if (JOY_NEW(B_BUTTON))
    {
        PlaySE(SE_PC_OFF);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        gTasks[taskId].func = Task_FadeOut;
    }
}

static void Task_FadeOut(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        FreeResources();
        SetMainCallback2(gMain.savedCallback);
        DestroyTask(taskId);
    }
}
