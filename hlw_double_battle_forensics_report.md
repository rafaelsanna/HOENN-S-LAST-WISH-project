# HLW Double-Battle Forensics Report

- Generated: `2026-09-16T20:32:58-03:00`
- Repo: `/home/rafaelsanna/pokeemerald-expansion`
- Window: `2026-09-14 00:00` → `2026-09-16 23:59`
- Collector is read-only with respect to tracked repository contents.

## 1. Current repository state

- Branch: `main`
- HEAD: `ebd70d10edc665e6f7b0311cadd843b05a505daf`

### `git status --porcelain=v2 --branch`
```
# branch.oid ebd70d10edc665e6f7b0311cadd843b05a505daf
# branch.head main
# branch.upstream origin/main
# branch.ab +0 -0
1 .M N... 100644 100644 100644 86893ff4431c57541a2368da3f0c56edace17e06 86893ff4431c57541a2368da3f0c56edace17e06 data/maps/MossdeepCity_House5/scripts.inc
1 .M N... 100644 100644 100644 2050581446a257b99e6b54e50afe62ec480a7338 2050581446a257b99e6b54e50afe62ec480a7338 data/maps/MossdeepCity_House5/scripts.pory
1 .M N... 100644 100644 100644 18af40684f16195ffe89516cea3e62795932ae21 18af40684f16195ffe89516cea3e62795932ae21 graphics/pokemon/electrode/icon.png
1 .M N... 100644 100644 100644 68bd5a534293dd40e9cb9e159f137beb06153d1b 68bd5a534293dd40e9cb9e159f137beb06153d1b graphics/pokemon/electrode/icon_normal.pal
1 .M N... 100644 100644 100644 242c1d1d62b55ce65047c5e129db0edb59467433 242c1d1d62b55ce65047c5e129db0edb59467433 graphics/pokemon/ursaluna/icon_normal.pal
1 .M N... 100644 100644 100644 4396f8a908a6c6f1cd52188e06a54a1ebd8a7b2f 4396f8a908a6c6f1cd52188e06a54a1ebd8a7b2f graphics/pokemon/voltorb/icon.png
1 .M N... 100644 100644 100644 67edb930a9b66f7d5507d0498f9cfafdfc583695 67edb930a9b66f7d5507d0498f9cfafdfc583695 graphics/pokemon/voltorb/icon_normal.pal
1 .M N... 100644 100644 100644 4df301edcfd317bfa9834493c0c10c15bca44aa9 4df301edcfd317bfa9834493c0c10c15bca44aa9 include/constants/pokemon.h
1 .M N... 100644 100644 100644 3f56762c2deb31d0a15335651ebbda2bf24d32db 3f56762c2deb31d0a15335651ebbda2bf24d32db include/constants/songs.h
1 .M N... 100644 100644 100644 ea9f901964251ef49ac8cd5d2286f3441c293d07 ea9f901964251ef49ac8cd5d2286f3441c293d07 sound/song_table.inc
1 .M N... 100644 100644 100644 86bab3f4247d3330a29018f37caecfb9fca94e06 86bab3f4247d3330a29018f37caecfb9fca94e06 sound/songs/midi/midi.cfg
1 .M N... 100644 100644 100644 465aac44549a2d70c39719e63e51b4dd47fd3a3a 465aac44549a2d70c39719e63e51b4dd47fd3a3a sound/voicegroups/brothers.inc
1 .M N... 100644 100644 100644 d58a9fcf3c4857836d8506d8bde7ead1797de782 d58a9fcf3c4857836d8506d8bde7ead1797de782 src/data/pokemon/species_info/gen_2_families.h
1 .M N... 100755 100755 100755 ca4db192c73ed7a76e4dc457258e377d90f84b7b ca4db192c73ed7a76e4dc457258e377d90f84b7b src/data/wild_encounters.json
1 .M N... 100644 100644 100644 bfc28f8e39dd15c0cbefc59be009adf7785877cb bfc28f8e39dd15c0cbefc59be009adf7785877cb src/pokedex_plus_hgss.c
1 .M N... 100644 100644 100644 7f7af4abc04622f0e5b381766ab33eb0696df911 7f7af4abc04622f0e5b381766ab33eb0696df911 src/pokemon.c
1 .M N... 100644 100644 100644 ca7d9d31c5bc11121d870ae5125497ad1d743d04 ca7d9d31c5bc11121d870ae5125497ad1d743d04 src/radio.c
? PHYTON/RADIO_GAMES_FF8_ZELDA_ORCHESTRAL_PACK_V1.zip
? PHYTON/RADIO_GAMES_FIRE_EMBLEM_SMASH_ORCHESTRAL_PACK_V1.zip
? PHYTON/RADIO_GAMES_REQUIEM_LOOP_AND_ORDER_FIX_V2.zip
? PHYTON/backups/fire_emblem_smash_games_v1_20260916-161837/
? PHYTON/backups/games_ff8_zelda_orchestral_v1_20260916-144050/
? PHYTON/backups/requiem_loop_games_order_v2_20260916-154827/
? PHYTON/install_RADIO_GAMES_FF8_ZELDA_ORCHESTRAL_PACK_V1.py
? PHYTON/install_RADIO_GAMES_FIRE_EMBLEM_SMASH_ORCHESTRAL_PACK_V1.py
? PHYTON/install_RADIO_GAMES_REQUIEM_LOOP_AND_ORDER_FIX_V2.py
? hlw_double_battle_forensics.py
? ics.py
? sound/songs/midi/mus_fire_emblem_melee.mid
? sound/songs/midi/mus_fire_emblem_melee.s
? sound/songs/midi/mus_fire_emblem_mystery_of_the_emblem.mid
? sound/songs/midi/mus_fire_emblem_mystery_of_the_emblem.s
? sound/songs/midi/mus_requiem_fire_emblem.mid
? sound/songs/midi/mus_requiem_fire_emblem.s
? sound/songs/midi/mus_requiem_of_spirit.mid
? sound/songs/midi/mus_requiem_of_spirit.s
? sound/songs/midi/mus_sacred_grove.mid
? sound/songs/midi/mus_sacred_grove.s
? sound/songs/midi/mus_smash_bros_brawl_main_theme.mid
? sound/songs/midi/mus_smash_bros_brawl_main_theme.s
? sound/songs/midi/mus_the_great_sea.mid
? sound/songs/midi/mus_the_great_sea.s
? sound/songs/midi/mus_the_oath.mid
? sound/songs/midi/mus_the_oath.s
? sound/songs/midi/mus_twilight_princess_title.mid
? sound/songs/midi/mus_twilight_princess_title.s
```

### Staged changes
*(no output)*

### Unstaged changes
```
M	data/maps/MossdeepCity_House5/scripts.inc
M	data/maps/MossdeepCity_House5/scripts.pory
M	graphics/pokemon/electrode/icon.png
M	graphics/pokemon/electrode/icon_normal.pal
M	graphics/pokemon/ursaluna/icon_normal.pal
M	graphics/pokemon/voltorb/icon.png
M	graphics/pokemon/voltorb/icon_normal.pal
M	include/constants/pokemon.h
M	include/constants/songs.h
M	sound/song_table.inc
M	sound/songs/midi/midi.cfg
M	sound/voicegroups/brothers.inc
M	src/data/pokemon/species_info/gen_2_families.h
M	src/data/wild_encounters.json
M	src/pokedex_plus_hgss.c
M	src/pokemon.c
M	src/radio.c
```

## 2. Reflog inside the suspected first-bad window

This is the most important section for reconstructing **last known good → first known bad**.

- `f91f1f6843dc` `2026-09-15 22:00:00 -0300` `worktrees/hlw-debug/HEAD@{2026-09-16 19:00:27 -0300}` — 
- `ebd70d10edc6` `2026-09-16 11:13:12 -0300` `origin/main@{2026-09-16 11:13:19 -0300}` — update by push
- `ebd70d10edc6` `2026-09-16 11:13:12 -0300` `main@{2026-09-16 11:13:12 -0300}` — commit: 92.5 granbull snubull sprites fixed / plus minor sprites pal changes
- `ebd70d10edc6` `2026-09-16 11:13:12 -0300` `HEAD@{2026-09-16 11:13:12 -0300}` — commit: 92.5 granbull snubull sprites fixed / plus minor sprites pal changes
- `11f088156db1` `2026-09-16 02:44:44 -0300` `main@{2026-09-16 09:08:12 -0300}` — pull origin main: Fast-forward **<-- sync-like**
- `11f088156db1` `2026-09-16 02:44:44 -0300` `HEAD@{2026-09-16 09:08:12 -0300}` — pull origin main: Fast-forward **<-- sync-like**
- `11f088156db1` `2026-09-16 02:44:44 -0300` `origin/main@{2026-09-16 09:08:11 -0300}` — pull origin main: fast-forward **<-- sync-like**
- `f91f1f6843dc` `2026-09-15 22:00:00 -0300` `origin/main@{2026-09-15 22:00:08 -0300}` — update by push
- `f91f1f6843dc` `2026-09-15 22:00:00 -0300` `main@{2026-09-15 22:00:00 -0300}` — commit: 92.4 MR. BOTTONS QUEST DONE
- `f91f1f6843dc` `2026-09-15 22:00:00 -0300` `HEAD@{2026-09-15 22:00:00 -0300}` — commit: 92.4 MR. BOTTONS QUEST DONE
- `e17c47e66ef1` `2026-09-15 11:18:19 -0300` `origin/main@{2026-09-15 11:18:48 -0300}` — update by push
- `e17c47e66ef1` `2026-09-15 11:18:19 -0300` `main@{2026-09-15 11:18:19 -0300}` — commit: 92.3 teddyursa ghost quest
- `e17c47e66ef1` `2026-09-15 11:18:19 -0300` `HEAD@{2026-09-15 11:18:19 -0300}` — commit: 92.3 teddyursa ghost quest
- `e5393c3a8f48` `2026-09-15 10:57:33 -0300` `main@{2026-09-15 10:57:33 -0300}` — merge origin/main: Merge made by the 'ort' strategy. **<-- sync-like**
- `e5393c3a8f48` `2026-09-15 10:57:33 -0300` `HEAD@{2026-09-15 10:57:33 -0300}` — merge origin/main: Merge made by the 'ort' strategy. **<-- sync-like**
- `200e8736911d` `2026-09-15 10:56:52 -0300` `main@{2026-09-15 10:56:52 -0300}` — commit (merge): Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project **<-- sync-like**
- `200e8736911d` `2026-09-15 10:56:52 -0300` `HEAD@{2026-09-15 10:56:52 -0300}` — commit (merge): Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project **<-- sync-like**
- `ca5a012e836f` `2026-09-15 18:45:30 -0300` `origin/main@{2026-09-15 10:55:43 -0300}` — fetch origin main: fast-forward **<-- sync-like**
- `2f4a892522a1` `2026-09-15 17:01:41 -0300` `origin/main@{2026-09-15 08:43:08 -0300}` — pull origin main: fast-forward **<-- sync-like**
- `6d4e988037d2` `2026-09-15 08:43:00 -0300` `main@{2026-09-15 08:43:00 -0300}` — commit: 92.2 teddyursa / ursaring / ursaluna sprites
- `6d4e988037d2` `2026-09-15 08:43:00 -0300` `HEAD@{2026-09-15 08:43:00 -0300}` — commit: 92.2 teddyursa / ursaring / ursaluna sprites
- `12343516c355` `2026-09-15 05:25:37 -0300` `origin/main@{2026-09-15 05:25:46 -0300}` — update by push
- `12343516c355` `2026-09-15 05:25:37 -0300` `main@{2026-09-15 05:25:37 -0300}` — commit: 92.2 teddyursa / ursaring / ursaluna sprites
- `12343516c355` `2026-09-15 05:25:37 -0300` `HEAD@{2026-09-15 05:25:37 -0300}` — commit: 92.2 teddyursa / ursaring / ursaluna sprites
- `5031f5151c65` `2026-09-15 00:11:52 -0300` `origin/main@{2026-09-15 00:11:59 -0300}` — update by push
- `5031f5151c65` `2026-09-15 00:11:52 -0300` `main@{2026-09-15 00:11:52 -0300}` — commit: 92.1 fixed visual glitch of radio pop up + changing map songs
- `5031f5151c65` `2026-09-15 00:11:52 -0300` `HEAD@{2026-09-15 00:11:52 -0300}` — commit: 92.1 fixed visual glitch of radio pop up + changing map songs
- `bb35f429e2ea` `2026-09-14 23:38:26 -0300` `origin/main@{2026-09-14 23:38:40 -0300}` — update by push
- `bb35f429e2ea` `2026-09-14 23:38:26 -0300` `main@{2026-09-14 23:38:26 -0300}` — commit: 91.8 add 3 QOTSA songs
- `bb35f429e2ea` `2026-09-14 23:38:26 -0300` `HEAD@{2026-09-14 23:38:26 -0300}` — commit: 91.8 add 3 QOTSA songs
- `d3cef3a12f86` `2026-09-14 22:45:42 -0300` `origin/main@{2026-09-14 22:45:53 -0300}` — update by push
- `d3cef3a12f86` `2026-09-14 22:45:42 -0300` `main@{2026-09-14 22:45:42 -0300}` — commit: 91.7 old man catching charm
- `d3cef3a12f86` `2026-09-14 22:45:42 -0300` `HEAD@{2026-09-14 22:45:42 -0300}` — commit: 91.7 old man catching charm
- `52d6604e7591` `2026-09-14 21:22:52 -0300` `origin/main@{2026-09-14 21:23:06 -0300}` — update by push
- `52d6604e7591` `2026-09-14 21:22:52 -0300` `main@{2026-09-14 21:22:52 -0300}` — commit: 91.6 Luka back sprite
- `52d6604e7591` `2026-09-14 21:22:52 -0300` `HEAD@{2026-09-14 21:22:52 -0300}` — commit: 91.6 Luka back sprite
- `6847eea5f3ef` `2026-09-14 17:23:42 -0300` `origin/main@{2026-09-14 17:23:53 -0300}` — update by push
- `6847eea5f3ef` `2026-09-14 17:23:42 -0300` `main@{2026-09-14 17:23:42 -0300}` — commit: 91.5 marshtomp sprites
- `6847eea5f3ef` `2026-09-14 17:23:42 -0300` `HEAD@{2026-09-14 17:23:42 -0300}` — commit: 91.5 marshtomp sprites
- `0a1f56ec9962` `2026-09-14 15:08:45 -0300` `origin/main@{2026-09-14 15:08:50 -0300}` — update by push
- `0a1f56ec9962` `2026-09-14 15:08:45 -0300` `main@{2026-09-14 15:08:45 -0300}` — commit: 91.5 marshtomp sprites
- `0a1f56ec9962` `2026-09-14 15:08:45 -0300` `HEAD@{2026-09-14 15:08:45 -0300}` — commit: 91.5 marshtomp sprites
- `4ac24b932c5a` `2026-09-14 15:05:10 -0300` `origin/main@{2026-09-14 15:05:22 -0300}` — update by push
- `4ac24b932c5a` `2026-09-14 15:05:10 -0300` `main@{2026-09-14 15:05:10 -0300}` — commit: 91.5 marshtomp sprites
- `4ac24b932c5a` `2026-09-14 15:05:10 -0300` `HEAD@{2026-09-14 15:05:10 -0300}` — commit: 91.5 marshtomp sprites
- `800ba641fbc6` `2026-09-14 13:00:10 -0300` `origin/main@{2026-09-14 13:00:23 -0300}` — update by push
- `800ba641fbc6` `2026-09-14 13:00:10 -0300` `main@{2026-09-14 13:00:10 -0300}` — commit: 91.4 small wish menu update
- `800ba641fbc6` `2026-09-14 13:00:10 -0300` `HEAD@{2026-09-14 13:00:10 -0300}` — commit: 91.4 small wish menu update
- `afd9e821ffe8` `2026-09-14 12:02:25 -0300` `origin/main@{2026-09-14 12:02:33 -0300}` — update by push
- `afd9e821ffe8` `2026-09-14 12:02:25 -0300` `main@{2026-09-14 12:02:25 -0300}` — commit: 91.3 fineshed Zenno overworld sprites
- `afd9e821ffe8` `2026-09-14 12:02:25 -0300` `HEAD@{2026-09-14 12:02:25 -0300}` — commit: 91.3 fineshed Zenno overworld sprites
- `da1f1d0fb244` `2026-09-14 04:41:24 -0300` `main@{2026-09-14 07:18:22 -0300}` — pull origin main: Fast-forward **<-- sync-like**
- `da1f1d0fb244` `2026-09-14 04:41:24 -0300` `HEAD@{2026-09-14 07:18:22 -0300}` — pull origin main: Fast-forward **<-- sync-like**
- `da1f1d0fb244` `2026-09-14 04:41:24 -0300` `origin/main@{2026-09-14 07:18:21 -0300}` — pull origin main: fast-forward **<-- sync-like**
- `37555c737d18` `2026-09-14 01:30:24 -0300` `origin/main@{2026-09-14 01:30:31 -0300}` — update by push
- `37555c737d18` `2026-09-14 01:30:24 -0300` `main@{2026-09-14 01:30:24 -0300}` — commit: 91.2 radio soflocks and gliches in battle fixed
- `37555c737d18` `2026-09-14 01:30:24 -0300` `HEAD@{2026-09-14 01:30:24 -0300}` — commit: 91.2 radio soflocks and gliches in battle fixed
- `20de2555a798` `2026-09-14 00:28:36 -0300` `origin/main@{2026-09-14 00:28:59 -0300}` — update by push
- `20de2555a798` `2026-09-14 00:28:36 -0300` `main@{2026-09-14 00:28:36 -0300}` — commit: 91.1 ZENNO new sprites and new pal
- `20de2555a798` `2026-09-14 00:28:36 -0300` `HEAD@{2026-09-14 00:28:36 -0300}` — commit: 91.1 ZENNO new sprites and new pal

