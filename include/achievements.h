#ifndef GUARD_ACHIEVEMENTS_H
#define GUARD_ACHIEVEMENTS_H

#include "main.h"
#include "constants/achievements.h"

struct Achievement
{
    enum AchievementId id;
    const u8 *name;
    const u8 *description;
    enum AchievementTier tier;
    enum AchievementCounter counter;
    u32 targetValue;
    u16 trainerId;
    bool32 (*predicate)(void);
};

bool32 Achievement_Unlock(enum AchievementId id);
void Achievement_IncrementCounter(enum AchievementCounter counter, u32 amount);
void Achievement_SetCounterMax(enum AchievementCounter counter, u32 value);
void Achievement_AddBattlePointsEarned(u32 amount);
void Achievement_CheckAll(void);
void Achievement_CheckCounter(enum AchievementCounter counter);
void Achievement_UnlockHallOfFameDebut(void);
void Achievement_OnPokemonObtained(u16 species);
void Achievement_OnTrainerDefeated(u16 trainerId);

// Custom Hoenn's Last Wish tracking hooks.
// These are intentionally tiny so custom scripts/minigames can call them
// without knowing anything about the achievement save format.
void Achievement_RecordTimeGearUse(void);
void Achievement_RecordFishingCatch(void);
void Achievement_RecordGameCornerPlay(enum AchievementGameCornerGame game);
void Achievement_RecordLeagueWin(void);
void Achievement_RecordMagmaGruntDefeat(void);
void Achievement_RecordAquaGruntDefeat(void);
void Achievement_TryShowQueuedPopup(void);
void Achievement_HidePopup(void);
u16 Achievement_CountUnlocked(void);
void GetCompletedAchievementsCount(void);
void Debug_UnlockNextAchievement(void);
bool32 Achievement_IsUnlocked(enum AchievementId id);
u16 WishForm_GetIdForSpecies(u16 species);
bool32 WishForm_IsRegistered(bool32 custom, u16 id);
bool32 WishForm_Register(bool32 custom, u16 id);
u16 ShadowPokemon_GetIdForSpecies(u16 species);
// IDs 0 and 1 share the existing joint Nightmare encounter's story state.
bool32 ShadowPokemon_IsDefeated(u16 id);
bool32 ShadowPokemon_SetDefeated(u16 id, bool32 defeated);
u32 Achievement_GetCounter(enum AchievementCounter counter);
u32 Achievement_GetProgress(const struct Achievement *achievement);
u32 Achievement_GetTarget(const struct Achievement *achievement);
u16 Achievement_GetCount(void);
const struct Achievement *Achievement_GetByIndex(u16 index);
const struct Achievement *Achievement_GetById(enum AchievementId id);
const u8 *Achievement_GetTierLabel(enum AchievementTier tier);
u16 Achievement_GetTierBallItem(enum AchievementTier tier);
void CB2_InitAchievementsMenu(void);
void CB2_InitAchievementsMenuWithCallback(MainCallback callback);
void Script_OpenAchievementsMenu(void);

#endif // GUARD_ACHIEVEMENTS_H
