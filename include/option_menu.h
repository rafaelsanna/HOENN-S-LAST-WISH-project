#ifndef GUARD_OPTION_MENU_H
#define GUARD_OPTION_MENU_H

void CB2_InitOptionMenu(void);
void CB2_InitOptionMenu_DifficultyTab(void);
void CB2_InitOptionMenu_InitialConfig(void);
bool32 AreMoveTypeColorsEnabled(void);

#if TESTING
const u8 *OptionMenu_TestWildRandomizerOption(bool8 fullOption, bool8 tablesSelected, bool8 fullSelected, bool8 *canToggle);
const u8 *OptionMenu_TestRandomizerRules(bool8 hard, u8 randomizer, bool8 selections[3], bool8 canToggle[3]);
const u8 *OptionMenu_TestPhysicalSpecialSplitRules(bool8 hard, bool8 save, bool8 *selection, bool8 *canToggle);
#endif

#endif // GUARD_OPTION_MENU_H
