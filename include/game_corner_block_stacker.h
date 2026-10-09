#ifndef GUARD_BLOCKSTACKER_H
#define GUARD_BLOCKSTACKER_H

void StartBlockStacker(void);

#if TESTING
u8 BlockStacker_TestCreateNosepass(void);
u8 BlockStacker_TestStartIntro(void);
void BlockStacker_TestStepIntro(void);
bool32 BlockStacker_TestIntroFinished(void);
void BlockStacker_TestFreeIntro(void);
u8 BlockStacker_TestLoseGame(void);
#endif

#endif // GUARD_BLOCKSTACKER_H
