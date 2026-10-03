#include "global.h"
#include "battle.h"
#include "battle_main.h"
#include "event_data.h"
#include "mail.h"
#include "nuzlocke.h"
#include "overworld.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "wild_encounter.h"
#include "constants/flags.h"
#include "constants/battle.h"
#include "bg.h"
#include "gpu_regs.h"
#include "main.h"
#include "main_menu.h"
#include "menu.h"
#include "menu_helpers.h"
#include "new_game.h"
#include "palette.h"
#include "scanline_effect.h"
#include "sprite.h"
#include "task.h"
#include "text.h"
#include "window.h"
#include "constants/rgb.h"

static const u8 sTextNuzlockeLoneMonPenalty[] = _("You lost with Nuzlocke, so your only Pokemon lost 2 levels.");

EWRAM_DATA static bool8 sNuzlockeCanThrowBallThisBattle = FALSE;
EWRAM_DATA static bool8 sNuzlockeShowLoneMonPenaltyMessage = FALSE;

void Nuzlocke_RecordInitialChoice(u8 mode)
{
    // Record only the final saved choice in initial setup. Older saves have
    // no known starting mode, and ordinary menu visits never backfill it.
    if (FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED))
        return;

    FlagSet(FLAG_NUZLOCKE_RUN_CONFIGURED);
    if (mode == OPTIONS_NUZLOCKE_NORMAL || mode == OPTIONS_NUZLOCKE_HARD)
        FlagSet(FLAG_NUZLOCKE_RUN_STARTED);
    if (mode == OPTIONS_NUZLOCKE_HARD)
        FlagSet(FLAG_NUZLOCKE_RUN_HARD_ELIGIBLE);
}

void Nuzlocke_RecordModeChoice(u8 mode)
{
    if (!FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED)
     || !FlagGet(FLAG_NUZLOCKE_RUN_STARTED)
     || FlagGet(FLAG_SYS_GAME_CLEAR)
     || Nuzlocke_GetCompletedRunMode() != OPTIONS_NUZLOCKE_OFF)
        return;

    if (mode == OPTIONS_NUZLOCKE_NORMAL)
        FlagClear(FLAG_NUZLOCKE_RUN_HARD_ELIGIBLE);
    else if (mode != OPTIONS_NUZLOCKE_HARD)
        FlagSet(FLAG_NUZLOCKE_RUN_BROKEN);
}

u8 Nuzlocke_GetCompletedRunMode(void)
{
    if (FlagGet(FLAG_NUZLOCKE_RUN_COMPLETED_NORMAL))
        return OPTIONS_NUZLOCKE_NORMAL;
    if (FlagGet(FLAG_NUZLOCKE_RUN_COMPLETED_HARD))
        return OPTIONS_NUZLOCKE_HARD;
    return OPTIONS_NUZLOCKE_OFF;
}

u8 Nuzlocke_GetRunQualification(void)
{
    u8 completed = Nuzlocke_GetCompletedRunMode();

    if (completed != OPTIONS_NUZLOCKE_OFF)
        return completed;
    if (FlagGet(FLAG_SYS_GAME_CLEAR)
     || !FlagGet(FLAG_NUZLOCKE_RUN_CONFIGURED)
     || !FlagGet(FLAG_NUZLOCKE_RUN_STARTED)
     || FlagGet(FLAG_NUZLOCKE_RUN_BROKEN))
        return OPTIONS_NUZLOCKE_OFF;

    return FlagGet(FLAG_NUZLOCKE_RUN_HARD_ELIGIBLE) ? OPTIONS_NUZLOCKE_HARD : OPTIONS_NUZLOCKE_NORMAL;
}

