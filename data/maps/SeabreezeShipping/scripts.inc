# 1 "data/maps/SeabreezeShipping/scripts.pory"

# 2 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_MapScripts::
# 3 "data/maps/SeabreezeShipping/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SeabreezeShipping_OnTransition
# 4 "data/maps/SeabreezeShipping/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SeabreezeShipping_OnFrame
# 5 "data/maps/SeabreezeShipping/scripts.pory"
	.byte 0
# 6 "data/maps/SeabreezeShipping/scripts.pory"

# 7 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_OnTransition:
# 8 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_eq VAR_TEMP_0, 2, SeabreezeShipping_EventScript_SetFaceDownOnArrival
# 9 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 10 "data/maps/SeabreezeShipping/scripts.pory"

# 11 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_OnFrame:
# 12 "data/maps/SeabreezeShipping/scripts.pory"
	map_script_2 VAR_TEMP_1, 1, SeabreezeShipping_EventScript_FaceUpOnArrival
# 13 "data/maps/SeabreezeShipping/scripts.pory"
	.2byte 0
# 14 "data/maps/SeabreezeShipping/scripts.pory"

# 15 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_SetFaceDownOnArrival::
# 16 "data/maps/SeabreezeShipping/scripts.pory"
	setvar VAR_TEMP_0, 0
# 17 "data/maps/SeabreezeShipping/scripts.pory"
	setvar VAR_TEMP_1, 1
# 18 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 19 "data/maps/SeabreezeShipping/scripts.pory"

# 20 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_FaceDownOnArrival::
# 21 "data/maps/SeabreezeShipping/scripts.pory"
	setvar VAR_TEMP_1, 0
# 22 "data/maps/SeabreezeShipping/scripts.pory"
	lockall
# 23 "data/maps/SeabreezeShipping/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 24 "data/maps/SeabreezeShipping/scripts.pory"
	waitmovement 0
# 25 "data/maps/SeabreezeShipping/scripts.pory"
	releaseall
# 26 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 27 "data/maps/SeabreezeShipping/scripts.pory"

# 28 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_FaceUpOnArrival::
# 29 "data/maps/SeabreezeShipping/scripts.pory"
	setvar VAR_TEMP_1, 0
# 30 "data/maps/SeabreezeShipping/scripts.pory"
	lockall
# 31 "data/maps/SeabreezeShipping/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 32 "data/maps/SeabreezeShipping/scripts.pory"
	waitmovement 0
# 33 "data/maps/SeabreezeShipping/scripts.pory"
	releaseall
# 34 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 35 "data/maps/SeabreezeShipping/scripts.pory"

# 36 "data/maps/SeabreezeShipping/scripts.pory"
@ Called by the future Shipping HQ event when the Aqua operation is complete.
# 37 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_CompleteShippingHQ::
# 38 "data/maps/SeabreezeShipping/scripts.pory"
	setflag FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE
# 39 "data/maps/SeabreezeShipping/scripts.pory"
	setvar VAR_ROUTE121_STATE, 0
# 40 "data/maps/SeabreezeShipping/scripts.pory"
	return
# 41 "data/maps/SeabreezeShipping/scripts.pory"

# 42 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_Receptionist1::
# 43 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_unset FLAG_CARGO_SHIP_EVENT_COMPLETE, SeabreezeShipping_EventScript_ReceptionistClosed
# 44 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_unset FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, SeabreezeShipping_EventScript_ReceptionistClosed
# 45 "data/maps/SeabreezeShipping/scripts.pory"
	msgbox SeabreezeShipping_Text_ReceptionistOpen, MSGBOX_NPC
# 46 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 47 "data/maps/SeabreezeShipping/scripts.pory"

# 48 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_ReceptionistClosed::
# 49 "data/maps/SeabreezeShipping/scripts.pory"
	msgbox SeabreezeShipping_Text_Receptionist1_1, MSGBOX_NPC
# 50 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 51 "data/maps/SeabreezeShipping/scripts.pory"

# 52 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_Text_Receptionist1_1:
# 53 "data/maps/SeabreezeShipping/scripts.pory"
	.string "Welcome to Seabreeze Shipping HQ!\p"
# 54 "data/maps/SeabreezeShipping/scripts.pory"
	.string "We apologize, but we are\n"
# 55 "data/maps/SeabreezeShipping/scripts.pory"
	.string "closed for the time being.$"
# 56 "data/maps/SeabreezeShipping/scripts.pory"

# 57 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_Text_ReceptionistOpen:
# 58 "data/maps/SeabreezeShipping/scripts.pory"
	.string "Welcome to SEABREEZE SHIPPING!\p"
# 59 "data/maps/SeabreezeShipping/scripts.pory"
	.string "We are responsible for managing\n"
# 60 "data/maps/SeabreezeShipping/scripts.pory"
	.string "international shipping lines\l"
# 61 "data/maps/SeabreezeShipping/scripts.pory"
	.string "that connect to the HOENN region.\p"
