#include "global.h"
#include "bg.h"
#include "event_data.h"
#include "gpu_regs.h"
#include "main.h"
#include "malloc.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "script.h"
#include "text.h"
#include "window.h"

#include "constants/rgb.h"

// ============================================================================
// HLW PETALBURG GYM QUESTION BOOK
//
// One-page question scene:
//   left page  = question
//   right page = answer choices + cursor
//
// Script entry points:
//   HLW_StartGymQuestionParker
//   HLW_StartGymQuestionMary
//   HLW_StartGymQuestionGeorge
//   HLW_StartGymQuestionAlexia
//   HLW_StartGymQuestionBerke
//   HLW_StartGymQuestionJody
//
// Result:
//   writes the selected zero-based option index to VAR_RESULT via
//   gSpecialVar_Result, preserving the old multichoice branch logic.
//
// Controls:
//   DPAD UP/DOWN = move cursor
//   A             = choose
//   B             = "Answer later"
// ============================================================================

#define GYM_Q_BG_ID              2
#define GYM_Q_BG_CHARBASE        0
#define GYM_Q_BG_MAPBASE         30
#define GYM_Q_BG_PRIORITY        2

#define GYM_Q_TEXT_BG_ID         0
#define GYM_Q_TEXT_CHARBASE      2
#define GYM_Q_TEXT_MAPBASE       31
#define GYM_Q_TEXT_PRIORITY      0
#define GYM_Q_TEXT_PAL           15

#define GYM_Q_MAP_W              30
#define GYM_Q_MAP_H              20
#define GYM_Q_HW_MAP_W           32
#define GYM_Q_HW_MAP_H           32

#define GYM_Q_LEFT_TEXT_X        0
#define GYM_Q_LEFT_TEXT_Y        4

#define GYM_Q_OPTION_CURSOR_X    2
#define GYM_Q_OPTION_TEXT_X      14
#define GYM_Q_OPTION_FIRST_Y     2
#define GYM_Q_OPTION_SPACING_Y   16

enum GymQuestionWindow
{
    WIN_GYM_Q_QUESTION,
    WIN_GYM_Q_OPTIONS,
};

enum GymQuestionId
{
    GYM_Q_PARKER,
    GYM_Q_MARY,
    GYM_Q_GEORGE,
    GYM_Q_ALEXIA,
    GYM_Q_BERKE,
    GYM_Q_JODY,
    GYM_Q_COUNT,
};

enum GymQuestionState
{
    GYM_Q_STATE_FADE_IN,
    GYM_Q_STATE_INPUT,
    GYM_Q_STATE_FADE_OUT,
    GYM_Q_STATE_RETURN_FIELD,
};

struct GymQuestionDef
{
    const u8 *question;
    const u8 *const *options;
    u8 optionCount;
    u8 laterIndex;
};

struct GymQuestionScene
{
    u8 state;
    u8 questionId;
    u8 cursor;
    void *bg0TilemapBuffer;
};

static EWRAM_DATA struct GymQuestionScene *sGymQuestion = NULL;

// Preserve the chosen answer across the scene -> overworld transition.
// The script fetches it explicitly after the field is restored.
static EWRAM_DATA u8 sGymQuestionLastResult = 0;
static EWRAM_DATA bool8 sGymQuestionHasResult = FALSE;

// ---------------------------------------------------------------------------
// Assets
// ---------------------------------------------------------------------------

static const u32 sGymQuestionTiles[] =
    INCBIN_U32("graphics/gym_question_book/bookquestion.4bpp");

static const u16 sGymQuestionTilemap30x20[] =
    INCBIN_U16("graphics/gym_question_book/bookquestion.bin");

static const u16 sGymQuestionPalette[] =
    INCBIN_U16("graphics/gym_question_book/bookquestion.gbapal");

// Transparent text palette:
// 1 = near black, 2 = soft gray shadow, 3 = red cursor.
static const u16 sGymQuestionTextPalette[16] =
{
    [0] = RGB(0, 0, 0),
    [1] = RGB(3, 3, 3),
    [2] = RGB(18, 18, 18),
    [3] = RGB(31, 4, 4),
};

static const u8 sGymQuestionTextColors[] =
{
    0,
    1,
    2,
};

static const u8 sGymQuestionCursorColors[] =
{
    0,
    3,
    2,
};

static const u8 sGymCursorText[] = _(">");
static const u8 sGymBlankCursorText[] = _(" ");

// ---------------------------------------------------------------------------
// Questions
// ---------------------------------------------------------------------------

// Parker — old correct result: 0 (TRUE), later result: 2.
static const u8 sGymQuestionParker[] =
    _("True or false?\n"
      "CALENDULA's first\n"
      "partner was\n"
      "an EEVEE.");

