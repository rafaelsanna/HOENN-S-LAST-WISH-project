#ifndef GUARD_ALLOC_H
#define GUARD_ALLOC_H


#define FREE_AND_SET_NULL(ptr)          \
{                                       \
    Free(ptr);                          \
    ptr = NULL;                         \
}

#define TRY_FREE_AND_SET_NULL(ptr) if (ptr != NULL) FREE_AND_SET_NULL(ptr)

#define MALLOC_SYSTEM_ID 0xA3A3

struct MemBlock
{
    // Whether this block is currently allocated.
    u16 allocated:1;

    u16 unused_00:4;

    // High 11 bits of location pointer.
    u16 locationHi:11;

    // Magic number used for error checking. Should equal MALLOC_SYSTEM_ID.
    u16 magic;

    // Size of the block (not including this header struct).
    u32 size:18;

    // Low 14 bits of location pointer.
    u32 locationLo:14;

    // Previous block pointer. Equals sHeapStart if this is the first block.
    struct MemBlock *prev;

    // Next block pointer. Equals sHeapStart if this is the last block.
    struct MemBlock *next;

    // Data in the memory block. (Arrays of length 0 are a GNU extension.)
    u8 data[0];
};

#define HEAP_SIZE 0x1C300
extern u8 gHeap[HEAP_SIZE];

#if TESTING || !defined(NDEBUG)

#define Alloc(size) Alloc_(size, __FILE__ ":" STR(__LINE__))
#define AllocZeroed(size) AllocZeroed_(size, __FILE__ ":" STR(__LINE__))

#else

#define Alloc(size) Alloc_(size, NULL)
#define AllocZeroed(size) AllocZeroed_(size, NULL)

#endif

// Required allocations retain the call site even in release builds. Ordinary
// Alloc/AllocZeroed remain nullable for callers with an explicit recovery path.
#define AllocRequired(size) AllocRequired_(size, __FILE__, __LINE__)
#define AllocZeroedRequired(size) AllocZeroedRequired_(size, __FILE__, __LINE__)

void *Alloc_(u32 size, const char *location);
void *AllocZeroed_(u32 size, const char *location);
void *AllocRequired_(u32 size, const char *file, u32 line);
void *AllocZeroedRequired_(u32 size, const char *file, u32 line);
// Non-reporting paths for crash-screen backups: failure/corruption returns NULL.
// These perform a bounded integrity check and must never report recursively.
void *AllocUnchecked(u32 size);
void *AllocZeroedUnchecked(u32 size);
void Free(void *pointer);
void InitHeap(void *heapStart, u32 heapSize);
bool32 CheckMemBlock(void *pointer);
bool32 CheckHeap(void);

const struct MemBlock *HeapHead(void);
const char *MemBlockLocation(const struct MemBlock *block);

#endif // GUARD_ALLOC_H