## 3. Auto-detected before/after sync pairs

### Pair 1: `f91f1f6843dc` → `11f088156db1`

Changed suspect files:
```
M	src/data/trainers.h
M	src/data/trainers.party
```

Keyword-focused diff:
```diff
+#line 20784
+            TRAINER_ENCOUNTER_MUSIC_AQUA,
+#line 20785
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20786
+        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
+#line 0
+        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_M,
+        .partySize = 3,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20788
+            .species = SPECIES_CAMERUPT,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20790
+            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
...
+#line 20805
+            TRAINER_ENCOUNTER_MUSIC_AQUA,
+#line 20806
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20807
+        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
+#line 0
+        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_F,
+        .partySize = 3,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20809
+            .species = SPECIES_TENTACRUEL,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20811
+            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
...
+#line 20826
+            TRAINER_ENCOUNTER_MUSIC_AQUA,
+#line 20827
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20828
+        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
+#line 0
+        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_M,
+        .partySize = 3,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20830
+            .species = SPECIES_STARMIE,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20832
+            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
```

### Pair 2: `200e8736911d` → `e5393c3a8f48`

Changed suspect files:
```
M	include/constants/trainers.h
M	src/data/trainers.h
M	src/data/trainers.party
```

Keyword-focused diff:
```diff
             TRAINER_ENCOUNTER_MUSIC_RICH,
 #line 20599
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
 #line 20600
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
-        .trainerBackPic = TRAINER_PIC_GENTLEMAN,
+        .trainerBackPic = TRAINER_PIC_ACCOUNTANT,
         .partySize = 3,
         .party = (const struct TrainerMon[])
         {
             {
 #line 20602
diff --git a/src/data/trainers.party b/src/data/trainers.party
index d5bcccc096..42f15c3a13 100644
--- a/src/data/trainers.party
+++ b/src/data/trainers.party
```

### Pair 3: `ca5a012e836f` → `200e8736911d`

Changed suspect files:
```
M	include/constants/trainers.h
M	src/data/trainers.h
M	src/data/trainers.party
```

Keyword-focused diff:
```diff
             TRAINER_ENCOUNTER_MUSIC_RICH,
 #line 20599
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
 #line 20600
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
-        .trainerBackPic = TRAINER_PIC_ACCOUNTANT,
+        .trainerBackPic = TRAINER_PIC_GENTLEMAN,
         .partySize = 3,
         .party = (const struct TrainerMon[])
         {
             {
 #line 20602
diff --git a/src/data/trainers.party b/src/data/trainers.party
index 42f15c3a13..d5bcccc096 100644
--- a/src/data/trainers.party
+++ b/src/data/trainers.party
```

### Pair 4: `2f4a892522a1` → `ca5a012e836f`

Changed suspect files:
```
M	include/constants/trainers.h
M	src/data/trainers.h
M	src/data/trainers.party
```

Keyword-focused diff:
```diff
             TRAINER_ENCOUNTER_MUSIC_RICH,
 #line 20599
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
 #line 20600
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
-        .trainerBackPic = TRAINER_PIC_GENTLEMAN,
+        .trainerBackPic = TRAINER_PIC_ACCOUNTANT,
         .partySize = 3,
         .party = (const struct TrainerMon[])
         {
             {
 #line 20602
diff --git a/src/data/trainers.party b/src/data/trainers.party
index d5bcccc096..42f15c3a13 100644
--- a/src/data/trainers.party
+++ b/src/data/trainers.party
```

### Pair 5: `6d4e988037d2` → `2f4a892522a1`

Changed suspect files:
```
M	include/constants/trainers.h
M	src/battle_main.c
M	src/data/trainers.h
M	src/data/trainers.party
```

Keyword-focused diff:
```diff
-            TRAINER_ENCOUNTER_MUSIC_MALE,
+            TRAINER_ENCOUNTER_MUSIC_RICH,
 #line 20599
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
 #line 20600
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
-        .trainerBackPic = TRAINER_PIC_BRENDAN,
-        .partySize = 6,
+        .trainerBackPic = TRAINER_PIC_GENTLEMAN,
+        .partySize = 3,
         .party = (const struct TrainerMon[])
         {
             {
 #line 20602
             .species = SPECIES_PERSIAN,
             .gender = TRAINER_MON_RANDOM_GENDER,
 #line 20604
-            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
...
+#line 20619
+            TRAINER_ENCOUNTER_MUSIC_MALE,
+#line 20620
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20621
+        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
+#line 0
+        .trainerBackPic = TRAINER_PIC_BRENDAN,
+        .partySize = 6,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20623
+            .species = SPECIES_PERSIAN,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20625
+            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
...
-#line 20632
+#line 20653
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
-#line 20633
+#line 20654
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
         .trainerBackPic = TRAINER_PIC_BRENDAN,
         .partySize = 6,
         .party = (const struct TrainerMon[])
         {
             {
-#line 20635
+#line 20656
             .species = SPECIES_PERSIAN,
             .gender = TRAINER_MON_RANDOM_GENDER,
-#line 20637
...
-#line 20665
+#line 20686
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
-#line 20666
+#line 20687
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
         .trainerBackPic = TRAINER_PIC_BRENDAN,
         .partySize = 6,
         .party = (const struct TrainerMon[])
         {
             {
-#line 20668
+#line 20689
             .species = SPECIES_PERSIAN,
             .gender = TRAINER_MON_RANDOM_GENDER,
-#line 20670
```

### Pair 6: `37555c737d18` → `da1f1d0fb244`

Changed suspect files:
*(no output)*

Keyword-focused diff:
*(no output)*

## 4. Commits in the window touching battle/randomizer/radio/trainer code

Heuristic score is only for triage; it is not a conclusion.

- ** 29** `45a51cb6f7e5` `2026-09-15 04:20:37 -0300` — WIP: preserve local work before syncing  
  Reasons: src/battle_main.c (+10), src/data/trainers.h (+7), src/data/trainers.party (+7), partySize (+5)
- ** 19** `e17c47e66ef1` `2026-09-15 11:18:19 -0300` — 92.3 teddyursa ghost quest  
  Reasons: src/data/trainers.h (+7), src/data/trainers.party (+7), partySize (+5)
- ** 19** `aeda6f18f457` `2026-09-16 01:41:11 -0300` — slateport event refinement  
  Reasons: src/data/trainers.h (+7), src/data/trainers.party (+7), partySize (+5)
- ** 14** `12343516c355` `2026-09-15 05:25:37 -0300` — 92.2 teddyursa / ursaring / ursaluna sprites  
  Reasons: src/data/trainers.h (+7), src/data/trainers.party (+7)
- ** 14** `d306bc239d0f` `2026-09-15 17:52:14 -0300` — accountant sprites  
  Reasons: src/data/trainers.h (+7), src/data/trainers.party (+7)
- ** 13** `37555c737d18` `2026-09-14 01:30:24 -0300` — 91.2 radio soflocks and gliches in battle fixed  
  Reasons: src/battle_controller_player.c (+9), src/radio.c (+4)
- **  4** `20de2555a798` `2026-09-14 00:28:36 -0300` — 91.1 ZENNO new sprites and new pal  
  Reasons: src/radio.c (+4)
- **  4** `bb35f429e2ea` `2026-09-14 23:38:26 -0300` — 91.8 add 3 QOTSA songs  
  Reasons: src/radio.c (+4)
- **  4** `5031f5151c65` `2026-09-15 00:11:52 -0300` — 92.1 fixed visual glitch of radio pop up + changing map songs  
  Reasons: src/radio.c (+4)
- **  0** `2f4a892522a1` `2026-09-15 17:01:41 -0300` — Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project  
  Reasons: no weighted hits

## 5. Top candidate commit diffs

### `45a51cb6f7e586c8fda6628f79434920a9d84331` — WIP: preserve local work before syncing (score 29)

