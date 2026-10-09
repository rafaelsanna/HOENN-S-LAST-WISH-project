#ifndef GUARD_PINBALL_H
#define GUARD_PINBALL_H

#if TESTING
bool32 Pinball_TestStartScene(u8 gameType, void (*returnCallback)(void));
bool32 Pinball_TestSceneReady(void);
u8 Pinball_TestGetQuitSprite(void);
u16 Pinball_TestGetFlipperState(bool32 right);
void Pinball_TestSetQuitContext(u32 context);
u8 Pinball_TestInitMeowth(void);
bool32 Pinball_TestHitMeowth(s16 x, s16 y, u32 ticks);
void Pinball_TestFinishMeowth(void);
void Pinball_TestFreeMeowth(void);
#endif

#endif // GUARD_PINBALL_H
