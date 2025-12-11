GraniteCave_StevensRoom_MapScripts::
	.byte 0

GraniteCave_StevensRoom_EventScript_Steven::
	lock
	faceplayer
	msgbox GraniteCave_StevensRoom_Text_ImStevenLetterForMe, MSGBOX_DEFAULT
	setvar VAR_0x8004, ITEM_LETTER
	call Common_EventScript_PlayerHandedOverTheItem
	setflag FLAG_DELIVERED_STEVEN_LETTER
	msgbox GraniteCave_StevensRoom_Text_ThankYouTakeThis, MSGBOX_DEFAULT
	giveitem ITEM_TM_STEEL_WING
	call_if_eq VAR_RESULT, FALSE, GraniteCave_StevensRoom_EventScript_BagFull
	msgbox GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister, MSGBOX_DEFAULT
	closemessage
	delay 30
	playfanfare MUS_REGISTER_MATCH_CALL
	msgbox GraniteCave_StevensRoom_Text_RegisteredSteven, MSGBOX_DEFAULT
	waitfanfare
	closemessage
	delay 30
	setflag FLAG_REGISTERED_STEVEN_POKENAV
	msgbox GraniteCave_StevensRoom_Text_LookAnciantPainting, MSGBOX_DEFAULT
	showpainting(PAINTING_1)
    waitstate
	lock
	faceplayer
	msgbox GraniteCave_StevensRoom_Text_IveGotToHurryAlong, MSGBOX_DEFAULT
	closemessage
	call_if_eq VAR_FACING, DIR_NORTH, GraniteCave_StevensRoom_EventScript_StevenExitNorth
	call_if_eq VAR_FACING, DIR_SOUTH, GraniteCave_StevensRoom_EventScript_StevenExitSouth
	call_if_eq VAR_FACING, DIR_WEST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
	call_if_eq VAR_FACING, DIR_EAST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
	playse SE_EXIT
	removeobject LOCALID_GRANITE_CAVE_STEVEN
	release
	end

GraniteCave_StevensRoom_EventScript_StevenExitNorth::
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
	waitmovement 0
	return

GraniteCave_StevensRoom_EventScript_StevenExitWestEast::
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
	waitmovement 0
	return

GraniteCave_StevensRoom_EventScript_StevenExitSouth::
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExitSouth
	waitmovement 0
	return

GraniteCave_StevensRoom_EventScript_BagFull::
	msgbox GraniteCave_StevensRoom_Text_OhBagIsFull, MSGBOX_DEFAULT
	return

GraniteCave_StevensRoom_Movement_StevenExit:
	walk_left
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	delay_8
	step_end

GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit:
	delay_16
	delay_16
	delay_16
	walk_in_place_faster_up
	step_end

GraniteCave_StevensRoom_Movement_StevenExitSouth:
	walk_left
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	delay_8
	step_end

GraniteCave_StevensRoom_EventScript_AncientPaiting::
	lock
	faceplayer
	showpainting(PAINTING_1)
    waitstate
	release
	end

GraniteCave_StevensRoom_Text_ImStevenLetterForMe:
	.string "My name is STELLA.\p"
	.string "What are you doing in this cave\n"
	.string "with such strange clothes?\p"
	.string "Don't tell me you're with\n"
	.string "TEAM MAGMA...\p"
	.string "Oh? You're just exploring?\n"
	.string "Good. You startled me.\p"
	.string "A LETTER for me?\n"
	.string "Really? Thank you.$"

GraniteCave_StevensRoom_Text_ThankYouTakeThis:
	.string "STELLA: You beat two MAGMA grunts\n"
	.string "alone and still made it here...\p"
	.string "Just to deliver this to me.\n"
	.string "Thank you wierd friend!\p"
	.string "Here, take this TM, STEEL WING.\n"
	.string "It's my favorite move.$"

GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister:
	.string "STELLA: I don't know what MAGMA is\n"
	.string "after here... Rare ore? Energy?\p"
	.string "Whatever it is, it's bad news.\n"
	.string "But you beat them easily.\p"
	.string "Let's register in the POKéNAV.\n"
	.string "If anything happens, we can talk.\p"
	.string "… … … … … …$"
	
GraniteCave_StevensRoom_Text_RegisteredSteven:
	.string "Registered STELLA\n"
	.string "in the POKéNAV.$"

GraniteCave_StevensRoom_Text_LookAnciantPainting:
	.string "STELLA: Now take a look at this \n"
	.string "ancient painting on the wall.$"

GraniteCave_StevensRoom_Text_IveGotToHurryAlong:
	.string "STELLA: I came to study this old\n"
	.string "painting. It must be thousands of\n"
	.string "years old. Maybe even more...\p"
	.string "It shows two titans... One of land,\n"
	.string "one of sea. Ancient guardians.\p"
	.string "That strange meteor in the sky made\n"
	.string "me wonder if it was connected.\p"
	.string "Maybe Team MAGMA was looking for this,\n"
	.string "but good thing you stopped them.\p"
	.string "I should go. I think Team MAGMA may be\n"
	.string "exploring other caves in HOENN.\p"
	.string "Good luck out there.$"

GraniteCave_StevensRoom_Text_OhBagIsFull:
	.string "Oh, your BAG is full…\n"
	.string "That's too bad, then.$"

