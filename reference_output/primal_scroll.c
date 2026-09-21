#include "global.h"
#include "bg.h"
#include "gpu_regs.h"
#include "main.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "script.h"

#include "constants/rgb.h"

// ============================================================================
// HLW PRIMAL TITANS SCROLL PAINTING
//
// Three authored 240x160 4bpp screens become one continuous vertical reveal.
//
// GBA VRAM strategy:
//   BG0 lower half: charbase 0 + screenblock 15
//   BG1 upper half: charbase 2 + screenblock 31
//
// Each half reserves exactly 30 KiB for 4bpp tiles (960 tiles) and 2 KiB for
// its 32x32 text-BG map. The supplied screens use ~600 tiles each.
//
// Two hardware windows split the LCD at the moving seam:
//   top    -> current BG
//   bottom -> next BG
//
// This hides normal 256px text-BG wraparound and produces a real pixel-smooth
// 160px transition. After part 1 has completely left the LCD, BG0 is hidden,
// so it is overwritten with part 3 and reused for the second transition.
//
// Script usage:
//     callnative HLW_StartPrimalScrollPainting
//     waitstate
//
// The scroll is automatic. It stops on part 3 and waits for A or B to close.
// ============================================================================

#define PRIMAL_BG_A                 0
#define PRIMAL_BG_B                 1

#define PRIMAL_BG_A_CHARBASE        0
#define PRIMAL_BG_A_MAPBASE         15
#define PRIMAL_BG_B_CHARBASE        2
#define PRIMAL_BG_B_MAPBASE         31

#define PRIMAL_MAP_WIDTH            30
#define PRIMAL_MAP_HEIGHT           20
#define PRIMAL_HW_MAP_WIDTH         32
#define PRIMAL_HW_MAP_HEIGHT        32

#define PRIMAL_SCROLL_PIXELS        DISPLAY_HEIGHT
#define PRIMAL_NEXT_BG_BASE_VOFS    (256 - DISPLAY_HEIGHT) // 96
#define PRIMAL_START_HOLD_FRAMES    30

// WININ layout: bits 0..5 = WIN0 layers, bits 8..13 = WIN1 layers.
// We only need one BG inside each window, with no OBJ or color effects.
#define PRIMAL_WIN0_BG0_WIN1_BG1    0x0201
#define PRIMAL_WIN0_BG1_WIN1_BG0    0x0102

enum PrimalScrollState
{
    PRIMAL_STATE_WAIT_INITIAL_DMA,
    PRIMAL_STATE_FADE_IN,
    PRIMAL_STATE_START_HOLD,
    PRIMAL_STATE_SCROLL_1_TO_2,
    PRIMAL_STATE_LOAD_PART_3,
    PRIMAL_STATE_WAIT_PART_3_DMA,
    PRIMAL_STATE_SCROLL_2_TO_3,
    PRIMAL_STATE_WAIT_FINAL_INPUT,
    PRIMAL_STATE_FADE_OUT,
    PRIMAL_STATE_RETURN_FIELD,
};

struct PrimalScrollScene
{
    u8 state;
    u16 progress;
    u16 timer;
};

static EWRAM_DATA struct PrimalScrollScene sPrimalScene = {0};
static EWRAM_DATA bool8 sPrimalSceneActive = FALSE;

// ---------------------------------------------------------------------------
// Assets
// Source PNGs are indexed 16-color tile sheets.
// The normal build generates .4bpp and .gbapal.
// ---------------------------------------------------------------------------

static const u32 sPrimalPart1Tiles[] =
    INCBIN_U32("graphics/primal_scroll/01.4bpp");
static const u16 sPrimalPart1Map[] =
    INCBIN_U16("graphics/primal_scroll/01.bin");

static const u32 sPrimalPart2Tiles[] =
    INCBIN_U32("graphics/primal_scroll/02.4bpp");
static const u16 sPrimalPart2Map[] =
    INCBIN_U16("graphics/primal_scroll/02.bin");

