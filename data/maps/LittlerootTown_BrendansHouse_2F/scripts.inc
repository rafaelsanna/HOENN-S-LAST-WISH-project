# 1 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 2 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
// ====================================================================
# 3 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
// BRENDAN'S HOUSE 2F - SIMPLIFICADO SEM VARIÁVEIS EXTRAS
# 4 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
// ====================================================================
# 5 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 6 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_MapScripts::
# 7 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_BrendansHouse_2F_OnTransition
# 8 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_BrendansHouse_2F_OnWarp
# 9 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_BrendansHouse_2F_OnFrame
# 10 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.byte 0
# 11 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 12 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnFrame:
# 13 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_2F_EventScript_WeirdDreamDialogue
# 14 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.2byte 0
# 15 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 16 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_WeirdDreamDialogue::
# 17 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 18 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setflag FLAG_PLAYER_AWOKE_IN_LITTLEROOT
# 19 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox LittlerootTown_BrendansHouse_2F_Text_WeirdDream, MSGBOX_DEFAULT
# 20 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 21 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 22 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 23 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 24 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Text_WeirdDream:
# 25 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "{PLAYER}: What a weird dream…\p"
# 26 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Were those JIRACHI and CELEBI?\p"
# 27 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Maybe it wasn't a dream…\n"
# 28 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "It felt like it really happened…\p"
# 29 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "…Either way, I have to get going.$"
# 30 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 31 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnTransition:
# 32 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan
# 33 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos
# 34 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
# 35 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call SecretBase_EventScript_SetDecorationFlags
# 36 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_SECRET_BASE_INITIALIZED, 0
# 37 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 38 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 39 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos::
# 40 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
# 41 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_Ret
# 42 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
# 43 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 44 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos::
# 45 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 46 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 47 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_Ret::
# 48 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 49 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 50 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan::
# 51 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 52 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan
# 53 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 54 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 55 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan::
# 56 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
# 57 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 58 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 59 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnWarp:
# 60 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor
# 61 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.2byte 0
# 62 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 63 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor::
# 64 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 65 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, SecretBase_EventScript_InitDecorations
# 66 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 67 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 68 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_RivalsPokeBall::
# 69 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 70 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan
# 71 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
# 72 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 73 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 74 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 75 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan::
# 76 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay 10
# 77 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
# 78 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters
# 79 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 80 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PIN
# 81 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
# 82 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 83 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
# 84 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 85 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay 10
# 86 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 87 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth
# 88 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth
# 89 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest
# 90 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast
# 91 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 92 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 93 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 94 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 95 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	savebgm MUS_DUMMY
# 96 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	fadedefaultbgm
# 97 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 98 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 99 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 100 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth::
# 101 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth
# 102 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 103 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 104 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 105 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 106 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 107 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth
# 108 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth
# 109 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 110 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 111 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 112 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth::
# 113 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth
# 114 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 115 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 116 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 117 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 118 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 119 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth
# 120 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth
# 121 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 122 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 123 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 124 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest::
# 125 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest
# 126 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 127 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 128 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 129 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 130 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 131 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest
# 132 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest
# 133 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 134 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 135 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 136 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast::
# 137 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast
# 138 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 139 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 140 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 141 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 142 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 143 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast
# 144 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 145 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 146 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 147 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters:
# 148 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 149 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 150 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 151 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 152 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 153 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth:
# 154 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 155 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 156 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 157 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 158 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 159 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 160 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 161 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth:
# 162 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 163 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 164 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 165 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 166 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 167 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 168 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 169 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 170 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 171 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 172 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth:
# 173 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 174 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 175 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 176 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 177 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 178 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 179 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 180 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 181 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 182 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth:
# 183 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 184 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 185 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 186 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 187 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 188 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth:
# 189 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 190 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 191 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 192 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 193 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 194 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 195 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 196 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 197 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth:
# 198 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 199 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 200 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 201 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 202 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 203 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 204 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 205 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest:
# 206 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 207 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 208 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 209 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 210 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 211 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 212 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest:
# 213 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 214 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 215 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 216 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 217 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 218 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 219 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 220 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 221 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 222 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 223 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest:
# 224 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_8
# 225 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 226 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 227 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 228 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 229 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 230 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 231 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 232 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast:
# 233 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 234 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 235 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 236 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 237 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 238 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_down
# 239 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 240 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 241 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast:
# 242 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 243 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 244 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 245 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 246 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 247 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 248 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanEast:
# 249 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 250 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 251 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 252 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 253 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 254 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_PC::
# 255 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 256 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 257 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC
# 258 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC
# 259 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 260 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 261 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC::
# 262 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
# 263 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special DoPCTurnOnEffect
# 264 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PC_ON
# 265 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
# 266 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special BedroomPC
# 267 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitstate
# 268 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 269 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 270 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 271 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_TurnOffPlayerPC::
# 272 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
# 273 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PC_OFF
# 274 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special DoPCTurnOffEffect
# 275 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 276 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 277 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 278 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC::
# 279 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
# 280 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 281 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 282 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 283 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_Notebook::
# 284 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lock
# 285 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	faceplayer
# 286 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookAskRead, MSGBOX_YESNO
# 287 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	compare VAR_RESULT, YES
# 288 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq PlayersHouse_2F_EventScript_ReadNotebook
# 289 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookMaybeLater, MSGBOX_DEFAULT
# 290 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	release
# 291 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 292 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 293 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_ReadNotebook::
# 294 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 1. AEGISLASH - The Beginning
# 295 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 296 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory1, MSGBOX_DEFAULT
# 297 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 298 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 299 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 2. ALOMOMOLA - The Conflict
# 300 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 301 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory2, MSGBOX_DEFAULT
# 302 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 303 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 304 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 3. AVALUGG - Great Battle
# 305 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 306 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_M_SURF
# 307 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_M_THUNDERBOLT
# 308 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory3, MSGBOX_DEFAULT
# 309 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 310 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 311 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 4. AMAURA - Tsunami
# 312 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 313 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory4, MSGBOX_DEFAULT
# 314 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 315 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 316 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 5. AROMATISSE - Volcano
# 317 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 318 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory5, MSGBOX_DEFAULT
# 319 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 320 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 321 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 6. ARROKUDA - Wasteland
# 322 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 323 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory6, MSGBOX_DEFAULT
# 324 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 325 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 326 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 7. AUDINO - Ocean Storms
# 327 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 328 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory7, MSGBOX_DEFAULT
# 329 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 330 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 331 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 8. AURORUS - Survivor Camps
# 332 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 333 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory8, MSGBOX_DEFAULT
# 334 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 335 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 336 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 9. AMOONGUSS - Hope Fades
# 337 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 338 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory9, MSGBOX_DEFAULT
# 339 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 340 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 341 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 10. APPLIN - Legend Appears
# 342 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 343 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory10, MSGBOX_DEFAULT
# 344 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 345 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 346 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 11. APPLETUN - Sky Guardian
# 347 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 348 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory11, MSGBOX_DEFAULT
# 349 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 350 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 351 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 12. AXEW - Peace Restored
# 352 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 353 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory12, MSGBOX_DEFAULT
# 354 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 355 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 356 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 13. ARBOLIVA - World Today
# 357 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 358 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory13, MSGBOX_DEFAULT
# 359 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 360 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 361 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// Final message
# 362 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookFinished, MSGBOX_DEFAULT
# 363 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	release
# 364 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 365 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 366 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_GameCube::
# 367 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_ItsAGameCube, MSGBOX_SIGN
# 368 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 369 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 370 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_ClockIsStopped:
# 371 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "The clock is stopped…\p"
# 372 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Better set it and start it!$"
# 373 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 374 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_HowDoYouLikeYourRoom:
# 375 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "GRANDMA: {PLAYER}, how do you\n"
# 376 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "like your new room?\p"
# 377 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Good! Everything's put away neatly!\p"
# 378 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "They finished moving everything in\n"
# 379 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "downstairs, too.\p"
# 380 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "POKéMON movers are so convenient!\p"
# 381 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Oh, you should make sure that\n"
# 382 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "everything's all there on your desk.$"
# 383 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 384 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookAskRead:
# 385 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "A notebook with ancient drawings\nand writings.\p"
# 386 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Would you like to read it?$"
# 387 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 388 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookMaybeLater:
# 389 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "You leave the notebook for later.$"
# 390 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 391 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory1:
# 392 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 1: This was the beginning\nof it all…$"
# 393 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 394 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory2:
# 395 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 2: Then the great conflict\nstarted…$"
# 396 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 397 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory3:
# 398 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 3: The epic battle between land\nand sea shook HOENN…$"
# 399 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 400 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory4:
# 401 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 4: Massive tsunami devastated\nthe coastal regions…$"
# 402 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 403 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory5:
# 404 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 5: Volcanoes erupted across\nthe land…$"
# 405 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 406 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory6:
# 407 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 6: The land became barren…$"
# 408 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 409 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory7:
# 410 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 7: The oceans raged with\nunending storms…$"
# 411 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 412 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory8:
# 413 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 8: Survivors gathered in\ncamps…$"
# 414 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 415 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory9:
# 416 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 9: Hope began to fade…$"
# 417 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 418 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory10:
# 419 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 10: But then a legend\nappeared…$"
# 420 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 421 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory11:
# 422 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 11: The sky guardian descended\nfrom above…$"
# 423 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 424 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory12:
# 425 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 12: Peace was restored,\nbut at a cost…$"
# 426 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 427 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory13:
# 428 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 13: This is how our world\nbecame what it is today…$"
# 429 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 430 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookFinished:
# 431 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "You close the notebook, filled with\nwonder about HOENN's ancient past.$"
# 432 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 433 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
Common_Text_LookCloserAtMap:
# 434 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "{PLAYER} took a closer look at the\n"
# 435 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "HOENN region map.$"
# 436 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 437 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_ItsAGameCube:
# 438 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "It's a Nintendo GameCube.\p"
# 439 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "A Game Boy Advance is connected to\n"
# 440 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "serve as the Controller.$"