void Nuzlocke_RecordChampionVictory(void)
{
    u8 qualification;

    if (FlagGet(FLAG_SYS_GAME_CLEAR) || Nuzlocke_GetCompletedRunMode() != OPTIONS_NUZLOCKE_OFF)
        return;

    // Catch the current saved mode too, in case it changed outside the menu.
    Nuzlocke_RecordModeChoice(Nuzlocke_GetMode());
    qualification = Nuzlocke_GetRunQualification();
    if (qualification == OPTIONS_NUZLOCKE_NORMAL)
        FlagSet(FLAG_NUZLOCKE_RUN_COMPLETED_NORMAL);
    else if (qualification == OPTIONS_NUZLOCKE_HARD)
        FlagSet(FLAG_NUZLOCKE_RUN_COMPLETED_HARD);
}

static void Nuzlocke_EnsureMapFlagsInit(void)
{
    if (FlagGet(FLAG_SYS_NUZLOCKE_FLAGS_INITIALIZED))
        return;
    if (gSaveBlock3Ptr == NULL)
        return;

    memset(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, 0, sizeof(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags));
    memset(gSaveBlock3Ptr->nuzlockeWildHeaderFlags, 0, NUZLOCKE_WILD_HEADER_FLAG_BYTES);
    FlagSet(FLAG_SYS_NUZLOCKE_FLAGS_INITIALIZED);
}

static bool8 Nuzlocke_IsSpeciesFlagSet(const u8 *flags, u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES
     || species >= sizeof(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags) * 8)
        return FALSE;

    return flags[species >> 3] & (1 << (species & 7));
}

static void Nuzlocke_SetSpeciesFlag(u8 *flags, u16 species)
{
    if (species == SPECIES_NONE || species >= NUM_SPECIES
     || species >= sizeof(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags) * 8)
        return;

    flags[species >> 3] |= 1 << (species & 7);
}

static bool8 Nuzlocke_IsWildHeaderFlagSet(const u8 *flags, u16 headerId, u8 bit)
{
    u16 bitIndex;

    if (headerId == HEADER_NONE || headerId >= NUZLOCKE_WILD_HEADER_COUNT || bit > 1)
        return FALSE;

    bitIndex = headerId * 2 + bit;
    return flags[bitIndex >> 3] & (1 << (bitIndex & 7));
}

static u16 Nuzlocke_GetEvolutionFamilyRoot(u16 species)
{
    u16 preEvolution;
    u16 safety = 0;

    if (species == SPECIES_NONE || species >= NUM_SPECIES)
        return SPECIES_NONE;

    // Walk backwards until the first species in the active evolution line.
    // The safety counter prevents a malformed/custom evolution loop from hanging.
    while (safety++ < NUM_SPECIES)
    {
        preEvolution = GetSpeciesPreEvolution(species);
        if (preEvolution == SPECIES_NONE || preEvolution == species)
            break;

        species = preEvolution;
    }

    return species;
}

static bool8 Nuzlocke_IsSpeciesInPlayerCollection(u16 familyRoot)
{
    s32 i;
    s32 box;
    s32 slot;
    u16 ownedSpecies;

    if (familyRoot == SPECIES_NONE)
        return FALSE;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        ownedSpecies = GetMonData(&gPlayerParty[i], MON_DATA_SPECIES);
        if (ownedSpecies == SPECIES_NONE)
            continue;

        if (Nuzlocke_GetEvolutionFamilyRoot(ownedSpecies) == familyRoot)
            return TRUE;
    }

    if (gPokemonStoragePtr == NULL)
        return FALSE;

    for (box = 0; box < TOTAL_BOXES_COUNT; box++)
    {
        for (slot = 0; slot < IN_BOX_COUNT; slot++)
        {
            ownedSpecies = GetBoxMonData(&gPokemonStoragePtr->boxes[box][slot], MON_DATA_SPECIES);
            if (ownedSpecies == SPECIES_NONE)
                continue;

            if (Nuzlocke_GetEvolutionFamilyRoot(ownedSpecies) == familyRoot)
                return TRUE;
        }
    }

    return FALSE;
}

