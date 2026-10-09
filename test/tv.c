#include "global.h"
#include "event_data.h"
#include "field_message_box.h"
#include "pokemon.h"
#include "random.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "tv.h"
#include "window.h"
#include "constants/decorations.h"
#include "constants/moves.h"
#include "constants/tv.h"
#include "test/test.h"

static void ResetVisitFixture(void)
{
    ClearTVShowData();
    memset(gSaveBlock1Ptr->secretBases[0].decorations, DECOR_NONE,
           sizeof(gSaveBlock1Ptr->secretBases[0].decorations));
    memset(gPlayerParty, 0, sizeof(gPlayerParty));
    gPlayerPartyCount = 0;
    StringCopy(gSaveBlock2Ptr->playerName, COMPOUND_STRING("TEST"));
}

static void CreateVisitMon(u8 slot, u16 species, u8 level)
{
    CreateMon(&gPlayerParty[slot], species, level, 0, TRUE, slot + 1, OT_ID_PRESET, 1);
    for (u32 move = 0; move < MAX_MON_MOVES; move++)
    {
        u16 empty = MOVE_NONE;
        SetMonData(&gPlayerParty[slot], MON_DATA_MOVE1 + move, &empty);
    }
}

static TVShow *CreateVisitShow(void)
{
    TryPutSecretBaseVisitOnAir();
    for (u32 i = 0; i < TV_SHOWS_COUNT; i++)
    {
        if (gSaveBlock1Ptr->tvShows[i].common.kind == TVSHOW_SECRET_BASE_VISIT)
            return &gSaveBlock1Ptr->tvShows[i];
    }
    return NULL;
}

TEST("TV RAM: decoration scratch keeps unique entries and the four-entry cap")
{
    u32 unique;
    PARAMETRIZE { unique = 0; }
    PARAMETRIZE { unique = 1; }
    PARAMETRIZE { unique = 3; }
    PARAMETRIZE { unique = DECOR_MAX_SECRET_BASE; }
    ResetVisitFixture();
    CreateVisitMon(0, SPECIES_PIKACHU, 40);
    if (unique != 0)
    {
        for (u32 i = 0; i < DECOR_MAX_SECRET_BASE; i++)
            gSaveBlock1Ptr->secretBases[0].decorations[i] = DECOR_SMALL_DESK + i % unique;
    }
    TVShow *show = CreateVisitShow();
    EXPECT(show != NULL);
    u32 expectedCount = unique < ARRAY_COUNT(show->secretBaseVisit.decorations)
                      ? unique : ARRAY_COUNT(show->secretBaseVisit.decorations);
    EXPECT_EQ(show->secretBaseVisit.numDecorations, expectedCount);
    for (u32 i = 0; i < show->secretBaseVisit.numDecorations; i++)
    {
        EXPECT_GE(show->secretBaseVisit.decorations[i], DECOR_SMALL_DESK);
        EXPECT_LT(show->secretBaseVisit.decorations[i], DECOR_SMALL_DESK + unique);
        for (u32 j = 0; j < i; j++)
            EXPECT_NE(show->secretBaseVisit.decorations[i], show->secretBaseVisit.decorations[j]);
    }
    EXPECT_EQ(show->secretBaseVisit.avgLevel, 40);
}

TEST("TV RAM: all six party members and all four moves fit synchronous scratch")
{
    static const u16 species[PARTY_SIZE] =
    {
        SPECIES_BULBASAUR, SPECIES_CHARMANDER, SPECIES_SQUIRTLE,
        SPECIES_PIKACHU, SPECIES_EEVEE, SPECIES_SNORLAX,
    };
    static const u16 moves[MAX_MON_MOVES] = {MOVE_TACKLE, MOVE_GROWL, MOVE_TOXIC, MOVE_PROTECT};
    ResetVisitFixture();
    for (u32 i = 0; i < PARTY_SIZE; i++)
    {
        CreateVisitMon(i, species[i], 10 * (i + 1));
        for (u32 j = 0; j < MAX_MON_MOVES; j++)
            SetMonData(&gPlayerParty[i], MON_DATA_MOVE1 + j, &moves[j]);
    }
    gPlayerPartyCount = PARTY_SIZE;
    for (u32 attempt = 0; attempt < 32; attempt++)
    {
        TVShow *show = CreateVisitShow();
        EXPECT(show != NULL);
        EXPECT_EQ(show->secretBaseVisit.avgLevel, 35);
        bool32 foundSpecies = FALSE;
        bool32 foundMove = FALSE;
        for (u32 i = 0; i < PARTY_SIZE; i++)
            foundSpecies |= show->secretBaseVisit.species == species[i];
        for (u32 i = 0; i < MAX_MON_MOVES; i++)
            foundMove |= show->secretBaseVisit.move == moves[i];
        EXPECT(foundSpecies);
        EXPECT(foundMove);
    }
}

TEST("TV RAM: eggs gaps empty parties and missing moves do not leak scratch data")
{
    bool8 empty;
    PARAMETRIZE { empty = FALSE; }
    PARAMETRIZE { empty = TRUE; }
    ResetVisitFixture();
    CreateVisitMon(1, SPECIES_PIKACHU, 99);
    bool8 egg = TRUE;
    SetMonData(&gPlayerParty[1], MON_DATA_IS_EGG, &egg);
    if (!empty)
        CreateVisitMon(PARTY_SIZE - 1, SPECIES_EEVEE, 25);
    TVShow *show = CreateVisitShow();
    EXPECT(show != NULL);
    EXPECT_EQ(show->secretBaseVisit.avgLevel, empty ? 0 : 25);
    EXPECT_EQ(show->secretBaseVisit.species, empty ? SPECIES_NONE : SPECIES_EEVEE);
    EXPECT_EQ(show->secretBaseVisit.move, MOVE_NONE);
}

