# Hoenn Last Wish 0.9 save ABI implementation

The 0.9 baseline uses public schema 1 and physical envelope version 1. All required save data belongs to one validated transaction. This document records the final capacities, byte ownership, compatibility policy, verification, and rules for future updates.

Pre-0.9 saves are intentionally incompatible. The loader rejects them before copying their bytes into live game state. No player save file was used or modified during implementation or testing.

## Work completed

The incoming WIP had introduced required extension sectors, persistent headers and bank reservations, and the approved custom flag and variable ranges. It also already reflected the removal of fusion forms and ordinary Mega Evolutions. The remaining work included live feature routing, shared-range ownership, complete integrity validation, coherent partial-save paths, Hall of Fame integration, and release guards.

The completed implementation connects DexNav and grotto accessors to the required extension; gives trainer defeats, dex state, Nuzlocke encounters, achievements, Wish Forms, Shadow progress, and mining their fixed banks; and implements the final segmented bag capacities. Cache copies, clearing, rekeying, new-game initialization, and consumer accessors use these locations. Old DexNav and grotto arrays are no longer active copies.

The save manager validates both normal slots and their required extensions before choosing a bundle. Every save mode uses the same complete transaction, including normal, link/Frontier, contest, record mixing, overwrite, and Hall of Fame paths. Recovery screens no longer erase the active save or publish an incomplete retry. Their text buffers now match their window dimensions, with regression tests for the original heap overwrite.

NPC follower persistence contains map/local/custom script identity rather than a ROM script pointer. Ordinary saved object templates still have their frozen legacy pointer field, but those pointers are cleared and reconstructed by local ID before interactions after Continue. Lookup is bounded by the ROM map's object count. Trainer Hill floor scripts are reconstructed as well; Battle Pyramid already rebuilt its generated scripts.

Normal Mega Evolutions and fusion forms remain disabled. Mega Rayquaza and Primal Groudon/Kyogre remain enabled. The PC still has exactly fourteen boxes. Imported e-Reader Trainer Hill data and persistent recorded-battle replay storage remain retired; ROM-defined Trainer Hill gameplay remains present.

## Final capacities

| System | Frozen capacity and ownership |
| --- | --- |
| Custom flags | 2,048 bits in SB4; IDs 0x1000–0x17FF |
| Trainer defeats | 2,048 bits in SB3; IDs 0x2000–0x27FF |
| Custom variables | 256 unsigned 16-bit values in SB4; IDs 0x5000–0x50FF |
| Berry trees | 192 entries in SB1 |
| DexNav | 2,048 one-byte search slots in SB4 |
| Hidden grottos | 64 unsigned 16-bit states in SB4; eleven current explicit IDs |
| Nuzlocke encounters | 512 explicit encounter IDs, two bits each in SB3; 150 current bindings |
| Achievements | 256 independent bits; 32 independent saved counters |
| Original Wish Forms | 128 bits; 100 current explicitly bound core forms |
| Custom or DLC Wish Forms | 100 bits, separate from original forms and achievements |
| Shadow Pokémon | 30 stable IDs, with existing jointly resolved Nightmare progress preserved |
| Mining | 256 wall bits; 32 location session counters; existing 80 daily attempts and five free sessions per location |
| Roamers | One existing live 28-byte roamer; no unused eight-roamer or fusion bank |
| Bag | Items 160; Medicine 64; Keys 64; Balls 32; TMs/HMs 128; Berries 72 |
| PC | Fourteen boxes of thirty Pokémon |
| Hall of Fame | Thirty teams, 144 bytes each |

The legacy system flag base remains 0x8E9 and does not move with trainer content. Legacy trainer flag aliases 0x500–0x8E8 route to the same new trainer bitmap, rather than a second live copy. Their retired bits inside the legacy SB1 flag range are not another active trainer bank. Invalid flag and variable gaps are rejected safely. The unused custom variable convention is retained; 0x5000 owns the grotto reset-day value.

Species, item and move IDs are frozen without speculative new banks. The existing held-item encoding limit has a compile-time guard. Item-seen and released-species bitmaps are fixed physical arrays rather than content-count allocations.

## Physical sector ownership

