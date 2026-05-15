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

// bg.h already declares IsDma3ManagerBusyWithBgCopy as bool32
// decompress.h / graphics.h declare the rest; just forward the ones not in headers
extern void ResetTempTileDataBuffers(void);
extern bool8 FreeTempTileDataBuffersIfPossible(void);
extern void DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
extern void DoScheduledBgTilemapCopiesToVram(void);

// ============================================================
// CONFIG
// ============================================================
#define CREDITS_PAGE_COUNT   3
#define FADE_SPEED           4   // frames per step for inter-page fade

// ============================================================
// TASK STATES
// ============================================================
// State machine for the main task:
//   FADE_IN        -> wait palette fade to finish after init
//   SHOW           -> accepting input, waiting
//   FADE_TO_NEXT   -> fading out before changing page (A pressed)
//   LOAD_NEXT      -> loading new page assets into VRAM (DMA in progress)
//   FADE_FROM_NEXT -> fading back in after new page loaded
//   FADE_OUT       -> fading out to exit (B pressed)
//   CLEANUP        -> final cleanup and return

enum {
    STATE_FADE_IN = 0,
    STATE_SHOW,
    STATE_FADE_TO_NEXT,
    STATE_LOAD_NEXT,
    STATE_FADE_FROM_NEXT,
    STATE_FADE_OUT,
    STATE_CLEANUP,
};

// Task data slots
#define tState      data[0]
#define tNextPage   data[1]

// ============================================================
// ASSETS
// ============================================================
static const u16 sCreditsPage1_Pal[]   = INCBIN_U16("graphics/credits/credits_01.gbapal");
static const u8  sCreditsPage1_Tiles[] = INCBIN_U8 ("graphics/credits/credits_01.4bpp.lz");
static const u8  sCreditsPage1_Map[]   = INCBIN_U8 ("graphics/credits/credits_01.bin.lz");

static const u16 sCreditsPage2_Pal[]   = INCBIN_U16("graphics/credits/credits_02.gbapal");
static const u8  sCreditsPage2_Tiles[] = INCBIN_U8 ("graphics/credits/credits_02.4bpp.lz");
static const u8  sCreditsPage2_Map[]   = INCBIN_U8 ("graphics/credits/credits_02.bin.lz");

static const u16 sCreditsPage3_Pal[]   = INCBIN_U16("graphics/credits/credits_03.gbapal");
static const u8  sCreditsPage3_Tiles[] = INCBIN_U8 ("graphics/credits/credits_03.4bpp.lz");
static const u8  sCreditsPage3_Map[]   = INCBIN_U8 ("graphics/credits/credits_03.bin.lz");

static const struct {
    const u16 *pal;
    const u8  *tiles;
    const u8  *map;
} sCreditsPages[CREDITS_PAGE_COUNT] = {
    { sCreditsPage1_Pal, sCreditsPage1_Tiles, sCreditsPage1_Map },
    { sCreditsPage2_Pal, sCreditsPage2_Tiles, sCreditsPage2_Map },
    { sCreditsPage3_Pal, sCreditsPage3_Tiles, sCreditsPage3_Map },
};

// ============================================================
// BG TEMPLATE
// ============================================================
static const struct BgTemplate sBgTemplate = {
    .bg            = 0,
    .charBaseIndex = 0,
    .mapBaseIndex  = 31,
    .screenSize    = 0,
    .paletteMode   = 0,
    .priority      = 0,
    .baseTile      = 0,
};

// ============================================================
// EWRAM STATE
// ============================================================
static EWRAM_DATA u8     sCurrentPage        = 0;
static EWRAM_DATA u8    *sBg0TilemapBuffer   = NULL;
static EWRAM_DATA bool8  sAllocated          = FALSE;

// ============================================================
// FORWARD DECLARATIONS
// ============================================================
static void VBlankCB_CreditsViewer(void);
static void CB2_CreditsViewerMain(void);
static void Task_CreditsViewer(u8 taskId);
static void StartLoadPage(u8 page);
static void FreeResources(void);

// ============================================================
// HELPERS
// ============================================================

