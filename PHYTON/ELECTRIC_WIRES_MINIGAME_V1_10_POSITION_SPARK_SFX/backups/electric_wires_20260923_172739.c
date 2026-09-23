#include "global.h"
#include "bg.h"
#include "event_data.h"
#include "gpu_regs.h"
#include "main.h"
#include "menu_helpers.h"
#include "overworld.h"
#include "palette.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "electric_wires.h"
#include "constants/rgb.h"
#include "constants/songs.h"

// ============================================================
// ELECTRIC WIRES MINIGAME V1
//
// Flow:
//   D-Pad  -> focus BLUE / GREEN loose cable
//   A       -> lock/arm focused cable
//   A again -> connect it
//   B       -> fade back to overworld
//
// gSpecialVar_Result:
//   0 = cancelled / no connection
//   1 = BLUE connected
//   2 = GREEN connected
// ============================================================

#define WIRES_BG_OVERLAY        0
#define WIRES_BG_MACHINE        1
#define WIRES_MACHINE_MAPBASE  28
#define WIRES_OVERLAY_MAPBASE  31

#define MACHINE_MAP_W          30
#define MACHINE_MAP_H          20
#define CONNECT_MAP_W          8
#define CONNECT_MAP_H           16
#define CONNECT_MAP_X           11
#define CONNECT_MAP_Y           2

// Exact sprite placements recovered from the user's visual mockup.
#define CABLE_UP_X             122
#define CABLE_UP_Y              55
#define CABLE_LEFT_X           102
#define CABLE_LEFT_Y            73
#define CABLE_RIGHT_X          131
#define CABLE_RIGHT_Y           73

#define TAG_CABLE_UP_GFX      0xEE00
#define TAG_CABLE_LEFT_GFX    0xEE01
#define TAG_CABLE_RIGHT_GFX   0xEE02
#define TAG_CABLE_UP_PAL      0xEF00
#define TAG_CABLE_LEFT_PAL    0xEF01
#define TAG_CABLE_RIGHT_PAL   0xEF02

#define CONNECT_BLUE_TILE_BASE   1
#define CONNECT_GREEN_TILE_BASE 64
#define CONNECT_PALETTE_BANK     1

#define RESULT_NONE   0
#define RESULT_BLUE   1
#define RESULT_GREEN  2

enum
{
    WIRES_STATE_FADE_IN = 0,
    WIRES_STATE_PLAY,
    WIRES_STATE_EXIT,
};

enum
{
    WIRE_BLUE = 0,
    WIRE_GREEN,
};

struct ElectricWiresState
{
    u8 state;
    u8 focus;
    bool8 armed;
    bool8 connected;
    bool8 blinkOn;
    u8 blinkTimer;
    u8 cableUpSpriteId;
    u8 cableLeftSpriteId;
    u8 cableRightSpriteId;
};

static EWRAM_DATA struct ElectricWiresState sWires;

// ============================================================
// Graphics
// ============================================================

static const u32 sMachineGfx[] = INCBIN_U32("graphics/electric_wires/machine.4bpp");
static const u16 sMachinePal[] = INCBIN_U16("graphics/electric_wires/machine.gbapal");
static const u16 sMachineMap[] = INCBIN_U16("graphics/electric_wires/machine.bin");

static const u32 sConnectedBlueGfx[] = INCBIN_U32("graphics/electric_wires/connectedtoblue.4bpp");
static const u16 sConnectedBluePal[] = INCBIN_U16("graphics/electric_wires/connectedtoblue.gbapal");
static const u16 sConnectedBlueMap[] = INCBIN_U16("graphics/electric_wires/connectedtoblue.bin");

static const u32 sConnectedGreenGfx[] = INCBIN_U32("graphics/electric_wires/connectedtogreen.4bpp");
static const u16 sConnectedGreenMap[] = INCBIN_U16("graphics/electric_wires/connectedtogreen.bin");

static const u32 sCableUpGfx[] = INCBIN_U32("graphics/electric_wires/cableup.4bpp");
static const u16 sCableUpPal[] = INCBIN_U16("graphics/electric_wires/cableup.gbapal");
static const u32 sCableLeftGfx[] = INCBIN_U32("graphics/electric_wires/cabledownleft_sheet.4bpp");
static const u16 sCableLeftPal[] = INCBIN_U16("graphics/electric_wires/cabledownleft_sheet.gbapal");
static const u32 sCableRightGfx[] = INCBIN_U32("graphics/electric_wires/cabledownright_sheet.4bpp");
static const u16 sCableRightPal[] = INCBIN_U16("graphics/electric_wires/cabledownright_sheet.gbapal");