Offsets in all tables are zero-based; a range occupies its listed byte count. Existing compiler alignment bytes are frozen ABI bytes included in integrity coverage. They are not available for new owners. Nested legacy aggregate layouts and bitfields are frozen in the machine-readable manifest.

| Flash sector | Owner |
| --- | --- |
| 0–13 | Normal slot A, fourteen rotated logical sectors |
| 14–27 | Normal slot B, fourteen rotated logical sectors |
| 28 | Hall of Fame archive bank A |
| 29 | Hall of Fame archive bank B |
| 30 | Required extension paired with normal slot A |
| 31 | Required extension paired with normal slot B |

Each normal sector is exactly 4,096 bytes: 3,968 bytes of primary data, 116 bytes of SB3, and a twelve-byte footer. Logical sector 0 holds SB2, 1–4 hold SB1, and 5–13 hold Pokémon Storage. The fourteen SB3 stripes contain all 1,624 bytes exactly.

## SaveBlock1 byte map

SB1 is exactly 15,872 bytes. Existing field names denote their gameplay owners. Retired/filler ranges remain inactive, and the final 488 bytes are manager-owned reserve.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `pos` |
| 4 | 8 | `location` |
| 12 | 8 | `continueGameWarp` |
| 20 | 8 | `dynamicWarp` |
| 28 | 8 | `lastHealLocation` |
| 36 | 8 | `escapeWarp` |
| 44 | 2 | `savedMusic` |
| 46 | 1 | `weather` |
| 47 | 1 | `weatherCycleStage` |
| 48 | 1 | `flashLevel` |
| 49 | 1 | Frozen ABI alignment bytes (not allocatable reserve) |
| 50 | 2 | `mapLayoutId` |
| 52 | 512 | `mapView` |
| 564 | 1 | `playerPartyCount` |
| 565 | 3 | Frozen ABI alignment bytes (not allocatable reserve) |
| 568 | 600 | `playerParty` |
| 1168 | 4 | `money` |
| 1172 | 2 | `coins` |
| 1174 | 2 | `registeredItem` |
| 1176 | 2 | `registeredItemR` |
| 1178 | 2 | `registeredItemL` |
| 1180 | 200 | `pcItems` |
| 1380 | 880 | `bag` |
| 2260 | 320 | `pokeblocks` |
| 2580 | 52 | `filler1` |
| 2632 | 6 | `berryBlenderRecords` |
| 2638 | 6 | `unused_9C2` |
| 2644 | 576 | `objectEvents` |
| 3220 | 1536 | `objectEventTemplates` |
| 4756 | 318 | `flags` |
| 5074 | 514 | `vars` |
| 5588 | 256 | `gameStats` |
| 5844 | 1536 | `berryTrees` |
| 7380 | 3200 | `secretBases` |
| 10580 | 12 | `playerRoomDecorations` |
| 10592 | 12 | `playerRoomDecorationPositions` |
| 10604 | 10 | `decorationDesks` |
| 10614 | 10 | `decorationChairs` |
| 10624 | 10 | `decorationPlants` |
| 10634 | 30 | `decorationOrnaments` |
| 10664 | 30 | `decorationMats` |
| 10694 | 10 | `decorationPosters` |
| 10704 | 40 | `decorationDolls` |
| 10744 | 10 | `decorationCushions` |
| 10754 | 2 | Frozen ABI alignment bytes (not allocatable reserve) |
| 10756 | 900 | `tvShows` |
| 11656 | 64 | `pokeNews` |
| 11720 | 2 | `outbreakPokemonSpecies` |
| 11722 | 1 | `outbreakLocationMapNum` |
| 11723 | 1 | `outbreakLocationMapGroup` |
| 11724 | 1 | `outbreakPokemonLevel` |
| 11725 | 1 | `outbreakUnused1` |
| 11726 | 2 | `outbreakUnused2` |
| 11728 | 8 | `outbreakPokemonMoves` |
| 11736 | 1 | `outbreakUnused3` |
| 11737 | 1 | `outbreakPokemonProbability` |
| 11738 | 2 | `outbreakDaysLeft` |
| 11740 | 12 | `gabbyAndTyData` |
| 11752 | 12 | `easyChatProfile` |
| 11764 | 12 | `easyChatBattleStart` |
| 11776 | 12 | `easyChatBattleWon` |
| 11788 | 12 | `easyChatBattleLost` |
| 11800 | 576 | `mail` |
| 12376 | 5 | `unlockedTrendySayings` |
| 12381 | 3 | Frozen ABI alignment bytes (not allocatable reserve) |
| 12384 | 64 | `oldMan` |
| 12448 | 40 | `dewfordTrends` |
| 12488 | 416 | `contestWinners` |
| 12904 | 288 | `daycare` |
| 13192 | 88 | `linkBattleRecords` |
| 13280 | 11 | `giftRibbons` |
| 13291 | 20 | `externalEventData` |
| 13311 | 21 | `externalEventFlags` |
| 13332 | 28 | `roamer` |
| 13360 | 52 | `reservedEnigmaBerry` |
| 13412 | 876 | `bagExpansion` |
| 14288 | 16 | `trainerHillTimes` |
| 14304 | 16 | `recordMixingGift` |
| 14320 | 64 | `lilycoveLady` |
| 14384 | 240 | `trainerNameRecords` |
| 14624 | 210 | `reservedUnionRoomChat` |
| 14834 | 2 | Frozen ABI alignment bytes (not allocatable reserve) |
| 14836 | 12 | `trainerHill` |
| 14848 | 24 | `waldaPhrase` |
| 14872 | 512 | `hlwSave` |
| 15384 | 488 | `futureReserved` |

