# 1 "data/maps/SeabreezeShipping1F/scripts.pory"

# 2 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_MapScripts::
# 3 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SeabreezeShipping1F_OnTransition
# 4 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SeabreezeShipping1F_OnFrame
# 5 "data/maps/SeabreezeShipping1F/scripts.pory"
	.byte 0
# 6 "data/maps/SeabreezeShipping1F/scripts.pory"

# 7 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_OnTransition:
# 8 "data/maps/SeabreezeShipping1F/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 9 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_ne VAR_TEMP_2, 2, SeabreezeShipping1F_EventScript_CheckElevatorArrival
# 10 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_ne VAR_TEMP_3, 2, SeabreezeShipping1F_EventScript_CheckElevatorArrival
# 11 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 2
# 12 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 13 "data/maps/SeabreezeShipping1F/scripts.pory"

# 14 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_CheckElevatorArrival::
# 15 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_eq VAR_TEMP_0, 1, SeabreezeShipping1F_EventScript_SetFaceUpOnArrival
# 16 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 17 "data/maps/SeabreezeShipping1F/scripts.pory"

# 18 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_OnFrame:
# 19 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script_2 VAR_TEMP_1, 1, SeabreezeShipping1F_EventScript_FaceUpOnArrival
# 20 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script_2 VAR_TEMP_1, 2, SeabreezeShipping1F_EventScript_FaceDownOnArrival
# 21 "data/maps/SeabreezeShipping1F/scripts.pory"
	.2byte 0
# 22 "data/maps/SeabreezeShipping1F/scripts.pory"

# 23 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_SetFaceUpOnArrival::
# 24 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_0, 0
# 25 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 1
# 26 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 27 "data/maps/SeabreezeShipping1F/scripts.pory"

# 28 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_FaceUpOnArrival::
# 29 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 0
# 30 "data/maps/SeabreezeShipping1F/scripts.pory"
	lockall
# 31 "data/maps/SeabreezeShipping1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 32 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitmovement 0
# 33 "data/maps/SeabreezeShipping1F/scripts.pory"
	releaseall
# 34 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 35 "data/maps/SeabreezeShipping1F/scripts.pory"

# 36 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_FaceDownOnArrival::
# 37 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 0
# 38 "data/maps/SeabreezeShipping1F/scripts.pory"
	lockall
# 39 "data/maps/SeabreezeShipping1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 40 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitmovement 0
# 41 "data/maps/SeabreezeShipping1F/scripts.pory"
	releaseall
# 42 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 43 "data/maps/SeabreezeShipping1F/scripts.pory"

# 44 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Elevatorman::
# 45 "data/maps/SeabreezeShipping1F/scripts.pory"
	lock
# 46 "data/maps/SeabreezeShipping1F/scripts.pory"
	faceplayer
# 47 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_unset FLAG_CARGO_SHIP_EVENT_COMPLETE, SeabreezeShipping1F_EventScript_ElevatormanClosed
# 48 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_unset FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, SeabreezeShipping1F_EventScript_ElevatormanClosed
# 49 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Elevatorman_GoDown, MSGBOX_YESNO
# 50 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_eq VAR_RESULT, YES, SeabreezeShipping1F_EventScript_ElevatormanGoDown
# 51 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 52 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 53 "data/maps/SeabreezeShipping1F/scripts.pory"

# 54 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_ElevatormanClosed::
# 55 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Elevatorman_Closed, MSGBOX_NPC
# 56 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 57 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 58 "data/maps/SeabreezeShipping1F/scripts.pory"

# 59 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_ElevatormanGoDown::
# 60 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_0, 2
# 61 "data/maps/SeabreezeShipping1F/scripts.pory"
	closemessage
# 62 "data/maps/SeabreezeShipping1F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 63 "data/maps/SeabreezeShipping1F/scripts.pory"
	playse SE_ELEVATOR
# 64 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitse
# 65 "data/maps/SeabreezeShipping1F/scripts.pory"
	warp MAP_SEABREEZE_SHIPPING, 12, 4
# 66 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitstate
# 67 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 68 "data/maps/SeabreezeShipping1F/scripts.pory"

# 69 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Elevatorman_Closed:
# 70 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Sorry, kid, the building is\n"
# 71 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "closed.$"
# 72 "data/maps/SeabreezeShipping1F/scripts.pory"

# 73 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Elevatorman_GoDown:
# 74 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Would you like to go down?$"
