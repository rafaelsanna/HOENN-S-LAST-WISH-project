#include "global.h"
#include "bg.h"
#include "gpu_regs.h"
#include "main.h"
#include "malloc.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "script.h"
#include "sprite.h"
#include "text.h"
#include "trainer_pokemon_sprites.h"
#include "window.h"

#include "constants/pokemon.h"
#include "constants/rgb.h"

// ============================================================================
// HLW GRANDMA BOOK — full Grandma/Jirachi story scene
//
// Script usage:
//
//     fadescreen FADE_TO_BLACK
//     callnative HLW_StartGrandmaBookTest
//     waitstate
//     fadescreen FADE_FROM_BLACK
//
// The scene completely owns the screen while open.
// It does NOT run the overworld renderer or the map's tasks.
//
// Background:
//   graphics/grandma_book/book.png
//   graphics/grandma_book/book.bin
//
// The build system automatically generates:
//   graphics/grandma_book/book.4bpp
//   graphics/grandma_book/book.gbapal
//
// Left page:
//   Direct 64x64 OBJ Pokémon front sprite. No showmonpic frame/window.
//
// Right page:
//   Borderless transparent BG0 window, text only.
//
// Input:
//   A = next page
//   B = close book immediately
//
// After the final page, A/B fades the book to black, destroys the scene, and asks the
// normal field-return callback to rebuild the map. The script resumes after
// its waitstate.
// ============================================================================

#define GRANDMA_BOOK_BG_ID              2
#define GRANDMA_BOOK_BG_CHARBASE        0
#define GRANDMA_BOOK_BG_MAPBASE         30
#define GRANDMA_BOOK_BG_PRIORITY        2

#define GRANDMA_BOOK_TEXT_BG_ID         0
#define GRANDMA_BOOK_TEXT_CHARBASE      2
#define GRANDMA_BOOK_TEXT_MAPBASE       31
#define GRANDMA_BOOK_TEXT_PRIORITY      0
#define GRANDMA_BOOK_TEXT_PAL           15

#define GRANDMA_BOOK_MON_PAL_SLOT       14
#define GRANDMA_BOOK_MON_X              61
#define GRANDMA_BOOK_MON_Y              74

#define GRANDMA_BOOK_TEXT_X             8
#define GRANDMA_BOOK_TEXT_Y             11

#define GRANDMA_BOOK_PAGE_X             9
#define GRANDMA_BOOK_PAGE_WINDOW_TOP    15
#define GRANDMA_BOOK_PAGE_Y             6

#define GRANDMA_BOOK_MAP_W              30
#define GRANDMA_BOOK_MAP_H              20
#define GRANDMA_BOOK_HW_MAP_W           32
#define GRANDMA_BOOK_HW_MAP_H           32

enum GrandmaBookWindow
{
    WIN_BOOK_TEXT,
    WIN_BOOK_PAGE,
};

enum GrandmaBookState
{
    BOOK_STATE_FADE_IN,
    BOOK_STATE_WAIT_INPUT,
    BOOK_STATE_FADE_OUT,
    BOOK_STATE_RETURN_FIELD,
};

struct GrandmaBookPage
{
    u16 species;
    const u8 *text;
};

struct GrandmaBookScene
{
    u8 state;
    u8 page;
    u8 windowId;
    u16 monSpriteId;
    void *bg0TilemapBuffer;
};

static EWRAM_DATA struct GrandmaBookScene *sGrandmaBook = NULL;

// ---------------------------------------------------------------------------
// Assets
// ---------------------------------------------------------------------------

static const u32 sBookTiles[] =
    INCBIN_U32("graphics/grandma_book/book.4bpp");

static const u16 sBookTilemap30x20[] =
    INCBIN_U16("graphics/grandma_book/book.bin");

static const u16 sBookPalette[] =
    INCBIN_U16("graphics/grandma_book/book.gbapal");

// Palette slot 15 for the transparent text-only window.
// Pixel 0 stays transparent. Pixel 1 is dark brown, pixel 2 a soft shadow.
static const u16 sBookTextPalette[16] =
{
    [0] = RGB(0, 0, 0),
    [1] = RGB(7, 4, 3),
    [2] = RGB(18, 11, 7),
};

// Full book version of the same story told by Grandma/Jirachi.
// Narrative tone: written like an old storybook rather than direct exposition.
// Lines are deliberately short to fit the user's ~80 px mockup text block.

