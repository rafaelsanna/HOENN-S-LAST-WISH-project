#include "global.h"
#include "malloc.h"
#include "test/test.h"

static struct MemBlock *BlockFor(void *pointer)
{
    return (struct MemBlock *)((u8 *)pointer - sizeof(struct MemBlock));
}

TEST("Crash allocator: layout alignment zeroing and coalescing stay compatible")
{
    EXPECT_EQ(sizeof(struct MemBlock), 16);
    EXPECT_EQ(HEAP_SIZE, 115456);
    void *first = Alloc(3);
    void *middle = AllocZeroed(7);
    void *last = AllocRequired(9);
    void *zeroed = AllocZeroedRequired(3);
    EXPECT(first != NULL && middle != NULL && last != NULL && zeroed != NULL);
    EXPECT_EQ((uintptr_t)first & 3, 0);
    EXPECT_EQ((u32)BlockFor(first)->size, 4);
    EXPECT_EQ((u32)BlockFor(middle)->size, 8);
    EXPECT_EQ((u32)BlockFor(last)->size, 12);
    for (u32 i = 0; i < 8; i++)
        EXPECT_EQ(((u8 *)middle)[i], 0);
    for (u32 i = 0; i < 4; i++)
        EXPECT_EQ(((u8 *)zeroed)[i], 0);
    Free(middle);
    Free(first);
    EXPECT(CheckHeap());
    Free(zeroed);
    Free(last);
    EXPECT(CheckHeap());
    Free(NULL);
    void *empty = Alloc(0);
    EXPECT(empty != NULL);
    Free(empty);
    EXPECT(CheckHeap());
}

TEST("Crash allocator: silent OOM returns NULL and can recover after a free")
{
    // The standard function runner owns the first block; consume the sole
    // remaining free block without hard-coding the runner allocation size.
    const struct MemBlock *freeBlock = HeapHead()->next;
    EXPECT(!freeBlock->allocated);
    EXPECT_EQ((const struct MemBlock *)freeBlock->next, HeapHead());
    void *held = AllocUnchecked(freeBlock->size);
    EXPECT(held != NULL);
    EXPECT_EQ(AllocUnchecked(4), NULL);
    EXPECT_EQ(AllocZeroedUnchecked(4), NULL);
    EXPECT(CheckHeap());
    Free(held);
    u8 *recovered = AllocZeroedUnchecked(7);
    EXPECT(recovered != NULL);
    for (u32 i = 0; i < 8; i++)
        EXPECT_EQ(recovered[i], 0);
    Free(recovered);
    EXPECT(CheckHeap());
}

TEST("Crash allocator: split threshold preserves whole-block and exact-split sizes")
{
    u32 available = HeapHead()->next->size;
    void *whole = AllocUnchecked(available - sizeof(struct MemBlock));
    EXPECT(whole != NULL);
    EXPECT_EQ((u32)BlockFor(whole)->size, available);
    EXPECT_EQ((const struct MemBlock *)BlockFor(whole)->next, HeapHead());
    Free(whole);
    void *split = AllocUnchecked(available - 2 * sizeof(struct MemBlock));
    EXPECT(split != NULL);
    EXPECT_EQ((u32)BlockFor(split)->size, available - 2 * sizeof(struct MemBlock));
    EXPECT_EQ((u32)BlockFor(split)->next->size, sizeof(struct MemBlock));
    EXPECT(!BlockFor(split)->next->allocated);
    Free(split);
    EXPECT_EQ((u32)HeapHead()->next->size, available);
    EXPECT(CheckHeap());
}

TEST("Crash allocator: oversized requests cannot wrap into tiny allocations")
{
    u32 size;
    PARAMETRIZE { size = UINT_MAX; }
    PARAMETRIZE { size = UINT_MAX - 1; }
    PARAMETRIZE { size = UINT_MAX - 2; }
    PARAMETRIZE { size = HEAP_SIZE; }
    EXPECT_EQ(AllocUnchecked(size), NULL);
    EXPECT_EQ(AllocZeroedUnchecked(size), NULL);
    EXPECT(CheckHeap());
}

TEST("Crash allocator: pointer checks quietly reject invalid interior and stale references")
{
    u8 *mem = AllocZeroed(16);
    EXPECT(CheckMemBlock(mem));
    EXPECT(!CheckMemBlock(NULL));
    EXPECT(!CheckMemBlock((void *)ROM_START));
    EXPECT(!CheckMemBlock((void *)((uintptr_t)gHeap - 4)));
    EXPECT(!CheckMemBlock(gHeap + HEAP_SIZE));
    EXPECT(!CheckMemBlock(mem + 1));
    EXPECT(!CheckMemBlock(mem + 4));
    Free(mem);
    EXPECT(!CheckMemBlock(mem));
    EXPECT(CheckHeap());
}

