#include "global.h"
#include "battle.h"
#include "graphics.h"
#include "malloc.h"
#include "palette.h"
#include "pokedex.h"
#include "pokemon.h"
#include "sprite.h"
#include "test/test.h"

static void SetUpCaughtEntrySprites(void)
{
    ResetSpriteData();
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = 8;
    gBattlersCount = 2;
    gBattlerPositions[0] = B_POSITION_PLAYER_LEFT;
    gBattlerPositions[1] = B_POSITION_OPPONENT_LEFT;
    gBattleMons[1].hp = 1;
    gAbsentBattlerFlags = 0;

    // The caught-entry renderer reuses the battle's existing image storage.
    // Dummy templates isolate its palette selection without allocating pictures.
    gMonSpritesGfxPtr = AllocZeroed(sizeof(*gMonSpritesGfxPtr));
    for (u32 i = 0; i < MAX_BATTLERS_COUNT; i++)
        gMonSpritesGfxPtr->templates[i] = gDummySpriteTemplate;

    LoadPalette(gMoveTypes_Pal, OBJ_PLTT_ID(13), 3 * PLTT_SIZE_4BPP);
}

static void TearDownCaughtEntrySprites(void)
{
    ResetSpriteData();
    FreeAllSpritePalettes();
    Free(gMonSpritesGfxPtr);
    gMonSpritesGfxPtr = NULL;
}

static void ExpectTypePalettesUnchanged(void)
{
    EXPECT(memcmp(gPlttBufferUnfaded + OBJ_PLTT_ID(13), gMoveTypes_Pal, 3 * PLTT_SIZE_4BPP) == 0);
    EXPECT(memcmp(gPlttBufferFaded + OBJ_PLTT_ID(13), gMoveTypes_Pal, 3 * PLTT_SIZE_4BPP) == 0);
}

TEST("Pokedex caught Oddish does not replace Grass type colors with its portrait palette")
{
    u32 spriteId;

    SetUpCaughtEntrySprites();
    EXPECT_EQ(IndexOfSpritePaletteTag(SPECIES_ODDISH), 0xFF);
    spriteId = Pokedex_CreateCaughtMonSprite(SPECIES_ODDISH, 48, 56);
    EXPECT(spriteId < MAX_SPRITES);
    LoadPalette(GetMonSpritePalFromSpeciesAndPersonality(SPECIES_ODDISH, FALSE, 0),
        OBJ_PLTT_ID(gSprites[spriteId].oam.paletteNum), PLTT_SIZE_4BPP);
    ExpectTypePalettesUnchanged();
    EXPECT_EQ((u8)gSprites[spriteId].oam.paletteNum, 0);
    TearDownCaughtEntrySprites();
}

TEST("Pokedex caught portraits preserve all type palettes for every species, gender and shiny palette")
{
    bool32 isShiny;
    u32 personality;

    PARAMETRIZE { isShiny = FALSE; personality = 0; }
    PARAMETRIZE { isShiny = TRUE; personality = 0; }
    PARAMETRIZE { isShiny = FALSE; personality = 0xFFFFFFFF; }
    PARAMETRIZE { isShiny = TRUE; personality = 0xFFFFFFFF; }

    SetUpCaughtEntrySprites();
    for (u16 species = SPECIES_NONE + 1; species < NUM_SPECIES; species++)
    {
        const u16 *colors = GetMonSpritePalFromSpeciesAndPersonality(species, isShiny, personality);
        u32 spriteId = Pokedex_CreateCaughtMonSprite(species, 48, 56);
        u8 paletteNum;

        EXPECT(spriteId < MAX_SPRITES);
        paletteNum = gSprites[spriteId].oam.paletteNum;
        EXPECT_EQ(paletteNum, 0);
        LoadPalette(colors, OBJ_PLTT_ID(paletteNum), PLTT_SIZE_4BPP);
        EXPECT(memcmp(gPlttBufferUnfaded + OBJ_PLTT_ID(paletteNum), colors, PLTT_SIZE_4BPP) == 0);
        ExpectTypePalettesUnchanged();
        DestroySprite(&gSprites[spriteId]);
    }
    TearDownCaughtEntrySprites();
}

TEST("Pokedex caught portraits ignore stale species palette tags in a type-icon slot")
{
    const struct SpritePalette oldPalette = {
        .data = GetMonSpritePalFromSpeciesAndPersonality(SPECIES_ODDISH, FALSE, 0),
        .tag = SPECIES_ODDISH,
    };
    u32 spriteId;

    SetUpCaughtEntrySprites();
    LoadSpritePaletteInSlot(&oldPalette, 15);
    LoadPalette(gMoveTypes_Pal, OBJ_PLTT_ID(13), 3 * PLTT_SIZE_4BPP);
    spriteId = Pokedex_CreateCaughtMonSprite(SPECIES_ODDISH, 48, 56);
    EXPECT(spriteId < MAX_SPRITES);
    EXPECT_EQ((u8)gSprites[spriteId].oam.paletteNum, 0);
    LoadPalette(oldPalette.data, OBJ_PLTT_ID(gSprites[spriteId].oam.paletteNum), PLTT_SIZE_4BPP);
    ExpectTypePalettesUnchanged();
    TearDownCaughtEntrySprites();
}