## SaveBlock2 byte map

SB2 is exactly 3,968 bytes. Its option bitfield declarations are frozen separately because C does not permit offsetof on individual bitfields.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 8 | `playerName` |
| 8 | 1 | `playerGender` |
| 9 | 1 | `specialSaveWarpFlags` |
| 10 | 4 | `playerTrainerId` |
| 14 | 2 | `playTimeHours` |
| 16 | 1 | `playTimeMinutes` |
| 17 | 1 | `playTimeSeconds` |
| 18 | 1 | `playTimeVBlanks` |
| 19 | 1 | `optionsButtonMode` |
| 20 | 2 | Packed option bits (declaration and bit packing frozen) |
| 22 | 2 | Frozen alignment bytes |
| 24 | 120 | `pokedex` |
| 144 | 1 | `optionsEffectiveHelper` |
| 145 | 1 | `optionsColorPalette` |
| 146 | 6 | `filler_92` |
| 152 | 8 | `localTimeOffset` |
| 160 | 8 | `lastBerryTreeUpdate` |
| 168 | 4 | `gcnLinkFlags` |
| 172 | 4 | `encryptionKey` |
| 176 | 44 | `playerApprentice` |
| 220 | 272 | `apprentices` |
| 492 | 16 | `berryCrush` |
| 508 | 16 | `pokeJump` |
| 524 | 16 | `berryPick` |
| 540 | 864 | `hallRecords1P` |
| 1404 | 168 | `hallRecords2P` |
| 1572 | 40 | `contestLinkResults` |
| 1612 | 2272 | `frontier` |
| 3884 | 1 | `optionsNpcTeams` |
| 3885 | 1 | `optionsInfiniteCandy` |
| 3886 | 1 | `optionsLevelCaps` |
| 3887 | 1 | `optionsBattleItems` |
| 3888 | 80 | `futureReserved` |

## SaveBlock3 byte map

SB3 is exactly 1,624 bytes. Its header owns its eight internal reserved bytes. The three encounterReserved bytes deliberately align achievements without anonymous new slack.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 16 | `header` |
| 16 | 12 | `fakeRTC` |
| 28 | 24 | `NPCfollower` |
| 52 | 1 | `dexNavChain` |
| 53 | 1 | `followerIndex` |
| 54 | 2 | `controlReserved` |
| 56 | 256 | `trainerFlags` |
| 312 | 129 | `dexSeen` |
| 441 | 129 | `dexCaught` |
| 570 | 191 | `nuzlockeReleasedSpeciesFlags` |
| 761 | 128 | `nuzlockeWildHeaderFlags` |
| 889 | 3 | `encounterReserved` |
| 892 | 224 | `achievements` |
| 1116 | 68 | `miningWalls` |
| 1184 | 128 | `itemFlags` |
| 1312 | 312 | `futureReserved` |

