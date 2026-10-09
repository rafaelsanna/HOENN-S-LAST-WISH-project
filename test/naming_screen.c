#include "global.h"
#include "bg.h"
#include "comfy_anim.h"
#include "dma3.h"
#include "gpu_regs.h"
#include "main.h"
#include "menu.h"
#include "naming_screen.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "sprite.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "window.h"
#include "constants/rgb.h"
#include "test/test.h"

#define SCROLL_PALETTE 6
#define MON_SCROLL_SCREENBASE 22
#define MON_SCROLL_ROWS 64
#define SCROLL_COLS 32
#define SCROLL_SOURCE_ROWS 24

static const u8 sCardBgTiles[] = INCBIN_U8("graphics/trainer_card/bgscroll.4bpp");
static const u16 sCardBgPalette[] = INCBIN_U16("graphics/trainer_card/bgscroll.gbapal");
static const u16 sCardBgTilemap[] = INCBIN_U16("graphics/trainer_card/bgscroll.bin");
static const u16 sBoxBgPalette[] = INCBIN_U16("graphics/pokemon_storage/bgscroll.gbapal");
static const u16 sBoxBgTilemap[] = INCBIN_U16("graphics/pokemon_storage/bgscroll.bin");

static void NamingReturnCallback(void)
{
}

static void TickNaming(u16 keys)
{
    gMain.newKeys = keys;
    gMain.newAndRepeatedKeys = keys;
    gMain.heldKeys = keys;
    gMain.callback2();
    ProcessDma3Requests();
    if (gMain.vblankCallback != NULL)
        gMain.vblankCallback();
    gMain.newKeys = 0;
    gMain.newAndRepeatedKeys = 0;
    gMain.heldKeys = 0;
}

static void WaitForNaming(void)
{
    for (u32 frame = 0; frame < 64; frame++)
        TickNaming(0);
    EXPECT_EQ((bool32)gPaletteFade.active, FALSE);
}

static void CloseNaming(void)
{
    TickNaming(START_BUTTON);
    for (u32 frame = 0; frame < 8; frame++)
        TickNaming(0);
    TickNaming(A_BUTTON);
    for (u32 frame = 0; frame < 64; frame++)
    {
        if (gMain.callback2 == NamingReturnCallback || gMain.callback2 == BattleMainCB2)
            break;
        TickNaming(0);
    }
    EXPECT(gMain.callback2 == NamingReturnCallback || gMain.callback2 == BattleMainCB2);
}

static void CleanUpNaming(MainCallback callback, IntrCallback vblank, const struct FontInfo *fonts)
{
    SetVBlankCallback(NULL);
    ReleaseComfyAnims();
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ClearScheduledBgCopiesToVram();
    for (u32 bg = 0; bg < 4; bg++)
        UnsetBgTilemapBuffer(bg);
    SetVBlankCallback(vblank);
    SetMainCallback2(callback);
    gFonts = fonts;
}

static void ExpectCardBackground(void)
{
    EXPECT_EQ(GetBgAttribute(0, BG_ATTR_MAPBASEINDEX), MON_SCROLL_SCREENBASE);
    EXPECT_EQ(GetBgAttribute(0, BG_ATTR_SCREENSIZE), 2);
    EXPECT_EQ(GetBgAttribute(0, BG_ATTR_CHARBASEINDEX), 0);
    EXPECT_EQ(GetBgAttribute(0, BG_ATTR_PRIORITY), 3);
    EXPECT_EQ(GetBgTilemapBuffer(0), NULL);
    EXPECT_EQ(GetBgAttribute(1, BG_ATTR_MAPBASEINDEX), 29);
    EXPECT_EQ(GetBgAttribute(2, BG_ATTR_MAPBASEINDEX), 28);
    EXPECT_EQ(GetBgAttribute(3, BG_ATTR_MAPBASEINDEX), 30);
    EXPECT_EQ(GetBgAttribute(3, BG_ATTR_CHARBASEINDEX), 3);
    EXPECT_EQ(memcmp((const void *)BG_CHAR_ADDR(0), sCardBgTiles, sizeof(sCardBgTiles)), 0);
    EXPECT_EQ(gPlttBufferUnfaded[0], RGB(4, 4, 5));
    EXPECT_EQ(memcmp(&gPlttBufferUnfaded[SCROLL_PALETTE * 16], sCardBgPalette, sizeof(sCardBgPalette)), 0);
    const vu16 *map = (const vu16 *)BG_SCREEN_ADDR(MON_SCROLL_SCREENBASE);
    for (u32 y = 0; y < MON_SCROLL_ROWS; y++)
    {
        for (u32 x = 0; x < SCROLL_COLS; x++)
        {
            u16 expected = (sCardBgTilemap[(y % SCROLL_SOURCE_ROWS) * SCROLL_COLS + x] & 0x0FFF)
                         | (SCROLL_PALETTE << 12);
            EXPECT_EQ(map[y * SCROLL_COLS + x], expected);
        }
    }
}

