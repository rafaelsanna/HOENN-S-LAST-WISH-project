#include "global.h"
#include "debug.h"
#include "event_data.h"
#include "hall_of_fame.h"
#include "malloc.h"
#include "option_menu.h"
#include "randomizer.h"
#include "save.h"
#include "string_util.h"
#include "text.h"
#include "trainer_card.h"
#include "window.h"
#include "test/test.h"
#include "constants/characters.h"
#include "constants/rgb.h"

static void ResetChaosHistory(void)
{
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_CASUAL;
    FlagClear(FLAG_RANDOMIZER_FULL_CHAOS);
    FlagClear(FLAG_RANDOMIZER_CHAOS_TRAINERS);
    FlagClear(RANDOMIZER_FLAG_WILD_MON);
    FlagClear(RANDOMIZER_FLAG_FULL_WILD_MON);
    FlagClear(RANDOMIZER_FLAG_TRAINER_MON);
    FlagClear(FLAG_USED_CHAOS_RANDOM);
    FlagClear(FLAG_USED_CHAOS_TRAINERS);
}

TEST("Chaos history: No and cancel do not mark or change modes and Yes confirms each first activation")
{
    bool8 trainers;
    PARAMETRIZE { trainers = FALSE; }
    PARAMETRIZE { trainers = TRUE; }
    ResetChaosHistory();
    u8 trainerId[sizeof(gSaveBlock2Ptr->playerTrainerId)];
    memcpy(trainerId, gSaveBlock2Ptr->playerTrainerId, sizeof(trainerId));
    Randomizer_SetWildModes(TRUE, FALSE);
    Randomizer_SetTrainerMode(TRUE);
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(trainers), TRUE);
    EXPECT_EQ(Debug_TestConfirmChaos(trainers, FALSE), FALSE);
    EXPECT_EQ(Randomizer_WildEnabled(), TRUE);
    EXPECT_EQ(Randomizer_TrainerEnabled(), TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), FALSE);
    EXPECT_EQ(TrainerCard_TestHasChaosMark(), FALSE);
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(trainers), TRUE);
    EXPECT_EQ(Debug_TestConfirmChaos(trainers, TRUE), TRUE);
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(trainers), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), !trainers);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), trainers);
    EXPECT_EQ(TrainerCard_TestHasChaosMark(), TRUE);
    EXPECT_EQ(memcmp(trainerId, gSaveBlock2Ptr->playerTrainerId, sizeof(trainerId)), 0);
    Randomizer_SetChaosMode(FALSE);
    Randomizer_SetChaosTrainersMode(FALSE);
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(trainers), FALSE);
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(!trainers), TRUE);
    ResetChaosHistory();
}

TEST("Chaos history: both permanent marks survive disabling switching regional modes and entering Hard")
{
    ResetChaosHistory();
    Randomizer_SetChaosMode(TRUE);
    Randomizer_SetChaosTrainersMode(TRUE);
    Randomizer_SetWildModes(TRUE, FALSE);
    Randomizer_SetTrainerMode(TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), TRUE);
    bool8 selections[] = {TRUE, FALSE, TRUE}, canToggle[3];
    OptionMenu_TestRandomizerRules(TRUE, 0, selections, canToggle);
    EXPECT_EQ(Randomizer_ChaosEnabled(), FALSE);
    EXPECT_EQ(Randomizer_ChaosTrainersEnabled(), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), TRUE);
    EXPECT_EQ(TrainerCard_TestHasChaosMark(), TRUE);
    // Both markers are ordinary persistent bits in the unchanged custom bank.
    u8 flags[sizeof(gHlwSaveBlock4.customFlags)];
    memcpy(flags, gHlwSaveBlock4.customFlags, sizeof(flags));
    FlagClear(FLAG_USED_CHAOS_RANDOM);
    FlagClear(FLAG_USED_CHAOS_TRAINERS);
    memcpy(gHlwSaveBlock4.customFlags, flags, sizeof(flags));
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), TRUE);
    ResetChaosHistory();
}

TEST("Chaos history: Hard refuses Yes and regional randomizers never create a Chaos mark")
{
    ResetChaosHistory();
    Randomizer_SetWildModes(FALSE, TRUE);
    Randomizer_SetTrainerMode(TRUE);
    Randomizer_RecordActiveChaosUsage();
    EXPECT_EQ(TrainerCard_TestHasChaosMark(), FALSE);
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_HARD;
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(FALSE), FALSE);
    EXPECT_EQ(Debug_TestChaosNeedsConfirmation(TRUE), FALSE);
    EXPECT_EQ(Debug_TestConfirmChaos(FALSE, TRUE), FALSE);
    EXPECT_EQ(Debug_TestConfirmChaos(TRUE, TRUE), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), FALSE);
    ResetChaosHistory();
}

