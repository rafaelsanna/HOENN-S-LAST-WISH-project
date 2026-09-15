#ifndef GUARD_MAP_NAME_POPUP_H
#define GUARD_MAP_NAME_POPUP_H

// Exported type declarations

// Exported RAM declarations

// Exported ROM declarations
void HideMapNamePopUpWindow(void);
void ShowMapNamePopup(void);
bool8 MapNamePopup_IsActive(void);
void MapNamePopup_TryShowQueuedPopup(void);
#endif //GUARD_MAP_NAME_POPUP_H