# 62 "data/maps/SeabreezeShipping/scripts.pory"
	.string "You can only visit upstairs if\n"
# 63 "data/maps/SeabreezeShipping/scripts.pory"
	.string "you're an employee or affiliate.$"
# 64 "data/maps/SeabreezeShipping/scripts.pory"

# 65 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_Elevatorman::
# 66 "data/maps/SeabreezeShipping/scripts.pory"
	lock
# 67 "data/maps/SeabreezeShipping/scripts.pory"
	faceplayer
# 68 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_unset FLAG_CARGO_SHIP_EVENT_COMPLETE, SeabreezeShipping_EventScript_ElevatormanClosed
# 69 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_unset FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, SeabreezeShipping_EventScript_ElevatormanClosed
# 70 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_set FLAG_SEABREEZE_SHIPPING_ELEVATOR_INTRO, SeabreezeShipping_EventScript_ElevatormanPrompt
# 71 "data/maps/SeabreezeShipping/scripts.pory"
	msgbox SeabreezeShipping_Text_Elevatorman_1, MSGBOX_DEFAULT
# 72 "data/maps/SeabreezeShipping/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 73 "data/maps/SeabreezeShipping/scripts.pory"
	waitmovement 0
# 74 "data/maps/SeabreezeShipping/scripts.pory"
	setflag FLAG_SEABREEZE_SHIPPING_ELEVATOR_INTRO
# 75 "data/maps/SeabreezeShipping/scripts.pory"
	msgbox SeabreezeShipping_Text_Elevatorman_KeyCard, MSGBOX_YESNO
# 76 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_eq VAR_RESULT, YES, SeabreezeShipping_EventScript_ElevatormanGoUp
# 77 "data/maps/SeabreezeShipping/scripts.pory"
	release
# 78 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 79 "data/maps/SeabreezeShipping/scripts.pory"

# 80 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_ElevatormanClosed::
# 81 "data/maps/SeabreezeShipping/scripts.pory"
	msgbox SeabreezeShipping_Text_Elevatorman_1, MSGBOX_NPC
# 82 "data/maps/SeabreezeShipping/scripts.pory"
	release
# 83 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 84 "data/maps/SeabreezeShipping/scripts.pory"

# 85 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_ElevatormanPrompt::
# 86 "data/maps/SeabreezeShipping/scripts.pory"
	msgbox SeabreezeShipping_Text_Elevatorman_GoUp, MSGBOX_YESNO
# 87 "data/maps/SeabreezeShipping/scripts.pory"
	goto_if_eq VAR_RESULT, YES, SeabreezeShipping_EventScript_ElevatormanGoUp
# 88 "data/maps/SeabreezeShipping/scripts.pory"
	release
# 89 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 90 "data/maps/SeabreezeShipping/scripts.pory"

# 91 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_EventScript_ElevatormanGoUp::
# 92 "data/maps/SeabreezeShipping/scripts.pory"
	setvar VAR_TEMP_0, 1
# 93 "data/maps/SeabreezeShipping/scripts.pory"
	closemessage
# 94 "data/maps/SeabreezeShipping/scripts.pory"
	fadescreen FADE_TO_BLACK
# 95 "data/maps/SeabreezeShipping/scripts.pory"
	playse SE_ELEVATOR
# 96 "data/maps/SeabreezeShipping/scripts.pory"
	waitse
# 97 "data/maps/SeabreezeShipping/scripts.pory"
	warp MAP_SEABREEZE_SHIPPING1F, 12, 3
# 98 "data/maps/SeabreezeShipping/scripts.pory"
	waitstate
# 99 "data/maps/SeabreezeShipping/scripts.pory"
	end
# 100 "data/maps/SeabreezeShipping/scripts.pory"

# 101 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_Text_Elevatorman_1:
# 102 "data/maps/SeabreezeShipping/scripts.pory"
	.string "Sorry, kid, the building is\n"
# 103 "data/maps/SeabreezeShipping/scripts.pory"
	.string "closed.$"
# 104 "data/maps/SeabreezeShipping/scripts.pory"

# 105 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_Text_Elevatorman_KeyCard:
# 106 "data/maps/SeabreezeShipping/scripts.pory"
	.string "Is that a key card? I apologize.\n"
# 107 "data/maps/SeabreezeShipping/scripts.pory"
	.string "I assumed you were not an affiliate\l"
# 108 "data/maps/SeabreezeShipping/scripts.pory"
	.string "due to your age.\p"
# 109 "data/maps/SeabreezeShipping/scripts.pory"
	.string "Would you like to go up?$"
# 110 "data/maps/SeabreezeShipping/scripts.pory"

# 111 "data/maps/SeabreezeShipping/scripts.pory"
SeabreezeShipping_Text_Elevatorman_GoUp:
# 112 "data/maps/SeabreezeShipping/scripts.pory"
	.string "Would you like to go up?$"