static const u8 sOptionTrue[]        = _("True");
static const u8 sOptionFalse[]       = _("False");
static const u8 sOptionAnswerLater[] = _("Answer later");

static const u8 *const sOptionsTrueFalseLater[] =
{
    sOptionTrue,
    sOptionFalse,
    sOptionAnswerLater,
};

// Mary — old correct result: 2 (18 TYPES), later result: 4.
static const u8 sGymQuestionMary[] =
    _("Research check!\n"
      "How many POKéMON\n"
      "types are known\n"
      "today?");

static const u8 sOption16Types[] = _("16 types");
static const u8 sOption17Types[] = _("17 types");
static const u8 sOption18Types[] = _("18 types");
static const u8 sOption19Types[] = _("19 types");

static const u8 *const sOptionsTypes[] =
{
    sOption16Types,
    sOption17Types,
    sOption18Types,
    sOption19Types,
    sOptionAnswerLater,
};

// George — Steel dual-type resistance question.
// Ignore abilities, and do NOT count immunities as resistances.
// Standard modern type chart:
//   ELECTRIC/STEEL = 11 resisted attacking types
//   WATER/STEEL    = 10
//   PSYCHIC/STEEL  = 9
//   ROCK/STEEL     = 8
// ELECTRIC/STEEL is therefore the unique highest answer.
static const u8 sGymQuestionGeorge[] =
    _("Ignore abilities.\n"
      "Which STEEL dual\n"
      "type resists the\n"
      "most attack types?\n"
      "Ignore immunities.");

static const u8 sOptionElectricSteel[] = _("ELECTRIC/STEEL");
static const u8 sOptionWaterSteel[]    = _("WATER/STEEL");
static const u8 sOptionPsychicSteel[]  = _("PSYCHIC/STEEL");
static const u8 sOptionRockSteel[]     = _("ROCK/STEEL");

static const u8 *const sOptionsSteelResistances[] =
{
    sOptionElectricSteel,
    sOptionWaterSteel,
    sOptionPsychicSteel,
    sOptionRockSteel,
    sOptionAnswerLater,
};

// Alexia — Shedinja type-chart question.
// Ignoring abilities and other effects, BUG/GHOST is weak to exactly
// five attacking types: FIRE, FLYING, ROCK, GHOST, and DARK.
static const u8 sGymQuestionAlexia[] =
    _("Ignoring abilities,\n"
      "SHEDINJA is weak\n"
      "to how many attack\n"
      "types?");

static const u8 sOption4Types[] = _("4 types");
static const u8 sOption5Types[] = _("5 types");
static const u8 sOption6Types[] = _("6 types");
static const u8 sOption7Types[] = _("7 types");

static const u8 *const sOptionsShedinjaWeakness[] =
{
    sOption4Types,
    sOption5Types,
    sOption6Types,
    sOption7Types,
    sOptionAnswerLater,
};

// Berke — dual-type immunity question.
// Ignoring abilities and other effects:
//   NORMAL/GHOST  = 3 immunities (NORMAL, FIGHTING, GHOST)
//   GROUND/FLYING = 2 immunities (ELECTRIC, GROUND)
//   DARK/STEEL    = 2 immunities (PSYCHIC, POISON)
//   FAIRY/STEEL   = 2 immunities (DRAGON, POISON)
// NORMAL/GHOST is therefore the unique correct answer among these options.
static const u8 sGymQuestionBerke[] =
    _("Ignore abilities.\n"
      "Which dual type\n"
      "has the most type\n"
      "immunities?");

static const u8 sOptionGroundFlying[] = _("GROUND/FLYING");
static const u8 sOptionDarkSteel[]    = _("DARK/STEEL");
static const u8 sOptionNormalGhost[]  = _("NORMAL/GHOST");
static const u8 sOptionFairySteel[]   = _("FAIRY/STEEL");

static const u8 *const sOptionsTypeImmunities[] =
{
    sOptionGroundFlying,
    sOptionDarkSteel,
    sOptionNormalGhost,
    sOptionFairySteel,
    sOptionAnswerLater,
};

// Jody — old correct result: 1 (FALSE), later result: 2.
// Jody — Chansey + Eviolite mechanics question.
// All four attacks are special-category moves. PSYSHOCK is the exception
// because it calculates damage using the target's physical DEFENSE.
static const u8 sGymQuestionJody[] =
    _("You face a CHANSEY\n"
      "holding EVIOLITE.\n"
      "Which special move\n"
      "hits its physical\n"
      "DEFENSE?");

static const u8 sOptionBlizzard[]  = _("BLIZZARD");
static const u8 sOptionFireBlast[] = _("FIRE BLAST");
static const u8 sOptionThunder[]   = _("THUNDER");
static const u8 sOptionPsyshock[]  = _("PSYSHOCK");

