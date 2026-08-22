# 1 "data/maps/SlateportCity_Harbor/scripts.pory"

# 2 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_MapScripts::
# 3 "data/maps/SlateportCity_Harbor/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SlateportCity_Harbor_OnTransition
# 4 "data/maps/SlateportCity_Harbor/scripts.pory"
	.byte 0
# 5 "data/maps/SlateportCity_Harbor/scripts.pory"

# 6 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_OnTransition:
# 7 "data/maps/SlateportCity_Harbor/scripts.pory"
	setescapewarp MAP_SLATEPORT_CITY, 28, 13
# 8 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_TEMP_1, 0
# 9 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_SLATEPORT_HARBOR_STATE, 1, SlateportCity_Harbor_EventScript_ReadyAquaEscapeScene
# 10 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, SlateportCity_Harbor_EventScript_ShowSSTidal
# 11 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 12 "data/maps/SlateportCity_Harbor/scripts.pory"

# 13 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ShowSSTidal::
# 14 "data/maps/SlateportCity_Harbor/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_SS_TIDAL
# 15 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 16 "data/maps/SlateportCity_Harbor/scripts.pory"

# 17 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ReadyAquaEscapeScene::
# 18 "data/maps/SlateportCity_Harbor/scripts.pory"
	savebgm MUS_ENCOUNTER_AQUA
# 19 "data/maps/SlateportCity_Harbor/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_HARBOR_CAPT_STERN, 12, 13
# 20 "data/maps/SlateportCity_Harbor/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_HARBOR_CAPT_STERN, MOVEMENT_TYPE_FACE_LEFT
# 21 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_PATRONS
# 22 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 23 "data/maps/SlateportCity_Harbor/scripts.pory"

# 24 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AquaEscapeTrigger0::
# 25 "data/maps/SlateportCity_Harbor/scripts.pory"
	lockall
# 26 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_0x8008, 0
# 27 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_AquaEscapeScene
# 28 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 29 "data/maps/SlateportCity_Harbor/scripts.pory"

# 30 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AquaEscapeTrigger1::
# 31 "data/maps/SlateportCity_Harbor/scripts.pory"
	lockall
# 32 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_0x8008, 1
# 33 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_AquaEscapeScene
# 34 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 35 "data/maps/SlateportCity_Harbor/scripts.pory"

# 36 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AquaEscapeTrigger2::
# 37 "data/maps/SlateportCity_Harbor/scripts.pory"
	lockall
# 38 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_0x8008, 2
# 39 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_AquaEscapeScene
# 40 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 41 "data/maps/SlateportCity_Harbor/scripts.pory"

# 42 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AquaEscapeTrigger3::
# 43 "data/maps/SlateportCity_Harbor/scripts.pory"
	lockall
# 44 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_0x8008, 3
# 45 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Harbor_Movement_PlayerWalkUp
# 46 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 47 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_AquaEscapeScene
# 48 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 49 "data/maps/SlateportCity_Harbor/scripts.pory"

# 50 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AquaEscapeScene::
# 51 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_ARCHIE, Common_Movement_WalkInPlaceFasterDown
# 52 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 53 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_GRUNT, Common_Movement_WalkInPlaceFasterDown
# 54 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 55 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 56 "data/maps/SlateportCity_Harbor/scripts.pory"
	createfieldmugshot MUGSHOT_INAE, EMOTE_NORMAL
# 57 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_ArchieYouAgainHideoutInLilycove, MSGBOX_DEFAULT
# 58 "data/maps/SlateportCity_Harbor/scripts.pory"
	removefieldmugshot
# 59 "data/maps/SlateportCity_Harbor/scripts.pory"
	closemessage
# 60 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_GRUNT, SlateportCity_Harbor_Movement_AquaBoardSub
# 61 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_ARCHIE, SlateportCity_Harbor_Movement_AquaBoardSub
# 62 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_SUBMARINE, SlateportCity_Harbor_Movement_SubmarineExit
# 63 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 64 "data/maps/SlateportCity_Harbor/scripts.pory"
	removeobject LOCALID_SLATEPORT_HARBOR_GRUNT
