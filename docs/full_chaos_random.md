# Full Chaos Random

Enable or disable **Full Chaos Random** in the Wish/Debug Menu's **Utilities**.
The existing regional **FULL RANDOM** in Configuration remains a separate
mode. Enabling a different wild randomizer replaces Chaos; disabling Chaos
returns to ordinary encounters. Saving unrelated Configuration options does
not silently switch Chaos back to the regional mode.

Chaos rerolls the same wild encounter paths as Full Random: ordinary land,
Surf/fishing, outbreaks, scripted single/double battles, roamers, and resolved
Frontier wild encounters. Encounter levels and scripted held items remain
unchanged. The three starter choices are distinct and repeatable per save.
It does not enable trainer randomization or randomize ordinary gifts.

The current roster contains **1,012** enabled entries: one normal/base species
identity per national dex number across all generations, plus stable Alolan,
Galarian, Hisuian and Paldean regional species. Legendary/mythical Pokemon,
the restored native Pokemon, and the completed Wish/shadow Pokemon are valid.
Mega, Primal, Gigantamax, fused Pokemon and conditional alternate forms such
as Sunny Castform, Hero Palafin and Crowned Zacian are excluded. Base Castform,
Palafin and Zacian remain valid and can use their normal in-game mechanics.

The ROM-only roster is `src/data/pokemon/full_chaos_pool.inc`; it adds no pool
cache to EWRAM. Candidates are checked against enabled species and required
graphics at runtime. Keep the roster sorted by numeric species ID when adding
new content. Cosmetic/other non-regional alternate forms are not separate
random draws; this deliberately uses normal species identities.

## Fillers and the two Give Pokemon commands

`src/data/pokemon/filler_species.inc` is the shared exclusion list. It records
**68** repurposed species slots: story front pictures, objects, NPC stand-ins,
and leftover placeholder overworlds even if they are not currently placed.
Alternate forms that share that base's damaged pictures/palettes are blocked
too. Fully independent regional graphics, such as Hisuian Avalugg, remain
eligible. These graphics
were not changed or restored in this task.

Both Basic/Give X and Complex use the same selection function. Numeric jumps
skip fillers/disabled entries, and confirmation also checks eligibility.
Actual Pokemon used as map characters are not fillers. In particular, the
relocated Howlyena, Vesperain, Dragonami, Mandraloom, Ratybara, Shadow Jirachi,
Shadow Celebi and Dark Suicune remain obtainable.

In addition to the 19 story/prop slots and 20 active NPC slots, the following
unused leftovers still have non-native placeholder overworlds and are blocked:
Alomomola, Amaura, Amoonguss, Azelf, Barbaracle, Bidoof, Binacle, Dialga,
Sizzlipede, Steenee, Wimpod, Woobat, Wooloo, Yamper and Zweilous. Restoring one
of these in a future task must include its graphics, palettes and frame
metadata before removing its exclusion.

The final visual audit also found 14 old story sources still holding duplicate
page art: Aegislash, Applin, Appletun, Archen, Arctibax, Arctovish, Arctozolt,
Armarouge, Aromatisse, Arrokuda, Audino, Aurorus, Avalugg and Axew. These remain
excluded until their own original graphics/palettes are actually restored;
the current book/prologue artwork already lives in the newer filler slots.
Arboliva is not excluded: its completed Pokemon is now Vesperain.

## Hard Mode and saves

Hard Mode blocks activation with a message. Selecting Hard clears Chaos and
the existing randomizer flags; returning to Normal does not re-enable them.
Runtime checks also reject stale flags in a Hard save.

Chaos uses `FLAG_RANDOMIZER_FULL_CHAOS`, an alias for the previously unused
`FLAG_UNUSED_0x17FC` bit in the existing custom flag bank. No save structure,
species ID, registry ID or other released bit position was changed. Existing
saves default to Chaos OFF.

## Checks

```sh
make -j8
make -j8 TEST=1 'TEST_SRCS=test/test_test_runner.c test/test_runner.c test/test_runner_args.c test/test_runner_battle.c test/full_chaos.c test/randomizer.c test/species_relocation.c test/prop_graphics.c' TESTS='Full Chaos:' check
```

Tests cover filler/alternate-form exclusions, native and custom Pokemon,
conditional-form exclusions, the full sorted pool, wild/scripted encounters,
starter repeatability, mode transitions and Hard enforcement. The existing
regional randomizer and prior species/prop regressions can also be run with
the same source list and `TESTS=''`.