static const u8 *const sOptionsChanseyEviolite[] =
{
    sOptionBlizzard,
    sOptionFireBlast,
    sOptionThunder,
    sOptionPsyshock,
    sOptionAnswerLater,
};

static const struct GymQuestionDef sGymQuestions[GYM_Q_COUNT] =
{
    [GYM_Q_PARKER] =
    {
        .question = sGymQuestionParker,
        .options = sOptionsTrueFalseLater,
        .optionCount = ARRAY_COUNT(sOptionsTrueFalseLater),
        .laterIndex = 2,
    },
    [GYM_Q_MARY] =
    {
        .question = sGymQuestionMary,
        .options = sOptionsTypes,
        .optionCount = ARRAY_COUNT(sOptionsTypes),
        .laterIndex = 4,
    },
    [GYM_Q_GEORGE] =
    {
        .question = sGymQuestionGeorge,
        .options = sOptionsSteelResistances,
        .optionCount = ARRAY_COUNT(sOptionsSteelResistances),
        // Fifth visible entry is "Answer later"; B selects the same result.
        .laterIndex = 4,
    },
    [GYM_Q_ALEXIA] =
    {
        .question = sGymQuestionAlexia,
        .options = sOptionsShedinjaWeakness,
        .optionCount = ARRAY_COUNT(sOptionsShedinjaWeakness),
        // Fifth visible option is Answer later; B selects the same result.
        .laterIndex = 4,
    },
    [GYM_Q_BERKE] =
    {
        .question = sGymQuestionBerke,
        .options = sOptionsTypeImmunities,
        .optionCount = ARRAY_COUNT(sOptionsTypeImmunities),
        // Fifth visible option is Answer later; B selects the same result.
        .laterIndex = 4,
    },
    [GYM_Q_JODY] =
    {
        .question = sGymQuestionJody,
        .options = sOptionsChanseyEviolite,
        .optionCount = ARRAY_COUNT(sOptionsChanseyEviolite),
        .laterIndex = 4,
    },
};

// ---------------------------------------------------------------------------
// BG / windows
// ---------------------------------------------------------------------------

static const struct BgTemplate sGymQuestionBgTemplates[] =
{
    {
        .bg = GYM_Q_TEXT_BG_ID,
        .charBaseIndex = GYM_Q_TEXT_CHARBASE,
        .mapBaseIndex = GYM_Q_TEXT_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = GYM_Q_TEXT_PRIORITY,
        .baseTile = 0,
    },
    {
        .bg = GYM_Q_BG_ID,
        .charBaseIndex = GYM_Q_BG_CHARBASE,
        .mapBaseIndex = GYM_Q_BG_MAPBASE,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = GYM_Q_BG_PRIORITY,
        .baseTile = 0,
    },
};

static const struct WindowTemplate sGymQuestionWindowTemplates[] =
{
    [WIN_GYM_Q_QUESTION] =
    {
        .bg = GYM_Q_TEXT_BG_ID,
        .tilemapLeft = 3,  // x = 24
        .tilemapTop = 5,   // y = 40
        .width = 11,       // 88 px; stops before the center binding
        .height = 9,       // 72 px
        .paletteNum = GYM_Q_TEXT_PAL,
        .baseBlock = 1,
    },
    [WIN_GYM_Q_OPTIONS] =
    {
        .bg = GYM_Q_TEXT_BG_ID,
        .tilemapLeft = 16, // x = 128
        .tilemapTop = 5,   // y = 40
        .width = 12,       // 96 px
        .height = 11,      // 88 px
        .paletteNum = GYM_Q_TEXT_PAL,
        .baseBlock = 100,  // question uses blocks 1..90
    },
    DUMMY_WIN_TEMPLATE,
};

// ---------------------------------------------------------------------------
// Forward declarations
// ---------------------------------------------------------------------------

static void CB2_InitGymQuestion(void);
static void CB2_GymQuestion(void);
static void VBlankCB_GymQuestion(void);

static void GymQuestion_LoadBackground(void);
static void GymQuestion_Draw(void);
static void GymQuestion_BeginExit(u8 result);
static void GymQuestion_CleanupAndReturnToField(void);
static void GymQuestion_Start(enum GymQuestionId questionId);

// ---------------------------------------------------------------------------
// Drawing
// ---------------------------------------------------------------------------