```
45a51cb6f7e WIP: preserve local work before syncing
 include/constants/trainers.h |   1 +
 src/battle_main.c            |   3 +-
 src/data/trainers.h          | 202 +++++++++++++++++++++++++++----------------
 src/data/trainers.party      |  21 +++++
 4 files changed, 153 insertions(+), 74 deletions(-)
```

Keyword-focused diff:
```diff
-            TRAINER_ENCOUNTER_MUSIC_MALE,
+            TRAINER_ENCOUNTER_MUSIC_RICH,
 #line 20599
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
 #line 20600
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
-        .trainerBackPic = TRAINER_PIC_BRENDAN,
-        .partySize = 6,
+        .trainerBackPic = TRAINER_PIC_GENTLEMAN,
+        .partySize = 3,
         .party = (const struct TrainerMon[])
         {
             {
 #line 20602
             .species = SPECIES_PERSIAN,
             .gender = TRAINER_MON_RANDOM_GENDER,
 #line 20604
-            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
...
+#line 20619
+            TRAINER_ENCOUNTER_MUSIC_MALE,
+#line 20620
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20621
+        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
+#line 0
+        .trainerBackPic = TRAINER_PIC_BRENDAN,
+        .partySize = 6,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20623
+            .species = SPECIES_PERSIAN,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20625
+            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
...
-#line 20632
+#line 20653
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
-#line 20633
+#line 20654
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
         .trainerBackPic = TRAINER_PIC_BRENDAN,
         .partySize = 6,
         .party = (const struct TrainerMon[])
         {
             {
-#line 20635
+#line 20656
             .species = SPECIES_PERSIAN,
             .gender = TRAINER_MON_RANDOM_GENDER,
-#line 20637
...
-#line 20665
+#line 20686
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
-#line 20666
+#line 20687
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
         .trainerBackPic = TRAINER_PIC_BRENDAN,
         .partySize = 6,
         .party = (const struct TrainerMon[])
         {
             {
-#line 20668
+#line 20689
             .species = SPECIES_PERSIAN,
             .gender = TRAINER_MON_RANDOM_GENDER,
-#line 20670
```

### `e17c47e66ef155c7f042d21022e8880e2c2d7235` — 92.3 teddyursa ghost quest (score 19)

```
e17c47e66ef 92.3 teddyursa ghost quest
 src/data/trainers.h     | 178 ++++++++++++++++++++++++++++++++++++++++++++++++
 src/data/trainers.party |  66 ++++++++++++++++++
 2 files changed, 244 insertions(+)
```

Keyword-focused diff:
```diff
+#line 20718
+            TRAINER_ENCOUNTER_MUSIC_COOL,
+#line 20719
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20720
+        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
+#line 0
+        .trainerBackPic = TRAINER_PIC_COOLTRAINER_M,
+        .partySize = 6,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20722
+            .species = SPECIES_AMBIPOM,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20724
+            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
...
+#line 20751
+            TRAINER_ENCOUNTER_MUSIC_COOL,
+#line 20752
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20753
+        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
+#line 0
+        .trainerBackPic = TRAINER_PIC_COOLTRAINER_M,
+        .partySize = 6,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20755
+            .species = SPECIES_AMBIPOM,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20757
+            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
```

### `aeda6f18f457e463efbe64c6c5ca7586ce836540` — slateport event refinement (score 19)

```
aeda6f18f45 slateport event refinement
 src/data/trainers.h     | 170 ++++++++++++++++++++++++++++++++++++++++++++++++
 src/data/trainers.party |  63 ++++++++++++++++++
 2 files changed, 233 insertions(+)
```

Keyword-focused diff:
```diff
+#line 20784
+            TRAINER_ENCOUNTER_MUSIC_AQUA,
+#line 20785
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20786
+        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
+#line 0
+        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_M,
+        .partySize = 3,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20788
+            .species = SPECIES_CAMERUPT,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20790
+            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
...
+#line 20805
+            TRAINER_ENCOUNTER_MUSIC_AQUA,
+#line 20806
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20807
+        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
+#line 0
+        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_F,
+        .partySize = 3,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20809
+            .species = SPECIES_TENTACRUEL,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20811
+            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
...
+#line 20826
+            TRAINER_ENCOUNTER_MUSIC_AQUA,
+#line 20827
+        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
+#line 20828
+        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
+#line 0
+        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_M,
+        .partySize = 3,
+        .party = (const struct TrainerMon[])
+        {
+            {
+#line 20830
+            .species = SPECIES_STARMIE,
+            .gender = TRAINER_MON_RANDOM_GENDER,
+#line 20832
+            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
```

### `12343516c35558f1f1bbd85f1369eac1782c9a02` — 92.2 teddyursa / ursaring / ursaluna sprites (score 14)

```
12343516c35 92.2 teddyursa / ursaring / ursaluna sprites
 src/data/trainers.h     | 14 ++++++++------
 src/data/trainers.party | 14 +++++++-------
 2 files changed, 15 insertions(+), 13 deletions(-)
```

Keyword-focused diff:
*(no output)*

### `d306bc239d0f2e6d79f03c78756271f39e1d1673` — accountant sprites (score 14)

```
d306bc239d0 accountant sprites
 include/constants/trainers.h | 3 ++-
 src/data/trainers.h          | 4 ++--
 src/data/trainers.party      | 2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)
```

Keyword-focused diff:
```diff
             TRAINER_ENCOUNTER_MUSIC_RICH,
 #line 20599
         .battleType = TRAINER_BATTLE_TYPE_SINGLES,
 #line 20600
         .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
 #line 0
-        .trainerBackPic = TRAINER_PIC_GENTLEMAN,
+        .trainerBackPic = TRAINER_PIC_ACCOUNTANT,
         .partySize = 3,
         .party = (const struct TrainerMon[])
         {
             {
 #line 20602
diff --git a/src/data/trainers.party b/src/data/trainers.party
index d5bcccc096..42f15c3a13 100644
--- a/src/data/trainers.party
+++ b/src/data/trainers.party
```

### `37555c737d1843b270f8387bde1dfed0c13e538d` — 91.2 radio soflocks and gliches in battle fixed (score 13)

```
37555c737d1 91.2 radio soflocks and gliches in battle fixed
 src/battle_controller_player.c |  5 ++++-
 src/radio.c                    | 30 ++++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 1 deletion(-)
```

Keyword-focused diff:
*(no output)*

### `20de2555a798a430cb68c30b42cd2c50f20706c4` — 91.1 ZENNO new sprites and new pal (score 4)

```
20de2555a79 91.1 ZENNO new sprites and new pal
 src/radio.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
```

Keyword-focused diff:
*(no output)*

### `bb35f429e2eac73833084bdc7717a32e10c81ec8` — 91.8 add 3 QOTSA songs (score 4)

```
bb35f429e2e 91.8 add 3 QOTSA songs
 src/radio.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)
```

Keyword-focused diff:
*(no output)*

### `5031f5151c6553264b323e460cb8ff0805806f4c` — 92.1 fixed visual glitch of radio pop up + changing map songs (score 4)

```
5031f5151c6 92.1 fixed visual glitch of radio pop up + changing map songs
 src/radio.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)
```

Keyword-focused diff:
*(no output)*

### `2f4a892522a1fc41b72859b793d2865460ed6b62` — Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project (score 0)

```
2f4a892522a Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project

 src/data/trainers.h     | 14 ++++++++------
 src/data/trainers.party | 14 +++++++-------
 2 files changed, 15 insertions(+), 13 deletions(-)
```

Keyword-focused diff:
*(no output)*

## 6. Current code: critical symbol locations

### `RadioPriority_MaintainBgm`
```
src/battle_main.c:83:extern void RadioPriority_MaintainBgm(void);
src/battle_main.c:692:    RadioPriority_MaintainBgm();
src/battle_main.c:946:    RadioPriority_MaintainBgm();
src/battle_main.c:1941:    RadioPriority_MaintainBgm();
src/radio.c:4363:void RadioPriority_MaintainBgm(void)
src/sound.c:14:extern void RadioPriority_MaintainBgm(void);
src/sound.c:73:        RadioPriority_MaintainBgm();
```

### `CreateNPCTrainerParty`
```
src/battle_main.c:95:static u8 CreateNPCTrainerParty(struct Pokemon *party, u16 trainerNum, bool8 firstTrainer);
src/battle_main.c:662:            CreateNPCTrainerParty(&gEnemyParty[0], TRAINER_BATTLE_PARAM.opponentA, TRUE);
src/battle_main.c:664:                CreateNPCTrainerParty(&gEnemyParty[PARTY_SIZE / 2], TRAINER_BATTLE_PARAM.opponentB, FALSE);
src/battle_main.c:2097:u8 CreateNPCTrainerPartyFromTrainer(struct Pokemon *party, const struct Trainer *trainer, bool32 firstTrainer, u32 battleTypeFlags, u16 trainerId)
src/battle_main.c:2249:static u8 CreateNPCTrainerParty(struct Pokemon *party, u16 trainerNum, bool8 firstTrainer)
src/battle_main.c:2266:        retVal = CreateNPCTrainerPartyFromTrainer(party, (const struct Trainer *)(&tempTrainer), firstTrainer, gBattleTypeFlags, trainerNum);
src/battle_main.c:2270:        retVal = CreateNPCTrainerPartyFromTrainer(party, GetTrainerStructFromId(trainerNum), firstTrainer, gBattleTypeFlags, trainerNum);    }
src/battle_main.c:2280:    CreateNPCTrainerPartyFromTrainer(gPlayerParty, GetTrainerStructFromId(gSpecialVar_0x8004), TRUE, BATTLE_TYPE_TRAINER, gSpecialVar_0x8004);
```

### `GetTrainerBattleType`
```
src/battle_main.c:627:        switch (GetTrainerBattleType(TRAINER_BATTLE_PARAM.opponentA))
src/battle_setup.c:832:    switch (GetTrainerBattleType(trainerId))
```

### `BATTLE_TYPE_DOUBLE`
```
include/battle.h:1230:    return gBattleTypeFlags & BATTLE_TYPE_DOUBLE;
src/battle_controllers.c:1879:        BATTLE_TYPE_LINK | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_FIRST_BATTLE |
src/battle_controllers.c:2891:    if (gBattleTypeFlags & BATTLE_TYPE_DOUBLE && IsBattlerAlive(partnerBattler))
src/battle_main.c:631:        case TRAINER_BATTLE_TYPE_DOUBLES:
src/battle_main.c:632:            gBattleTypeFlags |= BATTLE_TYPE_DOUBLE;
src/battle_main.c:4459:                          && gBattleTypeFlags & BATTLE_TYPE_DOUBLE
src/battle_setup.c:341:        gBattleTypeFlags |= BATTLE_TYPE_MULTI | BATTLE_TYPE_INGAME_PARTNER | BATTLE_TYPE_DOUBLE;
src/battle_setup.c:344:        gBattleTypeFlags |= BATTLE_TYPE_DOUBLE;
src/battle_setup.c:460:    gBattleTypeFlags = BATTLE_TYPE_DOUBLE;
src/battle_setup.c:837:    case TRAINER_BATTLE_TYPE_DOUBLES:
src/battle_setup.c:1237:            gBattleTypeFlags = (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_INGAME_PARTNER | BATTLE_TYPE_TWO_OPPONENTS | BATTLE_TYPE_TRAINER);
src/battle_setup.c:1239:            gBattleTypeFlags = (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TWO_OPPONENTS | BATTLE_TYPE_TRAINER);
src/battle_setup.c:1245:            gBattleTypeFlags = (BATTLE_TYPE_MULTI | BATTLE_TYPE_INGAME_PARTNER | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TRAINER);
src/data/trainers.h:437:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:1043:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:1110:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:1477:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:1552:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:1621:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:1696:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2019:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2114:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2354:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2399:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2446:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2786:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2831:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:2979:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:3152:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:3924:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:3969:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:4014:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:4059:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:4104:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:4149:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:6089:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:7079:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:8237:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:12101:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:12170:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:12237:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:12326:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:14194:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:14530:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:14697:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:14864:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:15363:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:15694:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:16930:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:17089:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:17527:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:17684:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:18721:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:18780:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:18825:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:18883:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:18941:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:18999:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:20574:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:20621:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:20682:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:20828:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:21064:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:21300:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:21581:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:22176:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:22395:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:22799:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:27330:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:27377:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:28883:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:28928:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29655:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29700:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29745:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29812:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29857:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29902:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:29957:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:30002:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:30061:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:30165:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:31691:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:31859:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:34673:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:35797:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:36325:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:36962:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:37065:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:37200:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38303:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38348:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38393:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38438:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38483:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38528:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38573:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38620:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:38876:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:39082:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:39187:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:39794:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:39839:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:40787:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:40832:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:40891:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:40958:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41017:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41076:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41135:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41194:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41253:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41312:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41357:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41402:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41447:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41492:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41537:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:41582:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:45339:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:45442:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:45563:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:45684:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:45821:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:45922:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46023:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46142:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46279:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46380:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46499:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46618:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46757:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46862:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:46985:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47126:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47265:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47366:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47485:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47604:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47743:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:47864:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48003:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48142:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48279:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48400:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48539:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48678:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48817:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:48936:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:49055:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:49192:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:49368:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52182:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52229:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52276:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52327:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52392:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52455:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/data/trainers.h:52687:        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
src/trainer_pools.c:33:     || (partyIndex == 1 && (battleTypeFlags & BATTLE_TYPE_DOUBLE)))
src/trainer_pools.c:71:    if (((partyIndex == monsCount - 1) || (partyIndex == monsCount - 2 && battleTypeFlags & BATTLE_TYPE_DOUBLE))
```