### Achievement and progression bank

The following offsets are relative to the 224-byte achievements field at SB3 offset 892.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `magic` |
| 4 | 2 | `version` |
| 6 | 2 | `size` |
| 8 | 32 | `unlocked` |
| 40 | 16 | `wishOriginalForms` |
| 56 | 13 | `wishCustomForms` |
| 69 | 4 | `shadowPokemon` |
| 73 | 1 | `gameCornerMask` |
| 74 | 12 | `popupQueue` |
| 86 | 2 | `shadowNightmareState` |
| 88 | 128 | `counters` |
| 216 | 8 | `reserved` |

The Custom Wish bitmap's unused high bits do not belong to achievements. The Shadow bitmap has thirty logical slots. Slots zero and one retain the existing shared Nightmare outcome through shadowNightmareState, with their bitmap bits reserved at zero; slot two owns the Suicune/Dark Aura state. Only the shared outcome values zero and one are valid. New Shadow states use the remaining bounded IDs.

### Mining bank

These offsets are relative to miningWalls at SB3 offset 1116.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 2 | `day` |
| 2 | 1 | `count` |
| 3 | 1 | `version` |
| 4 | 32 | `attemptedWalls` |
| 36 | 32 | `sessionCounts` |

The wall registry currently has no placed wall entries because no current map uses the mining-wall behavior. The five existing NPC mining locations have explicit IDs. A new wall tile must receive a reviewed ID in the wall registry; the registry checker refuses an unregistered placement. Coordinates locate a wall but do not define its persistent ID.

## Pokémon Storage byte map

Storage is exactly 35,712 bytes. The region beginning at 0x83D0 is explicitly owned. There is no fusion allocation.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 1 | `currentBox` |
| 1 | 3 | Frozen ABI alignment bytes (not allocatable reserve) |
| 4 | 33600 | `boxes` |
| 33604 | 126 | `boxNames` |
| 33730 | 14 | `boxWallpapers` |
| 33744 | 64 | `metadata` |
| 33808 | 288 | `hallOfFameTail` |
| 34096 | 336 | `bagSupplement` |
| 34432 | 1280 | `futureReserved` |

### Storage metadata

These offsets are relative to metadata at storage offset 33744 (0x83D0). The flags byte records confirmed replacement of a different game; thirty bytes remain reserved.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `magic` |
| 4 | 2 | `schemaVersion` |
| 6 | 2 | `size` |
| 8 | 16 | `saveUuid` |
| 24 | 4 | `hallOfFameGeneration` |
| 28 | 4 | `hallOfFameCrc32` |
| 32 | 1 | `hallOfFameBank` |
| 33 | 1 | `flags` |
| 34 | 30 | `reserved` |

## Bag segment ownership

ItemSlot is four bytes. The live bag accessor spans three named regions, and the runtime cache spans every approved slot. No pocket capacity can silently move a neighboring pocket after release.

| Pocket | Legacy slots | SB1 expansion slots | Storage supplement slots | Total |
| --- | ---: | ---: | ---: | ---: |
| Items | 64 | 96 | 0 | 160 |
| Medicine | 0 | 64 | 0 | 64 |
| Key Items | 30 | 0 | 34 | 64 |
| Poké Balls | 16 | 16 | 0 | 32 |
| TMs/HMs | 64 | 41 | 23 | 128 |
| Berries | 46 | 0 | 26 | 72 |

Offsets below are relative to each containing region.

### Legacy bag at SB1 offset 1380

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 256 | `items` |
| 256 | 120 | `keyItems` |
| 376 | 64 | `pokeBalls` |
| 440 | 256 | `TMsHMs` |
| 696 | 184 | `berries` |

### Expansion at SB1 offset 13412

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `magic` |
| 4 | 2 | `version` |
| 6 | 2 | `size` |
| 8 | 384 | `itemsExtra` |
| 392 | 256 | `medicine` |
| 648 | 64 | `pokeBallsExtra` |
| 712 | 164 | `TMsHMsExtra` |

This 876-byte region is fully allocated; its reserved array currently has zero bytes.