static const u32 sPrimalPart3Tiles[] =
    INCBIN_U32("graphics/primal_scroll/03.4bpp");
static const u16 sPrimalPart3Map[] =
    INCBIN_U16("graphics/primal_scroll/03.bin");

// All three supplied parts use the same indexed palette.
static const u16 sPrimalPalette[] =
    INCBIN_U16("graphics/primal_scroll/01.gbapal");

static const struct BgTemplate sPrimalBgTemplates[] =
{
    {
        .bg = PRIMAL_BG_A,
        .charBaseIndex = PRIMAL_BG_A_CHARBASE,
        .mapBaseIndex = PRIMAL_BG_A_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0,
    },
    {
        .bg = PRIMAL_BG_B,
        .charBaseIndex = PRIMAL_BG_B_CHARBASE,
        .mapBaseIndex = PRIMAL_BG_B_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0,
    },
};

static void CB2_InitPrimalScroll(void);
static void CB2_PrimalScroll(void);
static void VBlankCB_PrimalScroll(void);

static void PrimalScroll_LoadPart(u8 bg, u8 part);
static void PrimalScroll_ApplyTransition(u16 progress, bool8 bgAIsCurrent);
static void PrimalScroll_BeginExit(void);
static void PrimalScroll_ReturnToField(void);

// ---------------------------------------------------------------------------
// Asset upload
// ---------------------------------------------------------------------------

static void PrimalScroll_CopyMapToScreenBlock(u8 mapBase, const u16 *src)
{
    u32 x;
    u32 y;
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(mapBase);

    // Clear the full 32x32 hardware map.
    for (y = 0; y < PRIMAL_HW_MAP_HEIGHT; y++)
    {
        for (x = 0; x < PRIMAL_HW_MAP_WIDTH; x++)
            dst[y * PRIMAL_HW_MAP_WIDTH + x] = 0;
    }

    // Copy the exact authored 30x20 visible map. Tile index + H/V flip bits
    // are preserved exactly from the .bin.
    for (y = 0; y < PRIMAL_MAP_HEIGHT; y++)
    {
        for (x = 0; x < PRIMAL_MAP_WIDTH; x++)
        {
            dst[y * PRIMAL_HW_MAP_WIDTH + x] =
                src[y * PRIMAL_MAP_WIDTH + x];
        }
    }
}

static void PrimalScroll_LoadPart(u8 bg, u8 part)
{
    const u32 *tiles;
    const u16 *map;
    u32 tileSize;
    u8 mapBase;

    switch (part)
    {
    default:
    case 0:
        tiles = sPrimalPart1Tiles;
        tileSize = sizeof(sPrimalPart1Tiles);
        map = sPrimalPart1Map;
        break;
    case 1:
        tiles = sPrimalPart2Tiles;
        tileSize = sizeof(sPrimalPart2Tiles);
        map = sPrimalPart2Map;
        break;
    case 2:
        tiles = sPrimalPart3Tiles;
        tileSize = sizeof(sPrimalPart3Tiles);
        map = sPrimalPart3Map;
        break;
    }

    mapBase = (bg == PRIMAL_BG_A)
        ? PRIMAL_BG_A_MAPBASE
        : PRIMAL_BG_B_MAPBASE;

    LoadBgTiles(bg, tiles, tileSize, 0);
    PrimalScroll_CopyMapToScreenBlock(mapBase, map);
}

// ---------------------------------------------------------------------------
// Smooth transition
// ---------------------------------------------------------------------------

