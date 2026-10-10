#ifndef GUARD_SLOT_MACHINE_H
#define GUARD_SLOT_MACHINE_H

void PlaySlotMachine(u8 machineId, MainCallback exitCallback);

#if TESTING
void SlotMachine_TestLoadReelAssets(void);
u8 SlotMachine_TestCreateReelSymbol(u32 symbol);
void SlotMachine_TestSetReelSymbol(u8 spriteId, u32 symbol);
#endif

#endif // GUARD_SLOT_MACHINE_H