static const u8 sBookStoryText1[] =
    _("Long before our age,\n"
      "HOENN rested\n"
      "beneath a quiet sky,\n"
      "wrapped in peace.");

static const u8 sBookStoryText2[] =
    _("Sea and land lived\n"
      "side by side,\n"
      "and every shore\n"
      "was full of life.");

static const u8 sBookStoryText3[] =
    _("People and POKéMON\n"
      "shared one home,\n"
      "walking together\n"
      "in harmony.");

static const u8 sBookStoryText4[] =
    _("For countless years,\n"
      "ancient powers\n"
      "held the world\n"
      "in balance.");

static const u8 sBookStoryText5[] =
    _("Deep in the sea,\n"
      "KYOGRE slept,\n"
      "keeper of waters\n"
      "without end.");

static const u8 sBookStoryText6[] =
    _("Beneath the land,\n"
      "GROUDON rested,\n"
      "shaper of mountains\n"
      "and continents.");

static const u8 sBookStoryText7[] =
    _("When both awoke,\n"
      "their old rivalry\n"
      "turned HOENN into\n"
      "a battlefield.");

static const u8 sBookStoryText8[] =
    _("The ocean rose\n"
      "beyond its shores.\n"
      "Floods swallowed\n"
      "coastal homes.");

static const u8 sBookStoryText9[] =
    _("Then giant waves\n"
      "crossed the region,\n"
      "sweeping away\n"
      "what remained.");

static const u8 sBookStoryText10[] =
    _("The land answered\n"
      "with fire.\n"
      "Volcanoes woke,\n"
      "and ash filled sky.");

static const u8 sBookStoryText11[] =
    _("Ancient cities\n"
      "fell into ruin.\n"
      "Only stone and\n"
      "memories stayed.");

static const u8 sBookStoryText12[] =
    _("Much of the land\n"
      "sank beneath sea.\n"
      "Only scattered\n"
      "islands remained.");

static const u8 sBookStoryText13[] =
    _("Rivers of lava\n"
      "crossed the earth,\n"
      "burning forests\n"
      "that once grew.");

static const u8 sBookStoryText14[] =
    _("With hope fading,\n"
      "people recalled\n"
      "CELEBI, JIRACHI,\n"
      "and ancient tales.");

static const u8 sBookStoryText15[] =
    _("Across HOENN,\n"
      "shrines were raised\n"
      "for guardians who\n"
      "could hear wishes.");

static const u8 sBookStoryText16[] =
    _("After a long sleep,\n"
      "JIRACHI awoke\n"
      "and heard one wish:\n"
      "Save our world.");

static const u8 sBookStoryText17[] =
    _("High above HOENN,\n"
      "the MILLENNIUM\n"
      "COMET crossed sky,\n"
      "bright with hope.");

static const u8 sBookStoryText18[] =
    _("That saved world\n"
      "became our HOENN.\n"
      "Where hope remains,\n"
      "a journey begins.");

static const struct GrandmaBookPage sBookStoryPages[] =
{
    { SPECIES_ARCTIBAX,   sBookStoryText1  },
    { SPECIES_ARCTOVISH,  sBookStoryText2  },
    { SPECIES_ARCTOZOLT,  sBookStoryText3  },
    { SPECIES_ARMAROUGE,  sBookStoryText4  },
    { SPECIES_AEGISLASH,  sBookStoryText5  },
    { SPECIES_ALOMOMOLA,  sBookStoryText6  },
    { SPECIES_AVALUGG,    sBookStoryText7  },
    { SPECIES_AMAURA,     sBookStoryText8  },
    { SPECIES_AROMATISSE, sBookStoryText9  },
    { SPECIES_ARROKUDA,   sBookStoryText10 },
    { SPECIES_AUDINO,     sBookStoryText11 },
    { SPECIES_AURORUS,    sBookStoryText12 },
    { SPECIES_AMOONGUSS,  sBookStoryText13 },
    { SPECIES_APPLIN,     sBookStoryText14 },
    { SPECIES_APPLETUN,   sBookStoryText15 },
    { SPECIES_AXEW,       sBookStoryText16 },
    { SPECIES_ARBOLIVA,   sBookStoryText17 },
    { SPECIES_ARCHEN,     sBookStoryText18 },
};

