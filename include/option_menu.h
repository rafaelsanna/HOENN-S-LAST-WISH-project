#ifndef GUARD_OPTION_MENU_H
#define GUARD_OPTION_MENU_H

void CB2_InitOptionMenu(void);
void CB2_InitOptionMenu_DifficultyTab(void);
bool32 AreMoveTypeColorsEnabled(void);

#if TESTING
const u8 *OptionMenu_TestWildRandomizerOption(bool8 fullOption, bool8 tablesSelected, bool8 fullSelected, bool8 *canToggle);
#endif

#endif // GUARD_OPTION_MENU_H
