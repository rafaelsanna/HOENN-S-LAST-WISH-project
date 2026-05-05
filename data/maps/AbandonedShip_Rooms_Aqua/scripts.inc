@ ============================================================
@ LOCALID references -- add to map_event_ids.h:
@   #define LOCALID_ALEJANDRO  3
@   #define LOCALID_STELLA     4
@ ============================================================

AbandonedShip_Rooms_Aqua_MapScripts::
	.byte 0

@ -------------------------------------------------------
@ KEYS -- invisible object at x2,y6 (always accessible)
@ -------------------------------------------------------
AbandonedShip_Rooms_Aqua_EventScript_Keys::
	goto_if_set FLAG_AQUA_SHIP_KEYS, AbandonedShip_Rooms_Aqua_Keys_AlreadyGot
	playfanfare MUS_OBTAIN_ITEM
	waitfanfare
	msgbox AbandonedShip_Rooms_Aqua_Text_FoundKeys, MSGBOX_DEFAULT
	setflag FLAG_AQUA_SHIP_KEYS
	release
	end

AbandonedShip_Rooms_Aqua_Keys_AlreadyGot::
	msgbox AbandonedShip_Rooms_Aqua_Text_AlreadyHasKeys, MSGBOX_DEFAULT
	release
	end

AbandonedShip_Rooms_Aqua_Text_FoundKeys:
	.string "You found the department's keys!\p"
	.string "These should unlock the other\n"
	.string "rooms in this ship.$"

AbandonedShip_Rooms_Aqua_Text_AlreadyHasKeys:
	.string "You already have the keys\n"
	.string "to this ship's rooms.$"

@ -------------------------------------------------------
@ AQUA GRUNT -- x13,y5, normal sight trainer
@ -------------------------------------------------------
AbandonedShip_TeamAqua_AquaGrunt::
	trainerbattle_single TRAINER_GRUNT_AQUA_SHIP, AbandonedShip_Text_Grunt_Intro, AbandonedShip_Text_Grunt_Defeat
	msgbox AbandonedShip_Text_Grunt_PostBattle, MSGBOX_AUTOCLOSE
	end

AbandonedShip_Text_Grunt_Intro:
	.string "You've got nerve coming in here.\n"
	.string "This ship belongs to Team Aqua.$"

AbandonedShip_Text_Grunt_Defeat:
	.string "How...$"

AbandonedShip_Text_Grunt_PostBattle:
	.string "Admin Lazuli is going to hear\n"
	.string "about this.$"

@ -------------------------------------------------------
@ CAPTAIN'S LOG (Archeops sprite) -- x13,y13
@ -------------------------------------------------------
AbandonedShip_TeamAqua_Book::
	msgbox AbandonedShip_Text_Book, MSGBOX_DEFAULT
	release
	end

AbandonedShip_Text_Book:
	.string "Captain's Route Log\p"
	.string "Key transport routes for\n"
	.string "strategic materials across\l"
	.string "Hoenn.$"

@ -------------------------------------------------------
@ ALEJANDRO -- fallback if player interacts directly
@ -------------------------------------------------------
AbandonedShip_TeamAqua_ShipAlejandro::
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
	end

