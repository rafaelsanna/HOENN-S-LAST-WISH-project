# HLW crash reporting

The formatted assertion reporter makes selected, detected failures readable on
the GBA itself. It displays the source location, a return address and an optional
message without using the normal window, sprite or compressed-graphics systems.
It is not a general CPU exception handler: an invalid jump, an infinite loop or
memory corruption that never reaches a check can still freeze without a report.
The reported return address identifies a reporting call site, not necessarily
the first instruction responsible for the problem.

The reporter does not write or delete the save. Resetting after a fatal report
still loses progress since the last normal save. Do not add save operations to
the error path: the failure may involve the heap, scene state or save buffers.

All report screens, including the low-stack emergency screen, display
`PATCH <version>` below the header/addresses. The single project-version definition
is `HLW_PATCH_VERSION` in `include/constants/hlw_version.h`: update that value
and rebuild for each release. The displayed version is embedded in that ROM;
older ROMs keep their original label. This does not change the Gen 3
`GAME_VERSION` identifier, save layout or RAM reservations.

## API and build configuration

Include `assertf.h` at the call site.

```c
assertf(index < count, "index %u exceeds count %u", index, count)
{
    // A deliberately safe recovery, if the report allows continuing.
    return;
}

assertf(pointer != NULL); // No custom message is required.
errorf("Unexpected state %u", state);

fatal_assertf(pointer != NULL, "Required pointer is NULL");
fatalf("Unrecoverable state %u", state);
```

- `assertf` evaluates its condition once. A successful check skips the optional
  recovery block. A failed check reports, then executes that block if recovery
  is allowed and the tester presses START.
- `errorf` reports unconditionally and returns only if recovery is allowed.
- `fatal_assertf` reports a failed condition and never returns; `fatalf` reports
  unconditionally and never returns. Neither offers START-to-continue.
- `ASSERTF_SCREEN_ENABLED` in `include/config/general.h` controls ordinary reporting
  and defaults to `TRUE`. It is independent of `NDEBUG` and `RELEASE`, so tester
  builds retain reports even when ordinary debug logging is disabled.
- When ordinary reporting is disabled, a failing `assertf` still runs its
  recovery block; `errorf` does not display a report. Fatal checks remain enabled.
- Under `TESTING`, ordinary failures become `TEST_RESULT_INVALID` and fatal
  failures become `TEST_RESULT_ERROR`, rather than opening an interactive screen.

Choose a fatal check when continuing could dereference an invalid pointer, write
outside a buffer or damage saved data. An ordinary assertion is not permission
to continue through an unsafe operation: provide a recovery block that actually
avoids that operation. Do not rely on assertion messages for required side
effects, and avoid `break`/`continue` inside the macro's loop-based recovery body.

The compact formatter supports `%d`, `%i`, `%u`, `%x`, `%X`, `%p`, `%s`, `%S`
and `%%`. `%s` expects a NUL-terminated ASCII string; `%S` expects an encoded
game string terminated with `EOS`, for example `_("Text")`. These are different
string encodings and are not interchangeable. Output is uppercase and bounded
by the available report rows. This is not the full libc `printf` interface:
do not assume floating-point, precision, field-width or length modifiers work.
Pointer-range checks and bounded output reduce formatter risks but do not prove
that a pointer in a valid memory region refers to a valid string.
Encoded string control codes, accented letters and other glyphs outside the
small diagnostic font are not expanded; unsupported bytes appear as underscores.

## Allocation checks

The allocator exposes separate policies rather than treating every out-of-memory
condition as fatal:

- `Alloc` and `AllocZeroed` remain nullable on ordinary exhaustion. Existing
  callers with a deliberate failure/cleanup path must retain that behavior.
- `AllocRequired` and `AllocZeroedRequired` report fatally if an allocation fails.
  Use them only where the caller cannot safely proceed without the buffer; they
  retain the requesting file and line even in a release build.
- `AllocUnchecked` and `AllocZeroedUnchecked` are non-reporting helpers for the
  reporter's optional backup. They return NULL on exhaustion or detected heap
  corruption, preventing allocation-failure/reporting recursion.
- Invalid/double frees, invalid heap initialization and detected corrupt block
  headers or links are fatal. `CheckMemBlock` and `CheckHeap` remain quiet
  predicates, so stale-reference cleanup can reject a pointer without opening
  another report.