static bool8 Nuzlocke_IsSpeciesAlreadyOwned(u16 species)
{
    u16 candidate;
    u16 dexNum;
    u16 familyRoot;

    if (species == SPECIES_NONE || species >= NUM_SPECIES || gSaveBlock2Ptr == NULL)
        return FALSE;

    familyRoot = Nuzlocke_GetEvolutionFamilyRoot(species);
    if (familyRoot == SPECIES_NONE)
        return FALSE;

    // Party / PC: any member of the same evolution family counts as a dupe.
    if (Nuzlocke_IsSpeciesInPlayerCollection(familyRoot))
        return TRUE;

    // Persistent history: a caught or released member of the same evolution
    // family also keeps the whole family under Species Clause.
    for (candidate = 1; candidate < NUM_SPECIES; candidate++)
    {
        bool8 wasCaught;
        bool8 wasReleased;

        // Avoid asking evolution helpers about species disabled by this build.
        if (!IsSpeciesEnabled(candidate))
            continue;

        dexNum = SpeciesToNationalPokedexNum(candidate);
        wasCaught = dexNum != 0
                 && dexNum <= NATIONAL_DEX_COUNT
                 && GetSetPokedexFlag(dexNum, FLAG_GET_CAUGHT);

        wasReleased = gSaveBlock3Ptr != NULL
                   && Nuzlocke_IsSpeciesFlagSet(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, candidate);

        if (!wasCaught && !wasReleased)
            continue;

        if (Nuzlocke_GetEvolutionFamilyRoot(candidate) == familyRoot)
            return TRUE;
    }

    return FALSE;
}

static bool8 Nuzlocke_HasAvailableWildSpecies(void)
{
    s32 i;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        u16 species = GetMonData(&gEnemyParty[i], MON_DATA_SPECIES);

        if (species == SPECIES_NONE)
            continue;

        if (!Nuzlocke_IsSpeciesAlreadyOwned(species))
            return TRUE;
    }

    return FALSE;
}

static void Nuzlocke_RecordReleasedSpecies(u16 species)
{
    if (gSaveBlock3Ptr == NULL)
        return;

    Nuzlocke_SetSpeciesFlag(gSaveBlock3Ptr->nuzlockeReleasedSpeciesFlags, species);
}

static bool8 IsCurrentRouteShinyEncounter(void)
{
    if (gBattlersCount <= B_POSITION_OPPONENT_LEFT)
        return FALSE;

    return GetMonData(&gEnemyParty[gBattlerPartyIndexes[B_POSITION_OPPONENT_LEFT]], MON_DATA_IS_SHINY);
}

static void Nuzlocke_SetWildHeaderFlag(u8 *flags, u16 headerId, u8 bit)
{
    u16 bitIndex;

    if (headerId == HEADER_NONE || headerId >= NUZLOCKE_WILD_HEADER_COUNT || bit > 1)
        return;

    bitIndex = headerId * 2 + bit;
    flags[bitIndex >> 3] |= 1 << (bitIndex & 7);
}

static u16 CountOwnedNonEggMons(void)
{
    u16 count = 0;
    s32 i;
    s32 box;
    s32 slot;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) != SPECIES_NONE
         && !GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
        {
            count++;
        }
    }

    for (box = 0; box < TOTAL_BOXES_COUNT; box++)
    {
        for (slot = 0; slot < IN_BOX_COUNT; slot++)
        {
            struct BoxPokemon *boxMon = &gPokemonStoragePtr->boxes[box][slot];
            if (GetBoxMonData(boxMon, MON_DATA_SPECIES) != SPECIES_NONE
             && !GetBoxMonData(boxMon, MON_DATA_IS_EGG))
            {
                count++;
            }
        }
    }

    return count;
}

