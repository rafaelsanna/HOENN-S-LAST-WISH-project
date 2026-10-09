# Custom Pokemon slot relocation

Only these eight custom Pokemon were relocated. The native source species
were restored from official pokeemerald-expansion 1.13.3, commit
`f969c126b1f74a799f98f0bb9551b737abe812eb`.

| Custom Pokemon | Previous slot | Current slot | Persistent Wish ID |
| --- | --- | --- | --- |
| Howlyena | DARKRAI | DACHSBUN | 9 |
| Vesperain | VOLCARONA | ARBOLIVA | 40 |
| Dragonami | DRUDDIGON | PAWMOT | 47 |
| Mandraloom | VIRIZION | WIGLETT | 50 |
| Ratybara | BIBAREL | SCOVILLAIN | 68 |
| Shadow Jirachi | DUCKLETT | NICKIT | unchanged Shadow ID |
| Shadow Celebi | ESCAVALIER | CLOBBOPUS | unchanged Shadow ID |
| Dark Suicune | SWANNA | GRAPPLOCT | unchanged Shadow ID |

The current slot carries the complete custom species definition: displayed
name, stats, types, abilities, cry, description, battle/overworld graphics,
palettes, animations, learnsets, and footprint. Ratybara's female graphics and
both Dragonami and Ratybara's Surf graphics/overlays are retained. Original
icons use the upstream shared icon palette, including its normal shiny-icon
behaviour, rather than an obsolete fake-species icon palette.

The transfer preserves existing artwork, including unfinished placeholders:
Shadow Jirachi and Shadow Celebi still have the old native Ducklett/Escavalier
back sprites and footprints; Dark Suicune still has the native Swanna back,
overworld sheet and footprint. These were already placeholders before the
relocation, not references accidentally left in the old species slots. The
eight freed native slots have their original upstream artwork.

The relocated TM/tutor definitions include the authoritative JSON records in
`tools/learnset_helpers/porymoves_files`, not just the generated teachable
header. The normal build can safely regenerate that header.

Mightyena, Masquerain, Dragonair, Shroomish, and Raticate now evolve into the
new slots. Native Bidoof, Larvesta, Ducklett, and Karrablast evolution links
still lead to the restored native Pokemon. Discarded filler Fidough, Dolliv,
Pawmo, and Capsakid no longer evolve into slots now occupied by custom Pokemon.
The props, NPCs, and Show Mon Pic artwork in their other slots were not moved.

Maps, story battles/cries, trainer parties, gacha, grotto and randomizer pools
reference the relocated custom species. Hoenn dex positions retain their
frozen enum IDs but resolve to the new national numbers. The public WishDex
manifest likewise uses the new slots without changing card numbers.

The frozen `wish_form_registry.inc` deliberately retains its historical
species labels. `WishForm_GetIdForSpecies` resolves those historical labels
through `HlwSpecies_GetCurrentSpecies`; native Darkrai etc are not Wish forms.
Do not use this historical mapper for ordinary creation or species lookups.
Similarly, the existing Surf configuration/symbol labels DRUDDIGON and
BIBAREL are retained for compatibility, but the active Surf selection now
uses PAWMOT and SCOVILLAIN and Dragonami's palette comes from PAWMOT.

## Existing saves

Normal save loading performs one conversion guarded by
`FLAG_HLW_SPECIES_RELOCATED`: party, boxes, eggs, daycare, saved overworld IDs,
dynamic graphics variables, registered DexNav species/search history, dex
seen/caught flags, Nuzlocke released flags, mail, TV/contest/roamer records,
secret-base teams, and Battle Tower/apprentice records. Pokemon data are
changed through the checksum-aware accessor, preserving trained data and
nicknames. Wish and Shadow progress already uses stable content IDs.
This includes both species fields in Breaking News TV records and the saved
e-Reader trainer party, whose record checksum is refreshed after conversion.

New games set the marker immediately. Future genuine native Darkrai etc are
therefore never converted. Save structures, existing numeric constants,
registry IDs and physical sector layout remain unchanged.

Hall of Fame archives are translated only on loading legacy archives, before
the new team is appended. A separate HOF flag is stored atomically with the
new archive; failed saves do not publish it. This prevents future native
Pokemon from being misinterpreted as legacy custom Pokemon.

Keep a backup of your battery save when testing a new ROM. Do not move a save
back to an older ROM after saving its converted species IDs.

## Verification

```sh
make -j8
python3 tools/check_hlw_species_relocation.py
python3 tools/wishdex/generate.py --check
python3 tools/wishdex/test_generate.py
make -j8 TEST=1 'TEST_SRCS=test/test_test_runner.c test/test_runner.c test/test_runner_args.c test/test_runner_battle.c test/species_relocation.c test/save_transaction.c test/save_hlw_systems.c test/prop_graphics.c' TESTS='Species relocation:' check
```

The focused tests cover custom metadata, native restoration, evolution/dex
links, encrypted Pokemon/eggs, real flash save conversion and idempotence,
and HOF failure/retry handling with genuine native Pokemon in a new team.