Header/link validation is bounded and checks addresses before dereferencing
them. It detects particular heap invariants, not arbitrary writes that happened
to leave a plausible header. The heap's existing capacity and block layout are
not spare storage for a permanently reserved screen backup.

## Rendering and recovery policy

The font is a small, uncompressed ROM asset derived from upstream's 8-by-328
font. Rendering writes directly to VRAM and palette RAM; it does not allocate
windows or sprites and does not invoke a SMOL/compressed-asset decoder.

Fatal reporting is allocation-free. Recoverable reporting may use a heap backup
of the graphics it temporarily replaces; if a safe backup cannot be obtained,
the report becomes fatal. There is no large `alloca` or stack-array fallback.
The existing linker-enforced 4,096-byte System stack and matching boot stack
pointer remain part of the safety boundary, not spare space for a crash screen.

Recovery is deliberately conservative. It requires a nonbattle foreground mode-0 scene,
enabled interrupts, no active DMA0 transfer, no HBlank callback and sufficient
stack headroom. Interrupt-context failures, active scanline/DMA scenes, low-stack
conditions and other unsupported contexts use the fatal path instead. IRQ
handlers in this engine execute C code in System mode, so checking the current
CPSR mode alone would not establish that a call came from the foreground.

During its temporary display takeover, the reporter locally masks interrupts
and mutes hardware sound outputs. It does not stop/continue the music players,
so it does not awaken previously paused tracks or destroy their software state.
Recovery restores its saved hardware state without replacing the game's GPU
register mirrors. Write-only scroll/register values must come from the engine's
software state rather than open-bus hardware reads. The fatal path stops DMA0
for readability; this is local error handling, not a change to the global DMA,
audio or interrupt engines.

If stack headroom is already too small, the fatal path abandons the interrupted
call chain and uses the protected stack top for a minimal emergency report. It
cannot safely return afterward. This improves the chance of displaying a
low-stack diagnosis; it does not guarantee a report after arbitrary corruption
of RAM, the call chain or interrupt state.
The C entry frames are established before the headroom check; an already
destroyed stack pointer can still fail before the emergency handler is reached.

Recoverable graphics/audio restoration still needs real-hardware verification.
An emulator pass is not proof that write-only hardware registers, DMA timing and
audio behavior are identical on a physical GBA.

## Collecting and interpreting a report

1. Photograph the complete screen before resetting, including the source line,
   address and message. Record the exact action that led to it.
2. Keep the exact ROM used and its matching ELF and MAP files from the same
   build. Record the source revision, build configuration and ROM SHA-256.
   A fresh rebuild at the same commit is not automatically an identical binary.
3. Include the emulator and version, or physical hardware and flashcart model,
   plus relevant configuration settings. Provide a copy of the last normal save
   if useful; preserve the original save and ROM unchanged.
4. Distinguish a normal Continue load from an emulator save state. Do not reuse
   save states across ROM builds to validate a fix.

With the matching ELF, an address can be resolved using, for example:

```sh
arm-none-eabi-addr2line -e Pokemon_HLW.elf -f -C 0x08012344
```

Clear bit 0 of a Thumb function/return address when interpreting it. Inspect
nearby disassembly as well: a return address points after the reporting call,
and optimization/inlining can affect the source line shown. A stale or
configuration-mismatched ELF/MAP cannot establish where the report came from or
how much stack was available.
The normal build embeds assertion file/line text, but does not enable C debug
line tables globally. Its ELF symbols and disassembly remain useful; `addr2line`
may report an unknown source line. For full line tables, use `DINFO=1` with a
fresh, separate object directory and retain that exact build's ELF/MAP.

## Validation

The normal build and focused regression suite pass. Interactive runtime checks
are recorded separately below; compiling alone does not validate restoration.

Fresh normal baseline and port use the same default modern `-O2`, non-LTO
configuration at commit `064f5161f6`, with this port as local changes:

| Linker usage | Baseline | With reporter | Change |
| --- | ---: | ---: | ---: |
| ROM payload | 30,190,780 B | 30,195,972 B | +5,192 B |
| EWRAM | 256,768 B | 256,764 B | -4 B |
| IWRAM globals/code | 28,060 B | 28,060 B | 0 B |

Removing the old decompression-screen state offsets the new small EWRAM
reporting latch. No heap capacity was removed (115,456 bytes), and no permanent
diagnostic buffer was added to IWRAM. The optional recoverable backup is 2,972
bytes, plus the existing allocator header, allocated only during a report.

