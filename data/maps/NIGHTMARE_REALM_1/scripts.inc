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
@ On defeat (whiteout) the engine clears battle flags. The independent retry
# 13 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ flag remains set so the summit relic can bring the player back.
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
@ Started directly by NightmareRealm1_WarpIn after the player walks to (10,9).
# 25 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ The coord events on y=9 remain as a fallback for other map entries.
# 26 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 27 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Player position: (10, 9) — the trigger tile.
# 28 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 29 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Final formation:
# 30 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@        (9,8) DUK      ESC (11,8)   ← shadows, facing down
# 31 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@              (10,9)  PL            ← player, facing up
# 32 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@        (9,11) JIR    CEL (11,11)   ← legendaries, facing up
# 33 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@
# 34 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ WIN  → VAR_NIGHTMARE_STATE = 1. Never repeats.
# 35 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ LOSE → whiteout. VAR_NIGHTMARE_STATE stays 0 and the retry flag, armed
# 36 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@         before battle, survives the whiteout. The summit relic appears.
# 37 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 38 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Arrival::
# 39 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lockall
# 40 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 41 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 1: CROSS CHASE -----------------------------------------------
# 42 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 1, NightmareRealm1_Movement_JirachiFlee
# 43 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 2, NightmareRealm1_Movement_DucklettChase
# 44 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 3, NightmareRealm1_Movement_CelebiFlee
# 45 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 4, NightmareRealm1_Movement_EscavalierChase
# 46 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 47 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 48 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 49 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 2: REFUGE — legendaries move behind player -------------------
# 50 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 1, NightmareRealm1_Movement_JirachiToPlayer
# 51 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 3, NightmareRealm1_Movement_CelebiToPlayer
# 52 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 53 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 54 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 55 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 1, Common_Movement_WalkInPlaceFasterUp
# 56 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 3, Common_Movement_WalkInPlaceFasterUp
# 57 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 58 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 59 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 60 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 3: CONFRONTATION — shadows close in front of player ----------
# 61 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 2, NightmareRealm1_Movement_DucklettCloseIn
# 62 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 4, NightmareRealm1_Movement_EscavalierCloseIn
# 63 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 64 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 65 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 66 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 2, Common_Movement_WalkInPlaceFasterDown
# 67 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement 4, Common_Movement_WalkInPlaceFasterDown
# 68 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 69 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 70 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 71 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 72 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 73 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 74 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 75 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 4: DIALOGUE --------------------------------------------------
# 76 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPleas, MSGBOX_DEFAULT
# 77 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 78 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 79 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 80 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPleas, MSGBOX_DEFAULT
# 81 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 82 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 83 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 84 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_ShadowsSurge, MSGBOX_DEFAULT
# 85 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 86 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 87 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 88 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ --- PHASE 5: BATTLE — double wild --------------------------------------
# 89 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Whiteout does not resume this script, so arm retry before the battle.
# 90 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_LOST_NIGHTMARE_BATTLE
# 91 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setwildbattle SPECIES_DUCKLETT, 45, ITEM_NONE, SPECIES_ESCAVALIER, 45, ITEM_NONE
# 92 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    dowildbattle
# 93 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 94 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Only a non-whiteout outcome resumes the script.
# 95 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    goto_if_eq VAR_RESULT, 1, NightmareRealm1_OnVictory
# 96 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 97 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 98 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 99 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 100 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_OnVictory
# 101 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 102 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnVictory::
# 103 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_NIGHTMARE_STATE, 1
# 104 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_LOST_NIGHTMARE_BATTLE
# 105 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 106 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 107 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_BAG_USE
# 108 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FLAG_NO_CATCHING
# 109 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_SMART_WILD_AI_FLAG
# 110 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag B_FAST_INTRO_NO_SLIDE
# 111 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 112 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Fade to black, play teleport sound, remove the shadow NPCs.
# 113 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreen FADE_TO_BLACK
# 114 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removeobject 2
# 115 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removeobject 4
# 116 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreen FADE_FROM_BLACK
# 117 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 118 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Player turns down to face Jirachi and Celebi behind them.
# 119 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 120 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitmovement 0
# 121 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 122 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 123 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi speaks first.
# 124 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 125 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryJirachi, MSGBOX_DEFAULT
# 126 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removefieldmugshot
# 127 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 128 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 129 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 130 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi speaks second.
# 131 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 132 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryCelebi, MSGBOX_DEFAULT
# 133 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removefieldmugshot
# 134 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 135 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 136 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 137 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Release — player is free to explore and talk to the legendaries.
# 138 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 139 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 140 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 141 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 142 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Post-victory NPC scripts (Jirachi and Celebi stay on map, can be talked to)
# 143 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Either one, whichever the player talks to first, closes out the Nightmare
# 144 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Realm chapter: post-victory line -> Hoenn's-fate/timeline dialogue -> warp
# 145 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ back to Mt Pyre Summit. No flag needed to guard repeats — the warp takes
# 146 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ the player off this map for good, so the other NPC's script can never
# 147 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ fire afterward.
# 148 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 149 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_EventScript_Jirachi::
# 150 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lock
# 151 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    faceplayer
# 152 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 153 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPostVictory, MSGBOX_DEFAULT
# 154 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removefieldmugshot
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
    createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 163 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPostVictory, MSGBOX_DEFAULT
