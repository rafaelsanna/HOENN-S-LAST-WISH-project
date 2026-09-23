# 1 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 2 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_MapScripts::
# 3 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, LittlerootTown_MaysHouse_1F_OnLoad
# 4 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_MaysHouse_1F_OnTransition
# 5 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_MaysHouse_1F_OnFrame
# 6 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.byte 0
# 7 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 8 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_OnLoad:
# 9 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	checkplayergender
# 10 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_1F_EventScript_ShowRivalsGrandma
# 11 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_MaysHouse_1F_EventScript_ShowPlayersGrandma
# 12 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_MaysHouse_1F_EventScript_SetMovingBoxes
# 13 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_set FLAG_RECEIVED_RUNNING_SHOES, LittlerootTown_MaysHouse_1F_EventScript_CheckShowShoesManual
# 14 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 15 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 16 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_ShowPlayersGrandma::
# 17 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 18 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 19 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 20 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 21 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_ShowRivalsGrandma::
# 22 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 23 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 24 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 25 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 26 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_SetMovingBoxes::
# 27 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setmetatile 5, 4, METATILE_BrendansMaysHouse_MovingBox_Open, TRUE
# 28 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setmetatile 5, 2, METATILE_BrendansMaysHouse_MovingBox_Closed, TRUE
# 29 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 30 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 31 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_CheckShowShoesManual::
# 32 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	checkplayergender
# 33 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_MaysHouse_1F_EventScript_ShowRunningShoesManual
# 34 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 35 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 36 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_ShowRunningShoesManual::
# 37 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setmetatile 6, 7, METATILE_BrendansMaysHouse_BookOnTable, TRUE
# 38 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 39 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 40 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_OnTransition:
# 41 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 3, LittlerootTown_MaysHouse_1F_EventScript_MoveMomToDoor
# 42 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 5, LittlerootTown_MaysHouse_1F_EventScript_MoveMomToStairs
# 43 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_MaysHouse_1F_EventScript_MoveMomToTV
# 44 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 45 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 46 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MoveMomToStairs::
# 47 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 2, 4
# 48 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 49 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 50 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 51 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MoveMomToTV::
# 52 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 6, 5
# 53 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 54 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 55 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 56 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MoveMomToDoor::
# 57 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setobjectxyperm LOCALID_PLAYERS_HOUSE_1F_MOM, 1, 8
# 58 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setobjectmovementtype LOCALID_PLAYERS_HOUSE_1F_MOM, MOVEMENT_TYPE_FACE_UP
# 59 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 60 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 61 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
@ Many of the below scripts have no gender check because they assume youre in the correct house
# 62 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_OnFrame:
# 63 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 3, LittlerootTown_MaysHouse_1F_EventScript_EnterHouseMovingIn
# 64 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 5, LittlerootTown_MaysHouse_1F_EventScript_GoUpstairsToSetClock
# 65 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_MaysHouse_1F_EventScript_PetalburgGymReport
# 66 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 1, LittlerootTown_MaysHouse_1F_EventScript_YoureNewNeighbor
# 67 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_HOUSES_STATE_MAY, 3, PlayersHouse_1F_EventScript_GetSSTicketAndSeeLatiTV
# 68 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.2byte 0
# 69 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 70 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_GoUpstairsToSetClock::
# 71 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 72 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox PlayersHouse_1F_Text_GoSetTheClock, MSGBOX_DEFAULT
# 73 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	closemessage
# 74 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PushTowardStairs
# 75 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYERS_HOUSE_1F_MOM, LittlerootTown_MaysHouse_1F_Movement_PushTowardStairs
# 76 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 77 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 1, 1
# 78 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitstate
# 79 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	releaseall
# 80 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 81 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 82 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_PushTowardStairs:
# 83 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 84 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 85 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 86 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_EnterHouseMovingIn::
# 87 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 88 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8004, LOCALID_PLAYERS_HOUSE_1F_MOM
# 89 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8005, FEMALE
# 90 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_EnterHouseMovingIn
# 91 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 92 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 93 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_PetalburgGymReport::
# 94 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 95 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8004, FEMALE
# 96 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8005, LOCALID_PLAYERS_HOUSE_1F_MOM
# 97 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_PetalburgGymReportFemale
# 98 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 99 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 100 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_YoureNewNeighbor::
# 101 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 102 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	playse SE_PIN
# 103 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, Common_Movement_ExclamationMark
# 104 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 105 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, Common_Movement_Delay48
# 106 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 107 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 108 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_MOM, LittlerootTown_MaysHouse_1F_Movement_RivalMomApproach
# 109 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 110 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	special GetRivalSonDaughterString
# 111 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_OhYoureTheNewNeighbor, MSGBOX_DEFAULT
# 112 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setflag FLAG_MET_RIVAL_MOM
# 113 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 2
# 114 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	releaseall
# 115 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 116 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 117 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_RivalMomApproach:
# 118 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 119 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 120 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 121 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 122 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 123 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 124 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 125 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 126 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_EventScript_RivalMom::
# 127 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lock
# 128 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	faceplayer
# 129 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_ROUTE103, RivalsHouse_1F_EventScript_GoHomeEverySoOften
# 130 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto_if_set FLAG_SYS_POKEMON_GET, RivalsHouse_1F_EventScript_RivalIsOnRoute103
# 131 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 3, RivalsHouse_1F_EventScript_RivalTooBusy
# 132 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	special GetRivalSonDaughterString
# 133 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_LikeChildLikeFather, MSGBOX_DEFAULT
# 134 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	release
# 135 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 136 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 137 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_EventScript_RivalTooBusy::
# 138 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_TooBusyToNoticeVisit, MSGBOX_DEFAULT
# 139 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	release
# 140 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 141 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 142 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_EventScript_RivalIsOnRoute103::
# 143 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_WentOutToRoute103, MSGBOX_DEFAULT
# 144 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	release
# 145 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 146 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 147 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_EventScript_GoHomeEverySoOften::
# 148 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_ShouldGoHomeEverySoOften, MSGBOX_DEFAULT
# 149 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	release
# 150 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 151 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 152 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_EventScript_RivalSibling::
# 153 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lock
# 154 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	faceplayer
# 155 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	special GetPlayerBigGuyGirlString
# 156 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_DoYouHavePokemon, MSGBOX_DEFAULT
# 157 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	release
# 158 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 159 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 160 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_GoSeeRoom::
# 161 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 162 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8004, LOCALID_PLAYERS_HOUSE_1F_MOM
# 163 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8005, FEMALE
# 164 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement VAR_0x8004, Common_Movement_WalkInPlaceFasterRight
# 165 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 166 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto PlayersHouse_1F_EventScript_MomGoSeeRoom
# 167 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 168 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 169 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MeetRival0::
# 170 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 171 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8008, 0
# 172 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto LittlerootTown_MaysHouse_1F_EventScript_MeetRival
# 173 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 174 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 175 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MeetRival1::
# 176 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 177 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8008, 1
# 178 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto LittlerootTown_MaysHouse_1F_EventScript_MeetRival
# 179 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 180 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 181 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MeetRival2::
# 182 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	lockall
# 183 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_0x8008, 2
# 184 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	goto LittlerootTown_MaysHouse_1F_EventScript_MeetRival
# 185 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 186 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 187 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MeetRival::
# 188 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	playse SE_EXIT
# 189 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay 10
# 190 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_1F_RIVAL
# 191 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay 30
# 192 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	playse SE_PIN
# 193 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, Common_Movement_ExclamationMark
# 194 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 195 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, Common_Movement_Delay48
# 196 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 197 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_ne VAR_0x8008, 1, LittlerootTown_MaysHouse_1F_EventScript_PlayerFaceMay
# 198 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 199 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_MaysHouse_1F_EventScript_MayApproachPlayer0
# 200 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_MaysHouse_1F_EventScript_MayApproachPlayer1
# 201 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_MaysHouse_1F_EventScript_MayApproachPlayer2
# 202 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	msgbox RivalsHouse_1F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 203 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	closemessage
# 204 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_MaysHouse_1F_EventScript_MayExitHouse0
# 205 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_MaysHouse_1F_EventScript_MayExitHouse1
# 206 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_MaysHouse_1F_EventScript_MayExitHouse2
# 207 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	playse SE_EXIT
# 208 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	removeobject LOCALID_RIVALS_HOUSE_1F_RIVAL
# 209 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MAY
# 210 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 211 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 212 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay 30
# 213 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 214 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 215 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	savebgm MUS_DUMMY
# 216 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	fadedefaultbgm
# 217 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	releaseall
# 218 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	end
# 219 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 220 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_PlayerFaceMay::
# 221 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 222 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 223 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 224 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 225 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayApproachPlayer0::
# 226 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayApproachPlayer0
# 227 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 228 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 229 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 230 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayApproachPlayer1::
# 231 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayApproachPlayer1
# 232 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 233 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 234 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 235 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayApproachPlayer2::
# 236 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayApproachPlayer2
# 237 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 238 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 239 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 240 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayApproachPlayer0:
# 241 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 242 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 243 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 244 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 245 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 246 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 247 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 248 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 249 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 250 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayApproachPlayer1:
# 251 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 252 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 253 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 254 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 255 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 256 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayApproachPlayer2:
# 257 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 258 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_right
# 259 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 260 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 261 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 262 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 263 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 264 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 265 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 266 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayGoUpstairs0::
# 267 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit0
# 268 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayGoUpstairs0
# 269 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 270 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 271 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 272 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayGoUpstairs1::
# 273 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit1
# 274 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayGoUpstairs1
# 275 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 276 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 277 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 278 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayGoUpstairs2::
# 279 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit2
# 280 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayGoUpstairs2
# 281 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 282 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 283 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 284 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit0:
# 285 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_16
# 286 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_8
# 287 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 288 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 289 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 290 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit1:
# 291 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_16
# 292 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_8
# 293 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 294 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_16
# 295 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_16
# 296 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 297 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 298 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 299 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit2:
# 300 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_16
# 301 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	delay_8
# 302 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down  // <-- Agora olhando pra porta
# 303 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 304 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 305 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayGoUpstairs0:
# 306 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 307 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_right
# 308 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 309 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 310 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 311 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 312 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 313 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayGoUpstairs1:
# 314 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 315 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_right
# 316 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 317 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 318 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 319 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 320 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 321 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 322 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 323 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 324 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 325 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayGoUpstairs2:
# 326 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 327 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 328 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_up
# 329 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 330 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_up
# 331 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 332 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 333 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayExitHouse0::
# 334 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit0
# 335 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayExitHouse0
# 336 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 337 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 338 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 339 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayExitHouse1::
# 340 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit1
# 341 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayExitHouse1
# 342 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 343 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 344 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 345 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_EventScript_MayExitHouse2::
# 346 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_1F_Movement_PlayerWatchMayExit2
# 347 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_1F_RIVAL, LittlerootTown_MaysHouse_1F_Movement_MayExitHouse2
# 348 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	waitmovement 0
# 349 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	return
# 350 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 351 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayExitHouse0:
# 352 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_right
# 353 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_right
# 354 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 355 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 356 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 357 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 358 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 359 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 360 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 361 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayExitHouse1:
# 362 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 363 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 364 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 365 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 366 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 367 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 368 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
LittlerootTown_MaysHouse_1F_Movement_MayExitHouse2:
# 369 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_left
# 370 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_left
# 371 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_in_place_faster_down
# 372 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 373 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 374 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 375 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	walk_down
# 376 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	step_end
# 377 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	
# 378 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_OhYoureTheNewNeighbor:
# 379 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Oh, hello {PLAYER}! Come in, come in!\p"
# 380 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Did you come to talk about that\n"
# 381 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "beautiful comet from last night?\p"
# 382 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "It was absolutely stunning, wasn't it?\n"
# 383 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "It lit up the whole sky!\p"
# 384 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Except when it darkened everything.\p"
# 385 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Ho ho!\n"
# 386 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Anyway, {RIVAL} may be upstairs…\n"
# 387 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "I'm not sure, actually…\p"
# 388 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Sorry, I've been a bit distracted today!\n"
# 389 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Ho ho!$"
# 390 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 391 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_LikeChildLikeFather:
# 392 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "PROFESSOR ACACIA is truly the pride\n"
# 393 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "of LITTLEROOT TOWN.\p"
# 394 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Her POKéMON research has helped many\n"
# 395 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "young TRAINERS begin their journeys.\p"
# 396 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "We're so fortunate to have such an\n"
# 397 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "amazing researcher in our small town.$"
# 398 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 399 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_TooBusyToNoticeVisit:
# 400 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "That {RIVAL}!\p"
# 401 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "I suppose that kid is too busy\n"
# 402 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "on studying that comet to notice\l"
# 403 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "you've come to visit, {PLAYER}{KUN}.$"
# 404 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 405 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_WentOutToRoute103:
# 406 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Oh, {RIVAL} went out to ROUTE 103.\p"
# 407 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Wanted to train and look for some\n"
# 408 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "new POKéMON always exploring, that one!$"
# 409 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 410 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_ShouldGoHomeEverySoOften:
# 411 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "I think it's wonderful for people to\n"
# 412 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "travel with POKéMON.\p"
# 413 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "But you should go home every so often\n"
# 414 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "to let your grandmother know you're\n"
# 415 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "okay.\p"
# 416 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "She might not say it, but I'm sure she\n"
# 417 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "worries about you, {PLAYER}{KUN}.$"
# 418 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 419 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_MayWhoAreYou:
# 420 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 421 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "What are you doing here?\p"
# 422 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Oh, but nevermind that.\n"
# 423 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Did you see the comet last night?\p"
# 424 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "It lit up the entire sky!\n"
# 425 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "It was so beautiful…\p"
# 426 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "I made a wish when I saw it.\n"
# 427 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Got goosebumps all over!\p"
# 428 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Anyway… I gotta go!\n"
# 429 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "I'm going to train on ROUTE 103.\p"
# 430 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "PROFESSOR ACACIA says we both have\n"
# 431 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "a lot of potential as TRAINERS.\p"
# 432 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Wouldn't want to let her down!\n"
# 433 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "See you later, {PLAYER}!$"
# 434 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 435 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_BrendanWhoAreYou:
# 436 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 437 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "What are you doing here?\p"
# 438 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Oh, but nevermind that.\n"
# 439 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Did you see the comet last night?\p"
# 440 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "The whole sky was glowing with this\n"
# 441 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "weird purple light!\p"
# 442 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "PROFESSOR ACACIA said it might be\n"
# 443 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "connected to POKeMON somehow.\p"
# 444 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Me? Of course I made a wish.\n"
# 445 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "I'm not telling you though, or it won't\n"
# 446 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "come true.$"
# 447 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Anyway, I should get going.\n"
# 448 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Got some training on ROUTE 103 to do.\p"
# 449 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Catch you later, neighbor!$"
# 450 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"

# 451 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
RivalsHouse_1F_Text_DoYouHavePokemon:
# 452 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Hi, neighbor!\p"
# 453 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "Do you already have your\n"
# 454 "data/maps/LittlerootTown_MaysHouse_1F/scripts.pory"
	.string "own POKéMON?$"