static void GymQuestion_LoadBackground(void)
{
    u32 x;
    u32 y;
    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(GYM_Q_BG_MAPBASE);

    LoadBgTiles(
        GYM_Q_BG_ID,
        sGymQuestionTiles,
        sizeof(sGymQuestionTiles),
        0
    );

    LoadPalette(
        sGymQuestionPalette,
        BG_PLTT_ID(0),
        PLTT_SIZE_4BPP
    );

    for (y = 0; y < GYM_Q_HW_MAP_H; y++)
    {
        for (x = 0; x < GYM_Q_HW_MAP_W; x++)
            dst[y * GYM_Q_HW_MAP_W + x] = 0;
    }

    for (y = 0; y < GYM_Q_MAP_H; y++)
    {
        for (x = 0; x < GYM_Q_MAP_W; x++)
        {
            dst[y * GYM_Q_HW_MAP_W + x] =
                sGymQuestionTilemap30x20[y * GYM_Q_MAP_W + x];
        }
    }
}

static void GymQuestion_Draw(void)
{
    const struct GymQuestionDef *question;
    u32 i;

    if (sGymQuestion == NULL)
        return;

    question = &sGymQuestions[sGymQuestion->questionId];

    FillWindowPixelBuffer(WIN_GYM_Q_QUESTION, PIXEL_FILL(0));
    FillWindowPixelBuffer(WIN_GYM_Q_OPTIONS, PIXEL_FILL(0));

    AddTextPrinterParameterized4(
        WIN_GYM_Q_QUESTION,
        FONT_SMALL,
        GYM_Q_LEFT_TEXT_X,
        GYM_Q_LEFT_TEXT_Y,
        0,
        0,
        sGymQuestionTextColors,
        TEXT_SKIP_DRAW,
        question->question
    );

    for (i = 0; i < question->optionCount; i++)
    {
        u32 y = GYM_Q_OPTION_FIRST_Y + i * GYM_Q_OPTION_SPACING_Y;

        AddTextPrinterParameterized4(
            WIN_GYM_Q_OPTIONS,
            FONT_SMALL,
            GYM_Q_OPTION_CURSOR_X,
            y,
            0,
            0,
            (i == sGymQuestion->cursor)
                ? sGymQuestionCursorColors
                : sGymQuestionTextColors,
            TEXT_SKIP_DRAW,
            (i == sGymQuestion->cursor)
                ? sGymCursorText
                : sGymBlankCursorText
        );

        AddTextPrinterParameterized4(
            WIN_GYM_Q_OPTIONS,
            FONT_SMALL,
            GYM_Q_OPTION_TEXT_X,
            y,
            0,
            0,
            sGymQuestionTextColors,
            TEXT_SKIP_DRAW,
            question->options[i]
        );
    }

    PutWindowTilemap(WIN_GYM_Q_QUESTION);
    PutWindowTilemap(WIN_GYM_Q_OPTIONS);
    CopyWindowToVram(WIN_GYM_Q_QUESTION, COPYWIN_FULL);
    CopyWindowToVram(WIN_GYM_Q_OPTIONS, COPYWIN_FULL);
}

// ---------------------------------------------------------------------------
// Exit / return
// ---------------------------------------------------------------------------

static void GymQuestion_BeginExit(u8 result)
{
    if (sGymQuestion == NULL)
        return;

    sGymQuestionLastResult = result;
    sGymQuestionHasResult = TRUE;
    gSpecialVar_Result = result;

    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sGymQuestion->state = GYM_Q_STATE_FADE_OUT;
}

