#ifndef GUARD_MINING_MINIGAME_H
#define GUARD_MINING_MINIGAME_H
#include "constants/mining_minigame.h"
#include "gba/types.h"
u16 MiningWall_GetId(u16 map, s16 x, s16 y);
bool32 MiningWall_WasAttempted(u16 wallId);
bool32 MiningWall_RecordAttempt(u16 wallId);
#endif