### `BATTLE_TYPE_TWO_OPPONENTS`
```
src/battle_controller_opponent.c:137:    if (!twoMons || ((twoMons && (gBattleTypeFlags & BATTLE_TYPE_MULTI) && !BATTLE_TWO_VS_ONE_OPPONENT) || (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS)))
src/battle_controller_opponent.c:210:    if (!(gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS)
src/battle_controller_opponent.c:326:        if (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS)
src/battle_controller_opponent.c:340:        if (gBattleTypeFlags & (BATTLE_TYPE_TWO_OPPONENTS | BATTLE_TYPE_TOWER_LINK_MULTI))
src/battle_controller_opponent.c:356:    else if (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS)
src/battle_controller_opponent.c:376:    if (gBattleTypeFlags & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TWO_OPPONENTS) && !BATTLE_TWO_VS_ONE_OPPONENT)
src/battle_controllers.c:417:        if (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS)
src/battle_controllers.c:1880:        BATTLE_TYPE_SAFARI | BATTLE_TYPE_WALLY_TUTORIAL | BATTLE_TYPE_EREADER_TRAINER | BATTLE_TYPE_TWO_OPPONENTS |
src/battle_controllers.c:2740:        else if ((gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS) || (BATTLE_TWO_VS_ONE_OPPONENT && !TwoOpponentIntroMons(battler)))
src/battle_main.c:663:            if (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS && !BATTLE_TWO_VS_ONE_OPPONENT)
src/battle_main.c:2109:        if (battleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS)
src/battle_main.c:3763:                    if (gBattleTypeFlags & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TWO_OPPONENTS) && !BATTLE_TWO_VS_ONE_OPPONENT) // opponent 2 if exists
src/battle_main.c:3882:        if (gBattleTypeFlags & (BATTLE_TYPE_MULTI | BATTLE_TYPE_TWO_OPPONENTS) && !BATTLE_TWO_VS_ONE_OPPONENT)
src/battle_main.c:3976:            if (gBattleTypeFlags & BATTLE_TYPE_TWO_OPPONENTS && GetTrainerStartingStatusFromId(TRAINER_BATTLE_PARAM.opponentB))
src/battle_setup.c:1237:            gBattleTypeFlags = (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_INGAME_PARTNER | BATTLE_TYPE_TWO_OPPONENTS | BATTLE_TYPE_TRAINER);
src/battle_setup.c:1239:            gBattleTypeFlags = (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TWO_OPPONENTS | BATTLE_TYPE_TRAINER);
```

### `InitBattleControllers`
```
src/battle_controllers.c:97:void InitBattleControllers(void)
src/battle_main.c:1082:        InitBattleControllers();
src/battle_main.c:1355:        InitBattleControllers();
src/battle_main.c:1790:        InitBattleControllers();
```

### `BattleInitAllSprites`
```
src/battle_main.c:1124:        if (BattleInitAllSprites(&gBattleCommunication[SPRITES_INIT_STATE1], &gBattleCommunication[SPRITES_INIT_STATE2]))
src/battle_main.c:1384:        if (BattleInitAllSprites(&gBattleCommunication[SPRITES_INIT_STATE1], &gBattleCommunication[SPRITES_INIT_STATE2]))
src/battle_main.c:1837:        if (BattleInitAllSprites(&gBattleCommunication[SPRITES_INIT_STATE1], &gBattleCommunication[SPRITES_INIT_STATE2]))
```

### `gBattleControllerExecFlags`
```
include/battle.h:1039:extern u32 gBattleControllerExecFlags;
src/battle_controllers.c:83:    gBattleControllerExecFlags = 0;
src/battle_main.c:161:EWRAM_DATA u32 gBattleControllerExecFlags = 0;
src/battle_main.c:3302:    gBattleControllerExecFlags = 0;
src/battle_main.c:3681:        if (!gBattleControllerExecFlags)
src/battle_main.c:3690:        if (!gBattleControllerExecFlags)
src/battle_main.c:3701:        if (!gBattleControllerExecFlags)
src/battle_main.c:3788:        if (!gBattleControllerExecFlags)
src/battle_main.c:3834:        if (!gBattleControllerExecFlags)
src/battle_main.c:3868:        if (!gBattleControllerExecFlags)
src/battle_main.c:3899:        if (!gBattleControllerExecFlags)
src/battle_main.c:3928:        if (!(gBattleTypeFlags & BATTLE_TYPE_LINK && gBattleControllerExecFlags))
src/battle_main.c:3963:        if (!gBattleControllerExecFlags)
src/battle_main.c:4001:    if (gBattleControllerExecFlags)
src/battle_main.c:4189:    if (gBattleControllerExecFlags == 0)
src/battle_main.c:5899:        if (gBattleControllerExecFlags == 0)
src/battle_main.c:6041:        if (gBattleControllerExecFlags == 0)
src/battle_main.c:6048:    if (gBattleControllerExecFlags == 0)
```

### `gBattlerPartyIndexes`
```
include/battle.h:1041:extern u16 gBattlerPartyIndexes[MAX_BATTLERS_COUNT];
include/battle.h:1209:    u32 index = gBattlerPartyIndexes[battler];
include/battle.h:1225:    return &gBattleStruct->partyState[GetBattlerSide(battler)][gBattlerPartyIndexes[battler]];
src/battle_controller_opponent.c:566:                 || chosenMonId == gBattlerPartyIndexes[battler1]
src/battle_controller_opponent.c:567:                 || chosenMonId == gBattlerPartyIndexes[battler2])
src/battle_controller_player.c:1482:    if (GetBattlerCoordsIndex(battler) == BATTLE_COORDS_DOUBLES || monId != gBattlerPartyIndexes[battler]) // Give exp without moving the expbar.
src/battle_controller_player.c:1499:            if (GetActiveGimmick(battler) == GIMMICK_DYNAMAX && monId == gBattlerPartyIndexes[battler])
src/battle_controller_player.c:1506:             && (monId == gBattlerPartyIndexes[battler] || monId == gBattlerPartyIndexes[BATTLE_PARTNER(battler)]))
src/battle_controller_player.c:1585:                if (GetActiveGimmick(battler) == GIMMICK_DYNAMAX && monId == gBattlerPartyIndexes[battler])
src/battle_controller_player.c:1608:    if (IsDoubleBattle() == TRUE && monIndex == gBattlerPartyIndexes[BATTLE_PARTNER(battler)])
src/battle_controller_player.c:1623:        if (IsDoubleBattle() == TRUE && monIndex == gBattlerPartyIndexes[BATTLE_PARTNER(battler)])
src/battle_controller_player.c:2173:    PREPARE_MON_NICK_BUFFER(gBattleTextBuff1, battler, gBattlerPartyIndexes[battler]);
src/battle_controller_player.c:2317:        BtlController_EmitChosenMonReturnValue(battler, B_COMM_TO_ENGINE, gBattlerPartyIndexes[battler] + 1, gBattlePartyCurrentOrder);
src/battle_controllers.c:247:            gBattlerPartyIndexes[0] = 0;
src/battle_controllers.c:248:            gBattlerPartyIndexes[1] = 0;
src/battle_controllers.c:249:            gBattlerPartyIndexes[2] = 3;
src/battle_controllers.c:251:                gBattlerPartyIndexes[3] = 1;
src/battle_controllers.c:253:                gBattlerPartyIndexes[3] = 3;
src/battle_controllers.c:291:                gBattlerPartyIndexes[gLinkPlayers[i].id] = 0;
src/battle_controllers.c:297:                gBattlerPartyIndexes[gLinkPlayers[i].id] = 3;
src/battle_controllers.c:376:                            gBattlerPartyIndexes[i] = j;
src/battle_controllers.c:384:                            gBattlerPartyIndexes[i] = j;
src/battle_controllers.c:393:                        if (IsValidForBattle(&gPlayerParty[j]) && gBattlerPartyIndexes[i - 2] != j)
src/battle_controllers.c:395:                            gBattlerPartyIndexes[i] = j;
src/battle_controllers.c:401:                        if (IsValidForBattle(&gEnemyParty[j]) && gBattlerPartyIndexes[i - 2] != j)
src/battle_controllers.c:403:                            gBattlerPartyIndexes[i] = j;
src/battle_controllers.c:409:                    if (gBattlerPartyIndexes[i - 2] == 0)
src/battle_controllers.c:410:                        gBattlerPartyIndexes[i] = 1;
src/battle_controllers.c:412:                        gBattlerPartyIndexes[i] = 0;
src/battle_controllers.c:418:            gBattlerPartyIndexes[1] = 0, gBattlerPartyIndexes[3] = 3;
src/battle_controllers.c:1387:            u32 partyIndex = gBattlerPartyIndexes[battler];
src/battle_controllers.c:1866:        HandleLowHpMusicChange(&party[gBattlerPartyIndexes[battler]], battler);
src/battle_controllers.c:1910:    gBattlerPartyIndexes[battler] = gBattleResources->bufferA[battler][1];
src/battle_controllers.c:2159:        size += GetBattlerMonData(battler, party, gBattlerPartyIndexes[battler], monData);
src/battle_controllers.c:2198:        SetBattlerMonData(battler, party, gBattlerPartyIndexes[battler]);
src/battle_controllers.c:2270:    gBattlerPartyIndexes[battler] = gBattleResources->bufferA[battler][1];
src/battle_controllers.c:2637:    PlayCry_ByMode(GetMonData(&party[gBattlerPartyIndexes[battler]], MON_DATA_SPECIES), pan, CRY_MODE_FAINT);
src/battle_controllers.c:2762:            gBattleResources->bufferA[battler][1] = gBattlerPartyIndexes[battler];
src/battle_controllers.c:2766:            gBattleResources->bufferA[battlerPartner][1] = gBattlerPartyIndexes[battlerPartner];
src/battle_controllers.c:2772:            gBattleResources->bufferA[battler][1] = gBattlerPartyIndexes[battler];
src/battle_controllers.c:3095:    GetBattlerMonData(battler, party, gBattlerPartyIndexes[battler], &friendship);
src/battle_controllers.c:3099:    GetBattlerMonData(battler, party, gBattlerPartyIndexes[battler], (u8*)&heldItem);
src/battle_controllers.c:3110:        GetBattlerMonData(battler, party, gBattlerPartyIndexes[battler], &pokeball);
src/battle_controllers.c:3117:        GetBattlerMonData(battler, party, gBattlerPartyIndexes[battler], &metLocation);
src/battle_controllers.c:3128:        SetBattlerMonData(battler, GetBattlerParty(battler), gBattlerPartyIndexes[battler]);
src/battle_main.c:163:EWRAM_DATA u16 gBattlerPartyIndexes[MAX_BATTLERS_COUNT] = {0};
src/battle_main.c:3515:        u32 partyIndex = gBattlerPartyIndexes[battler];
src/battle_main.c:3726:                    u32 partyIndex = gBattlerPartyIndexes[battler];
src/battle_main.c:4028:                u32 partyIndex = gBattlerPartyIndexes[i];
src/battle_main.c:4159:                gBattleStruct->appearedInBattle |= 1u << gBattlerPartyIndexes[i];
src/battle_main.c:4358:    partyId1 = GetPartyIdFromBattlePartyId(gBattlerPartyIndexes[battler]);
src/battle_main.c:4359:    partyId2 = GetPartyIdFromBattlePartyId(gBattlerPartyIndexes[battler2]);
src/battle_main.c:4377:    partyId1 = GetPartyIdFromBattlePartyId(gBattlerPartyIndexes[battler]);
src/battle_main.c:4558:                    gBattleStruct->battlerPartyIndexes[battler] = gBattlerPartyIndexes[battler];
src/battle_main.c:5780:    PREPARE_MON_NICK_BUFFER(gBattleTextBuff1, gBattlerAttacker, gBattlerPartyIndexes[gBattlerAttacker]);
src/pokemon.c:6294:        gBattleTextBuff1[3] = GetPartyIdFromBattlePartyId(gBattlerPartyIndexes[gBattleStruct->battlerPreventingSwitchout]);
src/pokemon.c:6296:        gBattleTextBuff1[3] = gBattlerPartyIndexes[gBattleStruct->battlerPreventingSwitchout];
src/pokemon.c:6298:    PREPARE_MON_NICK_WITH_PREFIX_BUFFER(gBattleTextBuff2, gBattlerInMenuId, GetPartyIdFromBattlePartyId(gBattlerPartyIndexes[gBattlerInMenuId]))
```

