#ifndef GUARD_NIGHT_MODE_H
#define GUARD_NIGHT_MODE_H

#include "global.h"

bool8 NightMode_IsEnabled(void);
void NightMode_SetEnabled(bool8 enabled);
const u16 *NightMode_GetPaletteForTransfer(void);
void NightMode_CopyPaletteToHardware(void);

#endif // GUARD_NIGHT_MODE_H