static const struct BgTemplate sWiresBgTemplates[] =
{
    {
        .bg = WIRES_BG_OVERLAY,
        .charBaseIndex = 0,
        .mapBaseIndex = WIRES_OVERLAY_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0,
    },
    {
        .bg = WIRES_BG_MACHINE,
        .charBaseIndex = 1,
        .mapBaseIndex = WIRES_MACHINE_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0,
    },
};

// ============================================================
// Sprites
// ============================================================

static const struct OamData sOam64x64 =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(64x64),
    .size = SPRITE_SIZE(64x64),
    .priority = 0,
};

static const union AnimCmd sAnimStatic[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

// 64x64 @ 4bpp = 64 OBJ tiles per frame.
static const union AnimCmd sAnimCableNormal[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

static const union AnimCmd sAnimCableSelected[] =
{
    ANIMCMD_FRAME(64, 1),
    ANIMCMD_END,
};

static const union AnimCmd *const sAnimsStatic[] =
{
    sAnimStatic,
};

static const union AnimCmd *const sAnimsSelectable[] =
{
    sAnimCableNormal,
    sAnimCableSelected,
};

static const struct SpriteTemplate sCableUpTemplate =
{
    .tileTag = TAG_CABLE_UP_GFX,
    .paletteTag = TAG_CABLE_UP_PAL,
    .oam = &sOam64x64,
    .anims = sAnimsStatic,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sCableLeftTemplate =
{
    .tileTag = TAG_CABLE_LEFT_GFX,
    .paletteTag = TAG_CABLE_LEFT_PAL,
    .oam = &sOam64x64,
    .anims = sAnimsSelectable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sCableRightTemplate =
{
    .tileTag = TAG_CABLE_RIGHT_GFX,
    .paletteTag = TAG_CABLE_RIGHT_PAL,
    .oam = &sOam64x64,
    .anims = sAnimsSelectable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

// ============================================================
// Forward declarations
// ============================================================

static void FadeToElectricWiresScreen(u8 taskId);
static void InitElectricWiresScreen(void);
static void ElectricWiresVBlankCallback(void);
static void ElectricWiresMainCallback(void);
static void Task_ElectricWires(u8 taskId);
static void StartExitElectricWires(void);
static void ExitElectricWires(void);
static void LoadMachineBackground(void);
static void ClearConnectedOverlay(void);
static void DrawConnectedOverlay(u8 wire);
static void LoadCableSprites(void);
static void CreateCableSprites(void);
static void ApplyCableVisuals(void);
static void HideCableSprites(void);

// ============================================================
// Entry point – use from an event script with:
//     special StartElectricWiresGame
// ============================================================

void StartElectricWiresGame(void)
{
    gSpecialVar_Result = RESULT_NONE;
    CreateTask(FadeToElectricWiresScreen, 0);
}

static void FadeToElectricWiresScreen(u8 taskId)
{
    switch (gTasks[taskId].data[0])
    {
    case 0:
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        gTasks[taskId].data[0]++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            SetMainCallback2(InitElectricWiresScreen);
            DestroyTask(taskId);
        }
        break;
    }
}

static void ElectricWiresVBlankCallback(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void ElectricWiresMainCallback(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void LoadMachineBackground(void)
{
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(WIRES_MACHINE_MAPBASE);
    u16 x;
    u16 y;

    LoadBgTiles(WIRES_BG_MACHINE, sMachineGfx, sizeof(sMachineGfx), 0);
    LoadPalette(sMachinePal, BG_PLTT_ID(0), sizeof(sMachinePal));

    // Source index 0 is magenta editor transparency. Make the real backdrop black.
    gPlttBufferUnfaded[BG_PLTT_ID(0)] = RGB_BLACK;
    gPlttBufferFaded[BG_PLTT_ID(0)] = RGB_BLACK;

    for (y = 0; y < 32; y++)
    {
        for (x = 0; x < 32; x++)
            dst[y * 32 + x] = 0;
    }

    for (y = 0; y < MACHINE_MAP_H; y++)
    {
        for (x = 0; x < MACHINE_MAP_W; x++)
            dst[y * 32 + x] = sMachineMap[y * MACHINE_MAP_W + x];
    }
}

static void ClearConnectedOverlay(void)
{
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(WIRES_OVERLAY_MAPBASE);
    u16 i;

    for (i = 0; i < 32 * 32; i++)
        dst[i] = 0;
}

static void DrawConnectedOverlay(u8 wire)
{
    const u16 *src;
    u16 tileBase;
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(WIRES_OVERLAY_MAPBASE);
    u16 x;
    u16 y;

    ClearConnectedOverlay();

    if (wire == WIRE_BLUE)
    {
        src = sConnectedBlueMap;
        tileBase = CONNECT_BLUE_TILE_BASE;
    }
    else
    {
        src = sConnectedGreenMap;
        tileBase = CONNECT_GREEN_TILE_BASE;
    }

    for (y = 0; y < CONNECT_MAP_H; y++)
    {
        for (x = 0; x < CONNECT_MAP_W; x++)
        {
            u16 entry = src[y * CONNECT_MAP_W + x];
            u16 tile = entry & 0x03FF;

            if (tile != 0)
            {
                dst[(CONNECT_MAP_Y + y) * 32 + CONNECT_MAP_X + x] =
                    (entry & 0x0C00)
                  | ((tile + tileBase) & 0x03FF)
                  | (CONNECT_PALETTE_BANK << 12);
            }
        }
    }
}

static void LoadCableSprites(void)
{
    struct SpriteSheet sheet;
    struct SpritePalette pal;

    sheet.data = sCableUpGfx;
    sheet.size = sizeof(sCableUpGfx);
    sheet.tag = TAG_CABLE_UP_GFX;
    LoadSpriteSheet(&sheet);

    sheet.data = sCableLeftGfx;
    sheet.size = sizeof(sCableLeftGfx);
    sheet.tag = TAG_CABLE_LEFT_GFX;
    LoadSpriteSheet(&sheet);

    sheet.data = sCableRightGfx;
    sheet.size = sizeof(sCableRightGfx);
    sheet.tag = TAG_CABLE_RIGHT_GFX;
    LoadSpriteSheet(&sheet);

    pal.data = sCableUpPal;
    pal.tag = TAG_CABLE_UP_PAL;
    LoadSpritePalette(&pal);

    pal.data = sCableLeftPal;
    pal.tag = TAG_CABLE_LEFT_PAL;
    LoadSpritePalette(&pal);

    pal.data = sCableRightPal;
    pal.tag = TAG_CABLE_RIGHT_PAL;
    LoadSpritePalette(&pal);
}

static void CreateCableSprites(void)
{
    sWires.cableUpSpriteId = CreateSprite(&sCableUpTemplate, CABLE_UP_X, CABLE_UP_Y, 0);
    sWires.cableLeftSpriteId = CreateSprite(&sCableLeftTemplate, CABLE_LEFT_X, CABLE_LEFT_Y, 0);
    sWires.cableRightSpriteId = CreateSprite(&sCableRightTemplate, CABLE_RIGHT_X, CABLE_RIGHT_Y, 0);
}

static void ApplyCableVisuals(void)
{
    bool8 showSelected = sWires.armed || sWires.blinkOn;

    if (sWires.connected)
        return;

    gSprites[sWires.cableUpSpriteId].invisible = FALSE;
    gSprites[sWires.cableLeftSpriteId].invisible = FALSE;
    gSprites[sWires.cableRightSpriteId].invisible = FALSE;

    StartSpriteAnim(&gSprites[sWires.cableLeftSpriteId],
                    (sWires.focus == WIRE_BLUE && showSelected) ? 1 : 0);
    StartSpriteAnim(&gSprites[sWires.cableRightSpriteId],
                    (sWires.focus == WIRE_GREEN && showSelected) ? 1 : 0);
}

static void HideCableSprites(void)
{
    // Connected state replaces ALL three loose cable sprites.
    gSprites[sWires.cableUpSpriteId].invisible = TRUE;
    gSprites[sWires.cableLeftSpriteId].invisible = TRUE;
    gSprites[sWires.cableRightSpriteId].invisible = TRUE;
}

static void InitElectricWiresScreen(void)
{
    SetVBlankCallback(NULL);
    ResetAllBgsCoordinates();
    ResetVramOamAndBgCntRegs();
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sWiresBgTemplates, ARRAY_COUNT(sWiresBgTemplates));

    SetGpuReg(REG_OFFSET_BG0CNT, BGCNT_PRIORITY(0)
                                | BGCNT_CHARBASE(0)
                                | BGCNT_SCREENBASE(WIRES_OVERLAY_MAPBASE)
                                | BGCNT_16COLOR
                                | BGCNT_TXT256x256);
    SetGpuReg(REG_OFFSET_BG1CNT, BGCNT_PRIORITY(1)
                                | BGCNT_CHARBASE(1)
                                | BGCNT_SCREENBASE(WIRES_MACHINE_MAPBASE)
                                | BGCNT_16COLOR
                                | BGCNT_TXT256x256);

    ResetPaletteFade();
    ResetSpriteData();
    FreeAllSpritePalettes();

    LoadMachineBackground();
    ClearConnectedOverlay();

    // Connected-state graphics share one palette; GREEN uses the same colors.
    LoadBgTiles(WIRES_BG_OVERLAY, sConnectedBlueGfx, sizeof(sConnectedBlueGfx), CONNECT_BLUE_TILE_BASE);
    LoadBgTiles(WIRES_BG_OVERLAY, sConnectedGreenGfx, sizeof(sConnectedGreenGfx), CONNECT_GREEN_TILE_BASE);
    LoadPalette(sConnectedBluePal, BG_PLTT_ID(CONNECT_PALETTE_BANK), sizeof(sConnectedBluePal));

    LoadCableSprites();

    sWires.state = WIRES_STATE_FADE_IN;
    sWires.focus = WIRE_BLUE;
    sWires.armed = FALSE;
    sWires.connected = FALSE;
    sWires.blinkOn = TRUE;
    sWires.blinkTimer = 0;

    CreateCableSprites();
    ApplyCableVisuals();

    SetGpuReg(REG_OFFSET_DISPCNT,
              DISPCNT_MODE_0
            | DISPCNT_OBJ_1D_MAP
            | DISPCNT_OBJ_ON
            | DISPCNT_BG0_ON
            | DISPCNT_BG1_ON);

    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BLDALPHA, 0);
    SetGpuReg(REG_OFFSET_BLDY, 0);

    ShowBg(WIRES_BG_MACHINE);
    ShowBg(WIRES_BG_OVERLAY);

    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    SetVBlankCallback(ElectricWiresVBlankCallback);
    SetMainCallback2(ElectricWiresMainCallback);
    CreateTask(Task_ElectricWires, 1);
}

static void StartExitElectricWires(void)
{
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sWires.state = WIRES_STATE_EXIT;
}

static void ExitElectricWires(void)
{
    SetVBlankCallback(NULL);
    Overworld_ResetMapMusic();
    FreeAllSpritePalettes();
    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

static void Task_ElectricWires(u8 taskId)
{
    switch (sWires.state)
    {
    case WIRES_STATE_FADE_IN:
        if (!gPaletteFade.active)
            sWires.state = WIRES_STATE_PLAY;
        break;

    case WIRES_STATE_PLAY:
        if (JOY_NEW(B_BUTTON))
        {
            StartExitElectricWires();
            break;
        }

        if (sWires.connected)
            break;

        if (JOY_NEW(DPAD_LEFT) || JOY_NEW(DPAD_UP))
        {
            sWires.focus = WIRE_BLUE;
            sWires.armed = FALSE;
            sWires.blinkOn = TRUE;
            sWires.blinkTimer = 0;
            PlaySE(SE_SELECT);
            ApplyCableVisuals();
        }
        else if (JOY_NEW(DPAD_RIGHT) || JOY_NEW(DPAD_DOWN))
        {
            sWires.focus = WIRE_GREEN;
            sWires.armed = FALSE;
            sWires.blinkOn = TRUE;
            sWires.blinkTimer = 0;
            PlaySE(SE_SELECT);
            ApplyCableVisuals();
        }

        if (JOY_NEW(A_BUTTON))
        {
            if (!sWires.armed)
            {
                sWires.armed = TRUE;
                sWires.blinkOn = TRUE;
                PlaySE(SE_SELECT);
                ApplyCableVisuals();
            }
            else
            {
                sWires.connected = TRUE;
                gSpecialVar_Result = (sWires.focus == WIRE_BLUE) ? RESULT_BLUE : RESULT_GREEN;
                HideCableSprites();
                DrawConnectedOverlay(sWires.focus);
                PlaySE(SE_SUPER_EFFECTIVE);
            }
        }

        if (!sWires.armed)
        {
            if (++sWires.blinkTimer >= 10)
            {
                sWires.blinkTimer = 0;
                sWires.blinkOn ^= 1;
                ApplyCableVisuals();
            }
        }
        break;

    case WIRES_STATE_EXIT:
        if (!gPaletteFade.active)
        {
            DestroyTask(taskId);
            ExitElectricWires();
        }
        break;
    }
}
