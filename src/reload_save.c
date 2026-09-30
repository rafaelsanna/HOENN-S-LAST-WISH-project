#include "global.h"
#include "main.h"
#include "main_menu.h"
#include "crt0.h"
#include "gpu_regs.h"
#include "m4a.h"
#include "load_save.h"
#include "save.h"
#include "new_game.h"
#include "overworld.h"
#include "malloc.h"

// Reloads the game, continuing from the point of the last save
// Used to gracefully exit after a link connection error
void ReloadSave(void)
{
    u16 imeBackup = REG_IME;
    REG_IME = 0;
    RegisterRamReset(RESET_EWRAM);
    ReInitializeEWRAM();
    ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_FORCED_BLANK);
    REG_IME = imeBackup;
    gMain.inBattle = FALSE;
    SetSaveBlocksPointers(GetSaveBlocksPointersBaseOffset());
    ResetMenuAndMonGlobals();
    Save_ResetSaveCounters();
    LoadGameSave(SAVE_NORMAL);
    if (gSaveFileStatus != SAVE_STATUS_OK && gSaveFileStatus != SAVE_STATUS_ERROR)
        Sav2_ClearSetDefault();
    SetPokemonCryStereo(gSaveBlock2Ptr->optionsSound);
    InitHeap(gHeap, HEAP_SIZE);
    // Only OK and ERROR (a verified compatible backup) contain a loaded game.
    // A rejected schema must return through the menu's no-Continue message.
    if (gSaveFileStatus == SAVE_STATUS_OK || gSaveFileStatus == SAVE_STATUS_ERROR)
        SetMainCallback2(CB2_ContinueSavedGame);
    else
        SetMainCallback2(CB2_InitMainMenu);
}
