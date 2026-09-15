# 1 "data/maps/CargoShipB1FHold/scripts.pory"

# 2 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_MapScripts::
# 3 "data/maps/CargoShipB1FHold/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, CargoShipB1FHold_OnTransition
# 4 "data/maps/CargoShipB1FHold/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, CargoShipB1FHold_OnWarp
# 5 "data/maps/CargoShipB1FHold/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, CargoShipB1FHold_OnFrame
# 6 "data/maps/CargoShipB1FHold/scripts.pory"
	.byte 0
# 7 "data/maps/CargoShipB1FHold/scripts.pory"

# 8 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_OnTransition:
# 9 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_0, 0
# 10 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_2, 0
# 11 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_unset FLAG_CARGO_SHIP_B1F_HOLD_INTRO_COMPLETE, CargoShipB1FHold_EventScript_HideLuka
# 12 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_1, 1
# 13 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_set FLAG_CARGO_SHIP_EVENT_COMPLETE, CargoShipB1FHold_EventScript_SetLukaAfterConclusion
# 14 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_set FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, CargoShipB1FHold_EventScript_SetKeyCardReturnPending
# 15 "data/maps/CargoShipB1FHold/scripts.pory"
	clearflag FLAG_HIDE_CARGO_SHIP_B1F_HOLD_LUKA
# 16 "data/maps/CargoShipB1FHold/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, 20, 1
# 17 "data/maps/CargoShipB1FHold/scripts.pory"
	setobjectmovementtype LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, MOVEMENT_TYPE_FACE_DOWN
# 18 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 19 "data/maps/CargoShipB1FHold/scripts.pory"

# 20 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_SetKeyCardReturnPending::
# 21 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_2, 1
# 22 "data/maps/CargoShipB1FHold/scripts.pory"
	clearflag FLAG_HIDE_CARGO_SHIP_B1F_HOLD_LUKA
# 23 "data/maps/CargoShipB1FHold/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, 20, 1
# 24 "data/maps/CargoShipB1FHold/scripts.pory"
	setobjectmovementtype LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, MOVEMENT_TYPE_FACE_DOWN
# 25 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 26 "data/maps/CargoShipB1FHold/scripts.pory"

# 27 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_SetLukaAfterConclusion::
# 28 "data/maps/CargoShipB1FHold/scripts.pory"
	setflag FLAG_HIDE_CARGO_SHIP_B1F_HOLD_LUKA
# 29 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 30 "data/maps/CargoShipB1FHold/scripts.pory"

# 31 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_HideLuka::
# 32 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_2, 0
# 33 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_1, 0
# 34 "data/maps/CargoShipB1FHold/scripts.pory"
	setflag FLAG_HIDE_CARGO_SHIP_B1F_HOLD_LUKA
# 35 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 36 "data/maps/CargoShipB1FHold/scripts.pory"

# 37 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_OnWarp:
# 38 "data/maps/CargoShipB1FHold/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, CargoShipB1FHold_EventScript_SetArrivalPending
# 39 "data/maps/CargoShipB1FHold/scripts.pory"
	.2byte 0
# 40 "data/maps/CargoShipB1FHold/scripts.pory"

# 41 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_SetArrivalPending::
# 42 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_0, 1
# 43 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_1, 1
# 44 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 45 "data/maps/CargoShipB1FHold/scripts.pory"

# 46 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_OnFrame:
# 47 "data/maps/CargoShipB1FHold/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, CargoShipB1FHold_EventScript_Arrival
# 48 "data/maps/CargoShipB1FHold/scripts.pory"
	map_script_2 VAR_TEMP_2, 1, CargoShipB1FHold_EventScript_KeyCardReturn
# 49 "data/maps/CargoShipB1FHold/scripts.pory"
	.2byte 0
# 50 "data/maps/CargoShipB1FHold/scripts.pory"

