#include "global.h"
#include "decompress_error_handler.h"

// A failed decoder must never continue with an uninitialized destination.
// This path needs neither a healthy heap nor another decompression, and does
// not free potentially corrupt UI data.
void DecompressionError(const u32 *src, enum CompressionError error)
{
    fatalf("Decompression failed\nSource %p\nError %u", src, error);
}

void DecompressionError_CB2(void)
{
    fatalf("Decompression failed\nLegacy callback without source");
}

void DoDecompressionError(void)
{
    DecompressionError((const u32 *)0x12345678, HEADER_ERROR);
}
