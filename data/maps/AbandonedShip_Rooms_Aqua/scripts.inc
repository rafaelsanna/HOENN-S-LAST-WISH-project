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
	end

AbandonedShip_Rooms_Aqua_Keys_AlreadyGot::
	msgbox AbandonedShip_Rooms_Aqua_Text_AlreadyHasKeys, MSGBOX_DEFAULT
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
	.string "Hey! You're not supposed\n"
	.string "to be in here!$"

AbandonedShip_Text_Grunt_Defeat:
	.string "Unbelievable...$"

AbandonedShip_Text_Grunt_PostBattle:
	.string "Admin Lazuli won't be happy\n"
	.string "about this...$"

@ -------------------------------------------------------
@ CAPTAIN'S LOG (Archeops sprite) -- x13,y13
@ -------------------------------------------------------
AbandonedShip_TeamAqua_Book::
	msgbox AbandonedShip_Text_Book, MSGBOX_DEFAULT
	end

AbandonedShip_Text_Book:
	.string "Captain's Route Log\p"
	.string "Key transport routes for\n"
	.string "strategic materials across\l"
	.string "Hoenn.$"

@ -------------------------------------------------------
@ ALEJANDRO (Woobat sprite) -- x14,y13
@ Stella starts HIDDEN via FLAG_HIDE_ABANDONED_SHIP_ROOMS_STELLA.
@ addobject reveals her mid-event, same as vanilla does with Wally.
@ removeobject + setflag hides her permanently after the event.
@ -------------------------------------------------------
AbandonedShip_TeamAqua_ShipAlejandro::
	lockall
	faceplayer
	msgbox AbandonedShip_Text_Alejandro_Intro, MSGBOX_DEFAULT
	closemessage
	@ Reveal Stella (4th object)
	addobject 4
	applymovement 4, AbandonedShip_Movement_StellaEnter
	waitmovement 0
	msgbox AbandonedShip_Text_Stella_Arrives, MSGBOX_DEFAULT
	closemessage
	msgbox AbandonedShip_Text_Alejandro_Retreats, MSGBOX_DEFAULT
	closemessage
	@ Alejandro (3rd object) walks off toward exit at x13,y1
	applymovement 3, AbandonedShip_Movement_AlejandroExit
	waitmovement 0
	playse SE_EXIT
	@ Stella gives final warning
	msgbox AbandonedShip_Text_Stella_Warning, MSGBOX_DEFAULT
	closemessage
	@ Stella walks back to the door
	applymovement 4, AbandonedShip_Movement_StellaExit
	waitmovement 0
	playse SE_EXIT
	@ Hide Stella permanently with her dedicated flag
	removeobject 4
	setflag FLAG_HIDE_ABANDONED_SHIP_ROOMS_STELLA
	@ Hide everyone else
	setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
	releaseall
	end

AbandonedShip_Movement_StellaEnter:
	walk_up
	walk_up
	walk_right
	walk_up
	walk_up
	step_end

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

AbandonedShip_Movement_StellaExit:
	walk_down
	walk_down
	walk_left
	walk_down
	walk_down
	step_end

@ -------------------------------------------------------
@ STELLA idle -- if player interacts before Alejandro event
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
	.string "Well, well...\n"
	.string "A trainer poking around where\l"
	.string "they don't belong.\p"
	.string "Team Aqua controls every port\n"
	.string "in Hoenn. Every route. Every\l"
	.string "shipment.\p"
	.string "You're making a very big\n"
	.string "mistake coming here.$"

AbandonedShip_Text_Stella_Arrives:
	.string "STELLA: Hold on!\p"
	.string "Are you alright?\n"
	.string "I came as fast as I could.$"

AbandonedShip_Text_Alejandro_Retreats:
	.string "ALEJANDRO: ...\p"
	.string "Two against one.\n"
	.string "I'm not an idiot like\l"
	.string "the Magma admins.\p"
	.string "I know when to pull back.\n"
	.string "Especially with you showing up,\l"
	.string "Stella.\p"
	.string "This isn't over.$"

AbandonedShip_Text_Stella_Warning:
	.string "STELLA: Be careful from\n"
	.string "here on out.\p"
	.string "Team Aqua isn't just blocking\n"
	.string "routes for show.\p"
	.string "They're planning something big.\n"
	.string "Total control of Hoenn's ports\l"
	.string "and shipping lanes.\p"
	.string "If they pull it off...\n"
	.string "the whole region gets cut off.$"

AbandonedShip_Text_Stella_Idle:
	.string "STELLA: Something feels off\n"
	.string "about this ship.\p"
	.string "Stay alert.$"
	