# 1 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 2 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ ============================================================
# 3 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ LOCALID references -- add to map_event_ids.h:
# 4 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   #define LOCALID_ALEJANDRO  3
# 5 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   #define LOCALID_STELLA     4
# 6 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ ============================================================
# 7 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 8 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Rooms_Aqua_MapScripts::
# 9 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.byte 0
# 10 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 11 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 12 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ KEYS -- invisible object at x2,y6 (always accessible)
# 13 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 14 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Rooms_Aqua_EventScript_Keys::
# 15 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto_if_set FLAG_AQUA_SHIP_KEYS, AbandonedShip_Rooms_Aqua_Keys_AlreadyGot
# 16 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 17 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitfanfare
# 18 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Rooms_Aqua_Text_FoundKeys, MSGBOX_DEFAULT
# 19 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	setflag FLAG_AQUA_SHIP_KEYS
# 20 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	release
# 21 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 22 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 23 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Rooms_Aqua_Keys_AlreadyGot::
# 24 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Rooms_Aqua_Text_AlreadyHasKeys, MSGBOX_DEFAULT
# 25 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	release
# 26 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 27 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 28 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Rooms_Aqua_Text_FoundKeys:
# 29 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "You found the department's keys!\p"
# 30 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "These should unlock the other\n"
# 31 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "rooms in this ship.$"
# 32 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 33 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Rooms_Aqua_Text_AlreadyHasKeys:
# 34 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "You already have the keys\n"
# 35 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "to this ship's rooms.$"
# 36 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 37 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 38 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ AQUA GRUNT -- x13,y5, normal sight trainer
# 39 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 40 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_AquaGrunt::
# 41 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_AQUA_SHIP, AbandonedShip_Text_Grunt_Intro, AbandonedShip_Text_Grunt_Defeat
# 42 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Grunt_PostBattle, MSGBOX_AUTOCLOSE
# 43 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 44 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 45 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Grunt_Intro:
# 46 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "You've got nerve coming in here.\n"
# 47 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "This ship belongs to Team Aqua.$"
# 48 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 49 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Grunt_Defeat:
# 50 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "How...$"
# 51 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 52 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Grunt_PostBattle:
# 53 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Admin Lazuli is going to hear\n"
# 54 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "about this.$"
# 55 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 56 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 57 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ CAPTAIN'S LOG (Archeops sprite) -- x13,y13
# 58 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 59 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_Book::
# 60 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Book, MSGBOX_DEFAULT
# 61 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	release
# 62 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 63 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 64 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Book:
# 65 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Captain's Route Log\p"
# 66 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Key transport routes for\n"
# 67 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "strategic materials across\l"
# 68 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Hoenn.$"
# 69 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 70 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 71 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ ALEJANDRO -- fallback if player interacts directly
# 72 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 73 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_ShipAlejandro::
# 74 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
# 75 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 76 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 77 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 78 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ THREE ENTRY TRIGGERS -- each moves player to x14,y15
# 79 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@
# 80 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Trigger positions and player movements:
# 81 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   Left  x13,y16 → walk right + walk up  → x14,y15
# 82 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   Mid   x14,y16 → walk up only          → x14,y15
# 83 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   Right x15,y16 → walk left + walk up   → x14,y15
# 84 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@
# 85 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ After convergence at x14,y15:
# 86 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   Alejandro: x14,y13 (directly above player → faces DOWN)
# 87 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   Stella end: x15,y14 (to player's right)
# 88 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   Player faces RIGHT + Stella faces LEFT to look at each other
# 89 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 90 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_CinematicLeft::
# 91 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
# 92 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	lockall
# 93 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerLeft
# 94 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 95 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto AbandonedShip_TeamAqua_CinematicMain
# 96 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 97 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_CinematicMid::
# 98 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
# 99 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	lockall
# 100 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerMid
# 101 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 102 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto AbandonedShip_TeamAqua_CinematicMain
# 103 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 104 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_CinematicRight::
# 105 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
# 106 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	lockall
# 107 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerRight
# 108 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 109 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto AbandonedShip_TeamAqua_CinematicMain
# 110 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 111 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 112 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ SHARED CINEMATIC -- all three triggers jump here
# 113 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@
# 114 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Flow:
# 115 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   1. Alejandro faces DOWN (player is 2 tiles below at y15)
# 116 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   2. Alejandro intro speech
# 117 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   3. Stella enters from door → Alejandro ExclamationMark
# 118 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   4. Player face_right + Stella face_left (look at each other)
# 119 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   5. Stella speaks immediately ("Are you alright?")
# 120 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   6. Both face_up
# 121 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   7. Alejandro retreats speech → walks out
# 122 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   8. Player face_right + Stella face_left (look at each other again)
# 123 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   9. Stella warning → exits
# 124 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@  10. setflags, releaseall
# 125 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 126 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_CinematicMain::
# 127 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro turns down to face the player below him
# 128 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_ALEJANDRO, AbandonedShip_Movement_AlejandroFacePlayer
# 129 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 130 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro confronts the player
# 131 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Alejandro_Intro, MSGBOX_DEFAULT
# 132 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 133 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella appears and walks in from the door
# 134 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	addobject LOCALID_STELLA
# 135 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaEnter
# 136 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 137 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro reacts with ! when he notices Stella
# 138 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playse SE_PIN
# 139 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_ALEJANDRO, Common_Movement_ExclamationMark
# 140 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 141 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Player and Stella look at each other simultaneously
# 142 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerFaceRight
# 143 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaFaceLeft
# 144 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 145 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella speaks right away -- no awkward silence
# 146 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Stella_Arrives, MSGBOX_DEFAULT
# 147 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 148 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Both look forward together
# 149 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_FaceUp
# 150 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_FaceUp
# 151 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 152 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro decides to back down
# 153 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Alejandro_Retreats, MSGBOX_DEFAULT
# 154 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 155 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro walks toward the exit
# 156 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_ALEJANDRO, AbandonedShip_Movement_AlejandroExit
# 157 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 158 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playse SE_EXIT
# 159 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Player and Stella look at each other one last time
# 160 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerFaceRight
# 161 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaFaceLeft
# 162 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 163 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella gives her final warning
# 164 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Stella_Warning, MSGBOX_DEFAULT
# 165 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 166 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella walks back out through the door
# 167 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaExit
# 168 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 169 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playse SE_EXIT
# 170 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Hide Stella permanently with her dedicated flag
# 171 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	removeobject LOCALID_STELLA
# 172 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	setflag FLAG_HIDE_ABANDONED_SHIP_ROOMS_STELLA
# 173 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Hide Alejandro, grunt, Solgaleo, Petalburg and Route103 blockers
# 174 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
# 175 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	releaseall
# 176 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 177 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 178 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_EventDone::
# 179 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 180 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 181 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 182 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ PLAYER ENTRY MOVEMENTS -- each ends at x14,y15
# 183 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 184 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 185 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ From x13,y16: right + up → x14,y15
# 186 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerLeft:
# 187 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 188 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 189 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 190 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 191 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 192 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ From x14,y16: up only → x14,y15
# 193 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerMid:
# 194 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 195 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 196 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 197 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ From x15,y16: left + up → x14,y15
# 198 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerRight:
# 199 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
 	walk_up
