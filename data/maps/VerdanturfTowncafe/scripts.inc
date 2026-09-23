# 1 "data/maps/VerdanturfTowncafe/scripts.pory"

# 2 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_MapScripts::
# 3 "data/maps/VerdanturfTowncafe/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, VerdanturfTowncafe_OnTransition
# 4 "data/maps/VerdanturfTowncafe/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, VerdanturfTowncafe_OnFrame
# 5 "data/maps/VerdanturfTowncafe/scripts.pory"
	.byte 0
# 6 "data/maps/VerdanturfTowncafe/scripts.pory"

# 7 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_OnTransition:
# 8 "data/maps/VerdanturfTowncafe/scripts.pory"
	setvar VAR_TEMP_0, 0
# 9 "data/maps/VerdanturfTowncafe/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 10 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_unset FLAG_DEFEATED_WALLY_MAUVILLE, VerdanturfTowncafe_EventScript_HideGathering
# 11 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_set FLAG_LUKA_VERDANTURF_CAFE_SCENE_COMPLETE, VerdanturfTowncafe_EventScript_HideGathering
# 12 "data/maps/VerdanturfTowncafe/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_CAFE_CALENDULA
# 13 "data/maps/VerdanturfTowncafe/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_CAFE_ACACIA
# 14 "data/maps/VerdanturfTowncafe/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_CAFE_RIVAL
# 15 "data/maps/VerdanturfTowncafe/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_CAFE_LUKA
# 16 "data/maps/VerdanturfTowncafe/scripts.pory"
	setvar VAR_TEMP_0, 1
# 17 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 18 "data/maps/VerdanturfTowncafe/scripts.pory"

# 19 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_HideGathering::
# 20 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_CALENDULA
# 21 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_ACACIA
# 22 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_RIVAL
# 23 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_LUKA
# 24 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 25 "data/maps/VerdanturfTowncafe/scripts.pory"

# 26 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_OnFrame:
# 27 "data/maps/VerdanturfTowncafe/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, VerdanturfTowncafe_EventScript_GatheringIntro
# 28 "data/maps/VerdanturfTowncafe/scripts.pory"
	.2byte 0
# 29 "data/maps/VerdanturfTowncafe/scripts.pory"

# 30 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_GatheringIntro::
# 31 "data/maps/VerdanturfTowncafe/scripts.pory"
	lockall
# 32 "data/maps/VerdanturfTowncafe/scripts.pory"
	setvar VAR_TEMP_0, 2
# 33 "data/maps/VerdanturfTowncafe/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 34 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_ne VAR_TEMP_2, 9, VerdanturfTowncafe_EventScript_NotAtEntrance
# 35 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_ne VAR_TEMP_3, 11, VerdanturfTowncafe_EventScript_NotAtEntrance
# 36 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_VERDANTURF_CAFE_LUKA, Common_Movement_ExclamationMark
# 37 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 38 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_LUKA, DIR_SOUTH
# 39 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 40 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 41 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_LukaWelcome, MSGBOX_DEFAULT
# 42 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 43 "data/maps/VerdanturfTowncafe/scripts.pory"
	closemessage
# 44 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_VERDANTURF_CAFE_LUKA, VerdanturfTowncafe_Movement_LukaTakeSeat
# 45 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 46 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_PLAYER, VerdanturfTowncafe_Movement_PlayerTakeSeat
# 47 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 48 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_RIVAL, DIR_SOUTH
# 49 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 50 "data/maps/VerdanturfTowncafe/scripts.pory"
	call VerdanturfTowncafe_EventScript_RivalGreeting
