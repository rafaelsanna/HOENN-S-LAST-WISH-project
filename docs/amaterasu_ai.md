# Amaterasu's Hard-mode lead

This exception applies only to `TRAINER_FLANNERY_1` in a singles trainer
battle with `optionsNpcTeams == OPTIONS_NPCTEAMS_HARD`. Casual Amaterasu,
rematches, other trainers, player-side Pokemon, and doubles retain normal AI.
The physical setup is **Victory Dance**. The user's latest party edits are
preserved: Smeargle has Own Tempo, and Houndoom has Sludge Bomb instead of Taunt.

The battle opens with ordinary sunlight using the existing startup weather
message/animation. Like map weather, this initial sun has no expiry timer;
it is not primal weather or a lock, so Rain Dance/other weather can replace
it. Opposing switch-in weather abilities still operate normally. The map's
own weather is not edited. Ordinary recorded-battle weather behavior is
unchanged; the test runner explicitly exercises this startup in its fixtures.

Smeargle's priorities are:

1. Use a legal Fiery Dance if Taunted or the existing AI damage estimate
   predicts a one-hit KO. Existing immunity and survival checks still apply
   to the KO estimate. This emergency can interrupt setup or passing.
2. If a setup dance succeeded, use a legal Baton Pass to a living teammate.
3. Otherwise inspect the active opponent's usable damaging moves using the
   same moveset information available to Smart Trainer AI. Physical-only
   attackers get Victory Dance; special-only attackers get Quiver Dance;
   mixed attackers retain the equal-probability draw. Status moves do not
   count as mixed attacks. Dynamic move categories use the engine's category
   resolver, with its global category flags restored afterward. With no
   usable damaging moves, compare Attack/Sp. Attack; equal stats use 50/50.
   Only legal dances with a living matching recipient are selected; if the
   preferred dance is unavailable, use the remaining eligible option.
   Retry an interrupted setup;
   flinching, sleep, Taunt, a failed move, and Snatch do not count as success.
   Haze/Clear Smog also clear the remembered setup so it can be rebuilt.

Quiver Dance recipients are Ninetales and Houndoom. Victory Dance recipients
are Granbull, Arcanine, and Flareon. The recipient is selected uniformly
among the living eligible teammates, excluding the active slot. If matching
recipients have all fainted after setup, the existing switch selector chooses
a remaining teammate instead. No setup is forced without a reserve, and
unavailable PP/Encore/other move restrictions fall back to ordinary AI when
none of the scripted actions is legal.

If Smeargle faints while sunlight is still active, use normal Smart AI
replacement selection. Ninetales may be chosen for a good matchup, but is
not mandatory. Only prioritize a living Ninetales after that faint when sun
has ended or been replaced (rain, snow, sand, etc.), to activate Drought.
This is separate from passing: a physical pass does not force Ninetales.
If Ninetales is missing or fainted, use the normal safe replacement selection.
Forced switches and switch predictions are not treated as Baton Pass.

All five recipients attack while they have raised stat stages and a usable
damaging move against the active opponent. This prevents ordinary switching
from throwing away their boosts and filters status moves out of selection.
Normal Smart Trainer scoring still ranks the attacks, including its KO,
priority, accuracy, and effect decisions. Tied scores prefer the greater
existing AI damage estimate; equal score/damage retains the normal random
tie-break. Zero-PP/restricted moves and zero-damage/immunity candidates are
excluded. If no attack can damage the active opponent, retain ordinary AI
fallback rather than forcing an ineffective attack. This eligibility check
uses the current opposing battler; it does not force an attack solely because
of a predicted future switch-in. Without boosts, their normal AI is unchanged.

The successful dance is stored in two previously unused bits of
`AiBattleData`, so Moody or an intervening Fiery Dance cannot change its
classification. It is reset at battle initialization and enemy switch-in.
There are no new allocations, saved fields, or IWRAM/EWRAM buffers, and no
change to the size of the AI's existing allocation.

Implementation: `src/battle_ai_amaterasu.c`, with small hooks in move scoring,
switch selection, and the existing move-end recording stage. Move and
recipient randomness use dedicated tags appended to `RandomTag` without
renumbering existing tags.

Focused verification:

```sh
make --jobserver-style=pipe check -j8 TESTS='Amaterasu:' \
  TEST_SRCS='test/test_runner.c test/test_runner_args.c test/test_runner_battle.c test/battle/ai/amaterasu.c'
```

The tests simulate actual AI battles, including the 50/50 draw, both pass
categories and all five recipients, Moody, emergency attacks, Taunt, flinch,
Snatch, Haze/Clear Smog, Focus Sash/Sturdy/Flash Fire, fainting before setup/passing,
unavailable recipients/PP, and exclusion of unrelated trainers and Casual.
Additional cases verify opening sun, replacement by rain, Ninetales restoring
sun after rain/snow/sand, normal replacement choices while sun is active,
physical/special/mixed classification, Houndoom's boosted coverage without
Taunt, and Flareon's boosted attacks without Protect or Will-O-Wisp.

Validation: all 23 focused tests passed, including dynamic-category handling
and preservation of the global category flags. The production build and frozen
save-ABI checks passed; IWRAM remains 28,060 bytes and EWRAM 256,776 bytes.
The current combined AI/weather regression run passed 42 implemented tests
(22 Amaterasu tests plus 20 existing tests); the added dynamic-category test
then passed in the full 23-test focused run. The combined runner also contains
its expected crash-resumption fixture and one existing Sunny Day TODO.
Production ROM use is 30,215,260 bytes; no RAM capacity or saved layout changed.
The conditional post-Smeargle replacement policy passed the full 23-test
focused suite, including a normal Smart AI choice of either Ninetales or
Arcanine in existing sun, restoring sun after rain/snow/sand, and unavailable
Ninetales fallback under both sunny and rainy conditions.

The wider AI regression run passed 19 existing AI tests. One existing
`ai_trytofaint.c` test ("AI will choose a priority move if it is slower then
the target and will be killed") fails at line 43 because Strength and Quick
Attack tie at score 101. This was reproduced with the three original HEAD
AI/move-end objects compiled and linked separately, without the Amaterasu
hooks. It is a pre-existing failure and was not changed by this task.
