#ifndef GUARD_HLW_MEDIA_SAVE_H
#define GUARD_HLW_MEDIA_SAVE_H

// Offsets in HLWSaveExtension.future. Never renumber released owners.
#define HLW_MEDIA_SAVE_MAGIC                 0x484C5753
#define HLW_MEDIA_SAVE_VERSION               1
#define HLW_MEDIA_RADIO_OFFSET               0
#define HLW_MEDIA_RADIO_SIZE                 64
#define HLW_MEDIA_RADIO_PLAYLIST2_OFFSET     0
#define HLW_MEDIA_RADIO_PLAYLIST3_OFFSET     16
#define HLW_MEDIA_RADIO_STICKER_OFFSET       56
#define HLW_MEDIA_PARTY_THEME_OFFSET         64
#define HLW_MEDIA_POKEDEX_THEME_OFFSET       65
#define HLW_MEDIA_BATTLE_SPEED_OFFSET        66
#define HLW_MEDIA_HP_BAR_OFFSET              67
#define HLW_MEDIA_WISH_MENU_COUNT_OFFSET     68
#define HLW_MEDIA_WISH_MENU_ACTIONS_OFFSET   69
#define HLW_MEDIA_WISH_MENU_ACTION_CAPACITY  9
#define HLW_MEDIA_CHANSEY_OFFSET             80
#define HLW_MEDIA_CHANSEY_ENTRY_SIZE         4
#define HLW_MEDIA_CHANSEY_ENTRY_COUNT        64
#define HLW_MEDIA_RESERVED_OFFSET           336
#define HLW_MEDIA_RESERVED_SIZE             16

// Only the save manager calls this while creating a new save in RAM.
void HlwMedia_InitDefaults(void);

#endif
