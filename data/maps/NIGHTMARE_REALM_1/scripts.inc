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
@ Set all battle restriction flags on every entry to this map.
# 11 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ On victory these are cleared in OnVictory.
# 12 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ On defeat (whiteout) the engine resets the map — ON_TRANSITION re-sets them
# 13 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ automatically on the next entry, so no manual cleanup needed.
# 14 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnTransition::
# 15 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag B_FLAG_NO_RUNNING
# 16 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag B_FLAG_NO_BAG_USE
# 17 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag B_FLAG_NO_CATCHING
# 18 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag B_SMART_WILD_AI_FLAG
# 19 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag B_FAST_INTRO_NO_SLIDE
# 20 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 21 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 22 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 23 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_Arrival
# 24 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Triggered by coord event (x=8..12, y=9), only when VAR_NIGHTMARE_STATE == 0.
# 25 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 26 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Player position: (10, 9) — the trigger tile.
# 27 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 28 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Final formation:
# 29 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@        (9,8) DUK      ESC (11,8)   ← shadows, facing down
# 30 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@              (10,9)  PL            ← player, facing up
# 31 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@        (9,11) JIR    CEL (11,11)   ← legendaries, facing up
# 32 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 33 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ WIN  → VAR_NIGHTMARE_STATE = 1. Never repeats.
# 34 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ LOSE → whiteout. VAR_NIGHTMARE_STATE stays 0.
# 35 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@         Engine warps player to last Pokémon Center.
# 36 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@         Player climbs Mt Pyre again, talks to old lady.
# 37 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@         Old lady detects VAR_NIGHTMARE_STATE == 0 AND VAR_MT_PYRE_STATE == 1
# 38 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@         and re-launches StartTimeWarpScene → player returns here → loop.
# 39 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 40 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Arrival::
# 41 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lockall
# 42 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 43 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 1: CROSS CHASE -----------------------------------------------
# 44 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 1, NightmareRealm1_Movement_JirachiFlee
# 45 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 2, NightmareRealm1_Movement_DucklettChase
# 46 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 3, NightmareRealm1_Movement_CelebiFlee
# 47 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 4, NightmareRealm1_Movement_EscavalierChase
# 48 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 49 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 50 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 51 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 2: REFUGE — legendaries move behind player -------------------
# 52 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 1, NightmareRealm1_Movement_JirachiToPlayer
# 53 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 3, NightmareRealm1_Movement_CelebiToPlayer
# 54 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 55 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 56 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 57 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 1, Common_Movement_WalkInPlaceFasterUp
# 58 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 3, Common_Movement_WalkInPlaceFasterUp
# 59 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 60 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 61 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 62 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 3: CONFRONTATION — shadows close in front of player ----------
# 63 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 2, NightmareRealm1_Movement_DucklettCloseIn
# 64 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 4, NightmareRealm1_Movement_EscavalierCloseIn
# 65 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 66 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 67 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 68 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 2, Common_Movement_WalkInPlaceFasterDown
# 69 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 4, Common_Movement_WalkInPlaceFasterDown
# 70 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 71 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 72 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 73 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 74 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 75 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 76 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 77 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 4: DIALOGUE --------------------------------------------------
# 78 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPleas, MSGBOX_DEFAULT
# 79 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 80 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 81 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 82 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPleas, MSGBOX_DEFAULT
# 83 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 84 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 85 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 86 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_ShadowsSurge, MSGBOX_DEFAULT
# 87 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 88 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 89 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 90 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 5: BATTLE — double wild --------------------------------------
# 91 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setwildbattle SPECIES_DUCKLETT, 45, ITEM_NONE, SPECIES_ESCAVALIER, 45, ITEM_NONE
# 92 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    dowildbattle
# 93 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitstate
# 94 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 95 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ VAR_RESULT: 1 = player won, 0 = player lost (whiteout already happened)
# 96 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    goto_if_eq VAR_RESULT, 1, NightmareRealm1_OnVictory
# 97 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 98 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ ---- DEFEAT PATH -------------------------------------------------------
# 99 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Whiteout happened — player is at Pokémon Center, map is reset.
# 100 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Set FLAG_LOST_NIGHTMARE_BATTLE so the old lady on the Summit detects
# 101 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ the defeat and re-launches the warp instead of giving normal dialogue.
# 102 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ VAR_NIGHTMARE_STATE stays 0 so the coord event re-fires on next entry.
# 103 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_LOST_NIGHTMARE_BATTLE
# 104 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 105 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 106 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 107 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 108 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_OnVictory
# 109 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 110 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnVictory::
# 111 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_NIGHTMARE_STATE, 1
# 112 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 113 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 114 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_BAG_USE
# 115 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_CATCHING
# 116 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_SMART_WILD_AI_FLAG
# 117 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FAST_INTRO_NO_SLIDE
# 118 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 119 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removeobject 2
# 120 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removeobject 4
# 121 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 122 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryLight, MSGBOX_DEFAULT
# 123 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 124 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 125 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 126 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiSendBack, MSGBOX_DEFAULT
# 127 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 128 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 129 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 130 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    special HealPlayerParty
# 131 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 132 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreenswapbuffers FADE_TO_BLACK
# 133 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    warp MAP_MT_PYRE_SUMMIT, 14, 10
# 134 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitstate
# 135 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreenswapbuffers FADE_FROM_BLACK
# 136 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 137 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 138 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 139 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 140 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Movement scripts
# 141 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 142 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 143 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (3,8) → right 14 → (17,8)
# 144 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiFlee:
# 145 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 146 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 147 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 148 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 149 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 150 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 151 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 152 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
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
    step_end
