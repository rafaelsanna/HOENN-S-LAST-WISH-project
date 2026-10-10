#include "global.h"
#include "assertf.h"
#include "malloc.h"
#include "constants/hlw_version.h"
#include "test/test.h"

static void ExpectRenderedText(u32 x, u32 y, const char *text)
{
    while (*text != '\0')
    {
        EXPECT_EQ(Assertf_TestReadChar(x++, y), *text++);
    }
}

TEST("assertf: fatal and recoverable headers show the central patch version")
{
    for (u32 fatal = 0; fatal < 2; fatal++)
    {
        Assertf_TestRenderHeader(fatal);
        ExpectRenderedText(0, 0, fatal ? "HLW FATAL REPORT" : "HLW RECOVERABLE REPORT");
        ExpectRenderedText(0, 2, "PATCH " HLW_PATCH_VERSION);
        // Keep the address row and message start free for the report itself.
        EXPECT_EQ(Assertf_TestReadChar(0, 1), ' ');
        EXPECT_EQ(Assertf_TestReadChar(0, 6), ' ');
    }
}

TEST("assertf: successful condition is evaluated once and skips recovery")
{
    u32 evaluations = 0;
    bool32 recovered = FALSE;

    assertf(++evaluations == 1, "successful check %u", evaluations)
    {
        recovered = TRUE;
    }

    EXPECT_EQ(evaluations, 1);
    EXPECT_EQ(recovered, FALSE);
}

TEST("assertf: successful checks support no custom message")
{
    u32 evaluations = 0;

    assertf(++evaluations == 1);
    EXPECT_EQ(evaluations, 1);
}

TEST("assertf: ordinary failure becomes an expected invalid test, not a BIOS hang")
{
    Test_ExpectedResult(TEST_RESULT_INVALID);
    assertf(FALSE, "deliberate ordinary failure %d", 23);
}

TEST("assertf: errorf becomes an expected invalid test, not a BIOS hang")
{
    Test_ExpectedResult(TEST_RESULT_INVALID);
    errorf("deliberate error %s", "message");
}

TEST("assertf: successful fatal condition is evaluated once")
{
    u32 evaluations = 0;

    fatal_assertf(++evaluations == 1, "successful fatal check");
    EXPECT_EQ(evaluations, 1);
}

TEST("assertf: fatal assertion becomes an expected error test, not a BIOS hang")
{
    Test_ExpectedResult(TEST_RESULT_ERROR);
    fatal_assertf(FALSE, "deliberate fatal assertion %u", 42);
}

TEST("assertf: fatalf becomes an expected error test, not a BIOS hang")
{
    Test_ExpectedResult(TEST_RESULT_ERROR);
    fatalf("deliberate fatal error %s", "message");
}

TEST("assertf: formatter handles signed extremes and unsigned maximum")
{
    Assertf_TestRender("%d\n%i\n%u", INT_MIN, -1, UINT_MAX);
    ExpectRenderedText(0, 0, "-2147483648");
    ExpectRenderedText(0, 1, "-1");
    ExpectRenderedText(0, 2, "4294967295");
}

TEST("assertf: formatter handles zero hex uppercase hex and fixed-width pointers")
{
    Assertf_TestRender("%x %X\n%p\n%p", 0u, UINT_MAX,
        (void *)0x1234ABCD, (void *)NULL);
    ExpectRenderedText(0, 0, "0 FFFFFFFF");
    ExpectRenderedText(0, 1, "0X1234ABCD");
    ExpectRenderedText(0, 2, "0X00000000");
}

TEST("assertf: encoded game strings advance and preserve newlines punctuation and spaces")
{
    static const u8 text[] = _("aBc 012 !?\nNext aAzZ");

    Assertf_TestRender("%S\n%s", text, "ascii text");
    ExpectRenderedText(0, 0, "ABC 012 !?");
    ExpectRenderedText(0, 1, "NEXT AAZZ");
    ExpectRenderedText(0, 2, "ASCII TEXT");
}

TEST("assertf: formatter prints percent and preserves unsupported specifiers")
{
    Assertf_TestRender("%% %q %u %", 7u);
    ExpectRenderedText(0, 0, "% %Q 7 %");
}

TEST("assertf: formatter handles null and invalid string pointers without dereferencing")
{
    Assertf_TestRender("%s\n%S\n%s", (const char *)NULL,
        (const u8 *)NULL, (const char *)1);
    ExpectRenderedText(0, 0, "(NULL)");
    ExpectRenderedText(0, 1, "(NULL)");
    ExpectRenderedText(0, 2, "(BAD PTR)");
}

TEST("assertf: formatter truncates long strings at the report boundary")
{
    char text[600];
    memset(text, 'a', sizeof(text));

    // There deliberately is no terminator: rendering must stop when the
    // available rows are full, before reaching the end of this array.
    Assertf_TestRender("%s", text);
    EXPECT_EQ(Assertf_TestReadChar(0, 0), 'A');
    EXPECT_EQ(Assertf_TestReadChar(29, 17), 'A');
    EXPECT_EQ(Assertf_TestReadChar(0, 18), ' ');
}

TEST("assertf: direct renderer remains usable when the heap has no free blocks")
{
    const struct MemBlock *head = HeapHead();
    const struct MemBlock *block = head;
    void *remaining = NULL;

    // Each function test starts with a fresh heap and one runner allocation.
    // Consume its remaining block, without replacing the runner's own heap.
    do
    {
        if (!block->allocated)
        {
            EXPECT_EQ(remaining, NULL);
            remaining = Alloc(block->size);
        }
        block = block->next;
    } while (block != head);
    EXPECT_NE(remaining, NULL);

    Assertf_TestRender("heap exhausted %u", 123u);
    ExpectRenderedText(0, 0, "HEAP EXHAUSTED 123");
    Assertf_TestRenderHeader(TRUE);
    ExpectRenderedText(0, 2, "PATCH " HLW_PATCH_VERSION);
    Free(remaining);
}