# 65 "data/maps/SlateportCity_Harbor/scripts.pory"
	removeobject LOCALID_SLATEPORT_HARBOR_ARCHIE
# 66 "data/maps/SlateportCity_Harbor/scripts.pory"
	removeobject LOCALID_SLATEPORT_HARBOR_SUBMARINE
# 67 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_SLATEPORT_HARBOR_STATE, 2
# 68 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_MET_TEAM_AQUA_HARBOR
# 69 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_HIDE_LILYCOVE_MOTEL_SCOTT
# 70 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_0x8008, 0, SlateportCity_Harbor_EventScript_SternApproachPlayer0
# 71 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_0x8008, 1, SlateportCity_Harbor_EventScript_SternApproachPlayer1
# 72 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_0x8008, 2, SlateportCity_Harbor_EventScript_SternApproachPlayer
# 73 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_0x8008, 3, SlateportCity_Harbor_EventScript_SternApproachPlayer
# 74 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_CaptSternWhyStealMySubmarine, MSGBOX_DEFAULT
# 75 "data/maps/SlateportCity_Harbor/scripts.pory"
	closemessage
# 76 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_HIDE_AQUA_HIDEOUT_1F_GRUNT_1_BLOCKING_ENTRANCE
# 77 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_HIDE_AQUA_HIDEOUT_1F_GRUNT_2_BLOCKING_ENTRANCE
# 78 "data/maps/SlateportCity_Harbor/scripts.pory"
	copyobjectxytoperm LOCALID_SLATEPORT_HARBOR_CAPT_STERN
# 79 "data/maps/SlateportCity_Harbor/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_HARBOR_CAPT_STERN, MOVEMENT_TYPE_FACE_RIGHT
# 80 "data/maps/SlateportCity_Harbor/scripts.pory"
	releaseall
# 81 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 82 "data/maps/SlateportCity_Harbor/scripts.pory"

# 83 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_SternApproachPlayer0::
# 84 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_CAPT_STERN, SlateportCity_Harbor_Movement_SternApproachPlayer0
# 85 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 86 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 87 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 88 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 89 "data/maps/SlateportCity_Harbor/scripts.pory"

# 90 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_SternApproachPlayer1::
# 91 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_CAPT_STERN, SlateportCity_Harbor_Movement_SternApproachPlayer1
# 92 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 93 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 94 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 95 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 96 "data/maps/SlateportCity_Harbor/scripts.pory"

# 97 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_SternApproachPlayer::
# 98 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_SLATEPORT_HARBOR_CAPT_STERN, SlateportCity_Harbor_Movement_SternApproachPlayer
# 99 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 100 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 101 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 102 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 103 "data/maps/SlateportCity_Harbor/scripts.pory"

# 104 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_AquaBoardSub:
# 105 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 106 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 107 "data/maps/SlateportCity_Harbor/scripts.pory"
	jump_up
# 108 "data/maps/SlateportCity_Harbor/scripts.pory"
	set_invisible
# 109 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 110 "data/maps/SlateportCity_Harbor/scripts.pory"

# 111 "data/maps/SlateportCity_Harbor/scripts.pory"
@ Unused, Archie instead shares above identical movement script with Grunt
# 112 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_ArchieBoardSub:
# 113 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 114 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 115 "data/maps/SlateportCity_Harbor/scripts.pory"
	jump_up
# 116 "data/maps/SlateportCity_Harbor/scripts.pory"
	set_invisible
# 117 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 118 "data/maps/SlateportCity_Harbor/scripts.pory"

# 119 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_SubmarineExit:
# 120 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 121 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 122 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 123 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay_16
# 124 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_right
# 125 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_right
# 126 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_right
# 127 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_fast_right
# 128 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_fast_right
# 129 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_fast_right
# 130 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_fast_right
# 131 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_fast_right
# 132 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_fast_right
# 133 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 134 "data/maps/SlateportCity_Harbor/scripts.pory"

# 135 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_SternApproachPlayer0:
# 136 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 137 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 138 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 139 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 140 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_up
# 141 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 142 "data/maps/SlateportCity_Harbor/scripts.pory"

# 143 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_SternApproachPlayer1:
# 144 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 145 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 146 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_up
# 147 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 148 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 149 "data/maps/SlateportCity_Harbor/scripts.pory"