# 200 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 201 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 202 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 203 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 204 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 205 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ NPC MOVEMENTS
# 206 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 207 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 208 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Alejandro faces DOWN -- player is at x14,y15, Alejandro at x14,y13 (directly above)
# 209 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_AlejandroFacePlayer:
# 210 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_down
# 211 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 212 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 213 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Stella enters: from x14,y18 → ends at x15,y14 (to player's right)
# 214 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_StellaEnter:
# 215 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 216 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 217 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 218 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 219 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 220 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 221 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 222 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Shared face_right for player
# 223 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerFaceRight:
# 224 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_right
# 225 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 226 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 227 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Stella faces left toward player
# 228 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_StellaFaceLeft:
# 229 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_left
# 230 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 231 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 232 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Shared face_up (used for both player and Stella)
# 233 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_FaceUp:
# 234 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_up
# 235 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 236 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 237 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Alejandro exits toward warp at x13,y1
# 238 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_AlejandroExit:
# 239 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 240 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 241 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 242 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 243 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 244 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 245 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 246 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 247 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 248 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 249 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 250 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 251 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 252 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 253 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Stella exits: from x15,y14 back to x14,y18
# 254 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_StellaExit:
# 255 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 256 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 257 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 258 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 259 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 260 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 261 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 262 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 263 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ STELLA idle -- if player interacts before cinematic fires
# 264 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 265 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_ShipStella::
# 266 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	lock
# 267 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	faceplayer
# 268 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Stella_Idle, MSGBOX_DEFAULT
# 269 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	release
# 270 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 271 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 272 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 273 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ DIALOGUE TEXTS
# 274 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 275 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Alejandro_Intro:
# 276 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "So you made it this far.\p"
# 277 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Past our men. Past our locks.\p"
# 278 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I'll give you that much.\p"
# 279 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Team Aqua doesn't hold grudges\n"
# 280 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "against talented people.\l"
# 281 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "We hold leverage.\p"
# 282 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Every port in Hoenn runs on\n"
# 283 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "our schedule now.\p"
# 284 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Walk away while you still can.\n"
# 285 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "There won't be a second warning.$"
# 286 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 287 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Stella_Arrives:
# 288 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "STELLA: Are you alright?\p"
# 289 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I can't believe you made it\n"
# 290 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "here before me...\p"
# 291 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I've been tracking this ship\n"
# 292 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "for three days straight.\p"
# 293 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "You shouldn't have come alone.$"
# 294 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 295 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Alejandro_Retreats:
# 296 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "ALEJANDRO: ...\p"
# 297 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Stella.\p"
# 298 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Of all the people to show up.\p"
# 299 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Two against one, on my own\n"
# 300 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "ground. Even I know those odds.\p"
# 301 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I'm not the kind of fool who\n"
# 302 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "throws everything away on pride.\p"
# 303 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Unlike certain Magma admins\n"
# 304 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I could name.\p"
# 305 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "This ends here. For now.$"
# 306 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 307 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Stella_Warning:
# 308 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "STELLA: Listen carefully.\p"
# 309 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "What Team Aqua is doing here\n"
# 310 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "isn't just about this ship.\p"
# 311 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "They're seizing control of\n"
# 312 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "every major shipping lane\l"
# 313 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "in Hoenn.\p"
# 314 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Cut the ports, cut the supply\n"
# 315 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "lines -- the whole region\l"
# 316 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "goes quiet.\p"
# 317 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "That's the plan.\n"
# 318 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "And it's already in motion.\p"
# 319 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "We can't let them finish it.$"
# 320 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 321 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Stella_Idle:
# 322 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "STELLA: Stay close.\n"
# 323 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "This place isn't safe.$"