static void GymQuestion_CleanupAndReturnToField(void)
{
    if (sGymQuestion == NULL)
        return;

    SetVBlankCallback(NULL);

    HideBg(GYM_Q_TEXT_BG_ID);
    HideBg(GYM_Q_BG_ID);

    FreeAllWindowBuffers();

    if (sGymQuestion->bg0TilemapBuffer != NULL)
    {
        UnsetBgTilemapBuffer(GYM_Q_TEXT_BG_ID);
        Free(sGymQuestion->bg0TilemapBuffer);
        sGymQuestion->bg0TilemapBuffer = NULL;
    }

    ResetBgsAndClearDma3BusyFlags(0);

    Free(sGymQuestion);
    sGymQuestion = NULL;

    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

// ---------------------------------------------------------------------------
// Callbacks
// ---------------------------------------------------------------------------

static void VBlankCB_GymQuestion(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_GymQuestion(void)
{
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);

    // The question book uses only BGs/windows. Disable OBJ rendering so
    // overworld NPC/player sprites cannot appear on top of the pages.
    SetGpuReg(
        REG_OFFSET_DISPCNT,
        GetGpuReg(REG_OFFSET_DISPCNT) & ~DISPCNT_OBJ_ON
    );

    if (sGymQuestion == NULL)
        return;

    switch (sGymQuestion->state)
    {
    case GYM_Q_STATE_FADE_IN:
        if (!gPaletteFade.active)
            sGymQuestion->state = GYM_Q_STATE_INPUT;
        break;

    case GYM_Q_STATE_INPUT:
    {
        const struct GymQuestionDef *question =
            &sGymQuestions[sGymQuestion->questionId];

        if (JOY_NEW(DPAD_UP))
        {
            if (sGymQuestion->cursor == 0)
                sGymQuestion->cursor = question->optionCount - 1;
            else
                sGymQuestion->cursor--;

            GymQuestion_Draw();
        }
        else if (JOY_NEW(DPAD_DOWN))
        {
            sGymQuestion->cursor++;

            if (sGymQuestion->cursor >= question->optionCount)
                sGymQuestion->cursor = 0;

            GymQuestion_Draw();
        }
        else if (JOY_NEW(A_BUTTON))
        {
            GymQuestion_BeginExit(sGymQuestion->cursor);
        }
        else if (JOY_NEW(B_BUTTON))
        {
            GymQuestion_BeginExit(question->laterIndex);
        }
        break;
    }

    case GYM_Q_STATE_FADE_OUT:
        if (!gPaletteFade.active)
            sGymQuestion->state = GYM_Q_STATE_RETURN_FIELD;
        break;

    case GYM_Q_STATE_RETURN_FIELD:
        GymQuestion_CleanupAndReturnToField();
        break;
    }
}

static void CB2_InitGymQuestion(void)
{
    SetVBlankCallback(NULL);

    if (sGymQuestion == NULL)
    {
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        return;
    }

    ResetPaletteFade();
    FreeAllWindowBuffers();
    ResetBgsAndClearDma3BusyFlags(0);

    InitBgsFromTemplates(
        0,
        sGymQuestionBgTemplates,
        ARRAY_COUNT(sGymQuestionBgTemplates)
    );

    sGymQuestion->bg0TilemapBuffer = AllocZeroed(BG_SCREEN_SIZE);

    if (sGymQuestion->bg0TilemapBuffer == NULL)
    {
        Free(sGymQuestion);
        sGymQuestion = NULL;
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        return;
    }

    SetBgTilemapBuffer(
        GYM_Q_TEXT_BG_ID,
        sGymQuestion->bg0TilemapBuffer
    );

    InitWindows(sGymQuestionWindowTemplates);
    DeactivateAllTextPrinters();

    LoadPalette(
        sGymQuestionTextPalette,
        BG_PLTT_ID(GYM_Q_TEXT_PAL),
        PLTT_SIZE_4BPP
    );

    GymQuestion_LoadBackground();
    GymQuestion_Draw();

    ShowBg(GYM_Q_BG_ID);
    ShowBg(GYM_Q_TEXT_BG_ID);

    // No sprites are needed in this scene. Hide the field's OBJ layer
    // immediately; CB2_GymQuestion keeps it disabled until we return.
    SetGpuReg(
        REG_OFFSET_DISPCNT,
        GetGpuReg(REG_OFFSET_DISPCNT) & ~DISPCNT_OBJ_ON
    );

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);

    SetVBlankCallback(VBlankCB_GymQuestion);
    SetMainCallback2(CB2_GymQuestion);

    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    sGymQuestion->state = GYM_Q_STATE_FADE_IN;
}

// ---------------------------------------------------------------------------
// Script API
// ---------------------------------------------------------------------------

static void GymQuestion_Start(enum GymQuestionId questionId)
{
    if (sGymQuestion != NULL || questionId >= GYM_Q_COUNT)
        return;

    sGymQuestion = AllocZeroed(sizeof(*sGymQuestion));

    if (sGymQuestion == NULL)
        return;

    sGymQuestion->questionId = questionId;
    sGymQuestion->cursor = 0;

    gMain.state = 0;
    SetMainCallback2(CB2_InitGymQuestion);
}

void HLW_GetGymQuestionResult(struct ScriptContext *ctx)
{
    (void)ctx;

    if (sGymQuestionHasResult)
    {
        gSpecialVar_Result = sGymQuestionLastResult;
        sGymQuestionHasResult = FALSE;
    }
}

void HLW_StartGymQuestionParker(struct ScriptContext *ctx)
{
    (void)ctx;
    GymQuestion_Start(GYM_Q_PARKER);
}

void HLW_StartGymQuestionMary(struct ScriptContext *ctx)
{
    (void)ctx;
    GymQuestion_Start(GYM_Q_MARY);
}

void HLW_StartGymQuestionGeorge(struct ScriptContext *ctx)
{
    (void)ctx;
    GymQuestion_Start(GYM_Q_GEORGE);
}

void HLW_StartGymQuestionAlexia(struct ScriptContext *ctx)
{
    (void)ctx;
    GymQuestion_Start(GYM_Q_ALEXIA);
}

