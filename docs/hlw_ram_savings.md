# HLW RAM savings audit

## Implemented: conservative backport of Expansion #9231

Adapted from [Random EWRAM and IWRAM savings](https://github.com/rh-hideout/pokeemerald-expansion/pull/9231)
without updating the Expansion base or changing saved structures/IDs.

- Removed the two unreferenced `gSaveUnusedVar` globals in `src/save.c`.
- Reduced the private, runtime-only `RfuDebug` in `src/link_rfu_2.c` from 220 to
  8 bytes. Only its live counters remain. The RFU API buffer, RFU manager,
  transmitted structures and library address checks are unchanged.
- Made TV visit decoration/party/move scratch buffers local to their synchronous
  calculations. Party/move capacities now follow `PARTY_SIZE`/`MAX_MON_MOVES`.
  Valid parties keep the original RNG call order. Empty parties and missing
  moves have explicit fallbacks instead of modulo-by-zero accesses.
- Made the TV/news record-mixing player counts function-local.
- **Kept `sTVSecretBaseSecretsRandomValues` persistent.** Its choices are read
  again in subsequent dialogue calls. Reinitializing it as a local array on
  every call would allow repeated actions; that portion of the upstream patch
  was deliberately not copied.

Measured with the normal `make -j8` build, GCC 14.2.1, after a baseline link:

| Allocation | Before | After | Reduction |
| --- | ---: | ---: | ---: |
| IWRAM, including fast code/alignment | 28,180 B | 28,060 B | 120 B |
| EWRAM, including the fixed heap reservation | 260,576 B | 260,364 B | 212 B |
| ROM, linker usage before GBA file padding | 30,180,932 B | 30,180,772 B | 160 B |

IWRAM static headroom before the protected system stack increased from 44 to
164 bytes. The stack remains 4,096 bytes; its top remains `0x03007E40`.
After this first stage, EWRAM had 1,780 bytes not reserved by the linker. This is separate from
currently free space **inside** the already-reserved heap.

Compiler stack-usage output reports a 108-byte frame for
`TryPutSecretBaseVisitOnAir`, including its inlined calculation helpers. The
original disassembly used 52 bytes: a 56-byte temporary increase, smaller than
the 120-byte static IWRAM reduction. This is a function-frame measurement, not
a claim about the maximum whole-game call-chain/interrupt stack usage.

Validation:

- `make -j8`, including the frozen save ABI and encounter/Wish registry checks.
- Focused emulator suite: decoration uniqueness/capacity, six party members/four
  moves, eggs/empty parties/missing moves, exact RNG sequencing, multi-call
  dialogue choice persistence, stack reservation, save ABI and transactions.
  Result: 54 passed, plus the runner's intentional "Tests resume after CRASH"
  case reported as one known failure; no unexpected failures.

The monolithic test ROM exceeds EWRAM/ROM limits and the protected IWRAM stack
boundary in this project. Tests were linked as a focused subset; memory limits
and the stack guard were not relaxed. Reproduce with:

```sh
make check -j8 TESTS='' TEST_OBJS='build/modern-test/test/test_runner.o build/modern-test/test/test_runner_args.o build/modern-test/test/test_runner_battle.o build/modern-test/test/tv.o build/modern-test/test/runtime_stack_layout.o build/modern-test/test/save.o build/modern-test/test/hlw_save_abi.o build/modern-test/test/save_transaction.o'
```

## Implemented: Achievements and configuration-specific Pokédex storage

Only these two additional candidates were authorized; PC, DMA and map storage
were not changed.

- Achievements BG3 uses blank tile 0 and screenblock 28 directly in VRAM. Its
  2,048-byte permanent RAM tilemap and redundant blank ROM tilemap are removed.
  The screenblock clear, blank graphics load, background layer and the three
  live foreground tilemaps remain. BG initialization clears old RAM bindings.
- `PokedexAreaScreen` reserves the legacy three "Area Unknown" sprites and
  their 1,536-byte graphics buffer only with `!OW_TIME_OF_DAY_ENCOUNTERS`.
  All corresponding templates, declarations, calls, definitions and cleanup
  references use the same guard. State-machine steps 7/8 are retained.
  The current time-of-day "AREA UNKNOWN" text label is unchanged.

Measured normal build:

| Allocation | Before this stage | After | Reduction |
| --- | ---: | ---: | ---: |
| EWRAM | 260,364 B | 256,768 B | 3,596 B |
| IWRAM | 28,060 B | 28,060 B | 0 B |
| ROM, before file padding | 30,180,772 B | 30,178,668 B | 2,104 B |

Static EWRAM headroom is now 5,376 bytes (97.95% occupied). Heap capacity,
saved structures/IDs, PC source and the 4 KiB system stack are unchanged.

`test/ui_ram.c` exercises real scene initialization and update callbacks:
Achievements entry over dirty VRAM, scrolling, page jumps, L/R theme changes,
exit and reopen; and the Pokédex's morning-only Aron area, day/unknown label,
return to morning, exit and reopen. The tests check transferred blank VRAM
and rendered window pixels rather than only testing an area predicate.

Combined focused suite after this stage: 57 passed, plus the runner's single
intentional crash case; no unexpected failures. Include
`build/modern-test/test/ui_ram.o` in the `TEST_OBJS` list above to run these screen
tests alongside the RAM/save regressions. Use `TESTS='UI RAM:'` to run just the
three new screen/storage tests.

An isolated compilation with time-of-day encounters disabled retains the
5,568-byte legacy state and sprite definitions; the normal build uses 4,020
bytes. This is a module/configuration compile check, not a complete alternate
game build: changing that configuration globally also requires regenerated
encounter data and a review of the frozen save configuration.

## Remaining candidates: assessed only, not implemented

Savings below are based on current symbols and source access patterns, before
possible linker-padding changes. None requires changing saved data layouts.
They still need targeted tests; they are not promises of zero risk.

| Candidate | Potential benefit | Risk / necessary validation |
| --- | --- | --- |
| PC placeholder item-icon source | 392 B static IWRAM | Moderate: replace the never-written source with a valid blank ROM sprite sheet and use the uncompressed sprite loader. Preserve three sprite tags, reserved tile space and later updates; test Move Items, swaps, bag transfers and returns from submenus. |
| Union DMA request copy-source/fill-value storage | 512 B static IWRAM | Moderate: fields are mutually exclusive by mode, so 128 requests can occupy 12 rather than 16 bytes each. Keep all 128 slots. Test full queue, wraparound, mixed 16/32-bit copy/fill and interrupt/VBlank timing. |
| Right-size PC item-icon work buffer from 0x800 to 0x200 | 1,536 B additional free heap during PC use | Moderate: all existing accesses fit 512 bytes. This does not itself reduce linker-reported EWRAM because `gHeap` keeps its current capacity. Test every PC mode and allocation-failure path. |
| Right-size the production map backing buffer | 1,856 B static EWRAM | Moderate: current maximum padded layout is MOSSDEEP01, `(82+15)*(82+14)=9,312` entries, versus 10,240 reserved. Add an automatic layout-capacity guard; test map connections, border access, procedural floors and save/resume. Keep the existing test-build capacity because the battle runner aliases this buffer. |

Evidence locations:

- `src/achievements_menu.c`: three live permanent 2,048-byte tilemaps; the blank
  background now has no permanent RAM tilemap.
- `src/pokedex_area_screen.c`: private `PokedexAreaScreen`, area-unknown
  load/create/destroy paths. `OW_TIME_OF_DAY_ENCOUNTERS` is currently `TRUE` in
  `include/config/overworld.h`.
- `src/pokemon_storage_system.c`: `sItemIconGfxBuffer`, `CreateItemIconSprites`,
  `itemIconBuffer`, `LoadItemIconGfx`.
- `src/dma3_manager.c`: `Dma3Request`, `RequestDma3Copy`, `RequestDma3Fill`,
  `ProcessDma3Requests`.
- `include/fieldmap.h`, `src/fieldmap.c`, `data/layouts/layouts.json`,
  `test/test_runner_battle.c`.

PC changes are explicitly deferred at the user's request. Keep any future DMA
or map changes separate because of timing/capacity sensitivity.

Do not shrink `HEAP_SIZE` based only on its large static symbol: that could
reduce memory available for save transactions and UI/battle allocations.
Do not move the 7,000-byte RFU blocks into EWRAM now: only 5,376 bytes are free,
and copying SoulGold's patch would also bypass an RFU library address check.
Do not reduce the reserved stack or globally redirect `.bss` into EWRAM.
