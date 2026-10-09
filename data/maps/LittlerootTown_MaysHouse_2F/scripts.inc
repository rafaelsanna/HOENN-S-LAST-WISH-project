# 1 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 2 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// ====================================================================
# 3 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// MAY'S HOUSE 2F - ESPELHADO DO BRENDAN COM WEIRD DREAM
# 4 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// ====================================================================
# 5 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 6 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_MapScripts::
# 7 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_MaysHouse_2F_OnTransition
# 8 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_MaysHouse_2F_OnWarp
# 9 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_MaysHouse_2F_OnFrame
# 10 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.byte 0
# 11 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 12 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnFrame:
# 13 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_MaysHouse_2F_EventScript_WeirdDreamDialogue
# 14 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.2byte 0
# 15 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 16 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_WeirdDreamDialogue::
# 17 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 18 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_PLAYER_AWOKE_IN_LITTLEROOT
# 19 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox LittlerootTown_MaysHouse_2F_Text_WeirdDream, MSGBOX_DEFAULT
# 20 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 21 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 22 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 23 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 24 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Text_WeirdDream:
# 25 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "{PLAYER}: What a weird dream…\p"
# 26 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Were those JIRACHI and CELEBI?\p"
# 27 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Maybe it wasn't a dream…\n"
# 28 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It felt like it really happened…\p"
# 29 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "…Either way, I have to get going.$"
# 30 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 31 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnTransition:
# 32 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_CheckSetReadyToMeetMay
# 33 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_MaysHouse_2F_EventScript_CheckShouldUpdateMayPos
# 34 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
# 35 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call SecretBase_EventScript_SetDecorationFlags
# 36 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_SECRET_BASE_INITIALIZED, 0
# 37 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 38 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 39 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckShouldUpdateMayPos::
# 40 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos
# 41 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_Ret
# 42 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos
# 43 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 44 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos::
# 45 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 46 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 47 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_Ret::
# 48 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 49 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 50 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckSetReadyToMeetMay::
# 51 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 52 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_2F_EventScript_SetReadyToMeetMay
# 53 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 54 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 55 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_SetReadyToMeetMay::
# 56 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
# 57 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 58 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 59 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnWarp:
# 60 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_MaysHouse_2F_EventScript_CheckInitDecor
# 61 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.2byte 0
# 62 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 63 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckInitDecor::
# 64 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 65 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, SecretBase_EventScript_InitDecorations
# 66 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 67 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 68 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// O resto do seu script original da May continua aqui...
# 69 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_RivalsPokeBall::
# 70 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 71 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_MeetMay
# 72 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
# 73 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 74 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 75 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 76 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMay::
# 77 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay 10
# 78 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
# 79 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayEnters
# 80 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 81 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PIN
# 82 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
# 83 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 84 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
# 85 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 86 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay 10
# 87 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 88 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_MaysHouse_2F_EventScript_MeetMayNorth
# 89 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_MaysHouse_2F_EventScript_MeetMaySouth
# 90 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_MaysHouse_2F_EventScript_MeetMayWest
# 91 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_MaysHouse_2F_EventScript_MeetMayEast
# 92 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 93 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 94 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 95 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 96 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	savebgm MUS_DUMMY
# 97 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	fadedefaultbgm
# 98 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 99 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 100 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 101 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayNorth::
# 102 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerNorth
# 103 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 104 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 105 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 106 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 107 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 108 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayNorth
# 109 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCNorth
# 110 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 111 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 112 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 113 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMaySouth::
# 114 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerSouth
# 115 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 116 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 117 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 118 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 119 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 120 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMaySouth
# 121 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCSouth
# 122 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 123 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 124 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 125 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayWest::
# 126 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerWest
# 127 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 128 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 129 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 130 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 131 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 132 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCWest
# 133 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 134 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 135 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 136 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayEast::
# 137 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerEast
# 138 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 139 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 140 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 141 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 142 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 143 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayEast
# 144 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCEast
# 145 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 146 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 147 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 148 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayEnters:
# 149 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 150 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 151 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 152 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 153 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 154 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerNorth:
# 155 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 156 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 157 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 158 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 159 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 160 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 161 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 162 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCNorth:
# 163 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 164 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 165 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 166 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 167 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 168 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 169 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 170 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 171 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 172 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 173 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 174 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayNorth:
# 175 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 176 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 177 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 178 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 179 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 180 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 181 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 182 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 183 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 184 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerSouth:
# 185 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 186 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 187 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 188 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 189 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 190 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCSouth:
# 191 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 192 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 193 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 194 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 195 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 196 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 197 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 198 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 199 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 200 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMaySouth:
# 201 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 202 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 203 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 204 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 205 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 206 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 207 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 208 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerWest:
# 209 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 210 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 211 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 212 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 213 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 214 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_down
# 215 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 216 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 217 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCWest:
# 218 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 219 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 220 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 221 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 222 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 223 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 224 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerEast:
# 225 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 226 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 227 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 228 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 229 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 230 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 231 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCEast:
# 232 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 233 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 234 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 235 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 236 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 237 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 238 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 239 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 240 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 241 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 242 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayEast:
# 243 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 244 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 245 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 246 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 247 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 248 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 249 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 250 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_Rival::
# 251 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 252 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, RivalsHouse_2F_EventScript_RivalPostLilycove
# 253 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 254 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RivalsHouse_2F_EventScript_May
# 255 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RivalsHouse_2F_EventScript_Brendan
# 256 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 257 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 258 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_May::
# 259 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayGettingReady, MSGBOX_DEFAULT
# 260 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 261 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 262 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 263 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_Brendan::
# 264 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanGettingReady, MSGBOX_DEFAULT
# 265 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 266 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 267 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 268 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_RivalPostLilycove::
# 269 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 270 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 271 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 272 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_RESULT, MALE, RivalsHouse_2F_EventScript_MayPostLilycove
# 273 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, RivalsHouse_2F_EventScript_BrendanPostLilycove
# 274 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE
# 275 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 276 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 277 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 278 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_MayPostLilycove::
# 279 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE, RivalsHouse_2F_EventScript_MayWhereShouldIGoNext
# 280 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 281 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayJustCheckingMyPokedex, MSGBOX_DEFAULT
# 282 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	removefieldmugshot
# 283 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 284 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 285 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_BrendanPostLilycove::
# 286 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE, RivalsHouse_2F_EventScript_BrendanWhereShouldIGoNext
# 287 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 288 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanJustCheckingMyPokedex, MSGBOX_DEFAULT
# 289 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	removefieldmugshot
# 290 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 291 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 292 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_MayWhereShouldIGoNext::
# 293 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 294 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhereShouldIGoNext, MSGBOX_DEFAULT
# 295 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	removefieldmugshot
# 296 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 297 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 298 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_BrendanWhereShouldIGoNext::
# 299 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 300 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhereShouldIGoNext, MSGBOX_DEFAULT
# 301 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	removefieldmugshot
# 302 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 303 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 304 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_PC::
# 305 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 306 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 307 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_2F_EventScript_CheckRivalsPC
# 308 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_MaysHouse_2F_EventScript_CheckPlayersPC
# 309 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 310 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 311 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckRivalsPC::
# 312 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
# 313 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 314 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 315 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 316 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckPlayersPC::
# 317 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_MAYS_HOUSE
# 318 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special DoPCTurnOnEffect
# 319 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PC_ON
# 320 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
# 321 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special BedroomPC
# 322 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitstate
# 323 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 324 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 325 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 326 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_TurnOffPlayerPC::
# 327 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_MAYS_HOUSE
# 328 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PC_OFF
# 329 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special DoPCTurnOffEffect
# 330 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 331 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 332 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 333 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayWhoAreYou:
# 334 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 335 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "What are you doing here?\p"
# 336 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, but nevermind that.\n"
# 337 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Did you see the comet last night?\p"
# 338 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It lit up the entire sky!\n"
# 339 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It was so beautiful…\p"
# 340 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I made a wish when I saw it.\n"
# 341 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Got goosebumps all over!\p"
# 342 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway… I gotta go!\n"
# 343 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I'm going to train on ROUTE 103.\p"
# 344 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "PROFESSOR ACACIA says we both have\n"
# 345 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "a lot of potential as TRAINERS.\p"
# 346 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Wouldn't want to let her down!\n"
# 347 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "See you later, {PLAYER}!$"
# 348 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 349 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayGettingReady:
# 350 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Studying about the millennium comet…\n"
# 351 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It only passes once every 1000 years!\p"
# 352 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The ancient texts say it has some\n"
# 353 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connection to legendary POKéMON…$"
# 354 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 355 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanWhoAreYou:
# 356 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 357 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "What are you doing here?\p"
# 358 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, but nevermind that.\n"
# 359 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Did you see the comet last night?\p"
# 360 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The whole sky was glowing with this\n"
# 361 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "weird purple light!\p"
# 362 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "PROFESSOR ACACIA said it might be\n"
# 363 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connected to POKéMON somehow.\p"
# 364 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Me? Of course I made a wish.\n"
# 365 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I'm not telling you though, or it won't\l"
# 366 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "come true.\p"
# 367 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway, I should get going.\n"
# 368 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Got some training on ROUTE 103 to do.\p"
# 369 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Catch you later, neighbor!$"
# 370 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 371 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanGettingReady:
# 372 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Studying about the millennium comet…\n"
# 373 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It only passes once every 1000 years!\p"
# 374 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The ancient texts say it has some\n"
# 375 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connection to legendary POKéMON…$"
# 376 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 377 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_ItsRivalsPokeBall:
# 378 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It's {RIVAL}'s POKé BALL!\p"
# 379 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Better leave it right where it is.$"
# 380 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 381 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayJustCheckingMyPokedex:
# 382 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\p"
# 383 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I was just checking my POKéDEX.\p"
# 384 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "There's still a lot of POKéMON that\n"
# 385 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I've seen but haven't caught.\p"
# 386 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "And there are many others that\n"
# 387 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I think will evolve.\p"
# 388 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I wonder where I should go catch\n"
# 389 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "some POKéMON next?$"
# 390 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 391 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayWhereShouldIGoNext:
# 392 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZINNIA: I wonder where I should go catch\n"
# 393 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "some POKéMON next?\p"
# 394 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Wouldn't it be funny if we ran into each\n"
# 395 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "other, {PLAYER}{KUN}?$"
# 396 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 397 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanJustCheckingMyPokedex:
# 398 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZENNO: Hey, it's {PLAYER}.\p"
# 399 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I was just checking out my POKéDEX.\p"
# 400 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "There are still many POKéMON that\n"
# 401 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I need to catch, I know, but this\l"
# 402 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "is looking pretty good.\p"
# 403 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Checking this POKéDEX out gives me\n"
# 404 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "the urge to hit the road again.$"
# 405 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 406 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanWhereShouldIGoNext:
# 407 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZENNO: I'm having a hard time deciding\n"
# 408 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "where I should catch POKéMON next.\p"
# 409 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Hey, {PLAYER}, if I see you while I'm out\n"
# 410 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "catching POKéMON, I can pitch you a\l"
# 411 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "battle if you'd like.$"