static bool8 TryApplyLoneMonPenalty(struct Pokemon *mon)
{
    u16 species;
    u32 exp;
    u8 level;
    u8 targetLevel;

    if (CountOwnedNonEggMons() != 1)
        return FALSE;
    if (GetMonData(mon, MON_DATA_HP) != 0)
        return FALSE;

    species = GetMonData(mon, MON_DATA_SPECIES);
    level = GetMonData(mon, MON_DATA_LEVEL);
    targetLevel = (level > 2) ? (level - 2) : 1;
    exp = gExperienceTables[gSpeciesInfo[species].growthRate][targetLevel];

    SetMonData(mon, MON_DATA_EXP, &exp);
    CalculateMonStats(mon);
    sNuzlockeShowLoneMonPenaltyMessage = TRUE;
    return TRUE;
}

static bool8 IsTrackableWildBattle(void)
{
    // Catch restrictions start only after the lab's Pokedex/Poke Ball handoff.
    // Fainting and game-over rules use the earlier Littleroot wake-up gate.
    if (!FlagGet(FLAG_SYS_POKEDEX_GET) || !FlagGet(FLAG_ADVENTURE_STARTED))
        return FALSE;

    // The forced, uncatchable starter rescue must not consume Route 101's
    // encounter allowance. Its fainting/game-over rules still apply.
    if (gBattleTypeFlags & (BATTLE_TYPE_TRAINER | BATTLE_TYPE_SAFARI
                         | BATTLE_TYPE_WALLY_TUTORIAL | BATTLE_TYPE_FIRST_BATTLE))
        return FALSE;

    return GetCurrentMapEncounterId() != ENCOUNTER_ID_NONE;
}

static bool8 HasUncaughtWildMonInBattle(void)
{
    return Nuzlocke_HasAvailableWildSpecies();
}

bool8 Nuzlocke_IsEnabled(void)
{
    return gSaveBlock2Ptr != NULL && gSaveBlock2Ptr->optionsNuzlocke != OPTIONS_NUZLOCKE_OFF;
}

u8 Nuzlocke_GetMode(void)
{
    if (gSaveBlock2Ptr == NULL)
        return OPTIONS_NUZLOCKE_OFF;

    if (gSaveBlock2Ptr->optionsNuzlocke > OPTIONS_NUZLOCKE_HARD)
        return OPTIONS_NUZLOCKE_OFF;

    return gSaveBlock2Ptr->optionsNuzlocke;
}

static bool8 Nuzlocke_HasStarted(void)
{
    // Starting configuration does not activate the rules during the prologue.
    // Existing saves past the rescue/dex milestones need no new wake-up event.
    return Nuzlocke_GetMode() != OPTIONS_NUZLOCKE_OFF
        && (FlagGet(FLAG_PLAYER_AWOKE_IN_LITTLEROOT)
         || VarGet(VAR_ROUTE101_STATE) >= 2
         || FlagGet(FLAG_SYS_POKEDEX_GET));
}

void Nuzlocke_OnBattleStart(void)
{
    Nuzlocke_EnsureMapFlagsInit();
    u8 mode;
    u16 headerId;

    sNuzlockeCanThrowBallThisBattle = FALSE;

    if (gSaveBlock3Ptr == NULL)
        return;

    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return;

    mode = Nuzlocke_GetMode();
    if (mode != OPTIONS_NUZLOCKE_HARD)
        return;

    if (!HasUncaughtWildMonInBattle())
        return;

    headerId = GetCurrentMapEncounterId();

    if (!Nuzlocke_IsWildHeaderFlagSet(gSaveBlock3Ptr->nuzlockeWildHeaderFlags, headerId, 0))
    {
        Nuzlocke_SetWildHeaderFlag(gSaveBlock3Ptr->nuzlockeWildHeaderFlags, headerId, 0);
        sNuzlockeCanThrowBallThisBattle = TRUE;
    }
}

