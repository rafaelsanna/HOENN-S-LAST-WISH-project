#include "global.h"
#include "paintings.h"
#include "palette.h"
#include "gpu_regs.h"
#include "bg.h"
#include "window.h"
#include "decompress.h"
#include "task.h"
#include "main.h"
#include "script.h"
#include "malloc.h"
#include "graphics.h"
#include "constants/rgb.h"
#include "menu.h"

static const u8 sPainting1_Palette[] = INCBIN_U8("graphics/paintings/painting1.gbapal");
static const u8 sPainting1_Tiles[] = INCBIN_U8("graphics/paintings/painting1.4bpp.lz");
static const u8 sPainting1_Tilemap[] = INCBIN_U8("graphics/paintings/painting1_Tilemap.bin.lz");

static const u8 sPainting2_Palette[] = INCBIN_U8("graphics/paintings/painting2.gbapal");
static const u8 sPainting2_Tiles[] = INCBIN_U8("graphics/paintings/painting2.4bpp.lz");
static const u8 sPainting2_Tilemap[] = INCBIN_U8("graphics/paintings/painting2_Tilemap.bin.lz");

static const u8 sPainting3_Palette[] = INCBIN_U8("graphics/paintings/painting3.gbapal");
static const u8 sPainting3_Tiles[] = INCBIN_U8("graphics/paintings/painting3.4bpp.lz");
static const u8 sPainting3_Tilemap[] = INCBIN_U8("graphics/paintings/painting3_Tilemap.bin.lz");

struct PaintingData
{
    const u8 *tiles;
    const u8 *tilemap;
    const u8 *palette;
};

static const struct PaintingData sPaintingData[PAINTING_COUNT] = {
    [PAINTING_1] = {
        .tiles = sPainting1_Tiles,
        .tilemap = sPainting1_Tilemap,
        .palette = sPainting1_Palette
    },
    [PAINTING_2] = {
        .tiles = sPainting2_Tiles,
        .tilemap = sPainting2_Tilemap,
        .palette = sPainting2_Palette
    },
    [PAINTING_3] = {
        .tiles = sPainting3_Tiles,
        .tilemap = sPainting3_Tilemap,
        .palette = sPainting3_Palette
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
static EWRAM_DATA MainCallback sPreviousCallback = NULL;
static EWRAM_DATA bool8 sAllocedBg0TilemapBuffer = FALSE;
static EWRAM_DATA struct ScriptContext *sScriptContext = NULL;

void ShowPainting(u8 paintingId, struct ScriptContext *ctx)
{
    u8 taskId;
    
    if (paintingId >= PAINTING_COUNT)
        return;

    sScriptContext = ctx;

    sPreviousCallback = gMain.savedCallback;
    SetVBlankCallback(NULL);
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, &sPaintingBgTemplate, 1);
    
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
    LoadPalette(sPaintingData[paintingId].palette, BG_PLTT_ID(0), 16 * PLTT_SIZE_4BPP);
    DecompressAndCopyTileDataToVram(0, sPaintingData[paintingId].tiles, 0, 0, 0);
    CopyToBgTilemapBuffer(0, sPaintingData[paintingId].tilemap, 0, 0);
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
        {
            gTasks[taskId].tState++;
        }
        break;
        
    case 1:
        if (!gPaletteFade.active)
            gTasks[taskId].tState++;
        break;
        
    case 2:
        if (JOY_NEW(A_BUTTON | B_BUTTON))
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            gTasks[taskId].tState++;
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
            
            if (sScriptContext != NULL)
            {
                sScriptContext->scriptPtr++;
                sScriptContext = NULL;
            }
            
            DestroyTask(taskId);
            SetMainCallback2(sPreviousCallback);
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
