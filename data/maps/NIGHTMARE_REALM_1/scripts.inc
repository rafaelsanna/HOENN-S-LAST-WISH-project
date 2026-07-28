# 1 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 2 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 3 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NIGHTMARE_REALM_1 - map scripts
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

# 94 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ VAR_RESULT: 1 = player won, 0 = player lost (whiteout already happened)
# 95 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    goto_if_eq VAR_RESULT, 1, NightmareRealm1_OnVictory
# 96 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 97 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ ---- DEFEAT PATH -------------------------------------------------------
# 98 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Whiteout happened — player is at Pokémon Center, map is reset.
# 99 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Set FLAG_LOST_NIGHTMARE_BATTLE so the old lady on the Summit detects
# 100 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ the defeat and re-launches the warp instead of giving normal dialogue.
# 101 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ VAR_NIGHTMARE_STATE stays 0 so the coord event re-fires on next entry.
# 102 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_LOST_NIGHTMARE_BATTLE
# 103 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 104 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 105 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 106 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 107 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_OnVictory
# 108 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 109 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnVictory::
# 110 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_NIGHTMARE_STATE, 1
# 111 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 112 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 113 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_BAG_USE
# 114 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_CATCHING
# 115 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_SMART_WILD_AI_FLAG
# 116 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FAST_INTRO_NO_SLIDE
# 117 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 118 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Fade to black, play teleport sound, remove the shadow NPCs.
# 119 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreen FADE_TO_BLACK
# 120 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removeobject 2
# 121 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removeobject 4
# 122 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreen FADE_FROM_BLACK
# 123 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 124 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Player turns down to face Jirachi and Celebi behind them.
# 125 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 126 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 127 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 128 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 129 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi speaks first.
# 130 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryJirachi, MSGBOX_DEFAULT
# 131 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 132 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 133 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 134 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi speaks second.
# 135 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryCelebi, MSGBOX_DEFAULT
# 136 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 137 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 138 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 139 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Release — player is free to explore and talk to the legendaries.
# 140 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 141 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 142 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 143 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 144 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Post-victory NPC scripts (Jirachi and Celebi stay on map, can be talked to)
# 145 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Either one, whichever the player talks to first, closes out the Nightmare
# 146 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Realm chapter: post-victory line -> Hoenn's-fate/timeline dialogue -> warp
# 147 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ back to Mt Pyre Summit. No flag needed to guard repeats — the warp takes
# 148 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ the player off this map for good, so the other NPC's script can never
# 149 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ fire afterward.
# 150 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 151 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_EventScript_Jirachi::
# 152 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lock
# 153 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    faceplayer
# 154 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPostVictory, MSGBOX_DEFAULT
# 155 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 156 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    goto NightmareRealm1_EventScript_EndingSequence
# 157 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 158 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 159 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_EventScript_Celebi::
# 160 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lock
# 161 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    faceplayer
# 162 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPostVictory, MSGBOX_DEFAULT
# 163 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 164 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    goto NightmareRealm1_EventScript_EndingSequence
# 165 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 166 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 167 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 168 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_EventScript_EndingSequence
# 169 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Fires once, from whichever legendary the player talks to first.
# 170 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi and Celebi speak together about Hoenn's fate and the connection
# 171 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ between timelines, then the screen fades and the player is warped back to
# 172 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ the exact spot on Mt Pyre Summit they left from.
# 173 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 174 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_EventScript_EndingSequence::
# 175 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 176 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 177 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_HoennFateJirachi, MSGBOX_DEFAULT
# 178 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 179 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 180 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 181 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_HoennFateCelebi, MSGBOX_DEFAULT
# 182 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 183 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 184 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 185 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreen FADE_TO_BLACK
# 186 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_LOST_NIGHTMARE_BATTLE
# 187 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    warp MAP_MT_PYRE_SUMMIT, 23, 5
# 188 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitstate
# 189 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 190 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 191 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 192 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 193 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Movement scripts
# 194 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 195 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 196 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (3,8) → right 14 → (17,8)
# 197 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiFlee:
# 198 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 199 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 200 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 201 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 202 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 203 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 204 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 205 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 206 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 207 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 208 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 209 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 210 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 211 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 212 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 213 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 214 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (2,8) → right 13 → (15,8). y=8 the whole way, never hits player at y=9.
# 215 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettChase:
# 216 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 217 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 218 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 219 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 220 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 221 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 222 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 223 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 224 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 225 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 226 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 227 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 228 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 229 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 230 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 231 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (17,7) → left 14 → (3,7)
# 232 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiFlee:
# 233 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 234 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 235 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 236 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 237 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 238 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 239 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 240 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 241 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 242 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 243 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 244 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 245 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 246 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 247 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 248 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 249 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (18,7) → left 13 → (5,7)
# 250 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierChase:
# 251 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 252 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 253 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 254 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 255 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 256 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 257 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 258 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 259 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 260 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 261 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 262 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 263 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 264 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 265 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 266 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (17,8) → (9,11): left 8, down 3
# 267 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiToPlayer:
# 268 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 269 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 270 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 271 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 272 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 273 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 274 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 275 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 276 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 277 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 278 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 279 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 280 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 281 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (3,7) → (11,11): right 8, down 4
# 282 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiToPlayer:
# 283 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 284 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 285 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 286 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 287 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 288 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 289 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 290 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 291 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 292 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 293 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 294 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 295 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 296 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 297 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (15,8) → (9,8): left 6
# 298 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettCloseIn:
# 299 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 300 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 301 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 302 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 303 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 304 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 305 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 306 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 307 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (5,7) → (11,8): right 6, down 1
# 308 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierCloseIn:
# 309 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 310 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 311 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 312 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 313 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 314 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 315 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 316 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 317 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 318 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 319 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Dialogue
# 320 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 321 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 322 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPleas:
# 323 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You can hear us...\p"
# 324 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We are JIRACHI and CELEBI.\p"
# 325 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The time warp that brought you\n"
# 326 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here… it fractured something.\p"
# 327 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "With every year of ruin HOENN\n"
# 328 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "suffered in this broken future…\p"
# 329 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the darkness gathered.\n"
# 330 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "And it took our shapes.$"
# 331 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 332 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPleas:
# 333 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are not us.\p"
# 334 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are distillations of every\n"
# 335 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "terrible thing that happened\l"
# 336 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "since the timeline broke.\p"
# 337 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Every loss. Every scar.\n"
# 338 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Focused into a single purpose:\p"
# 339 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "to stop the future\n"
# 340 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from ever being repaired.$"
# 341 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 342 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_ShadowsSurge:
# 343 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The two dark forms lock onto you.\p"
# 344 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not speak.\n"
# 345 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They do not need to.\p"
# 346 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Whatever they are, they will not\n"
# 347 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "let you take another step forward.$"
# 348 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 349 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryJirachi:
# 350 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: They are gone.\p"
# 351 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The darkness that wore our faces…\n"
# 352 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "it has dissolved.\p"
# 353 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You did not run.\n"
# 354 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "That is why you could end this.$"
# 355 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 356 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryCelebi:
# 357 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: The rift is still open.\p"
# 358 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "But the shadows that fed on it\n"
# 359 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "are no more.\p"
# 360 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have bought HOENN time,\n"
# 361 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "chosen one. Use it well.$"
# 362 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 363 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPostVictory:
# 364 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: We cannot leave\n"
# 365 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "this place yet.\p"
# 366 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The boundary needs anchoring\n"
# 367 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from this side.\p"
# 368 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "But you you can still go back.\n"
# 369 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The path forward is yours.$"
# 370 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 371 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPostVictory:
# 372 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: Every moment you spend\n"
# 373 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here, the timeline frays a little\l"
# 374 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "more.\p"
# 375 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go back through the warp.\n"
# 376 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Finish what you started.\p"
# 377 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will be watching.$"
# 378 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 379 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_HoennFateJirachi:
# 380 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: This is where our paths\n"
# 381 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "must part, {PLAYER}.\p"
# 382 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "HOENN's fate was never written by\n"
# 383 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "a single moment, but by the countless\l"
# 384 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "threads that connect every timeline.\p"
# 385 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have proven this thread will not\n"
# 386 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "break so easily.$"
# 387 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 388 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_HoennFateCelebi:
# 389 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: Time is not a single road.\n"
# 390 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "It is a river with many branches.\p"
# 391 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "What happened here will never be\n"
# 392 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "undone, but it need not repeat.\p"
# 393 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go back to your own thread, chosen\n"
# 394 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "one. Carry what you have learned\l"
# 395 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "with you.\p"
# 396 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will remain here, watching over\n"
# 397 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the boundary between what was\l"
# 398 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "and what may yet be.$"
