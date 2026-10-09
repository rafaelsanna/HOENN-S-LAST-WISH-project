// Minimal HLW adaptation of pokeemerald-expansion PRs 8196/8570/8580/10156.
// The fatal path deliberately has no allocation, decompression, UI cleanup,
// scene backup or alloca. Nothing in this file accesses the player's save.
#include <stdarg.h>
#include "global.h"
#include "gpu_regs.h"
#include "main.h"
#include "malloc.h"
#include "constants/characters.h"
#include "constants/hlw_version.h"
#include "constants/rgb.h"

enum { MODE_RECOVERABLE, MODE_FATAL };
enum { REPORT_COLS = 30, REPORT_ROWS = 18, FONT_TILE = 40 };
STATIC_ASSERT(sizeof("PATCH " HLW_PATCH_VERSION) - 1 <= REPORT_COLS, CrashPatchVersionFits);
// 41 original glyphs, followed by punctuation absent from upstream's font.
static const char sGlyphChars[] = " _.:/ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-%+=?,()[]!";
static const u32 sGlyphs[] = INCBIN_U32("graphics/crash_screen/font.1bpp");
static const u8 ALIGNED(4) sExtraGlyphs[][8] =
{
    {0, 0, 0, 0x7E, 0, 0, 0, 0}, // -
    {0, 0x62, 0x64, 8, 0x10, 0x26, 0x46, 0}, // %
    {0, 0x10, 0x10, 0x7C, 0x10, 0x10, 0, 0}, // +
    {0, 0, 0x7C, 0, 0x7C, 0, 0, 0}, // =
    {0, 0x38, 0x44, 4, 8, 0, 8, 0}, // ?
    {0, 0, 0, 0, 0, 0x18, 0x10, 0x20}, // ,
    {0, 8, 0x10, 0x20, 0x20, 0x10, 8, 0}, // (
    {0, 0x20, 0x10, 8, 8, 0x10, 0x20, 0}, // )
    {0, 0x38, 0x20, 0x20, 0x20, 0x20, 0x38, 0}, // [
    {0, 0x38, 8, 8, 8, 8, 0x38, 0}, // ]
    {0, 0x10, 0x10, 0x10, 0x10, 0, 0x10, 0}, // !
};
static const u16 sPalettes[][2] =
{
    INCBIN_U16("graphics/crash_screen/assertf.gbapal"),
    INCBIN_U16("graphics/crash_screen/fatalf.gbapal"),
};
#define REPORT_VRAM_SIZE (FONT_TILE * TILE_SIZE_4BPP + (sizeof(sGlyphs) + sizeof(sExtraGlyphs)) * 4)
#define RENDER_STACK_RESERVE 512
static EWRAM_DATA bool8 sReporting = FALSE;

extern u8 __system_stack_top[];
extern u8 __system_stack_bottom[];
extern u8 __iwram_data_end[];

// No mutable screen-sized globals; this exists only in a healthy heap when
// the caller explicitly supports recovery. All buffers are word-aligned.
struct Backup
{
    u16 ime, dispcnt, bg0cnt, soundL, soundH;
    u16 bldcnt, bldalpha, bldy, mosaic, hofs, vofs;
    u16 palette[2];
    u8 ALIGNED(4) vram[REPORT_VRAM_SIZE];
};

static bool32 Readable(const void *pointer)
{
    uintptr_t p = (uintptr_t)pointer;
    return (p >= ROM_START && p < ROM_END)
        || (p >= EWRAM_START && p < EWRAM_END)
        || (p >= IWRAM_START && p < IWRAM_END);
}

static u32 Glyph(char c)
{
    if (c >= 'a' && c <= 'z')
        c -= 'a' - 'A';
    for (u32 i = 0; i < sizeof(sGlyphChars) - 1; i++)
        if (sGlyphChars[i] == c)
            return FONT_TILE + i;
    return FONT_TILE + 1;
}

static bool32 Putc(u32 *x, u32 *y, char c)
{
    if (*y >= REPORT_ROWS)
        return FALSE;
    if (c != '\n')
        ((vu16 *)VRAM)[*y * 32 + *x] = Glyph(c);
    if (c == '\n' || ++*x == REPORT_COLS)
    {
        *x = 0;
        ++*y;
    }
    return *y < REPORT_ROWS;
}