# 51 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_RIVAL, DIR_WEST
# 52 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 53 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 54 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_AcaciaPraisesTrainers, MSGBOX_DEFAULT
# 55 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 56 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 57 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CalendulaPraisesLuka, MSGBOX_DEFAULT
# 58 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 59 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 60 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_AcaciaCometMeasurements, MSGBOX_DEFAULT
# 61 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 62 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 63 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CalendulaTeamEnergy, MSGBOX_DEFAULT
# 64 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 65 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 66 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_AcaciaErraticReadings, MSGBOX_DEFAULT
# 67 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 68 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 69 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CalendulaUnpredictable, MSGBOX_DEFAULT
# 70 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 71 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 72 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_AcaciaSafety, MSGBOX_DEFAULT
# 73 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 74 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 75 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CalendulaCaution, MSGBOX_DEFAULT
# 76 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 77 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 78 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_LukaConfidence, MSGBOX_DEFAULT
# 79 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 80 "data/maps/VerdanturfTowncafe/scripts.pory"
	call VerdanturfTowncafe_EventScript_RivalReassurance
# 81 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 82 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_AcaciaWorry, MSGBOX_DEFAULT
# 83 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 84 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 85 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CalendulaMeteorFalls, MSGBOX_DEFAULT
# 86 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 87 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_CALENDULA, DIR_SOUTH
# 88 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_ACACIA, DIR_NORTH
# 89 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 90 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CalendulaTakeCare, MSGBOX_DEFAULT
# 91 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 92 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_ACACIA, DIR_EAST
# 93 "data/maps/VerdanturfTowncafe/scripts.pory"
	closemessage
# 94 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_VERDANTURF_CAFE_CALENDULA, VerdanturfTowncafe_Movement_CalendulaExit
# 95 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 96 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_CALENDULA
# 97 "data/maps/VerdanturfTowncafe/scripts.pory"
	removeobject LOCALID_VERDANTURF_CAFE_CALENDULA
# 98 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 99 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_AcaciaMtChimney, MSGBOX_DEFAULT
# 100 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 101 "data/maps/VerdanturfTowncafe/scripts.pory"
	closemessage
# 102 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_VERDANTURF_CAFE_ACACIA, VerdanturfTowncafe_Movement_AcaciaExit
# 103 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 104 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_ACACIA
# 105 "data/maps/VerdanturfTowncafe/scripts.pory"
	removeobject LOCALID_VERDANTURF_CAFE_ACACIA
# 106 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 107 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_LUKA, DIR_NORTH
# 108 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_VERDANTURF_CAFE_RIVAL, DIR_SOUTH
# 109 "data/maps/VerdanturfTowncafe/scripts.pory"
	call VerdanturfTowncafe_EventScript_RivalFarewell
# 110 "data/maps/VerdanturfTowncafe/scripts.pory"
	closemessage
# 111 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_VERDANTURF_CAFE_RIVAL, VerdanturfTowncafe_Movement_RivalExit
# 112 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 113 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_RIVAL
# 114 "data/maps/VerdanturfTowncafe/scripts.pory"
	removeobject LOCALID_VERDANTURF_CAFE_RIVAL
# 115 "data/maps/VerdanturfTowncafe/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 116 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 117 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_LukaFarewell, MSGBOX_DEFAULT
# 118 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 119 "data/maps/VerdanturfTowncafe/scripts.pory"
	closemessage
# 120 "data/maps/VerdanturfTowncafe/scripts.pory"
	applymovement LOCALID_VERDANTURF_CAFE_LUKA, VerdanturfTowncafe_Movement_LukaExit
# 121 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmovement 0
# 122 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_CAFE_LUKA
# 123 "data/maps/VerdanturfTowncafe/scripts.pory"
	removeobject LOCALID_VERDANTURF_CAFE_LUKA
# 124 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_VERDANTURF_CAFE_GATHERING_INTRO_COMPLETE
# 125 "data/maps/VerdanturfTowncafe/scripts.pory"
	setflag FLAG_LUKA_VERDANTURF_CAFE_SCENE_COMPLETE
# 126 "data/maps/VerdanturfTowncafe/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 127 "data/maps/VerdanturfTowncafe/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_GYM_NORMAN
# 128 "data/maps/VerdanturfTowncafe/scripts.pory"
	call ProfAcacia_EventScript_UpdateLocation
# 129 "data/maps/VerdanturfTowncafe/scripts.pory"
	releaseall
