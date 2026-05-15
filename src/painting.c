#include "global.h"
#include "paintings.h"
#include "palette.h"
#include "gpu_regs.h"
#include "bg.h"
#include "window.h"
#include "decompress.h"
#include "task.h"
#include "main.h"
#include "overworld.h"
#include "script.h"
#include "malloc.h"
#include "graphics.h"
#include "constants/rgb.h"
#include "menu.h"

static const u32 gPainting1Tiles[] = INCBIN_U32("graphics/paintings/painting1.4bpp.lz");
static const u16 gPainting1Pal[] = INCBIN_U16("graphics/paintings/painting1.gbapal");
static const u8 gPainting1Tilemap[] = INCBIN_U8("graphics/paintings/painting1.bin");

static const u32 gPainting2Tiles[] = INCBIN_U32("graphics/paintings/painting2.4bpp.lz");
static const u16 gPainting2Pal[] = INCBIN_U16("graphics/paintings/painting2.gbapal");
static const u8 gPainting2Tilemap[] = INCBIN_U8("graphics/paintings/painting2.bin");

static const u32 gPainting3Tiles[] = INCBIN_U32("graphics/paintings/painting3.4bpp.lz");
static const u16 gPainting3Pal[] = INCBIN_U16("graphics/paintings/painting3.gbapal");
static const u8 gPainting3Tilemap[] = INCBIN_U8("graphics/paintings/painting3.bin");

struct PaintingData
{
    const void *tiles;
    const u8 *tilemap;
    const u16 *palette;
    bool8 is8bpp;
    bool8 isSlideshow;
    u8 nextPaintingId;
};

static const struct PaintingData sPaintingData[PAINTING_COUNT] = {
    [PAINTING_1] = {
        .tiles = gPainting1Tiles,
        .tilemap = gPainting1Tilemap,
        .palette = gPainting1Pal,
        .is8bpp = FALSE,
        .isSlideshow = FALSE,
        .nextPaintingId = 0
    },
    [PAINTING_2] = {
        .tiles = gPainting2Tiles,
        .tilemap = gPainting2Tilemap,
        .palette = gPainting2Pal,
        .is8bpp = FALSE,
        .isSlideshow = FALSE,
        .nextPaintingId = 0
    },
    [PAINTING_3] = {
        .tiles = gPainting3Tiles,
        .tilemap = gPainting3Tilemap,
        .palette = gPainting3Pal,
        .is8bpp = FALSE,
        .isSlideshow = FALSE,
        .nextPaintingId = 0
    }
};

static const struct BgTemplate sPaintingBgTemplate = {
    .bg = 0,
    .charBaseIndex = 0,
    .mapBaseIndex = 31,
    .screenSize = 0,
    .paletteMode = 0,
    .priority = 0,
    .baseTile = 0
};

#define tState data[0]
#define tPaintingId data[1]

static void Task_ShowPainting(u8 taskId);
static void VBlankCB_Painting(void);
static void CB2_PaintingMain(void);

static EWRAM_DATA u8 *sBg0TilemapBuffer = NULL;
static EWRAM_DATA bool8 sAllocedBg0TilemapBuffer = FALSE;

void ShowPainting(u8 paintingId, struct ScriptContext *ctx)
{
    u8 taskId;
    bool8 is8bpp;

    (void)ctx;

    if (paintingId >= PAINTING_COUNT)
        return;

    is8bpp = sPaintingData[paintingId].is8bpp;

    SetVBlankCallback(NULL);
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, &sPaintingBgTemplate, 1);

    if (is8bpp)
        SetBgAttribute(0, BG_ATTR_PALETTEMODE, 1);

    if (GetBgTilemapBuffer(0) == NULL)
    {
        sBg0TilemapBuffer = Alloc(BG_SCREEN_SIZE);
        SetBgTilemapBuffer(0, sBg0TilemapBuffer);
        sAllocedBg0TilemapBuffer = TRUE;
    }
    else
    {
        sAllocedBg0TilemapBuffer = FALSE;
    }

    ResetTempTileDataBuffers();
    LoadPalette(sPaintingData[paintingId].palette, BG_PLTT_ID(0), is8bpp ? PLTT_SIZE_8BPP : 16 * PLTT_SIZE_4BPP);
    DecompressAndCopyTileDataToVram(0, sPaintingData[paintingId].tiles, 0, 0, 0);
    CopyToBgTilemapBuffer(0, sPaintingData[paintingId].tilemap, BG_SCREEN_SIZE, 0);
    CopyBgTilemapBufferToVram(0);
    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    ShowBg(0);

    taskId = CreateTask(Task_ShowPainting, 0);
    gTasks[taskId].tPaintingId = paintingId;
    gTasks[taskId].tState = 0;

    SetVBlankCallback(VBlankCB_Painting);
    SetMainCallback2(CB2_PaintingMain);
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
}

static void Task_ShowPainting(u8 taskId)
{
    switch (gTasks[taskId].tState)
    {
    case 0:
        if (!FreeTempTileDataBuffersIfPossible() && !IsDma3ManagerBusyWithBgCopy())
            gTasks[taskId].tState++;
        break;

    case 1:
        if (!gPaletteFade.active)
            gTasks[taskId].tState++;
        break;

    case 2:
        if (JOY_NEW(B_BUTTON) || (JOY_NEW(A_BUTTON) && !sPaintingData[gTasks[taskId].tPaintingId].isSlideshow))
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            gTasks[taskId].tState++;
        }
        else if (JOY_NEW(A_BUTTON) && sPaintingData[gTasks[taskId].tPaintingId].isSlideshow)
        {
            gTasks[taskId].tPaintingId = sPaintingData[gTasks[taskId].tPaintingId].nextPaintingId;
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            gTasks[taskId].tState = 4;
        }
        break;

    case 3:
        if (!gPaletteFade.active)
        {
            FillBgTilemapBufferRect_Palette0(0, 0, 0, 0, 32, 32);
            CopyBgTilemapBufferToVram(0);

            if (sAllocedBg0TilemapBuffer && sBg0TilemapBuffer != NULL)
            {
                Free(sBg0TilemapBuffer);
                sBg0TilemapBuffer = NULL;
            }

            DestroyTask(taskId);
            SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        }
        break;

    case 4:
        if (!gPaletteFade.active)
        {
            u8 nextId = gTasks[taskId].tPaintingId;
            bool8 is8bpp = sPaintingData[nextId].is8bpp;

            SetVBlankCallback(NULL);
            FillPalette(RGB_BLACK, 0, PLTT_SIZE);
            SetBgAttribute(0, BG_ATTR_PALETTEMODE, is8bpp ? 1 : 0);
            ResetTempTileDataBuffers();
            LoadPalette(sPaintingData[nextId].palette, BG_PLTT_ID(0), is8bpp ? PLTT_SIZE_8BPP : 16 * PLTT_SIZE_4BPP);
            DecompressAndCopyTileDataToVram(0, sPaintingData[nextId].tiles, 0, 0, 0);
            CopyToBgTilemapBuffer(0, sPaintingData[nextId].tilemap, BG_SCREEN_SIZE, 0);
            CopyBgTilemapBufferToVram(0);
            gTasks[taskId].tState = 5;
        }
        break;

    case 5:
        if (!FreeTempTileDataBuffersIfPossible() && !IsDma3ManagerBusyWithBgCopy())
        {
            SetVBlankCallback(VBlankCB_Painting);
            ShowBg(0);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
            gTasks[taskId].tState = 1;
        }
        break;
    }
}

static void CB2_PaintingMain(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void VBlankCB_Painting(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

#undef tState
#undef tPaintingId
