@ ====================================================================
@ File: data/maps/LITTLEROOT_TOWN_01/scripts.inc
@ Choice System: Skip Prologue (Warp 2F) or Play Normal Prologue
@ ====================================================================

LITTLEROOT_TOWN_01_MapScripts::
	.byte 0

LittlerootTown_01_EventScript_JirachiCelebi::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq LittlerootTown_01_Warp
	compare VAR_RESULT, NO
	goto_if_eq LittlerootTown_01_Stay
	release
	end

LittlerootTown_01_Warp::
	msgbox LittlerootTown_01_Text_Yes, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	fadescreen FADE_TO_BLACK
	delay 40
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq LittlerootTown_01_WarpMale
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 3, 8
	goto LittlerootTown_01_WarpDone

LittlerootTown_01_WarpMale::
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 3, 8
	goto LittlerootTown_01_WarpDone

LittlerootTown_01_WarpDone::
	waitstate
	release
	end

LittlerootTown_01_Stay::
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	fadescreen FADE_TO_BLACK
	delay 40
	warp MAP_MOSSDEEP01, 10, 10
	waitstate
	release
	end

LittlerootTown_CelebiScript::
	lock
	faceplayer
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_01_Text_CelebiLost
	case 1, LittlerootTown_01_Text_CelebiHelp  
	case 2, LittlerootTown_01_Text_CelebiForest
	msgbox LittlerootTown_01_Text_CelebiLost, MSGBOX_DEFAULT
	release
	end

LittlerootTown_JirachiScript::
	lock
	faceplayer
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_01_Text_JirachiWish
	case 1, LittlerootTown_01_Text_JirachiSleep
	case 2, LittlerootTown_01_Text_JirachiGrant
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
	release
	end

LittlerootTown_01_Text_Question:
	.string "Skip prologue?$"

LittlerootTown_01_Text_Yes:
	.string "Going home.$"

LittlerootTown_01_Text_No:
	.string "Alright, start the journey.$"

LittlerootTown_01_Text_CelebiLost:
	.string "Celebi: Hi! I'm lost in time...\ncan you help me find my way?$"

LittlerootTown_01_Text_CelebiHelp:
	.string "Celebi: Please help me!\nI need to return to my forest!$"

LittlerootTown_01_Text_CelebiForest:
	.string "Celebi: Hi there!\nDo you know the way to Ilex Forest?$"

LittlerootTown_01_Text_JirachiWish:
	.string "Jirachi: I am the Wish Pokemon!\nMake a wish and I might grant it!$"

LittlerootTown_01_Text_JirachiSleep:
	.string "Jirachi: Hello! I've been sleeping\nfor 1000 years... what year is it?$"

LittlerootTown_01_Text_JirachiGrant:
	.string "Jirachi: They say I can grant any wish!\nWhat would you wish for?$"


