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

extern void ResetTempTileDataBuffers(void);
extern bool8 FreeTempTileDataBuffersIfPossible(void);
extern void DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
extern void DoScheduledBgTilemapCopiesToVram(void);

#define CREDITS_PAGE_COUNT   5
#define FADE_SPEED           4

enum {
    STATE_FADE_IN = 0,
    STATE_SHOW,
    STATE_FADE_TO_NEXT,
    STATE_LOAD_NEXT,
    STATE_FADE_FROM_NEXT,
    STATE_FADE_OUT,
    STATE_CLEANUP,
};

#define tState      data[0]
#define tNextPage   data[1]

static const u16 sCreditsPage1_Pal[]   = INCBIN_U16("graphics/credits/credits_01.gbapal");
static const u8  sCreditsPage1_Tiles[] = INCBIN_U8 ("graphics/credits/credits_01.4bpp.lz");
static const u8  sCreditsPage1_Map[]   = INCBIN_U8 ("graphics/credits/credits_01.bin.lz");

static const u16 sCreditsPage2_Pal[]   = INCBIN_U16("graphics/credits/credits_02.gbapal");
static const u8  sCreditsPage2_Tiles[] = INCBIN_U8 ("graphics/credits/credits_02.4bpp.lz");
static const u8  sCreditsPage2_Map[]   = INCBIN_U8 ("graphics/credits/credits_02.bin.lz");

static const u16 sCreditsPage3_Pal[]   = INCBIN_U16("graphics/credits/credits_03.gbapal");
static const u8  sCreditsPage3_Tiles[] = INCBIN_U8 ("graphics/credits/credits_03.4bpp.lz");
static const u8  sCreditsPage3_Map[]   = INCBIN_U8 ("graphics/credits/credits_03.bin.lz");

static const u16 sCreditsPage4_Pal[]   = INCBIN_U16("graphics/credits/credits_04.gbapal");
static const u8  sCreditsPage4_Tiles[] = INCBIN_U8 ("graphics/credits/credits_04.4bpp.lz");
static const u8  sCreditsPage4_Map[]   = INCBIN_U8 ("graphics/credits/credits_04.bin.lz");

static const u16 sCreditsPage5_Pal[]   = INCBIN_U16("graphics/credits/credits_05.gbapal");
static const u8  sCreditsPage5_Tiles[] = INCBIN_U8 ("graphics/credits/credits_05.4bpp.lz");
static const u8  sCreditsPage5_Map[]   = INCBIN_U8 ("graphics/credits/credits_05.bin.lz");

static const struct {
    const u16 *pal;
    const u8  *tiles;
    const u8  *map;
} sCreditsPages[CREDITS_PAGE_COUNT] = {
    { sCreditsPage1_Pal, sCreditsPage1_Tiles, sCreditsPage1_Map },
    { sCreditsPage2_Pal, sCreditsPage2_Tiles, sCreditsPage2_Map },
    { sCreditsPage3_Pal, sCreditsPage3_Tiles, sCreditsPage3_Map },
    { sCreditsPage4_Pal, sCreditsPage4_Tiles, sCreditsPage4_Map },
    { sCreditsPage5_Pal, sCreditsPage5_Tiles, sCreditsPage5_Map },
};

static const struct BgTemplate sBgTemplate = {
    .bg            = 0,
    .charBaseIndex = 0,
    .mapBaseIndex  = 31,
    .screenSize    = 0,
    .paletteMode   = 0,
    .priority      = 0,
    .baseTile      = 0,
};

static EWRAM_DATA u8     sCurrentPage        = 0;
static EWRAM_DATA u8    *sBg0TilemapBuffer   = NULL;
static EWRAM_DATA bool8  sAllocated          = FALSE;

static void VBlankCB_CreditsViewer(void);
static void CB2_CreditsViewerMain(void);
static void Task_CreditsViewer(u8 taskId);
static void StartLoadPage(u8 page);
static void FreeResources(void);

