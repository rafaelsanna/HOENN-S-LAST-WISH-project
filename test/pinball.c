#include "global.h"
#include "bg.h"
#include "dma3.h"
#include "event_data.h"
#include "gpu_regs.h"
#include "main.h"
#include "palette.h"
#include "pinball.h"
#include "pokemon.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "text.h"
#include "constants/rgb.h"
#include "constants/vars.h"
#include "constants/cries.h"
#include "test/test.h"

extern u8 gPokemonCryBGMDuckingCounter;

static const u8 sQuitTiles[] = INCBIN_U8("graphics/pinball/quit.4bpp");
static const u16 sQuitPal[] = INCBIN_U16("graphics/pinball/quit.gbapal");

static void PinballReturnCallback(void)
{
}

static void TickPinball(u16 keys)
{
    gMain.newKeys = keys;
    gMain.newAndRepeatedKeys = keys;
    gMain.heldKeys = keys;
    gMain.callback2();
    ProcessDma3Requests();
    if (gMain.vblankCallback != NULL)
        gMain.vblankCallback();
    gMain.newKeys = gMain.newAndRepeatedKeys = gMain.heldKeys = 0;
}

static void StartPinballScene(u8 gameType)
{
    SetVBlankCallback(NULL);
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetDefaultFontsPointer();
    EXPECT(Pinball_TestStartScene(gameType, PinballReturnCallback));
    for (u32 frame = 0; frame < 64 && !Pinball_TestSceneReady(); frame++)
        TickPinball(0);
    EXPECT(Pinball_TestSceneReady());
}

static void QuitPinballScene(void)
{
    TickPinball(B_BUTTON);
    EXPECT(gMain.callback2 != PinballReturnCallback);
    for (u32 frame = 0; frame < 160 && gMain.callback2 != PinballReturnCallback; frame++)
        TickPinball(0);
    EXPECT(gMain.callback2 == PinballReturnCallback);
    EXPECT_EQ((bool32)gPaletteFade.active, FALSE);
    EXPECT_EQ((u32)gPaletteFade.blendColor, RGB_BLACK);
    EXPECT_EQ((u32)gPaletteFade.y, 16);
    for (u32 bg = 0; bg < 3; bg++)
        EXPECT(GetBgTilemapBuffer(bg) == NULL);
}

TEST("Pinball: all four tables show the fixed quit artwork and L/R control separate flippers")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    u16 savedWinnings = VarGet(VAR_TEMP_4);
    u16 savedResult = gSpecialVar_Result;
    for (u32 gameType = 0; gameType < 4; gameType++)
    {
        StartPinballScene(gameType);
        u8 id = Pinball_TestGetQuitSprite();
        EXPECT_LT(id, MAX_SPRITES);
        struct Sprite *quit = &gSprites[id];
        EXPECT_EQ(quit->x, 188);
        EXPECT_EQ(quit->y, 157);
        EXPECT_EQ((u32)quit->oam.shape, SPRITE_SHAPE(64x64));
        EXPECT_EQ((u32)quit->oam.size, SPRITE_SIZE(64x64));
        const u8 *tiles = (const u8 *)OBJ_VRAM0 + quit->sheetTileStart * TILE_SIZE_4BPP;
        for (u32 row = 0; row < 8; row++)
        {
            for (u32 col = 0; col < 8; col++)
            {
                const u8 *tile = tiles + (row * 8 + col) * TILE_SIZE_4BPP;
                if (row < 6 && col < 6)
                    EXPECT_EQ(memcmp(tile, sQuitTiles + (row * 6 + col) * TILE_SIZE_4BPP, TILE_SIZE_4BPP), 0);
                else
                    for (u32 byte = 0; byte < TILE_SIZE_4BPP; byte++)
                        EXPECT_EQ(tile[byte], 0);
            }
        }
        EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(quit->oam.paletteNum)], sQuitPal, sizeof(sQuitPal)), 0);
        TickPinball(L_BUTTON);
        EXPECT_EQ(Pinball_TestGetFlipperState(FALSE), 0x333);
        EXPECT_EQ(Pinball_TestGetFlipperState(TRUE), 0);
        TickPinball(0);
        TickPinball(R_BUTTON);
        EXPECT_EQ(Pinball_TestGetFlipperState(FALSE), 0);
        EXPECT_EQ(Pinball_TestGetFlipperState(TRUE), 0x333);
        TickPinball(0);
        TickPinball(L_BUTTON | R_BUTTON);
        EXPECT_EQ(Pinball_TestGetFlipperState(FALSE), 0x333);
        EXPECT_EQ(Pinball_TestGetFlipperState(TRUE), 0x333);
        TickPinball(A_BUTTON);
        EXPECT_EQ(Pinball_TestGetFlipperState(FALSE), 0);
        EXPECT_EQ(Pinball_TestGetFlipperState(TRUE), 0);
        TickPinball(DPAD_LEFT);
        EXPECT_EQ(quit->x, 188);
        EXPECT_EQ(quit->y, 157);
        VarSet(VAR_TEMP_4, 42);
        QuitPinballScene();
        EXPECT_EQ(gSpecialVar_Result, FALSE);
        EXPECT_EQ(VarGet(VAR_TEMP_4), 42);
        // Re-enter the same table to exercise resource cleanup too.
        StartPinballScene(gameType);
        QuitPinballScene();
    }
    VarSet(VAR_TEMP_4, savedWinnings);
    gSpecialVar_Result = savedResult;
    ResetTasks();
    SetMainCallback2(callback);
    SetVBlankCallback(vblank);
}