void HLW_StartGymQuestionBerke(struct ScriptContext *ctx)
{
    (void)ctx;
    GymQuestion_Start(GYM_Q_BERKE);
}

void HLW_StartGymQuestionJody(struct ScriptContext *ctx)
{
    (void)ctx;
    GymQuestion_Start(GYM_Q_JODY);
}


// ============================================================================
// HLW PETALBURG GYM STUDY BOOKS
//
// Read-only books placed in the gym library.
// Left page  = a useful clue for one quiz topic.
// Right page = related battle knowledge / explanation.
// A or B closes the book.
//
// These intentionally teach the mechanic without formatting the page as
// "Question -> Answer". The player can study first, then answer the NPC quiz.
// ============================================================================

enum GymStudyBookId
{
    GYM_STUDY_PARKER,
    GYM_STUDY_MARY,
    GYM_STUDY_GEORGE,
    GYM_STUDY_ALEXIA,
    GYM_STUDY_BERKE,
    GYM_STUDY_JODY,
    GYM_STUDY_COUNT,
};

enum GymStudyBookWindow
{
    WIN_GYM_STUDY_LEFT,
    WIN_GYM_STUDY_RIGHT,
};

enum GymStudyBookState
{
    GYM_STUDY_STATE_FADE_IN,
    GYM_STUDY_STATE_WAIT_INPUT,
    GYM_STUDY_STATE_FADE_OUT,
    GYM_STUDY_STATE_RETURN_FIELD,
};

struct GymStudyBookPage
{
    const u8 *left;
    const u8 *right;
};

struct GymStudyBookScene
{
    u8 state;
    u8 pageId;
    void *bg0TilemapBuffer;
};

static EWRAM_DATA struct GymStudyBookScene *sGymStudyBook = NULL;

// ---------------------------------------------------------------------------
// Study text
// ---------------------------------------------------------------------------

// Parker / CALENDULA
static const u8 sGymStudyParkerLeft[] =
    _("CALENDULA's earliest\n"
      "field notes mention\n"
      "an EEVEE traveling\n"
      "beside her from\n"
      "the very beginning.");

static const u8 sGymStudyParkerRight[] =
    _("EEVEE is famous for\n"
      "its adaptability.\n"
      "Its unstable genes\n"
      "can lead to many\n"
      "different evolutions.");

// Mary / type count
static const u8 sGymStudyMaryLeft[] =
    _("Modern research\n"
      "recognizes eighteen\n"
      "different POKéMON\n"
      "types.");

static const u8 sGymStudyMaryRight[] =
    _("A POKéMON may have\n"
      "one or two types.\n"
      "Dual typings combine\n"
      "the matchups of\n"
      "both types.");

// George / Steel resistances
static const u8 sGymStudyGeorgeLeft[] =
    _("Among STEEL pairings,\n"
      "ELECTRIC/STEEL is\n"
      "known for resisting\n"
      "an exceptional range\n"
      "of attacks.");

static const u8 sGymStudyGeorgeRight[] =
    _("Resistance reduces\n"
      "damage. Immunity means\n"
      "a type deals no damage.\n"
      "Do not count those\n"
      "as the same thing.");

// Alexia / Shedinja weaknesses
static const u8 sGymStudyAlexiaLeft[] =
    _("BUG/GHOST fears FIRE,\n"
      "FLYING, ROCK, GHOST,\n"
      "and DARK attacks on\n"
      "the type chart.");

static const u8 sGymStudyAlexiaRight[] =
    _("Abilities may change\n"
      "battle interactions,\n"
      "but type weaknesses\n"
      "still come from the\n"
      "type chart itself.");

// Berke / immunities
static const u8 sGymStudyBerkeLeft[] =
    _("NORMAL/GHOST ignores\n"
      "NORMAL, FIGHTING,\n"
      "and GHOST attacks\n"
      "by type alone.");

static const u8 sGymStudyBerkeRight[] =
    _("An immunity from\n"
      "either half of a dual\n"
      "typing can cancel an\n"
      "attack completely.");

// Jody / Psyshock
static const u8 sGymStudyJodyLeft[] =
    _("PSYSHOCK is a special\n"
      "move, yet its damage\n"
      "uses the target's\n"
      "physical DEFENSE.");

static const u8 sGymStudyJodyRight[] =
    _("Usually, physical\n"
      "moves test DEFENSE and\n"
      "special moves test\n"
      "SP. DEF. Some moves\n"
      "break that rule.");

