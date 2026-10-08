#ifndef GUARD_SURFABLE_H
#define GUARD_SURFABLE_H

struct Sprite;

u8 GetSurfablePokemonPartySlot(void);
void DestroySurfablePokemonSprite(struct Sprite *sprite);
void FreeSurfablePokemonSpriteTiles(struct Sprite *sprite);

#endif