static char Decode(u8 c)
{
    if (c >= CHAR_A && c <= CHAR_Z) return 'A' + c - CHAR_A;
    if (c >= CHAR_a && c <= CHAR_z) return 'a' + c - CHAR_a;
    if (c >= CHAR_0 && c <= CHAR_9) return '0' + c - CHAR_0;
    switch (c)
    {
    case CHAR_SPACE: return ' ';
    case CHAR_PERIOD: return '.';
    case CHAR_COLON: return ':';
    case CHAR_SLASH: return '/';
    case CHAR_HYPHEN: return '-';
    case CHAR_EXCL_MARK: return '!';
    case CHAR_QUESTION_MARK: return '?';
    case CHAR_COMMA: return ',';
    case CHAR_PERCENT: return '%';
    case CHAR_PLUS: return '+';
    case CHAR_EQUALS: return '=';
    case CHAR_LEFT_PAREN: return '(';
    case CHAR_RIGHT_PAREN: return ')';
    case CHAR_NEWLINE:
    case CHAR_PROMPT_SCROLL:
    case CHAR_PROMPT_CLEAR: return '\n';
    default: return '_';
    }
}

static bool32 Puts(u32 *x, u32 *y, const void *pointer, bool32 encoded)
{
    const u8 *p = pointer;
    if (p == NULL) return Puts(x, y, "(NULL)", FALSE);
    while (*y < REPORT_ROWS)
    {
        if (!Readable(p)) return Puts(x, y, "(BAD PTR)", FALSE);
        u8 c = *p++; // Includes upstream PR 8570's essential %S advance.
        if (c == (encoded ? EOS : '\0')) return TRUE;
        if (!Putc(x, y, encoded ? Decode(c) : c)) return FALSE;
    }
    return FALSE;
}

static bool32 PutUnsigned(u32 *x, u32 *y, u32 value, u32 base, u32 width)
{
    u8 digits[10]; // UINT_MAX needs ten decimal digits.
    u32 n = 0;
    do
    {
        digits[n++] = value % base;
        value /= base;
    } while (value != 0);
    while (n < width) digits[n++] = 0;
    while (n != 0)
    {
        u8 d = digits[--n];
        if (!Putc(x, y, d < 10 ? '0' + d : 'A' + d - 10)) return FALSE;
    }
    return TRUE;
}

static void Vprint(u32 x, u32 y, const char *fmt, va_list va)
{
    if (fmt == NULL) { Puts(&x, &y, "(NULL FORMAT)", FALSE); return; }
    while (y < REPORT_ROWS)
    {
        if (!Readable(fmt)) { Puts(&x, &y, "(BAD FORMAT)", FALSE); return; }
        char c = *fmt++;
        if (c == '\0') return;
        if (c != '%') { Putc(&x, &y, c); continue; }
        if (!Readable(fmt)) return;
        c = *fmt++;
        switch (c)
        {
        case 'd':
        case 'i':
        {
            s32 value = va_arg(va, int);
            u32 magnitude = value;
            if (value < 0)
            {
                if (!Putc(&x, &y, '-')) return;
                magnitude = 0u - magnitude; // Defined even for INT_MIN.
            }
            PutUnsigned(&x, &y, magnitude, 10, 0);
            break;
        }
        case 'u': PutUnsigned(&x, &y, va_arg(va, unsigned), 10, 0); break;
        case 'x':
        case 'X': PutUnsigned(&x, &y, va_arg(va, unsigned), 16, 0); break;
        case 'p':
            if (!Puts(&x, &y, "0x", FALSE)) return;
            PutUnsigned(&x, &y, (uintptr_t)va_arg(va, const void *), 16, 8);
            break;
        case 's': Puts(&x, &y, va_arg(va, const char *), FALSE); break;
        case 'S': Puts(&x, &y, va_arg(va, const u8 *), TRUE); break;
        case '%': Putc(&x, &y, '%'); break;
        default:
            if (!Putc(&x, &y, '%') || c == '\0') return;
            Putc(&x, &y, c);
            break;
        }
    }
}

static void InitScreen(u32 mode)
{
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    REG_BG0CNT = BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(0);
    REG_BG0HOFS = REG_BG0VOFS = 0;
    REG_BLDCNT = REG_BLDALPHA = REG_BLDY = REG_MOSAIC = 0;
    for (u32 i = 0; i < FONT_TILE * TILE_SIZE_4BPP / sizeof(u16); i++)
        ((vu16 *)VRAM)[i] = FONT_TILE;
    // Expand tiny raw 1bpp ROM glyphs in place. No SMOL/LZ decoder or buffer.
    for (u32 i = 0; i < sizeof(sGlyphs) + sizeof(sExtraGlyphs); i++)
    {
        u8 row = i < sizeof(sGlyphs) ? ((const u8 *)sGlyphs)[i] : ((const u8 *)sExtraGlyphs)[i - sizeof(sGlyphs)];
        u32 pixels = 0;
        for (u32 bit = 0; bit < 8; bit++) pixels |= ((row >> bit) & 1) << (bit * 4);
        ((vu32 *)(VRAM + FONT_TILE * TILE_SIZE_4BPP))[i] = pixels;
    }
    ((vu16 *)BG_PLTT)[0] = sPalettes[mode][0];
    ((vu16 *)BG_PLTT)[1] = sPalettes[mode][1];
}

