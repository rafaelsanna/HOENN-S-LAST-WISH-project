# 1 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 2 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_MapScripts::
# 3 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route119_WeatherInstitute_2F_OnTransition
# 4 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.byte 0
# 5 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 6 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_OnTransition::
# 7 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_eq VAR_WEATHER_INSTITUTE_STATE, 0, Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaHere
# 8 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_eq VAR_WEATHER_INSTITUTE_STATE, 1, Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaGone
# 9 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_eq VAR_WEATHER_INSTITUTE_STATE, 2, Route119_WeatherInstitute_2F_EventScript_SetScientistPosReturnVisit
# 10 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, Route119_WeatherInstitute_2F_EventScript_SetScientistPosGameClear
# 11 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 12 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 13 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaHere::
# 14 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 0, 5
# 15 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_FACE_RIGHT
# 16 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 17 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 18 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosAquaGone::
# 19 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 5, 6
# 20 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_FACE_DOWN
# 21 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 22 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 23 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosReturnVisit::
# 24 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	@ The meeting seat is now the map default; retain the old return-visit position.
# 25 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 18, 6
# 26 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_LOOK_AROUND
# 27 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 28 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 29 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SetScientistPosGameClear::
# 30 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, 2, 2
# 31 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, MOVEMENT_TYPE_FACE_UP
# 32 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 33 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 34 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Grunt5::
# 35 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_5, Route119_WeatherInstitute_2F_Text_Grunt5Intro, Route119_WeatherInstitute_2F_Text_Grunt5Defeat
# 36 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Grunt5PostBattle, MSGBOX_AUTOCLOSE
# 37 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 38 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 39 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Grunt2::
# 40 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_2, Route119_WeatherInstitute_2F_Text_Grunt2Intro, Route119_WeatherInstitute_2F_Text_Grunt2Defeat
# 41 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 42 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 43 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 44 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Grunt3::
# 45 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_3, Route119_WeatherInstitute_2F_Text_Grunt3Intro, Route119_WeatherInstitute_2F_Text_Grunt3Defeat
# 46 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 47 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 48 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 49 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_Shelly::
# 50 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	trainerbattle_single TRAINER_SHELLY_WEATHER_INSTITUTE, Route119_WeatherInstitute_2F_Text_ShellyIntro, Route119_WeatherInstitute_2F_Text_ShellyDefeat, Route119_WeatherInstitute_2F_EventScript_ShellyDefeated
# 51 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ShellyPostBattle, MSGBOX_AUTOCLOSE
# 52 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 53 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 54 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ShellyDefeated::
# 55 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ShellyPostBattle, MSGBOX_DEFAULT
# 56 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 57 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	addobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3
# 58 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3, Route119_WeatherInstitute_2F_Movement_GruntApproachShelly
# 59 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Route119_WeatherInstitute_2F_Movement_ShovePlayerOutOfWay
# 60 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 61 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_TeamMagmaJustPassedBy, MSGBOX_DEFAULT
# 62 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 63 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	playse SE_PIN
# 64 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SHELLY, Common_Movement_ExclamationMark
# 65 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 66 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SHELLY, Common_Movement_Delay48
# 67 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 68 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_WeHaveToHurryToMtPyre, MSGBOX_DEFAULT
# 69 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 70 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	@ The messenger leaves first, clearing y6 for Netsu's departure.
# 71 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3, Route119_WeatherInstitute_2F_Movement_MessengerExit
# 72 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 73 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_3
# 74 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SHELLY, Route119_WeatherInstitute_2F_Movement_NetsuExit
# 75 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 76 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_SHELLY
# 77 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Route119_WeatherInstitute_2F_Movement_PlayerReturnToPosition
# 78 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 79 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setvar VAR_WEATHER_INSTITUTE_STATE, 1
# 80 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	clearflag FLAG_HIDE_WEATHER_INSTITUTE_2F_WORKERS
# 81 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	fadedefaultbgm
# 82 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 83 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_HIDE_ROUTE_119_TEAM_AQUA
# 84 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_HIDE_WEATHER_INSTITUTE_2F_AQUA_GRUNT_M
# 85 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_1
# 86 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_2
# 87 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_GRUNT_4
# 88 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 89 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 90 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	@ President: (2,5) -> (4,6), beside the player at (5,6).
# 91 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_BEDROCK_PRESIDENT, Route119_WeatherInstitute_2F_Movement_PresidentApproachPlayer
# 92 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 93 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_BedrockPresident, MSGBOX_DEFAULT
# 94 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	closemessage
# 95 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	@ Push the player to (5,7) before the president crosses their old tile.
# 96 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Route119_WeatherInstitute_2F_Movement_PresidentPushPlayer
# 97 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 98 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_BEDROCK_PRESIDENT, Route119_WeatherInstitute_2F_Movement_PresidentExit
# 99 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 100 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	removeobject LOCALID_WEATHER_INSTITUTE_2F_BEDROCK_PRESIDENT
# 101 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 102 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	applymovement LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST, Route119_WeatherInstitute_2F_Movement_ScientistApproachPlayer
# 103 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmovement 0
# 104 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	copyobjectxytoperm LOCALID_WEATHER_INSTITUTE_2F_SCIENTIST
# 105 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ReceiveCastform
# 106 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 107 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 108 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceiveCastform::
# 109 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ThanksPleaseTakePokemon, MSGBOX_DEFAULT
# 110 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setvar VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_CASTFORM_NORMAL
# 111 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	givemon SPECIES_CASTFORM_NORMAL, 25, ITEM_MYSTIC_WATER
# 112 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PARTY, Route119_WeatherInstitute_2F_EventScript_ReceiveCastformParty
# 113 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PC, Route119_WeatherInstitute_2F_EventScript_ReceiveCastformPC
# 114 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Common_EventScript_NoMoreRoomForPokemon
# 115 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 116 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 117 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceiveCastformParty::
# 118 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Route119_WeatherInstitute_2F_EventScript_ReceivedCastformFanfare
# 119 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 120 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route119_WeatherInstitute_2F_EventScript_ExplainCastform
# 121 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_GetGiftMonPartySlot
# 122 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 123 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ExplainCastform
# 124 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 125 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 126 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceiveCastformPC::
# 127 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Route119_WeatherInstitute_2F_EventScript_ReceivedCastformFanfare
# 128 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 129 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route119_WeatherInstitute_2F_EventScript_SendCastformToPC
# 130 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_NameReceivedBoxMon
# 131 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_SendCastformToPC
# 132 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 133 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 134 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_SendCastformToPC::
# 135 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call Common_EventScript_TransferredToPC
# 136 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ExplainCastform
# 137 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 138 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 139 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ReceivedCastformFanfare::
# 140 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 141 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	message Route119_WeatherInstitute_2F_Text_PlayerReceivedCastform
# 142 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitmessage
# 143 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	waitfanfare
# 144 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	bufferspeciesname STR_VAR_1, SPECIES_CASTFORM_NORMAL
# 145 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 146 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 147 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ExplainCastform::
# 148 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_PokemonChangesWithWeather, MSGBOX_DEFAULT
# 149 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_RECEIVED_CASTFORM
# 150 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 151 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 152 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 153 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_ScientistMentionWeather::
# 154 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, Route119_WeatherInstitute_2F_EventScript_TryStartAbnormalWeather
# 155 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_ChangingWeatherRidiculous, MSGBOX_DEFAULT
# 156 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 157 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 158 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 159 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_TryStartAbnormalWeather::
# 160 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setvar VAR_0x8004, 0
# 161 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_set FLAG_DEFEATED_KYOGRE, Route119_WeatherInstitute_2F_EventScript_LegendaryDefeated
# 162 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_set FLAG_DEFEATED_GROUDON, Route119_WeatherInstitute_2F_EventScript_LegendaryDefeated
# 163 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_0x8004, 2, Route119_WeatherInstitute_2F_EventScript_NoAbnormalWeather  @ Both defeated
# 164 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	call_if_unset FLAG_TEMP_2, Route119_WeatherInstitute_2F_EventScript_CreateAbnormalWeather
# 165 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	specialvar VAR_RESULT, GetAbnormalWeatherMapNameAndType
# 166 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_eq VAR_RESULT, 1, Route119_WeatherInstitute_2F_EventScript_KyogreWeather
# 167 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_GroudonWeather, MSGBOX_DEFAULT
# 168 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 169 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 170 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 171 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_KyogreWeather::
# 172 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_KyogreWeather, MSGBOX_DEFAULT
# 173 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 174 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 175 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 176 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_CreateAbnormalWeather::
# 177 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	special CreateAbnormalWeatherEvent
# 178 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	setflag FLAG_TEMP_2
# 179 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 180 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 181 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_LegendaryDefeated::
# 182 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	addvar VAR_0x8004, 1
# 183 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	return
# 184 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 185 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_NoAbnormalWeather::
# 186 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_NoAbnormalWeather, MSGBOX_DEFAULT
# 187 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	release
# 188 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 189 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 190 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_GruntApproachShelly:
# 191 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 192 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 193 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 194 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 195 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 196 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 197 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 198 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 199 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 200 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 201 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_fast_left
# 202 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 203 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 204 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_ShovePlayerOutOfWay:
# 205 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 206 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 207 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 208 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 209 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	delay_16
# 210 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	ride_water_current_up
# 211 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_in_place_faster_down
# 212 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 213 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 214 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_PlayerReturnToPosition:
# 215 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	slide_down
# 216 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_in_place_faster_left
# 217 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 218 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 219 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_MessengerExit::
# 220 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 221 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 222 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 223 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 224 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 225 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 226 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 227 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 228 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 229 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 230 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 231 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 232 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 233 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_NetsuExit::
# 234 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 235 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 236 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 237 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 238 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 239 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 240 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 241 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 242 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 243 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 244 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 245 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 246 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 247 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 248 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_PresidentApproachPlayer::
# 249 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_down
# 250 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 251 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 252 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	face_right
# 253 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 254 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 255 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_PresidentPushPlayer::
# 256 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	ride_water_current_down
# 257 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	face_up
# 258 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 259 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 260 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_PresidentExit::
# 261 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 262 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 263 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 264 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 265 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 266 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 267 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 268 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 269 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 270 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 271 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 272 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 273 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 274 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 275 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Movement_ScientistApproachPlayer::
# 276 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_down
# 277 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 278 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 279 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 280 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 281 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	walk_right
# 282 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	face_down
# 283 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	step_end
# 284 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 285 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
@ State 0 is before Netsu's defeat; states 1/2 use the after-event dialogue.
# 286 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_InstituteWorker1::
# 287 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_ne VAR_WEATHER_INSTITUTE_STATE, 0, Route119_WeatherInstitute_2F_EventScript_InstituteWorker1AfterNetsu
# 288 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Worker1BeforeNetsu, MSGBOX_NPC
# 289 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 290 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 291 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_InstituteWorker1AfterNetsu:
# 292 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Worker1AfterNetsu, MSGBOX_NPC
# 293 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 294 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 295 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_InstituteWorker2::
# 296 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_ne VAR_WEATHER_INSTITUTE_STATE, 0, Route119_WeatherInstitute_2F_EventScript_InstituteWorker2AfterNetsu
# 297 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Worker2BeforeNetsu, MSGBOX_NPC
# 298 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 299 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 300 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_InstituteWorker2AfterNetsu:
# 301 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	msgbox Route119_WeatherInstitute_2F_Text_Worker2AfterNetsu, MSGBOX_NPC
# 302 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 303 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 304 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_EventScript_WeatherScientist::
# 305 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	lock
# 306 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	faceplayer
# 307 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto_if_set FLAG_RECEIVED_CASTFORM, Route119_WeatherInstitute_2F_EventScript_ScientistMentionWeather
# 308 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	goto Route119_WeatherInstitute_2F_EventScript_ReceiveCastform
# 309 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	end
# 310 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 311 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt2Intro:
# 312 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The INSTITUTE studies weather, but their\n"
# 313 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "equipment is also ideal for finding\l"
# 314 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "pockets of high heat within the earth.\p"
# 315 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You understand, don't you?\n"
# 316 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The legendary POKéMON sleeping there…\p"
# 317 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We could create new land, generate\n"
# 318 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "unlimited power, but most importantly,\l"
# 319 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "destroy all competitors!$"
# 320 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 321 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt2Defeat:
# 322 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Our plan's being spoiled by a kid?\n"
# 323 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The BOSS won't believe this.$"
# 324 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 325 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt2PostBattle:
# 326 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You might be a strong trainer, kid,\n"
# 327 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "but even you can't beat capitalism.\p"
# 328 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Money is what runs the world!\p"
# 329 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "With our puppet sponsor, we can do\n"
# 330 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "so much more than we ever could alone.$"
# 331 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 332 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt3Intro:
# 333 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Hey! Don't get in the way, kid!\p"
# 334 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Our boss is busy making these nerds\n"
# 335 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "a deal they can't refuse!\p"
# 336 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Once this place is ours, we'll use their\n"
# 337 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "equipment to find what we're looking for.\p"
# 338 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Police can't do anything to us if we\n"
# 339 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "have enough money!$"
# 340 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 341 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt3Defeat:
# 342 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You got me!\n"
# 343 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "But you haven't won anything.$"
# 344 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 345 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt3PostBattle:
# 346 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You don't have any idea what we of\n"
# 347 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "TEAM MAGMA are working towards!\l"
# 348 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You stay out of our way!\p"
# 349 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Or better yet, join us!\p"
# 350 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Between you and me, we have a sweet\n"
# 351 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "thing going with BEDROCK MINING.\p"
# 352 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "If you get in early, you'll end up\n"
# 353 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "on top when everything is done!$"
# 354 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 355 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt5Intro:
# 356 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Hey! Loser! Don't get in the way!\p"
# 357 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We're taking over this place.\n"
# 358 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "When we do, not just anyone will\l"
# 359 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "be able to waltz in here!$"
# 360 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 361 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt5Defeat:
# 362 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You are the one they talk about?\n"
# 363 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Defeating everyone… Damn you!$"
# 364 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 365 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_Grunt5PostBattle:
# 366 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Humph, so what?\p"
# 367 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "As soon as we own this place, we'll\n"
# 368 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "just have you trespassed.\p"
# 369 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Better get out before then!\n"
# 370 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ihihihihi…$"
# 371 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 372 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ShellyIntro:
# 373 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ahahahaha!\p"
# 374 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're going to meddle in our affairs?\n"
# 375 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Good luck with that this time!\p"
# 376 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're either absolutely fearless,\n"
# 377 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "simply ignorant, or both!\p"
# 378 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're so cute, you're disgusting!\n"
# 379 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You remind me of stupid ALEJANDRO!\p"
# 380 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Do you understand economics?\p"
# 381 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You can't do crap to us when we're\n"
# 382 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "using a legit business as a front to\l"
# 383 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "get us what we want.\p"
# 384 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The deal is happening right behind me.\n"
# 385 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I won't let you interfere!$"
# 386 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 387 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ShellyDefeat:
# 388 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ahahahaha!\n"
# 389 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "You're disgustingly strong!\l"
# 390 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And annoyingly idealistic.$"
# 391 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 392 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ShellyPostBattle:
# 393 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "It doesn't matter anyway. Your efforts\n"
# 394 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "mean nothing, kid.\p"
# 395 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Do you get it now? You're powerless to\n"
# 396 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "stop us with just brute force.\p"
# 397 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The deal has already gone through.\n"
# 398 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Are you going to rip up the contract?\p"
# 399 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Hahaha! I can't wait to rub this in\n"
# 400 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "that loser ALEJANDRO's face!$"
# 401 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 402 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_TeamMagmaJustPassedBy:
# 403 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We have a situation here!\p"
# 404 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "A TEAM AQUA mob just passed\n"
# 405 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the WEATHER INSTITUTE.\p"
# 406 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "They appear to be headed for\n"
# 407 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "MT. PYRE!\p"
# 408 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Our team is already at MT. PYRE, but\n"
# 409 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "it's just a small group and the boss.\p"
# 410 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We need to warn them now before they\n"
# 411 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "run into TEAM AQUA!$"
# 412 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 413 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_WeHaveToHurryToMtPyre:
# 414 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "What?!\p"
# 415 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We can't waste any more time here!\n"
# 416 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "We have to meet up with them, pronto!\p"
# 417 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Ahahahaha!\n"
# 418 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "TEAM AQUA, just you wait!\p"
# 419 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "This isn't about ideology anymore.\n"
# 420 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "This is about who controls HOENN's future.$"
# 421 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 422 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ThanksPleaseTakePokemon:
# 423 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I'm… I'm so sorry. I had no choice.\p"
# 424 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "My kid is doing okay for now, but he\n"
# 425 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "won't be if that company buys the rights\l"
# 426 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "to the medicine he needs.\p"
# 427 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "They threatened to charge us a fortune,\n"
# 428 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "just to force me to sell the institute!\p"
# 429 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Worse, they're still making me run it.\n"
# 430 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "How could I ever face my workers?\p"
# 431 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "It's not nearly enough as an apology,\n"
# 432 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "but for your efforts in stopping this\l"
# 433 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "madness, please accept this POKéMON.$"
# 434 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 435 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
@ Unused
# 436 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_NoRoomForPokemon:
# 437 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Hm? You don't seem to have any room\n"
# 438 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "for this POKéMON.\p"
# 439 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Come back when you're ready.$"
# 440 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 441 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_PlayerReceivedCastform:
# 442 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "{PLAYER} received CASTFORM!$"
# 443 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 444 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_PokemonChangesWithWeather:
# 445 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "That POKéMON changes shape according\n"
# 446 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "to the weather conditions.\p"
# 447 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "There're plenty of them in the\n"
# 448 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "INSTITUTE, go ahead and take it.\p"
# 449 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "A reminder that nature adapts.\n"
# 450 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I only hope we can, too.$"
# 451 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 452 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_ChangingWeatherRidiculous:
# 453 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I've been researching rain for many\n"
# 454 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "years, but it's ridiculous to think that\l"
# 455 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "humans can change the world's climate\l"
# 456 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "without devestating consequences.\p"
# 457 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And yet… these corporations and\n"
# 458 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "these teams are trying.\p"
# 459 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And they might just succeed.\n"
# 460 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "God help us all if they do.$"
# 461 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 462 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_GroudonWeather:
# 463 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I track weather patterns over\n"
# 464 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the HOENN region.\p"
# 465 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Presently, a drought has been recorded\n"
# 466 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "in {STR_VAR_1}.\p"
# 467 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Could that mean, somewhere near\n"
# 468 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "{STR_VAR_1}…\p"
# 469 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Something is awakening.$"
# 470 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 471 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_KyogreWeather:
# 472 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I track weather patterns over\n"
# 473 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "the HOENN region.\p"
# 474 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Presently, heavy rainfall has been\n"
# 475 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "recorded over {STR_VAR_1}.\p"
# 476 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Could that mean, somewhere near\n"
# 477 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "{STR_VAR_1}…\p"
# 478 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Something stirs beneath the waves.$"
# 479 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"