TEST("Chaos history: valid already-active older saves migrate but stale Hard flags are not evidence of use")
{
    ResetChaosHistory();
    FlagSet(FLAG_RANDOMIZER_FULL_CHAOS);
    FlagSet(FLAG_RANDOMIZER_CHAOS_TRAINERS);
    Randomizer_RecordActiveChaosUsage();
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), TRUE);
    ResetChaosHistory();
    FlagSet(FLAG_RANDOMIZER_FULL_CHAOS);
    FlagSet(FLAG_RANDOMIZER_CHAOS_TRAINERS);
    gSaveBlock2Ptr->optionsNpcTeams = OPTIONS_NPCTEAMS_HARD;
    Randomizer_RecordActiveChaosUsage();
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), FALSE);
    ResetChaosHistory();
}

TEST("Chaos history: Hall of Fame labels each mode separately in the existing white-text row after disabling")
{
    u8 bits;
    PARAMETRIZE { bits = 0; }
    PARAMETRIZE { bits = 1; }
    PARAMETRIZE { bits = 2; }
    PARAMETRIZE { bits = 3; }
    u8 text[64];
    ResetChaosHistory();
    if (bits & 1) Randomizer_SetChaosMode(TRUE);
    if (bits & 2) Randomizer_SetChaosTrainersMode(TRUE);
    Randomizer_SetChaosMode(FALSE);
    Randomizer_SetChaosTrainersMode(FALSE);
    HallOfFame_FormatRandomizerStatus(text);
    const u8 *expected[] =
    {
        COMPOUND_STRING("Random Wilds: Off - Random Trainers: Off"),
        COMPOUND_STRING("Random Wilds: Chaos - Random Trainers: Off"),
        COMPOUND_STRING("Random Wilds: Off - Random Trainers: Chaos"),
        COMPOUND_STRING("Random Wilds: Chaos - Random Trainers: Chaos"),
    };
    EXPECT_EQ(StringCompare(text, expected[bits]), 0);
    EXPECT(GetStringWidth(FONT_SMALL_NARROW, text, 0) <= 208);
    // No embedded red/color overrides: use the same palette as the other lines.
    for (const u8 *ch = text; *ch != EOS; ch++)
        EXPECT(*ch != EXT_CTRL_CODE_BEGIN);
    ResetChaosHistory();
}

TEST("Chaos history: original indexed marker uses its white black palette and keeps all 48x48 tiles uncropped")
{
    const u8 *source = TrainerCard_TestChaosMarkGfx();
    const u16 *palette = TrainerCard_TestChaosMarkPalette();
    EXPECT_EQ(palette[1], RGB_WHITE);
    EXPECT_EQ(palette[2], RGB_BLACK);
    u8 *frame = Alloc(64 * 64 / 2);
    EXPECT(frame != NULL);
    TrainerCard_BuildChaosMarkTiles(frame);
    for (u32 row = 0; row < 8; row++)
        for (u32 col = 0; col < 8; col++)
        {
            const u8 *tile = frame + (row * 8 + col) * TILE_SIZE_4BPP;
            if (row < 6 && col < 6)
                EXPECT_EQ(memcmp(tile, source + (row * 6 + col) * TILE_SIZE_4BPP, TILE_SIZE_4BPP), 0);
            else
                for (u32 byte = 0; byte < TILE_SIZE_4BPP; byte++)
                    EXPECT_EQ(tile[byte], 0);
        }
    Free(frame);
}

static const struct WindowTemplate sChaosPromptTestWindows[] =
{
    {.bg = 0, .width = 26, .height = 18},
    DUMMY_WIN_TEMPLATE,
};

TEST("Chaos history: the Yes No permanent-ID warning fits and draws without altering any history")
{
    const struct FontInfo *savedFonts = gFonts;
    SetDefaultFontsPointer();
    ResetChaosHistory();
    EXPECT(InitWindows(sChaosPromptTestWindows));
    EXPECT(GetStringWidth(FONT_NORMAL, Debug_TestChaosConfirmationText(), 0) <= 200);
    EXPECT(GetStringWidth(FONT_NORMAL, COMPOUND_STRING("{RIGHT_ARROW} YES   NO"), 0) <= 100);
    Debug_TestDrawChaosConfirmation(0, FALSE);
    Debug_TestDrawChaosConfirmation(0, TRUE);
    EXPECT_EQ(Randomizer_HasUsedChaosWild(), FALSE);
    EXPECT_EQ(Randomizer_HasUsedChaosTrainers(), FALSE);
    FreeAllWindowBuffers();
    gFonts = savedFonts;
}