static const struct GymStudyBookPage sGymStudyPages[GYM_STUDY_COUNT] =
{
    [GYM_STUDY_PARKER] =
    {
        .left = sGymStudyParkerLeft,
        .right = sGymStudyParkerRight,
    },
    [GYM_STUDY_MARY] =
    {
        .left = sGymStudyMaryLeft,
        .right = sGymStudyMaryRight,
    },
    [GYM_STUDY_GEORGE] =
    {
        .left = sGymStudyGeorgeLeft,
        .right = sGymStudyGeorgeRight,
    },
    [GYM_STUDY_ALEXIA] =
    {
        .left = sGymStudyAlexiaLeft,
        .right = sGymStudyAlexiaRight,
    },
    [GYM_STUDY_BERKE] =
    {
        .left = sGymStudyBerkeLeft,
        .right = sGymStudyBerkeRight,
    },
    [GYM_STUDY_JODY] =
    {
        .left = sGymStudyJodyLeft,
        .right = sGymStudyJodyRight,
    },
};

// ---------------------------------------------------------------------------
// Study-book windows
// ---------------------------------------------------------------------------

static const struct WindowTemplate sGymStudyWindowTemplates[] =
{
    [WIN_GYM_STUDY_LEFT] =
    {
        .bg = GYM_Q_TEXT_BG_ID,
        .tilemapLeft = 3,  // x = 24
        .tilemapTop = 4,   // y = 32
        .width = 11,       // 88 px
        .height = 11,      // 88 px
        .paletteNum = GYM_Q_TEXT_PAL,
        .baseBlock = 1,
    },
    [WIN_GYM_STUDY_RIGHT] =
    {
        .bg = GYM_Q_TEXT_BG_ID,
        .tilemapLeft = 16, // x = 128
        .tilemapTop = 4,   // y = 32
        .width = 12,       // 96 px
        .height = 11,      // 88 px
        .paletteNum = GYM_Q_TEXT_PAL,
        .baseBlock = 130,
    },
    DUMMY_WIN_TEMPLATE,
};

static void CB2_InitGymStudyBook(void);
static void CB2_GymStudyBook(void);
static void VBlankCB_GymStudyBook(void);
static void GymStudyBook_Draw(void);
static void GymStudyBook_BeginExit(void);
static void GymStudyBook_CleanupAndReturnToField(void);
static void GymStudyBook_Start(enum GymStudyBookId pageId);

static void GymStudyBook_Draw(void)
{
    const struct GymStudyBookPage *page;

    if (sGymStudyBook == NULL)
        return;

    page = &sGymStudyPages[sGymStudyBook->pageId];

    FillWindowPixelBuffer(WIN_GYM_STUDY_LEFT, PIXEL_FILL(0));
    FillWindowPixelBuffer(WIN_GYM_STUDY_RIGHT, PIXEL_FILL(0));

    AddTextPrinterParameterized4(
        WIN_GYM_STUDY_LEFT,
        FONT_SMALL,
        0,
        4,
        0,
        0,
        sGymQuestionTextColors,
        TEXT_SKIP_DRAW,
        page->left
    );

    AddTextPrinterParameterized4(
        WIN_GYM_STUDY_RIGHT,
        FONT_SMALL,
        0,
        4,
        0,
        0,
        sGymQuestionTextColors,
        TEXT_SKIP_DRAW,
        page->right
    );

    PutWindowTilemap(WIN_GYM_STUDY_LEFT);
    PutWindowTilemap(WIN_GYM_STUDY_RIGHT);
    CopyWindowToVram(WIN_GYM_STUDY_LEFT, COPYWIN_FULL);
    CopyWindowToVram(WIN_GYM_STUDY_RIGHT, COPYWIN_FULL);
}

static void GymStudyBook_BeginExit(void)
{
    if (sGymStudyBook == NULL)
        return;

    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sGymStudyBook->state = GYM_STUDY_STATE_FADE_OUT;
}

