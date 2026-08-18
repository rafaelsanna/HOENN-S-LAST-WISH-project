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
@   3. BATTLE with Alejandro (difficulty-based)
# 118 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   4. Stella enters from door → Alejandro ExclamationMark
# 119 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   5. Player face_right + Stella face_left (look at each other)
# 120 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   6. Stella speaks immediately ("Are you alright?")
# 121 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   7. Both face_up
# 122 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   8. Alejandro retreats speech → walks out
# 123 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@   9. Player face_right + Stella face_left (look at each other again)
# 124 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@  10. Stella warning → exits
# 125 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@  11. setflags, releaseall
# 126 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 127 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_CinematicMain::
# 128 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro turns down to face the player below him
# 129 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_ALEJANDRO, AbandonedShip_Movement_AlejandroFacePlayer
# 130 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 131 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro confronts the player
# 132 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Alejandro_Intro, MSGBOX_DEFAULT
# 133 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 134 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 135 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ ----- BATTLE WITH ALEJANDRO (difficulty check) -----
# 136 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	getdifficulty VAR_RESULT
# 137 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto_if_eq VAR_RESULT, 1, AbandonedShip_TeamAqua_AlejandroHard
# 138 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Normal Mode
# 139 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	trainerbattle_no_intro TRAINER_ARCHIE_SHIP_CASUAL, AbandonedShip_Text_Alejandro_Defeat
# 140 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	goto AbandonedShip_TeamAqua_AfterBattle
# 141 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 142 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_AlejandroHard::
# 143 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	trainerbattle_no_intro TRAINER_ARCHIE_SHIP_HARD, AbandonedShip_Text_Alejandro_Defeat
# 144 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 145 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_AfterBattle::
# 146 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ ----- CONTINUE CINEMATIC -----
# 147 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella appears and walks in from the door
# 148 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	addobject LOCALID_STELLA
# 149 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaEnter
# 150 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 151 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro reacts with ! when he notices Stella
# 152 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playse SE_PIN
# 153 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_ALEJANDRO, Common_Movement_ExclamationMark
# 154 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 155 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Player and Stella look at each other simultaneously
# 156 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerFaceRight
# 157 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaFaceLeft
# 158 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 159 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella speaks right away -- no awkward silence
# 160 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Stella_Arrives, MSGBOX_DEFAULT
# 161 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 162 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Both look forward together
# 163 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_FaceUp
# 164 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_FaceUp
# 165 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 166 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro decides to back down
# 167 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Alejandro_Retreats, MSGBOX_DEFAULT
# 168 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 169 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Alejandro walks toward the exit
# 170 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_ALEJANDRO, AbandonedShip_Movement_AlejandroExit
# 171 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 172 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playse SE_EXIT
# 173 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Player and Stella look at each other one last time
# 174 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerFaceRight
# 175 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaFaceLeft
# 176 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 177 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella gives her final warning
# 178 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Stella_Warning, MSGBOX_DEFAULT
# 179 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	closemessage
# 180 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Stella walks back out through the door
# 181 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaExit
# 182 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	waitmovement 0
# 183 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	playse SE_EXIT
# 184 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Hide Stella permanently with her dedicated flag
# 185 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	removeobject LOCALID_STELLA
# 186 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	setflag FLAG_HIDE_ABANDONED_SHIP_ROOMS_STELLA
# 187 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	@ Hide Alejandro, grunt, Solgaleo, Petalburg and Route103 blockers
# 188 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
# 189 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	releaseall
# 190 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 191 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 192 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_EventDone::
# 193 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 194 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 195 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 196 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ PLAYER ENTRY MOVEMENTS -- each ends at x14,y15
# 197 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 198 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 199 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ From x13,y16: right + up → x14,y15
# 200 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerLeft:
# 201 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 202 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 203 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 204 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 205 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 206 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ From x14,y16: up only → x14,y15
# 207 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerMid:
# 208 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 209 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 210 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 211 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ From x15,y16: left + up → x14,y15
# 212 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerRight:
# 213 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
 	walk_up