bool8 Nuzlocke_CanThrowBallThisBattle(void)
{
    Nuzlocke_EnsureMapFlagsInit();
    u8 mode;

    if (gSaveBlock3Ptr == NULL)
        return TRUE;

    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return TRUE;

    mode = Nuzlocke_GetMode();

    if (mode == OPTIONS_NUZLOCKE_NORMAL)
    {
        if (IsCurrentRouteShinyEncounter())
            return TRUE;

        if (!Nuzlocke_HasAvailableWildSpecies())
            return FALSE;

        return !Nuzlocke_IsWildHeaderFlagSet(gSaveBlock3Ptr->nuzlockeWildHeaderFlags, GetCurrentMapEncounterId(), 1);
    }

    return sNuzlockeCanThrowBallThisBattle;
}

void Nuzlocke_OnMonCaught(struct Pokemon *mon)
{
    Nuzlocke_EnsureMapFlagsInit();
    if (gSaveBlock3Ptr == NULL)
        return;
    if (!Nuzlocke_HasStarted() || !IsTrackableWildBattle())
        return;
    if (Nuzlocke_GetMode() != OPTIONS_NUZLOCKE_NORMAL)
        return;
    if (GetMonData(mon, MON_DATA_IS_SHINY))
        return;

    Nuzlocke_SetWildHeaderFlag(gSaveBlock3Ptr->nuzlockeWildHeaderFlags, GetCurrentMapEncounterId(), 1);
}

static void Nuzlocke_BoxNormalModeFaintedMons(void)
{
    s32 i;
    s32 firstNonEgg = -1;
    s32 firstAlive = -1;
    s32 keepSlot = -1;
    u8 followerIndex = gSaveBlock3Ptr->followerIndex;
    u8 newFollowerIndex = OW_FOLLOWER_NOT_SET;
    u8 retainedCount = 0;
    bool8 removedAny = FALSE;
    bool8 lostBattle = gBattleOutcome == B_OUTCOME_LOST
                    || gBattleOutcome == B_OUTCOME_DREW
                    || DidPlayerForfeitNormalTrainerBattle();

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE
         || GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
            continue;
        if (firstNonEgg == -1)
            firstNonEgg = i;
        if (firstAlive == -1 && GetMonData(&gPlayerParty[i], MON_DATA_HP) != 0)
            firstAlive = i;
    }

    // An already-invalid, egg-only party has no safety Pokémon to choose.
    if (firstNonEgg == -1)
        return;

    // Eggs cannot be the safety Pokémon. A fainted keeper is healed by whiteout.
    if (lostBattle || firstAlive == -1)
        keepSlot = firstAlive != -1 ? firstAlive : firstNonEgg;

    // Preserve the existing two-level penalty when this is the only owned mon.
    if (keepSlot != -1 && gPokemonStoragePtr != NULL)
        TryApplyLoneMonPenalty(&gPlayerParty[keepSlot]);

    for (i = 0; i < PARTY_SIZE; i++)
    {
        struct Pokemon *mon = &gPlayerParty[i];

        if (GetMonData(mon, MON_DATA_SPECIES) == SPECIES_NONE)
            continue;
        if (i != keepSlot && (lostBattle
         || (!GetMonData(mon, MON_DATA_IS_EGG) && GetMonData(mon, MON_DATA_HP) == 0)))
        {
            // Never delete a mon if storage is full/unavailable. Attached mail
            // must be removed by the player, just like a normal PC deposit.
            if (gPokemonStoragePtr != NULL && !MonHasMail(mon)
             && CopyMonToPC(mon) == MON_GIVEN_TO_PC)
            {
                ZeroMonData(mon);
                removedAny = TRUE;
                continue;
            }
        }
        if (i == followerIndex)
            newFollowerIndex = retainedCount;
        retainedCount++;
    }

    if (removedAny)
    {
        CompactPartySlots();
        CalculatePlayerPartyCount();
        // Several removals can shift a surviving follower by more than one slot.
        gSaveBlock3Ptr->followerIndex = newFollowerIndex;
        if (followerIndex < PARTY_SIZE && newFollowerIndex == OW_FOLLOWER_NOT_SET)
            gFollowerSteps = 0;
    }
}