# 150 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_SternApproachPlayer:
# 151 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 152 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 153 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_left
# 154 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 155 "data/maps/SlateportCity_Harbor/scripts.pory"

# 156 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_PlayerWalkUp:
# 157 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_up
# 158 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 159 "data/maps/SlateportCity_Harbor/scripts.pory"

# 160 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_FerryAttendant::
# 161 "data/maps/SlateportCity_Harbor/scripts.pory"
	lock
# 162 "data/maps/SlateportCity_Harbor/scripts.pory"
	faceplayer
# 163 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, SlateportCity_Harbor_EventScript_AskForTicket
# 164 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_FerryServiceUnavailable, MSGBOX_DEFAULT
# 165 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 166 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 167 "data/maps/SlateportCity_Harbor/scripts.pory"

# 168 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AskForTicket::
# 169 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_MayISeeYourTicket, MSGBOX_DEFAULT
# 170 "data/maps/SlateportCity_Harbor/scripts.pory"
	message SlateportCity_Harbor_Text_FlashedTicketWhereTo
# 171 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmessage
# 172 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_ChooseDestination
# 173 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 174 "data/maps/SlateportCity_Harbor/scripts.pory"

# 175 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ChooseDestination::
# 176 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_set FLAG_MET_SCOTT_ON_SS_TIDAL, SlateportCity_Harbor_EventScript_ChooseDestinationWithBattleFrontier
# 177 "data/maps/SlateportCity_Harbor/scripts.pory"
	multichoicedefault 18, 8, MULTI_SSTIDAL_SLATEPORT_NO_BF, 2, FALSE
# 178 "data/maps/SlateportCity_Harbor/scripts.pory"
	switch VAR_RESULT
# 179 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 0, SlateportCity_Harbor_EventScript_Lilycove
# 180 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 1, SlateportCity_Harbor_EventScript_CancelDestinationSelect
# 181 "data/maps/SlateportCity_Harbor/scripts.pory"
	case MULTI_B_PRESSED, SlateportCity_Harbor_EventScript_CancelDestinationSelect
# 182 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 183 "data/maps/SlateportCity_Harbor/scripts.pory"

# 184 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ChooseDestinationWithBattleFrontier::
# 185 "data/maps/SlateportCity_Harbor/scripts.pory"
	multichoicedefault 17, 6, MULTI_SSTIDAL_SLATEPORT_WITH_BF, 2, FALSE
# 186 "data/maps/SlateportCity_Harbor/scripts.pory"
	switch VAR_RESULT
# 187 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 0, SlateportCity_Harbor_EventScript_Lilycove
# 188 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 1, SlateportCity_Harbor_EventScript_BattleFrontier
# 189 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 2, SlateportCity_Harbor_EventScript_CancelDestinationSelect
# 190 "data/maps/SlateportCity_Harbor/scripts.pory"
	case MULTI_B_PRESSED, SlateportCity_Harbor_EventScript_CancelDestinationSelect
# 191 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 192 "data/maps/SlateportCity_Harbor/scripts.pory"

# 193 "data/maps/SlateportCity_Harbor/scripts.pory"
@ Unused. Should be impossible for player to reach Ferry without having received SS Tidal ticket
# 194 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_NoTicket::
# 195 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_YouMustHaveTicket, MSGBOX_DEFAULT
# 196 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 197 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 198 "data/maps/SlateportCity_Harbor/scripts.pory"

# 199 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_Lilycove::
# 200 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_LilycoveItIs, MSGBOX_YESNO
# 201 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, NO, SlateportCity_Harbor_EventScript_ChooseNewDestination
# 202 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_SS_TIDAL_STATE, SS_TIDAL_BOARD_SLATEPORT
# 203 "data/maps/SlateportCity_Harbor/scripts.pory"
	call SlateportCity_Harbor_EventScript_BoardFerry
# 204 "data/maps/SlateportCity_Harbor/scripts.pory"
	warp MAP_SS_TIDAL_CORRIDOR, 1, 10
# 205 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitstate
# 206 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 207 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 208 "data/maps/SlateportCity_Harbor/scripts.pory"