TEST("Pinball: B quits through loss fades and disabled-flipper victory cinematics on every table")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    u16 savedResult = gSpecialVar_Result;
    for (u32 gameType = 0; gameType < 4; gameType++)
    {
        for (u32 context = 1; context <= 2; context++)
        {
            StartPinballScene(gameType);
            Pinball_TestSetQuitContext(context);
            QuitPinballScene();
            EXPECT_EQ(gSpecialVar_Result, context == 2);
        }
    }
    gSpecialVar_Result = savedResult;
    ResetTasks();
    SetMainCallback2(callback);
    SetVBlankCallback(vblank);
}

TEST("Pinball: B can quit every table before its initial fade-in completes")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    u16 savedResult = gSpecialVar_Result;
    for (u32 gameType = 0; gameType < 4; gameType++)
    {
        SetVBlankCallback(NULL);
        ResetTasks();
        ResetSpriteData();
        FreeAllSpritePalettes();
        SetDefaultFontsPointer();
        EXPECT(Pinball_TestStartScene(gameType, PinballReturnCallback));
        for (u32 frame = 0; frame < 5; frame++)
            TickPinball(0);
        EXPECT(!Pinball_TestSceneReady());
        EXPECT_EQ((bool32)gPaletteFade.active, TRUE);
        QuitPinballScene();
        EXPECT_EQ(gSpecialVar_Result, FALSE);
    }
    gSpecialVar_Result = savedResult;
    ResetTasks();
    SetMainCallback2(callback);
    SetVBlankCallback(vblank);
}

static u8 SetUpMeowth(void)
{
    SetVBlankCallback(NULL);
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    StopCryAndClearCrySongs();
    u8 id = Pinball_TestInitMeowth();
    EXPECT_LT(id, MAX_SPRITES);
    return id;
}

static void CleanUpMeowth(IntrCallback vblank)
{
    Pinball_TestFreeMeowth();
    StopCryAndClearCrySongs();
    ResetTasks();
    SetVBlankCallback(vblank);
}

TEST("Pinball: Meowth cries on each registered hit but not misses expired time or hit cooldown")
{
    IntrCallback vblank = gMain.vblankCallback;
    u8 savedDuckingCounter = gPokemonCryBGMDuckingCounter;
    SetUpMeowth();
    // Headless tests intentionally return CRY_NONE from GetCryIdBySpecies.
    // The BGM duck request still records each call through PlayCry_Normal.
    // Check that real Meowth data has a cry and that only valid hits request it.
    EXPECT_EQ((u32)gSpeciesInfo[SPECIES_MEOWTH].cryId, CRY_MEOWTH);
    gPokemonCryBGMDuckingCounter = 0;
    EXPECT_EQ(Pinball_TestHitMeowth(0, 0, 1), FALSE);
    EXPECT_EQ(gPokemonCryBGMDuckingCounter, 0);
    EXPECT_EQ(Pinball_TestHitMeowth(40, 40, 0), FALSE);
    EXPECT_EQ(gPokemonCryBGMDuckingCounter, 0);
    EXPECT(Pinball_TestHitMeowth(40, 40, 1));
    EXPECT_EQ(gPokemonCryBGMDuckingCounter, 2);
    gPokemonCryBGMDuckingCounter = 0;
    EXPECT(Pinball_TestHitMeowth(40, 40, 1));
    EXPECT_EQ(gPokemonCryBGMDuckingCounter, 0);
    for (u32 frame = 0; frame < 32; frame++)
        AnimateSprites();
    EXPECT(Pinball_TestHitMeowth(40, 40, 1));
    EXPECT_EQ(gPokemonCryBGMDuckingCounter, 2);
    gPokemonCryBGMDuckingCounter = 0;
    Pinball_TestFinishMeowth();
    EXPECT_EQ(Pinball_TestHitMeowth(40, 40, 1), FALSE);
    EXPECT_EQ(gPokemonCryBGMDuckingCounter, 0);
    CleanUpMeowth(vblank);
    gPokemonCryBGMDuckingCounter = savedDuckingCounter;
}

