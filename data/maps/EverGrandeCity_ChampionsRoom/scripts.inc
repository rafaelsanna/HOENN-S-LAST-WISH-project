# 1 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 2 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_MapScripts::
# 3 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, EverGrandeCity_ChampionsRoom_OnTransition
# 4 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, EverGrandeCity_ChampionsRoom_OnWarp
# 5 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, EverGrandeCity_ChampionsRoom_OnFrame
# 6 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.byte 0
# 7 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 8 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_OnTransition:
# 9 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 10 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 11 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 12 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_OnWarp:
# 13 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, EverGrandeCity_ChampionsRoom_EventScript_PlayerTurnNorth
# 14 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.2byte 0
# 15 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 16 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_PlayerTurnNorth::
# 17 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 18 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 19 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 20 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_OnFrame:
# 21 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, EverGrandeCity_ChampionsRoom_EventScript_EnterRoom
# 22 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.2byte 0
# 23 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 24 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_EnterRoom::
# 25 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	lockall
# 26 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkUp4
# 27 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 28 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay 40
# 29 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_ChampionsRoom_Movement_PlayerApproachWallace
# 30 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 31 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	setvar VAR_TEMP_1, 1
# 32 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	goto EverGrandeCity_ChampionsRoom_EventScript_Wallace
# 33 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	releaseall
# 34 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 35 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 36 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_PlayerApproachWallace:
# 37 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 38 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 39 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 40 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 41 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_Wallace::
# 42 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playbgm MUS_ENCOUNTER_CHAMPION, FALSE
# 43 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_IntroSpeech, MSGBOX_DEFAULT
# 44 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	trainerbattle_no_intro TRAINER_WALLACE, EverGrandeCity_ChampionsRoom_Text_Defeat
# 45 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	goto EverGrandeCity_ChampionsRoom_EventScript_Defeated
# 46 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 47 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 48 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_Defeated::
# 49 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playse SE_DOOR
# 50 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	setmetatile 6, 1, METATILE_EliteFour_OpenDoorChampion_Frame, FALSE
# 51 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	setmetatile 6, 2, METATILE_EliteFour_OpenDoorChampion_Opening, FALSE
# 52 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	special DrawWholeMapView
# 53 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_PostBattleSpeech, MSGBOX_DEFAULT
# 54 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	closemessage
# 55 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playse SE_DOOR
# 56 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	checkplayergender
# 57 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call_if_eq VAR_RESULT, MALE, EverGrandeCity_ChampionsRoom_EventScript_PlayMayMusic
# 58 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, EverGrandeCity_ChampionsRoom_EventScript_PlayBrendanMusic
# 59 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	addobject LOCALID_CHAMPIONS_ROOM_RIVAL
# 60 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call EverGrandeCity_ChampionsRoom_EventScript_RivalApproachPlayer
# 61 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	checkplayergender
# 62 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, EverGrandeCity_ChampionsRoom_EventScript_MayAdvice
# 63 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, EverGrandeCity_ChampionsRoom_EventScript_BrendanAdvice
# 64 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 65 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 66 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_PlayMayMusic::
# 67 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, FALSE
# 68 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	return
# 69 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 70 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_PlayBrendanMusic::
# 71 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, FALSE
# 72 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	return
# 73 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 74 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_MayAdvice::
# 75 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 76 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_MayAdvice, MSGBOX_DEFAULT
# 77 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	removefieldmugshot
# 78 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay 40
# 79 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playse SE_PIN
# 80 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, Common_Movement_ExclamationMark
# 81 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 82 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, Common_Movement_Delay48
# 83 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 84 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call EverGrandeCity_ChampionsRoom_EventScript_RivalLookBackAndForth
# 85 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 86 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_MayItsAlreadyOver, MSGBOX_DEFAULT
# 87 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	removefieldmugshot
# 88 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	goto EverGrandeCity_ChampionsRoom_EventScript_BirchArrivesExitForHoF
# 89 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 90 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 91 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_BrendanAdvice::
# 92 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_BrendanAdvice, MSGBOX_DEFAULT
# 93 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay 40
# 94 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	playse SE_PIN
# 95 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, Common_Movement_ExclamationMark
# 96 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 97 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, Common_Movement_Delay48
# 98 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 99 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call EverGrandeCity_ChampionsRoom_EventScript_RivalLookBackAndForth
# 100 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_BrendanYouveWon, MSGBOX_DEFAULT
# 101 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	goto EverGrandeCity_ChampionsRoom_EventScript_BirchArrivesExitForHoF
# 102 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 103 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 104 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_BirchArrivesExitForHoF::
# 105 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	closemessage
# 106 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	addobject LOCALID_CHAMPIONS_ROOM_BIRCH
# 107 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_BIRCH, EverGrandeCity_ChampionsRoom_Movement_BirchArrives
# 108 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 109 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 110 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 111 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_BirchArriveRatePokedex, MSGBOX_DEFAULT
# 112 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call ProfBirch_EventScript_RatePokedex
# 113 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_BirchCongratulations, MSGBOX_DEFAULT
# 114 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_WALLACE, Common_Movement_WalkInPlaceFasterUp
# 115 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 116 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay 20
# 117 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_WALLACE, Common_Movement_WalkInPlaceFasterDown
# 118 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 119 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_WallaceComeWithMe, MSGBOX_DEFAULT
# 120 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	closemessage
# 121 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay 30
# 122 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_WALLACE, EverGrandeCity_ChampionsRoom_Movement_WallaceExitStart
# 123 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_ChampionsRoom_Movement_PlayerExitStart
# 124 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_BIRCH, Common_Movement_WalkInPlaceFasterUp
# 125 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, EverGrandeCity_ChampionsRoom_Movement_RivalFollows
# 126 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 127 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay 20
# 128 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 129 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 130 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_WallaceWaitOutside, MSGBOX_DEFAULT
# 131 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	checkplayergender
# 132 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call_if_eq VAR_RESULT, MALE, EverGrandeCity_ChampionsRoom_EventScript_MayCongratulations
# 133 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, EverGrandeCity_ChampionsRoom_EventScript_BrendanCongratulations
# 134 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	closemessage
# 135 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_WALLACE, EverGrandeCity_ChampionsRoom_Movement_WallaceExit
# 136 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_ChampionsRoom_Movement_PlayerExit
# 137 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 138 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_GYM_GREETER
# 139 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	warp MAP_EVER_GRANDE_CITY_HALL_OF_FAME, 7, 16
# 140 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitstate
# 141 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	releaseall
# 142 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	end
# 143 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 144 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_MayCongratulations::
# 145 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 146 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_MayCongratulations, MSGBOX_DEFAULT
# 147 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	removefieldmugshot
# 148 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	return
# 149 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 150 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_BrendanCongratulations::
# 151 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	msgbox EverGrandeCity_ChampionsRoom_Text_BrendanCongratulations, MSGBOX_DEFAULT
# 152 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	return
# 153 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 154 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_RivalApproachPlayer::
# 155 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, EverGrandeCity_ChampionsRoom_Movement_RivalApproachPlayer
# 156 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 157 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 158 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 159 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	return
# 160 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 161 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_EventScript_RivalLookBackAndForth::
# 162 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	applymovement LOCALID_CHAMPIONS_ROOM_RIVAL, EverGrandeCity_ChampionsRoom_Movement_RivalLookBackAndForth
# 163 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	waitmovement 0
# 164 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	return
# 165 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 166 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_PlayerExitStart:
# 167 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 168 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 169 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 170 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 171 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_PlayerExit:
# 172 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 173 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_16
# 174 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 175 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_8
# 176 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	set_invisible
# 177 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 178 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 179 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_RivalApproachPlayer:
# 180 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 181 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 182 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 183 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 184 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 185 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_left
# 186 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 187 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_right
# 188 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 189 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 190 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_RivalLookBackAndForth:
# 191 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_up
# 192 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_16
# 193 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_right
# 194 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_16
# 195 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_up
# 196 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_8
# 197 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_right
# 198 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_16
# 199 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 200 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 201 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_RivalFollows:
# 202 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_right
# 203 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 204 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 205 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 206 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_WallaceExitStart:
# 207 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 208 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 209 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_down
# 210 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 211 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 212 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_WallaceExit:
# 213 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 214 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	delay_8
# 215 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	set_invisible
# 216 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 217 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 218 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Movement_BirchArrives:
# 219 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 220 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 221 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 222 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 223 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 224 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_right
# 225 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_up
# 226 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	walk_in_place_faster_left
# 227 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	step_end
# 228 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 229 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_IntroSpeech:
# 230 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "WALLACE: Welcome, {PLAYER}{KUN}.\p"
# 231 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "That incident in SOOTOPOLIS CITY…\n"
# 232 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "That was superb work, putting an end\l"
# 233 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "to that crisis all by yourself.\p"
# 234 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Oops!\p"
# 235 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "It wouldn't be fair to say that you\n"
# 236 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "alone ended the crisis.\p"
# 237 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "You overcame that difficult situation\n"
# 238 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "by working as one with your POKéMON.\p"
# 239 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "We TRAINERS raise POKéMON by giving\n"
# 240 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "them items and by teaching them new\l"
# 241 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "techniques for battle.\p"
# 242 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "But we ourselves also learn many\n"
# 243 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "things from POKéMON.\p"
# 244 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "And this is where your achievements\n"
# 245 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "are put to the test against what\l"
# 246 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "others like you have achieved.\p"
# 247 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Now!\p"
# 248 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Who can most elegantly dance with\n"
# 249 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "their POKéMON in HOENN?\p"
# 250 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Show me right here and now!$"
# 251 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 252 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_Defeat:
# 253 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "I, the CHAMPION, fall in defeat…\p"
# 254 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "That was wonderful work.\n"
# 255 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "You were elegant, infuriatingly so.\l"
# 256 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "And yet it was utterly glorious!\p"
# 257 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Kudos to you, {PLAYER}{KUN}!\p"
# 258 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "You are a truly noble POKéMON\n"
# 259 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "TRAINER!$"
# 260 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 261 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_PostBattleSpeech:
# 262 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "WALLACE: The POKéMON you sent into\n"
# 263 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "battle…\p"
# 264 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "At times they danced like a spring\n"
# 265 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "breeze, and at times they struck\l"
# 266 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "like lightning.\p"
# 267 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "It was with light, yet surefooted,\n"
# 268 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "elegance that you led your POKéMON.\p"
# 269 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Even I felt bedazzled by your\n"
# 270 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "masterful performance!\p"
# 271 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "You now stand at the glorious peak\n"
# 272 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "of the POKéMON LEAGUE.\p"
# 273 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "I now proclaim you to be the new\n"
# 274 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "HOENN region…$"
# 275 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 276 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_MayAdvice:
# 277 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\p"
# 278 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Here's some advice before you challenge\n"
# 279 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "the CHAMPION…$"
# 280 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 281 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_MayItsAlreadyOver:
# 282 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "ZINNIA: Huh?\n"
# 283 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "What, what, what?\p"
# 284 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "{PLAYER}{KUN}…\n"
# 285 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Could it be that…\l"
# 286 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "It's already over?$"
# 287 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 288 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_BrendanAdvice:
# 289 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "BRENDAN: {PLAYER}!\p"
# 290 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "How would you like some advice before\n"
# 291 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "you challenge the CHAMPION?…$"
# 292 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 293 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_BrendanYouveWon:
# 294 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "BRENDAN: {PLAYER}…\p"
# 295 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Are you trying to tell me…\n"
# 296 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "You've beaten the CHAMPION?$"
# 297 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 298 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_BirchArriveRatePokedex:
# 299 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "PROF. ACACIA: See?\n"
# 300 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "What did I tell you, {RIVAL}?\p"
# 301 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Didn't I tell you that you don't need\n"
# 302 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "to worry about {PLAYER}{KUN}?\p"
# 303 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "… … … … … … … …\n"
# 304 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "{PLAYER}{KUN}, you've finally done it.\p"
# 305 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "When I heard that you defeated your\n"
# 306 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "own father at the PETALBURG GYM,\l"
# 307 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "I thought perhaps you had a chance…\p"
# 308 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "But to think you've actually become\n"
# 309 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "the CHAMPION!\p"
# 310 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Ah, yes!\p"
# 311 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "What became of your POKéDEX?\n"
# 312 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Here, let me see.$"
# 313 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 314 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_BirchCongratulations:
# 315 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "PROF. ACACIA: Anyways,\n"
# 316 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "congratulations!\p"
# 317 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Now, go proudly into the final room!$"
# 318 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 319 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_WallaceComeWithMe:
# 320 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "WALLACE: {PLAYER}{KUN}…\p"
# 321 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "No, let me rephrase that properly.\p"
# 322 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "The new CHAMPION!\p"
# 323 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Come with me.$"
# 324 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 325 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_WallaceWaitOutside:
# 326 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "WALLACE: I'm sorry, but…\p"
# 327 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "From here on, only those TRAINERS who\n"
# 328 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "have become CHAMPIONS may enter.\p"
# 329 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "You'll have to wait outside with\n"
# 330 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "PROF. ACACIA.$"
# 331 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 332 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_MayCongratulations:
# 333 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "ZINNIA: Groan…\p"
# 334 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "… … … … … … … …\n"
# 335 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "… … … … … … … …\p"
# 336 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "I'm just joking! That's okay!\n"
# 337 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "That's the rule!\p"
# 338 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "{PLAYER}{KUN}!\n"
# 339 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Honestly, congratulations!$"
# 340 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"

# 341 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
EverGrandeCity_ChampionsRoom_Text_BrendanCongratulations:
# 342 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "BRENDAN: Whaaaat?! … … … … …\n"
# 343 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "… … … … … … … …\p"
# 344 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "It can't be helped if that's the rule.\p"
# 345 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "{PLAYER}, way to go!\n"
# 346 "data/maps/EverGrandeCity_ChampionsRoom/scripts.pory"
	.string "Congratulations!$"