# 209 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_BattleFrontier::
# 210 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_BattleFrontierItIs, MSGBOX_YESNO
# 211 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, NO, SlateportCity_Harbor_EventScript_ChooseNewDestination
# 212 "data/maps/SlateportCity_Harbor/scripts.pory"
	call SlateportCity_Harbor_EventScript_BoardFerry
# 213 "data/maps/SlateportCity_Harbor/scripts.pory"
	warp MAP_BATTLE_FRONTIER_OUTSIDE_WEST, 19, 67
# 214 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitstate
# 215 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 216 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 217 "data/maps/SlateportCity_Harbor/scripts.pory"

# 218 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ChooseNewDestination::
# 219 "data/maps/SlateportCity_Harbor/scripts.pory"
	message SlateportCity_Harbor_Text_WhereWouldYouLikeToGo
# 220 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmessage
# 221 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_ChooseDestination
# 222 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 223 "data/maps/SlateportCity_Harbor/scripts.pory"

# 224 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_BoardFerry::
# 225 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_PleaseBoardFerry, MSGBOX_DEFAULT
# 226 "data/maps/SlateportCity_Harbor/scripts.pory"
	closemessage
# 227 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_WalkInPlaceFasterUp
# 228 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 229 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay 30
# 230 "data/maps/SlateportCity_Harbor/scripts.pory"
	hideobjectat VAR_LAST_TALKED, MAP_SLATEPORT_CITY_HARBOR
# 231 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, SlateportCity_Harbor_EventScript_BoardFerryNorth
# 232 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, SlateportCity_Harbor_EventScript_BoardFerryEast
# 233 "data/maps/SlateportCity_Harbor/scripts.pory"
	delay 30
# 234 "data/maps/SlateportCity_Harbor/scripts.pory"
	hideobjectat LOCALID_PLAYER, 0
# 235 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_0x8004, LOCALID_SLATEPORT_HARBOR_SS_TIDAL
# 236 "data/maps/SlateportCity_Harbor/scripts.pory"
	call Common_EventScript_FerryDepart
# 237 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 238 "data/maps/SlateportCity_Harbor/scripts.pory"

# 239 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_CancelDestinationSelect::
# 240 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_SailAnotherTime, MSGBOX_DEFAULT
# 241 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 242 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 243 "data/maps/SlateportCity_Harbor/scripts.pory"

# 244 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_BoardFerryEast::
# 245 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Harbor_Movement_BoardFerryEast
# 246 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 247 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 248 "data/maps/SlateportCity_Harbor/scripts.pory"

# 249 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_BoardFerryNorth::
# 250 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Harbor_Movement_BoardFerryNorth
# 251 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 252 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 253 "data/maps/SlateportCity_Harbor/scripts.pory"

# 254 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_BoardFerryEast:
# 255 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_right
# 256 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_in_place_faster_up
# 257 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 258 "data/maps/SlateportCity_Harbor/scripts.pory"

# 259 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Movement_BoardFerryNorth:
# 260 "data/maps/SlateportCity_Harbor/scripts.pory"
	walk_up
# 261 "data/maps/SlateportCity_Harbor/scripts.pory"
	step_end
# 262 "data/maps/SlateportCity_Harbor/scripts.pory"

# 263 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_Sailor::
# 264 "data/maps/SlateportCity_Harbor/scripts.pory"
	lock
# 265 "data/maps/SlateportCity_Harbor/scripts.pory"
	faceplayer
# 266 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_unset FLAG_SYS_GAME_CLEAR, SlateportCity_Harbor_EventScript_SailorNoAbnormalWeather
# 267 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_0x8004, 0
# 268 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_set FLAG_DEFEATED_KYOGRE, SlateportCity_Harbor_EventScript_CountDefeatedLegendary
# 269 "data/maps/SlateportCity_Harbor/scripts.pory"
	call_if_set FLAG_DEFEATED_GROUDON, SlateportCity_Harbor_EventScript_CountDefeatedLegendary
# 270 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_0x8004, 2, SlateportCity_Harbor_EventScript_SailorNoAbnormalWeather  @ Defeated both
# 271 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_AbnormalWeather, MSGBOX_DEFAULT
# 272 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 273 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 274 "data/maps/SlateportCity_Harbor/scripts.pory"

