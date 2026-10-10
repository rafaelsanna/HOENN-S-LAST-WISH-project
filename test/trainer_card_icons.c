#include "global.h"
#include "bg.h"
#include "comfy_anim.h"
#include "dma3.h"
#include "gpu_regs.h"
#include "main.h"
#include "menu.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "trainer_card.h"
#include "test/test.h"

static EWRAM_DATA struct Pokemon sSavedParty[PARTY_SIZE];
static EWRAM_DATA u8 sSavedPlayerName[PLAYER_NAME_LENGTH + 1];

static void SaveTestParty(void)
{
    memcpy(sSavedParty, gPlayerParty, sizeof(sSavedParty));
    memcpy(sSavedPlayerName, gSaveBlock2Ptr->playerName, sizeof(sSavedPlayerName));
    // The test runner has a blank save, not a named, playable game.
    StringCopy(gSaveBlock2Ptr->playerName, COMPOUND_STRING("TEST"));
    ZeroPlayerPartyMons();
}

static void ReturnFromCard(void)
{
}

static void TickCard(u16 keys)
{
    gMain.newKeys = gMain.heldKeys = gMain.newAndRepeatedKeys = keys;
    gMain.callback2();
    ProcessDma3Requests();
    // Closing frees the card state; its old VBlank handler no longer owns it.
    if (gMain.callback2 != ReturnFromCard && gMain.vblankCallback != NULL)
        gMain.vblankCallback();
    CopyBufferedValuesToGpuRegs();
    gMain.newKeys = gMain.heldKeys = gMain.newAndRepeatedKeys = 0;
}

static void OpenCard(void)
{
    SetVBlankCallback(NULL);
    SetHBlankCallback(NULL);
    ReleaseComfyAnims();
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    SetDefaultFontsPointer();
    ShowPlayerTrainerCard(ReturnFromCard);
    for (u32 frame = 0; frame < 128; frame++)
        TickCard(0);
    EXPECT_EQ((bool32)gPaletteFade.active, FALSE);
}

static void CloseCard(void)
{
    TickCard(B_BUTTON);
    for (u32 frame = 0; frame < 128 && gMain.callback2 != ReturnFromCard; frame++)
        TickCard(0);
    EXPECT(gMain.callback2 == ReturnFromCard);
    SetVBlankCallback(NULL);
    SetHBlankCallback(NULL);
    ClearScheduledBgCopiesToVram();
    for (u32 bg = 0; bg < 4; bg++)
        UnsetBgTilemapBuffer(bg);
}

static u8 FindPartyIcon(u32 slot)
{
    for (u32 id = 0; id < MAX_SPRITES; id++)
    {
        if (gSprites[id].inUse && gSprites[id].callback == SpriteCB_MonIcon
            && gSprites[id].x == 28 + 37 * slot && gSprites[id].y == 112)
            return id;
    }
    return SPRITE_NONE;
}

static void ExpectPartyIcon(u32 slot)
{
    u16 expected[16];
    u16 species = GetMonData(&gPlayerParty[slot], MON_DATA_SPECIES_OR_EGG);
    bool32 shiny = GetMonData(&gPlayerParty[slot], MON_DATA_IS_SHINY);
    u32 personality = GetMonData(&gPlayerParty[slot], MON_DATA_PERSONALITY);
    u8 id = FindPartyIcon(slot);
    EXPECT_LT(id, MAX_SPRITES);
    struct Sprite *sprite = &gSprites[id];
    EXPECT_EQ(GetSpritePaletteTagByPaletteNum(sprite->oam.paletteNum), GetIconPalTag(species, shiny));
    LZ77UnCompWram(GetIconPalette(species, shiny, IsPersonalityFemale(species, personality)), expected);
    EXPECT_EQ(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(sprite->oam.paletteNum)], expected, sizeof(expected)), 0);
}

static void SetPartyMon(u32 slot, u16 species, bool32 shiny)
{
    CreateMon(&gPlayerParty[slot], species, 42, 31, TRUE, 0x12340000 + slot, OT_ID_PRESET, 123);
    SetMonData(&gPlayerParty[slot], MON_DATA_IS_SHINY, &shiny);
    CalculatePlayerPartyCount();
}

static void RestoreTestState(MainCallback callback, IntrCallback vblank, IntrCallback hblank,
                             const struct FontInfo *fonts, u8 partyCount, u16 ime)
{
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    memcpy(gPlayerParty, sSavedParty, sizeof(sSavedParty));
    memcpy(gSaveBlock2Ptr->playerName, sSavedPlayerName, sizeof(sSavedPlayerName));
    gPlayerPartyCount = partyCount;
    gFonts = fonts;
    SetMainCallback2(callback);
    SetVBlankCallback(vblank);
    SetHBlankCallback(hblank);
    REG_IME = ime;
}

TEST("Trainer card icons: mixed party keeps shiny and normal Ariados palettes distinct through flips")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback, hblank = gMain.hblankCallback;
    const struct FontInfo *fonts = gFonts;
    u8 partyCount = gPlayerPartyCount;
    u16 ime = REG_IME;
    REG_IME = 0;
    SaveTestParty();
    SetPartyMon(0, SPECIES_ARIADOS, TRUE);
    SetPartyMon(1, SPECIES_ARIADOS, FALSE);
    SetPartyMon(2, SPECIES_MASQUERAIN, TRUE);
    SetPartyMon(3, SPECIES_SCIZOR, FALSE);
    SetPartyMon(4, SPECIES_AGGRON, TRUE);
    SetPartyMon(5, SPECIES_RATICATE, FALSE);
    OpenCard();
    for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        ExpectPartyIcon(slot);
    EXPECT(gSprites[FindPartyIcon(0)].oam.paletteNum != gSprites[FindPartyIcon(1)].oam.paletteNum);
    // The icons are hidden on the back and retain their palettes on return.
    for (u32 flip = 0; flip < 2; flip++)
    {
        TickCard(A_BUTTON);
        for (u32 frame = 0; frame < 128; frame++)
            TickCard(0);
        for (u32 slot = 0; slot < PARTY_SIZE; slot++)
        {
            ExpectPartyIcon(slot);
            EXPECT_EQ((bool32)gSprites[FindPartyIcon(slot)].invisible, flip == 0);
        }
    }
    CloseCard();
    RestoreTestState(callback, vblank, hblank, fonts, partyCount, ime);
}

TEST("Trainer card icons: reopening reads the current shiny state without retaining the old palette")
{
    MainCallback callback = gMain.callback2;
    IntrCallback vblank = gMain.vblankCallback, hblank = gMain.hblankCallback;
    const struct FontInfo *fonts = gFonts;
    u8 partyCount = gPlayerPartyCount;
    u16 ime = REG_IME;
    REG_IME = 0;
    SaveTestParty();
    for (u32 visit = 0; visit < 4; visit++)
    {
        SetPartyMon(0, SPECIES_ARIADOS, visit & 1);
        OpenCard();
        ExpectPartyIcon(0);
        for (u32 slot = 1; slot < PARTY_SIZE; slot++)
            EXPECT_EQ(FindPartyIcon(slot), SPRITE_NONE);
        CloseCard();
        EXPECT_EQ(IndexOfSpritePaletteTag(GetIconPalTag(SPECIES_ARIADOS, visit & 1)), 0xFF);
    }
    RestoreTestState(callback, vblank, hblank, fonts, partyCount, ime);
}
