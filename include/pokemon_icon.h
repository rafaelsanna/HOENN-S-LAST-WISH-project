#ifndef GUARD_POKEMON_ICON_H
#define GUARD_POKEMON_ICON_H

extern const struct SpritePalette gMonIconPaletteTable[];

const u8 *GetMonIconTiles(u16 species, u32 personality);
void TryLoadAllMonIconPalettesAtOffset(u16 offset);
// todo check if these are used
u8 GetValidMonIconPalIndex(u16 species);
const u8 *GetMonIconPtr(u16 speciesId, u32 personality);
const u16 *GetValidMonIconPalettePtr(u16 speciesId);
u16 GetIconSpecies(u16 species, u32 personality);
u16 GetUnownLetterByPersonality(u32 personality);
u16 GetIconSpeciesNoPersonality(u16 species);
void LoadMonIconPalettes(void);
void FreeMonIconPalettes(void);
u8 CreateMonIconNoPersonality(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority);
void FreeAndDestroyMonIconSprite(struct Sprite *sprite);
const u32 * GetIconPalette(u32 species, bool32 isShiny);
const u32 GetIconPalTag(u32 species, bool32 isShiny);
u32 FindFreeIconPaletteSlot(u16 tag);
u8 CreateMonIcon(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, u32 personality);
u8 CreateMonIcon2(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, bool32 isShiny, u32 personality);
u8 CreateMonIcon3(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, u32 personality, u8 paletteNum);
void SetMonIconPalette(struct Pokemon *, struct Sprite *, u8);
u8 UpdateMonIconFrame(struct Sprite *sprite);
void SpriteCB_MonIcon(struct Sprite *sprite);
void SetPartyHPBarSprite(struct Sprite *sprite, u8 animNum);
u8 GetMonIconPaletteIndexFromSpecies(u16 species);
void SafeFreeMonIconPalette(u16 species);

#endif // GUARD_POKEMON_ICON_H
