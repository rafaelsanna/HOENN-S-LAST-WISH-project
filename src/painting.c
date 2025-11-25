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


struct PaintingData
{
    const u8 *tiles;
    const u8 *tilemap;
    const u8 *palette;
};

// COMENTE ESTA ESTRUTURA COMPLETA:
/*
static const struct PaintingData sPaintingData[PAINTING_COUNT] = {
    [PAINTING_1] = {
        .tiles = sPainting_Oh_Oh_Sunset_Tiles,
        .tilemap = sPainting_Oh_Oh_Sunset_Tilemap,
        .palette = sPainting_Oh_Oh_Sunset_Palette
    },
    [PAINTING_2] = {
        .tiles = sPainting_Charmander_Chilling_In_The_Middle_Tiles,
        .tilemap = sPainting_Charmander_Chilling_In_The_Middle_Tilemap,
        .palette = sPaintingCrater_Charmander_Chilling_In_The_Middle_Palette
    },
    [PAINTING_3] = {
        .tiles = sPainting_Aqua_Attack_Tiles,
        .tilemap = sPainting_Aqua_Attack_Tilemap,
        .palette = sPaintingCrater_Aqua_Attack_Palette
    }
};
*/

// E substitua por uma vazia:
static const struct PaintingData sPaintingData[PAINTING_COUNT] = {};

/*
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
*/

// Substitua por uma função vazia
void ShowPainting(u8 paintingId, struct ScriptContext *ctx)
{
    // Função temporariamente desativada
    if (ctx != NULL)
    {
        ctx->scriptPtr++; // Avança o script
    }
}

#undef tState
#undef tPaintingId
