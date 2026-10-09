#include "global.h"
#include "malloc.h"
#if TESTING
#include "test/test.h"
#endif

static void *sHeapStart;
static u32 sHeapSize;

ALIGNED(4) EWRAM_DATA u8 gHeap[HEAP_SIZE] = {0};

enum AllocFailure
{
    ALLOC_FAILURE_NONE,
    ALLOC_FAILURE_SPACE,
    ALLOC_FAILURE_CORRUPTION,
};

static bool32 IsHeapRangeValid(void *heapStart, u32 heapSize)
{
    uintptr_t start = (uintptr_t)heapStart;

    if ((start & 3) != 0 || (heapSize & 3) != 0
     || heapSize < sizeof(struct MemBlock) || heapSize > 0x40000)
        return FALSE;
    // Check subtraction bounds before adding sizes or reading a corrupt
    // heap-start pointer. All existing project heaps live in work RAM.
    return (start >= EWRAM_START && start <= EWRAM_END - heapSize)
        || (heapSize <= IWRAM_END - IWRAM_START
         && start >= IWRAM_START && start <= IWRAM_END - heapSize);
}

static bool32 IsHeaderValid(void *heapStart, const struct MemBlock *block)
{
    uintptr_t start = (uintptr_t)heapStart;
    uintptr_t address = (uintptr_t)block;

    if (!IsHeapRangeValid(heapStart, sHeapSize)
     || (address & 3) != 0 || address < start
     || address - start > sHeapSize - sizeof(*block))
        return FALSE;
    if (block->magic != MALLOC_SYSTEM_ID || (block->size & 3) != 0)
        return FALSE;
    return block->size <= sHeapSize - (address - start) - sizeof(*block);
}

static bool32 IsBlockValid(void *heapStart, const struct MemBlock *block)
{
    const struct MemBlock *head = heapStart;

    if (!IsHeaderValid(heapStart, block))
        return FALSE;
    // Never dereference a link until its complete header is in this heap.
    if (!IsHeaderValid(heapStart, block->next)
     || !IsHeaderValid(heapStart, block->prev))
        return FALSE;

    uintptr_t end = (uintptr_t)block->data + block->size;
    if (block->next == head)
    {
        if (end != (uintptr_t)heapStart + sHeapSize)
            return FALSE;
    }
    else if ((uintptr_t)block->next != end || block->next->prev != block)
    {
        return FALSE;
    }

    // Unlike next, the first block's prev points to itself, not the tail.
    if (block == head)
        return block->prev == head;
    return (uintptr_t)block->prev < (uintptr_t)block
        && block->prev->next == block
        && (uintptr_t)block->prev->data + block->prev->size == (uintptr_t)block;
}

void PutMemBlockHeader(void *block, struct MemBlock *prev, struct MemBlock *next, u32 size)
{
    struct MemBlock *header = block;

    header->allocated = FALSE;
    header->locationHi = 0;
    header->magic = MALLOC_SYSTEM_ID;
    header->size = size;
    header->locationLo = 0;
    header->prev = prev;
    header->next = next;
}

void PutFirstMemBlockHeader(void *block, u32 size)
{
    PutMemBlockHeader(block, block, block, size - sizeof(struct MemBlock));
}