# 51 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_Arrival::
# 52 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_0, 2
# 53 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_1, 1
# 54 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_set FLAG_CARGO_SHIP_B1F_HOLD_INTRO_COMPLETE, CargoShipB1FHold_EventScript_EndArrival
# 55 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_unset FLAG_LUKA_CARGO_SHIP_ENCOUNTERED, CargoShipB1FHold_EventScript_EndArrival
# 56 "data/maps/CargoShipB1FHold/scripts.pory"
	lockall
# 57 "data/maps/CargoShipB1FHold/scripts.pory"
	applymovement LOCALID_PLAYER, CargoShipB1FHold_Movement_PlayerArrival
# 58 "data/maps/CargoShipB1FHold/scripts.pory"
	waitmovement 0
# 59 "data/maps/CargoShipB1FHold/scripts.pory"
	clearflag FLAG_HIDE_CARGO_SHIP_B1F_HOLD_LUKA
# 60 "data/maps/CargoShipB1FHold/scripts.pory"
	addobject LOCALID_CARGO_SHIP_B1F_HOLD_LUKA
# 61 "data/maps/CargoShipB1FHold/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, CargoShipB1FHold_Movement_LukaArrival
# 62 "data/maps/CargoShipB1FHold/scripts.pory"
	waitmovement 0
# 63 "data/maps/CargoShipB1FHold/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, Common_Movement_FacePlayer
# 64 "data/maps/CargoShipB1FHold/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 65 "data/maps/CargoShipB1FHold/scripts.pory"
	waitmovement 0
# 66 "data/maps/CargoShipB1FHold/scripts.pory"
	msgbox CargoShipB1FHold_Text_LukaKeepYourVoiceLow, MSGBOX_DEFAULT
# 67 "data/maps/CargoShipB1FHold/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, 20, 1
# 68 "data/maps/CargoShipB1FHold/scripts.pory"
	setflag FLAG_CARGO_SHIP_B1F_HOLD_INTRO_COMPLETE
# 69 "data/maps/CargoShipB1FHold/scripts.pory"
	releaseall
# 70 "data/maps/CargoShipB1FHold/scripts.pory"

# 71 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_EndArrival:
# 72 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 73 "data/maps/CargoShipB1FHold/scripts.pory"

# 74 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_Luka::
# 75 "data/maps/CargoShipB1FHold/scripts.pory"
	lock
# 76 "data/maps/CargoShipB1FHold/scripts.pory"
	faceplayer
# 77 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_set FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, CargoShipB1FHold_EventScript_LukaAfterKeyCard
# 78 "data/maps/CargoShipB1FHold/scripts.pory"
	msgbox CargoShipB1FHold_Text_LukaKeepYourVoiceLow, MSGBOX_DEFAULT
# 79 "data/maps/CargoShipB1FHold/scripts.pory"
	release
# 80 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 81 "data/maps/CargoShipB1FHold/scripts.pory"

# 82 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_LukaAfterKeyCard::
# 83 "data/maps/CargoShipB1FHold/scripts.pory"
	release
# 84 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 85 "data/maps/CargoShipB1FHold/scripts.pory"

# 86 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_AquaGrunt::
# 87 "data/maps/CargoShipB1FHold/scripts.pory"
	msgbox CargoShipB1FHold_Text_AquaGruntCaughtPlayer, MSGBOX_DEFAULT
# 88 "data/maps/CargoShipB1FHold/scripts.pory"
	closemessage
# 89 "data/maps/CargoShipB1FHold/scripts.pory"
	fadescreen FADE_TO_BLACK
# 90 "data/maps/CargoShipB1FHold/scripts.pory"
	warp MAP_CARGO_SHIP_B1FHOLD, 20, 2
# 91 "data/maps/CargoShipB1FHold/scripts.pory"
	waitstate
# 92 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 93 "data/maps/CargoShipB1FHold/scripts.pory"

# 94 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_KeyCard::
# 95 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_0x8000, ITEM_SB_KEY_CARD
# 96 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_0x8001, 1
# 97 "data/maps/CargoShipB1FHold/scripts.pory"
	call Std_FindItem