`__iwram_data_end` remains `0x03006D9C`, protected stack bottom `0x03006E40`,
and boot/System stack top `0x03007E40`: the 4,096-byte reservation and 164-byte
static gap are unchanged. Both linker scripts, boot initialization, EWRAM
`gTasks` and `gMain`'s tail section are unchanged. These static checks are not
whole-game worst-case runtime stack coverage.

The build passes the frozen save-ABI, encounter and Wish/mining registry checks.
The expanded focused test ROM passes all 156 test definitions' expectations:
140 ordinary passes and 16 deliberately expected non-PASS outcomes, including the existing
`Tests resume after CRASH` fixture. Those expected fatal/invalid outcomes verify
that the new guards actually fire, rather than being unexpected game crashes.

Reproduce the focused suite without the oversized monolithic test ROM:

```sh
make -j12 TEST=1 FILE_NAME=build/crash-reporting \
  TEST_SRCS='test/test_runner.c test/test_runner_args.c test/test_runner_battle.c test/test_test_runner.c test/assertf.c test/crash_allocator.c test/crash_runtime_guards.c test/runtime_stack_layout.c test/battle_transition_cleanup.c test/battler_sprite_lifecycle.c test/healthbox_layers.c test/compression/smol.c' \
  TESTS= check
```

The focused `test/assertf.c` suite is intended to check successful-condition and
recovery semantics, noninteractive test failures, integer boundaries, pointer
formatting, encoded-string advancement, bounded output and heap-exhausted direct
rendering. It does not by itself exercise the interactive takeover/restore loop.
`test/crash_allocator.c` separately exercises allocation policy, alignment,
zeroing/coalescing, corrupt links, invalid frees and non-reporting failure paths.
`test/crash_runtime_guards.c` verifies invalid transition IDs, a missing task,
task-slot exhaustion without clobbering task zero, and an invalid compressed
header pointer. Existing stack-layout and transition-cleanup tests also run.
The expanded run additionally passes the existing battler-sprite lifecycle,
healthbox layering/bounce and enabled SMOL/LZ/VRAM compression tests; it does
not include or modify PC/storage tests.

A four-mode production-header ARM compile matrix verifies default versus
`NDEBUG`+`RELEASE`, with ordinary reporting enabled and disabled. Enabled modes
retain ordinary and fatal handler calls; disabled modes remove only ordinary
calls while preserving condition evaluation/recovery. Release/default pairs
produce identical objects. This is compile/static evidence, not a separately
executed release ROM.

Fresh compiler stack reports and linked helper disassembly show at most 68
additional System-stack bytes for the reviewed fatal rendering chain and 88
for healthy recovery, measured from the already-established `CrashScreen`
frame. The 512-byte checked margin is larger than those reviewed paths.
This evidence does not bound arbitrary corruption or every game call chain.

Six bounded interactive cases on mGBA 0.10.5 also pass, using private save/ROM
copies and instruction breakpoints around the real, non-TESTING reporter:

- A foreground blue report returns only after START press/release. All VRAM,
  palette and OAM bytes, GPU mirrors, nonzero BG0 scroll (37/19), saved display,
  sound and IRQ registers restore exactly. Live heap headers and allocated
  payloads are unchanged; freed backup scratch bytes need not be zeroed.
- Playing BGM remains playing and advances one normal VBlank on resumption;
  paused SE1/SE2/SE3 software states remain byte-identical. This checks software
  state and sound registers, not physical audible fidelity.
- Fatal reporting, exhausted-valid-heap fallback, deliberately low but still
  in-bounds stack entry, and an actual VBlank IRQ call all render non-resumable
  reports despite START. The original active map-popup HBlank callback also
  correctly causes fatal fallback rather than unsafe recovery.
- Night Mode is explicitly enabled through its real API. The blue report is
  readable and unfiltered, and START restores the same scene/register state.
- A 64-byte stack-floor canary remains intact in every case. Observed minimum
  SP is `0x03007D38` for normal recovery, `0x03007D20` in the IRQ case and
  `0x03007D30` with Night Mode. The deliberate low-stack fixture reaches
  `0x03006F5C` before switching to the emergency stack top. These measurements
  cover only the tested paths, not arbitrary failure-time stack depths.