## 7. Known trainer definitions (current)

Controls: Tsubaki = known working double; Janja/Winston = known broken doubles; REN = first observed crash context.

### `TRAINER_TSUBAKI_CASUAL`
From `src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
From `src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_TSUBAKI_CASUAL] =
    {
#line 7975
        .trainerName = _("TSUBAKI"),
#line 7976
        .trainerClass = TRAINER_CLASS_NINJA_BOY,
#line 7977
        .trainerPic = TRAINER_PIC_ELITE_FOUR_SIDNEY,
        .encounterMusic_gender =
#line 7978
F_TRAINER_FEMALE | 
#line 7979
            TRAINER_ENCOUNTER_MUSIC_FEMALE,
#line 7980
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 7981
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE,
#line 0
        .trainerBackPic = TRAINER_PIC_ELITE_FOUR_SIDNEY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 7983
            .species = SPECIES_KOFFING,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 7985
            .iv = TRAINER_PARTY_IVS(12, 12, 12, 12, 12, 12),
#line 7984
            .lvl = 13,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            .moves = {
#line 7986
                MOVE_TACKLE,
                MOVE_SMOG,
                MOVE_SPITE,
                MOVE_CLEAR_SMOG,
            },
            },
            {
#line 7991
            .species = SPECIES_DELCATTY,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 7993
            .iv = TRAINER_PARTY_IVS(12, 12, 12, 12, 12, 12),
#line 7992
            .lvl = 15,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            .moves = {
#line 7994
                MOVE_SUCKER_PUNCH,
                MOVE_SHADOW_SNEAK,
                MOVE_SING,
                MOVE_CUT,
            },
            },
        },
    },