# 160 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 161 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (2,8) → right 13 → (15,8). y=8 the whole way, never hits player at y=9.
# 162 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettChase:
# 163 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 164 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 165 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 166 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 167 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 168 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 169 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 170 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 171 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 172 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 173 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 174 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 175 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 176 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 177 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 178 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (17,7) → left 14 → (3,7)
# 179 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiFlee:
# 180 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 181 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 182 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 183 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 184 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 185 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 186 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 187 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 188 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 189 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 190 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 191 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 192 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 193 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 194 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 195 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 196 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (18,7) → left 13 → (5,7)
# 197 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierChase:
# 198 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 199 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 200 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 201 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 202 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 203 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 204 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 205 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 206 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 207 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 208 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 209 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 210 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 211 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 212 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 213 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (17,8) → (9,11): left 8, down 3
# 214 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiToPlayer:
# 215 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 216 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 217 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 218 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 219 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 220 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 221 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 222 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 223 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 224 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 225 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 226 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 227 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 228 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (3,7) → (11,11): right 8, down 4
# 229 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiToPlayer:
# 230 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 231 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 232 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 233 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 234 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 235 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 236 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 237 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 238 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 239 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 240 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 241 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 242 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 243 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 244 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (15,8) → (9,8): left 6
# 245 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettCloseIn:
# 246 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 247 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 248 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 249 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 250 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 251 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 252 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 253 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 254 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (5,7) → (11,8): right 6, down 1
# 255 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierCloseIn:
# 256 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 257 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 258 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 259 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 260 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 261 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 262 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 263 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 264 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 265 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 266 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Dialogue
# 267 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 268 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 269 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPleas:
# 270 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "…You can hear us…\p"
# 271 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We are JIRACHI and CELEBI.\p"
# 272 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The time warp that brought you\n"
# 273 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here… it fractured something.\p"
# 274 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "With every year of ruin HOENN\n"
# 275 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "suffered in this broken future…\p"
# 276 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the darkness gathered.\n"
# 277 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "And it took our shapes.$"
# 278 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 279 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPleas:
# 280 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are not us.\p"
# 281 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are distillations of every\n"
# 282 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "terrible thing that happened\l"
# 283 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "since the timeline broke.\p"
# 284 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Every loss. Every scar.\n"
# 285 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Focused into a single purpose:\p"
# 286 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "to stop the future\n"
# 287 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from ever being repaired.$"
# 288 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 289 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_ShadowsSurge:
# 290 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The two dark forms lock onto you.\p"
# 291 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not speak.\n"
# 292 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not need to.\p"
# 293 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Whatever they are, they will not\n"
# 294 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "let you take another step forward.$"
# 295 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 296 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryLight:
# 297 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The dark forms shatter like glass\n"
# 298 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "in cold wind…\p"
# 299 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Both voices speak at once:\p"
# 300 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The rift is sealing.\n"
# 301 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have done it, chosen one.\p"
# 302 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go. Fix what was broken.\n"
# 303 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will hold the rest together.$"
# 304 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 305 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiSendBack:
# 306 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: Close your eyes.\p"
# 307 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: We will carry you back\n"
# 308 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "to where your path continues.\p"
# 309 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The boundary is mending.\n"
# 310 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Do not look back.$"