void Nuzlocke_ApplyPermadeathToPlayerParty(void)
{
    bool8 removedAny = FALSE;
    s32 i;

    if (!Nuzlocke_HasStarted())
        return;

    if (Nuzlocke_GetMode() == OPTIONS_NUZLOCKE_NORMAL)
    {
        Nuzlocke_BoxNormalModeFaintedMons();
        return;
    }

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE)
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_HP) != 0)
            continue;

        // Nuzlocke release: dead party mons are deleted permanently.
        Nuzlocke_RecordReleasedSpecies(GetMonData(&gPlayerParty[i], MON_DATA_SPECIES));
        ZeroMonData(&gPlayerParty[i]);
        removedAny = TRUE;
    }

    if (removedAny)
        CompactPartySlots();
}

bool8 Nuzlocke_HasLoneMonPenaltyMessage(void)
{
    return sNuzlockeShowLoneMonPenaltyMessage;
}

bool8 Nuzlocke_ConsumeLoneMonPenaltyMessage(void)
{
    bool8 hadMessage = sNuzlockeShowLoneMonPenaltyMessage;
    sNuzlockeShowLoneMonPenaltyMessage = FALSE;
    return hadMessage;
}

const u8 *Nuzlocke_GetLoneMonPenaltyMessage(void)
{
    return sTextNuzlockeLoneMonPenalty;
}

// ============================================================================
// NUZLOCKE GAME OVER
// Normal may recover the current run through whiteout; Hard must restart.
// Hard erases the save on entry; Normal deletion still requires confirmation.
// Uses a manual text cursor to avoid white menu-tile artifacts.
// ============================================================================
static const u8 sTextNuzlockeGameOver[] =
    _("GAME OVER\n"
      "You failed the NUZLOCKE.\n"
      "You lost all your POKéMON.");

static const u8 sTextNuzlockeGameOverDelete[] =
    _("Delete the save file.");

static const u8 sTextNuzlockeGameOverRestart[] =
    _("Try again");

static const u8 sTextNuzlockeGameOverContinue[] =
    _("Continue the same save file.");

static const u8 sTextNuzlockeGameOverDeleteConfirm[] =
    _("GAME OVER\n"
      "Delete the save file?\n"
      "This cannot be undone.");

static const u8 sTextNuzlockeGameOverYes[] = _("YES");
static const u8 sTextNuzlockeGameOverNo[] = _("NO");
static const u8 sTextNuzlockeGameOverArrow[] = _(">");

static const u8 sNuzlockeGameOverTextColors[] =
{
    TEXT_COLOR_TRANSPARENT,
    TEXT_COLOR_WHITE,
    TEXT_COLOR_DARK_GRAY,
};

static bool8 sNuzlockeGameOverConfirmDelete;
static u8 sNuzlockeGameOverSelection;
static u8 sNuzlockeGameOverMode;

static const struct BgTemplate sNuzlockeGameOverBgTemplates[] =
{
    {
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0,
    },
};

static const struct WindowTemplate sNuzlockeGameOverWindowTemplates[] =
{
    {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 3,
        .width = 26,
        .height = 6,
        .paletteNum = 15,
        .baseBlock = 1,
    },
    {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 10,
        .width = 26,
        .height = 5,
        .paletteNum = 15,
        .baseBlock = 157,
    },
    DUMMY_WIN_TEMPLATE,
};

