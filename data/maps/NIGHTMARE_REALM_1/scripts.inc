# 1 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 2 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 3 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NIGHTMARE_REALM_1 — map scripts
# 4 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 5 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 6 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NIGHTMARE_REALM_1_MapScripts::
# 7 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    map_script MAP_SCRIPT_ON_TRANSITION, NightmareRealm1_OnTransition
# 8 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .byte 0
# 9 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 10 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ On every transition into this map: set the battle restriction flags.
# 11 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ FLAG_UNUSED_0x1AB = B_FLAG_NO_RUNNING  (can't escape)
# 12 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ FLAG_UNUSED_0x27D = B_FLAG_NO_BAG_USE  (no items)
# 13 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ FLAG_UNUSED_0x27C = no-catch flag (assigned in battle.h)
# 14 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnTransition::
# 15 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_UNUSED_0x1AB
# 16 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_UNUSED_0x27D
# 17 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_UNUSED_0x27C
# 18 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 19 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 20 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 21 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_Arrival
# 22 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Triggered when the player steps onto y=9 (one tile north of warp landing).
# 23 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ VAR_NIGHTMARE_STATE must be 0 (fires only once).
# 24 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 25 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Scene choreography:
# 26 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 1 — CROSS CHASE: Jirachi flees right (3,7)→(17,7), Ducklett chases
# 27 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             right along y=9 but detours around player at (9,9).
# 28 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             Celebi flees left (17,6)→(3,6), Escavalier chases left along y=6
# 29 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             staying 2 tiles behind, ending at (5,6).
# 30 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 2 — REFUGE: legendaries notice player and move to flanking positions
# 31 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             one tile below: Jirachi→(8,11), Celebi→(10,11).
# 32 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 3 — CONFRONTATION: shadows close in — Ducklett (15,9)→(10,9),
# 33 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             Escavalier (5,6)→(8,9). Player is sandwiched at (9,9).
# 34 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 4 — DIALOGUE: Jirachi and Celebi speak.
# 35 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 5 — BATTLE: forced double wild battle, no escape/catch/bag.
# 36 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 37 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Arrival::
# 38 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lockall
# 39 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 40 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 1: CROSS CHASE — all four move simultaneously ------------------
# 41 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi  (3,7)  → right 14 tiles → (17,7). Row y=7 is clear of player.
# 42 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_JIRACHI,    NightmareRealm1_Movement_JirachiFlee
# 43 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Ducklett (2,9)  → chases right along y=9 but detours around player (9,9)
# 44 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @                   → ends at (15,9).
# 45 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_DUCKLETT,   NightmareRealm1_Movement_DucklettChase
# 46 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi   (17,6) → left 14 tiles → (3,6). Row y=6 is clear of player.
# 47 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_CELEBI,     NightmareRealm1_Movement_CelebiFlee
# 48 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Escavalier(18,6)→ chases left along y=6, stays 2 tiles behind Celebi
# 49 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @                   → ends at (5,6).
# 50 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_ESCAVALIER, NightmareRealm1_Movement_EscavalierChase
# 51 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 52 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 53 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 54 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 2: REFUGE — legendaries notice player, move to flanking spots --
# 55 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi  (17,7) → (8,11) : left 9, down 4
# 56 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi   (3,6)  → (10,11): right 7, down 5
# 57 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_JIRACHI, NightmareRealm1_Movement_JirachiToPlayer
# 58 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_CELEBI,  NightmareRealm1_Movement_CelebiToPlayer
# 59 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 60 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 61 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 62 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Face legendaries up toward player's back
# 63 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_JIRACHI, Common_Movement_WalkInPlaceFasterUp
# 64 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_CELEBI,  Common_Movement_WalkInPlaceFasterUp
# 65 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 66 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 67 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 68 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 3: CONFRONTATION — shadows close in on player -----------------
# 69 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Ducklett  (15,9) → left 5 → (10,9).  Player is at (9,9) — no collision.
# 70 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Escavalier (5,6) → right 3, down 3 → (8,9). Player at (9,9) — no collision.
# 71 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_DUCKLETT,   NightmareRealm1_Movement_DucklettCloseIn
# 72 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_ESCAVALIER, NightmareRealm1_Movement_EscavalierCloseIn
# 73 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 74 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 75 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 76 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Shadows face down toward the player
# 77 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_DUCKLETT,   Common_Movement_WalkInPlaceFasterDown
# 78 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_ESCAVALIER, Common_Movement_WalkInPlaceFasterDown
# 79 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 80 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 81 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 82 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Player looks up at the shadows
# 83 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 84 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 85 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 86 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 87 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 4: DIALOGUE ---------------------------------------------------
# 88 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPleas, MSGBOX_DEFAULT
# 89 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 90 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 91 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 92 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPleas, MSGBOX_DEFAULT
# 93 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 94 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 95 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 96 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_ShadowsSurge, MSGBOX_DEFAULT
# 97 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 98 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 99 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 100 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 5: BATTLE — double wild, no escape / catch / bag --------------
# 101 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setwildbattle SPECIES_DUCKLETT, 45, ITEM_NONE, SPECIES_ESCAVALIER, 45, ITEM_NONE
# 102 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    dowildbattle
# 103 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitstate
# 104 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 105 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    compare VAR_RESULT, 1
# 106 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    call_if_eq VAR_RESULT, 1, NightmareRealm1_OnVictory
# 107 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 108 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x1AB
# 109 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27D
# 110 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27C
# 111 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 112 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 113 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 114 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 115 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_OnVictory
# 116 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 117 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnVictory::
# 118 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_NIGHTMARE_STATE, 1
# 119 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 120 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x1AB
# 121 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27D
# 122 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27C
# 123 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 124 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryLight, MSGBOX_DEFAULT
# 125 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 126 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 127 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 128 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 129 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 130 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 131 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 132 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Movement scripts
# 133 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 134 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 135 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ ── PHASE 1 ──────────────────────────────────────────────────────────────────
# 136 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 137 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (3,7) → right 14 → (17,7).
# 138 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Row y=7 never intersects player (9,9). Clean straight line.
# 139 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiFlee:
# 140 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 3→4
# 141 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 4→5
# 142 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 5→6
# 143 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 6→7
# 144 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 7→8
# 145 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 8→9
# 146 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 9→10
# 147 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 10→11
# 148 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 11→12
# 149 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 12→13
# 150 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 13→14
# 151 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 14→15
# 152 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 15→16
# 153 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 16→17
# 154 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (17,7)
# 155 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 156 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (2,9) → chases Jirachi right along y=9, but player is at (9,9).
# 157 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Detour: go right to x=8, step down to y=10, pass x=9 and x=10,
# 158 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@         step back up to y=9 at x=10, continue right to x=15.
# 159 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Tile check:
# 160 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   (8,9)  free, (8,10) free, (9,10) free (below player), (10,10) free,
# 161 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   (10,9) free (player is at 9,9), (11–15,9) free.
# 162 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettChase:
# 163 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 2→3  y=9
# 164 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 3→4  y=9
# 165 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 4→5  y=9
# 166 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 5→6  y=9
# 167 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 6→7  y=9
# 168 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 7→8  y=9
# 169 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ x=8, y=9→10  (detour start)
# 170 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ x=8→9  y=10
# 171 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ x=9→10 y=10
# 172 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_up     @ x=10, y=10→9  (detour end, back on chase row)
# 173 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 10→11 y=9
# 174 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 11→12 y=9
# 175 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 12→13 y=9
# 176 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 13→14 y=9
# 177 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 14→15 y=9
# 178 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (15,9)
# 179 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 180 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (17,6) → left 14 → (3,6).
# 181 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Row y=6 never intersects player (9,9). Clean straight line.
# 182 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiFlee:
# 183 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 17→16
# 184 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 16→15
# 185 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 15→14
# 186 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 14→13
# 187 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 13→12
# 188 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 12→11
# 189 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 11→10
# 190 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 10→9
# 191 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 9→8
# 192 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 8→7
# 193 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 7→6
# 194 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 6→5
# 195 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 5→4
# 196 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 4→3
# 197 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (3,6)
# 198 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 199 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (18,6) → chases Celebi left along y=6.
# 200 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Stays 2 tiles behind — Celebi ends at x=3, Escavalier ends at x=5.
# 201 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Both run the same row y=6 which is clear of player.
# 202 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierChase:
# 203 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 18→17
# 204 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 17→16
# 205 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 16→15
# 206 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 15→14
# 207 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 14→13
# 208 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 13→12
# 209 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 12→11
# 210 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 11→10
# 211 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 10→9
# 212 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 9→8
# 213 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 8→7
# 214 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 7→6
# 215 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 6→5
# 216 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (5,6)
# 217 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 218 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ ── PHASE 2 ──────────────────────────────────────────────────────────────────
# 219 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 220 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (17,7) → (8,11): left 9, down 4.
# 221 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Path: y=7 left to x=8, then down through (8,8),(8,9),(8,10),(8,11).
# 222 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ (8,9) is one tile left of player (9,9) — adjacent but not the same tile.
# 223 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiToPlayer:
# 224 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 17→16
# 225 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 16→15
# 226 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 15→14
# 227 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 14→13
# 228 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 13→12
# 229 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 12→11
# 230 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 11→10
# 231 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 10→9
# 232 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 9→8
# 233 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=7→8
# 234 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=8→9  (x=8, player at x=9 — different tile, OK)
# 235 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=9→10
# 236 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=10→11
# 237 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (8,11)
# 238 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 239 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (3,6) → (10,11): right 7, down 5.
# 240 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Path: y=6 right to x=10, then down to y=11.
# 241 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ x=10 column: (10,9) will be Ducklett's final spot in phase 3, but that
# 242 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   hasn't happened yet — in phase 2 Ducklett is still at (15,9). Clear.
# 243 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiToPlayer:
# 244 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 3→4
# 245 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 4→5
# 246 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 5→6
# 247 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 6→7
# 248 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 7→8
# 249 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 8→9
# 250 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 9→10
# 251 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=6→7
# 252 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=7→8
# 253 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=8→9   (x=10, player at x=9 — different tile, OK)
# 254 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=9→10
# 255 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ y=10→11
# 256 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (10,11)
# 257 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 258 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ ── PHASE 3 ──────────────────────────────────────────────────────────────────
# 259 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 260 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (15,9) → (10,9): left 5 tiles along y=9.
# 261 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Player is at (9,9). Ducklett stops at (10,9) — adjacent but distinct tile.
# 262 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettCloseIn:
# 263 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 15→14
# 264 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 14→13
# 265 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 13→12
# 266 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 12→11
# 267 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left   @ 11→10
# 268 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (10,9)
# 269 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 270 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (5,6) → (8,9): right 3, down 3.
# 271 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Path avoids all occupied tiles.
# 272 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Right: (5,6)→(6,6)→(7,6)→(8,6). Jirachi ended at (8,11) — far away. OK.
# 273 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Down:  (8,6)→(8,7)→(8,8)→(8,9).
# 274 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Jirachi is at (8,11) — same column but y=11 vs y=9. OK, no collision.
# 275 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Player is at (9,9), Escavalier ends at (8,9) — adjacent, distinct. OK.
# 276 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierCloseIn:
# 277 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 5→6  y=6
# 278 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 6→7  y=6
# 279 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right  @ 7→8  y=6
# 280 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ x=8, y=6→7
# 281 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ x=8, y=7→8
# 282 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down   @ x=8, y=8→9
# 283 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end    @ final: (8,9)
# 284 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 285 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 286 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Dialogue strings — shadows are NEVER called by species name.
# 287 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 288 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 289 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPleas:
# 290 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "...You can hear us…\p"
# 291 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We are JIRACHI and CELEBI.\p"
# 292 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The time warp that brought you\n"
# 293 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here… it fractured something.\p"
# 294 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "With every year of ruin HOENN\n"
# 295 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "suffered in this broken future…\p"
# 296 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the darkness gathered.\n"
# 297 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "And it took our shapes.$"
# 298 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 299 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPleas:
# 300 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are not us.\p"
# 301 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are distillations of every\n"
# 302 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "terrible thing that happened\l"
# 303 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "since the timeline broke.\p"
# 304 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Every loss. Every scar.\n"
# 305 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Focused into a single purpose:\p"
# 306 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "to stop the future\n"
# 307 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from ever being repaired.$"
# 308 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 309 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_ShadowsSurge:
# 310 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The two dark forms lock onto you.\p"
# 311 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not speak.\n"
# 312 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not need to.\p"
# 313 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Whatever they are, they will not\n"
# 314 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "let you take another step forward.$"
# 315 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 316 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryLight:
# 317 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The dark forms shatter like glass\n"
# 318 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "in cold wind…\p"
# 319 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Both voices speak at once:\p"
# 320 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The rift is sealing.\n"
# 321 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have done it, chosen one.\p"
# 322 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go. Fix what was broken.\n"
# 323 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will hold the rest together.$"