# 275 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_SailorNoAbnormalWeather::
# 276 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_LoveToGoDeepUnderwaterSomeday, MSGBOX_DEFAULT
# 277 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 278 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 279 "data/maps/SlateportCity_Harbor/scripts.pory"

# 280 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_CountDefeatedLegendary::
# 281 "data/maps/SlateportCity_Harbor/scripts.pory"
	addvar VAR_0x8004, 1
# 282 "data/maps/SlateportCity_Harbor/scripts.pory"
	return
# 283 "data/maps/SlateportCity_Harbor/scripts.pory"

# 284 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_FatMan::
# 285 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_SubTooSmallForMe, MSGBOX_NPC
# 286 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 287 "data/maps/SlateportCity_Harbor/scripts.pory"

# 288 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_CaptStern::
# 289 "data/maps/SlateportCity_Harbor/scripts.pory"
	lock
# 290 "data/maps/SlateportCity_Harbor/scripts.pory"
	faceplayer
# 291 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, SlateportCity_Harbor_EventScript_CaptSternFerryOrScannerComment
# 292 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_set FLAG_EVIL_TEAM_ESCAPED_STERN_SPOKE, SlateportCity_Harbor_EventScript_NeedDive
# 293 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_set FLAG_TEAM_AQUA_ESCAPED_IN_SUBMARINE, SlateportCity_Harbor_EventScript_TeamAquaLeftNeedDive
# 294 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_SLATEPORT_HARBOR_STATE, 2, SlateportCity_Harbor_EventScript_WhyStealSubmarine
# 295 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_SameThugsTriedToRobAtMuseum, MSGBOX_DEFAULT
# 296 "data/maps/SlateportCity_Harbor/scripts.pory"
	closemessage
# 297 "data/maps/SlateportCity_Harbor/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 298 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmovement 0
# 299 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 300 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 301 "data/maps/SlateportCity_Harbor/scripts.pory"

# 302 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_WhyStealSubmarine::
# 303 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_CaptSternWhyStealMySubmarine, MSGBOX_DEFAULT
# 304 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 305 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 306 "data/maps/SlateportCity_Harbor/scripts.pory"

# 307 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_TeamAquaLeftNeedDive::
# 308 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_EVIL_TEAM_ESCAPED_STERN_SPOKE
# 309 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_TeamAquaLeftNeedDive, MSGBOX_DEFAULT
# 310 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 311 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 312 "data/maps/SlateportCity_Harbor/scripts.pory"

# 313 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_NeedDive::
# 314 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_NeedDiveToCatchSub, MSGBOX_DEFAULT
# 315 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 316 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 317 "data/maps/SlateportCity_Harbor/scripts.pory"

# 318 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_CaptSternFerryOrScannerComment::
# 319 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_TEMP_1, 1, SlateportCity_Harbor_EventScript_TradedScanner
# 320 "data/maps/SlateportCity_Harbor/scripts.pory"
	checkitem ITEM_SCANNER
# 321 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, SlateportCity_Harbor_EventScript_AskToTradeScanner
# 322 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, SlateportCity_Harbor_EventScript_FerryFinished
# 323 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_WontBeLongBeforeWeFinishFerry, MSGBOX_DEFAULT
# 324 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 325 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 326 "data/maps/SlateportCity_Harbor/scripts.pory"

# 327 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_FerryFinished::
# 328 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_FinishedMakingFerry, MSGBOX_DEFAULT
# 329 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 330 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 331 "data/maps/SlateportCity_Harbor/scripts.pory"

# 332 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_AskToTradeScanner::
# 333 "data/maps/SlateportCity_Harbor/scripts.pory"
	message SlateportCity_Harbor_Text_WouldYouTradeScanner
# 334 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmessage
# 335 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_ChooseScannerTrade
# 336 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 337 "data/maps/SlateportCity_Harbor/scripts.pory"

# 338 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ChooseScannerTrade::
# 339 "data/maps/SlateportCity_Harbor/scripts.pory"
	multichoice 0, 0, MULTI_STERN_DEEPSEA, FALSE