### Supplement at storage offset 34096

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 92 | `TMsHMsExtra` |
| 92 | 136 | `keyItemsExtra` |
| 228 | 104 | `berriesExtra` |
| 332 | 4 | `reserved` |

ClearBag uses safe exact-length clearing instead of BIOS fast fill on invalid granularities. Whole-cache copying and encryption-key changes include all segments. The old bag migration entry point does not interpret pre-0.9 bytes or manufacture a valid baseline from an unknown layout.

## Shared 512 byte media extension

HLWSaveExtension occupies SB1 offsets 14872–15383. Its header owns bytes 0–7, RadioSaveData owns bytes 8–159, and the following table assigns every byte in future, whose base is extension offset 160.

| Relative to future | Relative to extension | Bytes | Owner |
| ---: | ---: | ---: | --- |
| 0 | 160 | 16 | Radio playlist two tail |
| 16 | 176 | 40 | Radio playlist three |
| 56 | 216 | 8 | Radio stickers |
| 64 | 224 | 1 | Shared Party and Summary theme |
| 65 | 225 | 1 | Pokédex theme |
| 66 | 226 | 1 | Battle speed |
| 67 | 227 | 1 | HP bar option |
| 68 | 228 | 1 | Wish Menu action count |
| 69 | 229 | 9 | Wish Menu action IDs |
| 78 | 238 | 2 | Manager-owned reserve |
| 80 | 240 | 256 | Sixty-four four-byte Chansey entries |
| 336 | 496 | 16 | Manager-owned reserve |

RadioSaveData's offsets are relative to its base at extension offset eight.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `magic` |
| 4 | 4 | `shuffleState` |
| 8 | 2 | `currentSong` |
| 10 | 2 | `version` |
| 12 | 1 | `station` |
| 13 | 1 | `favoritesCount` |
| 14 | 1 | `playlistCount` |
| 15 | 1 | `flags` |
| 16 | 64 | `favorites` |
| 80 | 64 | `playlist` |
| 144 | 8 | `reserved` |

Radio reserved bytes zero through seven now have frozen assignments for playlist tags/version/selection/counts, volume and configuration. Theme flag bits and config bit masks are guarded as saved encodings. Radio resets only its own ranges. Whole-extension initialization belongs exclusively to the new-game save manager.

## Required extension sector byte map

Each extension sector is exactly 4,096 bytes: a 64-byte header and a 4,032-byte payload.

### Header

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `magic` |
| 4 | 2 | `physicalVersion` |
| 6 | 2 | `headerLength` |
| 8 | 2 | `schemaVersion` |
| 10 | 2 | `payloadLength` |
| 12 | 4 | `generation` |
| 16 | 16 | `saveUuid` |
| 32 | 4 | `mainImageCrc32` |
| 36 | 4 | `payloadCrc32` |
| 40 | 4 | `hallOfFameGeneration` |
| 44 | 4 | `hallOfFameCrc32` |
| 48 | 1 | `normalSlot` |
| 49 | 1 | `hallOfFameBank` |
| 50 | 2 | `flags` |
| 52 | 4 | `headerCrc32` |
| 56 | 4 | `reserved` |
| 60 | 4 | `completeMarker` |

### Payload

The following offsets are relative to payload base 64.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 256 | `customFlags` |
| 256 | 512 | `customVars` |
| 768 | 2048 | `dexNavSearch` |
| 2816 | 128 | `grottoStates` |
| 2944 | 1088 | `futureReserved` |

The payload reserve is 1,088 bytes. Normal-slot association, generation, UUID and Hall of Fame references must agree with the validated normal image. A normal slot without its required valid extension is not usable.

Full Random owns custom flag 0x1003 (`FLAG_RANDOMIZER_FULL_WILD`), previously unused. It defaults to off in existing and new saves and is mutually exclusive with the existing table-randomizer flag. No saved field, bitmap extent, or released identity moved.

Lilycove City's new hidden Star Piece and Wave Incense item ball own custom flags 0x1004 (`FLAG_HIDDEN_ITEM_LILYCOVE_CITY_STAR_PIECE`) and 0x1005 (`FLAG_ITEM_LILYCOVE_CITY_WAVE_INCENSE`), respectively. Both bits were previously unused, so the pickups are available in existing saves without changing any saved layout or existing collection flag.

