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
	checkplayergender
# 10 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_1F_EventScript_ShowPlayersGrandma
# 11 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_1F_EventScript_ShowRivalsGrandma
# 12 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_1F_EventScript_SetMovingBoxes
# 13 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_set FLAG_RECEIVED_RUNNING_SHOES, LittlerootTown_BrendansHouse_1F_EventScript_CheckShowShoesManual
# 14 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 15 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 16 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_ShowPlayersGrandma::
# 17 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 18 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 19 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 20 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 21 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_ShowRivalsGrandma::
# 22 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 23 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 24 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 25 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 26 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_SetMovingBoxes::
# 27 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setmetatile 5, 4, METATILE_BrendansMaysHouse_MovingBox_Open, TRUE
# 28 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setmetatile 5, 2, METATILE_BrendansMaysHouse_MovingBox_Closed, TRUE
# 29 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 30 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 31 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_CheckShowShoesManual::
# 32 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	checkplayergender
# 33 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_1F_EventScript_ShowRunningShoesManual
# 34 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 35 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 36 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_ShowRunningShoesManual::
# 37 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setmetatile 3, 7, METATILE_BrendansMaysHouse_BookOnTable, TRUE
# 38 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 39 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 40 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_OnTransition:
# 41 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 3, LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToDoor
# 42 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 5, LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToStairs
# 43 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToTV
# 44 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 45 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 46 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToStairs::
# 47 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 8, 4
# 48 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 49 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 50 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 51 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToTV::
# 52 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 4, 5
# 53 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 54 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 55 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 56 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MoveMomToDoor::
# 57 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 9, 8
# 58 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 59 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 60 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 61 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
@ Many of the below scripts have no gender check because they assume youre in the correct house
# 62 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
@ The below SS Ticket script uses Mays house state by accident(?), but theyre both set identically after the intro
# 63 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_OnFrame:
# 64 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 3, LittlerootTown_BrendansHouse_1F_EventScript_EnterHouseMovingIn
# 65 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 5, LittlerootTown_BrendansHouse_1F_EventScript_GoUpstairsToSetClock
# 66 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_1F_EventScript_PetalburgGymReport
# 67 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_HOUSES_STATE_MAY, 1, LittlerootTown_BrendansHouse_1F_EventScript_YoureNewNeighbor
# 68 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_HOUSES_STATE_MAY, 3, PlayersHouse_1F_EventScript_GetSSTicketAndSeeLatiTV
# 69 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.2byte 0
# 70 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 71 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_GoUpstairsToSetClock::
# 72 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 73 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	msgbox PlayersHouse_1F_Text_GoSetTheClock, MSGBOX_DEFAULT
# 74 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	closemessage
# 75 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PushTowardStairs
# 76 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYERS_HOUSE_1F_MOM, LittlerootTown_BrendansHouse_1F_Movement_PushTowardStairs
# 77 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 78 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 7, 1
# 79 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitstate
# 80 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	releaseall
# 81 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 82 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 83 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PushTowardStairs:
# 84 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 85 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 86 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 87 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_EnterHouseMovingIn::
# 88 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 89 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8004, LOCALID_PLAYERS_HOUSE_1F_MOM
# 90 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8005, MALE
# 91 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_EnterHouseMovingIn
# 92 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 93 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 94 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_PetalburgGymReport::
# 95 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 96 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8004, MALE
# 97 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8005, LOCALID_PLAYERS_HOUSE_1F_MOM
# 98 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_PetalburgGymReportMale
# 99 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 100 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 101 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_YoureNewNeighbor::
# 102 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 103 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_PIN
# 104 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, Common_Movement_ExclamationMark
# 105 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 106 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, Common_Movement_Delay48
# 107 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 108 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 109 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, LittlerootTown_BrendansHouse_1F_Movement_RivalMomApproach
# 110 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 111 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	special GetRivalSonDaughterString
# 112 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_OhYoureTheNewNeighbor, MSGBOX_DEFAULT
# 113 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_MET_RIVAL_MOM
# 114 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 2
# 115 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	releaseall
# 116 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 117 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 118 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_RivalMomApproach:
# 119 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 120 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 121 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 122 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 123 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 124 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 125 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 126 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 127 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_GoSeeRoom::
# 128 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 129 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8004, LOCALID_PLAYERS_HOUSE_1F_MOM
# 130 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8005, MALE
# 131 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement VAR_0x8004, Common_Movement_WalkInPlaceFasterLeft
# 132 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 133 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_MomGoSeeRoom
# 134 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 135 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 136 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival0::
# 137 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 138 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8008, 0
# 139 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto LittlerootTown_BrendansHouse_1F_EventScript_MeetRival
# 140 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 141 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 142 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival1::
# 143 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 144 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8008, 1
# 145 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto LittlerootTown_BrendansHouse_1F_EventScript_MeetRival
# 146 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 147 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 148 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival2::
# 149 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	lockall
# 150 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_0x8008, 2
# 151 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	goto LittlerootTown_BrendansHouse_1F_EventScript_MeetRival
# 152 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 153 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 154 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_MeetRival::
# 155 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_EXIT
# 156 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay 10
# 157 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_1F_RIVAL
# 158 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay 30
# 159 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_PIN
# 160 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, Common_Movement_ExclamationMark
# 161 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 162 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, Common_Movement_Delay48
# 163 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 164 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_ne VAR_0x8008, 1, LittlerootTown_BrendansHouse_1F_EventScript_PlayerFaceBrendan
# 165 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 166 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer0
# 167 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer1
# 168 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer2
# 169 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 170 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	closemessage
# 171 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse0
# 172 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse1
# 173 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse2
# 174 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	playse SE_EXIT
# 175 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	removeobject LOCALID_RIVALS_HOUSE_1F_RIVAL
# 176 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_BRENDAN
# 177 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 178 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	@clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 179 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 180 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay 30
# 181 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 182 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 183 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	savebgm MUS_DUMMY
# 184 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	fadedefaultbgm
# 185 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	releaseall
# 186 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	end
# 187 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 188 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_PlayerFaceBrendan::
# 189 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 190 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 191 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 192 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 193 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer0::
# 194 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer0
# 195 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 196 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 197 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 198 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer1::
# 199 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer1
# 200 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 201 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 202 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 203 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanApproachPlayer2::
# 204 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer2
# 205 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 206 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 207 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 208 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer0:
# 209 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 210 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 211 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 212 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 213 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 214 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 215 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 216 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 217 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 218 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer1:
# 219 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 220 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 221 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 222 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 223 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 224 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanApproachPlayer2:
# 225 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 226 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 227 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 228 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 229 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 230 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 231 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 232 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 233 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 234 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanGoUpstairs0::
# 235 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit0
# 236 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs0
# 237 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 238 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 239 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 240 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanGoUpstairs1::
# 241 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit1
# 242 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs1
# 243 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 244 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 245 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 246 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanGoUpstairs2::
# 247 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit2
# 248 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs2
# 249 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 250 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 251 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 252 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit0:
# 253 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 254 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_8
# 255 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 256 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 257 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 258 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit1:
# 259 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 260 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_8
# 261 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 262 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 263 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 264 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 265 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 266 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 267 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit2:
# 268 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_16
# 269 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	delay_8
# 270 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 271 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 272 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 273 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs0:
# 274 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 275 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 276 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 277 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 278 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 279 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 280 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 281 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs1:
# 282 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 283 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 284 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 285 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 286 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 287 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 288 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 289 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 290 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 291 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 292 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 293 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanGoUpstairs2:
# 294 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 295 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 296 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 297 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 298 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_up
# 299 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 300 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 301 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse0::
# 302 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit0
# 303 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse0
# 304 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 305 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 306 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 307 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse1::
# 308 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit1
# 309 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse1
# 310 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 311 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 312 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 313 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_EventScript_BrendanExitHouse2::
# 314 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_1F_Movement_PlayerWatchBrendanExit2
# 315 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse2
# 316 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	waitmovement 0
# 317 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	return
# 318 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 319 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse0:
# 320 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 321 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_right
# 322 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 323 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 324 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 325 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 326 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 327 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 328 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 329 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse1:
# 330 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 331 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 332 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 333 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 334 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 335 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 336 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
LittlerootTown_BrendansHouse_1F_Movement_BrendanExitHouse2:
# 337 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 338 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_left
# 339 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 340 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 341 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 342 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 343 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	walk_down
# 344 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	step_end
# 345 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 346 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_IsntItNiceInHere:
# 347 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Did you sleep well, dear?\n"
# 348 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Or did you have those strange dreams?$"
# 349 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 350 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_MoversPokemonGoSetClock:
# 351 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "The mover's POKéMON do all the work\n"
# 352 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "of moving us in and cleaning up after.\l"
# 353 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "This is so convenient!\p"
# 354 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "{PLAYER}, your room is upstairs.\n"
# 355 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Go check it out, dear!\p"
# 356 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "You bought a new clock to mark\n"
# 357 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "our move here.\l"
# 358 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Don't forget to set it!$"
# 359 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 360 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_ArentYouInterestedInRoom:
# 361 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Well, {PLAYER}?\p"
# 362 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Aren't you interested in seeing your\n"
# 363 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "very own room?$"
# 364 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 365 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_GoSetTheClock:
# 366 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: {PLAYER}.\p"
# 367 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Go set the clock in your room, honey.$"
# 368 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 369 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_OhComeQuickly:
# 370 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Oh! {PLAYER}, {PLAYER}!\n"
# 371 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Quick! Come quickly!$"
# 372 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 373 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_MaybeDadWillBeOn:
# 374 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Look! It's PETALBURG GYM!\n"
# 375 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Maybe DAD will be on!$"
# 376 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 377 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_ItsOverWeMissedHim:
# 378 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Oh… It's over.\p"
# 379 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "I think DAD was on, but we missed him.\n"
# 380 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Too bad.$"
# 381 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 382 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_GoIntroduceYourselfNextDoor:
# 383 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Oh, that's right.\n"
# 384 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "PROFESSOR ACACIA mentioned you should\l"
# 385 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "visit her one of these days.\p"
# 386 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Why don't you go see her?\n"
# 387 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Might be a good way to get your mind\l"
# 388 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "off things...$"
# 389 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 390 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_SeeYouHoney:
# 391 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: See you, dear!$"
# 392 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 393 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_DidYouMeetProfBirch:
# 394 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Did you went to talk\n"
# 395 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "to PROF. ACACIA?$"
# 396 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 397 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_YouShouldRestABit:
# 398 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: How are you doing, {PLAYER}?\n"
# 399 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "You look a little tired.\p"
# 400 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "I think you should rest a bit.$"
# 401 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 402 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_TakeCareHoney:
# 403 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Take care, honey!$"
# 404 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 405 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_GotDadsBadgeHeresSomethingFromMom:
# 406 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Oh my! You've already come\n"
# 407 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "so far on your journey?\p"
# 408 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "That's incredible, dear…\n"
# 409 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Here, I think this might help you…$"
# 410 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 411 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_DontPushYourselfTooHard:
# 412 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Don't push yourself too hard.\n"
# 413 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "dear.\p"
# 414 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "You can come home whenever you want.$"
# 415 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 416 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_IsThatAPokenav:
# 417 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: What's that thing, dear?\n"
# 418 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "A POKé-WHAT? From the DEVON people?\p"
# 419 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Back in my day, we just shouted\n"
# 420 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "really loud to talk to people!\p"
# 421 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Do I need to plug it in somewhere?\n"
# 422 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Or does it run on wishes?$"
# 423 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 424 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_RegisteredMom:
# 425 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Registered GRANDMA\n"
# 426 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 427 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 428 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_Vigoroth1:
# 429 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Fugiiiiih!$"
# 430 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 431 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_Vigoroth2:
# 432 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Huggoh, uggo uggo…$"
# 433 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 434 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_ReportFromPetalburgGym:
# 435 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "INTERVIEWER: …We brought you this\n"
# 436 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "report from in front of PETALBURG GYM.$"
# 437 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 438 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_TheresAMovieOnTV:
# 439 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "There is a movie on TV.\p"
# 440 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Two men are dancing on a big piano\n"
# 441 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "keyboard.\p"
# 442 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Better get going!$"
# 443 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 444 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_RunningShoesManual:
# 445 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "It's an ancient text about a mythical\n"
# 446 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "being from the forest…\p"
# 447 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "“It travels across time, appearing\n"
# 448 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "wherever forests bloom with life.\p"
# 449 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "“When the pure heart calls, it emerges\n"
# 450 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "from the depths of Ilex's embrace…”$"
# 451 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 452 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_TicketFromBrineyCameForYou:
# 453 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "CALENDULA: Hm?\p"
# 454 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Hey, it's {PLAYER}!\p"
# 455 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "It's been a while since I saw you,\n"
# 456 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "but you look… stronger, somehow.\p"
# 457 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "That's the impression I get.\n"
# 458 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "But I haven't given up yet!\p"
# 459 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Oh, yes, I have something for you.\n"
# 460 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "This came to you from someone named\l"
# 461 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "MR. BRINEY.$"
# 462 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 463 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_PortsInSlateportLilycove:
# 464 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "CALENDULA: Hm, a TICKET for a ferry?\p"
# 465 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "If I recall, there are ferry ports in\n"
# 466 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "SLATEPORT and LILYCOVE.$"
# 467 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 468 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_BetterGetBackToGym:
# 469 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "I'd better get back to PETALBURG GYM.\p"
# 470 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Your MOM thanks for looking after\n"
# 471 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "the house while I'm away.$"
# 472 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 473 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_DadShouldStayLonger:
# 474 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: That DAD of yours…\p"
# 475 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "He comes home for the first time in a\n"
# 476 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "while, but all he talks about is POKéMON.\p"
# 477 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "He should relax and stay a little longer.$"
# 478 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 479 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_IsThatABreakingStory:
# 480 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Is that a breaking news story?$"
# 481 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 482 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_LatiEmergencyNewsFlash:
# 483 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "REPORTER: We interrupt with a special\n"
# 484 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "astronomical bulletin!\p"
# 485 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Last night, a magnificent comet was\n"
# 486 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "visible in the sky all throughout HOENN.\p"
# 487 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Rumors suggest this celestial event\n"
# 488 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "occurs only once every thousand years.\p"
# 489 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Some astronomers have claimed that the\n"
# 490 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "comet may be linked to a POKéMON, but\l"
# 491 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "the data is so far inconclusive.\p"
# 492 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "It's been reported that crowds of\n"
# 493 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "people gathered on the streets to\l"
# 494 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "wish on this falling star.\p"
# 495 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "And now, for the weather…$"
# 496 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 497 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_WhatColorDidTheySay:
# 498 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: {PLAYER}, you're still having\n"
# 499 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "those strange dreams almost every\n"
# 500 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "night…\p"
# 501 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "And now this comet…\n"
# 502 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Perhaps it's a sign… A heavenly sign…\p"
# 503 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Please be careful out there, dear.$"
# 504 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"

# 505 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
PlayersHouse_1F_Text_StillUnknownPokemon:
# 506 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "GRANDMA: Isn't it amazing, the mysteries\n"
# 507 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "this world still holds?\p"
# 508 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "Perhaps traveling will help you make\n"
# 509 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "sense of those strange dreams, dear.\p"
# 510 "data/maps/LittlerootTown_BrendansHouse_1F/scripts.pory"
	.string "But do be careful out there.$"