TEST("TV RAM: valid party sampling preserves exact RNG order and resulting state")
{
    u16 seed;
    PARAMETRIZE { seed = 0; }
    PARAMETRIZE { seed = 0x1234; }
    PARAMETRIZE { seed = 0xABCD; }
    static const u16 moves[MAX_MON_MOVES] = {MOVE_TACKLE, MOVE_GROWL, MOVE_TOXIC, MOVE_PROTECT};
    u16 sampledMoves[PARTY_SIZE];
    ResetVisitFixture();
    for (u32 i = 0; i < PARTY_SIZE; i++)
    {
        CreateVisitMon(i, SPECIES_BULBASAUR + i, 10 * (i + 1));
        for (u32 j = 0; j < MAX_MON_MOVES; j++)
            SetMonData(&gPlayerParty[i], MON_DATA_MOVE1 + j, &moves[(i + j) % MAX_MON_MOVES]);
    }
    SeedRng(seed);
    rng_value_t expectedRng = gRngValue;
    for (u32 i = 0; i < PARTY_SIZE; i++)
        sampledMoves[i] = moves[(i + LocalRandom(&expectedRng) % MAX_MON_MOVES) % MAX_MON_MOVES];
    u32 selected = LocalRandom(&expectedRng) % PARTY_SIZE;
    TVShow *show = CreateVisitShow();
    EXPECT(show != NULL);
    EXPECT_EQ(show->secretBaseVisit.species, SPECIES_BULBASAUR + selected);
    EXPECT_EQ(show->secretBaseVisit.move, sampledMoves[selected]);
    EXPECT_EQ(gRngValue.a, expectedRng.a);
    EXPECT_EQ(gRngValue.b, expectedRng.b);
    EXPECT_EQ(gRngValue.c, expectedRng.c);
    EXPECT_EQ(gRngValue.ctr, expectedRng.ctr);
}

static const struct WindowTemplate sTVTestWindows[] =
{
    {.bg = 0, .width = 28, .height = 4},
    DUMMY_WIN_TEMPLATE,
};

TEST("TV RAM: secret-base action choices persist between separate dialogue calls")
{
    u32 numActions;
    u16 seed;
    PARAMETRIZE { numActions = 2; seed = 0; }
    PARAMETRIZE { numActions = 2; seed = 0x1234; }
    PARAMETRIZE { numActions = 2; seed = 0xABCD; }
    PARAMETRIZE { numActions = 3; seed = 0; }
    PARAMETRIZE { numActions = 3; seed = 0x1234; }
    PARAMETRIZE { numActions = 3; seed = 0xABCD; }
    const struct FontInfo *savedFonts = gFonts;
    ResetVisitFixture();
    SetDefaultFontsPointer();
    EXPECT(InitWindows(sTVTestWindows));
    InitFieldMessageBox();
    ResetTVShowState();
    gSpecialVar_0x8004 = 0;
    TVShow *show = &gSaveBlock1Ptr->tvShows[0];
    show->secretBaseSecrets.kind = TVSHOW_SECRET_BASE_SECRETS;
    show->secretBaseSecrets.active = TRUE;
    show->secretBaseSecrets.flags = (1 << numActions) - 1;
    show->secretBaseSecrets.language = LANGUAGE_ENGLISH;
    show->secretBaseSecrets.baseOwnersNameLanguage = LANGUAGE_ENGLISH;
    StringCopy(show->secretBaseSecrets.baseOwnersName, COMPOUND_STRING("OWNER"));
    StringCopy(show->secretBaseSecrets.playerName, COMPOUND_STRING("VISITOR"));
    SeedRng(seed);
    DoTVShow();
    u8 first = TV_TestGetShowState();
    EXPECT_GE(first, SBSECRETS_STATE_USED_CHAIR);
    EXPECT_LT(first, SBSECRETS_STATE_USED_CHAIR + numActions);
    DoTVShow();
    EXPECT_EQ(TV_TestGetShowState(), SBSECRETS_STATE_DO_NEXT1);
    DoTVShow();
    u8 second = TV_TestGetShowState();
    EXPECT_GE(second, SBSECRETS_STATE_USED_CHAIR);
    EXPECT_LT(second, SBSECRETS_STATE_USED_CHAIR + numActions);
    EXPECT_NE(first, second);
    if (numActions == 3)
    {
        DoTVShow();
        EXPECT_EQ(TV_TestGetShowState(), SBSECRETS_STATE_DO_NEXT2);
        DoTVShow();
        u8 third = TV_TestGetShowState();
        EXPECT_GE(third, SBSECRETS_STATE_USED_CHAIR);
        EXPECT_LT(third, SBSECRETS_STATE_USED_CHAIR + numActions);
        EXPECT_NE(first, third);
        EXPECT_NE(second, third);
    }
    ResetTasks();
    DeactivateAllTextPrinters();
    InitFieldMessageBox();
    ResetTVShowState();
    FreeAllWindowBuffers();
    gFonts = savedFonts;
}