# 480 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
Route119_WeatherInstitute_2F_Text_NoAbnormalWeather:
# 481 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Abnormal weather conditions are\n"
# 482 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "no longer being reported.\p"
# 483 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The occasional rainfall is a blessing,\n"
# 484 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "really.\p"
# 485 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "For now… balance holds.\n"
# 486 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "But for how long?\p"
# 487 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The corporations are watching.\n"
# 488 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "The teams are poised to strike.\l"
# 489 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "And we're just counting raindrops.$"

Route119_WeatherInstitute_2F_Text_BedrockPresident::
# 493 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Hello, child. I just purchased this\n"
	.string "building for BEDROCK MINING CO. Not to\l"
	.string "worry, we will be retaining all staff.\l"
	.string "Only their assignments will change. I'll\l"
	.string "be going now.$"

Route119_WeatherInstitute_2F_Text_Worker1BeforeNetsu::
# 500 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "All these people suddenly stormed in.\n"
	.string "The boss just told us to continue our\l"
	.string "work… How can we just ignore everything\l"
	.string "that is happening?$"

Route119_WeatherInstitute_2F_Text_Worker1AfterNetsu::
# 506 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "Now that those strange people have\n"
	.string "left, at least we can focus on our work\l"
	.string "again.$"

Route119_WeatherInstitute_2F_Text_Worker2BeforeNetsu::
# 510 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "I caught a glimpse of the boss's face\n"
	.string "while I was walking by the meeting room.\l"
	.string "He was white as a sheet.$"

Route119_WeatherInstitute_2F_Text_Worker2AfterNetsu::
# 515 "data/maps/Route119_WeatherInstitute_2F/scripts.pory"
	.string "It is disappointing that the weather\n"
	.string "institute is no longer an independent\l"
	.string "organization. But, on the bright side,\l"
	.string "at least none of us are getting laid\l"
	.string "off.$"