static void Label(u32 row, const char *text)
{
    u32 x = 0;
    for (u32 i = 0; text[i] != '\0' && x < REPORT_COLS; i++)
        ((vu16 *)VRAM)[row * 32 + x++] = Glyph(text[i]);
}

static void ReportHeader(u32 mode)
{
    Label(0, mode == MODE_FATAL ? "HLW FATAL REPORT" : "HLW RECOVERABLE REPORT");
    Label(2, "PATCH " HLW_PATCH_VERSION);
}

static void WaitFrame(void)
{
    // IRQs are suspended only while showing the fault screen. BIOS waits
    // cannot be used with IME=0. Wait for a NEW frame, not just VCOUNT>=160.
    while (REG_VCOUNT >= DISPLAY_HEIGHT);
    while (REG_VCOUNT < DISPLAY_HEIGHT);
}

static __attribute__((used)) _Noreturn void EmergencyScreen(void)
{
    REG_IME = 0;
    DmaStop(0);
    REG_SOUNDCNT_L = REG_SOUNDCNT_H = 0;
    InitScreen(MODE_FATAL);
    ReportHeader(MODE_FATAL);
    Label(4, "REPORTER REENTRY OR LOW STACK");
    Label(6, "RESTART THE GAME. DO NOT SAVE.");
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON;
    while (TRUE) WaitFrame();
}

// Discard a dangerously low System stack only for a non-returning report.
// Never borrow globals or reduce the linker's protected stack reservation.
static NAKED _Noreturn void EmergencyStack(void)
{
    asm volatile("ldr r0, =0x04000208\n"
                 "mov r1, #0\n"
                 "strh r1, [r0]\n"
                 "ldr r0, =__system_stack_top\n"
                 "mov sp, r0\n"
                 "ldr r0, =EmergencyScreen\n"
                 "bx r0\n"
                 ".pool\n");
}

// crt0 dispatches C IRQ handlers in System mode, so CPSR's mode is not
// sufficient. The banked IRQ SP remains below its boot top during a handler.
static __attribute__((target("arm"), naked)) u32 IrqStackPointer(void)
{
    asm volatile("mrs r1, cpsr\n"
                 "bic r2, r1, #0x1f\n"
                 "orr r2, r2, #0xd2\n"
                 "msr cpsr_c, r2\n"
                 "mov r0, sp\n"
                 "msr cpsr_c, r1\n"
                 "bx lr\n");
}

