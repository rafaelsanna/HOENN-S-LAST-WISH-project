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
@   Phase 1 — CHASE: shadows (Ducklett, Escavalier) already pursue Jirachi
# 27 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             and Celebi. We animate them converging toward the player's column.
# 28 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             Jirachi flees RIGHT from x=3 toward center; Ducklett chases it.
# 29 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             Celebi flees LEFT  from x=17 toward center; Escavalier chases it.
# 30 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 2 — REFUGE: Jirachi and Celebi spot the player and take cover
# 31 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             behind them (move to x=10, y=11 — one tile below player).
# 32 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 3 — CONFRONTATION: shadows close in on player position.
# 33 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@   Phase 4 — DIALOGUE: Jirachi and Celebi speak. Shadows are described as
# 34 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@             dark echoes born from the time warp — not named directly.
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
    @ --- PHASE 1: CHASE — run simultaneously, wait for both to finish --------
# 41 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi flees right from x=3 toward x=9 (6 tiles)
# 42 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_JIRACHI, NightmareRealm1_Movement_JirachiFlee
# 43 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Ducklett chases right from x=2 toward x=10 (8 tiles), slightly farther
# 44 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_DUCKLETT, NightmareRealm1_Movement_DucklettChase
# 45 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi flees left from x=17 toward x=11 (6 tiles)
# 46 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_CELEBI, NightmareRealm1_Movement_CelebiFlee
# 47 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Escavalier chases left from x=18 toward x=10 (8 tiles)
# 48 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_ESCAVALIER, NightmareRealm1_Movement_EscavalierChase
# 49 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 50 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 51 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 52 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 2: REFUGE — legendaries notice player, duck behind them -------
# 53 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Player is at approx (10,9). Legendaries move to (10,11) — behind player.
# 54 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_JIRACHI, NightmareRealm1_Movement_JirachiToPlayer
# 55 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_CELEBI, NightmareRealm1_Movement_CelebiToPlayer
# 56 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 57 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 58 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 59 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Face legendaries toward player (up = toward camera / player back)
# 60 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_JIRACHI, Common_Movement_WalkInPlaceFasterUp
# 61 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_CELEBI, Common_Movement_WalkInPlaceFasterUp
# 62 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 63 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 64 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 65 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 3: CONFRONTATION — shadows close in on player -----------------
# 66 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Ducklett is at ~x=10, moves down to y=9 (player row) from y=8
# 67 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_DUCKLETT, NightmareRealm1_Movement_ShadowCloseIn
# 68 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Escavalier is at ~x=10, moves down to y=8 then faces player
# 69 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_ESCAVALIER, NightmareRealm1_Movement_ShadowCloseIn
# 70 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 71 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 72 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 73 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Shadows face down toward player
# 74 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_DUCKLETT, Common_Movement_WalkInPlaceFasterDown
# 75 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_NIGHTMARE_ESCAVALIER, Common_Movement_WalkInPlaceFasterDown
# 76 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 77 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 78 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 79 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Player looks up at the shadows
# 80 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 81 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 82 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 83 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 84 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 4: DIALOGUE ---------------------------------------------------
# 85 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi's telepathic plea — speaks of the rift and the shadows
# 86 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPleas, MSGBOX_DEFAULT
# 87 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 88 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 89 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 90 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi continues — explains the origin of the shadow forms
# 91 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPleas, MSGBOX_DEFAULT
# 92 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 93 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 94 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 95 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Narrator beat — the shadows surge forward
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
    @ Flags set in NightmareRealm1_OnTransition ensure restrictions apply.
# 102 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ setwildbattle sets both wild slots for a scripted double encounter.
# 103 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setwildbattle SPECIES_DUCKLETT, 45, ITEM_NONE, SPECIES_ESCAVALIER, 45, ITEM_NONE
# 104 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    dowildbattle
# 105 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitstate
# 106 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 107 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Branch on battle result (VAR_RESULT 1 = player won)
# 108 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    compare VAR_RESULT, 1
# 109 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    call_if_eq VAR_RESULT, 1, NightmareRealm1_OnVictory
# 110 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 111 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Player lost — clear flags, release, let them retry on next step
# 112 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x1AB
# 113 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27D
# 114 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27C
# 115 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 116 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 117 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 118 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 119 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_OnVictory
# 120 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 121 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnVictory::
# 122 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_NIGHTMARE_STATE, 1
# 123 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 124 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Clear battle restriction flags now that the encounter is resolved
# 125 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x1AB
# 126 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27D
# 127 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27C
# 128 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 129 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Victory dialogue — Jirachi and Celebi acknowledge the player
# 130 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryLight, MSGBOX_DEFAULT
# 131 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 132 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 133 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 134 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 135 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 136 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 137 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 138 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Movement scripts
# 139 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 140 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 141 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi flees right 6 tiles from x=3 to ~x=9, staying at y=8
# 142 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiFlee:
# 143 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 144 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 145 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 146 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 147 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 148 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 149 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 150 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 151 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett chases right 8 tiles from x=2 to ~x=10
# 152 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettChase:
# 153 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 154 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 155 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 156 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 157 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 158 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 159 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 160 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 161 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 162 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 163 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi flees left 6 tiles from x=17 to ~x=11, staying at y=7
# 164 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiFlee:
# 165 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 166 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 167 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 168 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 169 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 170 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 171 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 172 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 173 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier chases left 8 tiles from x=18 to ~x=10
# 174 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierChase:
# 175 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 176 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 177 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 178 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 179 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 180 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 181 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 182 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 183 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 184 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 185 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi moves from ~(9,8) to behind player at (10,11): right 1, down 3
# 186 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiToPlayer:
# 187 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 188 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 189 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 190 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 191 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 192 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 193 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi moves from ~(11,7) to behind player at (10,11): left 1, down 4
# 194 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiToPlayer:
# 195 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 196 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 197 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 198 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 199 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 200 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 201 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 202 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Shadows were at ~x=10,y=8 after chase; move down 1 to face player at y=9
# 203 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_ShadowCloseIn:
# 204 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 205 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 206 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 207 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 208 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Dialogue strings — shadows are NEVER called by species name.
# 209 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ They are described as dark echoes of the corruption born from the time warp.
# 210 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 211 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 212 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPleas:
# 213 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "...You can hear us…\p"
# 214 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We are JIRACHI and CELEBI.\p"
# 215 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The time warp that brought you\n"
# 216 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here… it fractured something.\p"
# 217 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "With every year of ruin HOENN\n"
# 218 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "suffered in this broken future…\p"
# 219 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the darkness gathered.\n"
# 220 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "And it took our shapes.$"
# 221 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 222 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPleas:
# 223 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are not us.\p"
# 224 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are distillations of every\n"
# 225 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "terrible thing that happened\l"
# 226 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "since the timeline broke.\p"
# 227 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Every loss. Every scar.\n"
# 228 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Focused into a single purpose:\p"
# 229 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "to stop the future\n"
# 230 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from ever being repaired.$"
# 231 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 232 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_ShadowsSurge:
# 233 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The two dark forms lock onto you.\p"
# 234 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not speak.\n"
# 235 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not need to.\p"
# 236 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Whatever they are, they will not\n"
# 237 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "let you take another step forward.$"
# 238 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 239 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryLight:
# 240 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The dark forms shatter like glass\n"
# 241 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "in cold wind…\p"
# 242 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Both voices speak at once:\p"
# 243 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The rift is sealing.\n"
# 244 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have done it, chosen one.\p"
# 245 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go. Fix what was broken.\n"
# 246 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will hold the rest together.$"