# 340 "data/maps/SlateportCity_Harbor/scripts.pory"
	switch VAR_RESULT
# 341 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 0, SlateportCity_Harbor_EventScript_DeepSeaTooth
# 342 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 1, SlateportCity_Harbor_EventScript_DeepSeaScale
# 343 "data/maps/SlateportCity_Harbor/scripts.pory"
	case 2, SlateportCity_Harbor_EventScript_DeclineTrade
# 344 "data/maps/SlateportCity_Harbor/scripts.pory"
	case MULTI_B_PRESSED, SlateportCity_Harbor_EventScript_DeclineTrade
# 345 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 346 "data/maps/SlateportCity_Harbor/scripts.pory"

# 347 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_DeepSeaTooth::
# 348 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_TradeForDeepSeaTooth, MSGBOX_YESNO
# 349 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, NO, SlateportCity_Harbor_EventScript_ChooseDifferentTrade
# 350 "data/maps/SlateportCity_Harbor/scripts.pory"
	giveitem ITEM_DEEP_SEA_TOOTH
# 351 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 352 "data/maps/SlateportCity_Harbor/scripts.pory"
	removeitem ITEM_SCANNER
# 353 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_HandedScannerToStern, MSGBOX_DEFAULT
# 354 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_EXCHANGED_SCANNER
# 355 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_TradedScanner
# 356 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 357 "data/maps/SlateportCity_Harbor/scripts.pory"

# 358 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_DeepSeaScale::
# 359 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_TradeForDeepSeaScale, MSGBOX_YESNO
# 360 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, NO, SlateportCity_Harbor_EventScript_ChooseDifferentTrade
# 361 "data/maps/SlateportCity_Harbor/scripts.pory"
	giveitem ITEM_DEEP_SEA_SCALE
# 362 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 363 "data/maps/SlateportCity_Harbor/scripts.pory"
	removeitem ITEM_SCANNER
# 364 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_HandedScannerToStern, MSGBOX_DEFAULT
# 365 "data/maps/SlateportCity_Harbor/scripts.pory"
	setflag FLAG_EXCHANGED_SCANNER
# 366 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_TradedScanner
# 367 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 368 "data/maps/SlateportCity_Harbor/scripts.pory"

# 369 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_DeclineTrade::
# 370 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_IfYouWantToTradeLetMeKnow, MSGBOX_DEFAULT
# 371 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 372 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 373 "data/maps/SlateportCity_Harbor/scripts.pory"

# 374 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_ChooseDifferentTrade::
# 375 "data/maps/SlateportCity_Harbor/scripts.pory"
	message SlateportCity_Harbor_Text_WhichOneDoYouWant
# 376 "data/maps/SlateportCity_Harbor/scripts.pory"
	waitmessage
# 377 "data/maps/SlateportCity_Harbor/scripts.pory"
	goto SlateportCity_Harbor_EventScript_ChooseScannerTrade
# 378 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 379 "data/maps/SlateportCity_Harbor/scripts.pory"

# 380 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_EventScript_TradedScanner::
# 381 "data/maps/SlateportCity_Harbor/scripts.pory"
	setvar VAR_TEMP_1, 1
# 382 "data/maps/SlateportCity_Harbor/scripts.pory"
	msgbox SlateportCity_Harbor_Text_ThisWillHelpResearch, MSGBOX_DEFAULT
# 383 "data/maps/SlateportCity_Harbor/scripts.pory"
	release
# 384 "data/maps/SlateportCity_Harbor/scripts.pory"
	end
# 385 "data/maps/SlateportCity_Harbor/scripts.pory"

# 386 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_FerryServiceUnavailable:
# 387 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I beg your pardon?\n"
# 388 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You're looking for a ship?\p"
# 389 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I'm sorry, the ferry service isn't\n"
# 390 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "available at present…$"
# 391 "data/maps/SlateportCity_Harbor/scripts.pory"

# 392 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_MayISeeYourTicket:
# 393 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Hello, are you here for the ferry?\n"
# 394 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "May I see your TICKET?$"
# 395 "data/maps/SlateportCity_Harbor/scripts.pory"