TEST("Crash allocator: corrupt headers and links are rejected silently before dereference")
{
    u32 corruption;
    PARAMETRIZE { corruption = 0; }
    PARAMETRIZE { corruption = 1; }
    PARAMETRIZE { corruption = 2; }
    PARAMETRIZE { corruption = 3; }
    PARAMETRIZE { corruption = 4; }
    PARAMETRIZE { corruption = 5; }
    PARAMETRIZE { corruption = 6; }
    PARAMETRIZE { corruption = 7; }
    void *mem = Alloc(16);
    struct MemBlock *block = BlockFor(mem);
    struct MemBlock saved = *block;
    switch (corruption)
    {
    case 0: block->magic = 0; break;
    case 1: block->next = (struct MemBlock *)ROM_START; break;
    case 2: block->prev = (struct MemBlock *)EWRAM_END; break;
    case 3: block->next = (struct MemBlock *)((uintptr_t)block->next + 1); break;
    case 4: block->next = block; break;
    case 5: block->size = HEAP_SIZE; break;
    case 6: block->prev = block; break;
    case 7: block->size = 3; break;
    }
    struct MemBlock damaged = *block;
    bool32 checkRejected = !CheckMemBlock(mem) && !CheckHeap();
    bool32 allocationRejected = AllocUnchecked(4) == NULL && AllocZeroedUnchecked(4) == NULL;
    bool32 headerUnchanged = memcmp(block, &damaged, sizeof(damaged)) == 0;
    // Restore before any EXPECT can exit into the standard runner teardown.
    *block = saved;
    Free(mem);
    EXPECT(checkRejected);
    EXPECT(allocationRejected);
    EXPECT(headerUnchanged);
    EXPECT(CheckHeap());
}

TEST("Crash allocator: silent reporter allocation refuses corruption beyond an early free block")
{
    void *first = Alloc(32);
    void *second = Alloc(32);
    void *third = Alloc(32);
    void *fourth = Alloc(32);
    Free(first);
    struct MemBlock *block = BlockFor(fourth);
    struct MemBlock saved = *block;
    block->magic = 0;
    bool32 rejected = AllocUnchecked(4) == NULL && AllocZeroedUnchecked(4) == NULL;
    *block = saved;
    Free(fourth);
    Free(third);
    Free(second);
    EXPECT(rejected);
    EXPECT(CheckHeap());
}

// Fatal allocator checks leave an intentionally damaged heap behind. Do not
// use the standard runner's heap-backed parameter state/Free teardown here.
static void FatalAllocator_SetUp(void *data)
{
    (void)data;
}

static void FatalAllocator_Run(void *data)
{
    void (*function)(void) = data;
    Test_ExpectedResult(TEST_RESULT_ERROR);
    function();
    // Returning instead of reporting is an unexpected failure, not a known
    // error result. This also prevents a missing check from passing silently.
    Test_ExpectedResult(TEST_RESULT_PASS);
    EXPECT(FALSE);
}

static void FatalAllocator_TearDown(void *data)
{
    (void)data;
    InitHeap(gHeap, HEAP_SIZE);
}

static const struct TestRunner sFatalAllocatorRunner =
{
    .setUp = FatalAllocator_SetUp,
    .run = FatalAllocator_Run,
    .tearDown = FatalAllocator_TearDown,
};

#define FATAL_ALLOCATOR_TEST(name_) \
    static void CAT(FatalAllocatorTest, __LINE__)(void); \
    __attribute__((section(".tests"), used)) static const struct Test CAT(sFatalAllocatorTest, __LINE__) = \
    { \
        .name = name_, .filename = __FILE__, .runner = &sFatalAllocatorRunner, \
        .sourceLine = __LINE__, .data = (void *)CAT(FatalAllocatorTest, __LINE__), \
    }; \
    static void CAT(FatalAllocatorTest, __LINE__)(void)

FATAL_ALLOCATOR_TEST("Crash allocator: regular TESTING OOM retains its error result")
{
    AllocUnchecked(HEAP_SIZE - sizeof(struct MemBlock));
    Alloc(4);
}

FATAL_ALLOCATOR_TEST("Crash allocator: required allocation reports exhaustion instead of returning NULL")
{
    AllocUnchecked(HEAP_SIZE - sizeof(struct MemBlock));
    AllocRequired(4);
}

FATAL_ALLOCATOR_TEST("Crash allocator: required zeroed allocation reports exhaustion")
{
    AllocUnchecked(HEAP_SIZE - sizeof(struct MemBlock));
    AllocZeroedRequired(4);
}

FATAL_ALLOCATOR_TEST("Crash allocator: regular allocation reports corrupt links before following them")
{
    ((struct MemBlock *)HeapHead())->next = (struct MemBlock *)ROM_START;
    Alloc(4);
}

FATAL_ALLOCATOR_TEST("Crash allocator: free reports corrupt neighboring links before writing")
{
    void *mem = AllocUnchecked(16);
    BlockFor(mem)->next = (struct MemBlock *)ROM_START;
    Free(mem);
}

FATAL_ALLOCATOR_TEST("Crash allocator: free reports an out-of-heap pointer without reading it")
{
    Free((void *)ROM_START);
}

FATAL_ALLOCATOR_TEST("Crash allocator: double free reports an error")
{
    void *mem = AllocUnchecked(16);
    Free(mem);
    Free(mem);
}