# 98 "data/maps/CargoShipB1FHold/scripts.pory"
	goto_if_eq VAR_0x8007, FALSE, CargoShipB1FHold_EventScript_KeyCardEnd
# 99 "data/maps/CargoShipB1FHold/scripts.pory"
	setflag FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND
# 100 "data/maps/CargoShipB1FHold/scripts.pory"
	fadescreen FADE_TO_BLACK
# 101 "data/maps/CargoShipB1FHold/scripts.pory"
	warp MAP_CARGO_SHIP_B1FHOLD, 20, 2
# 102 "data/maps/CargoShipB1FHold/scripts.pory"
	waitstate
# 103 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 104 "data/maps/CargoShipB1FHold/scripts.pory"

# 105 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_KeyCardEnd::
# 106 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 107 "data/maps/CargoShipB1FHold/scripts.pory"

# 108 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_EventScript_KeyCardReturn::
# 109 "data/maps/CargoShipB1FHold/scripts.pory"
	setvar VAR_TEMP_2, 0
# 110 "data/maps/CargoShipB1FHold/scripts.pory"
	lockall
# 111 "data/maps/CargoShipB1FHold/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_B1F_HOLD_LUKA, Common_Movement_FaceDown
# 112 "data/maps/CargoShipB1FHold/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 113 "data/maps/CargoShipB1FHold/scripts.pory"
	waitmovement 0
# 114 "data/maps/CargoShipB1FHold/scripts.pory"
	msgbox CargoShipB1FHold_Text_LukaFoundKeyCard, MSGBOX_DEFAULT
# 115 "data/maps/CargoShipB1FHold/scripts.pory"
	closemessage
# 116 "data/maps/CargoShipB1FHold/scripts.pory"
	fadescreen FADE_TO_BLACK
# 117 "data/maps/CargoShipB1FHold/scripts.pory"
	warp MAP_SLATEPORT_CITY, 10, 45
# 118 "data/maps/CargoShipB1FHold/scripts.pory"
	waitstate
# 119 "data/maps/CargoShipB1FHold/scripts.pory"
	end
# 120 "data/maps/CargoShipB1FHold/scripts.pory"

# 121 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_Movement_PlayerArrival:
# 122 "data/maps/CargoShipB1FHold/scripts.pory"
	walk_down
# 123 "data/maps/CargoShipB1FHold/scripts.pory"
	walk_down
# 124 "data/maps/CargoShipB1FHold/scripts.pory"
	step_end
# 125 "data/maps/CargoShipB1FHold/scripts.pory"

# 126 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_Movement_LukaArrival:
# 127 "data/maps/CargoShipB1FHold/scripts.pory"
	walk_down
# 128 "data/maps/CargoShipB1FHold/scripts.pory"
	step_end
# 129 "data/maps/CargoShipB1FHold/scripts.pory"

# 130 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_Text_LukaKeepYourVoiceLow:
# 131 "data/maps/CargoShipB1FHold/scripts.pory"
	.string "LUKA: Keep your voice low. Let's quickly\n"
# 132 "data/maps/CargoShipB1FHold/scripts.pory"
	.string "find out what they're plotting and get\l"
# 133 "data/maps/CargoShipB1FHold/scripts.pory"
	.string "out of here.$"
# 134 "data/maps/CargoShipB1FHold/scripts.pory"

# 135 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_Text_AquaGruntCaughtPlayer:
# 136 "data/maps/CargoShipB1FHold/scripts.pory"
	.string "Hey! You're not supposed to be here!$"
# 137 "data/maps/CargoShipB1FHold/scripts.pory"

# 138 "data/maps/CargoShipB1FHold/scripts.pory"
CargoShipB1FHold_Text_LukaFoundKeyCard:
# 139 "data/maps/CargoShipB1FHold/scripts.pory"
	.string "LUKA: You got something? Great! Let's\n"
# 140 "data/maps/CargoShipB1FHold/scripts.pory"
	.string "get out of here.$"