# 396 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_YouMustHaveTicket:
# 397 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "{PLAYER} doesn't have the TICKET…\p"
# 398 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I'm terribly sorry.\p"
# 399 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You must have a TICKET to board\n"
# 400 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "the ferry.$"
# 401 "data/maps/SlateportCity_Harbor/scripts.pory"

# 402 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_FlashedTicketWhereTo:
# 403 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "{PLAYER} flashed the TICKET.\p"
# 404 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Perfect! That's all you need!\p"
# 405 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "And where would you like to go?$"
# 406 "data/maps/SlateportCity_Harbor/scripts.pory"

# 407 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_SailAnotherTime:
# 408 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Please sail with us another time!$"
# 409 "data/maps/SlateportCity_Harbor/scripts.pory"

# 410 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_LilycoveItIs:
# 411 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "LILYCOVE CITY it is, then!$"
# 412 "data/maps/SlateportCity_Harbor/scripts.pory"

# 413 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_BattleFrontierItIs:
# 414 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "BATTLE FRONTIER it is, then!$"
# 415 "data/maps/SlateportCity_Harbor/scripts.pory"

# 416 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_PleaseBoardFerry:
# 417 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Please board the ferry and wait for\n"
# 418 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "departure.$"
# 419 "data/maps/SlateportCity_Harbor/scripts.pory"

# 420 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_WhereWouldYouLikeToGo:
# 421 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Then, where would you like to go?$"
# 422 "data/maps/SlateportCity_Harbor/scripts.pory"

# 423 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_LoveToGoDeepUnderwaterSomeday:
# 424 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "A journey to the bottom of the sea…\n"
# 425 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I wonder what it'd be like?\p"
# 426 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I'd love to go deep underwater like\n"
# 427 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "that someday.$"
# 428 "data/maps/SlateportCity_Harbor/scripts.pory"

# 429 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_AbnormalWeather:
# 430 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "For a ship to sail safely, we need to\n"
# 431 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "know about the weather!\p"
# 432 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Speaking of weather, I heard something\n"
# 433 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "from a guy at the WEATHER INSTITUTE.\p"
# 434 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "He was saying abnormal weather has\n"
# 435 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "been reported all over the place!\p"
# 436 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You should visit the WEATHER INSTITUTE\n"
# 437 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "and ask around!$"
# 438 "data/maps/SlateportCity_Harbor/scripts.pory"

# 439 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_SubTooSmallForMe:
# 440 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I wanted to go with CAPT. STERN on\n"
# 441 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "the ocean floor exploration.\p"
# 442 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "But the sub's too small for me.\p"
# 443 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "If I squeezed in, there wouldn't be\n"
# 444 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "any room for the CAPTAIN…$"
# 445 "data/maps/SlateportCity_Harbor/scripts.pory"

# 446 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_SameThugsTriedToRobAtMuseum:
# 447 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Those thugs…\p"
# 448 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "They're the same lot who tried to rob\n"
# 449 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "the DEVON GOODS at the MUSEUM.$"
# 450 "data/maps/SlateportCity_Harbor/scripts.pory"

# 451 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_ArchieYouAgainHideoutInLilycove:
# 452 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "INAE: Well… There you are.\n"
# 453 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You really can't stay away, can you,\p"
# 454 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "darling?\p"
# 455 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "How adorable.\n"
# 456 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Chasing me all this way…\p"
# 457 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "But this little game is almost over.\n"
# 458 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "No one can stop what's coming.\p"
# 459 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "If you still wish to stand against me,\n"
# 460 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "come to our HIDEOUT in LILYCOVE CITY.\p"
# 461 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I'll be waiting for you…\n"
# 462 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Don't keep me waiting.$"
# 463 "data/maps/SlateportCity_Harbor/scripts.pory"

# 464 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_CaptSternWhyStealMySubmarine:
# 465 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Why…\p"
# 466 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Why would TEAM AQUA steal my\n"
# 467 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "SUBMARINE EXPLORER 1?\p"
# 468 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "They can't be after the slumbering\n"
# 469 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "POKéMON at the bottom of the sea…\p"
# 470 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "But even if I were to chase them,\n"
# 471 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "I don't stand a chance against them…$"
# 472 "data/maps/SlateportCity_Harbor/scripts.pory"