static void VBlankCB_NuzlockeGameOver(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void Nuzlocke_RenderGameOverOptions(bool8 confirmDelete)
{
    FillWindowPixelBuffer(1, PIXEL_FILL(0));

    if (confirmDelete)
    {
        AddTextPrinterParameterized3(1, FONT_NORMAL, 18, 1,  sNuzlockeGameOverTextColors, TEXT_SKIP_DRAW, sTextNuzlockeGameOverYes);
        AddTextPrinterParameterized3(1, FONT_NORMAL, 18, 17, sNuzlockeGameOverTextColors, TEXT_SKIP_DRAW, sTextNuzlockeGameOverNo);
    }
    else if (sNuzlockeGameOverMode == OPTIONS_NUZLOCKE_HARD)
    {
        AddTextPrinterParameterized3(1, FONT_NORMAL, 18, 1, sNuzlockeGameOverTextColors, TEXT_SKIP_DRAW, sTextNuzlockeGameOverRestart);
    }
    else
    {
        AddTextPrinterParameterized3(1, FONT_NORMAL, 18, 1,  sNuzlockeGameOverTextColors, TEXT_SKIP_DRAW, sTextNuzlockeGameOverDelete);
        AddTextPrinterParameterized3(1, FONT_NORMAL, 18, 17, sNuzlockeGameOverTextColors, TEXT_SKIP_DRAW, sTextNuzlockeGameOverContinue);
    }

    AddTextPrinterParameterized3(1,
                                 FONT_NORMAL,
                                 4,
                                 (sNuzlockeGameOverSelection == 0) ? 1 : 17,
                                 sNuzlockeGameOverTextColors,
                                 TEXT_SKIP_DRAW,
                                 sTextNuzlockeGameOverArrow);

    PutWindowTilemap(1);
    CopyWindowToVram(1, COPYWIN_FULL);
}

static void Nuzlocke_DrawGameOverMainMenu(void)
{
    FillWindowPixelBuffer(0, PIXEL_FILL(0));
    AddTextPrinterParameterized3(0,
                                 FONT_NORMAL,
                                 8,
                                 1,
                                 sNuzlockeGameOverTextColors,
                                 TEXT_SKIP_DRAW,
                                 sTextNuzlockeGameOver);
    PutWindowTilemap(0);
    CopyWindowToVram(0, COPYWIN_FULL);

    sNuzlockeGameOverConfirmDelete = FALSE;
    // Hard has only Try again; Normal safely defaults to Continue.
    sNuzlockeGameOverSelection = sNuzlockeGameOverMode == OPTIONS_NUZLOCKE_HARD ? 0 : 1;
    Nuzlocke_RenderGameOverOptions(FALSE);
}

static void Nuzlocke_DrawGameOverDeleteConfirm(void)
{
    FillWindowPixelBuffer(0, PIXEL_FILL(0));
    AddTextPrinterParameterized3(0,
                                 FONT_NORMAL,
                                 8,
                                 1,
                                 sNuzlockeGameOverTextColors,
                                 TEXT_SKIP_DRAW,
                                 sTextNuzlockeGameOverDeleteConfirm);
    PutWindowTilemap(0);
    CopyWindowToVram(0, COPYWIN_FULL);

    sNuzlockeGameOverConfirmDelete = TRUE;
    sNuzlockeGameOverSelection = 1; // safer default = NO
    Nuzlocke_RenderGameOverOptions(TRUE);
}

static void Nuzlocke_ContinueNormalGame(void)
{
    // Do not reload an older save: recover the party that just lost instead.
    Nuzlocke_ApplyPermadeathToPlayerParty();
    SetVBlankHBlankCallbacksToNull();
    FreeAllWindowBuffers();
    CpuFill16(0, (void *)BG_PLTT, BG_PLTT_SIZE);
    SetMainCallback2(CB2_WhiteOut);
}

static void CB2_NuzlockeGameOver(void)
{
    if (sNuzlockeGameOverMode == OPTIONS_NUZLOCKE_HARD)
    {
        // The save is already gone. No confirmation, cancellation or Continue.
        if (JOY_NEW(A_BUTTON))
        {
            SetVBlankHBlankCallbacksToNull();
            FreeAllWindowBuffers();
            ResetMenuAndMonGlobals();
            gPlayerPartyCount = 0;
            Sav2_ClearSetDefault();
            SetMainCallback1(NULL);
            SetMainCallback2(CB2_NewGameBirchSpeech_FromNewMainMenu);
        }
        return;
    }

    if (JOY_NEW(DPAD_UP) || JOY_NEW(DPAD_DOWN))
    {
        sNuzlockeGameOverSelection ^= 1;
        Nuzlocke_RenderGameOverOptions(sNuzlockeGameOverConfirmDelete);
        return;
    }

    if (JOY_NEW(B_BUTTON))
    {
        if (sNuzlockeGameOverConfirmDelete)
            Nuzlocke_DrawGameOverMainMenu();
        return;
    }

    if (!JOY_NEW(A_BUTTON))
        return;

    if (sNuzlockeGameOverConfirmDelete)
    {
        if (sNuzlockeGameOverSelection == 0) // YES
        {
            ClearSaveData();
            Save_ResetSaveCounters();
            DoSoftReset();
        }
        else // NO
        {
            Nuzlocke_DrawGameOverMainMenu();
        }
        return;
    }

    if (sNuzlockeGameOverSelection == 0)
        Nuzlocke_DrawGameOverDeleteConfirm();
    else if (sNuzlockeGameOverMode == OPTIONS_NUZLOCKE_NORMAL)
        Nuzlocke_ContinueNormalGame();
}

bool8 Nuzlocke_ShouldGameOver(void)
{
    s32 i;

    if (!Nuzlocke_HasStarted())
        return FALSE;

    // A full PARTY wipe opens the loss menu in either mode. Check this before
    // Normal keeps its safety Pokemon or Hard removes the fainted party.
    // Boxed Pokemon and eggs do not prevent a party wipe.
    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (GetMonData(&gPlayerParty[i], MON_DATA_SPECIES) == SPECIES_NONE)
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG))
            continue;
        if (GetMonData(&gPlayerParty[i], MON_DATA_HP) != 0)
            return FALSE;
    }

    return TRUE;
}