static void CrashScreen(u32 mode, const void *caller, const void *here, const char *fmt, va_list va)
{
    // Freeze IRQ stack use before testing renderer headroom. Preserve the
    // original state so critical sections/IRQ callers can never resume here.
    u16 ime = REG_IME;
    REG_IME = 0;
    uintptr_t sp;
    asm volatile("mov %0, sp" : "=r"(sp));
    if ((uintptr_t)__iwram_data_end > (uintptr_t)__system_stack_bottom
     || sp < (uintptr_t)__system_stack_bottom + RENDER_STACK_RESERVE
     || sp > (uintptr_t)__system_stack_top)
        EmergencyStack();

    if (sReporting)
        EmergencyStack();
    sReporting = TRUE;
    struct Backup *backup = NULL;
    // Recovery is deliberately conservative: no IRQ, scanline effect, bitmap
    // scene, disabled-IRQ critical section, or large stack fallback.
    if (mode == MODE_RECOVERABLE
     && ime != 0 && !gMain.inBattle && (REG_DISPCNT & 7) == 0
     && (REG_DMA0CNT_H & DMA_ENABLE) == 0
     && gMain.hblankCallback == NULL
     && IrqStackPointer() == IWRAM_END - 0x60)
        backup = AllocUnchecked(sizeof(*backup));
    if (backup == NULL) mode = MODE_FATAL;

    if (backup != NULL)
    {
        backup->ime = ime;
        backup->dispcnt = REG_DISPCNT;
        backup->bg0cnt = REG_BG0CNT;
        backup->soundL = REG_SOUNDCNT_L;
        backup->soundH = REG_SOUNDCNT_H;
        backup->bldcnt = REG_BLDCNT;
        backup->bldalpha = REG_BLDALPHA;
        backup->bldy = GetGpuReg(REG_OFFSET_BLDY);
        backup->mosaic = GetGpuReg(REG_OFFSET_MOSAIC);
        backup->hofs = GetGpuReg(REG_OFFSET_BG0HOFS);
        backup->vofs = GetGpuReg(REG_OFFSET_BG0VOFS);
        CpuCopy16((void *)BG_PLTT, backup->palette, sizeof(backup->palette));
        CpuCopy32((void *)VRAM, backup->vram, sizeof(backup->vram));
    }
    // Only the fault screen takes over hardware. No DMA subsystem, wireless,
    // mixer, music-player state, task, window or save data is reinitialized.
    DmaStop(0);
    REG_SOUNDCNT_L = REG_SOUNDCNT_H = 0;
    InitScreen(mode);
    ReportHeader(mode);
    u32 x = 0, y = 1;
    Puts(&x, &y, "HERE ", FALSE);
    PutUnsigned(&x, &y, (uintptr_t)here, 16, 8);
    Puts(&x, &y, " FROM ", FALSE);
    PutUnsigned(&x, &y, (uintptr_t)caller, 16, 8);
    Vprint(0, 3, fmt, va);
    Label(19, mode == MODE_FATAL ? "RESTART GAME - NO CONTINUE" : "PRESS START TO RETURN");
    WaitFrame();
    REG_DISPCNT = DISPCNT_MODE_0 | DISPCNT_BG0_ON;
    if (mode == MODE_FATAL)
        while (TRUE) WaitFrame();

    u16 previous = ~REG_KEYINPUT;
    bool32 pressed = FALSE;
    while (TRUE)
    {
        WaitFrame();
        u16 keys = ~REG_KEYINPUT;
        if (!pressed && !(previous & START_BUTTON) && (keys & START_BUTTON)) pressed = TRUE;
        if (pressed && !(keys & START_BUTTON)) break;
        previous = keys;
    }
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    CpuCopy32(backup->vram, (void *)VRAM, sizeof(backup->vram));
    CpuCopy16(backup->palette, (void *)BG_PLTT, sizeof(backup->palette));
    REG_BG0CNT = backup->bg0cnt;
    REG_BG0HOFS = backup->hofs;
    REG_BG0VOFS = backup->vofs;
    REG_BLDCNT = backup->bldcnt;
    REG_BLDALPHA = backup->bldalpha;
    REG_BLDY = backup->bldy;
    REG_MOSAIC = backup->mosaic;
    REG_SOUNDCNT_L = backup->soundL;
    REG_SOUNDCNT_H = backup->soundH;
    REG_DISPCNT = backup->dispcnt;
    ime = backup->ime;
    Free(backup);
    sReporting = FALSE;
    REG_IME = ime;
}

void AssertfCrashScreen(const void *caller, const char *fmt, ...)
{
    va_list va;
    va_start(va, fmt);
    CrashScreen(MODE_RECOVERABLE, caller, __builtin_return_address(0), fmt, va);
    va_end(va);
}

_Noreturn void FatalfCrashScreen(const void *caller, const char *fmt, ...)
{
    va_list va;
    va_start(va, fmt);
    CrashScreen(MODE_FATAL, caller, __builtin_return_address(0), fmt, va);
    va_end(va);
    while (TRUE); // CrashScreen cannot return in fatal mode.
}

#if TESTING
void Assertf_TestRenderHeader(bool32 fatal)
{
    u16 dispcnt = REG_DISPCNT;
    u32 mode = fatal ? MODE_FATAL : MODE_RECOVERABLE;
    InitScreen(mode);
    ReportHeader(mode);
    REG_DISPCNT = dispcnt;
}

void Assertf_TestRender(const char *fmt, ...)
{
    u16 dispcnt = REG_DISPCNT;
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    InitScreen(MODE_FATAL);
    va_list va;
    va_start(va, fmt);
    Vprint(0, 0, fmt, va);
    va_end(va);
    REG_DISPCNT = dispcnt;
}

char Assertf_TestReadChar(u32 x, u32 y)
{
    if (x >= 32 || y >= 20) return '?';
    u16 tile = ((vu16 *)VRAM)[y * 32 + x];
    if (tile < FONT_TILE || tile >= FONT_TILE + sizeof(sGlyphChars) - 1) return '?';
    return sGlyphChars[tile - FONT_TILE];
}
#endif