static void PrimalScroll_ApplyTransition(u16 progress, bool8 bgAIsCurrent)
{
    u16 seam;

    if (progress > PRIMAL_SCROLL_PIXELS)
        progress = PRIMAL_SCROLL_PIXELS;

    // The seam starts at y=160 and moves upward to y=0.
    seam = DISPLAY_HEIGHT - progress;

    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(0, DISPLAY_WIDTH));
    SetGpuReg(REG_OFFSET_WIN1H, WIN_RANGE(0, DISPLAY_WIDTH));

    // WIN0 = top/current portion, WIN1 = bottom/next portion.
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(0, seam));
    SetGpuReg(REG_OFFSET_WIN1V, WIN_RANGE(seam, DISPLAY_HEIGHT));

    if (bgAIsCurrent)
    {
        // Part 1 on BG0 leaves upward; part 2 on BG1 enters from below.
        SetGpuReg(REG_OFFSET_WININ, PRIMAL_WIN0_BG0_WIN1_BG1);

        SetGpuReg(REG_OFFSET_BG0VOFS, progress & 0xFF);
        SetGpuReg(
            REG_OFFSET_BG1VOFS,
            (PRIMAL_NEXT_BG_BASE_VOFS + progress) & 0xFF
        );
    }
    else
    {
        // Part 2 on BG1 leaves upward; part 3 on reused BG0 enters below.
        SetGpuReg(REG_OFFSET_WININ, PRIMAL_WIN0_BG1_WIN1_BG0);

        SetGpuReg(REG_OFFSET_BG1VOFS, progress & 0xFF);
        SetGpuReg(
            REG_OFFSET_BG0VOFS,
            (PRIMAL_NEXT_BG_BASE_VOFS + progress) & 0xFF
        );
    }

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG1HOFS, 0);

    // Outside WIN0/WIN1 nothing is drawn. The two windows together always
    // cover the full 240x160 LCD during the transition.
    SetGpuReg(REG_OFFSET_WINOUT, 0);
}

// ---------------------------------------------------------------------------
// Scene lifecycle
// ---------------------------------------------------------------------------

static void PrimalScroll_BeginExit(void)
{
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sPrimalScene.state = PRIMAL_STATE_FADE_OUT;
}

static void PrimalScroll_ReturnToField(void)
{
    sPrimalSceneActive = FALSE;

    SetVBlankCallback(NULL);

    SetGpuReg(REG_OFFSET_WIN0H, 0);
    SetGpuReg(REG_OFFSET_WIN0V, 0);
    SetGpuReg(REG_OFFSET_WIN1H, 0);
    SetGpuReg(REG_OFFSET_WIN1V, 0);
    SetGpuReg(REG_OFFSET_WININ, 0);
    SetGpuReg(REG_OFFSET_WINOUT, 0);

    HideBg(PRIMAL_BG_A);
    HideBg(PRIMAL_BG_B);

    ResetBgsAndClearDma3BusyFlags(0);

    // Same return model used by the existing painting/book scenes:
    // rebuild the actual field and resume after script `waitstate`.
    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

static void VBlankCB_PrimalScroll(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_PrimalScroll(void)
{
    UpdatePaletteFade();

    switch (sPrimalScene.state)
    {
    case PRIMAL_STATE_WAIT_INITIAL_DMA:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
            sPrimalScene.state = PRIMAL_STATE_FADE_IN;
        }
        break;

    case PRIMAL_STATE_FADE_IN:
        if (!gPaletteFade.active)
        {
            sPrimalScene.timer = PRIMAL_START_HOLD_FRAMES;
            sPrimalScene.state = PRIMAL_STATE_START_HOLD;
        }
        break;

    case PRIMAL_STATE_START_HOLD:
        if (sPrimalScene.timer != 0)
        {
            sPrimalScene.timer--;
        }
        else
        {
            sPrimalScene.progress = 0;
            sPrimalScene.state = PRIMAL_STATE_SCROLL_1_TO_2;
        }
        break;

    case PRIMAL_STATE_SCROLL_1_TO_2:
        if (sPrimalScene.progress < PRIMAL_SCROLL_PIXELS)
            sPrimalScene.progress++;

        PrimalScroll_ApplyTransition(sPrimalScene.progress, TRUE);

        if (sPrimalScene.progress >= PRIMAL_SCROLL_PIXELS)
            sPrimalScene.state = PRIMAL_STATE_LOAD_PART_3;
        break;

    case PRIMAL_STATE_LOAD_PART_3:
        // BG0 is now completely clipped out, so replacing its VRAM is invisible.
        PrimalScroll_LoadPart(PRIMAL_BG_A, 2);
        sPrimalScene.state = PRIMAL_STATE_WAIT_PART_3_DMA;
        break;

    case PRIMAL_STATE_WAIT_PART_3_DMA:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sPrimalScene.progress = 0;
            PrimalScroll_ApplyTransition(0, FALSE);
            sPrimalScene.state = PRIMAL_STATE_SCROLL_2_TO_3;
        }
        break;

    case PRIMAL_STATE_SCROLL_2_TO_3:
        if (sPrimalScene.progress < PRIMAL_SCROLL_PIXELS)
            sPrimalScene.progress++;

        PrimalScroll_ApplyTransition(sPrimalScene.progress, FALSE);

        if (sPrimalScene.progress >= PRIMAL_SCROLL_PIXELS)
            sPrimalScene.state = PRIMAL_STATE_WAIT_FINAL_INPUT;
        break;

    case PRIMAL_STATE_WAIT_FINAL_INPUT:
        // Stop on the final image until the player is done looking.
        if (JOY_NEW(A_BUTTON) || JOY_NEW(B_BUTTON))
            PrimalScroll_BeginExit();
        break;

    case PRIMAL_STATE_FADE_OUT:
        if (!gPaletteFade.active)
            sPrimalScene.state = PRIMAL_STATE_RETURN_FIELD;
        break;

    case PRIMAL_STATE_RETURN_FIELD:
        PrimalScroll_ReturnToField();
        break;
    }
}