// Kicks off an async load of a page's assets.
// Caller MUST wait for FreeTempTileDataBuffersIfPossible() + IsDma3ManagerBusyWithBgCopy()
// to both return FALSE before the VRAM is safe to use again.
static void StartLoadPage(u8 page)
{
    if (page >= CREDITS_PAGE_COUNT)
        return;

    // Clear any previous decompression buffers before starting a new load.
    // This is the key call that prevents the corruption when spamming A:
    // FreeTempTileDataBuffers() (not the "IfPossible" variant) forces a synchronous
    // free so we start from a clean state.
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

// ============================================================
// MAIN ENTRY POINT
// ============================================================
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

// ============================================================
// MAIN TASK — single function, explicit state machine
// ============================================================
static void Task_CreditsViewer(u8 taskId)
{
    switch (gTasks[taskId].tState)
    {
    // ----------------------------------------------------------
    // Wait for the initial fade-in to finish, AND for the first
    // page's DMA decompression to complete. Both must be done
    // before we accept any input.
    // ----------------------------------------------------------
    case STATE_FADE_IN:
        if (FreeTempTileDataBuffersIfPossible())
            break;  // still decompressing tiles, keep waiting
        if (IsDma3ManagerBusyWithBgCopy())
            break;  // tilemap DMA copy still running, keep waiting
        if (gPaletteFade.active)
            break;  // fade not done yet
        gTasks[taskId].tState = STATE_SHOW;
        break;

    // ----------------------------------------------------------
    // Idle — accept A (next page) or B (exit).
    // Input is ONLY accepted here, so spamming A while a
    // transition is in progress has zero effect.
    // ----------------------------------------------------------
    case STATE_SHOW:
        if (JOY_NEW(A_BUTTON))
        {
            PlaySE(SE_SELECT);
            // Store which page to load next
            gTasks[taskId].tNextPage = (sCurrentPage + 1) % CREDITS_PAGE_COUNT;
            // Fade to black before swapping VRAM content
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, FADE_SPEED, RGB_BLACK);
            gTasks[taskId].tState = STATE_FADE_TO_NEXT;
        }
        else if (JOY_NEW(B_BUTTON))
        {
            PlaySE(SE_PC_OFF);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, FADE_SPEED, RGB_BLACK);
            gTasks[taskId].tState = STATE_FADE_OUT;
        }
        break;

    // ----------------------------------------------------------
    // Wait for the fade-to-black to finish, THEN start loading
    // the new page. We only touch VRAM while the screen is black
    // so there's no visual glitch even if DMA takes multiple frames.
    // ----------------------------------------------------------
    case STATE_FADE_TO_NEXT:
        if (gPaletteFade.active)
            break;
        // Screen is now fully black — safe to overwrite VRAM
        sCurrentPage = gTasks[taskId].tNextPage;
        StartLoadPage(sCurrentPage);
        gTasks[taskId].tState = STATE_LOAD_NEXT;
        break;

    // ----------------------------------------------------------
    // Wait until tile decompression AND tilemap DMA copy are
    // both completely done before fading back in.
    // ----------------------------------------------------------
    case STATE_LOAD_NEXT:
        if (FreeTempTileDataBuffersIfPossible())
            break;  // tile decompression still in progress
        if (IsDma3ManagerBusyWithBgCopy())
            break;  // tilemap DMA copy still in progress
        // Everything settled — fade back in
        BeginNormalPaletteFade(PALETTES_ALL, 0, FADE_SPEED, 0, RGB_BLACK);
        gTasks[taskId].tState = STATE_FADE_FROM_NEXT;
        break;

    // ----------------------------------------------------------
    // Wait for fade-in to finish, then go back to idle.
    // ----------------------------------------------------------
    case STATE_FADE_FROM_NEXT:
        if (gPaletteFade.active)
            break;
        gTasks[taskId].tState = STATE_SHOW;
        break;

    // ----------------------------------------------------------
    // Wait for exit fade to finish, then clean up and return.
    // ----------------------------------------------------------
    case STATE_FADE_OUT:
        if (gPaletteFade.active)
            break;
        gTasks[taskId].tState = STATE_CLEANUP;
        break;

    // ----------------------------------------------------------
    // One-frame cleanup — free memory, restore main callback.
    // ----------------------------------------------------------
    case STATE_CLEANUP:
        FreeResources();
        SetMainCallback2(gMain.savedCallback);
        DestroyTask(taskId);
        break;
    }
}

// ============================================================
// CALLBACKS
// ============================================================
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
