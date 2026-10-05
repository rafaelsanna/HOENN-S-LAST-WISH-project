#ifndef GUARD_FRONTIER_PASS_H
#define GUARD_FRONTIER_PASS_H

void ShowFrontierPass(void (*callback)(void));
void CB2_ReshowFrontierPass(void);
void ShowDefaultPlayerProfile(void (*callback)(void));
bool8 FrontierPass_IsDefaultProfile(void);
void FrontierPass_ToggleDefaultProfile(void);

#endif // GUARD_FRONTIER_PASS_H