static void GymStudyBook_CleanupAndReturnToField(void)
{
    if (sGymStudyBook == NULL)
        return;

    SetVBlankCallback(NULL);

    HideBg(GYM_Q_TEXT_BG_ID);
    HideBg(GYM_Q_BG_ID);

    FreeAllWindowBuffers();

    if (sGymStudyBook->bg0TilemapBuffer != NULL)
    {
        UnsetBgTilemapBuffer(GYM_Q_TEXT_BG_ID);
        Free(sGymStudyBook->bg0TilemapBuffer);
        sGymStudyBook->bg0TilemapBuffer = NULL;
    }

    ResetBgsAndClearDma3BusyFlags(0);

    Free(sGymStudyBook);
    sGymStudyBook = NULL;

    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

static void VBlankCB_GymStudyBook(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_GymStudyBook(void)
{
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);

    // The study book is BG/window-only. Keep map sprites hidden.
    SetGpuReg(
        REG_OFFSET_DISPCNT,
        GetGpuReg(REG_OFFSET_DISPCNT) & ~DISPCNT_OBJ_ON
    );

    if (sGymStudyBook == NULL)
        return;

    switch (sGymStudyBook->state)
    {
    case GYM_STUDY_STATE_FADE_IN:
        if (!gPaletteFade.active)
            sGymStudyBook->state = GYM_STUDY_STATE_WAIT_INPUT;
        break;

    case GYM_STUDY_STATE_WAIT_INPUT:
        if (JOY_NEW(A_BUTTON) || JOY_NEW(B_BUTTON))
            GymStudyBook_BeginExit();
        break;

    case GYM_STUDY_STATE_FADE_OUT:
        if (!gPaletteFade.active)
            sGymStudyBook->state = GYM_STUDY_STATE_RETURN_FIELD;
        break;

    case GYM_STUDY_STATE_RETURN_FIELD:
        GymStudyBook_CleanupAndReturnToField();
        break;
    }
}

static void CB2_InitGymStudyBook(void)
{
    SetVBlankCallback(NULL);

    if (sGymStudyBook == NULL)
    {
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        return;
    }

    ResetPaletteFade();
    FreeAllWindowBuffers();
    ResetBgsAndClearDma3BusyFlags(0);

    InitBgsFromTemplates(
        0,
        sGymQuestionBgTemplates,
        ARRAY_COUNT(sGymQuestionBgTemplates)
    );

    sGymStudyBook->bg0TilemapBuffer = AllocZeroed(BG_SCREEN_SIZE);

    if (sGymStudyBook->bg0TilemapBuffer == NULL)
    {
        Free(sGymStudyBook);
        sGymStudyBook = NULL;
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        return;
    }

    SetBgTilemapBuffer(
        GYM_Q_TEXT_BG_ID,
        sGymStudyBook->bg0TilemapBuffer
    );

    InitWindows(sGymStudyWindowTemplates);
    DeactivateAllTextPrinters();

    LoadPalette(
        sGymQuestionTextPalette,
        BG_PLTT_ID(GYM_Q_TEXT_PAL),
        PLTT_SIZE_4BPP
    );

    // Same authored bookquestion.png + bookquestion.bin background.
    GymQuestion_LoadBackground();
    GymStudyBook_Draw();

    ShowBg(GYM_Q_BG_ID);
    ShowBg(GYM_Q_TEXT_BG_ID);

    SetGpuReg(
        REG_OFFSET_DISPCNT,
        GetGpuReg(REG_OFFSET_DISPCNT) & ~DISPCNT_OBJ_ON
    );

    SetGpuReg(REG_OFFSET_BG0HOFS, 0);
    SetGpuReg(REG_OFFSET_BG0VOFS, 0);
    SetGpuReg(REG_OFFSET_BG2HOFS, 0);
    SetGpuReg(REG_OFFSET_BG2VOFS, 0);

    SetVBlankCallback(VBlankCB_GymStudyBook);
    SetMainCallback2(CB2_GymStudyBook);

    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    sGymStudyBook->state = GYM_STUDY_STATE_FADE_IN;
}

static void GymStudyBook_Start(enum GymStudyBookId pageId)
{
    if (sGymStudyBook != NULL
     || sGymQuestion != NULL
     || pageId >= GYM_STUDY_COUNT)
        return;

    sGymStudyBook = AllocZeroed(sizeof(*sGymStudyBook));

    if (sGymStudyBook == NULL)
        return;

    sGymStudyBook->pageId = pageId;

    gMain.state = 0;
    SetMainCallback2(CB2_InitGymStudyBook);
}

void HLW_StartGymStudyBookParker(struct ScriptContext *ctx)
{
    (void)ctx;
    GymStudyBook_Start(GYM_STUDY_PARKER);
}

void HLW_StartGymStudyBookMary(struct ScriptContext *ctx)
{
    (void)ctx;
    GymStudyBook_Start(GYM_STUDY_MARY);
}

void HLW_StartGymStudyBookGeorge(struct ScriptContext *ctx)
{
    (void)ctx;
    GymStudyBook_Start(GYM_STUDY_GEORGE);
}

void HLW_StartGymStudyBookAlexia(struct ScriptContext *ctx)
{
    (void)ctx;
    GymStudyBook_Start(GYM_STUDY_ALEXIA);
}

void HLW_StartGymStudyBookBerke(struct ScriptContext *ctx)
{
    (void)ctx;
    GymStudyBook_Start(GYM_STUDY_BERKE);
}

void HLW_StartGymStudyBookJody(struct ScriptContext *ctx)
{
    (void)ctx;
    GymStudyBook_Start(GYM_STUDY_JODY);
}