# 164 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removefieldmugshot
# 165 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 166 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    goto NightmareRealm1_EventScript_EndingSequence
# 167 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 168 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 169 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 170 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ NightmareRealm1_EventScript_EndingSequence
# 171 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Fires once, from whichever legendary the player talks to first.
# 172 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi and Celebi speak together about Hoenn's fate and the connection
# 173 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ between timelines, then the screen fades and the player is warped back to
# 174 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ the exact spot on Mt Pyre Summit they left from.
# 175 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 176 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_EventScript_EndingSequence::
# 177 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 15
# 178 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 179 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 180 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_HoennFateJirachi, MSGBOX_DEFAULT
# 181 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removefieldmugshot
# 182 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 183 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 10
# 184 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 185 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 186 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_HoennFateCelebi, MSGBOX_DEFAULT
# 187 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    removefieldmugshot
# 188 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 189 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 190 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 191 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    fadescreen FADE_TO_BLACK
# 192 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    warp MAP_MT_PYRE_SUMMIT, 23, 6
# 193 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    waitstate
# 194 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 195 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 196 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 197 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 198 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Movement scripts
# 199 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 200 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 201 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (3,8) → right 14 → (17,8)
# 202 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiFlee:
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
    walk_right
# 213 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 214 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 215 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 216 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 217 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 218 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 219 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (2,8) → right 13 → (15,8). y=8 the whole way, never hits player at y=9.
# 220 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettChase:
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
    walk_right
# 230 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 231 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 232 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 233 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 234 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 235 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 236 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (17,7) → left 14 → (3,7)
# 237 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiFlee:
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
@ Escavalier (18,7) → left 13 → (5,7)
# 255 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierChase:
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
    walk_left