# 130 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 131 "data/maps/VerdanturfTowncafe/scripts.pory"

# 132 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_NotAtEntrance::
# 133 "data/maps/VerdanturfTowncafe/scripts.pory"
	releaseall
# 134 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 135 "data/maps/VerdanturfTowncafe/scripts.pory"

# 136 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_RivalGreeting::
# 137 "data/maps/VerdanturfTowncafe/scripts.pory"
	checkplayergender
# 138 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, VerdanturfTowncafe_EventScript_RivalGreetingMay
# 139 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 140 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_RivalGreeting, MSGBOX_DEFAULT
# 141 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 142 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 143 "data/maps/VerdanturfTowncafe/scripts.pory"

# 144 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_RivalGreetingMay::
# 145 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 146 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_RivalGreeting, MSGBOX_DEFAULT
# 147 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 148 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 149 "data/maps/VerdanturfTowncafe/scripts.pory"

# 150 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_RivalReassurance::
# 151 "data/maps/VerdanturfTowncafe/scripts.pory"
	checkplayergender
# 152 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, VerdanturfTowncafe_EventScript_RivalReassuranceMay
# 153 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 154 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_RivalReassuranceFemale, MSGBOX_DEFAULT
# 155 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 156 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 157 "data/maps/VerdanturfTowncafe/scripts.pory"

# 158 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_RivalReassuranceMay::
# 159 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 160 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_RivalReassuranceMale, MSGBOX_DEFAULT
# 161 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 162 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 163 "data/maps/VerdanturfTowncafe/scripts.pory"

# 164 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_RivalFarewell::
# 165 "data/maps/VerdanturfTowncafe/scripts.pory"
	checkplayergender
# 166 "data/maps/VerdanturfTowncafe/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, VerdanturfTowncafe_EventScript_RivalFarewellMay
# 167 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 168 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_RivalFarewell, MSGBOX_DEFAULT
# 169 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 170 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 171 "data/maps/VerdanturfTowncafe/scripts.pory"

# 172 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_RivalFarewellMay::
# 173 "data/maps/VerdanturfTowncafe/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 174 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_RivalFarewell, MSGBOX_DEFAULT
# 175 "data/maps/VerdanturfTowncafe/scripts.pory"
	removefieldmugshot
# 176 "data/maps/VerdanturfTowncafe/scripts.pory"
	return
# 177 "data/maps/VerdanturfTowncafe/scripts.pory"

# 178 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Movement_LukaTakeSeat:
# 179 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 180 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 181 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 182 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 183 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 184 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 185 "data/maps/VerdanturfTowncafe/scripts.pory"
	face_left
# 186 "data/maps/VerdanturfTowncafe/scripts.pory"
	step_end
# 187 "data/maps/VerdanturfTowncafe/scripts.pory"

# 188 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Movement_PlayerTakeSeat:
# 189 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 190 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 191 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 192 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 193 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 194 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 195 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 196 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 197 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_up
# 198 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 199 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 200 "data/maps/VerdanturfTowncafe/scripts.pory"
	face_left
# 201 "data/maps/VerdanturfTowncafe/scripts.pory"
	step_end
# 202 "data/maps/VerdanturfTowncafe/scripts.pory"

# 203 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Movement_CalendulaExit:
# 204 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 205 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 206 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 207 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 208 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 209 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 210 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 211 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 212 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 213 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 214 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 215 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 216 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 217 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 218 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 219 "data/maps/VerdanturfTowncafe/scripts.pory"
	set_invisible
# 220 "data/maps/VerdanturfTowncafe/scripts.pory"
	step_end
# 221 "data/maps/VerdanturfTowncafe/scripts.pory"

# 222 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Movement_AcaciaExit:
# 223 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_left
# 224 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 225 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 226 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 227 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 228 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 229 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 230 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 231 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 232 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 233 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 234 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 235 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 236 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 237 "data/maps/VerdanturfTowncafe/scripts.pory"
	set_invisible
# 238 "data/maps/VerdanturfTowncafe/scripts.pory"
	step_end