@ -------------------------------------------------------
@ THREE ENTRY TRIGGERS -- each moves player to x14,y15
@
@ Trigger positions and player movements:
@   Left  x13,y16 → walk right + walk up  → x14,y15
@   Mid   x14,y16 → walk up only          → x14,y15
@   Right x15,y16 → walk left + walk up   → x14,y15
@
@ After convergence at x14,y15:
@   Alejandro: x14,y13 (directly above player → faces DOWN)
@   Stella end: x15,y14 (to player's right)
@   Player faces RIGHT + Stella faces LEFT to look at each other
@ -------------------------------------------------------
AbandonedShip_TeamAqua_CinematicLeft::
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
	lockall
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerLeft
	waitmovement 0
	goto AbandonedShip_TeamAqua_CinematicMain

AbandonedShip_TeamAqua_CinematicMid::
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
	lockall
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerMid
	waitmovement 0
	goto AbandonedShip_TeamAqua_CinematicMain

AbandonedShip_TeamAqua_CinematicRight::
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, AbandonedShip_TeamAqua_EventDone
	lockall
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerRight
	waitmovement 0
	goto AbandonedShip_TeamAqua_CinematicMain

@ -------------------------------------------------------
@ SHARED CINEMATIC -- all three triggers jump here
@
@ Flow:
@   1. Alejandro faces DOWN (player is 2 tiles below at y15)
@   2. Alejandro intro speech
@   3. Stella enters from door → Alejandro ExclamationMark
@   4. Player face_right + Stella face_left (look at each other)
@   5. Stella speaks immediately ("Are you alright?")
@   6. Both face_up
@   7. Alejandro retreats speech → walks out
@   8. Player face_right + Stella face_left (look at each other again)
@   9. Stella warning → exits
@  10. setflags, releaseall
@ -------------------------------------------------------
AbandonedShip_TeamAqua_CinematicMain::
	@ Alejandro turns down to face the player below him
	applymovement LOCALID_ALEJANDRO, AbandonedShip_Movement_AlejandroFacePlayer
	waitmovement 0
	@ Alejandro confronts the player
	msgbox AbandonedShip_Text_Alejandro_Intro, MSGBOX_DEFAULT
	closemessage
	@ Stella appears and walks in from the door
	addobject LOCALID_STELLA
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaEnter
	waitmovement 0
	@ Alejandro reacts with ! when he notices Stella
	playse SE_PIN
	applymovement LOCALID_ALEJANDRO, Common_Movement_ExclamationMark
	waitmovement 0
	@ Player and Stella look at each other simultaneously
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerFaceRight
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaFaceLeft
	waitmovement 0
	@ Stella speaks right away -- no awkward silence
	msgbox AbandonedShip_Text_Stella_Arrives, MSGBOX_DEFAULT
	closemessage
	@ Both look forward together
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_FaceUp
	applymovement LOCALID_STELLA, AbandonedShip_Movement_FaceUp
	waitmovement 0
	@ Alejandro decides to back down
	msgbox AbandonedShip_Text_Alejandro_Retreats, MSGBOX_DEFAULT
	closemessage
	@ Alejandro walks toward the exit
	applymovement LOCALID_ALEJANDRO, AbandonedShip_Movement_AlejandroExit
	waitmovement 0
	playse SE_EXIT
	@ Player and Stella look at each other one last time
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_Movement_PlayerFaceRight
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaFaceLeft
	waitmovement 0
	@ Stella gives her final warning
	msgbox AbandonedShip_Text_Stella_Warning, MSGBOX_DEFAULT
	closemessage
	@ Stella walks back out through the door
	applymovement LOCALID_STELLA, AbandonedShip_Movement_StellaExit
	waitmovement 0
	playse SE_EXIT
	@ Hide Stella permanently with her dedicated flag
	removeobject LOCALID_STELLA
	setflag FLAG_HIDE_ABANDONED_SHIP_ROOMS_STELLA
	@ Hide Alejandro, grunt, Solgaleo, Petalburg and Route103 blockers
	setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
	releaseall
	end

AbandonedShip_TeamAqua_EventDone::
	end

@ -------------------------------------------------------
@ PLAYER ENTRY MOVEMENTS -- each ends at x14,y15
@ -------------------------------------------------------

@ From x13,y16: right + up → x14,y15
AbandonedShip_Movement_PlayerLeft:
	walk_up
	walk_right
	walk_up
	step_end

@ From x14,y16: up only → x14,y15
AbandonedShip_Movement_PlayerMid:
	walk_up
	step_end

@ From x15,y16: left + up → x14,y15
AbandonedShip_Movement_PlayerRight:
 	walk_up
	walk_left
	walk_up
	step_end

@ -------------------------------------------------------
@ NPC MOVEMENTS
@ -------------------------------------------------------

@ Alejandro faces DOWN -- player is at x14,y15, Alejandro at x14,y13 (directly above)
AbandonedShip_Movement_AlejandroFacePlayer:
	face_down
	step_end

@ Stella enters: from x14,y18 → ends at x15,y14 (to player's right)
AbandonedShip_Movement_StellaEnter:
	walk_up
	walk_up
	walk_right
	walk_up
	walk_up
	step_end

@ Shared face_right for player
AbandonedShip_Movement_PlayerFaceRight:
	face_right
	step_end

@ Stella faces left toward player
AbandonedShip_Movement_StellaFaceLeft:
	face_left
	step_end

@ Shared face_up (used for both player and Stella)
AbandonedShip_Movement_FaceUp:
	face_up
	step_end

@ Alejandro exits toward warp at x13,y1
AbandonedShip_Movement_AlejandroExit:
	walk_up
	walk_left
	walk_left
	walk_left
	walk_down
	walk_down
	walk_down
	walk_down
	walk_right
	walk_right
	walk_down
	walk_down
	step_end

@ Stella exits: from x15,y14 back to x14,y18
AbandonedShip_Movement_StellaExit:
	walk_down
	walk_down
	walk_left
	walk_down
	walk_down
	step_end

@ -------------------------------------------------------
@ STELLA idle -- if player interacts before cinematic fires
@ -------------------------------------------------------
AbandonedShip_TeamAqua_ShipStella::
	lock
	faceplayer
	msgbox AbandonedShip_Text_Stella_Idle, MSGBOX_DEFAULT
	release
	end

@ -------------------------------------------------------
@ DIALOGUE TEXTS
@ -------------------------------------------------------
AbandonedShip_Text_Alejandro_Intro:
	.string "So you made it this far.\p"
	.string "Past our men. Past our locks.\p"
	.string "I'll give you that much.\p"
	.string "Team Aqua doesn't hold grudges\n"
	.string "against talented people.\l"
	.string "We hold leverage.\p"
	.string "Every port in Hoenn runs on\n"
	.string "our schedule now.\p"
	.string "Walk away while you still can.\n"
	.string "There won't be a second warning.$"

AbandonedShip_Text_Stella_Arrives:
	.string "STELLA: Are you alright?\p"
	.string "I can't believe you made it\n"
	.string "here before me...\p"
	.string "I've been tracking this ship\n"
	.string "for three days straight.\p"
	.string "You shouldn't have come alone.$"

AbandonedShip_Text_Alejandro_Retreats:
	.string "ALEJANDRO: ...\p"
	.string "Stella.\p"
	.string "Of all the people to show up.\p"
	.string "Two against one, on my own\n"
	.string "ground. Even I know those odds.\p"
	.string "I'm not the kind of fool who\n"
	.string "throws everything away on pride.\p"
	.string "Unlike certain Magma admins\n"
	.string "I could name.\p"
	.string "This ends here. For now.$"

AbandonedShip_Text_Stella_Warning:
	.string "STELLA: Listen carefully.\p"
	.string "What Team Aqua is doing here\n"
	.string "isn't just about this ship.\p"
	.string "They're seizing control of\n"
	.string "every major shipping lane\l"
	.string "in Hoenn.\p"
	.string "Cut the ports, cut the supply\n"
	.string "lines -- the whole region\l"
	.string "goes quiet.\p"
	.string "That's the plan.\n"
	.string "And it's already in motion.\p"
	.string "We can't let them finish it.$"

AbandonedShip_Text_Stella_Idle:
	.string "STELLA: Stay close.\n"
	.string "This place isn't safe.$"
