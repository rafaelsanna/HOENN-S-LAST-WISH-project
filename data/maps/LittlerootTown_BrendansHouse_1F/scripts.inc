# 1 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 2 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_MapScripts::
# 3 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, LittlerootTown_BrendansHouse_1F_OnLoad
# 4 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_BrendansHouse_1F_OnTransition
# 5 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_BrendansHouse_1F_OnFrame
# 6 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.byte 0
# 7 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 8 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_OnLoad:
# 9 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_1F_EventScript_SetMovingBoxes
# 10 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_set FLAG_RECEIVED_RUNNING_SHOES, LittlerootTown_BrendansHouse_1F_EventScript_CheckShowShoesManual
# 11 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 12 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 13 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_SetMovingBoxes::
# 14 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setmetatile 5, 4, METATILE_BrendansMaysHouse_MovingBox_Open, TRUE
# 15 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setmetatile 5, 2, METATILE_BrendansMaysHouse_MovingBox_Closed, TRUE
# 16 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 17 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 18 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_CheckShowShoesManual::
# 19 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	checkplayergender
# 20 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_1F_EventScript_ShowRunningShoesManual
# 21 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 22 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 23 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_ShowRunningShoesManual::
# 24 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setmetatile 3, 7, METATILE_BrendansMaysHouse_BookOnTable, TRUE
# 25 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 26 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 27 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_OnTransition:
# 28 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 3, LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToDoor
# 29 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 5, LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToStairs
# 30 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToTV
# 31 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 32 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 33 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToStairs::
# 34 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 8, 4
# 35 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 36 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 37 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 38 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToTV::
# 39 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 4, 5
# 40 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 41 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 42 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 43 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToDoor::
# 44 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 9, 8
# 45 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 46 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 47 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 48 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
@ Many of the below scripts have no gender check because they assume youre in the correct house
# 49 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
@ The below SS Ticket script uses Mays house state by accident(?), but theyre both set identically after the intro
# 50 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_OnFrame:
# 51 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 3, LittlerootTown_BrendansHouse_1F_EventScript_EnterHouseMovingIn
# 52 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 5, LittlerootTown_BrendansHouse_1F_EventScript_GoUpstairsToSetClock
# 53 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_1F_EventScript_PetalburgGymReport
# 54 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_HOUSES_STATE_MAY, 1, LittlerootTown_BrendansHouse_1F_EventScript_YoureNewNeighbor
# 55 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_HOUSES_STATE_MAY, 3, PlayersHouse_1F_EventScript_GetSSTicketAndSeeLatiTV
# 56 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.2byte 0
# 57 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 58 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_GoUpstairsToSetClock::
# 59 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 60 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	msgbox PlayersHouse_1F_Text_GoSetTheClock, MSGBOX_DEFAULT
# 61 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	closemessage
# 62 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PushTowardStairs
# 63 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYERS_HOUSE_1F_MOM, LittlerootTown_BrendansHouse_1F_Movement_PushTowardStairs
# 64 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 65 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 7, 1
# 66 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitstate
# 67 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	releaseall
# 68 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 69 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 70 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PushTowardStairs:
# 71 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 72 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 73 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 74 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_EnterHouseMovingIn::
# 75 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 76 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8004, LOCALID_PLAYERS_HOUSE_1F_MOM
# 77 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8005, MALE
# 78 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_EnterHouseMovingIn
# 79 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 80 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 81 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_PetalburgGymReport::
# 82 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 83 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8004, MALE
# 84 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8005, LOCALID_PLAYERS_HOUSE_1F_MOM
# 85 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_PetalburgGymReportMale
# 86 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 87 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 88 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_YoureNewNeighbor::
# 89 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 90 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_PIN
# 91 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, Common_Movement_ExclamationMark
# 92 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 93 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, Common_Movement_Delay48
# 94 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 95 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 96 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, LittlerootTown_BrendansHouse_1F_Movement_RivalMomApproach
# 97 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 98 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	special GetRivalSonDaughterString
# 99 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_OhYoureTheNewNeighbor, MSGBOX_DEFAULT
# 100 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_MET_RIVAL_MOM
# 101 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 2
# 102 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	releaseall
# 103 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 104 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 105 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_RivalMomApproach:
# 106 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 107 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 108 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 109 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 110 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 111 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 112 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 113 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 114 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_GoSeeRoom::
# 115 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 116 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8004, LOCALID_PLAYERS_HOUSE_1F_MOM
# 117 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8005, MALE
# 118 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement VAR_0x8004, Common_Movement_WalkInPlaceFasterLeft
# 119 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 120 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_MomGoSeeRoom
# 121 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 122 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 123 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival0::
# 124 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 125 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8008, 0
# 126 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto LittlerootTown_BrendansHouse_1F_EventScript_MeetRival
# 127 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 128 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 129 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival1::
# 130 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 131 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8008, 1
# 132 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto LittlerootTown_BrendansHouse_1F_EventScript_MeetRival
# 133 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 134 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 135 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival2::
# 136 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 137 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8008, 2
# 138 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto LittlerootTown_BrendansHouse_1F_EventScript_MeetRival
# 139 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 140 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 141 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival::
# 142 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_EXIT
# 143 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay 10
# 144 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_1F_RIVAL
# 145 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay 30
# 146 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_PIN
# 147 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, Common_Movement_ExclamationMark
# 148 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 149 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, Common_Movement_Delay48
# 150 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 151 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_ne VAR_0x8008, 1, LittlerootTown_BrendansHouse_1F_EventScript_PlayerFaceBrendan
# 152 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 153 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer0
# 154 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer1
# 155 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer2
# 156 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 157 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	closemessage
# 158 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse0
# 159 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse1
# 160 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse2
# 161 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_EXIT
# 162 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	removeobject LOCALID_RIVALS_HOUSE_1F_RIVAL
# 163 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_BRENDAN
# 164 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 165 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	@clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 166 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 167 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay 30
# 168 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 169 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 170 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	savebgm MUS_DUMMY
# 171 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	fadedefaultbgm
# 172 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	releaseall
# 173 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 174 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 175 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_PlayerFaceBrendan::
# 176 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 177 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 178 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 179 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 180 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer0::
# 181 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer0
# 182 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 183 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 184 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 185 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer1::
# 186 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer1
# 187 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 188 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 189 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 190 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer2::
# 191 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer2
# 192 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 193 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 194 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 195 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer0:
# 196 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 197 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 198 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 199 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 200 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 201 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 202 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 203 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 204 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 205 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer1:
# 206 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 207 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 208 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 209 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 210 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 211 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer2:
# 212 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 213 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 214 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 215 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 216 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 217 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 218 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 219 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 220 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 221 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanGoUpstairs0::
# 222 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit0
# 223 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs0
# 224 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 225 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 226 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 227 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanGoUpstairs1::
# 228 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit1
# 229 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs1
# 230 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 231 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 232 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 233 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanGoUpstairs2::
# 234 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit2
# 235 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs2
# 236 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 237 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 238 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 239 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit0:
# 240 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 241 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_8
# 242 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 243 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 244 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 245 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit1:
# 246 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 247 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_8
# 248 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 249 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 250 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 251 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 252 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 253 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 254 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit2:
# 255 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 256 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_8
# 257 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 258 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 259 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 260 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs0:
# 261 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 262 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 263 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 264 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 265 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 266 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 267 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 268 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs1:
# 269 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 270 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 271 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 272 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 273 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 274 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 275 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 276 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 277 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 278 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 279 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 280 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs2:
# 281 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 282 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 283 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 284 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 285 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 286 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 287 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 288 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse0::
# 289 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit0
# 290 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse0
# 291 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 292 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 293 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 294 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse1::
# 295 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit1
# 296 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse1
# 297 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 298 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 299 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 300 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse2::
# 301 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit2
# 302 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse2
# 303 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 304 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 305 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 306 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse0:
# 307 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 308 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 309 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 310 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 311 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 312 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 313 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 314 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 315 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 316 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse1:
# 317 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 318 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 319 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 320 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 321 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 322 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 323 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse2:
# 324 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 325 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 326 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 327 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 328 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 329 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 330 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 331 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 332 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 333 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_IsntItNiceInHere:
# 334 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Did you sleep well, dear?\n"
# 335 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Or did you have those strange dreams?$"
# 336 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 337 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_MoversPokemonGoSetClock:
# 338 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "The mover's POKéMON do all the work\n"
# 339 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "of moving us in and cleaning up after.\l"
# 340 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "This is so convenient!\p"
# 341 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "{PLAYER}, your room is upstairs.\n"
# 342 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Go check it out, dear!\p"
# 343 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "DAD bought you a new clock to mark\n"
# 344 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "our move here.\l"
# 345 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Don't forget to set it!$"
# 346 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 347 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_ArentYouInterestedInRoom:
# 348 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Well, {PLAYER}?\p"
# 349 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Aren't you interested in seeing your\n"
# 350 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "very own room?$"
# 351 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 352 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_GoSetTheClock:
# 353 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: {PLAYER}.\p"
# 354 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Go set the clock in your room, honey.$"
# 355 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 356 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_OhComeQuickly:
# 357 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Oh! {PLAYER}, {PLAYER}!\n"
# 358 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Quick! Come quickly!$"
# 359 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 360 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_MaybeDadWillBeOn:
# 361 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Look! It's PETALBURG GYM!\n"
# 362 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Maybe DAD will be on!$"
# 363 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 364 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_ItsOverWeMissedHim:
# 365 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Oh… It's over.\p"
# 366 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "I think DAD was on, but we missed him.\n"
# 367 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Too bad.$"
# 368 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 369 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_GoIntroduceYourselfNextDoor:
# 370 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Oh, that's right.\n"
# 371 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "PROFESSOR ACACIA mentioned you should\l"
# 372 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "visit her one of these days.\p"
# 373 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Why don't you go see her?\n"
# 374 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Might be a good way to get your mind\l"
# 375 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "off things...$"
# 376 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 377 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_SeeYouHoney:
# 378 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: See you, dear!$"
# 379 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 380 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_DidYouMeetProfBirch:
# 381 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Did you went to talk\n"
# 382 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "to PROF. ACACIA?$"
# 383 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 384 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_YouShouldRestABit:
# 385 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: How are you doing, {PLAYER}?\n"
# 386 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "You look a little tired.\p"
# 387 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "I think you should rest a bit.$"
# 388 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 389 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_TakeCareHoney:
# 390 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Take care, honey!$"
# 391 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 392 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_GotDadsBadgeHeresSomethingFromMom:
# 393 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Oh my! You've already come\n"
# 394 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "so far on your journey?\p"
# 395 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "That's incredible, dear...\n"
# 396 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Here, I think this might help you...$"
# 397 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 398 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_DontPushYourselfTooHard:
# 399 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Don't push yourself too hard, dear.\n"
# 400 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "You can always come home.\p"
# 401 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Go for it, honey!$"
# 402 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 403 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_IsThatAPokenav:
# 404 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: What's that thing, dear?\n"
# 405 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "A POKé-WHAT? From the DEVON people?\p"
# 406 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Back in my day, we just shouted\n"
# 407 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "really loud to talk to people!\p"
# 408 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Do I need to plug it in somewhere?\n"
# 409 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Or does it run on wishes?$"
# 410 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 411 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_RegisteredMom:
# 412 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Registered GRANDMA\n"
# 413 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 414 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 415 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_Vigoroth1:
# 416 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Fugiiiiih!$"
# 417 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 418 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_Vigoroth2:
# 419 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Huggoh, uggo uggo…$"
# 420 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 421 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_ReportFromPetalburgGym:
# 422 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "INTERVIEWER: …We brought you this\n"
# 423 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "report from in front of PETALBURG GYM.$"
# 424 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 425 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_TheresAMovieOnTV:
# 426 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "There is a movie on TV.\p"
# 427 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Two men are dancing on a big piano\n"
# 428 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "keyboard.\p"
# 429 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Better get going!$"
# 430 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 431 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_RunningShoesManual:
# 432 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "It's an ancient text about a mythical\n"
# 433 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "being from the forest...\p"
# 434 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "“It travels across time, appearing\n"
# 435 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "wherever forests bloom with life.\p"
# 436 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "“When the pure heart calls, it emerges\n"
# 437 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "from the depths of Ilex's embrace...”$"
# 438 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 439 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_TicketFromBrineyCameForYou:
# 440 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "CALENDULA: Hm?\p"
# 441 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Hey, it's {PLAYER}!\p"
# 442 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "It's been a while since I saw you,\n"
# 443 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "but you look…stronger, somehow.\p"
# 444 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "That's the impression I get.\n"
# 445 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "But I haven't given up yet!\p"
# 446 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Oh, yes, I have something for you.\n"
# 447 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "This came to you from someone named\l"
# 448 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "MR. BRINEY.$"
# 449 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 450 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_PortsInSlateportLilycove:
# 451 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "CALENDULA: Hm, a TICKET for a ferry?\p"
# 452 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "If I recall, there are ferry ports in\n"
# 453 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "SLATEPORT and LILYCOVE.$"
# 454 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 455 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_BetterGetBackToGym:
# 456 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "I'd better get back to PETALBURG GYM.\p"
# 457 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Your MOM thanks for looking after the house\n"
# 458 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "while I'm away.$"
# 459 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 460 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_DadShouldStayLonger:
# 461 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: That DAD of yours…\p"
# 462 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "He comes home for the first time in a\n"
# 463 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "while, but all he talks about is POKéMON.\p"
# 464 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "He should relax and stay a little longer.$"
# 465 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 466 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_IsThatABreakingStory:
# 467 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Is that a breaking news story?$"
# 468 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 469 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_LatiEmergencyNewsFlash:
# 470 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "We interrupt with a special\n"
# 471 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "astronomical bulletin!\p"
# 472 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Last night, a magnificent comet\n"
# 473 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "was visible across all of HOENN,\l"
# 474 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "illuminating the entire sky.\p"
# 475 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Rumors suggest this celestial event\n"
# 476 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "occurs only once every thousand years.\p"
# 477 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Some are linking it to a POKéMON,\n"
# 478 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "many made wishes upon its light,\p"
# 479 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "yet it remains shrouded in mystery.\n"
# 480 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Still, the lights felt truly magical...\p"
# 481 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "We now return you to your regular\n"
# 482 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "programming.$"
# 483 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 484 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_WhatColorDidTheySay:
# 485 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: {PLAYER}, you're still having\n"
# 486 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "those strange dreams almost every night...\p"
# 487 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "And now this comet...\n"
# 488 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Perhaps it's a sign... A heavenly sign...\p"
# 489 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Please be careful out there, dear.$"
# 490 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 491 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_StillUnknownPokemon:
# 492 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Isn't it amazing, the mysteries\n"
# 493 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "this world still holds?\p"
# 494 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Perhaps traveling will help you make\n"
# 495 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "sense of those strange dreams, dear.\p"
# 496 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "But do be careful out there.$"