Route 123's new Jolly Mint item ball and hidden Nugget own custom flags 0x1006 (`FLAG_ITEM_ROUTE_123_JOLLY_MINT`) and 0x1007 (`FLAG_HIDDEN_ITEM_ROUTE_123_NUGGET`), respectively. Both bits were previously unused, so existing saves can collect the items once without reusing a temporary flag or changing any saved layout or existing collection flag.

Route 117's new Nest Ball item ball owns custom flag 0x1008 (`FLAG_ITEM_ROUTE_117_NEST_BALL`), previously unused. The pickup is available once in existing saves without changing any saved layout or existing collection flag.

## Hall of Fame archive byte map

Each alternating archive is exactly 4,096 bytes. Its 64-byte header is followed by twenty-eight teams at offsets 64–4095. The other two teams occupy the 288-byte storage tail, so their publication is part of the normal bundle.

| Offset | Bytes | Owner or field |
| ---: | ---: | --- |
| 0 | 4 | `magic` |
| 4 | 2 | `physicalVersion` |
| 6 | 2 | `headerLength` |
| 8 | 4 | `generation` |
| 12 | 16 | `saveUuid` |
| 28 | 4 | `payloadCrc32` |
| 32 | 4 | `headerCrc32` |
| 36 | 4 | `completeMarker` |
| 40 | 24 | `reserved` |

A Hall of Fame transaction writes and verifies the inactive archive before publishing any normal save that references it. It retains the pending team buffer across retries and increments the victory count once. A new game's first Hall of Fame save selects the inactive archive relative to the actual surviving flash bundle, not a reset RAM counter.

## Transaction and integrity rules

The manager first validates live headers and discovers the latest complete flash bundle. A confirmed replacement gets a UUID distinct from either surviving bundle even if the new-game RNG repeats. Candidate identity changes occur in the transaction snapshot; live committed metadata changes only after successful publication.

The new-game replacement flag is consumed by the manager after verified publication, including first saves through Hall of Fame or link. Later normal saves retain the committed UUID and archive references.

Mutable SB1/SB2/SB3/SB4 data and the final storage chunk are snapshotted in a bounded 29,544-byte heap allocation. Other PC chunks are read and written synchronously before BeginTransaction yields. Consequently, incremental link frames never reread mutable live data after the transaction begins. A full-image heap snapshot was rejected because it would not fit alongside the existing link-contest result allocations.

The manager prepares an inactive Hall of Fame archive when required, then writes the inactive required extension and all nine PC chunks. It writes the remaining five primary sectors from the frozen snapshot. Logical sector four has its signature's low byte left at 0xFF. After validating the complete prepared bundle, the manager programs that byte to 0x25 and validates again. This final publication latch makes the new generation authoritative. The extension's completeMarker alone does not publish a save.

Before publication, the active normal slot, extension and referenced archive remain intact. After a confirmed replacement is verified, obsolete sectors are retired. CRC-protected replacement evidence prevents loading the previous player's UUID if retirement is interrupted and the newly published main image is subsequently damaged. Failures before publication retain the previous complete bundle. Recovery UI reports failure instead of claiming a save completed.

CRC is CRC-32/ISO-HDLC: reflected polynomial 0xEDB88320, initial and final XOR 0xFFFFFFFF. mainImageCrc32 covers logical sectors zero through thirteen in order, each comprising its full 3,968-byte primary range followed by its 116-byte SB3 stripe: 57,176 bytes total. Legacy checksums also cover all 4,084 primary/stripe bytes. Extension payload/header CRCs and Hall of Fame payload/header CRCs are required; each header CRC is calculated with its own CRC field zeroed. All reserved and alignment bytes participate.

The loader checks flash sector IDs before any indexing or bit shifts, rejects duplicates and missing sectors, and requires a consistent generation. It validates lengths, versions, checksums, CRCs, UUID, feature headers and archive references before copying any bank into live RAM. An incomplete or corrupt attempted generation may fall back to the previous complete generation of the same game.

## Version and future update policy

The only supported public schema today is schema 1. Pre-0.9 images return SAVE_STATUS_INCOMPATIBLE; valid images with a newer physical or schema version return SAVE_STATUS_NEWER_VERSION. Continue is not offered for either status, and the newer-version message asks for a newer ROM. No load path silently creates a missing extension.