#line 7999
    [DIFFICULTY_NORMAL][TRAINER_TSUBAKI_HARD] =
    {
#line 8000
        .trainerName = _("TSUBAKI"),
#line 8001
        .trainerClass = TRAINER_CLASS_NINJA_BOY,
#line 8002
        .trainerPic = TRAINER_PIC_ELITE_FOUR_SIDNEY,
        .encounterMusic_gender =
#line 8003
F_TRAINER_FEMALE | 
#line 8004
            TRAINER_ENCOUNTER_MUSIC_FEMALE,
#line 8005
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 8006
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_ELITE_FOUR_SIDNEY,
        .partySize = 4,
        .party = (const struct TrainerMon[])
        {
            {
#line 8008
            .species = SPECIES_KOFFING,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 8010
            .iv = TRAINER_PARTY_IVS(12, 12, 12, 12, 12, 12),
#line 8009
            .lvl = 13,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            .moves = {
#line 8011
                MOVE_TACKLE,
                MOVE_SMOG,
                MOVE_SPITE,
                MOVE_CLEAR_SMOG,
            },
            },
            {
#line 8016
            .species = SPECIES_SNEASEL,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 8016
            .heldItem = ITEM_KINGS_ROCK,
#line 8018
            .iv = TRAINER_PARTY_IVS(12, 12, 12, 12, 12, 12),
#line 8017
            .lvl = 14,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            .moves = {
#line 8019
                MOVE_CUT,
                MOVE_ICE_SHARD,
                MOVE_WATER_PULSE,
                MOVE_AERIAL_ACE,
            },
```

### `TRAINER_JANJA`
From `src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
From `src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_JANJA] =
    {
#line 13295
        .trainerName = _("JANJA"),
#line 13296
        .trainerClass = TRAINER_CLASS_CLIMBER,
#line 13297
        .trainerPic = TRAINER_PIC_HIKERCLIMBER_F2,
        .encounterMusic_gender =
#line 13298
F_TRAINER_FEMALE | 
#line 13299
            TRAINER_ENCOUNTER_MUSIC_HIKER,
#line 13300
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 13301
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_HIKERCLIMBER_F2,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 13303
            .species = SPECIES_RHYHORN,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 13305
            .iv = TRAINER_PARTY_IVS(14, 14, 14, 14, 14, 14),
#line 13304
            .lvl = 13,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 13307
            .species = SPECIES_ARON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 13309
            .iv = TRAINER_PARTY_IVS(15, 15, 15, 15, 15, 15),
#line 13308
            .lvl = 13,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 13311
    [DIFFICULTY_NORMAL][TRAINER_BRENDEN] =
    {
#line 13312
        .trainerName = _("BRENDEN"),
#line 13313
        .trainerClass = TRAINER_CLASS_SAILOR,
#line 13314
        .trainerPic = TRAINER_PIC_SAILOR,
        .encounterMusic_gender =
#line 13316
            TRAINER_ENCOUNTER_MUSIC_MALE,
#line 13317
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 13318
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_SAILOR,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
            {
#line 13320
            .species = SPECIES_MACHOP,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 13322
            .iv = TRAINER_PARTY_IVS(12, 12, 12, 12, 12, 12),
#line 13321
            .lvl = 23,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 13324
    [DIFFICULTY_NORMAL][TRAINER_LILITH] =
    {
#line 13325
        .trainerName = _("LILITH"),
#line 13326
        .trainerClass = TRAINER_CLASS_BATTLE_GIRL,
#line 13327
        .trainerPic = TRAINER_PIC_BATTLE_GIRL,
        .encounterMusic_gender =
#line 13328
F_TRAINER_FEMALE | 
#line 13329
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 13330
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 13331
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_BATTLE_GIRL,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
            {
#line 13333
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 13335
            .iv = TRAINER_PARTY_IVS(18, 18, 18, 18, 18, 18),
#line 13334
            .lvl = 21,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 13337
    [DIFFICULTY_NORMAL][TRAINER_CRISTIAN] =
    {
#line 13338
```

### `TRAINER_WINSTON_1`
From `src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
From `src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### `TRAINER_REN_BROTHER_QUEST_CASUAL`
From `src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_CASUAL ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```
From `src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_REN_BROTHER_QUEST_CASUAL] =
    {
#line 20714
        .trainerName = _("REN"),
#line 20715
        .trainerClass = TRAINER_CLASS_COOLTRAINER,
#line 20716
        .trainerPic = TRAINER_PIC_COOLTRAINER_M,
        .encounterMusic_gender =
#line 20718
            TRAINER_ENCOUNTER_MUSIC_COOL,
#line 20719
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 20720
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_COOLTRAINER_M,
        .partySize = 6,
        .party = (const struct TrainerMon[])
        {
            {
#line 20722
            .species = SPECIES_AMBIPOM,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20724
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20723
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20726
            .species = SPECIES_MANECTRIC,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20728
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20727
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20730
            .species = SPECIES_VILEPLUME,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20732
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20731
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20734
            .species = SPECIES_OBSTAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20736
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20735
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20738
            .species = SPECIES_EXPLOUD,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20740
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20739
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20742
            .species = SPECIES_FERALIGATR,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20744
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20743
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 20746
    [DIFFICULTY_NORMAL][TRAINER_REN_BROTHER_QUEST_HARD] =
    {
#line 20747
        .trainerName = _("REN"),
#line 20748
        .trainerClass = TRAINER_CLASS_COOLTRAINER,
#line 20749
        .trainerPic = TRAINER_PIC_COOLTRAINER_M,
        .encounterMusic_gender =
#line 20751
            TRAINER_ENCOUNTER_MUSIC_COOL,
#line 20752
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 20753
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_COOLTRAINER_M,
        .partySize = 6,
        .party = (const struct TrainerMon[])
        {
            {
#line 20755
            .species = SPECIES_AMBIPOM,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20757
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20756
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
```

### `TRAINER_REN_BROTHER_QUEST_HARD`
From `src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_HARD ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```
From `src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_REN_BROTHER_QUEST_HARD] =
    {
#line 20747
        .trainerName = _("REN"),
#line 20748
        .trainerClass = TRAINER_CLASS_COOLTRAINER,
#line 20749
        .trainerPic = TRAINER_PIC_COOLTRAINER_M,
        .encounterMusic_gender =
#line 20751
            TRAINER_ENCOUNTER_MUSIC_COOL,
#line 20752
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 20753
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_COOLTRAINER_M,
        .partySize = 6,
        .party = (const struct TrainerMon[])
        {
            {
#line 20755
            .species = SPECIES_AMBIPOM,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20757
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20756
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20759
            .species = SPECIES_MANECTRIC,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20761
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20760
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20763
            .species = SPECIES_VILEPLUME,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20765
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20764
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20767
            .species = SPECIES_OBSTAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20769
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20768
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20771
            .species = SPECIES_EXPLOUD,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20773
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20772
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 20775
            .species = SPECIES_FERALIGATR,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20777
            .iv = TRAINER_PARTY_IVS(31, 31, 31, 31, 31, 31),
#line 20776
            .lvl = 50,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 20779
    [DIFFICULTY_NORMAL][TRAINER_SEABREEZE_SHIPPING1F_GRUNT_1] =
    {
#line 20780
        .trainerName = _("GRUNT"),
#line 20781
        .trainerClass = TRAINER_CLASS_TEAM_AQUA,
#line 20782
        .trainerPic = TRAINER_PIC_AQUA_GRUNT_M,
        .encounterMusic_gender =
#line 20784
            TRAINER_ENCOUNTER_MUSIC_AQUA,
#line 20785
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 20786
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_AQUA_GRUNT_M,
        .partySize = 3,
        .party = (const struct TrainerMon[])
        {
            {
#line 20788
            .species = SPECIES_CAMERUPT,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 20790
            .iv = TRAINER_PARTY_IVS(6, 6, 6, 6, 6, 6),
#line 20789
            .lvl = 42,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
```

## 8. Known trainer definitions at historical refs

### Ref `f91f1f6843dce37c22f9047e06bbec0abe47adcb`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```
#### `TRAINER_REN_BROTHER_QUEST_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_CASUAL ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```
#### `TRAINER_REN_BROTHER_QUEST_HARD`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_HARD ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```

### Ref `11f088156db1eda06715a73134c7bae0cc041b09`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```
#### `TRAINER_REN_BROTHER_QUEST_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_CASUAL ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```
#### `TRAINER_REN_BROTHER_QUEST_HARD`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_HARD ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```

### Ref `200e8736911ded9e2f9afde3a10d7e15ee10ce7b`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `e5393c3a8f485767c6703e626b2ac638ef5309e1`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `ca5a012e836fe78291c2b77f6cd4d26692d01100`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `2f4a892522a1fc41b72859b793d2865460ed6b62`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `45a51cb6f7e586c8fda6628f79434920a9d84331`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `5031f5151c6553264b323e460cb8ff0805806f4c`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `e17c47e66ef155c7f042d21022e8880e2c2d7235`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```
#### `TRAINER_REN_BROTHER_QUEST_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_CASUAL ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```
#### `TRAINER_REN_BROTHER_QUEST_HARD`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_HARD ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```

### Ref `aeda6f18f457e463efbe64c6c5ca7586ce836540`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```
#### `TRAINER_REN_BROTHER_QUEST_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_CASUAL ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```
#### `TRAINER_REN_BROTHER_QUEST_HARD`
`src/data/trainers.party`:
```
=== TRAINER_REN_BROTHER_QUEST_HARD ===
Name: REN
Class: Cooltrainer
Pic: Cooltrainer M
Gender: Male
Music: Cool
Double Battle: No
AI: Basic Trainer / HP Aware / Try to 2HKO

Ambipom
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Manectric
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Vileplume
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Obstagoon
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Exploud
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe

Feraligatr
Level: 50
IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
```

### Ref `12343516c35558f1f1bbd85f1369eac1782c9a02`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

### Ref `d306bc239d0f2e6d79f03c78756271f39e1d1673`
#### `TRAINER_TSUBAKI_CASUAL`
`src/data/trainers.party`:
```
=== TRAINER_TSUBAKI_CASUAL ===
Name: TSUBAKI
Class: Ninja Boy
Pic: Elite Four Sidney
Gender: Female
Music: Female
Double Battle: Yes
AI: Basic Trainer / HP Aware

Koffing
Level: 13
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Tackle
- Smog
- Spite
- Clear Smog

Delcatty
Level: 15
IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
- Sucker Punch
- Shadow Sneak
- Sing
- Cut
```
#### `TRAINER_JANJA`
`src/data/trainers.party`:
```
=== TRAINER_JANJA ===
Name: JANJA
Class: Climber
Pic: Hikerclimber F2
Gender: Female
Music: Hiker
Double Battle: Yes
AI: Check Bad Move

Rhyhorn
Level: 13
IVs: 14 HP / 14 Atk / 14 Def / 14 SpA / 14 SpD / 14 Spe

Aron
Level: 13
IVs: 15 HP / 15 Atk / 15 Def / 15 SpA / 15 SpD / 15 Spe
```
#### `TRAINER_WINSTON_1`
`src/data/trainers.party`:
```
=== TRAINER_WINSTON_1 ===
Name: WINSTON
Class: Rich Boy
Pic: Rich Boy
Gender: Male
Music: Rich
Items: Full Restore
Double Battle: Yes
AI: Basic Trainer

Zigzagoon @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe

Nidoran_M @ Nugget
Level: 7
IVs: 0 HP / 0 Atk / 0 Def / 0 SpA / 0 SpD / 0 Spe
```
`src/data/trainers.h`:
```
    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
    {
#line 3161
        .trainerName = _("WINSTON"),
#line 3162
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3163
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3165
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3166
        .items = { ITEM_FULL_RESTORE },
#line 3167
        .battleType = TRAINER_BATTLE_TYPE_DOUBLES,
#line 3168
        .aiFlags = AI_FLAG_BASIC_TRAINER,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3170
            .species = SPECIES_ZIGZAGOON,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3170
            .heldItem = ITEM_NUGGET,
#line 3172
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3171
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3174
            .species = SPECIES_NIDORAN_M,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3174
            .heldItem = ITEM_NUGGET,
#line 3176
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3175
            .lvl = 7,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3178
    [DIFFICULTY_NORMAL][TRAINER_MOLLIE] =
    {
#line 3179
        .trainerName = _("MOLLIE"),
#line 3180
        .trainerClass = TRAINER_CLASS_EXPERT,
#line 3181
        .trainerPic = TRAINER_PIC_EXPERT_F,
        .encounterMusic_gender =
#line 3182
F_TRAINER_FEMALE | 
#line 3183
            TRAINER_ENCOUNTER_MUSIC_INTENSE,
#line 3184
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3185
        .aiFlags = AI_FLAG_BASIC_TRAINER | AI_FLAG_HP_AWARE | AI_FLAG_TRY_TO_2HKO,
#line 0
        .trainerBackPic = TRAINER_PIC_EXPERT_F,
        .partySize = 2,
        .party = (const struct TrainerMon[])
        {
            {
#line 3187
            .species = SPECIES_WHISCASH,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3189
            .iv = TRAINER_PARTY_IVS(0, 0, 0, 0, 0, 0),
#line 3188
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
            {
#line 3191
            .species = SPECIES_MEDITITE,
            .gender = TRAINER_MON_RANDOM_GENDER,
#line 3193
            .iv = TRAINER_PARTY_IVS(24, 24, 24, 24, 24, 24),
#line 3192
            .lvl = 57,
            .nature = NATURE_HARDY,
            .dynamaxLevel = MAX_DYNAMAX_LEVEL,
            },
        },
    },
#line 3195
    [DIFFICULTY_NORMAL][TRAINER_GARRET] =
    {
#line 3196
        .trainerName = _("GARRET"),
#line 3197
        .trainerClass = TRAINER_CLASS_RICH_BOY,
#line 3198
        .trainerPic = TRAINER_PIC_RICH_BOY,
        .encounterMusic_gender =
#line 3200
            TRAINER_ENCOUNTER_MUSIC_RICH,
#line 3201
        .items = { ITEM_FULL_RESTORE },
#line 3202
        .battleType = TRAINER_BATTLE_TYPE_SINGLES,
#line 3203
        .aiFlags = AI_FLAG_CHECK_BAD_MOVE,
#line 0
        .trainerBackPic = TRAINER_PIC_RICH_BOY,
        .partySize = 1,
        .party = (const struct TrainerMon[])
        {
```

## 9. Script references for known trainers

### `TRAINER_TSUBAKI_CASUAL`
```
data/maps/RusturfGrove/scripts.inc-62-	getdifficulty VAR_RESULT
data/maps/RusturfGrove/scripts.inc-63-# 32 "data/maps/RusturfGrove/scripts.pory"
data/maps/RusturfGrove/scripts.inc-64-	goto_if_eq VAR_RESULT, 1, Cutter_Hard
data/maps/RusturfGrove/scripts.inc-65-# 33 "data/maps/RusturfGrove/scripts.pory"
data/maps/RusturfGrove/scripts.inc:66:	trainerbattle_single TRAINER_TSUBAKI_CASUAL, CutterIntro, CutterLose, CutterPostBattle
data/maps/RusturfGrove/scripts.inc-67-# 34 "data/maps/RusturfGrove/scripts.pory"
data/maps/RusturfGrove/scripts.inc-68-	return
data/maps/RusturfGrove/scripts.inc-69-# 35 "data/maps/RusturfGrove/scripts.pory"
data/maps/RusturfGrove/scripts.inc-70-
--
data/maps/RusturfGrove/scripts.pory-29-	msgbox CutterDialogueBefore, MSGBOX_NPC
data/maps/RusturfGrove/scripts.pory-30-	removefieldmugshot
data/maps/RusturfGrove/scripts.pory-31-	getdifficulty VAR_RESULT
data/maps/RusturfGrove/scripts.pory-32-	goto_if_eq VAR_RESULT, 1, Cutter_Hard
data/maps/RusturfGrove/scripts.pory:33:	trainerbattle_single TRAINER_TSUBAKI_CASUAL, CutterIntro, CutterLose, CutterPostBattle
data/maps/RusturfGrove/scripts.pory-34-	return
data/maps/RusturfGrove/scripts.pory-35-
data/maps/RusturfGrove/scripts.pory-36-Cutter_Hard:
data/maps/RusturfGrove/scripts.pory-37-	trainerbattle_single TRAINER_TSUBAKI_HARD, CutterIntro, CutterLose, CutterPostBattle
--
src/data/trainers.h-20603-            },
src/data/trainers.h-20604-        },
src/data/trainers.h-20605-    },
src/data/trainers.h-20606-#line 7974
src/data/trainers.h:20607:    [DIFFICULTY_NORMAL][TRAINER_TSUBAKI_CASUAL] =
src/data/trainers.h-20608-    {
src/data/trainers.h-20609-#line 7975
src/data/trainers.h-20610-        .trainerName = _("TSUBAKI"),
src/data/trainers.h-20611-#line 7976
--
src/data/trainers.party-7970-Oddish
src/data/trainers.party-7971-Level: 12
src/data/trainers.party-7972-IVs: 12 HP / 12 Atk / 12 Def / 12 SpA / 12 SpD / 12 Spe
src/data/trainers.party-7973-
src/data/trainers.party:7974:=== TRAINER_TSUBAKI_CASUAL ===
src/data/trainers.party-7975-Name: TSUBAKI
src/data/trainers.party-7976-Class: Ninja Boy
src/data/trainers.party-7977-Pic: Elite Four Sidney
src/data/trainers.party-7978-Gender: Female
```

### `TRAINER_JANJA`
```
data/maps/RustboroCity_Gym/scripts.inc-168-
data/maps/RustboroCity_Gym/scripts.inc-169-# 85 "data/maps/RustboroCity_Gym/scripts.pory"
data/maps/RustboroCity_Gym/scripts.inc-170-RustboroCity_Gym_EventScript_Janja::
data/maps/RustboroCity_Gym/scripts.inc-171-# 86 "data/maps/RustboroCity_Gym/scripts.pory"
data/maps/RustboroCity_Gym/scripts.inc:172:	trainerbattle_single TRAINER_JANJA, RustboroCity_Gym_Text_JanjaIntro, RustboroCity_Gym_Text_JanjaDefeat
data/maps/RustboroCity_Gym/scripts.inc-173-# 87 "data/maps/RustboroCity_Gym/scripts.pory"
data/maps/RustboroCity_Gym/scripts.inc-174-	msgbox RustboroCity_Gym_Text_JanjaPostBattle, MSGBOX_AUTOCLOSE
data/maps/RustboroCity_Gym/scripts.inc-175-# 88 "data/maps/RustboroCity_Gym/scripts.pory"
data/maps/RustboroCity_Gym/scripts.inc-176-	end
--
data/maps/RustboroCity_Gym/scripts.pory-82-	msgbox RustboroCity_Gym_Text_RaboutouPostBattle, MSGBOX_AUTOCLOSE
data/maps/RustboroCity_Gym/scripts.pory-83-	end
data/maps/RustboroCity_Gym/scripts.pory-84-
data/maps/RustboroCity_Gym/scripts.pory-85-RustboroCity_Gym_EventScript_Janja::
data/maps/RustboroCity_Gym/scripts.pory:86:	trainerbattle_single TRAINER_JANJA, RustboroCity_Gym_Text_JanjaIntro, RustboroCity_Gym_Text_JanjaDefeat
data/maps/RustboroCity_Gym/scripts.pory-87-	msgbox RustboroCity_Gym_Text_JanjaPostBattle, MSGBOX_AUTOCLOSE
data/maps/RustboroCity_Gym/scripts.pory-88-	end
data/maps/RustboroCity_Gym/scripts.pory-89-
data/maps/RustboroCity_Gym/scripts.pory-90-RustboroCity_Gym_EventScript_GymGuide::
--
data/scripts/set_gym_trainers.inc-12-
data/scripts/set_gym_trainers.inc-13-RustboroCity_Gym_SetGymTrainers::
data/scripts/set_gym_trainers.inc-14-	settrainerflag TRAINER_JOSH
data/scripts/set_gym_trainers.inc-15-	settrainerflag TRAINER_RABOUTOU
data/scripts/set_gym_trainers.inc:16:	settrainerflag TRAINER_JANJA
data/scripts/set_gym_trainers.inc-17-	return
data/scripts/set_gym_trainers.inc-18-
data/scripts/set_gym_trainers.inc-19-DewfordTown_Gym_SetGymTrainers::
data/scripts/set_gym_trainers.inc-20-	settrainerflag TRAINER_TAKAO
--
src/data/trainers.h-34655-            },
src/data/trainers.h-34656-        },
src/data/trainers.h-34657-    },
src/data/trainers.h-34658-#line 13294
src/data/trainers.h:34659:    [DIFFICULTY_NORMAL][TRAINER_JANJA] =
src/data/trainers.h-34660-    {
src/data/trainers.h-34661-#line 13295
src/data/trainers.h-34662-        .trainerName = _("JANJA"),
src/data/trainers.h-34663-#line 13296
--
src/data/trainers.party-13290-Snubbull
src/data/trainers.party-13291-Level: 34
src/data/trainers.party-13292-IVs: 6 HP / 6 Atk / 6 Def / 6 SpA / 6 SpD / 6 Spe
src/data/trainers.party-13293-
src/data/trainers.party:13294:=== TRAINER_JANJA ===
src/data/trainers.party-13295-Name: JANJA
src/data/trainers.party-13296-Class: Climber
src/data/trainers.party-13297-Pic: Hikerclimber F2
src/data/trainers.party-13298-Gender: Female
```

### `TRAINER_WINSTON_1`
```
data/maps/Route104/scripts.inc-3884-Route104_EventScript_Winston::
data/maps/Route104/scripts.inc-3885-# 1943 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3886-# 914 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3887-# 1944 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc:3888:	trainerbattle_single TRAINER_WINSTON_1, Route104_Text_WinstonIntro, Route104_Text_WinstonDefeat, Route104_EventScript_TryRegisterWinstonAfterBattle
data/maps/Route104/scripts.inc-3889-# 1945 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3890-# 915 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3891-# 1946 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3892-	specialvar VAR_RESULT, ShouldTryRematchBattle
--
data/maps/Route104/scripts.inc-3896-	goto_if_eq VAR_RESULT, TRUE, Route104_EventScript_RematchWinston
data/maps/Route104/scripts.inc-3897-# 1949 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3898-# 917 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3899-# 1950 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc:3900:	setvar VAR_0x8004, TRAINER_WINSTON_1
data/maps/Route104/scripts.inc-3901-# 1951 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3902-# 918 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3903-# 1952 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3904-	specialvar VAR_RESULT, IsTrainerRegistered
--
data/maps/Route104/scripts.inc-3960-	@ PokéNav removed msgbox Route104_Text_WinstonRegister2, MSGBOX_DEFAULT
data/maps/Route104/scripts.inc-3961-# 1981 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3962-# 933 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3963-# 1982 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc:3964:	@ PokéNav removed register_matchcall TRAINER_WINSTON_1
data/maps/Route104/scripts.inc-3965-# 1983 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3966-# 934 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3967-# 1984 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-3968-	release
--
data/maps/Route104/scripts.inc-4008-	@ PokéNav removed msgbox Route104_Text_WinstonRegister1, MSGBOX_DEFAULT
data/maps/Route104/scripts.inc-4009-# 2005 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4010-# 945 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4011-# 2006 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc:4012:	@ PokéNav removed register_matchcall TRAINER_WINSTON_1
data/maps/Route104/scripts.inc-4013-# 2007 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4014-# 946 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4015-# 2008 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4016-	release
--
data/maps/Route104/scripts.inc-4028-Route104_EventScript_RematchWinston::
data/maps/Route104/scripts.inc-4029-# 2015 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4030-# 950 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4031-# 2016 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc:4032:	trainerbattle_rematch TRAINER_WINSTON_1, Route104_Text_WinstonRematchIntro, Route104_Text_WinstonRematchDefeat
data/maps/Route104/scripts.inc-4033-# 2017 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4034-# 951 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4035-# 2018 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.inc-4036-	msgbox Route104_Text_WinstonPostRematch, MSGBOX_AUTOCLOSE
--
data/maps/Route104/scripts.pory-1940-
data/maps/Route104/scripts.pory-1941-# 913 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1942-Route104_EventScript_Winston::
data/maps/Route104/scripts.pory-1943-# 914 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory:1944:	trainerbattle_single TRAINER_WINSTON_1, Route104_Text_WinstonIntro, Route104_Text_WinstonDefeat, Route104_EventScript_TryRegisterWinstonAfterBattle
data/maps/Route104/scripts.pory-1945-# 915 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1946-	specialvar VAR_RESULT, ShouldTryRematchBattle
data/maps/Route104/scripts.pory-1947-# 916 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1948-	goto_if_eq VAR_RESULT, TRUE, Route104_EventScript_RematchWinston
data/maps/Route104/scripts.pory-1949-# 917 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory:1950:	setvar VAR_0x8004, TRAINER_WINSTON_1
data/maps/Route104/scripts.pory-1951-# 918 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1952-	specialvar VAR_RESULT, IsTrainerRegistered
data/maps/Route104/scripts.pory-1953-# 919 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1954-	goto_if_eq VAR_RESULT, FALSE, Route104_EventScript_TryRegisterWinston
--
data/maps/Route104/scripts.pory-1978-Route104_EventScript_RegisterWinstonAfterBattle::
data/maps/Route104/scripts.pory-1979-# 932 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1980-	@ PokéNav removed msgbox Route104_Text_WinstonRegister2, MSGBOX_DEFAULT
data/maps/Route104/scripts.pory-1981-# 933 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory:1982:	@ PokéNav removed register_matchcall TRAINER_WINSTON_1
data/maps/Route104/scripts.pory-1983-# 934 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1984-	release
data/maps/Route104/scripts.pory-1985-# 935 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-1986-	end
--
data/maps/Route104/scripts.pory-2002-Route104_EventScript_RegisterWinston::
data/maps/Route104/scripts.pory-2003-# 944 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-2004-	@ PokéNav removed msgbox Route104_Text_WinstonRegister1, MSGBOX_DEFAULT
data/maps/Route104/scripts.pory-2005-# 945 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory:2006:	@ PokéNav removed register_matchcall TRAINER_WINSTON_1
data/maps/Route104/scripts.pory-2007-# 946 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-2008-	release
data/maps/Route104/scripts.pory-2009-# 947 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-2010-	end
--
data/maps/Route104/scripts.pory-2012-
data/maps/Route104/scripts.pory-2013-# 949 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-2014-Route104_EventScript_RematchWinston::
data/maps/Route104/scripts.pory-2015-# 950 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory:2016:	trainerbattle_rematch TRAINER_WINSTON_1, Route104_Text_WinstonRematchIntro, Route104_Text_WinstonRematchDefeat
data/maps/Route104/scripts.pory-2017-# 951 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-2018-	msgbox Route104_Text_WinstonPostRematch, MSGBOX_AUTOCLOSE
data/maps/Route104/scripts.pory-2019-# 952 "data/maps/Route104/scripts.pory"
data/maps/Route104/scripts.pory-2020-	end
--
src/data/trainers.h-8219-            },
src/data/trainers.h-8220-        },
src/data/trainers.h-8221-    },
src/data/trainers.h-8222-#line 3160
src/data/trainers.h:8223:    [DIFFICULTY_NORMAL][TRAINER_WINSTON_1] =
src/data/trainers.h-8224-    {
src/data/trainers.h-8225-#line 3161
src/data/trainers.h-8226-        .trainerName = _("WINSTON"),
src/data/trainers.h-8227-#line 3162
--
src/data/trainers.party-3156-- Screech
src/data/trainers.party-3157-- Glare
src/data/trainers.party-3158-- Crunch
src/data/trainers.party-3159-
src/data/trainers.party:3160:=== TRAINER_WINSTON_1 ===
src/data/trainers.party-3161-Name: WINSTON
src/data/trainers.party-3162-Class: Rich Boy
src/data/trainers.party-3163-Pic: Rich Boy
src/data/trainers.party-3164-Gender: Male
```

### `TRAINER_REN_BROTHER_QUEST_CASUAL`
```
data/maps/LilycoveCity_House5/scripts.inc-16-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_Brother_NoQuest
data/maps/LilycoveCity_House5/scripts.inc-17-# 9 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-18-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_Brother_GiveTM
data/maps/LilycoveCity_House5/scripts.inc-19-# 10 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:20:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.inc-21-# 11 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-22-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.inc-23-# 12 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-24-	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
--
data/maps/LilycoveCity_House5/scripts.inc-26-	waitmovement 0
data/maps/LilycoveCity_House5/scripts.inc-27-# 14 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-28-	goto_if_set FLAG_HARD_MODE_SLEEP_CLAUSE, LilycoveCity_House5_EventScript_Brother_Hard
data/maps/LilycoveCity_House5/scripts.inc-29-# 15 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:30:	trainerbattle_single TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.inc-31-# 16 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-32-	end
data/maps/LilycoveCity_House5/scripts.inc-33-# 17 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-34-
--
data/maps/LilycoveCity_House5/scripts.inc-46-	lock
data/maps/LilycoveCity_House5/scripts.inc-47-# 24 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-48-	faceplayer
data/maps/LilycoveCity_House5/scripts.inc-49-# 25 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:50:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.inc-51-# 26 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-52-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.inc-53-# 27 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-54-	release
--
data/maps/LilycoveCity_House5/scripts.inc-112-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_BrotherGf_NoQuest
data/maps/LilycoveCity_House5/scripts.inc-113-# 57 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-114-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_BrotherGf_Complete
data/maps/LilycoveCity_House5/scripts.inc-115-# 58 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:116:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.inc-117-# 59 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-118-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.inc-119-# 60 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-120-
--
data/maps/LilycoveCity_House5/scripts.pory-6-	lock
data/maps/LilycoveCity_House5/scripts.pory-7-	faceplayer
data/maps/LilycoveCity_House5/scripts.pory-8-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_Brother_NoQuest
data/maps/LilycoveCity_House5/scripts.pory-9-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_Brother_GiveTM
data/maps/LilycoveCity_House5/scripts.pory:10:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory-11-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory-12-	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
data/maps/LilycoveCity_House5/scripts.pory-13-	waitmovement 0
data/maps/LilycoveCity_House5/scripts.pory-14-	goto_if_set FLAG_HARD_MODE_SLEEP_CLAUSE, LilycoveCity_House5_EventScript_Brother_Hard
data/maps/LilycoveCity_House5/scripts.pory:15:	trainerbattle_single TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory-16-	end
data/maps/LilycoveCity_House5/scripts.pory-17-
data/maps/LilycoveCity_House5/scripts.pory-18-LilycoveCity_House5_EventScript_Brother_Hard::
data/maps/LilycoveCity_House5/scripts.pory-19-	trainerbattle_single TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
--
data/maps/LilycoveCity_House5/scripts.pory-21-
data/maps/LilycoveCity_House5/scripts.pory-22-LilycoveCity_House5_EventScript_Brother_PostBattle::
data/maps/LilycoveCity_House5/scripts.pory-23-	lock
data/maps/LilycoveCity_House5/scripts.pory-24-	faceplayer
data/maps/LilycoveCity_House5/scripts.pory:25:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.pory-26-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.pory-27-	release
data/maps/LilycoveCity_House5/scripts.pory-28-	end
data/maps/LilycoveCity_House5/scripts.pory-29-
--
data/maps/LilycoveCity_House5/scripts.pory-54-	lock
data/maps/LilycoveCity_House5/scripts.pory-55-	faceplayer
data/maps/LilycoveCity_House5/scripts.pory-56-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_BrotherGf_NoQuest
data/maps/LilycoveCity_House5/scripts.pory-57-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_BrotherGf_Complete
data/maps/LilycoveCity_House5/scripts.pory:58:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.pory-59-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.pory-60-
data/maps/LilycoveCity_House5/scripts.pory-61-LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle::
data/maps/LilycoveCity_House5/scripts.pory-62-	msgbox LilycoveCity_House5_Text_BrotherGf_BeforeBattle, MSGBOX_NPC
--
data/maps/MossdeepCity_House5/scripts.inc-78-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_LittleGirl_BeginQuest
data/maps/MossdeepCity_House5/scripts.inc-79-# 40 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-80-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_LittleGirl_StillSearching
data/maps/MossdeepCity_House5/scripts.inc-81-# 41 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc:82:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.inc-83-# 42 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-84-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.inc-85-# 43 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-86-	msgbox MossdeepCity_House5_Text_LittleGirl_PleaseHelp, MSGBOX_DEFAULT
--
data/maps/MossdeepCity_House5/scripts.inc-276-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_BeforeQuest
data/maps/MossdeepCity_House5/scripts.inc-277-# 139 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-278-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.inc-279-# 140 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc:280:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.inc-281-# 141 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-282-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.inc-283-# 142 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-284-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_AfterQuestStart
--
data/maps/MossdeepCity_House5/scripts.inc-334-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_BeforeQuest
data/maps/MossdeepCity_House5/scripts.inc-335-# 168 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-336-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Mom_HoneyGiven
data/maps/MossdeepCity_House5/scripts.inc-337-# 169 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc:338:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.inc-339-# 170 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-340-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.inc-341-# 171 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-342-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_AfterQuestStart
--
data/maps/MossdeepCity_House5/scripts.pory-37-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_LittleGirl_Complete
data/maps/MossdeepCity_House5/scripts.pory-38-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MossdeepCity_House5_EventScript_LittleGirl_ReceiveDoll
data/maps/MossdeepCity_House5/scripts.pory-39-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_LittleGirl_BeginQuest
data/maps/MossdeepCity_House5/scripts.pory-40-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_LittleGirl_StillSearching
data/maps/MossdeepCity_House5/scripts.pory:41:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.pory-42-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.pory-43-	msgbox MossdeepCity_House5_Text_LittleGirl_PleaseHelp, MSGBOX_DEFAULT
data/maps/MossdeepCity_House5/scripts.pory-44-	releaseall
data/maps/MossdeepCity_House5/scripts.pory-45-	end
--
data/maps/MossdeepCity_House5/scripts.pory-136-	faceplayer
data/maps/MossdeepCity_House5/scripts.pory-137-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Dad_Complete
data/maps/MossdeepCity_House5/scripts.pory-138-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_BeforeQuest
data/maps/MossdeepCity_House5/scripts.pory-139-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.pory:140:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.pory-141-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.pory-142-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_AfterQuestStart
data/maps/MossdeepCity_House5/scripts.pory-143-MossdeepCity_House5_EventScript_Dad_BeforeQuest:
data/maps/MossdeepCity_House5/scripts.pory-144-	msgbox MossdeepCity_House5_Text_Dad_BeforeQuest, MSGBOX_NPC
--
data/maps/MossdeepCity_House5/scripts.pory-165-	faceplayer
data/maps/MossdeepCity_House5/scripts.pory-166-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Mom_Complete
data/maps/MossdeepCity_House5/scripts.pory-167-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_BeforeQuest
data/maps/MossdeepCity_House5/scripts.pory-168-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Mom_HoneyGiven
data/maps/MossdeepCity_House5/scripts.pory:169:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.pory-170-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.pory-171-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_AfterQuestStart
data/maps/MossdeepCity_House5/scripts.pory-172-MossdeepCity_House5_EventScript_Mom_BeforeQuest:
data/maps/MossdeepCity_House5/scripts.pory-173-	msgbox MossdeepCity_House5_Text_Mom_BeforeQuest, MSGBOX_NPC
--
src/data/trainers.h-53899-            },
src/data/trainers.h-53900-        },
src/data/trainers.h-53901-    },
src/data/trainers.h-53902-#line 20713
src/data/trainers.h:53903:    [DIFFICULTY_NORMAL][TRAINER_REN_BROTHER_QUEST_CASUAL] =
src/data/trainers.h-53904-    {
src/data/trainers.h-53905-#line 20714
src/data/trainers.h-53906-        .trainerName = _("REN"),
src/data/trainers.h-53907-#line 20715
--
src/data/trainers.party-20709-Feraligatr
src/data/trainers.party-20710-Level: 60
src/data/trainers.party-20711-IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
src/data/trainers.party-20712-
src/data/trainers.party:20713:=== TRAINER_REN_BROTHER_QUEST_CASUAL ===
src/data/trainers.party-20714-Name: REN
src/data/trainers.party-20715-Class: Cooltrainer
src/data/trainers.party-20716-Pic: Cooltrainer M
src/data/trainers.party-20717-Gender: Male
```

### `TRAINER_REN_BROTHER_QUEST_HARD`
```
data/maps/LilycoveCity_House5/scripts.inc-18-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_Brother_GiveTM
data/maps/LilycoveCity_House5/scripts.inc-19-# 10 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-20-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.inc-21-# 11 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:22:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.inc-23-# 12 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-24-	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
data/maps/LilycoveCity_House5/scripts.inc-25-# 13 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-26-	waitmovement 0
--
data/maps/LilycoveCity_House5/scripts.inc-34-
data/maps/LilycoveCity_House5/scripts.inc-35-# 18 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-36-LilycoveCity_House5_EventScript_Brother_Hard::
data/maps/LilycoveCity_House5/scripts.inc-37-# 19 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:38:	trainerbattle_single TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.inc-39-# 20 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-40-	end
data/maps/LilycoveCity_House5/scripts.inc-41-# 21 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-42-
--
data/maps/LilycoveCity_House5/scripts.inc-48-	faceplayer
data/maps/LilycoveCity_House5/scripts.inc-49-# 25 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-50-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.inc-51-# 26 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:52:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.inc-53-# 27 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-54-	release
data/maps/LilycoveCity_House5/scripts.inc-55-# 28 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-56-	end
--
data/maps/LilycoveCity_House5/scripts.inc-114-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_BrotherGf_Complete
data/maps/LilycoveCity_House5/scripts.inc-115-# 58 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-116-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.inc-117-# 59 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc:118:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.inc-119-# 60 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-120-
data/maps/LilycoveCity_House5/scripts.inc-121-# 61 "data/maps/LilycoveCity_House5/scripts.pory"
data/maps/LilycoveCity_House5/scripts.inc-122-LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle::
--
data/maps/LilycoveCity_House5/scripts.pory-7-	faceplayer
data/maps/LilycoveCity_House5/scripts.pory-8-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_Brother_NoQuest
data/maps/LilycoveCity_House5/scripts.pory-9-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_Brother_GiveTM
data/maps/LilycoveCity_House5/scripts.pory-10-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory:11:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory-12-	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
data/maps/LilycoveCity_House5/scripts.pory-13-	waitmovement 0
data/maps/LilycoveCity_House5/scripts.pory-14-	goto_if_set FLAG_HARD_MODE_SLEEP_CLAUSE, LilycoveCity_House5_EventScript_Brother_Hard
data/maps/LilycoveCity_House5/scripts.pory-15-	trainerbattle_single TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory-16-	end
data/maps/LilycoveCity_House5/scripts.pory-17-
data/maps/LilycoveCity_House5/scripts.pory-18-LilycoveCity_House5_EventScript_Brother_Hard::
data/maps/LilycoveCity_House5/scripts.pory:19:	trainerbattle_single TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
data/maps/LilycoveCity_House5/scripts.pory-20-	end
data/maps/LilycoveCity_House5/scripts.pory-21-
data/maps/LilycoveCity_House5/scripts.pory-22-LilycoveCity_House5_EventScript_Brother_PostBattle::
data/maps/LilycoveCity_House5/scripts.pory-23-	lock
data/maps/LilycoveCity_House5/scripts.pory-24-	faceplayer
data/maps/LilycoveCity_House5/scripts.pory-25-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.pory:26:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_Confession
data/maps/LilycoveCity_House5/scripts.pory-27-	release
data/maps/LilycoveCity_House5/scripts.pory-28-	end
data/maps/LilycoveCity_House5/scripts.pory-29-
data/maps/LilycoveCity_House5/scripts.pory-30-LilycoveCity_House5_EventScript_Brother_Confession:
--
data/maps/LilycoveCity_House5/scripts.pory-55-	faceplayer
data/maps/LilycoveCity_House5/scripts.pory-56-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_BrotherGf_NoQuest
data/maps/LilycoveCity_House5/scripts.pory-57-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_BrotherGf_Complete
data/maps/LilycoveCity_House5/scripts.pory-58-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.pory:59:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
data/maps/LilycoveCity_House5/scripts.pory-60-
data/maps/LilycoveCity_House5/scripts.pory-61-LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle::
data/maps/LilycoveCity_House5/scripts.pory-62-	msgbox LilycoveCity_House5_Text_BrotherGf_BeforeBattle, MSGBOX_NPC
data/maps/LilycoveCity_House5/scripts.pory-63-	release
--
data/maps/MossdeepCity_House5/scripts.inc-80-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_LittleGirl_StillSearching
data/maps/MossdeepCity_House5/scripts.inc-81-# 41 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-82-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.inc-83-# 42 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc:84:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.inc-85-# 43 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-86-	msgbox MossdeepCity_House5_Text_LittleGirl_PleaseHelp, MSGBOX_DEFAULT
data/maps/MossdeepCity_House5/scripts.inc-87-# 44 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-88-	releaseall
--
data/maps/MossdeepCity_House5/scripts.inc-278-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.inc-279-# 140 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-280-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.inc-281-# 141 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc:282:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.inc-283-# 142 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-284-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_AfterQuestStart
data/maps/MossdeepCity_House5/scripts.inc-285-# 143 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-286-MossdeepCity_House5_EventScript_Dad_BeforeQuest:
--
data/maps/MossdeepCity_House5/scripts.inc-336-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Mom_HoneyGiven
data/maps/MossdeepCity_House5/scripts.inc-337-# 169 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-338-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.inc-339-# 170 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc:340:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.inc-341-# 171 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-342-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_AfterQuestStart
data/maps/MossdeepCity_House5/scripts.inc-343-# 172 "data/maps/MossdeepCity_House5/scripts.pory"
data/maps/MossdeepCity_House5/scripts.inc-344-MossdeepCity_House5_EventScript_Mom_BeforeQuest:
--
data/maps/MossdeepCity_House5/scripts.pory-38-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MossdeepCity_House5_EventScript_LittleGirl_ReceiveDoll
data/maps/MossdeepCity_House5/scripts.pory-39-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_LittleGirl_BeginQuest
data/maps/MossdeepCity_House5/scripts.pory-40-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_LittleGirl_StillSearching
data/maps/MossdeepCity_House5/scripts.pory-41-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.pory:42:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
data/maps/MossdeepCity_House5/scripts.pory-43-	msgbox MossdeepCity_House5_Text_LittleGirl_PleaseHelp, MSGBOX_DEFAULT
data/maps/MossdeepCity_House5/scripts.pory-44-	releaseall
data/maps/MossdeepCity_House5/scripts.pory-45-	end
data/maps/MossdeepCity_House5/scripts.pory-46-
--
data/maps/MossdeepCity_House5/scripts.pory-137-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Dad_Complete
data/maps/MossdeepCity_House5/scripts.pory-138-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_BeforeQuest
data/maps/MossdeepCity_House5/scripts.pory-139-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.pory-140-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.pory:141:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Dad_AfterConfession
data/maps/MossdeepCity_House5/scripts.pory-142-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_AfterQuestStart
data/maps/MossdeepCity_House5/scripts.pory-143-MossdeepCity_House5_EventScript_Dad_BeforeQuest:
data/maps/MossdeepCity_House5/scripts.pory-144-	msgbox MossdeepCity_House5_Text_Dad_BeforeQuest, MSGBOX_NPC
data/maps/MossdeepCity_House5/scripts.pory-145-	release
--
data/maps/MossdeepCity_House5/scripts.pory-166-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Mom_Complete
data/maps/MossdeepCity_House5/scripts.pory-167-	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_BeforeQuest
data/maps/MossdeepCity_House5/scripts.pory-168-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Mom_HoneyGiven
data/maps/MossdeepCity_House5/scripts.pory-169-	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.pory:170:	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Mom_GiveHoney
data/maps/MossdeepCity_House5/scripts.pory-171-	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_AfterQuestStart
data/maps/MossdeepCity_House5/scripts.pory-172-MossdeepCity_House5_EventScript_Mom_BeforeQuest:
data/maps/MossdeepCity_House5/scripts.pory-173-	msgbox MossdeepCity_House5_Text_Mom_BeforeQuest, MSGBOX_NPC
data/maps/MossdeepCity_House5/scripts.pory-174-	release
--
src/data/trainers.h-53988-            },
src/data/trainers.h-53989-        },
src/data/trainers.h-53990-    },
src/data/trainers.h-53991-#line 20746
src/data/trainers.h:53992:    [DIFFICULTY_NORMAL][TRAINER_REN_BROTHER_QUEST_HARD] =
src/data/trainers.h-53993-    {
src/data/trainers.h-53994-#line 20747
src/data/trainers.h-53995-        .trainerName = _("REN"),
src/data/trainers.h-53996-#line 20748
--
src/data/trainers.party-20742-Feraligatr
src/data/trainers.party-20743-Level: 50
src/data/trainers.party-20744-IVs: 31 HP / 31 Atk / 31 Def / 31 SpA / 31 SpD / 31 Spe
src/data/trainers.party-20745-
src/data/trainers.party:20746:=== TRAINER_REN_BROTHER_QUEST_HARD ===
src/data/trainers.party-20747-Name: REN
src/data/trainers.party-20748-Class: Cooltrainer
src/data/trainers.party-20749-Pic: Cooltrainer M
src/data/trainers.party-20750-Gender: Male
```

## 10. Current staged/unstaged suspect diffs

### Staged (keyword-focused)
*(no output)*

### Unstaged (keyword-focused)
*(no output)*

## 11. Recent suspect-file history

```
ebd70d10edc665e6f7b0311cadd843b05a505daf	2026-09-16 11:13:12 -0300	rafaelsanna	92.5 granbull snubull sprites fixed / plus minor sprites pal changes
11f088156db1eda06715a73134c7bae0cc041b09	2026-09-16 02:44:44 -0300	emberlatte-lab	event and minor map fixes
aeda6f18f457e463efbe64c6c5ca7586ce836540	2026-09-16 01:41:11 -0300	emberlatte-lab	slateport event refinement
f91f1f6843dce37c22f9047e06bbec0abe47adcb	2026-09-15 22:00:00 -0300	rafaelsanna	92.4 MR. BOTTONS QUEST DONE
e17c47e66ef155c7f042d21022e8880e2c2d7235	2026-09-15 11:18:19 -0300	rafaelsanna	92.3 teddyursa ghost quest
e5393c3a8f485767c6703e626b2ac638ef5309e1	2026-09-15 10:57:33 -0300	rafaelsanna	Merge remote-tracking branch 'origin/main'
ca5a012e836fe78291c2b77f6cd4d26692d01100	2026-09-15 18:45:30 -0300	emberlatte-lab	sprite and iron ball price
d306bc239d0f2e6d79f03c78756271f39e1d1673	2026-09-15 17:52:14 -0300	emberlatte-lab	accountant sprites
2f4a892522a1fc41b72859b793d2865460ed6b62	2026-09-15 17:01:41 -0300	emberlatte-lab	Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project
200e8736911ded9e2f9afde3a10d7e15ee10ce7b	2026-09-15 10:56:52 -0300	rafaelsanna	Merge branch 'main' of github.com:rafaelsanna/HOENN-S-LAST-WISH-project
6d4e988037d201f39ab1ee14b3bf848b8c7517ea	2026-09-15 08:43:00 -0300	rafaelsanna	92.2 teddyursa / ursaring / ursaluna sprites
12343516c35558f1f1bbd85f1369eac1782c9a02	2026-09-15 05:25:37 -0300	rafaelsanna	92.2 teddyursa / ursaring / ursaluna sprites
45a51cb6f7e586c8fda6628f79434920a9d84331	2026-09-15 04:20:37 -0300	emberlatte-lab	WIP: preserve local work before syncing
5031f5151c6553264b323e460cb8ff0805806f4c	2026-09-15 00:11:52 -0300	rafaelsanna	92.1 fixed visual glitch of radio pop up + changing map songs
bb35f429e2eac73833084bdc7717a32e10c81ec8	2026-09-14 23:38:26 -0300	rafaelsanna	91.8 add 3 QOTSA songs
d3cef3a12f86975075bd00246b1c192be382a415	2026-09-14 22:45:42 -0300	rafaelsanna	91.7 old man catching charm
52d6604e7591df0b486aee8a86096ee02ad41712	2026-09-14 21:22:52 -0300	rafaelsanna	91.6 Luka back sprite
6847eea5f3efc641868908b4c3426026d5365997	2026-09-14 17:23:42 -0300	rafaelsanna	91.5 marshtomp sprites
0a1f56ec99626e1e8e01a8717a0067fbc24917eb	2026-09-14 15:08:45 -0300	rafaelsanna	91.5 marshtomp sprites
4ac24b932c5ab08f134b60cbac2d9a9a14cc3150	2026-09-14 15:05:10 -0300	rafaelsanna	91.5 marshtomp sprites
```

## 12. What to send back

Upload this `.md` report first. The `.json` file contains the raw command results if a section needs deeper inspection.

The report intentionally does **not** try to patch anything. The next step should be chosen only after comparing the first-bad window and the known-good/bad trainer paths.