static const u8 sBookPage01[] = _("Page 01");
static const u8 sBookPage02[] = _("Page 02");
static const u8 sBookPage03[] = _("Page 03");
static const u8 sBookPage04[] = _("Page 04");
static const u8 sBookPage05[] = _("Page 05");
static const u8 sBookPage06[] = _("Page 06");
static const u8 sBookPage07[] = _("Page 07");
static const u8 sBookPage08[] = _("Page 08");
static const u8 sBookPage09[] = _("Page 09");
static const u8 sBookPage10[] = _("Page 10");
static const u8 sBookPage11[] = _("Page 11");
static const u8 sBookPage12[] = _("Page 12");
static const u8 sBookPage13[] = _("Page 13");
static const u8 sBookPage14[] = _("Page 14");
static const u8 sBookPage15[] = _("Page 15");
static const u8 sBookPage16[] = _("Page 16");
static const u8 sBookPage17[] = _("Page 17");
static const u8 sBookPage18[] = _("Page 18");

static const u8 *const sBookPageNumbers[] =
{
    sBookPage01, sBookPage02, sBookPage03, sBookPage04, sBookPage05, sBookPage06,
    sBookPage07, sBookPage08, sBookPage09, sBookPage10, sBookPage11, sBookPage12,
    sBookPage13, sBookPage14, sBookPage15, sBookPage16, sBookPage17, sBookPage18,
};

// ---------------------------------------------------------------------------
// BG / window layout
// ---------------------------------------------------------------------------

static const struct BgTemplate sBookBgTemplates[] =
{
    {
        .bg = GRANDMA_BOOK_TEXT_BG_ID,
        .charBaseIndex = GRANDMA_BOOK_TEXT_CHARBASE,
        .mapBaseIndex = GRANDMA_BOOK_TEXT_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = GRANDMA_BOOK_TEXT_PRIORITY,
        .baseTile = 0,
    },
    {
        .bg = GRANDMA_BOOK_BG_ID,
        .charBaseIndex = GRANDMA_BOOK_BG_CHARBASE,
        .mapBaseIndex = GRANDMA_BOOK_BG_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = GRANDMA_BOOK_BG_PRIORITY,
        .baseTile = 0,
    },
};

// Right-hand page layout.
// WIN_BOOK_TEXT is the large transparent text canvas.
// WIN_BOOK_PAGE is a tiny transparent footer in the lower-right.
// The visible story text is positioned inside WIN_BOOK_TEXT to match the
// user's approved mockup; neither window draws a frame/background.
static const struct WindowTemplate sBookWindowTemplates[] =
{
    [WIN_BOOK_TEXT] =
    {
        .bg = GRANDMA_BOOK_TEXT_BG_ID,
        .tilemapLeft = 15, // x = 120
        .tilemapTop = 3,   // y = 24
        .width = 15,       // 120 px; extends to screen edge so +2 px does not clip
        .height = 13,      // 104 px
        .paletteNum = GRANDMA_BOOK_TEXT_PAL,
        .baseBlock = 1,
    },
    [WIN_BOOK_PAGE] =
    {
        // Footer stays fully inside the right page.
        // 9 tiles = 72 px, x=160..231.
        .bg = GRANDMA_BOOK_TEXT_BG_ID,
        .tilemapLeft = 20, // x = 160
        .tilemapTop = GRANDMA_BOOK_PAGE_WINDOW_TOP,
        .width = 9,        // 72 px
        .height = 3,       // 24 px; gives the font enough vertical room
        .paletteNum = GRANDMA_BOOK_TEXT_PAL,
        .baseBlock = 196,  // text window uses blocks 1..195
    },
    DUMMY_WIN_TEMPLATE,
};

static const u8 sBookTextColors[] =
{
    0, // transparent
    1, // dark brown
    2, // soft shadow
};

// ---------------------------------------------------------------------------
// Forward declarations
// ---------------------------------------------------------------------------

static void CB2_InitGrandmaBook(void);
static void CB2_GrandmaBook(void);
static void VBlankCB_GrandmaBook(void);

static void GrandmaBook_LoadBackground(void);
static void GrandmaBook_ShowPage(u8 page);
static void GrandmaBook_DestroyPageSprite(void);
static void GrandmaBook_BeginExit(void);
static void GrandmaBook_CleanupAndReturnToField(void);

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