# 239 "data/maps/VerdanturfTowncafe/scripts.pory"

# 240 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Movement_RivalExit:
# 241 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 242 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 243 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 244 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 245 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 246 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 247 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 248 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 249 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 250 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 251 "data/maps/VerdanturfTowncafe/scripts.pory"
	set_invisible
# 252 "data/maps/VerdanturfTowncafe/scripts.pory"
	step_end
# 253 "data/maps/VerdanturfTowncafe/scripts.pory"

# 254 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Movement_LukaExit:
# 255 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 256 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_right
# 257 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 258 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 259 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 260 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 261 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 262 "data/maps/VerdanturfTowncafe/scripts.pory"
	walk_down
# 263 "data/maps/VerdanturfTowncafe/scripts.pory"
	set_invisible
# 264 "data/maps/VerdanturfTowncafe/scripts.pory"
	step_end
# 265 "data/maps/VerdanturfTowncafe/scripts.pory"

# 266 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Calendula::
# 267 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 268 "data/maps/VerdanturfTowncafe/scripts.pory"

# 269 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Acacia::
# 270 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 271 "data/maps/VerdanturfTowncafe/scripts.pory"

# 272 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Rival::
# 273 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 274 "data/maps/VerdanturfTowncafe/scripts.pory"

# 275 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Luka::
# 276 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 277 "data/maps/VerdanturfTowncafe/scripts.pory"

# 278 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_LukaWelcome:
# 279 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "{PLAYER}, you made it! Come on,\n"
# 280 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "we've all been waiting for you.$"
# 281 "data/maps/VerdanturfTowncafe/scripts.pory"

# 282 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_RivalGreeting:
# 283 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Hey, {PLAYER}! It's good to see\n"
# 284 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "you.\p"
# 285 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We were just getting ready to talk\n"
# 286 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "about our research progress.$"
# 287 "data/maps/VerdanturfTowncafe/scripts.pory"

# 288 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_AcaciaPraisesTrainers:
# 289 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "{PLAYER} and {RIVAL}, it's\n"
# 290 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "wonderful to see how much you've\l"
# 291 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "both grown as trainers.$"
# 292 "data/maps/VerdanturfTowncafe/scripts.pory"

# 293 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CalendulaPraisesLuka:
# 294 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "You as well, LUKA. ACACIA and I\n"
# 295 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "couldn't have chosen better\l"
# 296 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "apprentices.$"
# 297 "data/maps/VerdanturfTowncafe/scripts.pory"

# 298 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_AcaciaCometMeasurements:
# 299 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Now, to get into the reason we're\n"
# 300 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "all here...\p"
# 301 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "CALENDULA and I have been\n"
# 302 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "noticing some strange phenomena\l"
# 303 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "occurring at various locations in\l"
# 304 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "the region.\p"
# 305 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "When the comet passed over, my\n"
# 306 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "instruments recorded its energy\l"
# 307 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "signature.\p"
# 308 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "After converting it into a\n"
# 309 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "formula, I have been able to\l"
# 310 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "measure the level of comet energy\l"
# 311 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "in an area.$"
# 312 "data/maps/VerdanturfTowncafe/scripts.pory"

# 313 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CalendulaTeamEnergy:
# 314 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We have noticed highly increased\n"
# 315 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "energy in areas where {RIVAL} and\l"
# 316 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "LUKA have told us they encountered\l"
# 317 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "TEAM MAGMA or AQUA.$"
# 318 "data/maps/VerdanturfTowncafe/scripts.pory"

# 319 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_AcaciaErraticReadings:
# 320 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Lately, though, we have been\n"
# 321 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "getting erratic readings from\l"
# 322 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "MT. CHIMNEY and METEOR FALLS.\p"
# 323 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "CALENDULA and I have decided to\n"
# 324 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "investigate more closely.$"
# 325 "data/maps/VerdanturfTowncafe/scripts.pory"