void Nuzlocke_StartGameOverScreen(void)
{
    sNuzlockeGameOverMode = Nuzlocke_GetMode();
    SetVBlankHBlankCallbacksToNull();
    if (sNuzlockeGameOverMode == OPTIONS_NUZLOCKE_HARD)
    {
        // Erase both saved slots, the expanded data and Hall of Fame before
        // accepting any input, so resetting on this screen cannot resume a run.
        ClearSaveData();
        Save_ResetSaveCounters();
        gSaveFileStatus = SAVE_STATUS_EMPTY;
    }
    ScanlineEffect_Stop();
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPaletteFade();
    FreeAllWindowBuffers();

    ResetVramOamAndBgCntRegs();
    ResetBgsAndClearDma3BusyFlags(FALSE);
    InitBgsFromTemplates(0,
                        sNuzlockeGameOverBgTemplates,
                        ARRAY_COUNT(sNuzlockeGameOverBgTemplates));
    ResetAllBgsCoordinates();

    InitWindows(sNuzlockeGameOverWindowTemplates);
    DeactivateAllTextPrinters();

    SetBackdropFromColor(RGB_BLACK);
    LoadPalette(gStandardMenuPalette, BG_PLTT_ID(15), PLTT_SIZE_4BPP);

    FillBgTilemapBufferRect(0, 0, 0, 0, 32, 32, 0);
    Nuzlocke_DrawGameOverMainMenu();
    CopyBgTilemapBufferToVram(0);

    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0);
    ShowBg(0);

    gPaletteFade.bufferTransferDisabled = FALSE;
    SetVBlankCallback(VBlankCB_NuzlockeGameOver);
    SetMainCallback2(CB2_NuzlockeGameOver);
}