# 473 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_TeamAquaLeftNeedDive:
# 474 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Oh, {PLAYER}{KUN}…\p"
# 475 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Okay… So TEAM AQUA left before you\n"
# 476 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "could stop them…\p"
# 477 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Oh, no, don't blame yourself.\n"
# 478 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You're not responsible for this.\p"
# 479 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Trying to catch a submarine…\n"
# 480 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "It's impossible for most people.\p"
# 481 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You would need a POKéMON that knows\n"
# 482 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "how to DIVE…\p"
# 483 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Perhaps if you went out to\n"
# 484 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "MOSSDEEP CITY…\p"
# 485 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "A lot of divers live out there, so\n"
# 486 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "someone might teach you…$"
# 487 "data/maps/SlateportCity_Harbor/scripts.pory"

# 488 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_NeedDiveToCatchSub:
# 489 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Trying to catch a\n"
# 490 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "submarine… It's impossible.\p"
# 491 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "You would need a POKéMON that knows\n"
# 492 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "how to DIVE…\p"
# 493 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Perhaps if you went out to\n"
# 494 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "MOSSDEEP CITY…\p"
# 495 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "A lot of divers live out there, so\n"
# 496 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "someone might teach you…$"
# 497 "data/maps/SlateportCity_Harbor/scripts.pory"

# 498 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_WontBeLongBeforeWeFinishFerry:
# 499 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Oh, yes.\n"
# 500 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "MR. BRINEY came to our SHIPYARD.\p"
# 501 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "It won't be long now before we finish\n"
# 502 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "making the ferry!$"
# 503 "data/maps/SlateportCity_Harbor/scripts.pory"

# 504 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_FinishedMakingFerry:
# 505 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: {PLAYER}{KUN}!\p"
# 506 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "We finally finished making the ferry\n"
# 507 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "S.S. TIDAL!\p"
# 508 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "We couldn't have done it without\n"
# 509 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "your friend MR. BRINEY.\p"
# 510 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Please go for a short cruise on it!$"
# 511 "data/maps/SlateportCity_Harbor/scripts.pory"

# 512 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_WouldYouTradeScanner:
# 513 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Oh?\n"
# 514 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "{PLAYER}{KUN}, that item you have…\p"
# 515 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "That's a SCANNER! That would sure\n"
# 516 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "help us on our explorations.\p"
# 517 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "{PLAYER}{KUN}, would you trade your\n"
# 518 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "SCANNER for something?\p"
# 519 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Like, say, a DEEPSEATOOTH or\n"
# 520 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "a DEEPSEASCALE that I have?$"
# 521 "data/maps/SlateportCity_Harbor/scripts.pory"

# 522 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_IfYouWantToTradeLetMeKnow:
# 523 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Are you certain?\n"
# 524 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "It's useless to you, {PLAYER}{KUN}…\p"
# 525 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "Well, okay, then. If you want to trade\n"
# 526 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "your SCANNER, let me know.$"
# 527 "data/maps/SlateportCity_Harbor/scripts.pory"

# 528 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_TradeForDeepSeaTooth:
# 529 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: So you'll trade it for\n"
# 530 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "my DEEPSEATOOTH?$"
# 531 "data/maps/SlateportCity_Harbor/scripts.pory"

# 532 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_TradeForDeepSeaScale:
# 533 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: So you'll trade it for\n"
# 534 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "my DEEPSEASCALE?$"
# 535 "data/maps/SlateportCity_Harbor/scripts.pory"

# 536 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_WhichOneDoYouWant:
# 537 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Which one do you want?$"
# 538 "data/maps/SlateportCity_Harbor/scripts.pory"

# 539 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_HandedScannerToStern:
# 540 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "{PLAYER} handed the SCANNER to\n"
# 541 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN.$"
# 542 "data/maps/SlateportCity_Harbor/scripts.pory"

# 543 "data/maps/SlateportCity_Harbor/scripts.pory"
SlateportCity_Harbor_Text_ThisWillHelpResearch:
# 544 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "CAPT. STERN: Thanks, {PLAYER}{KUN}!\n"
# 545 "data/maps/SlateportCity_Harbor/scripts.pory"
	.string "This will help our research a lot!$"