# 326 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CalendulaUnpredictable:
# 327 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "You three, you have all grown\n"
# 328 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "immensely, but the situation\l"
# 329 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "surrounding the comet is\l"
# 330 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "becoming more and more\l"
# 331 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "unpredictable.$"
# 332 "data/maps/VerdanturfTowncafe/scripts.pory"

# 333 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_AcaciaSafety:
# 334 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "With this discovery that TEAM\n"
# 335 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "MAGMA and TEAM AQUA are related\l"
# 336 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "to comet energy, your safety\l"
# 337 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "is of the utmost importance.$"
# 338 "data/maps/VerdanturfTowncafe/scripts.pory"

# 339 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CalendulaCaution:
# 340 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We could never have gathered all\n"
# 341 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "this data without you, but please\l"
# 342 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "exercise caution whenever you\l"
# 343 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "run into dangerous criminals.$"
# 344 "data/maps/VerdanturfTowncafe/scripts.pory"

# 345 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_LukaConfidence:
# 346 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Come on, PROFESSORS! We have\n"
# 347 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "stomped every single one of those\l"
# 348 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "thugs we've come across.$"
# 349 "data/maps/VerdanturfTowncafe/scripts.pory"

# 350 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_RivalReassuranceMale:
# 351 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Yeah, you don't need to worry\n"
# 352 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "about us! {PLAYER} especially has\l"
# 353 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "shown he can handle himself\l"
# 354 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "several times already.$"
# 355 "data/maps/VerdanturfTowncafe/scripts.pory"

# 356 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_RivalReassuranceFemale:
# 357 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Yeah, you don't need to worry\n"
# 358 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "about us! {PLAYER} especially has\l"
# 359 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "shown she can handle herself\l"
# 360 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "several times already.$"
# 361 "data/maps/VerdanturfTowncafe/scripts.pory"

# 362 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_AcaciaWorry:
# 363 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Of course we know how strong you\n"
# 364 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "are, but we still worry.$"
# 365 "data/maps/VerdanturfTowncafe/scripts.pory"

# 366 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CalendulaMeteorFalls:
# 367 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Well then, I'll be off to\n"
# 368 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "METEOR FALLS.\p"
# 369 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "{RIVAL}, LUKA, and {PLAYER}, I\n"
# 370 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "look forward to seeing your\l"
# 371 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "progress when we next meet.$"
# 372 "data/maps/VerdanturfTowncafe/scripts.pory"

# 373 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CalendulaTakeCare:
# 374 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Take care, dear. No dangerous\n"
# 375 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "trips without me.$"
# 376 "data/maps/VerdanturfTowncafe/scripts.pory"

# 377 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_AcaciaMtChimney:
# 378 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I'll be going to investigate\n"
# 379 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "MT. CHIMNEY. Stay safe, you three.$"
# 380 "data/maps/VerdanturfTowncafe/scripts.pory"

# 381 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_RivalFarewell:
# 382 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "{PLAYER}, LUKA, it was great to\n"
# 383 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "see you both here.\p"
# 384 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I've got so many more places to\n"
# 385 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "check out, so I'll be heading out\l"
# 386 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "now too. I hope to see you around!$"
# 387 "data/maps/VerdanturfTowncafe/scripts.pory"

# 388 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_LukaFarewell:
# 389 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "It's a shame we couldn't challenge\n"
# 390 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "the GYM, but it was nice to take\l"
# 391 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "some time to have a coffee with\l"
# 392 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "everyone and catch up.\p"
# 393 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I bet the GYM would be open again\n"
# 394 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "by now, but I think I'll go visit\l"
# 395 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "my family first.\p"
# 396 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I've realized my priorities needed\n"
# 397 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "some reordering.\p"
# 398 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Stop by and say hello if you've\n"
# 399 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "got time, {PLAYER}. See you later!$"
# 400 "data/maps/VerdanturfTowncafe/scripts.pory"

# 401 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Cashier::
# 402 "data/maps/VerdanturfTowncafe/scripts.pory"
	lock
# 403 "data/maps/VerdanturfTowncafe/scripts.pory"
	faceplayer