static void GrandmaBook_LoadBackground(void)
{
    u32 x;
    u32 y;
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(GRANDMA_BOOK_BG_MAPBASE);

    // Load source tiles/palette generated by the normal graphics pipeline.
    LoadBgTiles(
        GRANDMA_BOOK_BG_ID,
        sBookTiles,
        sizeof(sBookTiles),
        0
    );

    LoadPalette(
        sBookPalette,
        BG_PLTT_ID(0),
        PLTT_SIZE_4BPP
    );

    // Hardware text BG map is 32x32. book.bin is authored as the exact visible
    // 30x20 area, so only pad the invisible remainder.
    for (y = 0; y < GRANDMA_BOOK_HW_MAP_H; y++)
    {
        for (x = 0; x < GRANDMA_BOOK_HW_MAP_W; x++)
            dst[y * GRANDMA_BOOK_HW_MAP_W + x] = 0;
    }

    for (y = 0; y < GRANDMA_BOOK_MAP_H; y++)
    {
        for (x = 0; x < GRANDMA_BOOK_MAP_W; x++)
        {
            dst[y * GRANDMA_BOOK_HW_MAP_W + x] =
                sBookTilemap30x20[y * GRANDMA_BOOK_MAP_W + x];
        }
    }
}

static void GrandmaBook_DestroyPageSprite(void)
{
    if (sGrandmaBook == NULL)
        return;

    if (sGrandmaBook->monSpriteId != 0xFFFF)
    {
        FreeAndDestroyMonPicSprite(sGrandmaBook->monSpriteId);
        sGrandmaBook->monSpriteId = 0xFFFF;
    }
}

static void GrandmaBook_ShowPage(u8 page)
{
    const struct GrandmaBookPage *bookPage;

    if (sGrandmaBook == NULL || page >= ARRAY_COUNT(sBookStoryPages))
        return;

    bookPage = &sBookStoryPages[page];

    GrandmaBook_DestroyPageSprite();

    // Direct OBJ sprite: no showmonpic window and therefore no border.
    sGrandmaBook->monSpriteId =
        CreateMonPicSprite_Affine(
            bookPage->species,
            0,
            0,
            MON_PIC_AFFINE_FRONT,
            GRANDMA_BOOK_MON_X,
            GRANDMA_BOOK_MON_Y,
            GRANDMA_BOOK_MON_PAL_SLOT,
            TAG_NONE
        );

    if (sGrandmaBook->monSpriteId != 0xFFFF)
    {
        gSprites[sGrandmaBook->monSpriteId].oam.priority = 0;
    }

    // Transparent, borderless right page.
    FillWindowPixelBuffer(WIN_BOOK_TEXT, PIXEL_FILL(0));
    FillWindowPixelBuffer(WIN_BOOK_PAGE, PIXEL_FILL(0));

    // Fine-tuned from the approved mockup:
    // text is +2 px right / +2 px down from the previous position.
    AddTextPrinterParameterized4(
        WIN_BOOK_TEXT,
        FONT_SMALL,
        GRANDMA_BOOK_TEXT_X,
        GRANDMA_BOOK_TEXT_Y,
        0,
        0,
        sBookTextColors,
        TEXT_SKIP_DRAW,
        bookPage->text
    );

    // Right-align Page XX with a 4 px safety margin.
    // This avoids clipping regardless of the exact glyph widths.
    {
        u32 pageWidth = GetStringWidth(FONT_SMALL, sBookPageNumbers[page], 0);
        u32 pageX = (72 > pageWidth + 4) ? 72 - pageWidth - 4 : 0;

        AddTextPrinterParameterized4(
            WIN_BOOK_PAGE,
            FONT_SMALL,
            pageX,
            GRANDMA_BOOK_PAGE_Y,
            0,
            0,
            sBookTextColors,
            TEXT_SKIP_DRAW,
            sBookPageNumbers[page]
        );
    }

    PutWindowTilemap(WIN_BOOK_TEXT);
    PutWindowTilemap(WIN_BOOK_PAGE);
    CopyWindowToVram(WIN_BOOK_TEXT, COPYWIN_FULL);
    CopyWindowToVram(WIN_BOOK_PAGE, COPYWIN_FULL);
}

static void GrandmaBook_BeginExit(void)
{
    if (sGrandmaBook == NULL)
        return;

    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sGrandmaBook->state = BOOK_STATE_FADE_OUT;
}

