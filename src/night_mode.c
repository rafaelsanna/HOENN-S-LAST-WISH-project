#include "global.h"
#include "event_data.h"
#include "night_mode.h"
#include "palette.h"
#include "constants/rgb.h"

// Keep the red filter soft enough for long nighttime sessions. Red is kept
// brightest, while green and especially blue are reduced to remove the colder
// part of the screen's light.
#define NIGHT_MODE_RED_BOOST       4
#define NIGHT_MODE_GREEN_NUM       3
#define NIGHT_MODE_BLUE_NUM        2
#define NIGHT_MODE_CHANNEL_DENOM   4

static EWRAM_DATA ALIGNED(4) u16 sNightModeFilteredPalette[PLTT_BUFFER_SIZE] = {0};

bool8 NightMode_IsEnabled(void)
{
    return FlagGet(FLAG_NIGHT_MODE);
}

void NightMode_SetEnabled(bool8 enabled)
{
    if (enabled)
        FlagSet(FLAG_NIGHT_MODE);
    else
        FlagClear(FLAG_NIGHT_MODE);
}

static u16 ApplyNightModeToColor(u16 color)
{
    u32 r = GET_R(color);
    u32 g = GET_G(color);
    u32 b = GET_B(color);
    u32 alpha = color & RGB_ALPHA;

    r += NIGHT_MODE_RED_BOOST;
    if (r > 31)
        r = 31;
    g = (g * NIGHT_MODE_GREEN_NUM) / NIGHT_MODE_CHANNEL_DENOM;
    b = (b * NIGHT_MODE_BLUE_NUM) / NIGHT_MODE_CHANNEL_DENOM;

    return RGB(r, g, b) | alpha;
}

const u16 *NightMode_GetPaletteForTransfer(void)
{
    u32 i;

    if (!NightMode_IsEnabled())
        return gPlttBufferFaded;

    for (i = 0; i < PLTT_BUFFER_SIZE; i++)
        sNightModeFilteredPalette[i] = ApplyNightModeToColor(gPlttBufferFaded[i]);

    return sNightModeFilteredPalette;
}

void NightMode_CopyPaletteToHardware(void)
{
    CpuCopy32(NightMode_GetPaletteForTransfer(), (void *)PLTT, PLTT_SIZE);
}