# 214 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 215 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 216 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 217 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 218 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 219 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ NPC MOVEMENTS
# 220 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 221 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 222 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Alejandro faces DOWN -- player is at x14,y15, Alejandro at x14,y13 (directly above)
# 223 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_AlejandroFacePlayer:
# 224 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_down
# 225 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 226 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 227 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Stella enters: from x14,y18 → ends at x15,y14 (to player's right)
# 228 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_StellaEnter:
# 229 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 230 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 231 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 232 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 233 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 234 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 235 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 236 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Shared face_right for player
# 237 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_PlayerFaceRight:
# 238 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_right
# 239 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 240 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 241 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Stella faces left toward player
# 242 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_StellaFaceLeft:
# 243 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_left
# 244 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 245 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 246 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Shared face_up (used for both player and Stella)
# 247 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_FaceUp:
# 248 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	face_up
# 249 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 250 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 251 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Alejandro exits toward warp at x13,y1
# 252 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_AlejandroExit:
# 253 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_up
# 254 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 255 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 256 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 257 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 258 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 259 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 260 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 261 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 262 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_right
# 263 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 264 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 265 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 266 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 267 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ Stella exits: from x15,y14 back to x14,y18
# 268 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Movement_StellaExit:
# 269 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 270 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 271 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_left
# 272 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 273 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	walk_down
# 274 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	step_end
# 275 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 276 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 277 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ STELLA idle -- if player interacts before cinematic fires
# 278 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 279 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_TeamAqua_ShipStella::
# 280 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	lock
# 281 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	faceplayer
# 282 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	msgbox AbandonedShip_Text_Stella_Idle, MSGBOX_DEFAULT
# 283 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	release
# 284 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	end
# 285 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 286 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 287 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ DIALOGUE TEXTS
# 288 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
@ -------------------------------------------------------
# 289 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Alejandro_Intro:
# 290 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "So you made it this far.\p"
# 291 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Past our men. Past our locks.\p"
# 292 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I'll give you that much.\p"
# 293 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Team Aqua doesn't hold grudges\n"
# 294 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "against talented people.\l"
# 295 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "We hold leverage.\p"
# 296 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Every port in Hoenn runs on\n"
# 297 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "our schedule now.\p"
# 298 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Walk away while you still can.\n"
# 299 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "There won't be a second warning.$"
# 300 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 301 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Alejandro_Defeat:
# 302 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Tch... You've got more bite\n"
# 303 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "than I expected.\p"
# 304 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "But this ship is only a piece\n"
# 305 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "of the bigger picture.\p"
# 306 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "You'll see soon enough.$"
# 307 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 308 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Stella_Arrives:
# 309 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "STELLA: Are you alright?\p"
# 310 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I can't believe you made it\n"
# 311 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "here before me...\p"
# 312 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I've been tracking this ship\n"
# 313 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "for three days straight.\p"
# 314 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "You shouldn't have come alone.$"
# 315 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 316 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Alejandro_Retreats:
# 317 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "INEA: ...\p"
# 318 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Stella.\p"
# 319 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Of all the people to show up.\p"
# 320 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Two against one, on my own\n"
# 321 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "ground. Even I know those odds.\p"
# 322 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I'm not the kind of fool who\n"
# 323 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "throws everything away on pride.\p"
# 324 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Unlike certain Magma admins\n"
# 325 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "I could name.\p"
# 326 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "This ends here. For now.$"
# 327 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 328 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Stella_Warning:
# 329 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "STELLA: Listen carefully.\p"
# 330 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "What Team Aqua is doing here\n"
# 331 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "isn't just about this ship.\p"
# 332 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "They're seizing control of\n"
# 333 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "every major shipping lane\l"
# 334 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "in Hoenn.\p"
# 335 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "Cut the ports, cut the supply\n"
# 336 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "lines -- the whole region\l"
# 337 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "goes quiet.\p"
# 338 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "That's the plan.\n"
# 339 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "And it's already in motion.\p"
# 340 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "We can't let them finish it.$"
# 341 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"

# 342 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
AbandonedShip_Text_Stella_Idle:
# 343 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "STELLA: Stay close.\n"
# 344 "data/maps/AbandonedShip_Rooms_Aqua/scripts.pory"
	.string "This place isn't safe.$"
