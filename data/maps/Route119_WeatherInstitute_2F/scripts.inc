# 1 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 2 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_MapScripts::
# 3 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route119_WeatherInstitute_2F_OnTransition
# 4 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.byte 0
# 5 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 6 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_OnTransition:
# 7 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_eq VAR_WEATHER_INSTITUTE_STATE, 0, Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaHere
# 8 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_eq VAR_WEATHER_INSTITUTE_STATE, 1, Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaGone
# 9 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, Route119_WeatherInstitute_2F_EventScript_SetScientistPosGameClear
# 10 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 11 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 12 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaHere::
# 13 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 1, 6
# 14 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_FACE_RIGHT
# 15 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 16 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 17 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaGone::
# 18 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 4, 6
# 19 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_FACE_RIGHT
# 20 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 21 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 22 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosGameClear::
# 23 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 2, 2
# 24 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_FACE_UP
# 25 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 26 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 27 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Grunt5::
# 28 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_5, Route119_WeatherInstitute_2F_Text_Grunt5Intro, Route119_WeatherInstitute_2F_Text_Grunt5Defeat
# 29 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Grunt5PostBattle, MSGBOX_AUTOCLOSE
# 30 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 31 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 32 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Grunt2::
# 33 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_2, Route119_WeatherInstitute_2F_Text_Grunt2Intro, Route119_WeatherInstitute_2F_Text_Grunt2Defeat
# 34 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 35 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 36 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 37 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Grunt3::
# 38 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_3, Route119_WeatherInstitute_2F_Text_Grunt3Intro, Route119_WeatherInstitute_2F_Text_Grunt3Defeat
# 39 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 40 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 41 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 42 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Shelly::
# 43 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_SHELLY_WEATHER_INSTITUTE, Route119_WeatherInstitute_2F_Text_ShellyIntro, Route119_WeatherInstitute_2F_Text_ShellyDefeat, Route119_WeatherInstitute_2F_EventScript_ShellyDefeated
# 44 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ShellyPostBattle, MSGBOX_AUTOCLOSE
# 45 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 46 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 47 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ShellyDefeated::
# 48 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ShellyPostBattle, MSGBOX_DEFAULT
# 49 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 50 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	addobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3
# 51 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3, Route119_WeatherInstitute_2F_Movement_GruntApproachShelly
# 52 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Route119_WeatherInstitute_2F_Movement_ShovePlayerOutOfWay
# 53 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 54 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_TeamMagmaJustPassedBy, MSGBOX_DEFAULT
# 55 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 56 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	playse SE_PIN
# 57 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SHELLY, Common_Movement_ExclamationMark
# 58 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 59 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SHELLY, Common_Movement_Delay48
# 60 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 61 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_WeHaveToHurryToMtPyre, MSGBOX_DEFAULT
# 62 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 63 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setvar VAR_WEATHER_INSTITUTE_STATE, 1
# 64 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	clearflag FLAG_HIDE_WEATHER_INSTITUTE_2F_WORKERS
# 65 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	fadedefaultbgm
# 66 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 67 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_HIDE_ROUTE_119_TEAM_AQUA
# 68 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_HIDE_WEATHER_INSTITUTE_2F_AQUA_GRUNT_M
# 69 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_1
# 70 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_2
# 71 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_SHELLY
# 72 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_4
# 73 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3
# 74 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Route119_WeatherInstitute_2F_Movement_PlayerReturnToPosition
# 75 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 76 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 77 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, Route119_WeatherInstitute_2F_Movement_ScientistApproachPlayer
# 78 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 79 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	copyobjectxytoperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST
# 80 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ReceiveCastform
# 81 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 82 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 83 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceiveCastform::
# 84 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ThanksPleaseTakePokemon, MSGBOX_DEFAULT
# 85 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setvar VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_CASTFORM_NORMAL
# 86 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	givemon SPECIES_CASTFORM_NORMAL, 25, ITEM_MYSTIC_WATER
# 87 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PARTY, Route119_WeatherInstitute_2F_EventScript_ReceiveCastformParty
# 88 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PC, Route119_WeatherInstitute_2F_EventScript_ReceiveCastformPC
# 89 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Common_EventScript_NoMoreRoomForPokemon
# 90 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 91 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 92 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceiveCastformParty::
# 93 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Route119_WeatherInstitute_2F_EventScript_ReceivedCastformFanfare
# 94 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 95 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route119_WeatherInstitute_2F_EventScript_ExplainCastform
# 96 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_GetGiftMonPartySlot
# 97 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 98 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ExplainCastform
# 99 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 100 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 101 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceiveCastformPC::
# 102 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Route119_WeatherInstitute_2F_EventScript_ReceivedCastformFanfare
# 103 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 104 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route119_WeatherInstitute_2F_EventScript_SendCastformToPC
# 105 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_NameReceivedBoxMon
# 106 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_SendCastformToPC
# 107 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 108 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 109 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SendCastformToPC::
# 110 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_TransferredToPC
# 111 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ExplainCastform
# 112 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 113 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 114 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceivedCastformFanfare::
# 115 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 116 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	message Route119_WeatherInstitute_2F_Text_PlayerReceivedCastform
# 117 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmessage
# 118 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitfanfare
# 119 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	bufferspeciesname STR_VAR_1, SPECIES_CASTFORM_NORMAL
# 120 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 121 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 122 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ExplainCastform::
# 123 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_PokemonChangesWithWeather, MSGBOX_DEFAULT
# 124 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_RECEIVED_CASTFORM
# 125 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 126 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 127 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 128 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ScientistMentionWeather::
# 129 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, Route119_WeatherInstitute_2F_EventScript_TryStartAbnormalWeather
# 130 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ChangingWeatherRidiculous, MSGBOX_DEFAULT
# 131 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 132 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 133 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 134 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_TryStartAbnormalWeather::
# 135 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setvar VAR_0x8004, 0
# 136 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_set FLAG_DEFEATED_KYOGRE, Route119_WeatherInstitute_2F_EventScript_LegendaryDefeated
# 137 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_set FLAG_DEFEATED_GROUDON, Route119_WeatherInstitute_2F_EventScript_LegendaryDefeated
# 138 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_0x8004, 2, Route119_WeatherInstitute_2F_EventScript_NoAbnormalWeather  @ Both defeated
# 139 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_unset FLAG_TEMP_2, Route119_WeatherInstitute_2F_EventScript_CreateAbnormalWeather
# 140 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	specialvar VAR_RESULT, GetAbnormalWeatherMapNameAndType
# 141 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, 1, Route119_WeatherInstitute_2F_EventScript_KyogreWeather
# 142 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_GroudonWeather, MSGBOX_DEFAULT
# 143 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 144 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 145 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 146 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_KyogreWeather::
# 147 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_KyogreWeather, MSGBOX_DEFAULT
# 148 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 149 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 150 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 151 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_CreateAbnormalWeather::
# 152 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	special CreateAbnormalWeatherEvent
# 153 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_TEMP_2
# 154 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 155 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 156 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_LegendaryDefeated::
# 157 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	addvar VAR_0x8004, 1
# 158 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 159 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 160 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_NoAbnormalWeather::
# 161 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_NoAbnormalWeather, MSGBOX_DEFAULT
# 162 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 163 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 164 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 165 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_GruntApproachShelly:
# 166 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 167 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 168 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 169 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 170 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 171 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 172 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 173 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 174 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 175 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 176 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 177 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 178 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 179 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_ShovePlayerOutOfWay:
# 180 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 181 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 182 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 183 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 184 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 185 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	ride_water_current_up
# 186 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_in_place_faster_down
# 187 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 188 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 189 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_PlayerReturnToPosition:
# 190 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	slide_down
# 191 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_in_place_faster_left
# 192 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 193 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 194 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_ScientistApproachPlayer:
# 195 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 196 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 197 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 198 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 199 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 200 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_WeatherScientist::
# 201 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	lock
# 202 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	faceplayer
# 203 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_set FLAG_RECEIVED_CASTFORM, Route119_WeatherInstitute_2F_EventScript_ScientistMentionWeather
# 204 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ReceiveCastform
# 205 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 206 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 207 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt2Intro:
# 208 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The INSTITUTE created a type of\n"
# 209 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "POKéMON that can influence weather patterns.\l"
# 210 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We're here to secure them.\p"
# 211 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You understand, don't you?\n"
# 212 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Control the weather... control production.\l"
# 213 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Control the rain... control the crops.\l"
# 214 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Control the sun... control energy output.\p"
# 215 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "All for the revolution!$"
# 216 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 217 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt2Defeat:
# 218 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Our plan's being spoiled by a kid?\n"
# 219 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The BOSS won't believe this.$"
# 220 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 221 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt2PostBattle:
# 222 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "If the POKéMON they made here can\n"
# 223 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "control the weather freely, then we of\l"
# 224 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "TEAM AQUA definitely need it!\p"
# 225 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "With weather control, we can amplify\n"
# 226 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "ocean currents. Generate power.\l"
# 227 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Create rain cycles that never end.\p"
# 228 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The hydroelectric potential alone...\n"
# 229 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "worth more than you can imagine!$"
# 230 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 231 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt3Intro:
# 232 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We're TEAM AQUA!\n"
# 233 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We appear wherever valuable assets\l"
# 234 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "are found!\p"
# 235 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Weather manipulation technology...\n"
# 236 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Do you have any idea what that's worth?\p"
# 237 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The droughts. The floods.\n"
# 238 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We could control both.\l"
# 239 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And sell the solution to both.$"
# 240 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 241 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt3Defeat:
# 242 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You got me!\n"
# 243 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "But you haven't won anything.$"
# 244 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 245 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt3PostBattle:
# 246 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You don't have any idea what we of\n"
# 247 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "TEAM AQUA are working towards!\l"
# 248 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You stay out of our way!\p"
# 249 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "When we control the seas,\n"
# 250 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "we control the trade.\l"
# 251 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "When we control the trade...\l"
# 252 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "we control everything!$"
# 253 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 254 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt5Intro:
# 255 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Don't tell me you're looking for that\n"
# 256 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "weather POKéMON, too?\p"
# 257 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "That's a no-no!\n"
# 258 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We were here to get it first!\p"
# 259 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Do you know what unlimited energy\n"
# 260 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "would do for our cause?\p"
# 261 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Coastal cities may be gone...\n"
# 262 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "A small price...$"
# 263 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 264 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt5Defeat:
# 265 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You are the one they talk about?\n"
# 266 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Defeating everyone... Damn you!$"
# 267 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 268 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt5PostBattle:
# 269 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Humph, so what?\n"
# 270 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "What we want…\p"
# 271 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "What we really want isn't here…\n"
# 272 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ihihihihi…$"
# 273 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 274 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ShellyIntro:
# 275 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ahahahaha!\p"
# 276 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're going to meddle in TEAM AQUA's\n"
# 277 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "affairs?\p"
# 278 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're either absolutely fearless,\n"
# 279 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "simply ignorant, or both!\p"
# 280 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're so cute, you're disgusting!\n"
# 281 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I'll put you down, kiddy!\p"
# 282 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Do you understand economics?\n"
# 283 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Supply and demand?\p"
# 284 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "If we control the tides,\n"
# 285 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "we control the supply.\l"
# 286 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "If we control the supply...\l"
# 287 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "we name the price.$"
# 288 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 289 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ShellyDefeat:
# 290 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ahahahaha!\n"
# 291 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're disgustingly strong!\n"
# 292 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And annoyingly idealistic.$"
# 293 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 294 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ShellyPostBattle:
# 295 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "It's bad enough to have TEAM MAGMA\n"
# 296 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "blunder about, but now there's you!\p"
# 297 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "What makes you want to sniff around\n"
# 298 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "in our business, anyway?\p"
# 299 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "This is about survival.\n"
# 300 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "About progress.\p"
# 301 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The world runs on energy.\n"
# 302 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Whoever controls it... runs the world.\p"
# 303 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "But you're just a child.\n"
# 304 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You wouldn't understand.$"
# 305 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 306 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_TeamMagmaJustPassedBy:
# 307 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We have a situation here!\p"
# 308 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "A TEAM MAGMA mob just passed\n"
# 309 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the WEATHER INSTITUTE.\p"
# 310 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "They appear to be headed for\n"
# 311 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "MT. PYRE!\p"
# 312 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "If they get there first...\n"
# 313 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the ORBS. The ancient relics.\p"
# 314 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "They'll control the land's resources\n"
# 315 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "completely. We can't let that happen.$"
# 316 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 317 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_WeHaveToHurryToMtPyre:
# 318 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "What?!\p"
# 319 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We can't waste any more time here!\n"
# 320 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We have to hurry to MT. PYRE, too!\p"
# 321 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ahahahaha!\n"
# 322 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "TEAM MAGMA, just you wait!\p"
# 323 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "This isn't about ideology anymore.\n"
# 324 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "This is about who controls HOENN's future.$"
# 325 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 326 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ThanksPleaseTakePokemon:
# 327 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Thanks!\n"
# 328 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Thanks to you, we're safe!\p"
# 329 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "It might be an odd way of thanking you,\n"
# 330 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "but take this POKéMON.\p"
# 331 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "It responds to weather.\n"
# 332 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Maybe it'll help you understand\l"
# 333 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "why controlling nature is so... tempting.$"
# 334 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 335 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
@ Unused
# 336 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_NoRoomForPokemon:
# 337 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Hm? You don't seem to have any room\n"
# 338 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "for this POKéMON.\p"
# 339 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Come back when you're ready.\n"
# 340 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The world isn't going to wait.$"
# 341 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 342 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_PlayerReceivedCastform:
# 343 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "{PLAYER} received CASTFORM!$"
# 344 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 345 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_PokemonChangesWithWeather:
# 346 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "That POKéMON changes shape according\n"
# 347 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "to the weather conditions.\p"
# 348 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "There're plenty of them in the\n"
# 349 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "INSTITUTE--go ahead and take it.\p"
# 350 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "A reminder that nature adapts.\n"
# 351 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "But can it survive exploitation?$"
# 352 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 353 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ChangingWeatherRidiculous:
# 354 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I've been researching rain for many\n"
# 355 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "years, but it's ridiculous to think that\l"
# 356 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "humans can freely change the weather.\p"
# 357 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And yet... these corporations.\n"
# 358 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "These teams. They're trying.\p"
# 359 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And they might just succeed.\n"
# 360 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "God help us all if they do.$"
# 361 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 362 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_GroudonWeather:
# 363 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I track weather patterns over\n"
# 364 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the HOENN region.\p"
# 365 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Presently, a drought has been recorded\n"
# 366 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "in {STR_VAR_1}.\p"
# 367 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Could that mean, somewhere near\n"
# 368 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "{STR_VAR_1}…\p"
# 369 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Something is awakening.\n"
# 370 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Something that thirsts.$"
# 371 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 372 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_KyogreWeather:
# 373 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I track weather patterns over\n"
# 374 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the HOENN region.\p"
# 375 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Presently, heavy rainfall has been\n"
# 376 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "recorded over {STR_VAR_1}.\p"
# 377 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Could that mean, somewhere near\n"
# 378 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "{STR_VAR_1}…\p"
# 379 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Something stirs beneath the waves.\n"
# 380 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Something ancient. Hungry.$"
# 381 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 382 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_NoAbnormalWeather:
# 383 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Abnormal weather conditions are\n"
# 384 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "no longer being reported.\p"
# 385 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The occasional rainfall is a blessing,\n"
# 386 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "really.\p"
# 387 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "For now... balance holds.\n"
# 388 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "But for how long?\p"
# 389 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The corporations are watching.\n"
# 390 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The teams are waiting.\l"
# 391 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And we're just counting raindrops.$"