There is no historical schema migration to run at this first clean baseline. A future schema must add explicit ordered RAM migration steps under the central manager. Each step must validate its result before advancing the in-memory schema; flash changes only through a later complete normal save. Do not implement an automatic baseline refresh or feature-local whole-block reset as a migration.

tools/hlw_save_abi_v1.json records the released ARM layouts, normalized saved declarations, numeric identities, local enum values and map bindings. include/hlw_save_abi_asserts.h is included by the production manager. make check-save-abi runs the ABI, encounter/grotto, Wish and mining checks; ordinary all/check targets require that guard. Its prerequisites ensure generated map IDs are current even during a parallel build.

The guard covers 1,626 ARM layout expressions, 113 configuration values, 94 saved type declarations, 13,919 numeric IDs, 5,093 local enum/map bindings and 775 song slots. It includes game statistics, Easy Chat/mail words, berry stages/tree IDs, facilities, object graphics/movement IDs, layouts, flags/vars/trainers, map-local IDs, ordered warp records, named NPC script bindings, themes, Wish Menu actions, wallpaper tables and radio saved encodings. Bitfield declarations are frozen, with separate runtime packing tests.

After release, append IDs without moving existing meanings. Keep deleted IDs as tombstones. Reordering map objects or warps, changing a frozen mapping, or assigning an owned reserve requires an explicit compatibility review. Checker --report and --assertions print candidates only; they never rewrite the baseline. Intentional compatible changes to coordinates, assets or script symbol names may require a reviewed mapping update even when a migration is unnecessary.

Reviewed coordinate-only update (2026-10-01): Lilycove City warp 2 (Pokémon Center) moved from (24, 14) to (25, 14), warp 9 (House2) from (55, 15) to (16, 14), and warp 11 (House4) from (12, 14) to (10, 14). Only these three baseline records were updated. Their indices, destinations, destination warp IDs and elevations are unchanged, and interior exits still target the same indices. Lilycove's Fly landing position was also moved to (25, 15) to match the Pokémon Center. No saved layout or schema version changed; older saves made outdoors still retain their original player coordinates.

No known structural requirement remains that forces another planned save break. Exceeding the fixed capacities or reinterpreting a released ID could still require a deliberate migration. Reserve is finite, and static RAM is especially tight. Preserve exact extents when consuming reserve and account for the resulting runtime buffers separately.

## Verification commands

The exact production size assertions in src/save.c include:

```c
STATIC_ASSERT(sizeof(struct SaveBlock1) == 15872, SaveBlock1AbiSize);
STATIC_ASSERT(sizeof(struct SaveBlock2) == 3968, SaveBlock2AbiSize);
STATIC_ASSERT(sizeof(struct SaveBlock3) == 1624, SaveBlock3AbiSize);
STATIC_ASSERT(sizeof(struct PokemonStorage) == 35712, PokemonStorageAbiSize);
STATIC_ASSERT(sizeof(struct SaveSector) == 4096, SaveSectorAbiSize);
STATIC_ASSERT(sizeof(struct HlwSaveExtensionSector) == 4096, ExtensionAbiSize);
STATIC_ASSERT(sizeof(struct HlwHallOfFameArchive) == 4096, HallOfFameArchiveAbiSize);
```

The production build uses make -j6. Run the independent compatibility checks with:

```sh
make check-save-abi
python3 tools/check_hlw_save_abi.py --self-test
```

Save and feature tests live in test/save_transaction.c, test/save.c, test/save_hlw_systems.c, test/hlw_persistence_consumers.c, test/hlw_save_abi.c, test/bag.c and test/bag_migration.c. Recovery-buffer and script-pointer regressions are in test/save_failed_screen.c and test/hlw_object_script_restore.c.

The physical transaction tests use actual emulator flash reads/programming rather than a mock serialization layer. They cover whole-bank round trips, frozen snapshots, contest heap pressure, all save modes, every tested write/commit/retirement interruption boundary, malformed sector IDs, repaired-checksum tampering, missing or mismatched extensions, newer/pre-baseline images, replacement UUID collisions, and all thirty Hall of Fame teams.