Original production ROM, ELF, MAP and save hashes remain unchanged. Tested
port artifacts are `build/crash-reporting.gba`, `.elf` and `.map`; ROM SHA-256:
`a5345e3656f21c779ea937c119091b8beefdd51cbf282ca2367f255d590aab70`.
Retain the matching ELF/MAP alongside any copy distributed to testers.

## Deliberately testing a report

Development builds with `DEBUG_CRASH_SCREEN_TEST` enabled in
`include/config/debug.h` expose **Wish Menu -> Utilities -> Crash Screen Tests**.
Both choices show a warning and default to **NO**; choose **YES** and press A to
trigger the report. B cancels. The trigger waits for pending menu uploads and
disarms itself before calling the reporter, so returning cannot repeat it every
frame.

- **Blue report (START returns)** invokes `errorf` without corrupting memory.
  Press and release START to return to the test menu if recovery is allowed.
  Unsafe contexts or insufficient backup memory still produce a fatal report;
  this test does not bypass the reporter's recovery guards.
- **Fatal report (restart)** invokes `fatalf`. The fatal screen stays visible
  and START cannot continue; reset the emulator or console afterward.

Save normally before testing and use a disposable save copy. The test does not
write or delete the save, but resetting loses unsaved progress. Opening the
Wish Menu still performs its existing Wish-menu usage marking. Set
`DEBUG_CRASH_SCREEN_TEST` to `FALSE` before a public release: this removes the
test submenu and handlers, without disabling genuine crash reporting.

Use a separate diagnostic ROM and a disposable save copy. In a temporary,
one-shot foreground callback with a known safe mode-0, nonbattle scene, call:

```c
static const u8 text[] = _("Encoded string ABC 123!");
errorf("Smoke test %S\nPointer %p\nSigned %d unsigned %u", text,
       (void *)0x02000000, -123, 456u);
// Only a reviewed, harmless recovery should follow this call.
```

The blue screen should show the message, file/line and caller addresses. Press
and release START to restore the scene; ensure the callback cannot trigger the
report again every frame. Compare the scene and playing/paused audio with the
pre-report state. Repeat with Night Mode enabled. Do not place this deliberate
trigger in a production build.

In a separate run replace the call with `fatalf("Deliberate fatal smoke test")`.
The red screen must remain visible after START and require a reset. To exercise
the actual decoder error path instead, call `DoDecompressionError()` (declared
in `decompress_error_handler.h`) in that disposable build. Do not deliberately
damage a real save, overflow the stack, or corrupt live memory to test reporting.

## Changed files

- Core: `include/assertf.h`, `src/assertf.c`, `include/global.h`,
  `include/config/general.h`.
- Raw assets: `graphics/crash_screen/font.png`, `assertf.pal`, `fatalf.pal`;
  the existing generic asset rules generate `.1bpp`/`.gbapal` without a
  Makefile change or compressed-screen dependency.
- Targeted integration: `include/malloc.h`, `src/malloc.c`,
  `src/decompress.c`, `src/decompress_error_handler.c`,
  `src/battle_transition.c`.
- Regression tests: `test/assertf.c`, `test/crash_allocator.c`,
  `test/crash_runtime_guards.c`; documentation: `docs/crash_reporting.md`.

## Remaining verification and limits

- A physical-GBA smoke test, particularly scene restoration and audible
  playing/paused sound behavior. Emulator state comparisons are not proof of
  hardware timing or audio fidelity.
- Broader scene coverage, including pending GPU updates and active DMA0
  transitions; conservative fatal fallback is intentional, not permission to
  force recovery in those scenes.
- Whole-game worst-case stack coverage. The static budget and bounded runtime
  checks are not universal bounds, and this task adds no RAM peak monitor.

Do not weaken the stack guard, disable normal audio/interrupt processing or
reuse mismatched build artifacts to make these checks pass. Keep test ROMs,
runtime fixtures and save copies separate from production files.

## Upstream references

This is a selective backport, not an Expansion-base update:
[formatted asserts (#8196)](https://github.com/rh-hideout/pokeemerald-expansion/pull/8196),
[encoded-string advancement fix (#8570)](https://github.com/rh-hideout/pokeemerald-expansion/pull/8570),
[`errorf` (#8580)](https://github.com/rh-hideout/pokeemerald-expansion/pull/8580) and
[fatal reporting (#10156)](https://github.com/rh-hideout/pokeemerald-expansion/pull/10156).
The local implementation intentionally avoids upstream's large stack-backup
fallback and does not import unrelated battle, allocator or save changes.