static void StartLoadPage(u8 page)
{
    if (page >= CREDITS_PAGE_COUNT)
        return;

    ResetTempTileDataBuffers();
    LoadPalette(sCreditsPages[page].pal, BG_PLTT_ID(0), 16 * PLTT_SIZE_4BPP);
    DecompressAndCopyTileDataToVram(0, sCreditsPages[page].tiles, 0, 0, 0);
    CopyToBgTilemapBuffer(0, sCreditsPages[page].map, 0, 0);
    CopyBgTilemapBufferToVram(0);
}

static void FreeResources(void)
{
    if (sAllocated && sBg0TilemapBuffer != NULL)
    {
        Free(sBg0TilemapBuffer);
        sBg0TilemapBuffer = NULL;
        sAllocated = FALSE;
    }
    FillBgTilemapBufferRect_Palette0(0, 0, 0, 0, 32, 32);
    CopyBgTilemapBufferToVram(0);
    FreeAllWindowBuffers();
}

void CB2_ShowCreditsViewer(void)
{
    u8 taskId;

    SetVBlankCallback(NULL);
    DmaClear16(3, OAM, OAM_SIZE);
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
    StartLoadPage(sCurrentPage);

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    ShowBg(0);

    taskId = CreateTask(Task_CreditsViewer, 0);
    gTasks[taskId].tState    = STATE_FADE_IN;
    gTasks[taskId].tNextPage = 0;

    SetVBlankCallback(VBlankCB_CreditsViewer);
    SetMainCallback2(CB2_CreditsViewerMain);
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
}

static void Task_CreditsViewer(u8 taskId)
{
    u8 newPage;
    u16 joy = gMain.newKeys;   // CORRIGIDO: usar gMain.newKeys

    switch (gTasks[taskId].tState)
    {
    case STATE_FADE_IN:
        if (FreeTempTileDataBuffersIfPossible())
            break;
        if (IsDma3ManagerBusyWithBgCopy())
            break;
        if (gPaletteFade.active)
            break;
        gTasks[taskId].tState = STATE_SHOW;
        break;

    case STATE_SHOW:
        // Avançar página: A, RIGHT, R
        if (joy & (A_BUTTON | DPAD_RIGHT | R_BUTTON))
        {
            PlaySE(SE_SELECT);
            newPage = (sCurrentPage + 1) % CREDITS_PAGE_COUNT;
            gTasks[taskId].tNextPage = newPage;
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, FADE_SPEED, RGB_BLACK);
            gTasks[taskId].tState = STATE_FADE_TO_NEXT;
        }
        // Voltar página: LEFT, L
        else if (joy & (DPAD_LEFT | L_BUTTON))
        {
            PlaySE(SE_SELECT);
            newPage = (sCurrentPage + CREDITS_PAGE_COUNT - 1) % CREDITS_PAGE_COUNT;
            gTasks[taskId].tNextPage = newPage;
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, FADE_SPEED, RGB_BLACK);
            gTasks[taskId].tState = STATE_FADE_TO_NEXT;
        }
        // Sair: B
        else if (joy & B_BUTTON)
        {
            PlaySE(SE_PC_OFF);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, FADE_SPEED, RGB_BLACK);
            gTasks[taskId].tState = STATE_FADE_OUT;
        }
        break;

    case STATE_FADE_TO_NEXT:
        if (gPaletteFade.active)
            break;
        sCurrentPage = gTasks[taskId].tNextPage;
        StartLoadPage(sCurrentPage);
        gTasks[taskId].tState = STATE_LOAD_NEXT;
        break;

    case STATE_LOAD_NEXT:
        if (FreeTempTileDataBuffersIfPossible())
            break;
        if (IsDma3ManagerBusyWithBgCopy())
            break;
        BeginNormalPaletteFade(PALETTES_ALL, 0, FADE_SPEED, 0, RGB_BLACK);
        gTasks[taskId].tState = STATE_FADE_FROM_NEXT;
        break;

    case STATE_FADE_FROM_NEXT:
        if (gPaletteFade.active)
            break;
        gTasks[taskId].tState = STATE_SHOW;
        break;

    case STATE_FADE_OUT:
        if (gPaletteFade.active)
            break;
        gTasks[taskId].tState = STATE_CLEANUP;
        break;

    case STATE_CLEANUP:
        FreeResources();
        SetMainCallback2(gMain.savedCallback);
        DestroyTask(taskId);
        break;
    }
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
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();
}

#undef tState
#undef tNextPage