static void *TryAllocInternal(void *heapStart, u32 size, const char *location, enum AllocFailure *failure)
{
    struct MemBlock *head = heapStart;
    struct MemBlock *pos = head;

    *failure = ALLOC_FAILURE_CORRUPTION;
    if (!IsHeapRangeValid(heapStart, sHeapSize))
        return NULL;
    // UINT_MAX must not wrap around into a successful tiny allocation.
    if (size > sHeapSize - sizeof(struct MemBlock))
    {
        *failure = ALLOC_FAILURE_SPACE;
        return NULL;
    }
    size = (size + 3) & ~3u;

    for (u32 remaining = sHeapSize / sizeof(struct MemBlock); remaining != 0; remaining--)
    {
        if (!IsBlockValid(heapStart, pos))
            return NULL;
        if (!pos->allocated && pos->size >= size)
        {
            u32 foundBlockSize = pos->size;
            if (foundBlockSize - size >= 2 * sizeof(struct MemBlock))
            {
                struct MemBlock *splitBlock = (struct MemBlock *)(pos->data + size);
                foundBlockSize -= sizeof(struct MemBlock) + size;
                PutMemBlockHeader(splitBlock, pos, pos->next, foundBlockSize);
                pos->size = size;
                pos->next = splitBlock;
                if (splitBlock->next != head)
                    splitBlock->next->prev = splitBlock;
            }
            pos->allocated = TRUE;
            pos->locationHi = ((uintptr_t)location) >> 14;
            pos->locationLo = (uintptr_t)location;
            *failure = ALLOC_FAILURE_NONE;
            return pos->data;
        }
        if (pos->next == head)
        {
            *failure = ALLOC_FAILURE_SPACE;
            return NULL;
        }
        pos = pos->next;
    }
    return NULL;
}

static void ReportAllocationFailure(enum AllocFailure failure, u32 size, const char *location)
{
    if (failure == ALLOC_FAILURE_CORRUPTION)
        fatalf("Heap corruption while allocating %u bytes (%p)", size, sHeapStart);
#if TESTING
    // Preserve the existing test-runner OOM result. Reporter backups use the
    // non-reporting API instead and never enter this path.
    Test_ExitWithResult(TEST_RESULT_ERROR, SourceLine(0), ":L%s:%d, %s: OOM allocating %u bytes",
        gTestRunnerState.test->filename, SourceLine(0), location == NULL ? "<unknown>" : location, size);
#else
    if (location != NULL)
        DebugPrintfLevel(MGBA_LOG_ERROR, "%s: out of memory trying to allocate %u bytes", location, size);
#endif
    // Nullable OOM is not corruption: the bag/Easy Chat have deliberate exits.
}

void *AllocInternal(void *heapStart, u32 size, const char *location)
{
    enum AllocFailure failure;
    void *mem = TryAllocInternal(heapStart, size, location, &failure);

    if (mem == NULL)
        ReportAllocationFailure(failure, size, location);
    return mem;
}

bool32 CheckMemBlockInternal(void *heapStart, void *pointer)
{
    uintptr_t address = (uintptr_t)pointer;
    uintptr_t start = (uintptr_t)heapStart;

    // Window cleanup intentionally uses FALSE to discard stale references.
    // Keep this a quiet predicate, never a reporting/allocation path.
    if (!IsHeapRangeValid(heapStart, sHeapSize) || (address & 3) != 0
     || address < start + sizeof(struct MemBlock) || address > start + sHeapSize)
        return FALSE;
    struct MemBlock *block = (struct MemBlock *)(address - sizeof(struct MemBlock));
    return IsBlockValid(heapStart, block) && block->allocated;
}

void FreeInternal(void *heapStart, void *pointer)
{
    if (pointer == NULL)
        return;
    if (!CheckMemBlockInternal(heapStart, pointer))
        fatalf("Invalid free, double free or corrupt heap: %p", pointer);

    struct MemBlock *head = heapStart;
    struct MemBlock *block = (struct MemBlock *)((uintptr_t)pointer - sizeof(struct MemBlock));
    struct MemBlock *next = block->next;
    struct MemBlock *prev = block->prev;
    // Validate all merge participants before changing any allocation or link.
    if ((next != head && !IsBlockValid(heapStart, next))
     || (block != head && !IsBlockValid(heapStart, prev)))
        fatalf("Corrupt neighboring heap block while freeing %p", pointer);

    block->allocated = FALSE;
    if (next != head && !next->allocated)
    {
        block->size += sizeof(struct MemBlock) + next->size;
        next->magic = 0;
        block->next = next->next;
        if (block->next != head)
            block->next->prev = block;
    }
    if (block != head && !prev->allocated)
    {
        prev->next = block->next;
        if (block->next != head)
            block->next->prev = prev;
        block->magic = 0;
        prev->size += sizeof(struct MemBlock) + block->size;
    }
}

