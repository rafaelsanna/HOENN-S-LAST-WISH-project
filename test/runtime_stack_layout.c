#include "global.h"
#include "main.h"
#include "task.h"
#include "test/test.h"

extern u8 __iwram_data_end[];
extern u8 __system_stack_top[];
extern u8 __system_stack_bottom[];

TEST("Runtime stack: main-loop state and tasks leave fast RAM for decompression and audio")
{
    // Legacy GameCube multiboot can replace the first 160 KiB of EWRAM.
    EXPECT_GE((uintptr_t)&gMain, EWRAM_START + 0x28000);
    EXPECT_LE((uintptr_t)&gMain + sizeof(gMain), EWRAM_END);
    EXPECT_GE((uintptr_t)gTasks, EWRAM_START + 0x28000);
    EXPECT_LE((uintptr_t)gTasks + sizeof(struct Task) * NUM_TASKS, EWRAM_END);
}

TEST("Runtime stack: linker reserves at least 4 KiB below the boot system SP")
{
    EXPECT_EQ((uintptr_t)__system_stack_top, IWRAM_END - 0x1C0);
    EXPECT_GE((uintptr_t)__system_stack_top - (uintptr_t)__system_stack_bottom, 0x1000);
    EXPECT_LE((uintptr_t)__iwram_data_end, (uintptr_t)__system_stack_bottom);
}