static void CB2_InitPrimalScroll(void)
{
    SetVBlankCallback(NULL);

    ResetPaletteFade();
    ResetBgsAndClearDma3BusyFlags(0);

    InitBgsFromTemplates(
        0,
        sPrimalBgTemplates,
        ARRAY_COUNT(sPrimalBgTemplates)
    );

    LoadPalette(
        sPrimalPalette,
        BG_PLTT_ID(0),
        PLTT_SIZE_4BPP
    );

    // Initial double buffer: part 1 visible, part 2 waiting below it.
    PrimalScroll_LoadPart(PRIMAL_BG_A, 0);
    PrimalScroll_LoadPart(PRIMAL_BG_B, 1);

    ShowBg(PRIMAL_BG_A);
    ShowBg(PRIMAL_BG_B);

    // Mode 0, exactly our two BGs + two hardware windows. No field OBJ/BGs leak.
    SetGpuReg(
        REG_OFFSET_DISPCNT,
        DISPCNT_BG0_ON
        | DISPCNT_BG1_ON
        | DISPCNT_WIN0_ON
        | DISPCNT_WIN1_ON
    );

    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_BLDY, 0);
    SetGpuReg(REG_OFFSET_MOSAIC, 0);

    sPrimalScene.progress = 0;
    sPrimalScene.timer = 0;

    PrimalScroll_ApplyTransition(0, TRUE);

    // Keep the first frame black until the initial tile copies are ready.
    BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);

    SetVBlankCallback(VBlankCB_PrimalScroll);
    SetMainCallback2(CB2_PrimalScroll);

    sPrimalScene.state = PRIMAL_STATE_WAIT_INITIAL_DMA;
}

// ---------------------------------------------------------------------------
// Script API
// ---------------------------------------------------------------------------

void HLW_StartPrimalScrollPainting(struct ScriptContext *ctx)
{
    (void)ctx;

    if (sPrimalSceneActive)
        return;

    sPrimalSceneActive = TRUE;
    gMain.state = 0;

    // Destructive screen setup begins on the next frame, outside the field
    // script interpreter, matching the safe pattern used by the book scenes.
    SetMainCallback2(CB2_InitPrimalScroll);
}