static void ClearAllocatedMemory(void *mem, u32 size)
{
    if (mem != NULL)
        CpuFill32(0, mem, (size + 3) & ~3u);
}

void *AllocZeroedInternal(void *heapStart, u32 size, const char *location)
{
    void *mem = AllocInternal(heapStart, size, location);
    ClearAllocatedMemory(mem, size);
    return mem;
}

void InitHeap(void *heapStart, u32 heapSize)
{
    if (!IsHeapRangeValid(heapStart, heapSize))
        fatalf("Invalid heap range: %p, %u bytes", heapStart, heapSize);
    sHeapStart = heapStart;
    sHeapSize = heapSize;
    PutFirstMemBlockHeader(heapStart, heapSize);
}

void *Alloc_(u32 size, const char *location)
{
    return AllocInternal(sHeapStart, size, location);
}

void *AllocZeroed_(u32 size, const char *location)
{
    return AllocZeroedInternal(sHeapStart, size, location);
}

void *AllocRequired_(u32 size, const char *file, u32 line)
{
    enum AllocFailure failure;
    void *mem = TryAllocInternal(sHeapStart, size, file, &failure);

    if (mem == NULL)
        _FATALASSERTF_HANDLE("%s:%u: required allocation of %u bytes failed (heap %p, corrupt=%u)",
            file == NULL ? "<unknown>" : file, line, size, sHeapStart, failure == ALLOC_FAILURE_CORRUPTION);
    return mem;
}

void *AllocZeroedRequired_(u32 size, const char *file, u32 line)
{
    enum AllocFailure failure;
    void *mem = TryAllocInternal(sHeapStart, size, file, &failure);

    if (mem == NULL)
        _FATALASSERTF_HANDLE("%s:%u: required allocation of %u bytes failed (heap %p, corrupt=%u)",
            file == NULL ? "<unknown>" : file, line, size, sHeapStart, failure == ALLOC_FAILURE_CORRUPTION);
    ClearAllocatedMemory(mem, size);
    return mem;
}

bool32 CheckHeap(void)
{
    struct MemBlock *head = sHeapStart;
    struct MemBlock *pos = head;

    if (!IsHeapRangeValid(sHeapStart, sHeapSize))
        return FALSE;
    for (u32 remaining = sHeapSize / sizeof(struct MemBlock); remaining != 0; remaining--)
    {
        if (!IsBlockValid(sHeapStart, pos))
            return FALSE;
        if (pos->next == head)
            return TRUE;
        pos = pos->next;
    }
    return FALSE;
}

void *AllocUnchecked(u32 size)
{
    enum AllocFailure failure;
    // Only explicit non-reporting work pays for this bounded full scan. A
    // reporter must not allocate an early free block if a later one is corrupt.
    if (!CheckHeap())
        return NULL;
    return TryAllocInternal(sHeapStart, size, NULL, &failure);
}

void *AllocZeroedUnchecked(u32 size)
{
    void *mem = AllocUnchecked(size);
    ClearAllocatedMemory(mem, size);
    return mem;
}

void Free(void *pointer)
{
    FreeInternal(sHeapStart, pointer);
}

bool32 CheckMemBlock(void *pointer)
{
    return CheckMemBlockInternal(sHeapStart, pointer);
}

const struct MemBlock *HeapHead(void)
{
    return sHeapStart;
}

const char *MemBlockLocation(const struct MemBlock *block)
{
    if (!IsHeaderValid(sHeapStart, block) || !block->allocated
     || (block->locationHi == 0 && block->locationLo == 0))
        return NULL;
    return (const char *)(ROM_START | (block->locationHi << 14) | block->locationLo);
}