static void GrandmaBook_CleanupAndReturnToField(void)
{
    if (sGrandmaBook == NULL)
        return;

    GrandmaBook_DestroyPageSprite();
    ResetAllPicSprites();

    SetVBlankCallback(NULL);

    HideBg(GRANDMA_BOOK_TEXT_BG_ID);
    HideBg(GRANDMA_BOOK_BG_ID);

    FreeAllWindowBuffers();

    if (sGrandmaBook->bg0TilemapBuffer != NULL)
    {
        UnsetBgTilemapBuffer(GRANDMA_BOOK_TEXT_BG_ID);
        Free(sGrandmaBook->bg0TilemapBuffer);
        sGrandmaBook->bg0TilemapBuffer = NULL;
    }

    ResetBgsAndClearDma3BusyFlags(0);

    Free(sGrandmaBook);
    sGrandmaBook = NULL;

    // Rebuild the real field/map and continue the script after `waitstate`.
    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

// ---------------------------------------------------------------------------
// Scene callbacks
// ---------------------------------------------------------------------------

static void VBlankCB_GrandmaBook(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_GrandmaBook(void)
{
    // This scene owns BG0/BG2 completely. Never inherit the field camera
    // scroll values, otherwise the 240x160 book is shifted/cropped.
    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);

    AnimateSprites();
    BuildOamBuffer();
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();

    if (sGrandmaBook == NULL)
        return;

    switch (sGrandmaBook->state)
    {
    case BOOK_STATE_FADE_IN:
        if (!gPaletteFade.active)
            sGrandmaBook->state = BOOK_STATE_WAIT_INPUT;
        break;

    case BOOK_STATE_WAIT_INPUT:
        // Text is printed instantly and remains on the page indefinitely.
        // Only explicit player input changes the page.
        if (JOY_NEW(B_BUTTON))
        {
            GrandmaBook_BeginExit();
        }
        else if (JOY_NEW(A_BUTTON))
        {
            if (++sGrandmaBook->page >= ARRAY_COUNT(sBookStoryPages))
            {
                GrandmaBook_BeginExit();
            }
            else
            {
                GrandmaBook_ShowPage(sGrandmaBook->page);
            }
        }
        break;

    case BOOK_STATE_FADE_OUT:
        if (!gPaletteFade.active)
            sGrandmaBook->state = BOOK_STATE_RETURN_FIELD;
        break;

    case BOOK_STATE_RETURN_FIELD:
        GrandmaBook_CleanupAndReturnToField();
        break;
    }
}

static void CB2_InitGrandmaBook(void)
{
    SetVBlankCallback(NULL);

    if (sGrandmaBook == NULL)
    {
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        return;
    }

    // We own this screen until exit. The field will be rebuilt afterward.
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetAllPicSprites();
    ResetPaletteFade();

    FreeAllWindowBuffers();
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sBookBgTemplates, ARRAY_COUNT(sBookBgTemplates));

    sGrandmaBook->bg0TilemapBuffer = AllocZeroed(BG_SCREEN_SIZE);

    if (sGrandmaBook->bg0TilemapBuffer == NULL)
    {
        Free(sGrandmaBook);
        sGrandmaBook = NULL;
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        return;
    }

    SetBgTilemapBuffer(
        GRANDMA_BOOK_TEXT_BG_ID,
        sGrandmaBook->bg0TilemapBuffer
    );

    InitWindows(sBookWindowTemplates);
    DeactivateAllTextPrinters();

    LoadPalette(
        sBookTextPalette,
        BG_PLTT_ID(GRANDMA_BOOK_TEXT_PAL),
        PLTT_SIZE_4BPP
    );

    GrandmaBook_LoadBackground();

    SetGpuRegBits(
        REG_OFFSET_DISPCNT,
        DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP
    );

    ShowBg(GRANDMA_BOOK_BG_ID);
    ShowBg(GRANDMA_BOOK_TEXT_BG_ID);

    // InitBgsFromTemplates does not guarantee that old overworld scroll
    // registers are already zero on this branch.
    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);

    sGrandmaBook->page = 0;
    sGrandmaBook->monSpriteId = 0xFFFF;
    GrandmaBook_ShowPage(0);

    SetVBlankCallback(VBlankCB_GrandmaBook);
    SetMainCallback2(CB2_GrandmaBook);

    // The generic test script enters while fully black.
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    sGrandmaBook->state = BOOK_STATE_FADE_IN;
}

// ---------------------------------------------------------------------------
// Script API
// ---------------------------------------------------------------------------

void HLW_StartGrandmaBookTest(struct ScriptContext *ctx)
{
    (void)ctx;

    if (sGrandmaBook != NULL)
        return;

    sGrandmaBook = AllocZeroed(sizeof(*sGrandmaBook));

    if (sGrandmaBook == NULL)
        return;

    // Do the destructive screen setup on the next frame, not from inside the
    // field script interpreter itself.
    gMain.state = 0;
    SetMainCallback2(CB2_InitGrandmaBook);
}