tools/check_hlw_cold_boot.sh runs an opt-in writer, exits that emulator process, then starts an independent reader using a private /tmp battery file. It compares complete bank CRCs, all thirty Hall of Fame teams and the raw 128 KiB flash hash. The bundled mGBA test frontend does not autoload/flush battery saves; this test needs the battery-aware frontend patch in tools/mgba/hlw-battery-save.patch. Supply its executable through ROMTEST:

```sh
ROMTEST=/absolute/path/to/battery-aware/mgba-rom-test \
  sh tools/check_hlw_cold_boot.sh Pokemon_HLW-test.elf
```

The script copies the ELF into a new temporary directory and leaves its artifacts for inspection. It never launches or opens a playing save from the checkout. Emulator savestates are not used.

## Verified results

The production ROM build passed. The final focused test ELF exercised 118 passing tests with zero failures, plus one existing trainer-slide assumption skip. No production asset or linker limit was changed to make tests fit.

| Check | Result |
| --- | --- |
| Physical flash transactions | 24 passed, including repeated UUID and first-HOF replacement regressions |
| Save APIs, bags, feature banks and bitfield packing | 41 passed |
| Recovery-screen buffer boundaries | 2 passed across eight fill-pattern cases |
| Normal-map and Trainer Hill script reconstruction | 4 passed |
| Trainer-control fixtures | 15 passed |
| Generic battle runner fixtures | 4 passed |
| Retained Mega Rayquaza | 1 passed |
| Trainer slides | 12 passed, 1 existing type-assumption skip |
| Primal Groudon and Kyogre | 13 passed, no skips |
| Two-process battery writer and reader | 2 passed; whole-bank CRCs and all thirty teams matched |
| ABI checker negative self-test | All twelve simulated incompatible mutations rejected |
| Encounter, grotto, Wish and wall registries | Passed |
| Scoped whitespace check | Passed |

Final production linker usage is below. The ROM file is padded to 32 MiB by the existing build; linked ROM usage is smaller.

| Region | Used bytes | Capacity bytes | Remaining bytes |
| --- | ---: | ---: | ---: |
| EWRAM | 257808 | 262144 | 4336 |
| IWRAM | 29752 | 32768 | 3016 |
| ROM | 30906284 | 33554432 | 2648148 |

These static figures include the existing heap allocation, not a guarantee that every gameplay context has enough free heap. Keep the 29,544-byte save snapshot budget in mind when allocating new link or UI buffers.

Final save-test logs are in /tmp/hlw-final-save-tests.x0genP. Recovery/object/trainer logs are in /tmp/hlw-guarded-fixture-run.rpxLva, and Primal logs are in /tmp/hlw-primal-run.wuZ2lB. The final separate-process battery run is in /tmp/hlw-cold-boot.PKjnFH. Its 131,072-byte cartridge flash SHA-256 stayed 01199c3dc046ca5d32820ec69a5bd6bc62bc36bc9b2e137e716549d02cf0d157 across loading; the extra sixteen bytes in the mGBA file are its RTC trailer. These temporary evidence directories are local and may disappear on cleanup or reboot.

Your pre-existing Safari, gym, trainer/rematch and item-description changes were preserved. Generated script/header formatting changed during the build; the seven gym scripts remain semantically identical to the backed-up local work. No commit or push was made.

## Verification scope and limitations

Failure injection stops manager operations before sector writes, the final byte or cleanup erases. It does not simulate arbitrary electrical pulses inside a flash programming operation. The cold-boot test exercises independent emulator processes, not physical cartridge power cuts. The heap test models the known contest allocation lower bound; complete multi-console link/trade/Frontier UI sessions still need gameplay testing.

Hall of Fame integrity is mandatory for its associated normal bundle. If both normal generations reference one archive and that archive corrupts, neither is accepted. The single-interruption guarantees do not cover multiple independent corruptions that also destroy replacement evidence.

All source files in the full unfiltered test build compiled, but the combined test image exceeded the 32 MiB GBA limit by 691,220 bytes and overlapped fixed DACS data. A focused test ELF was used for runtime verification. Production linker limits and assets were not enlarged or removed. Trainer slides have one existing Bulbasaur/Vine Whip primary-type assumption skip under the current Wish roster.