TEST("Pinball: Meowth plays penultimate then last frame once and fades only itself before staying hidden")
{
    IntrCallback vblank = gMain.vblankCallback;
    u16 savedControl = GetGpuReg(REG_OFFSET_BLDCNT);
    u16 savedAlpha = GetGpuReg(REG_OFFSET_BLDALPHA);
    u8 id = SetUpMeowth();
    struct Sprite *sprite = &gSprites[id];
    u16 control = BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_DARKEN;
    u16 alpha = BLDALPHA_BLEND(7, 9);
    SetGpuReg(REG_OFFSET_BLDCNT, control);
    SetGpuReg(REG_OFFSET_BLDALPHA, alpha);
    Pinball_TestFinishMeowth();

    bool32 sawPenultimate = FALSE;
    bool32 sawLast = FALSE;
    bool32 sawFade = FALSE;
    u32 previousOpacity = 16;
    for (u32 frame = 0; frame < 120 && !sprite->invisible; frame++)
    {
        AnimateSprites();
        u32 tile = sprite->oam.tileNum - sprite->sheetTileStart;
        if (tile == 48)
        {
            EXPECT_EQ(sawLast, FALSE);
            sawPenultimate = TRUE;
        }
        else
        {
            EXPECT_EQ(tile, 64);
            EXPECT(sawPenultimate);
            sawLast = TRUE;
        }
        if (sprite->oam.objMode == ST_OAM_OBJ_BLEND)
        {
            EXPECT(sawLast);
            EXPECT(sprite->animEnded);
            EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDCNT) & BLDCNT_TGT1_ALL, 0);
            EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDCNT), BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG_ALL | BLDCNT_TGT2_BD);
            u32 opacity = GetGpuReg(REG_OFFSET_BLDALPHA) & 0x1F;
            u32 background = (GetGpuReg(REG_OFFSET_BLDALPHA) >> 8) & 0x1F;
            EXPECT(opacity <= previousOpacity);
            EXPECT_EQ(opacity + background, 16);
            previousOpacity = opacity;
            sawFade = TRUE;
        }
    }
    EXPECT(sawPenultimate);
    EXPECT(sawLast);
    EXPECT(sawFade);
    EXPECT(sprite->invisible);
    EXPECT(sprite->animEnded);
    EXPECT_EQ((u32)sprite->oam.objMode, ST_OAM_OBJ_NORMAL);
    EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDCNT), control);
    EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDALPHA), alpha);
    for (u32 frame = 0; frame < 32; frame++)
        AnimateSprites();
    EXPECT(sprite->invisible);
    EXPECT_EQ(sprite->oam.tileNum - sprite->sheetTileStart, 64);
    EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDCNT), control);
    EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDALPHA), alpha);
    CleanUpMeowth(vblank);
    SetGpuReg(REG_OFFSET_BLDCNT, savedControl);
    SetGpuReg(REG_OFFSET_BLDALPHA, savedAlpha);
}

TEST("Pinball: ending early during Meowth fade restores blending and a new game starts visible")
{
    IntrCallback vblank = gMain.vblankCallback;
    u16 savedControl = GetGpuReg(REG_OFFSET_BLDCNT);
    u16 savedAlpha = GetGpuReg(REG_OFFSET_BLDALPHA);
    u8 id = SetUpMeowth();
    Pinball_TestFinishMeowth();
    for (u32 frame = 0; frame < 90 && gSprites[id].oam.objMode != ST_OAM_OBJ_BLEND; frame++)
        AnimateSprites();
    EXPECT_EQ((u32)gSprites[id].oam.objMode, ST_OAM_OBJ_BLEND);
    EXPECT_EQ((bool32)gSprites[id].invisible, FALSE);
    Pinball_TestFreeMeowth();
    EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDCNT), savedControl);
    EXPECT_EQ(GetGpuReg(REG_OFFSET_BLDALPHA), savedAlpha);
    id = Pinball_TestInitMeowth();
    EXPECT_LT(id, MAX_SPRITES);
    EXPECT_EQ((u32)gSprites[id].oam.objMode, ST_OAM_OBJ_NORMAL);
    EXPECT_EQ((bool32)gSprites[id].invisible, FALSE);
    CleanUpMeowth(vblank);
}