# 404 "data/maps/VerdanturfTowncafe/scripts.pory"
	message VerdanturfTowncafe_Text_Cashier
# 405 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmessage
# 406 "data/maps/VerdanturfTowncafe/scripts.pory"
	pokemart VerdanturfTowncafe_Pokemart_Coffee
# 407 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CashierFarewell, MSGBOX_DEFAULT
# 408 "data/maps/VerdanturfTowncafe/scripts.pory"
	release
# 409 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 410 "data/maps/VerdanturfTowncafe/scripts.pory"

# 411 "data/maps/VerdanturfTowncafe/scripts.pory"
	.align 2
# 412 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Pokemart_Coffee:
# 413 "data/maps/VerdanturfTowncafe/scripts.pory"
	.2byte ITEM_HOT_COFFEE
# 414 "data/maps/VerdanturfTowncafe/scripts.pory"
	.2byte ITEM_ICED_COFFEE
# 415 "data/maps/VerdanturfTowncafe/scripts.pory"
	pokemartlistend
# 416 "data/maps/VerdanturfTowncafe/scripts.pory"

# 417 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Barista::
# 418 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Barista, MSGBOX_NPC
# 419 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 420 "data/maps/VerdanturfTowncafe/scripts.pory"

# 421 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Boy::
# 422 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Boy, MSGBOX_NPC
# 423 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 424 "data/maps/VerdanturfTowncafe/scripts.pory"

# 425 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Lass::
# 426 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Lass, MSGBOX_NPC
# 427 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 428 "data/maps/VerdanturfTowncafe/scripts.pory"

# 429 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Daughter::
# 430 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Daughter, MSGBOX_NPC
# 431 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 432 "data/maps/VerdanturfTowncafe/scripts.pory"

# 433 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Mother::
# 434 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Mother, MSGBOX_NPC
# 435 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 436 "data/maps/VerdanturfTowncafe/scripts.pory"

# 437 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Father::
# 438 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Father, MSGBOX_NPC
# 439 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 440 "data/maps/VerdanturfTowncafe/scripts.pory"

# 441 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Cashier:
# 442 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Welcome to the VERDANTURF CAFE!\p"
# 443 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "HOT COFFEE or ICED COFFEE?\n"
# 444 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "What can I get for you?$"
# 445 "data/maps/VerdanturfTowncafe/scripts.pory"

# 446 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CashierFarewell:
# 447 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Thanks! Come back whenever you\n"
# 448 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "need a little pick-me-up.$"
# 449 "data/maps/VerdanturfTowncafe/scripts.pory"

# 450 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Barista:
# 451 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "One HOT COFFEE coming up!\p"
# 452 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "The whole cafe smells wonderful\n"
# 453 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "when the beans are brewing.$"
# 454 "data/maps/VerdanturfTowncafe/scripts.pory"

# 455 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Boy:
# 456 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I asked her here for coffee...\p"
# 457 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Now I've forgotten everything\n"
# 458 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I was going to say.$"
# 459 "data/maps/VerdanturfTowncafe/scripts.pory"

# 460 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Lass:
# 461 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "He keeps stirring his coffee,\n"
# 462 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "even though he finished it.\p"
# 463 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "It's kind of cute.$"
# 464 "data/maps/VerdanturfTowncafe/scripts.pory"

# 465 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Daughter:
# 466 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Mom and Dad won't let me have\n"
# 467 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "coffee!\p"
# 468 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "They say I'd bounce off walls.\n"
# 469 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I can already do that!$"
# 470 "data/maps/VerdanturfTowncafe/scripts.pory"

# 471 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Mother:
# 472 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We brought her out for a treat.\p"
# 473 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "She's not stopped asking for\n"
# 474 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "coffee since we arrived.$"
# 475 "data/maps/VerdanturfTowncafe/scripts.pory"

# 476 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Father:
# 477 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "She's having berry juice.\n"
# 478 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We thought she'd like it better.\p"
# 479 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "She disagrees.$"
