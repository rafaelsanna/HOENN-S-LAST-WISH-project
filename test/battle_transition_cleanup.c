#include "global.h"
#include "battle_transition.h"
#include "field_weather.h"
#include "gpu_regs.h"
#include "main.h"
#include "malloc.h"
#include "night_mode.h"
#include "palette.h"
#include "sprite.h"
#include "task.h"
#include "constants/rgb.h"
#include "test/test.h"

// Service the common intro without depending on an overworld callback.
static void VBlankCB_TestField(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void HBlankCB_TestField(void)
{
}

static u32 CountAllocatedBlocks(void)
{
    const struct MemBlock *head = HeapHead();
    const struct MemBlock *block = head;
    u32 count = 0;
    do
    {
        count += block->allocated;
        block = block->next;
    } while (block != head);
    return count;
}

static void CheckTransitionCleanup(u8 transitionId, bool32 usesCallbacks, bool32 usesDma)
{
    IntrCallback savedVBlank = gMain.vblankCallback;
    IntrCallback savedHBlank = gMain.hblankCallback;
    u16 savedIme = REG_IME;
    u16 savedIe = REG_IE;
    u16 savedDispstat = GetGpuReg(REG_OFFSET_DISPSTAT);
    u16 savedDispcnt = GetGpuReg(REG_OFFSET_DISPCNT);
    u16 savedHardwareDispcnt = REG_DISPCNT;
    u16 savedBg0cnt = GetGpuReg(REG_OFFSET_BG0CNT);
    bool32 savedOamLoadDisabled = gMain.oamLoadDisabled;
    bool32 savedNightMode = NightMode_IsEnabled();
    u8 savedWeatherPalState = gWeatherPtr->palProcessingState;
    bool32 savedNoShadows = gWeatherPtr->noShadows;
    bool32 done = FALSE;
    bool32 unfinishedUntouched = TRUE;
    bool32 sawEffectVBlank = FALSE;
    bool32 sawEffectHBlank = FALSE;
    bool32 sawDma = FALSE;
    IntrCallback lastEffectVBlank = NULL;
    u32 allocationsBefore = CountAllocatedBlocks();

    // All frames are explicitly stepped below. Keep real IRQs from racing the
    // foreground/completion boundary; restore them before any EXPECT can exit.
    REG_IME = 0;
    SetVBlankCallback(VBlankCB_TestField);
    SetHBlankCallback(HBlankCB_TestField);
    // SetGpuReg queues writes during visible scanlines if forced blank is not
    // already active. There is no real VBlank dispatcher in this simulation.
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_FORCED_BLANK);
    SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_SCREENBASE(28));
    gMain.oamLoadDisabled = FALSE;
    NightMode_SetEnabled(FALSE);
    DmaStop(0);
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    // Also reset the private transfer-pending state through its public API.
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 0, RGB_BLACK);
    TransferPlttBuffer();
    for (u32 i = 0; i < PLTT_BUFFER_SIZE; i++)
        gPlttBufferUnfaded[i] = gPlttBufferFaded[i] = RGB_WHITE;

    BattleTransition_Start(transitionId);
    for (u32 frame = 0; frame < 512; frame++)
    {
        // Poll once before the first frame, and then at the same foreground
        // boundary where battle setup polls in subsequent frames.
        IntrCallback beforeVBlank = gMain.vblankCallback;
        IntrCallback beforeHBlank = gMain.hblankCallback;
        u16 beforeDma = REG_DMA0CNT_H;
        lastEffectVBlank = beforeVBlank;
        done = IsBattleTransitionDone();
        if (done)
            break;
        unfinishedUntouched &= gMain.vblankCallback == beforeVBlank;
        unfinishedUntouched &= gMain.hblankCallback == beforeHBlank;
        unfinishedUntouched &= REG_DMA0CNT_H == beforeDma;

        RunTasks();
        AnimateSprites();
        BuildOamBuffer();
        UpdatePaletteFade();
        sawEffectVBlank |= gMain.vblankCallback != VBlankCB_TestField;
        sawEffectHBlank |= gMain.hblankCallback != NULL
                       && gMain.hblankCallback != HBlankCB_TestField;
        if (gMain.vblankCallback != NULL)
            gMain.vblankCallback();
        sawDma |= (REG_DMA0CNT_H & DMA_ENABLE) != 0;
    }

    bool32 callbackReplaced = gMain.vblankCallback != NULL
                          && gMain.vblankCallback != lastEffectVBlank;
    bool32 hblankDetached = gMain.hblankCallback == NULL;
    bool32 dmaStopped = (REG_DMA0CNT_H & DMA_ENABLE) == 0;
    bool32 stateFreed = CountAllocatedBlocks() == allocationsBefore;
    bool32 blackPalette = TRUE;
    for (u32 i = 0; i < PLTT_BUFFER_SIZE; i++)
        blackPalette &= gPlttBufferFaded[i] == RGB_BLACK;

    bool32 scratchAllocated = FALSE;
    bool32 extraDmaStopped = TRUE;
    bool32 effectRegistersUnchanged = TRUE;
    bool32 spriteCopiesUploaded = TRUE;
    bool32 oamUploaded = TRUE;
    bool32 blackPaletteUploaded = TRUE;
    bool32 forcedBlankActive = (REG_DISPCNT & DISPCNT_FORCED_BLANK) != 0;
    if (done && callbackReplaced && hblankDetached && dmaStopped)
    {
        // Reuse freed heap space and poison hardware state. The surviving
        // callback must upload display buffers without reading transition
        // state, changing effect registers, or restarting scanline DMA.
        void *reused = Alloc(256);
        scratchAllocated = reused != NULL;
        if (reused != NULL)
            memset(reused, 0xA5, 256);
        REG_WININ = WININ_WIN0_ALL;
        REG_WINOUT = WINOUT_WIN01_ALL;
        REG_WIN0H = WIN_RANGE(17, 123);
        REG_WIN0V = WIN_RANGE(19, 117);
        REG_BLDCNT = 0;
        REG_BLDALPHA = BLDALPHA_BLEND(3, 7);
        REG_BLDY = 5;
        u16 windowIn = REG_WININ, windowOut = REG_WINOUT;
        // Window bounds and BLDY are write-only on the GBA: reading those
        // registers observes open bus, not the values just written above.
        u16 blendCnt = REG_BLDCNT, blendAlpha = REG_BLDALPHA;
        u16 ALIGNED(4) copySource = 0x5A5A;
        for (u32 frame = 0; frame < 3; frame++)
        {
            DmaFill16(3, RGB_WHITE, (void *)PLTT, PLTT_SIZE);
            *(vu16 *)OBJ_VRAM0 = 0;
            RequestSpriteCopy((const u8 *)&copySource, (u8 *)OBJ_VRAM0, sizeof(copySource));
            BuildOamBuffer();
            gMain.vblankCallback();
            extraDmaStopped &= (REG_DMA0CNT_H & DMA_ENABLE) == 0;
            effectRegistersUnchanged &= REG_WININ == windowIn && REG_WINOUT == windowOut;
            effectRegistersUnchanged &= REG_BLDCNT == blendCnt;
            effectRegistersUnchanged &= REG_BLDALPHA == blendAlpha;
            spriteCopiesUploaded &= *(vu16 *)OBJ_VRAM0 == copySource;
            for (u32 i = 0; i < sizeof(gMain.oamBuffer) / (sizeof(u16)); i++)
                oamUploaded &= ((const vu16 *)OAM)[i] == ((const u16 *)gMain.oamBuffer)[i];
            for (u32 i = 0; i < PLTT_BUFFER_SIZE; i++)
                blackPaletteUploaded &= ((const vu16 *)PLTT)[i] == RGB_BLACK;
        }
        Free(reused);
    }

    DmaStop(0);
    SetVBlankCallback(NULL);
    SetHBlankCallback(NULL);
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    NightMode_SetEnabled(savedNightMode);
    gWeatherPtr->palProcessingState = savedWeatherPalState;
    gWeatherPtr->noShadows = savedNoShadows;
    gMain.oamLoadDisabled = savedOamLoadDisabled;
    DisableInterrupts(INTR_FLAG_HBLANK | INTR_FLAG_VBLANK);
    EnableInterrupts(savedIe & (INTR_FLAG_HBLANK | INTR_FLAG_VBLANK));
    SetGpuReg(REG_OFFSET_DISPSTAT, savedDispstat);
    SetGpuReg(REG_OFFSET_BG0CNT, savedBg0cnt);
    SetGpuReg(REG_OFFSET_DISPCNT, savedDispcnt);
    REG_DISPCNT = savedHardwareDispcnt;
    SetVBlankCallback(savedVBlank);
    SetHBlankCallback(savedHBlank);
    REG_IME = savedIme;

    if (!scratchAllocated || !extraDmaStopped || !effectRegistersUnchanged
     || !spriteCopiesUploaded || !oamUploaded || !blackPaletteUploaded || !forcedBlankActive)
        Test_MgbaPrintf("transition=%d scratch=%d dma=%d registers=%d spriteCopy=%d oam=%d palette=%d forcedBlank=%d",
            transitionId, scratchAllocated, extraDmaStopped, effectRegistersUnchanged,
            spriteCopiesUploaded, oamUploaded, blackPaletteUploaded, forcedBlankActive);

    EXPECT(done);
    EXPECT(unfinishedUntouched);
    if (usesCallbacks)
    {
        EXPECT(sawEffectVBlank);
        EXPECT(sawEffectHBlank);
    }
    if (usesDma)
        EXPECT(sawDma);
    EXPECT(callbackReplaced);
    EXPECT(hblankDetached);
    EXPECT(dmaStopped);
    EXPECT(stateFreed);
    EXPECT(blackPalette);
    EXPECT(forcedBlankActive);
    EXPECT(scratchAllocated);
    EXPECT(extraDmaStopped);
    EXPECT(effectRegistersUnchanged);
    EXPECT(spriteCopiesUploaded);
    EXPECT(oamUploaded);
    EXPECT(blackPaletteUploaded);
}

TEST("Battle transition cleanup: completed effects preserve safe display uploads without stale callbacks or DMA")
{
    u8 transitionId;
    bool32 usesCallbacks, usesDma;
    PARAMETRIZE { transitionId = B_TRANSITION_SLICE; usesCallbacks = TRUE; usesDma = TRUE; }
    PARAMETRIZE { transitionId = B_TRANSITION_WHITE_BARS_FADE; usesCallbacks = TRUE; usesDma = TRUE; }
    PARAMETRIZE { transitionId = B_TRANSITION_GRID_SQUARES; usesCallbacks = FALSE; usesDma = FALSE; }
    PARAMETRIZE { transitionId = B_TRANSITION_FRONTIER_LOGO_WAVE; usesCallbacks = TRUE; usesDma = FALSE; }
    CheckTransitionCleanup(transitionId, usesCallbacks, usesDma);
}