# 265 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 266 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 267 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 268 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 269 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 270 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 271 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Jirachi (17,8) → (9,11): left 8, down 3
# 272 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_JirachiToPlayer:
# 273 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 274 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 275 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 276 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 277 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 278 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 279 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 280 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 281 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 282 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 283 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 284 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 285 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 286 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Celebi (3,7) → (11,11): right 8, down 4
# 287 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_CelebiToPlayer:
# 288 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 289 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 290 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 291 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 292 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 293 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 294 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 295 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 296 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 297 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 298 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 299 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 300 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 301 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 302 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Ducklett (15,8) → (9,8): left 6
# 303 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_DucklettCloseIn:
# 304 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 305 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 306 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 307 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 308 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 309 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_left
# 310 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 311 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 312 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Escavalier (5,7) → (11,8): right 6, down 1
# 313 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Movement_EscavalierCloseIn:
# 314 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 315 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 316 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 317 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 318 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 319 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_right
# 320 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    walk_down
# 321 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    step_end
# 322 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 323 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 324 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ Dialogue
# 325 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
@ =============================================================================
# 326 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 327 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPleas:
# 328 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You can hear us...\p"
# 329 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We are JIRACHI and CELEBI.\p"
# 330 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The time warp that brought you\n"
# 331 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here… it fractured something.\p"
# 332 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "With every year of ruin HOENN\n"
# 333 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "suffered in this broken future…\p"
# 334 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the darkness gathered.\n"
# 335 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "And it took our shapes.$"
# 336 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 337 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPleas:
# 338 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are not us.\p"
# 339 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are distillations of every\n"
# 340 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "terrible thing that happened\l"
# 341 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "since the timeline broke.\p"
# 342 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Every loss, scar, and tragedy,\n"
# 343 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Focused into a single purpose:\p"
# 344 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "to stop the future\n"
# 345 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from ever being repaired.\p"
# 346 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have suppressed this darkness\n"
# 347 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "once before.\p"
# 348 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Each time one manifests, it will only\n"
# 349 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "continue to fester until it corrupts\l"
# 350 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "every thread of the timeline.$"
# 351 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 352 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_ShadowsSurge:
# 353 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The two dark forms lock onto you.\p"
# 354 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Their suffocating aura intensifies,\n"
# 355 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "as though they can sense that you are\l"
# 356 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the one who will erase them.\p"
# 357 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Whatever they are, they will not\n"
# 358 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "let you take another step forward.$"
# 359 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 360 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryJirachi:
# 361 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: They are gone.\p"
# 362 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The darkness that wore our faces…\n"
# 363 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "it has dissolved.$"
# 364 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 365 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryCelebi:
# 366 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: The rift is still open,\n"
# 367 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "but the shadows that fed on it\l"
# 368 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "are no more.\p"
# 369 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have bought HOENN time,\n"
# 370 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "chosen one. Use it well.$"
# 371 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 372 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPostVictory:
# 373 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: We cannot leave\n"
# 374 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "this place yet.\p"
# 375 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The boundary needs anchoring\n"
# 376 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "from this side. It is not as simple\l"
# 377 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "a fix as the previous rift.\p"
# 378 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "But you can still go back.\n"
# 379 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The path forward is yours.$"
# 380 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 381 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPostVictory:
# 382 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: Every moment you spend\n"
# 383 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "here, the timeline frays a little\l"
# 384 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "more.\p"
# 385 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go back through the warp.\n"
# 386 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Finish what you started.\p"
# 387 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "There may be more rifts, and you\n"
# 388 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "must be prepared.\p"
# 389 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will be watching.$"
# 390 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 391 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_HoennFateJirachi:
# 392 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "JIRACHI: This is where our path\n"
# 393 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "must part for now, {PLAYER}.\p"
# 394 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "HOENN's fate was never written by\n"
# 395 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "a single moment, but by the countless\l"
# 396 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "threads that connect every timeline.\p"
# 397 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "You have proven this thread will not\n"
# 398 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "break so easily.$"
# 399 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 400 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_HoennFateCelebi:
# 401 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "CELEBI: Time is not a single road.\n"
# 402 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "It is a river with many branches.\p"
# 403 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "What happened here will never be\n"
# 404 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "undone, but it need not repeat.\p"
# 405 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Go back to your own thread, chosen\n"
# 406 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "one. Carry what you have learned\l"
# 407 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "with you.\p"
# 408 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We will remain here, watching over\n"
# 409 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "the boundary between what was\l"
# 410 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "and what may yet be until we are\l"
# 411 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "needed once more.$"
