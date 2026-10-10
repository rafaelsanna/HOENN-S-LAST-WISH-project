#include "global.h"
#include "graphics.h"
#include "main.h"
#include "palette.h"
#include "slot_machine.h"
#include "sprite.h"
#include "test/test.h"

static const u16 sSymbol3Palette[16] = INCBIN_U16("graphics/slot_machine/reel_symbols/3.gbapal");
static const u16 sSymbol4Palette[16] = INCBIN_U16("graphics/slot_machine/reel_symbols/4.gbapal");
static const u16 sSymbol5Palette[16] = INCBIN_U16("graphics/slot_machine/reel_symbols/5.gbapal");

static const u16 *const sExpectedSymbolPalettes[] =
{
    gSlotMachineReelSymbols_Pal,
    gSlotMachineReelSymbols_Pal,
    sSymbol3Palette,
    sSymbol4Palette,
    sSymbol5Palette,
    gSlotMachineReelSymbols_Pal,
    gSlotMachineReelSymbols_Pal,
};

static const u8 *const sExpectedSymbolTiles[] =
{
    gSlotMachineReelSymbol1Tiles,
    gSlotMachineReelSymbol2Tiles,
    gSlotMachineReelSymbol3Tiles,
    gSlotMachineReelSymbol4Tiles,
    gSlotMachineReelSymbol5Tiles,
    gSlotMachineReelSymbol6Tiles,
    gSlotMachineReelSymbol7Tiles,
};

static void ExpectReelSymbol(const struct Sprite *sprite, u32 symbol)
{
    EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(sprite->oam.paletteNum)],
                     sExpectedSymbolPalettes[symbol], PLTT_SIZE_4BPP), 0);
    EXPECT_EQ(memcmp((const u8 *)OBJ_VRAM0 + sprite->sheetTileStart * TILE_SIZE_4BPP,
                     sExpectedSymbolTiles[symbol], 32 * 32 / 2), 0);
    EXPECT_EQ((u32)sprite->oam.tileNum, sprite->sheetTileStart);
}

TEST("Slot machine: symbols 3, 4 and 5 use separate complete PNG palettes")
{
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    ResetSpriteData();
    FreeAllSpritePalettes();
    SlotMachine_TestLoadReelAssets();
    u8 paletteSlots[ARRAY_COUNT(sExpectedSymbolPalettes)];
    for (u32 symbol = 0; symbol < ARRAY_COUNT(sExpectedSymbolPalettes); symbol++)
    {
        u8 id = SlotMachine_TestCreateReelSymbol(symbol);
        EXPECT_LT(id, MAX_SPRITES);
        ExpectReelSymbol(&gSprites[id], symbol);
        paletteSlots[symbol] = gSprites[id].oam.paletteNum;
    }
    EXPECT_EQ(paletteSlots[0], 0);
    EXPECT_EQ(paletteSlots[0], paletteSlots[1]);
    EXPECT_EQ(paletteSlots[0], paletteSlots[5]);
    EXPECT_EQ(paletteSlots[0], paletteSlots[6]);
    for (u32 symbol = 2; symbol <= 4; symbol++)
    {
        EXPECT_LT(paletteSlots[symbol], 16);
        EXPECT(paletteSlots[symbol] != paletteSlots[0]);
        for (u32 other = 2; other < symbol; other++)
            EXPECT(paletteSlots[symbol] != paletteSlots[other]);
    }
    EXPECT_EQ(sizeof(gSlotMachineReelSymbol3_Pal), PLTT_SIZE_4BPP);
    EXPECT_EQ(sizeof(gSlotMachineReelSymbol4_Pal), PLTT_SIZE_4BPP);
    EXPECT_EQ(sizeof(gSlotMachineReelSymbol5_Pal), PLTT_SIZE_4BPP);
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetVBlankCallback(vblank);
}

TEST("Slot machine: each of the 15 spinning sprites changes tiles and palette together")
{
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    ResetSpriteData();
    FreeAllSpritePalettes();
    SlotMachine_TestLoadReelAssets();
    u8 ids[15];
    for (u32 sprite = 0; sprite < ARRAY_COUNT(ids); sprite++)
    {
        ids[sprite] = SlotMachine_TestCreateReelSymbol(sprite % ARRAY_COUNT(sExpectedSymbolPalettes));
        EXPECT_LT(ids[sprite], MAX_SPRITES);
    }
    for (u32 step = 0; step < 21; step++)
    {
        for (u32 sprite = 0; sprite < ARRAY_COUNT(ids); sprite++)
        {
            u32 symbol = (sprite + step) % ARRAY_COUNT(sExpectedSymbolPalettes);
            SlotMachine_TestSetReelSymbol(ids[sprite], symbol);
        }
        AnimateSprites();
        BuildOamBuffer();
        for (u32 sprite = 0; sprite < ARRAY_COUNT(ids); sprite++)
            ExpectReelSymbol(&gSprites[ids[sprite]], (sprite + step) % ARRAY_COUNT(sExpectedSymbolPalettes));
    }
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetVBlankCallback(vblank);
}

TEST("Slot machine: changing reel symbols preserves the original eight auxiliary palettes")
{
    static const u16 *const auxiliaryPalettes[] =
    {
        gSlotMachineReelSymbols_Pal,
        gSlotMachineReelTimePikachu_Pal,
        gSlotMachineReelTimeMisc_Pal,
        gSlotMachineReelTimeMachine_Pal,
        gSlotMachineMisc_Pal,
        gSlotMachineReelTimeExplosion_Pal,
        gSlotMachineDigitalDisplay_Pal,
        gSlotMachineMisc_Pal,
    };
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    ResetSpriteData();
    FreeAllSpritePalettes();
    SlotMachine_TestLoadReelAssets();
    u8 id = SlotMachine_TestCreateReelSymbol(0);
    EXPECT_LT(id, MAX_SPRITES);
    for (u32 symbol = 0; symbol < ARRAY_COUNT(sExpectedSymbolPalettes); symbol++)
    {
        SlotMachine_TestSetReelSymbol(id, symbol);
        for (u32 palette = 0; palette < ARRAY_COUNT(auxiliaryPalettes); palette++)
            EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(palette)],
                             auxiliaryPalettes[palette], PLTT_SIZE_4BPP), 0);
    }
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetVBlankCallback(vblank);
}

TEST("Slot machine: reel palettes remain correct after leaving and reopening the game")
{
    IntrCallback vblank = gMain.vblankCallback;
    SetVBlankCallback(NULL);
    for (u32 visit = 0; visit < 3; visit++)
    {
        ResetSpriteData();
        FreeAllSpritePalettes();
        SlotMachine_TestLoadReelAssets();
        for (u32 symbol = 0; symbol < ARRAY_COUNT(sExpectedSymbolPalettes); symbol++)
        {
            u8 id = SlotMachine_TestCreateReelSymbol(symbol);
            EXPECT_LT(id, MAX_SPRITES);
            ExpectReelSymbol(&gSprites[id], symbol);
            DestroySprite(&gSprites[id]);
        }
    }
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetVBlankCallback(vblank);
}
