#include "global.h"
#include "gpu_regs.h"
#include "intro.h"
#include "main.h"
#include "m4a.h"
#include "night_mode.h"
#include "palette.h"
#include "sprite.h"
#include "task.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "test/test.h"

// Task_Scene0_Main's fade-to-night state, immediately before reloading VRAM.
#define SCENE0_FADE_TO_NIGHT 8
#define SCENE0_MOON_TAG 1603
#define TIMER3_HANDLER_INDEX 2 // gIntrTableTemplate in main.c

static const u16 sNightSkyPalette[16] = INCBIN_U16("graphics/intro/scene_0/bg03.gbapal");
static const u16 sCloudPalette[16] = INCBIN_U16("graphics/intro/scene_0/clouds.gbapal");
static const u16 sMoonPalette[16] = INCBIN_U16("graphics/intro/scene_0/moon.gbapal");
static EWRAM_DATA volatile u32 sPaletteSamples = 0;
static EWRAM_DATA volatile bool32 sSawNonblackBackdrop = FALSE;

static void SampleBackdrop(void)
{
    sPaletteSamples++;
    if (*(const vu16 *)PLTT != RGB_BLACK)
        sSawNonblackBackdrop = TRUE;
}

static void TickPreIntro(void)
{
    gMain.newKeys = 0;
    MainCB2_Intro();
    if (gMain.vblankCallback != NULL)
        gMain.vblankCallback();
    CopyBufferedValuesToGpuRegs();
}

static bool32 PrepareMoonTransition(void)
{
    SetVBlankCallback(NULL);
    REG_DISPCNT = 0;
    SetGpuReg(REG_OFFSET_DISPCNT, 0);
    NightMode_SetEnabled(FALSE);
    ResetPaletteFade();
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 0, RGB_BLACK);
    TransferPlttBuffer();
    CB2_Scene0Intro();
    u8 taskId = FindTaskIdByFunc(Task_Scene0_Load);
    if (taskId == TASK_NONE)
        return FALSE;
    // Run the real forest scenes and fade-out, stopping just before the
    // moon-scene loader. No synthetic asset or palette replaces the intro.
    for (u32 frame = 0; frame < 3000; frame++)
    {
        TickPreIntro();
        if (gTasks[taskId].data[0] == SCENE0_FADE_TO_NIGHT
            && gTasks[taskId].data[1] > 1 && !gPaletteFade.active)
            return TRUE;
    }
    return FALSE;
}

static void CleanUpPreIntro(MainCallback callback, IntrCallback vblank, bool32 nightMode, u16 dispcnt)
{
    SetVBlankCallback(NULL);
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    NightMode_SetEnabled(nightMode);
    m4aSongNumStop(MUS_TIME_GEAR);
    SetGpuReg(REG_OFFSET_DISPCNT, dispcnt);
    REG_DISPCNT = dispcnt;
    SetMainCallback2(callback);
    SetVBlankCallback(vblank);
}

TEST("Pre-intro: moon transition never uploads a pink backdrop, even between frames")
{
    bool32 serviceVblank;
    PARAMETRIZE { serviceVblank = FALSE; }
    PARAMETRIZE { serviceVblank = TRUE; }

    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    IntrFunc timer3Handler = gIntrTable[TIMER3_HANDLER_INDEX];
    bool32 nightMode = NightMode_IsEnabled();
    u16 ime = REG_IME, ie = REG_IE;
    u16 dispcnt = GetGpuReg(REG_OFFSET_DISPCNT);
    u16 timer3Counter = REG_TM3CNT_L, timer3Control = REG_TM3CNT_H;
    REG_IME = 0;
    bool32 ready = PrepareMoonTransition();
    if (!serviceVblank)
        SetVBlankCallback(NULL);
    sPaletteSamples = 0;
    sSawNonblackBackdrop = FALSE;

    if (ready)
    {
        // A frame-end check alone misses the original glitch: TransferPlttBuffer
        // uploaded magenta, then BeginNormalPaletteFade immediately overwrote
        // it with black. Sample hardware throughout the real loading task.
        gIntrTable[TIMER3_HANDLER_INDEX] = SampleBackdrop;
        REG_TM3CNT_H = 0;
        REG_TM3CNT_L = (u16)-1024;
        REG_IF = INTR_FLAG_TIMER3;
        REG_IE = ie | INTR_FLAG_TIMER3;
        REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_1CLK;
        REG_IME = 1;
        RunTasks();
        REG_IME = 0;
    }

    REG_TM3CNT_H = 0;
    REG_IF = INTR_FLAG_TIMER3;
    gIntrTable[TIMER3_HANDLER_INDEX] = timer3Handler;
    REG_TM3CNT_L = timer3Counter;
    REG_TM3CNT_H = timer3Control;
    REG_IE = ie;
    u32 samples = sPaletteSamples;
    bool32 sawNonblack = sSawNonblackBackdrop;
    bool32 blackFade = gPaletteFade.active && gPaletteFade.y == 16;
    bool32 transferEnabled = !gPaletteFade.bufferTransferDisabled;
    bool32 blackBuffers = TRUE;
    for (u32 color = 0; color < PLTT_BUFFER_SIZE; color++)
        // Bit 15 is palette metadata, not a displayed color on the GBA.
        blackBuffers &= (gPlttBufferFaded[color] & ~RGB_ALPHA) == RGB_BLACK;
    CleanUpPreIntro(callback, vblank, nightMode, dispcnt);
    REG_IME = ime;

    EXPECT(ready);
    EXPECT_GT(samples, 0);
    EXPECT_EQ(sawNonblack, FALSE);
    EXPECT(blackFade);
    EXPECT(blackBuffers);
    EXPECT(transferEnabled);
}

TEST("Pre-intro: moon scene fades in with its original sky clouds and sprite palettes")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    bool32 nightMode = NightMode_IsEnabled();
    u16 ime = REG_IME;
    u16 dispcnt = GetGpuReg(REG_OFFSET_DISPCNT);
    REG_IME = 0;
    bool32 ready = PrepareMoonTransition();
    bool32 finished = FALSE;
    bool32 correctPalettes = FALSE;
    bool32 correctLayers = FALSE;
    if (ready)
    {
        TickPreIntro();
        for (u32 frame = 0; frame < 200 && gPaletteFade.active; frame++)
            TickPreIntro();
        finished = !gPaletteFade.active && gPaletteFade.y == 0;
        u8 moonPalette = IndexOfSpritePaletteTag(SCENE0_MOON_TAG);
        if (moonPalette != 0xFF)
        {
            correctPalettes = TRUE;
            for (u32 color = 0; color < 16; color++)
            {
                correctPalettes &= gPlttBufferUnfaded[color] == sNightSkyPalette[color];
                correctPalettes &= gPlttBufferUnfaded[16 + color] == sCloudPalette[color];
                correctPalettes &= gPlttBufferUnfaded[OBJ_PLTT_ID(moonPalette) + color] == sMoonPalette[color];
                correctPalettes &= ((const vu16 *)PLTT)[color] == sNightSkyPalette[color];
                correctPalettes &= ((const vu16 *)PLTT)[16 + color] == sCloudPalette[color];
            }
        }
        correctLayers = (REG_DISPCNT & (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON))
                     == (DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON);
    }
    CleanUpPreIntro(callback, vblank, nightMode, dispcnt);
    REG_IME = ime;
    EXPECT(ready);
    EXPECT(finished);
    EXPECT(correctPalettes);
    EXPECT(correctLayers);
}