TEST("Naming screen: both Pokemon nickname templates reuse Trainer Card art and survive page swaps exit and reopen")
{
    u8 template;
    PARAMETRIZE { template = NAMING_SCREEN_CAUGHT_MON; }
    PARAMETRIZE { template = NAMING_SCREEN_NICKNAME; }

    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    const struct FontInfo *fonts = gFonts;
    SetDefaultFontsPointer();
    SetVBlankCallback(NULL);
    for (u32 visit = 0; visit < 2; visit++)
    {
        u8 name[POKEMON_NAME_LENGTH + 1];
        StringCopy(name, COMPOUND_STRING("TEST"));
        DoNamingScreen(template, name, SPECIES_PIKACHU, MON_MALE, 0, NamingReturnCallback);
        WaitForNaming();
        ExpectCardBackground();

        // Exercise both loop boundaries, including the 256-pixel value that
        // cannot fit in the old u16 horizontal scroll accumulator.
        ChangeBgX(0, 32, BG_COORD_SET);
        ChangeBgY(0, 48, BG_COORD_SET);
        TickNaming(0);
        EXPECT_EQ(GetBgX(0), 256 << 8);
        EXPECT_EQ(GetBgY(0), 192 << 8);
        TickNaming(0);
        EXPECT_EQ(GetBgX(0), (256 << 8) - 32);
        EXPECT_EQ(GetBgY(0), (192 << 8) - 48);

        for (u32 page = 0; page < 3; page++)
        {
            TickNaming(SELECT_BUTTON);
            for (u32 frame = 0; frame < 48; frame++)
                TickNaming(0);
            ExpectCardBackground();
        }
        // Enter a character using the real keyboard, including its automatic
        // switch to the lowercase page, then confirm the resulting nickname.
        TickNaming(A_BUTTON);
        for (u32 frame = 0; frame < 48; frame++)
            TickNaming(0);
        ExpectCardBackground();
        CloseNaming();
        EXPECT_EQ(name[0], CHAR_A);
        EXPECT_EQ(name[1], EOS);
        SetVBlankCallback(NULL);
    }
    CleanUpNaming(callback, vblank, fonts);
}

TEST("Naming screen: box names retain PC artwork and vertical-only scrolling")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback;
    const struct FontInfo *fonts = gFonts;
    u8 name[BOX_NAME_LENGTH + 1];
    SetDefaultFontsPointer();
    SetVBlankCallback(NULL);
    StringCopy(name, COMPOUND_STRING("BOX TEST"));
    DoNamingScreen(NAMING_SCREEN_BOX, name, 0, 0, 0, NamingReturnCallback);
    WaitForNaming();
    EXPECT_EQ(GetBgAttribute(0, BG_ATTR_MAPBASEINDEX), 27);
    EXPECT_EQ(GetBgAttribute(0, BG_ATTR_SCREENSIZE), 0);
    EXPECT(GetBgTilemapBuffer(0) != NULL);
    EXPECT_EQ(memcmp(&gPlttBufferUnfaded[SCROLL_PALETTE * 16], sBoxBgPalette, sizeof(sBoxBgPalette)), 0);
    const vu16 *map = (const vu16 *)BG_SCREEN_ADDR(27);
    for (u32 y = 0; y < 32; y++)
    {
        for (u32 x = 0; x < SCROLL_COLS; x++)
        {
            u16 expected = (sBoxBgTilemap[(y % SCROLL_SOURCE_ROWS) * SCROLL_COLS + x] & 0x0FFF)
                         | (SCROLL_PALETTE << 12);
            EXPECT_EQ(map[y * SCROLL_COLS + x], expected);
        }
    }
    s32 y = GetBgY(0);
    TickNaming(0);
    EXPECT_EQ(GetBgX(0), 0);
    EXPECT_EQ(GetBgY(0), y - 128);
    CloseNaming();
    EXPECT_EQ(StringCompare(name, COMPOUND_STRING("BOX TEST")), 0);
    CleanUpNaming(callback, vblank, fonts);
}
