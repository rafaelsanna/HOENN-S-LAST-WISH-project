# 1 "data/maps/Route104/scripts.pory"

# 2 "data/maps/Route104/scripts.pory"
CamperCaesar::
# 3 "data/maps/Route104/scripts.pory"
# 2 "data/maps/Route104/scripts.pory"
# 4 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_CAESAR, CaesarIntro, CaesarLose
# 5 "data/maps/Route104/scripts.pory"
# 3 "data/maps/Route104/scripts.pory"
# 6 "data/maps/Route104/scripts.pory"
	lock
# 7 "data/maps/Route104/scripts.pory"
# 4 "data/maps/Route104/scripts.pory"
# 8 "data/maps/Route104/scripts.pory"
	msgbox CamperCaesar_Text_0
# 9 "data/maps/Route104/scripts.pory"
# 5 "data/maps/Route104/scripts.pory"
# 10 "data/maps/Route104/scripts.pory"
	release
# 11 "data/maps/Route104/scripts.pory"
	end
# 12 "data/maps/Route104/scripts.pory"

# 13 "data/maps/Route104/scripts.pory"

# 14 "data/maps/Route104/scripts.pory"
# 17 "data/maps/Route104/scripts.pory"
# 15 "data/maps/Route104/scripts.pory"

# 16 "data/maps/Route104/scripts.pory"
# 18 "data/maps/Route104/scripts.pory"
# 17 "data/maps/Route104/scripts.pory"
Route104_MapScripts::
# 18 "data/maps/Route104/scripts.pory"
# 19 "data/maps/Route104/scripts.pory"
# 19 "data/maps/Route104/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route104_OnFrame
# 20 "data/maps/Route104/scripts.pory"
# 20 "data/maps/Route104/scripts.pory"
# 21 "data/maps/Route104/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route104_OnTransition
# 22 "data/maps/Route104/scripts.pory"
# 21 "data/maps/Route104/scripts.pory"
# 23 "data/maps/Route104/scripts.pory"
	.byte 0
# 24 "data/maps/Route104/scripts.pory"
# 22 "data/maps/Route104/scripts.pory"
# 25 "data/maps/Route104/scripts.pory"

# 26 "data/maps/Route104/scripts.pory"
# 23 "data/maps/Route104/scripts.pory"
# 27 "data/maps/Route104/scripts.pory"
Route104_OnFrame:
# 28 "data/maps/Route104/scripts.pory"
# 24 "data/maps/Route104/scripts.pory"
# 29 "data/maps/Route104/scripts.pory"
	map_script_2 VAR_BOARD_BRINEY_BOAT_STATE, 1, Route104_EventScript_StartSailToDewford
# 30 "data/maps/Route104/scripts.pory"
# 25 "data/maps/Route104/scripts.pory"
# 31 "data/maps/Route104/scripts.pory"
	.2byte 0
# 32 "data/maps/Route104/scripts.pory"
# 26 "data/maps/Route104/scripts.pory"
# 33 "data/maps/Route104/scripts.pory"

# 34 "data/maps/Route104/scripts.pory"
# 27 "data/maps/Route104/scripts.pory"
# 35 "data/maps/Route104/scripts.pory"
Route104_EventScript_StartSailToDewford::
# 36 "data/maps/Route104/scripts.pory"
# 28 "data/maps/Route104/scripts.pory"
# 37 "data/maps/Route104/scripts.pory"
	lockall
# 38 "data/maps/Route104/scripts.pory"
# 29 "data/maps/Route104/scripts.pory"
# 39 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_SailToDewford
# 40 "data/maps/Route104/scripts.pory"
# 30 "data/maps/Route104/scripts.pory"
# 41 "data/maps/Route104/scripts.pory"
	end
# 42 "data/maps/Route104/scripts.pory"
# 31 "data/maps/Route104/scripts.pory"
# 43 "data/maps/Route104/scripts.pory"

# 44 "data/maps/Route104/scripts.pory"
# 32 "data/maps/Route104/scripts.pory"
# 45 "data/maps/Route104/scripts.pory"
Route104_OnTransition:
# 46 "data/maps/Route104/scripts.pory"
# 33 "data/maps/Route104/scripts.pory"
# 47 "data/maps/Route104/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 48 "data/maps/Route104/scripts.pory"
# 34 "data/maps/Route104/scripts.pory"
# 49 "data/maps/Route104/scripts.pory"
	call Route104_EventScript_TrySetRivalPos
# 50 "data/maps/Route104/scripts.pory"
# 35 "data/maps/Route104/scripts.pory"
# 51 "data/maps/Route104/scripts.pory"
	call Route104_EventScript_TryShowBrineyRival
# 52 "data/maps/Route104/scripts.pory"
# 35 "data/maps/Route104/scripts.pory"
# 53 "data/maps/Route104/scripts.pory"
	call Route104_EventScript_ShowOrHideWhiteHerbFlorist
# 54 "data/maps/Route104/scripts.pory"
# 36 "data/maps/Route104/scripts.pory"
# 55 "data/maps/Route104/scripts.pory"
	end
# 56 "data/maps/Route104/scripts.pory"
# 37 "data/maps/Route104/scripts.pory"
# 57 "data/maps/Route104/scripts.pory"

# 58 "data/maps/Route104/scripts.pory"
# 38 "data/maps/Route104/scripts.pory"
# 59 "data/maps/Route104/scripts.pory"
Route104_EventScript_ShowOrHideWhiteHerbFlorist::
# 60 "data/maps/Route104/scripts.pory"
# 39 "data/maps/Route104/scripts.pory"
# 61 "data/maps/Route104/scripts.pory"
	goto_if_unset FLAG_MET_PRETTY_PETAL_SHOP_OWNER, Route104_EventScript_HideWhiteHerbFlorist
# 62 "data/maps/Route104/scripts.pory"
# 40 "data/maps/Route104/scripts.pory"
# 63 "data/maps/Route104/scripts.pory"
	goto_if_unset FLAG_BADGE03_GET, Route104_EventScript_HideWhiteHerbFlorist
# 64 "data/maps/Route104/scripts.pory"
# 41 "data/maps/Route104/scripts.pory"
# 65 "data/maps/Route104/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_104_WHITE_HERB_FLORIST
# 66 "data/maps/Route104/scripts.pory"
# 42 "data/maps/Route104/scripts.pory"
# 67 "data/maps/Route104/scripts.pory"
	return
# 68 "data/maps/Route104/scripts.pory"
# 43 "data/maps/Route104/scripts.pory"
# 69 "data/maps/Route104/scripts.pory"

# 70 "data/maps/Route104/scripts.pory"
# 44 "data/maps/Route104/scripts.pory"
# 71 "data/maps/Route104/scripts.pory"
Route104_EventScript_HideWhiteHerbFlorist::
# 72 "data/maps/Route104/scripts.pory"
# 45 "data/maps/Route104/scripts.pory"
# 73 "data/maps/Route104/scripts.pory"
	setflag FLAG_HIDE_ROUTE_104_WHITE_HERB_FLORIST
# 74 "data/maps/Route104/scripts.pory"
# 46 "data/maps/Route104/scripts.pory"
# 75 "data/maps/Route104/scripts.pory"
	return
# 76 "data/maps/Route104/scripts.pory"
# 47 "data/maps/Route104/scripts.pory"
# 77 "data/maps/Route104/scripts.pory"

# 78 "data/maps/Route104/scripts.pory"
# 48 "data/maps/Route104/scripts.pory"
# 79 "data/maps/Route104/scripts.pory"
Route104_EventScript_TrySetRivalPos::
# 80 "data/maps/Route104/scripts.pory"
# 49 "data/maps/Route104/scripts.pory"
# 81 "data/maps/Route104/scripts.pory"
	goto_if_ge VAR_BOARD_BRINEY_BOAT_STATE, 1, Route104_EventScript_DontSetRivalPos
# 82 "data/maps/Route104/scripts.pory"
# 50 "data/maps/Route104/scripts.pory"
# 83 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, Route104_EventScript_DontSetRivalPos
# 84 "data/maps/Route104/scripts.pory"
# 51 "data/maps/Route104/scripts.pory"
# 85 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_unset FLAG_REGISTER_RIVAL_POKENAV, Route104_EventScript_DontSetRivalPos
# 86 "data/maps/Route104/scripts.pory"
# 52 "data/maps/Route104/scripts.pory"
# 87 "data/maps/Route104/scripts.pory"
	setobjectxyperm LOCALID_ROUTE104_RIVAL, 17, 52
# 88 "data/maps/Route104/scripts.pory"
# 53 "data/maps/Route104/scripts.pory"
# 89 "data/maps/Route104/scripts.pory"
	return
# 90 "data/maps/Route104/scripts.pory"
# 54 "data/maps/Route104/scripts.pory"
# 91 "data/maps/Route104/scripts.pory"

# 92 "data/maps/Route104/scripts.pory"
# 55 "data/maps/Route104/scripts.pory"
# 93 "data/maps/Route104/scripts.pory"
Route104_EventScript_DontSetRivalPos::
# 94 "data/maps/Route104/scripts.pory"
# 56 "data/maps/Route104/scripts.pory"
# 95 "data/maps/Route104/scripts.pory"
	return
# 96 "data/maps/Route104/scripts.pory"
# 57 "data/maps/Route104/scripts.pory"
# 97 "data/maps/Route104/scripts.pory"

# 98 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryShowBrineyRival::
# 99 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_ROUTE_104_RIVAL_BOAT_TRIP, Route104_EventScript_HideBrineyRival
# 100 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_VISITED_DEWFORD_TOWN, Route104_EventScript_HideBrineyRival
# 101 "data/maps/Route104/scripts.pory"
	goto_if_unset FLAG_DEFEATED_RIVAL_RUSTBORO, Route104_EventScript_HideBrineyRival
# 102 "data/maps/Route104/scripts.pory"
	setobjectxyperm LOCALID_ROUTE104_BRINEY_RIVAL, 19, 52
# 103 "data/maps/Route104/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_104_BRINEY_RIVAL
# 104 "data/maps/Route104/scripts.pory"
	return
# 105 "data/maps/Route104/scripts.pory"

# 106 "data/maps/Route104/scripts.pory"
Route104_EventScript_HideBrineyRival::
# 107 "data/maps/Route104/scripts.pory"
	setflag FLAG_HIDE_ROUTE_104_BRINEY_RIVAL
# 108 "data/maps/Route104/scripts.pory"
	return
# 109 "data/maps/Route104/scripts.pory"

# 110 "data/maps/Route104/scripts.pory"
Route104_EventScript_BrineyRival::
# 111 "data/maps/Route104/scripts.pory"
	lock
# 112 "data/maps/Route104/scripts.pory"
	faceplayer
# 113 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrineyRivalWaiting, MSGBOX_DEFAULT
# 114 "data/maps/Route104/scripts.pory"
	release
# 115 "data/maps/Route104/scripts.pory"
	end
# 116 "data/maps/Route104/scripts.pory"

# 117 "data/maps/Route104/scripts.pory"
# 58 "data/maps/Route104/scripts.pory"
# 118 "data/maps/Route104/scripts.pory"
Route104_EventScript_Rival::
# 119 "data/maps/Route104/scripts.pory"
# 59 "data/maps/Route104/scripts.pory"
# 120 "data/maps/Route104/scripts.pory"
	lockall
# 121 "data/maps/Route104/scripts.pory"
# 60 "data/maps/Route104/scripts.pory"
# 122 "data/maps/Route104/scripts.pory"
	setvar VAR_0x8008, 1
# 123 "data/maps/Route104/scripts.pory"
# 61 "data/maps/Route104/scripts.pory"
# 124 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Common_Movement_FacePlayer
# 125 "data/maps/Route104/scripts.pory"
# 62 "data/maps/Route104/scripts.pory"
# 126 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 127 "data/maps/Route104/scripts.pory"
# 63 "data/maps/Route104/scripts.pory"
# 128 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_RivalEncounter
# 129 "data/maps/Route104/scripts.pory"
# 64 "data/maps/Route104/scripts.pory"
# 130 "data/maps/Route104/scripts.pory"

# 131 "data/maps/Route104/scripts.pory"
# 65 "data/maps/Route104/scripts.pory"
# 132 "data/maps/Route104/scripts.pory"
Route104_EventScript_RivalTrigger::
# 133 "data/maps/Route104/scripts.pory"
# 66 "data/maps/Route104/scripts.pory"
# 134 "data/maps/Route104/scripts.pory"
	lockall
# 135 "data/maps/Route104/scripts.pory"
# 67 "data/maps/Route104/scripts.pory"
# 136 "data/maps/Route104/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_RIVAL
# 137 "data/maps/Route104/scripts.pory"
# 68 "data/maps/Route104/scripts.pory"
# 138 "data/maps/Route104/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 139 "data/maps/Route104/scripts.pory"
# 69 "data/maps/Route104/scripts.pory"
# 140 "data/maps/Route104/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 141 "data/maps/Route104/scripts.pory"
# 70 "data/maps/Route104/scripts.pory"
# 142 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 143 "data/maps/Route104/scripts.pory"
# 71 "data/maps/Route104/scripts.pory"
# 144 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 145 "data/maps/Route104/scripts.pory"
# 72 "data/maps/Route104/scripts.pory"
# 146 "data/maps/Route104/scripts.pory"
	delay 10
# 147 "data/maps/Route104/scripts.pory"
# 73 "data/maps/Route104/scripts.pory"
# 148 "data/maps/Route104/scripts.pory"
	addobject LOCALID_ROUTE104_RIVAL
# 149 "data/maps/Route104/scripts.pory"
# 74 "data/maps/Route104/scripts.pory"
# 150 "data/maps/Route104/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_104_RIVAL
# 151 "data/maps/Route104/scripts.pory"
# 75 "data/maps/Route104/scripts.pory"
# 152 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_PlayerBackUp
# 153 "data/maps/Route104/scripts.pory"
# 76 "data/maps/Route104/scripts.pory"
# 154 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 155 "data/maps/Route104/scripts.pory"
# 77 "data/maps/Route104/scripts.pory"
# 156 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Route104_Movement_RivalExitBrineysCottage
# 157 "data/maps/Route104/scripts.pory"
# 78 "data/maps/Route104/scripts.pory"
# 158 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 159 "data/maps/Route104/scripts.pory"
# 79 "data/maps/Route104/scripts.pory"
# 160 "data/maps/Route104/scripts.pory"
	delay 20
# 161 "data/maps/Route104/scripts.pory"
# 80 "data/maps/Route104/scripts.pory"
# 162 "data/maps/Route104/scripts.pory"
	setvar VAR_0x8008, 0
# 163 "data/maps/Route104/scripts.pory"
# 81 "data/maps/Route104/scripts.pory"
# 164 "data/maps/Route104/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 165 "data/maps/Route104/scripts.pory"
# 82 "data/maps/Route104/scripts.pory"
# 166 "data/maps/Route104/scripts.pory"
	playse SE_PIN
# 167 "data/maps/Route104/scripts.pory"
# 83 "data/maps/Route104/scripts.pory"
# 168 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Common_Movement_ExclamationMark
# 169 "data/maps/Route104/scripts.pory"
# 84 "data/maps/Route104/scripts.pory"
# 170 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 171 "data/maps/Route104/scripts.pory"
# 85 "data/maps/Route104/scripts.pory"
# 172 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Common_Movement_Delay48
# 173 "data/maps/Route104/scripts.pory"
# 86 "data/maps/Route104/scripts.pory"
# 174 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 175 "data/maps/Route104/scripts.pory"
# 87 "data/maps/Route104/scripts.pory"
# 176 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_RivalEncounter
# 177 "data/maps/Route104/scripts.pory"
# 88 "data/maps/Route104/scripts.pory"
# 178 "data/maps/Route104/scripts.pory"

# 179 "data/maps/Route104/scripts.pory"
# 89 "data/maps/Route104/scripts.pory"
# 180 "data/maps/Route104/scripts.pory"
@ Unused, shares script with Rustboro encounter instead
# 181 "data/maps/Route104/scripts.pory"
# 90 "data/maps/Route104/scripts.pory"
# 182 "data/maps/Route104/scripts.pory"
Route104_EventScript_PlayRivalMusic::
# 183 "data/maps/Route104/scripts.pory"
# 91 "data/maps/Route104/scripts.pory"
# 184 "data/maps/Route104/scripts.pory"
	checkplayergender
# 185 "data/maps/Route104/scripts.pory"
# 92 "data/maps/Route104/scripts.pory"
# 186 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route104_EventScript_PlayMayMusic
# 187 "data/maps/Route104/scripts.pory"
# 93 "data/maps/Route104/scripts.pory"
# 188 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route104_EventScript_PlayBrendanMusic
# 189 "data/maps/Route104/scripts.pory"
# 94 "data/maps/Route104/scripts.pory"
# 190 "data/maps/Route104/scripts.pory"
	return
# 191 "data/maps/Route104/scripts.pory"
# 95 "data/maps/Route104/scripts.pory"
# 192 "data/maps/Route104/scripts.pory"

# 193 "data/maps/Route104/scripts.pory"
# 96 "data/maps/Route104/scripts.pory"
# 194 "data/maps/Route104/scripts.pory"
Route104_EventScript_PlayMayMusic::
# 195 "data/maps/Route104/scripts.pory"
# 97 "data/maps/Route104/scripts.pory"
# 196 "data/maps/Route104/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 197 "data/maps/Route104/scripts.pory"
# 98 "data/maps/Route104/scripts.pory"
# 198 "data/maps/Route104/scripts.pory"
	return
# 199 "data/maps/Route104/scripts.pory"
# 99 "data/maps/Route104/scripts.pory"
# 200 "data/maps/Route104/scripts.pory"

# 201 "data/maps/Route104/scripts.pory"
# 100 "data/maps/Route104/scripts.pory"
# 202 "data/maps/Route104/scripts.pory"
Route104_EventScript_PlayBrendanMusic::
# 203 "data/maps/Route104/scripts.pory"
# 101 "data/maps/Route104/scripts.pory"
# 204 "data/maps/Route104/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 205 "data/maps/Route104/scripts.pory"
# 102 "data/maps/Route104/scripts.pory"
# 206 "data/maps/Route104/scripts.pory"
	return
# 207 "data/maps/Route104/scripts.pory"
# 103 "data/maps/Route104/scripts.pory"
# 208 "data/maps/Route104/scripts.pory"

# 209 "data/maps/Route104/scripts.pory"
# 104 "data/maps/Route104/scripts.pory"
# 210 "data/maps/Route104/scripts.pory"
Route104_EventScript_RivalEncounter::
# 211 "data/maps/Route104/scripts.pory"
# 105 "data/maps/Route104/scripts.pory"
# 212 "data/maps/Route104/scripts.pory"
	checkplayergender
# 213 "data/maps/Route104/scripts.pory"
# 106 "data/maps/Route104/scripts.pory"
# 214 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route104_EventScript_MayEncounter
# 215 "data/maps/Route104/scripts.pory"
# 107 "data/maps/Route104/scripts.pory"
# 216 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route104_EventScript_BrendanEncounter
# 217 "data/maps/Route104/scripts.pory"
# 108 "data/maps/Route104/scripts.pory"
# 218 "data/maps/Route104/scripts.pory"
	end
# 219 "data/maps/Route104/scripts.pory"
# 109 "data/maps/Route104/scripts.pory"
# 220 "data/maps/Route104/scripts.pory"

# 221 "data/maps/Route104/scripts.pory"
# 110 "data/maps/Route104/scripts.pory"
# 222 "data/maps/Route104/scripts.pory"
Route104_EventScript_MayEncounter::
# 223 "data/maps/Route104/scripts.pory"
# 111 "data/maps/Route104/scripts.pory"
# 224 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_ROUTE_104, Route104_EventScript_MayDefeated
# 225 "data/maps/Route104/scripts.pory"
# 112 "data/maps/Route104/scripts.pory"
# 226 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_REGISTER_RIVAL_POKENAV, Route104_EventScript_MayAskToBattle
# 227 "data/maps/Route104/scripts.pory"
# 113 "data/maps/Route104/scripts.pory"
# 228 "data/maps/Route104/scripts.pory"
	@ PokéNav removed setflag FLAG_REGISTER_RIVAL_POKENAV
# 229 "data/maps/Route104/scripts.pory"
# 114 "data/maps/Route104/scripts.pory"
# 230 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_MayWeShouldRegister, MSGBOX_DEFAULT
# 231 "data/maps/Route104/scripts.pory"
# 115 "data/maps/Route104/scripts.pory"
# 232 "data/maps/Route104/scripts.pory"
	@ PokéNav removed closemessage
# 233 "data/maps/Route104/scripts.pory"
# 116 "data/maps/Route104/scripts.pory"
# 234 "data/maps/Route104/scripts.pory"
	@ PokéNav removed delay 30
# 235 "data/maps/Route104/scripts.pory"
# 117 "data/maps/Route104/scripts.pory"
# 236 "data/maps/Route104/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 237 "data/maps/Route104/scripts.pory"
# 118 "data/maps/Route104/scripts.pory"
# 238 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_RegisteredMay, MSGBOX_DEFAULT
# 239 "data/maps/Route104/scripts.pory"
# 119 "data/maps/Route104/scripts.pory"
# 240 "data/maps/Route104/scripts.pory"
	@ PokéNav removed waitfanfare
# 241 "data/maps/Route104/scripts.pory"
# 120 "data/maps/Route104/scripts.pory"
# 242 "data/maps/Route104/scripts.pory"
	closemessage
# 243 "data/maps/Route104/scripts.pory"
# 121 "data/maps/Route104/scripts.pory"
# 244 "data/maps/Route104/scripts.pory"
	delay 30
# 245 "data/maps/Route104/scripts.pory"
# 122 "data/maps/Route104/scripts.pory"
# 246 "data/maps/Route104/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 247 "data/maps/Route104/scripts.pory"
# 123 "data/maps/Route104/scripts.pory"
# 248 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_PlayerFaceRival
# 249 "data/maps/Route104/scripts.pory"
# 124 "data/maps/Route104/scripts.pory"
# 250 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Route104_Movement_RivalWalkSlowLeft
# 251 "data/maps/Route104/scripts.pory"
# 125 "data/maps/Route104/scripts.pory"
# 252 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayHowsYourPokedex, MSGBOX_DEFAULT
# 253 "data/maps/Route104/scripts.pory"
# 126 "data/maps/Route104/scripts.pory"
# 254 "data/maps/Route104/scripts.pory"
	closemessage
# 255 "data/maps/Route104/scripts.pory"
# 127 "data/maps/Route104/scripts.pory"
# 256 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 257 "data/maps/Route104/scripts.pory"
# 128 "data/maps/Route104/scripts.pory"
# 258 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Route104_Movement_RivalApproachPlayer
# 259 "data/maps/Route104/scripts.pory"
# 129 "data/maps/Route104/scripts.pory"
# 260 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 261 "data/maps/Route104/scripts.pory"
# 130 "data/maps/Route104/scripts.pory"
# 262 "data/maps/Route104/scripts.pory"
	copyobjectxytoperm LOCALID_ROUTE104_RIVAL
# 263 "data/maps/Route104/scripts.pory"
# 131 "data/maps/Route104/scripts.pory"
# 264 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayMinesDecentLetsBattle, MSGBOX_YESNO
# 265 "data/maps/Route104/scripts.pory"
# 132 "data/maps/Route104/scripts.pory"
# 266 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, YES, Route104_EventScript_BattleMay
# 267 "data/maps/Route104/scripts.pory"
# 133 "data/maps/Route104/scripts.pory"
# 268 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayHaventRaisedPokemon, MSGBOX_DEFAULT
# 269 "data/maps/Route104/scripts.pory"
# 134 "data/maps/Route104/scripts.pory"
# 270 "data/maps/Route104/scripts.pory"
	call Route104_EventScript_RestoreMusic
# 271 "data/maps/Route104/scripts.pory"
# 135 "data/maps/Route104/scripts.pory"
# 272 "data/maps/Route104/scripts.pory"
	releaseall
# 273 "data/maps/Route104/scripts.pory"
# 136 "data/maps/Route104/scripts.pory"
# 274 "data/maps/Route104/scripts.pory"
	end
# 275 "data/maps/Route104/scripts.pory"
# 137 "data/maps/Route104/scripts.pory"
# 276 "data/maps/Route104/scripts.pory"

# 277 "data/maps/Route104/scripts.pory"
# 138 "data/maps/Route104/scripts.pory"
# 278 "data/maps/Route104/scripts.pory"
Route104_Movement_RivalWalkSlowLeft:
# 279 "data/maps/Route104/scripts.pory"
# 139 "data/maps/Route104/scripts.pory"
# 280 "data/maps/Route104/scripts.pory"
	walk_slow_left
# 281 "data/maps/Route104/scripts.pory"
# 140 "data/maps/Route104/scripts.pory"
# 282 "data/maps/Route104/scripts.pory"
	step_end
# 283 "data/maps/Route104/scripts.pory"
# 141 "data/maps/Route104/scripts.pory"
# 284 "data/maps/Route104/scripts.pory"

# 285 "data/maps/Route104/scripts.pory"
# 142 "data/maps/Route104/scripts.pory"
# 286 "data/maps/Route104/scripts.pory"
Route104_Movement_RivalApproachPlayer:
# 287 "data/maps/Route104/scripts.pory"
# 143 "data/maps/Route104/scripts.pory"
# 288 "data/maps/Route104/scripts.pory"
	walk_down
# 289 "data/maps/Route104/scripts.pory"
# 144 "data/maps/Route104/scripts.pory"
# 290 "data/maps/Route104/scripts.pory"
	face_right
# 291 "data/maps/Route104/scripts.pory"
# 145 "data/maps/Route104/scripts.pory"
# 292 "data/maps/Route104/scripts.pory"
	step_end
# 293 "data/maps/Route104/scripts.pory"
# 146 "data/maps/Route104/scripts.pory"
# 294 "data/maps/Route104/scripts.pory"

# 295 "data/maps/Route104/scripts.pory"
# 147 "data/maps/Route104/scripts.pory"
# 296 "data/maps/Route104/scripts.pory"
Route104_Movement_PlayerFaceRival:
# 297 "data/maps/Route104/scripts.pory"
# 148 "data/maps/Route104/scripts.pory"
# 298 "data/maps/Route104/scripts.pory"
	delay_4
# 299 "data/maps/Route104/scripts.pory"
# 149 "data/maps/Route104/scripts.pory"
# 300 "data/maps/Route104/scripts.pory"
	walk_in_place_faster_left
# 301 "data/maps/Route104/scripts.pory"
# 150 "data/maps/Route104/scripts.pory"
# 302 "data/maps/Route104/scripts.pory"
	step_end
# 303 "data/maps/Route104/scripts.pory"
# 151 "data/maps/Route104/scripts.pory"
# 304 "data/maps/Route104/scripts.pory"

# 305 "data/maps/Route104/scripts.pory"
# 152 "data/maps/Route104/scripts.pory"
# 306 "data/maps/Route104/scripts.pory"
Route104_EventScript_MayAskToBattle::
# 307 "data/maps/Route104/scripts.pory"
# 153 "data/maps/Route104/scripts.pory"
# 308 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayLetsBattle, MSGBOX_YESNO
# 309 "data/maps/Route104/scripts.pory"
# 154 "data/maps/Route104/scripts.pory"
# 310 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, YES, Route104_EventScript_BattleMay
# 311 "data/maps/Route104/scripts.pory"
# 155 "data/maps/Route104/scripts.pory"
# 312 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayHaventRaisedPokemon, MSGBOX_DEFAULT
# 313 "data/maps/Route104/scripts.pory"
# 156 "data/maps/Route104/scripts.pory"
# 314 "data/maps/Route104/scripts.pory"
	releaseall
# 315 "data/maps/Route104/scripts.pory"
# 157 "data/maps/Route104/scripts.pory"
# 316 "data/maps/Route104/scripts.pory"
	end
# 317 "data/maps/Route104/scripts.pory"
# 158 "data/maps/Route104/scripts.pory"
# 318 "data/maps/Route104/scripts.pory"

# 319 "data/maps/Route104/scripts.pory"
# 159 "data/maps/Route104/scripts.pory"
# 320 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleMay::
# 321 "data/maps/Route104/scripts.pory"
# 160 "data/maps/Route104/scripts.pory"
# 322 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayIntro, MSGBOX_DEFAULT
# 323 "data/maps/Route104/scripts.pory"
# 161 "data/maps/Route104/scripts.pory"
# 324 "data/maps/Route104/scripts.pory"
	switch VAR_STARTER_MON
# 325 "data/maps/Route104/scripts.pory"
# 162 "data/maps/Route104/scripts.pory"
# 326 "data/maps/Route104/scripts.pory"
	case 0, Route104_EventScript_BattleMayTreecko
# 327 "data/maps/Route104/scripts.pory"
# 163 "data/maps/Route104/scripts.pory"
# 328 "data/maps/Route104/scripts.pory"
	case 1, Route104_EventScript_BattleMayTorchic
# 329 "data/maps/Route104/scripts.pory"
# 164 "data/maps/Route104/scripts.pory"
# 330 "data/maps/Route104/scripts.pory"
	case 2, Route104_EventScript_BattleMayMudkip
# 331 "data/maps/Route104/scripts.pory"
# 165 "data/maps/Route104/scripts.pory"
# 332 "data/maps/Route104/scripts.pory"
	end
# 333 "data/maps/Route104/scripts.pory"
# 166 "data/maps/Route104/scripts.pory"
# 334 "data/maps/Route104/scripts.pory"

# 335 "data/maps/Route104/scripts.pory"
# 167 "data/maps/Route104/scripts.pory"
# 336 "data/maps/Route104/scripts.pory"
Route104_EventScript_MayDefeated::
# 337 "data/maps/Route104/scripts.pory"
# 168 "data/maps/Route104/scripts.pory"
# 338 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MayPostBattle, MSGBOX_DEFAULT
# 339 "data/maps/Route104/scripts.pory"
# 169 "data/maps/Route104/scripts.pory"
# 340 "data/maps/Route104/scripts.pory"
	call_if_eq VAR_0x8008, 0, Route104_EventScript_RestoreMusic
# 341 "data/maps/Route104/scripts.pory"
# 170 "data/maps/Route104/scripts.pory"
# 342 "data/maps/Route104/scripts.pory"
	releaseall
# 343 "data/maps/Route104/scripts.pory"
# 171 "data/maps/Route104/scripts.pory"
# 344 "data/maps/Route104/scripts.pory"
	end
# 345 "data/maps/Route104/scripts.pory"
# 172 "data/maps/Route104/scripts.pory"
# 346 "data/maps/Route104/scripts.pory"

# 347 "data/maps/Route104/scripts.pory"
# 173 "data/maps/Route104/scripts.pory"
# 348 "data/maps/Route104/scripts.pory"
Route104_EventScript_RestoreMusic::
# 349 "data/maps/Route104/scripts.pory"
# 174 "data/maps/Route104/scripts.pory"
# 350 "data/maps/Route104/scripts.pory"
	savebgm MUS_DUMMY
# 351 "data/maps/Route104/scripts.pory"
# 175 "data/maps/Route104/scripts.pory"
# 352 "data/maps/Route104/scripts.pory"
	fadedefaultbgm
# 353 "data/maps/Route104/scripts.pory"
# 176 "data/maps/Route104/scripts.pory"
# 354 "data/maps/Route104/scripts.pory"
	return
# 355 "data/maps/Route104/scripts.pory"
# 177 "data/maps/Route104/scripts.pory"
# 356 "data/maps/Route104/scripts.pory"

# 357 "data/maps/Route104/scripts.pory"
# 178 "data/maps/Route104/scripts.pory"
# 358 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleMayTreecko::
# 359 "data/maps/Route104/scripts.pory"
# 179 "data/maps/Route104/scripts.pory"
# 360 "data/maps/Route104/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TREECKO, Route104_Text_MayDefeat
# 361 "data/maps/Route104/scripts.pory"
# 180 "data/maps/Route104/scripts.pory"
# 362 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE_104
# 363 "data/maps/Route104/scripts.pory"
# 181 "data/maps/Route104/scripts.pory"
# 364 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_MayDefeated
# 365 "data/maps/Route104/scripts.pory"
# 182 "data/maps/Route104/scripts.pory"
# 366 "data/maps/Route104/scripts.pory"
	end
# 367 "data/maps/Route104/scripts.pory"
# 183 "data/maps/Route104/scripts.pory"
# 368 "data/maps/Route104/scripts.pory"

# 369 "data/maps/Route104/scripts.pory"
# 184 "data/maps/Route104/scripts.pory"
# 370 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleMayTorchic::
# 371 "data/maps/Route104/scripts.pory"
# 185 "data/maps/Route104/scripts.pory"
# 372 "data/maps/Route104/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TORCHIC, Route104_Text_MayDefeat
# 373 "data/maps/Route104/scripts.pory"
# 186 "data/maps/Route104/scripts.pory"
# 374 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE_104
# 375 "data/maps/Route104/scripts.pory"
# 187 "data/maps/Route104/scripts.pory"
# 376 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_MayDefeated
# 377 "data/maps/Route104/scripts.pory"
# 188 "data/maps/Route104/scripts.pory"
# 378 "data/maps/Route104/scripts.pory"
	end
# 379 "data/maps/Route104/scripts.pory"
# 189 "data/maps/Route104/scripts.pory"
# 380 "data/maps/Route104/scripts.pory"

# 381 "data/maps/Route104/scripts.pory"
# 190 "data/maps/Route104/scripts.pory"
# 382 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleMayMudkip::
# 383 "data/maps/Route104/scripts.pory"
# 191 "data/maps/Route104/scripts.pory"
# 384 "data/maps/Route104/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_MUDKIP, Route104_Text_MayDefeat
# 385 "data/maps/Route104/scripts.pory"
# 192 "data/maps/Route104/scripts.pory"
# 386 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE_104
# 387 "data/maps/Route104/scripts.pory"
# 193 "data/maps/Route104/scripts.pory"
# 388 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_MayDefeated
# 389 "data/maps/Route104/scripts.pory"
# 194 "data/maps/Route104/scripts.pory"
# 390 "data/maps/Route104/scripts.pory"
	end
# 391 "data/maps/Route104/scripts.pory"
# 195 "data/maps/Route104/scripts.pory"
# 392 "data/maps/Route104/scripts.pory"

# 393 "data/maps/Route104/scripts.pory"
# 196 "data/maps/Route104/scripts.pory"
# 394 "data/maps/Route104/scripts.pory"
Route104_EventScript_BrendanEncounter::
# 395 "data/maps/Route104/scripts.pory"
# 197 "data/maps/Route104/scripts.pory"
# 396 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_ROUTE_104, Route104_EventScript_BrendanDefeated
# 397 "data/maps/Route104/scripts.pory"
# 198 "data/maps/Route104/scripts.pory"
# 398 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_REGISTER_RIVAL_POKENAV, Route104_EventScript_BrendanAskToBattle
# 399 "data/maps/Route104/scripts.pory"
# 199 "data/maps/Route104/scripts.pory"
# 400 "data/maps/Route104/scripts.pory"
	@ PokéNav removed setflag FLAG_REGISTER_RIVAL_POKENAV
# 401 "data/maps/Route104/scripts.pory"
# 200 "data/maps/Route104/scripts.pory"
# 402 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_BrendanWeShouldRegister, MSGBOX_DEFAULT
# 403 "data/maps/Route104/scripts.pory"
# 201 "data/maps/Route104/scripts.pory"
# 404 "data/maps/Route104/scripts.pory"
	@ PokéNav removed closemessage
# 405 "data/maps/Route104/scripts.pory"
# 202 "data/maps/Route104/scripts.pory"
# 406 "data/maps/Route104/scripts.pory"
	@ PokéNav removed delay 30
# 407 "data/maps/Route104/scripts.pory"
# 203 "data/maps/Route104/scripts.pory"
# 408 "data/maps/Route104/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 409 "data/maps/Route104/scripts.pory"
# 204 "data/maps/Route104/scripts.pory"
# 410 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_RegisteredBrendan, MSGBOX_DEFAULT
# 411 "data/maps/Route104/scripts.pory"
# 205 "data/maps/Route104/scripts.pory"
# 412 "data/maps/Route104/scripts.pory"
	@ PokéNav removed waitfanfare
# 413 "data/maps/Route104/scripts.pory"
# 206 "data/maps/Route104/scripts.pory"
# 414 "data/maps/Route104/scripts.pory"
	closemessage
# 415 "data/maps/Route104/scripts.pory"
# 207 "data/maps/Route104/scripts.pory"
# 416 "data/maps/Route104/scripts.pory"
	delay 30
# 417 "data/maps/Route104/scripts.pory"
# 208 "data/maps/Route104/scripts.pory"
# 418 "data/maps/Route104/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 419 "data/maps/Route104/scripts.pory"
# 209 "data/maps/Route104/scripts.pory"
# 420 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_PlayerFaceRival
# 421 "data/maps/Route104/scripts.pory"
# 210 "data/maps/Route104/scripts.pory"
# 422 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Route104_Movement_RivalWalkSlowLeft
# 423 "data/maps/Route104/scripts.pory"
# 211 "data/maps/Route104/scripts.pory"
# 424 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 425 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanHowsYourPokedex, MSGBOX_DEFAULT
# 426 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 427 "data/maps/Route104/scripts.pory"
# 212 "data/maps/Route104/scripts.pory"
# 428 "data/maps/Route104/scripts.pory"
	closemessage
# 429 "data/maps/Route104/scripts.pory"
# 213 "data/maps/Route104/scripts.pory"
# 430 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 431 "data/maps/Route104/scripts.pory"
# 214 "data/maps/Route104/scripts.pory"
# 432 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_RIVAL, Route104_Movement_RivalApproachPlayer
# 433 "data/maps/Route104/scripts.pory"
# 215 "data/maps/Route104/scripts.pory"
# 434 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 435 "data/maps/Route104/scripts.pory"
# 216 "data/maps/Route104/scripts.pory"
# 436 "data/maps/Route104/scripts.pory"
	copyobjectxytoperm LOCALID_ROUTE104_RIVAL
# 437 "data/maps/Route104/scripts.pory"
# 217 "data/maps/Route104/scripts.pory"
# 438 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanDoingGreatLetsBattle, MSGBOX_YESNO
# 439 "data/maps/Route104/scripts.pory"
# 218 "data/maps/Route104/scripts.pory"
# 440 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, YES, Route104_EventScript_BattleBrendan
# 441 "data/maps/Route104/scripts.pory"
# 219 "data/maps/Route104/scripts.pory"
# 442 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 443 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanNoConfidence, MSGBOX_DEFAULT
# 444 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 445 "data/maps/Route104/scripts.pory"
# 220 "data/maps/Route104/scripts.pory"
# 446 "data/maps/Route104/scripts.pory"
	call Route104_EventScript_RestoreMusic
# 447 "data/maps/Route104/scripts.pory"
# 221 "data/maps/Route104/scripts.pory"
# 448 "data/maps/Route104/scripts.pory"
	releaseall
# 449 "data/maps/Route104/scripts.pory"
# 222 "data/maps/Route104/scripts.pory"
# 450 "data/maps/Route104/scripts.pory"
	end
# 451 "data/maps/Route104/scripts.pory"
# 223 "data/maps/Route104/scripts.pory"
# 452 "data/maps/Route104/scripts.pory"

# 453 "data/maps/Route104/scripts.pory"
# 224 "data/maps/Route104/scripts.pory"
# 454 "data/maps/Route104/scripts.pory"
Route104_EventScript_BrendanAskToBattle::
# 455 "data/maps/Route104/scripts.pory"
# 225 "data/maps/Route104/scripts.pory"
# 456 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 457 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanLetsBattle, MSGBOX_YESNO
# 458 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 459 "data/maps/Route104/scripts.pory"
# 226 "data/maps/Route104/scripts.pory"
# 460 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, YES, Route104_EventScript_BattleBrendan
# 461 "data/maps/Route104/scripts.pory"
# 227 "data/maps/Route104/scripts.pory"
# 462 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 463 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanNoConfidence, MSGBOX_DEFAULT
# 464 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 465 "data/maps/Route104/scripts.pory"
# 228 "data/maps/Route104/scripts.pory"
# 466 "data/maps/Route104/scripts.pory"
	releaseall
# 467 "data/maps/Route104/scripts.pory"
# 229 "data/maps/Route104/scripts.pory"
# 468 "data/maps/Route104/scripts.pory"
	end
# 469 "data/maps/Route104/scripts.pory"
# 230 "data/maps/Route104/scripts.pory"
# 470 "data/maps/Route104/scripts.pory"

# 471 "data/maps/Route104/scripts.pory"
# 231 "data/maps/Route104/scripts.pory"
# 472 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleBrendan::
# 473 "data/maps/Route104/scripts.pory"
# 232 "data/maps/Route104/scripts.pory"
# 474 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 475 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanIntro, MSGBOX_DEFAULT
# 476 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 477 "data/maps/Route104/scripts.pory"
# 233 "data/maps/Route104/scripts.pory"
# 478 "data/maps/Route104/scripts.pory"
	switch VAR_STARTER_MON
# 479 "data/maps/Route104/scripts.pory"
# 234 "data/maps/Route104/scripts.pory"
# 480 "data/maps/Route104/scripts.pory"
	case 0, Route104_EventScript_BattleBrendanTreecko
# 481 "data/maps/Route104/scripts.pory"
# 235 "data/maps/Route104/scripts.pory"
# 482 "data/maps/Route104/scripts.pory"
	case 1, Route104_EventScript_BattleBrendanTorchic
# 483 "data/maps/Route104/scripts.pory"
# 236 "data/maps/Route104/scripts.pory"
# 484 "data/maps/Route104/scripts.pory"
	case 2, Route104_EventScript_BattleBrendanMudkip
# 485 "data/maps/Route104/scripts.pory"
# 237 "data/maps/Route104/scripts.pory"
# 486 "data/maps/Route104/scripts.pory"
	end
# 487 "data/maps/Route104/scripts.pory"
# 238 "data/maps/Route104/scripts.pory"
# 488 "data/maps/Route104/scripts.pory"

# 489 "data/maps/Route104/scripts.pory"
# 239 "data/maps/Route104/scripts.pory"
# 490 "data/maps/Route104/scripts.pory"
Route104_EventScript_BrendanDefeated::
# 491 "data/maps/Route104/scripts.pory"
# 240 "data/maps/Route104/scripts.pory"
# 492 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 493 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrendanPostBattle, MSGBOX_DEFAULT
# 494 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 495 "data/maps/Route104/scripts.pory"
# 241 "data/maps/Route104/scripts.pory"
# 496 "data/maps/Route104/scripts.pory"
	call_if_eq VAR_0x8008, 0, Route104_EventScript_RestoreMusic
# 497 "data/maps/Route104/scripts.pory"
# 242 "data/maps/Route104/scripts.pory"
# 498 "data/maps/Route104/scripts.pory"
	releaseall
# 499 "data/maps/Route104/scripts.pory"
# 243 "data/maps/Route104/scripts.pory"
# 500 "data/maps/Route104/scripts.pory"
	end
# 501 "data/maps/Route104/scripts.pory"
# 244 "data/maps/Route104/scripts.pory"
# 502 "data/maps/Route104/scripts.pory"

# 503 "data/maps/Route104/scripts.pory"
# 245 "data/maps/Route104/scripts.pory"
# 504 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleBrendanTreecko::
# 505 "data/maps/Route104/scripts.pory"
# 246 "data/maps/Route104/scripts.pory"
# 506 "data/maps/Route104/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TREECKO, Route104_Text_BrendanDefeat
# 507 "data/maps/Route104/scripts.pory"
# 247 "data/maps/Route104/scripts.pory"
# 508 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE_104
# 509 "data/maps/Route104/scripts.pory"
# 248 "data/maps/Route104/scripts.pory"
# 510 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_BrendanDefeated
# 511 "data/maps/Route104/scripts.pory"
# 249 "data/maps/Route104/scripts.pory"
# 512 "data/maps/Route104/scripts.pory"
	end
# 513 "data/maps/Route104/scripts.pory"
# 250 "data/maps/Route104/scripts.pory"
# 514 "data/maps/Route104/scripts.pory"

# 515 "data/maps/Route104/scripts.pory"
# 251 "data/maps/Route104/scripts.pory"
# 516 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleBrendanTorchic::
# 517 "data/maps/Route104/scripts.pory"
# 252 "data/maps/Route104/scripts.pory"
# 518 "data/maps/Route104/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TORCHIC, Route104_Text_BrendanDefeat
# 519 "data/maps/Route104/scripts.pory"
# 253 "data/maps/Route104/scripts.pory"
# 520 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE_104
# 521 "data/maps/Route104/scripts.pory"
# 254 "data/maps/Route104/scripts.pory"
# 522 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_BrendanDefeated
# 523 "data/maps/Route104/scripts.pory"
# 255 "data/maps/Route104/scripts.pory"
# 524 "data/maps/Route104/scripts.pory"
	end
# 525 "data/maps/Route104/scripts.pory"
# 256 "data/maps/Route104/scripts.pory"
# 526 "data/maps/Route104/scripts.pory"

# 527 "data/maps/Route104/scripts.pory"
# 257 "data/maps/Route104/scripts.pory"
# 528 "data/maps/Route104/scripts.pory"
Route104_EventScript_BattleBrendanMudkip::
# 529 "data/maps/Route104/scripts.pory"
# 258 "data/maps/Route104/scripts.pory"
# 530 "data/maps/Route104/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_MUDKIP, Route104_Text_BrendanDefeat
# 531 "data/maps/Route104/scripts.pory"
# 259 "data/maps/Route104/scripts.pory"
# 532 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE_104
# 533 "data/maps/Route104/scripts.pory"
# 260 "data/maps/Route104/scripts.pory"
# 534 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_BrendanDefeated
# 535 "data/maps/Route104/scripts.pory"
# 261 "data/maps/Route104/scripts.pory"
# 536 "data/maps/Route104/scripts.pory"
	end
# 537 "data/maps/Route104/scripts.pory"
# 262 "data/maps/Route104/scripts.pory"
# 538 "data/maps/Route104/scripts.pory"

# 539 "data/maps/Route104/scripts.pory"
# 263 "data/maps/Route104/scripts.pory"
# 540 "data/maps/Route104/scripts.pory"
Route104_Movement_PlayerBackUp:
# 541 "data/maps/Route104/scripts.pory"
# 264 "data/maps/Route104/scripts.pory"
# 542 "data/maps/Route104/scripts.pory"
	lock_facing_direction
# 543 "data/maps/Route104/scripts.pory"
# 265 "data/maps/Route104/scripts.pory"
# 544 "data/maps/Route104/scripts.pory"
	walk_down
# 545 "data/maps/Route104/scripts.pory"
# 266 "data/maps/Route104/scripts.pory"
# 546 "data/maps/Route104/scripts.pory"
	unlock_facing_direction
# 547 "data/maps/Route104/scripts.pory"
# 267 "data/maps/Route104/scripts.pory"
# 548 "data/maps/Route104/scripts.pory"
	step_end
# 549 "data/maps/Route104/scripts.pory"
# 268 "data/maps/Route104/scripts.pory"
# 550 "data/maps/Route104/scripts.pory"

# 551 "data/maps/Route104/scripts.pory"
# 269 "data/maps/Route104/scripts.pory"
# 552 "data/maps/Route104/scripts.pory"
Route104_Movement_RivalExitBrineysCottage:
# 553 "data/maps/Route104/scripts.pory"
# 270 "data/maps/Route104/scripts.pory"
# 554 "data/maps/Route104/scripts.pory"
	walk_down
# 555 "data/maps/Route104/scripts.pory"
# 271 "data/maps/Route104/scripts.pory"
# 556 "data/maps/Route104/scripts.pory"
	step_end
# 557 "data/maps/Route104/scripts.pory"
# 272 "data/maps/Route104/scripts.pory"
# 558 "data/maps/Route104/scripts.pory"

# 559 "data/maps/Route104/scripts.pory"
# 273 "data/maps/Route104/scripts.pory"
# 560 "data/maps/Route104/scripts.pory"
Route104_EventScript_ExpertF::
# 561 "data/maps/Route104/scripts.pory"
# 274 "data/maps/Route104/scripts.pory"
# 562 "data/maps/Route104/scripts.pory"
	lock
# 563 "data/maps/Route104/scripts.pory"
# 275 "data/maps/Route104/scripts.pory"
# 564 "data/maps/Route104/scripts.pory"
	faceplayer
# 565 "data/maps/Route104/scripts.pory"
# 276 "data/maps/Route104/scripts.pory"
# 566 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_RECEIVED_CHESTO_BERRY_ROUTE_104, Route104_EventScript_ReceivedBerry
# 567 "data/maps/Route104/scripts.pory"
# 277 "data/maps/Route104/scripts.pory"
# 568 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_PlantBerriesInSoilTakeThis, MSGBOX_DEFAULT
# 569 "data/maps/Route104/scripts.pory"
# 278 "data/maps/Route104/scripts.pory"
# 570 "data/maps/Route104/scripts.pory"
	giveitem ITEM_CHESTO_BERRY
# 571 "data/maps/Route104/scripts.pory"
# 279 "data/maps/Route104/scripts.pory"
# 572 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 573 "data/maps/Route104/scripts.pory"
# 280 "data/maps/Route104/scripts.pory"
# 574 "data/maps/Route104/scripts.pory"
	setflag FLAG_RECEIVED_CHESTO_BERRY_ROUTE_104
# 575 "data/maps/Route104/scripts.pory"
# 281 "data/maps/Route104/scripts.pory"
# 576 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_TrainersOftenMakeMonHoldBerries, MSGBOX_DEFAULT
# 577 "data/maps/Route104/scripts.pory"
# 282 "data/maps/Route104/scripts.pory"
# 578 "data/maps/Route104/scripts.pory"
	release
# 579 "data/maps/Route104/scripts.pory"
# 283 "data/maps/Route104/scripts.pory"
# 580 "data/maps/Route104/scripts.pory"
	end
# 581 "data/maps/Route104/scripts.pory"
# 284 "data/maps/Route104/scripts.pory"
# 582 "data/maps/Route104/scripts.pory"

# 583 "data/maps/Route104/scripts.pory"
# 285 "data/maps/Route104/scripts.pory"
# 584 "data/maps/Route104/scripts.pory"
Route104_EventScript_ReceivedBerry::
# 585 "data/maps/Route104/scripts.pory"
# 286 "data/maps/Route104/scripts.pory"
# 586 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_TrainersOftenMakeMonHoldBerries, MSGBOX_DEFAULT
# 587 "data/maps/Route104/scripts.pory"
# 287 "data/maps/Route104/scripts.pory"
# 588 "data/maps/Route104/scripts.pory"
	release
# 589 "data/maps/Route104/scripts.pory"
# 288 "data/maps/Route104/scripts.pory"
# 590 "data/maps/Route104/scripts.pory"
	end
# 591 "data/maps/Route104/scripts.pory"
# 289 "data/maps/Route104/scripts.pory"
# 592 "data/maps/Route104/scripts.pory"

# 593 "data/maps/Route104/scripts.pory"
# 290 "data/maps/Route104/scripts.pory"
# 594 "data/maps/Route104/scripts.pory"
Route104_EventScript_WhiteHerbFlorist::
# 595 "data/maps/Route104/scripts.pory"
# 291 "data/maps/Route104/scripts.pory"
# 596 "data/maps/Route104/scripts.pory"
	lock
# 597 "data/maps/Route104/scripts.pory"
# 292 "data/maps/Route104/scripts.pory"
# 598 "data/maps/Route104/scripts.pory"
	faceplayer
# 599 "data/maps/Route104/scripts.pory"
# 293 "data/maps/Route104/scripts.pory"
# 600 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_RECEIVED_WHITE_HERB, Route104_EventScript_ReceivedWhiteHerb
# 601 "data/maps/Route104/scripts.pory"
# 294 "data/maps/Route104/scripts.pory"
# 602 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_DontNeedThisTakeIt, MSGBOX_DEFAULT
# 603 "data/maps/Route104/scripts.pory"
# 295 "data/maps/Route104/scripts.pory"
# 604 "data/maps/Route104/scripts.pory"
	giveitem ITEM_WHITE_HERB
# 605 "data/maps/Route104/scripts.pory"
# 296 "data/maps/Route104/scripts.pory"
# 606 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 607 "data/maps/Route104/scripts.pory"
# 297 "data/maps/Route104/scripts.pory"
# 608 "data/maps/Route104/scripts.pory"
	setflag FLAG_RECEIVED_WHITE_HERB
# 609 "data/maps/Route104/scripts.pory"
# 298 "data/maps/Route104/scripts.pory"
# 610 "data/maps/Route104/scripts.pory"
	release
# 611 "data/maps/Route104/scripts.pory"
# 299 "data/maps/Route104/scripts.pory"
# 612 "data/maps/Route104/scripts.pory"
	end
# 613 "data/maps/Route104/scripts.pory"
# 300 "data/maps/Route104/scripts.pory"
# 614 "data/maps/Route104/scripts.pory"

# 615 "data/maps/Route104/scripts.pory"
# 301 "data/maps/Route104/scripts.pory"
# 616 "data/maps/Route104/scripts.pory"
Route104_EventScript_ReceivedWhiteHerb::
# 617 "data/maps/Route104/scripts.pory"
# 302 "data/maps/Route104/scripts.pory"
# 618 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_FlowerShopSellingSaplings, MSGBOX_DEFAULT
# 619 "data/maps/Route104/scripts.pory"
# 303 "data/maps/Route104/scripts.pory"
# 620 "data/maps/Route104/scripts.pory"
	release
# 621 "data/maps/Route104/scripts.pory"
# 304 "data/maps/Route104/scripts.pory"
# 622 "data/maps/Route104/scripts.pory"
	end
# 623 "data/maps/Route104/scripts.pory"
# 305 "data/maps/Route104/scripts.pory"
# 624 "data/maps/Route104/scripts.pory"

# 625 "data/maps/Route104/scripts.pory"
# 306 "data/maps/Route104/scripts.pory"
# 626 "data/maps/Route104/scripts.pory"
Route104_EventScript_Girl1::
# 627 "data/maps/Route104/scripts.pory"
# 307 "data/maps/Route104/scripts.pory"
# 628 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BrineyLivesInSeasideCottage, MSGBOX_NPC
# 629 "data/maps/Route104/scripts.pory"
# 308 "data/maps/Route104/scripts.pory"
# 630 "data/maps/Route104/scripts.pory"
	end
# 631 "data/maps/Route104/scripts.pory"
# 309 "data/maps/Route104/scripts.pory"
# 632 "data/maps/Route104/scripts.pory"

# 633 "data/maps/Route104/scripts.pory"
# 310 "data/maps/Route104/scripts.pory"
# 634 "data/maps/Route104/scripts.pory"
Route104_EventScript_BugCatcher::
# 635 "data/maps/Route104/scripts.pory"
# 311 "data/maps/Route104/scripts.pory"
# 636 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_WhatsItLikeAtBottomOfSea, MSGBOX_SIGN
# 637 "data/maps/Route104/scripts.pory"
# 312 "data/maps/Route104/scripts.pory"
# 638 "data/maps/Route104/scripts.pory"
	end
# 639 "data/maps/Route104/scripts.pory"
# 313 "data/maps/Route104/scripts.pory"
# 640 "data/maps/Route104/scripts.pory"

# 641 "data/maps/Route104/scripts.pory"
# 314 "data/maps/Route104/scripts.pory"
# 642 "data/maps/Route104/scripts.pory"
Route104_EventScript_BrineysCottageSign::
# 643 "data/maps/Route104/scripts.pory"
# 315 "data/maps/Route104/scripts.pory"
# 644 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MrBrineysCottage, MSGBOX_SIGN
# 645 "data/maps/Route104/scripts.pory"
# 316 "data/maps/Route104/scripts.pory"
# 646 "data/maps/Route104/scripts.pory"
	end
# 647 "data/maps/Route104/scripts.pory"
# 317 "data/maps/Route104/scripts.pory"
# 648 "data/maps/Route104/scripts.pory"

# 649 "data/maps/Route104/scripts.pory"
# 318 "data/maps/Route104/scripts.pory"
# 650 "data/maps/Route104/scripts.pory"
Route104_EventScript_RouteSignPetalburg::
# 651 "data/maps/Route104/scripts.pory"
# 319 "data/maps/Route104/scripts.pory"
# 652 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_RouteSignPetalburg, MSGBOX_SIGN
# 653 "data/maps/Route104/scripts.pory"
# 320 "data/maps/Route104/scripts.pory"
# 654 "data/maps/Route104/scripts.pory"
	end
# 655 "data/maps/Route104/scripts.pory"
# 321 "data/maps/Route104/scripts.pory"
# 656 "data/maps/Route104/scripts.pory"

# 657 "data/maps/Route104/scripts.pory"
# 322 "data/maps/Route104/scripts.pory"
# 658 "data/maps/Route104/scripts.pory"
Route104_EventScript_RouteSignRustboro::
# 659 "data/maps/Route104/scripts.pory"
# 323 "data/maps/Route104/scripts.pory"
# 660 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_RouteSignRustboro, MSGBOX_SIGN
# 661 "data/maps/Route104/scripts.pory"
# 324 "data/maps/Route104/scripts.pory"
# 662 "data/maps/Route104/scripts.pory"
	end
# 663 "data/maps/Route104/scripts.pory"
# 325 "data/maps/Route104/scripts.pory"
# 664 "data/maps/Route104/scripts.pory"

# 665 "data/maps/Route104/scripts.pory"
# 326 "data/maps/Route104/scripts.pory"
# 666 "data/maps/Route104/scripts.pory"
Route104_EventScript_FlowerShopSign::
# 667 "data/maps/Route104/scripts.pory"
# 327 "data/maps/Route104/scripts.pory"
# 668 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_PrettyPetalFlowShop, MSGBOX_SIGN
# 669 "data/maps/Route104/scripts.pory"
# 328 "data/maps/Route104/scripts.pory"
# 670 "data/maps/Route104/scripts.pory"
	end
# 671 "data/maps/Route104/scripts.pory"
# 329 "data/maps/Route104/scripts.pory"
# 672 "data/maps/Route104/scripts.pory"

# 673 "data/maps/Route104/scripts.pory"
# 330 "data/maps/Route104/scripts.pory"
# 674 "data/maps/Route104/scripts.pory"
Route104_EventScript_TrainerTipsDoubleBattles::
# 675 "data/maps/Route104/scripts.pory"
# 331 "data/maps/Route104/scripts.pory"
# 676 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_TrainerTipsDoubleBattles, MSGBOX_SIGN
# 677 "data/maps/Route104/scripts.pory"
# 332 "data/maps/Route104/scripts.pory"
# 678 "data/maps/Route104/scripts.pory"
	end
# 679 "data/maps/Route104/scripts.pory"
# 333 "data/maps/Route104/scripts.pory"
# 680 "data/maps/Route104/scripts.pory"

# 681 "data/maps/Route104/scripts.pory"
# 334 "data/maps/Route104/scripts.pory"
# 682 "data/maps/Route104/scripts.pory"
Route104_EventScript_Boy1::
# 683 "data/maps/Route104/scripts.pory"
# 335 "data/maps/Route104/scripts.pory"
# 684 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_ThrowBallAtWeakenedPokemon, MSGBOX_NPC
# 685 "data/maps/Route104/scripts.pory"
# 336 "data/maps/Route104/scripts.pory"
# 686 "data/maps/Route104/scripts.pory"
	end
# 687 "data/maps/Route104/scripts.pory"
# 337 "data/maps/Route104/scripts.pory"
# 688 "data/maps/Route104/scripts.pory"

# 689 "data/maps/Route104/scripts.pory"
# 338 "data/maps/Route104/scripts.pory"
# 690 "data/maps/Route104/scripts.pory"
Route104_EventScript_Woman::
# 691 "data/maps/Route104/scripts.pory"
# 339 "data/maps/Route104/scripts.pory"
# 692 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_OnlyThrowBallAtWildPokemon, MSGBOX_NPC
# 693 "data/maps/Route104/scripts.pory"
# 340 "data/maps/Route104/scripts.pory"
# 694 "data/maps/Route104/scripts.pory"
	end
# 695 "data/maps/Route104/scripts.pory"
# 341 "data/maps/Route104/scripts.pory"
# 696 "data/maps/Route104/scripts.pory"

# 697 "data/maps/Route104/scripts.pory"
# 342 "data/maps/Route104/scripts.pory"
# 698 "data/maps/Route104/scripts.pory"
Route104_EventScript_Boy2::
# 699 "data/maps/Route104/scripts.pory"
# 343 "data/maps/Route104/scripts.pory"
# 700 "data/maps/Route104/scripts.pory"
	lock
# 701 "data/maps/Route104/scripts.pory"
# 344 "data/maps/Route104/scripts.pory"
# 702 "data/maps/Route104/scripts.pory"
	faceplayer
# 703 "data/maps/Route104/scripts.pory"
# 345 "data/maps/Route104/scripts.pory"
# 704 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_RECEIVED_TM_BULLET_SEED, Route104_EventScript_ReceivedBulletSeed
# 705 "data/maps/Route104/scripts.pory"
# 346 "data/maps/Route104/scripts.pory"
# 706 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_LikeFillingMouthWithSeedsTakeThis, MSGBOX_DEFAULT
# 707 "data/maps/Route104/scripts.pory"
# 347 "data/maps/Route104/scripts.pory"
# 708 "data/maps/Route104/scripts.pory"
	giveitem ITEM_TM_BULLET_SEED
# 709 "data/maps/Route104/scripts.pory"
# 348 "data/maps/Route104/scripts.pory"
# 710 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 711 "data/maps/Route104/scripts.pory"
# 349 "data/maps/Route104/scripts.pory"
# 712 "data/maps/Route104/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULLET_SEED
# 713 "data/maps/Route104/scripts.pory"
# 350 "data/maps/Route104/scripts.pory"
# 714 "data/maps/Route104/scripts.pory"
	release
# 715 "data/maps/Route104/scripts.pory"
# 351 "data/maps/Route104/scripts.pory"
# 716 "data/maps/Route104/scripts.pory"
	end
# 717 "data/maps/Route104/scripts.pory"
# 352 "data/maps/Route104/scripts.pory"
# 718 "data/maps/Route104/scripts.pory"

# 719 "data/maps/Route104/scripts.pory"
# 353 "data/maps/Route104/scripts.pory"
# 720 "data/maps/Route104/scripts.pory"
Route104_EventScript_ReceivedBulletSeed::
# 721 "data/maps/Route104/scripts.pory"
# 354 "data/maps/Route104/scripts.pory"
# 722 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_TMsAreOneTimeUse, MSGBOX_DEFAULT
# 723 "data/maps/Route104/scripts.pory"
# 355 "data/maps/Route104/scripts.pory"
# 724 "data/maps/Route104/scripts.pory"
	release
# 725 "data/maps/Route104/scripts.pory"
# 356 "data/maps/Route104/scripts.pory"
# 726 "data/maps/Route104/scripts.pory"
	end
# 727 "data/maps/Route104/scripts.pory"
# 357 "data/maps/Route104/scripts.pory"
# 728 "data/maps/Route104/scripts.pory"

# 729 "data/maps/Route104/scripts.pory"
# 358 "data/maps/Route104/scripts.pory"
# 730 "data/maps/Route104/scripts.pory"
Route104_EventScript_Girl2::
# 731 "data/maps/Route104/scripts.pory"
# 359 "data/maps/Route104/scripts.pory"
# 732 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_ImNotATrainer, MSGBOX_NPC
# 733 "data/maps/Route104/scripts.pory"
# 360 "data/maps/Route104/scripts.pory"
# 734 "data/maps/Route104/scripts.pory"
	end
# 735 "data/maps/Route104/scripts.pory"
# 361 "data/maps/Route104/scripts.pory"
# 736 "data/maps/Route104/scripts.pory"

# 737 "data/maps/Route104/scripts.pory"
# 362 "data/maps/Route104/scripts.pory"
# 738 "data/maps/Route104/scripts.pory"
Route104_EventScript_SailToDewford::
# 739 "data/maps/Route104/scripts.pory"
# 363 "data/maps/Route104/scripts.pory"
# 740 "data/maps/Route104/scripts.pory"
	setobjectsubpriority LOCALID_ROUTE104_BRINEY, MAP_ROUTE104, 0
# 741 "data/maps/Route104/scripts.pory"
# 364 "data/maps/Route104/scripts.pory"
# 742 "data/maps/Route104/scripts.pory"
	setobjectsubpriority LOCALID_PLAYER, MAP_ROUTE104, 0
# 743 "data/maps/Route104/scripts.pory"
# 365 "data/maps/Route104/scripts.pory"
# 744 "data/maps/Route104/scripts.pory"
	setobjectsubpriority LOCALID_ROUTE104_BRINEY_RIVAL, MAP_ROUTE104, 0
# 745 "data/maps/Route104/scripts.pory"
# 365 "data/maps/Route104/scripts.pory"
# 746 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BRINEY, Route104_Movement_BrineyBoardBoat
# 747 "data/maps/Route104/scripts.pory"
# 366 "data/maps/Route104/scripts.pory"
# 748 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 749 "data/maps/Route104/scripts.pory"
# 367 "data/maps/Route104/scripts.pory"
# 750 "data/maps/Route104/scripts.pory"
	removeobject LOCALID_ROUTE104_BRINEY
# 751 "data/maps/Route104/scripts.pory"
# 368 "data/maps/Route104/scripts.pory"
# 752 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_PlayerBoardBoat
# 753 "data/maps/Route104/scripts.pory"
# 369 "data/maps/Route104/scripts.pory"
# 754 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 755 "data/maps/Route104/scripts.pory"
# 370 "data/maps/Route104/scripts.pory"
# 756 "data/maps/Route104/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_ROUTE104
# 757 "data/maps/Route104/scripts.pory"
# 371 "data/maps/Route104/scripts.pory"
# 758 "data/maps/Route104/scripts.pory"
	playse SE_PIN
# 759 "data/maps/Route104/scripts.pory"
# 372 "data/maps/Route104/scripts.pory"
# 760 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BRINEY_RIVAL, Common_Movement_ExclamationMark
# 761 "data/maps/Route104/scripts.pory"
# 373 "data/maps/Route104/scripts.pory"
# 762 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 763 "data/maps/Route104/scripts.pory"
# 374 "data/maps/Route104/scripts.pory"
# 764 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BRINEY_RIVAL, Common_Movement_Delay48
# 765 "data/maps/Route104/scripts.pory"
# 375 "data/maps/Route104/scripts.pory"
# 766 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 767 "data/maps/Route104/scripts.pory"
# 376 "data/maps/Route104/scripts.pory"
# 768 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BRINEY_RIVAL, Route104_Movement_RivalBoardBoat
# 769 "data/maps/Route104/scripts.pory"
# 377 "data/maps/Route104/scripts.pory"
# 770 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 771 "data/maps/Route104/scripts.pory"
# 378 "data/maps/Route104/scripts.pory"
# 772 "data/maps/Route104/scripts.pory"
	removeobject LOCALID_ROUTE104_BRINEY_RIVAL
# 773 "data/maps/Route104/scripts.pory"
# 379 "data/maps/Route104/scripts.pory"
# 774 "data/maps/Route104/scripts.pory"
	setflag FLAG_ROUTE_104_RIVAL_BOAT_TRIP
# 775 "data/maps/Route104/scripts.pory"
# 380 "data/maps/Route104/scripts.pory"
# 776 "data/maps/Route104/scripts.pory"
	setflag FLAG_HIDE_ROUTE_104_BRINEY_RIVAL
# 777 "data/maps/Route104/scripts.pory"
# 371 "data/maps/Route104/scripts.pory"
# 778 "data/maps/Route104/scripts.pory"
	call Common_EventScript_PlayBrineysBoatMusic
# 779 "data/maps/Route104/scripts.pory"
# 372 "data/maps/Route104/scripts.pory"
# 780 "data/maps/Route104/scripts.pory"
# 373 "data/maps/Route104/scripts.pory"
# 781 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_SailToDewfordNoCall
# 782 "data/maps/Route104/scripts.pory"
# 374 "data/maps/Route104/scripts.pory"
# 783 "data/maps/Route104/scripts.pory"
	end
# 784 "data/maps/Route104/scripts.pory"
# 375 "data/maps/Route104/scripts.pory"
# 785 "data/maps/Route104/scripts.pory"

# 786 "data/maps/Route104/scripts.pory"
# 376 "data/maps/Route104/scripts.pory"
# 787 "data/maps/Route104/scripts.pory"
Route104_EventScript_SailToDewfordNoCall::
# 788 "data/maps/Route104/scripts.pory"
# 377 "data/maps/Route104/scripts.pory"
# 789 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BOAT, Route104_Movement_SailToDewford
# 790 "data/maps/Route104/scripts.pory"
# 378 "data/maps/Route104/scripts.pory"
# 791 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_SailToDewford
# 792 "data/maps/Route104/scripts.pory"
# 379 "data/maps/Route104/scripts.pory"
# 793 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 794 "data/maps/Route104/scripts.pory"
# 380 "data/maps/Route104/scripts.pory"
# 795 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_ArriveInDewford
# 796 "data/maps/Route104/scripts.pory"
# 381 "data/maps/Route104/scripts.pory"
# 797 "data/maps/Route104/scripts.pory"

# 798 "data/maps/Route104/scripts.pory"
# 382 "data/maps/Route104/scripts.pory"
# 799 "data/maps/Route104/scripts.pory"
Route104_EventScript_SailToDewfordDadCalls::
# 800 "data/maps/Route104/scripts.pory"
# 383 "data/maps/Route104/scripts.pory"
# 801 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BOAT, Route104_Movement_SailToDewfordBeforeDadCalls
# 802 "data/maps/Route104/scripts.pory"
# 384 "data/maps/Route104/scripts.pory"
# 803 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_SailToDewfordBeforeDadCalls
# 804 "data/maps/Route104/scripts.pory"
# 385 "data/maps/Route104/scripts.pory"
# 805 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 806 "data/maps/Route104/scripts.pory"
# 386 "data/maps/Route104/scripts.pory"
# 807 "data/maps/Route104/scripts.pory"
	@ PokéNav removed pokenavcall Route104_Text_DadPokenavCall
# 808 "data/maps/Route104/scripts.pory"
# 387 "data/maps/Route104/scripts.pory"
# 809 "data/maps/Route104/scripts.pory"
	@ PokéNav removed waitmessage
# 810 "data/maps/Route104/scripts.pory"
# 388 "data/maps/Route104/scripts.pory"
# 811 "data/maps/Route104/scripts.pory"
	@ PokéNav removed delay 30
# 812 "data/maps/Route104/scripts.pory"
# 389 "data/maps/Route104/scripts.pory"
# 813 "data/maps/Route104/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 814 "data/maps/Route104/scripts.pory"
# 390 "data/maps/Route104/scripts.pory"
# 815 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_RegisteredDadInPokenav, MSGBOX_DEFAULT
# 816 "data/maps/Route104/scripts.pory"
# 391 "data/maps/Route104/scripts.pory"
# 817 "data/maps/Route104/scripts.pory"
	@ PokéNav removed waitfanfare
# 818 "data/maps/Route104/scripts.pory"
# 392 "data/maps/Route104/scripts.pory"
# 819 "data/maps/Route104/scripts.pory"
	closemessage
# 820 "data/maps/Route104/scripts.pory"
# 393 "data/maps/Route104/scripts.pory"
# 821 "data/maps/Route104/scripts.pory"
	delay 30
# 822 "data/maps/Route104/scripts.pory"
# 394 "data/maps/Route104/scripts.pory"
# 823 "data/maps/Route104/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_NORMAN_MATCH_CALL
# 824 "data/maps/Route104/scripts.pory"
# 395 "data/maps/Route104/scripts.pory"
# 825 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_SailToDewfordAfterDadCalls
# 826 "data/maps/Route104/scripts.pory"
# 396 "data/maps/Route104/scripts.pory"
# 827 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_ROUTE104_BOAT, Route104_Movement_SailToDewfordAfterDadCalls, MAP_ROUTE104
# 828 "data/maps/Route104/scripts.pory"
# 397 "data/maps/Route104/scripts.pory"
# 829 "data/maps/Route104/scripts.pory"
	waitmovement LOCALID_ROUTE104_BOAT, MAP_ROUTE104
# 830 "data/maps/Route104/scripts.pory"
# 398 "data/maps/Route104/scripts.pory"
# 831 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 832 "data/maps/Route104/scripts.pory"
# 399 "data/maps/Route104/scripts.pory"
# 833 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_ArriveInDewford
# 834 "data/maps/Route104/scripts.pory"
# 400 "data/maps/Route104/scripts.pory"
# 835 "data/maps/Route104/scripts.pory"

# 836 "data/maps/Route104/scripts.pory"
# 401 "data/maps/Route104/scripts.pory"
# 837 "data/maps/Route104/scripts.pory"
Route104_EventScript_ArriveInDewford::
# 838 "data/maps/Route104/scripts.pory"
# 402 "data/maps/Route104/scripts.pory"
# 839 "data/maps/Route104/scripts.pory"
	delay 50
# 840 "data/maps/Route104/scripts.pory"
# 403 "data/maps/Route104/scripts.pory"
# 841 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_PlayerExitBoat
# 842 "data/maps/Route104/scripts.pory"
# 404 "data/maps/Route104/scripts.pory"
# 843 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 844 "data/maps/Route104/scripts.pory"
# 405 "data/maps/Route104/scripts.pory"
# 845 "data/maps/Route104/scripts.pory"
	call Common_EventScript_StopBrineysBoatMusic
# 846 "data/maps/Route104/scripts.pory"
# 406 "data/maps/Route104/scripts.pory"
# 847 "data/maps/Route104/scripts.pory"
	showobjectat LOCALID_PLAYER, MAP_DEWFORD_TOWN
# 848 "data/maps/Route104/scripts.pory"
# 407 "data/maps/Route104/scripts.pory"
# 849 "data/maps/Route104/scripts.pory"
	call_if_unset FLAG_DEWFORD_RIVAL_ARRIVAL_DONE, Route104_EventScript_SetupDewfordArrivalRival
# 850 "data/maps/Route104/scripts.pory"
# 407 "data/maps/Route104/scripts.pory"
# 851 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Route104_Movement_PlayerMoveForBriney
# 852 "data/maps/Route104/scripts.pory"
# 408 "data/maps/Route104/scripts.pory"
# 853 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 854 "data/maps/Route104/scripts.pory"
# 409 "data/maps/Route104/scripts.pory"
# 855 "data/maps/Route104/scripts.pory"
	setobjectxyperm LOCALID_DEWFORD_BRINEY, 18, 8
# 856 "data/maps/Route104/scripts.pory"
# 410 "data/maps/Route104/scripts.pory"
# 857 "data/maps/Route104/scripts.pory"
	addobject LOCALID_DEWFORD_BRINEY
# 858 "data/maps/Route104/scripts.pory"
# 411 "data/maps/Route104/scripts.pory"
# 859 "data/maps/Route104/scripts.pory"
	setobjectsubpriority LOCALID_DEWFORD_BRINEY, MAP_DEWFORD_TOWN, 0
# 860 "data/maps/Route104/scripts.pory"
# 412 "data/maps/Route104/scripts.pory"
# 861 "data/maps/Route104/scripts.pory"
	clearflag FLAG_HIDE_MR_BRINEY_DEWFORD_TOWN
# 862 "data/maps/Route104/scripts.pory"
# 413 "data/maps/Route104/scripts.pory"
# 863 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_DEWFORD_BRINEY, Route104_Movement_BrineyExitBoat
# 864 "data/maps/Route104/scripts.pory"
# 414 "data/maps/Route104/scripts.pory"
# 865 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 866 "data/maps/Route104/scripts.pory"
# 415 "data/maps/Route104/scripts.pory"
# 867 "data/maps/Route104/scripts.pory"
	addobject LOCALID_DEWFORD_BOAT
# 868 "data/maps/Route104/scripts.pory"
# 416 "data/maps/Route104/scripts.pory"
# 869 "data/maps/Route104/scripts.pory"
	clearflag FLAG_HIDE_MR_BRINEY_BOAT_DEWFORD_TOWN
# 870 "data/maps/Route104/scripts.pory"
# 417 "data/maps/Route104/scripts.pory"
# 871 "data/maps/Route104/scripts.pory"
	call Common_EventScript_StopBrineysBoatMusic
# 872 "data/maps/Route104/scripts.pory"
# 418 "data/maps/Route104/scripts.pory"
# 873 "data/maps/Route104/scripts.pory"
	setflag FLAG_HIDE_ROUTE_104_MR_BRINEY_BOAT
# 874 "data/maps/Route104/scripts.pory"
# 419 "data/maps/Route104/scripts.pory"
# 875 "data/maps/Route104/scripts.pory"
	hideobjectat LOCALID_ROUTE104_BOAT, MAP_ROUTE104
# 876 "data/maps/Route104/scripts.pory"
# 420 "data/maps/Route104/scripts.pory"
# 877 "data/maps/Route104/scripts.pory"
	copyvar VAR_BRINEY_LOCATION, VAR_0x8008
# 878 "data/maps/Route104/scripts.pory"
# 421 "data/maps/Route104/scripts.pory"
# 879 "data/maps/Route104/scripts.pory"
	resetobjectsubpriority LOCALID_PLAYER, MAP_ROUTE104
# 880 "data/maps/Route104/scripts.pory"
# 422 "data/maps/Route104/scripts.pory"
# 881 "data/maps/Route104/scripts.pory"
	resetobjectsubpriority LOCALID_DEWFORD_BRINEY, MAP_DEWFORD_TOWN
# 882 "data/maps/Route104/scripts.pory"
# 423 "data/maps/Route104/scripts.pory"
# 883 "data/maps/Route104/scripts.pory"
	copyobjectxytoperm LOCALID_DEWFORD_BRINEY
# 884 "data/maps/Route104/scripts.pory"
# 424 "data/maps/Route104/scripts.pory"
# 885 "data/maps/Route104/scripts.pory"
	setvar VAR_BOARD_BRINEY_BOAT_STATE, 0
# 886 "data/maps/Route104/scripts.pory"
# 425 "data/maps/Route104/scripts.pory"
# 887 "data/maps/Route104/scripts.pory"
	goto_if_unset FLAG_DELIVERED_STEVEN_LETTER, Route104_EventScript_DeliverLetterReminder
# 888 "data/maps/Route104/scripts.pory"
# 426 "data/maps/Route104/scripts.pory"
# 889 "data/maps/Route104/scripts.pory"
	goto_if_set FLAG_DELIVERED_STEVEN_LETTER, Route104_EventScript_LandedInDewford
# 890 "data/maps/Route104/scripts.pory"
# 427 "data/maps/Route104/scripts.pory"
# 891 "data/maps/Route104/scripts.pory"
	end
# 892 "data/maps/Route104/scripts.pory"
# 428 "data/maps/Route104/scripts.pory"
# 893 "data/maps/Route104/scripts.pory"

# 894 "data/maps/Route104/scripts.pory"
Route104_EventScript_SetupDewfordArrivalRival::
# 895 "data/maps/Route104/scripts.pory"
	setobjectxyperm LOCALID_DEWFORD_ARRIVAL_RIVAL, 18, 8
# 896 "data/maps/Route104/scripts.pory"
	addobject LOCALID_DEWFORD_ARRIVAL_RIVAL
# 897 "data/maps/Route104/scripts.pory"
	setobjectsubpriority LOCALID_DEWFORD_ARRIVAL_RIVAL, MAP_DEWFORD_TOWN, 0
# 898 "data/maps/Route104/scripts.pory"
	clearflag FLAG_HIDE_DEWFORD_ARRIVAL_RIVAL
# 899 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_DEWFORD_ARRIVAL_RIVAL, Route104_Movement_DewfordArrivalRivalDisembark
# 900 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 901 "data/maps/Route104/scripts.pory"
	return
# 902 "data/maps/Route104/scripts.pory"

# 903 "data/maps/Route104/scripts.pory"
Route104_EventScript_DewfordRivalFarewell::
# 904 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 905 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 906 "data/maps/Route104/scripts.pory"
	checkplayergender
# 907 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route104_EventScript_DewfordRivalFarewellZinnia
# 908 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route104_EventScript_DewfordRivalFarewellZenno
# 909 "data/maps/Route104/scripts.pory"
	return
# 910 "data/maps/Route104/scripts.pory"

# 911 "data/maps/Route104/scripts.pory"
Route104_EventScript_DewfordRivalFarewellZinnia::
# 912 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 913 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_DewfordArrivalZinnia, MSGBOX_DEFAULT
# 914 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 915 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_DewfordRivalLeave
# 916 "data/maps/Route104/scripts.pory"

# 917 "data/maps/Route104/scripts.pory"
Route104_EventScript_DewfordRivalFarewellZenno::
# 918 "data/maps/Route104/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 919 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_DewfordArrivalZenno, MSGBOX_DEFAULT
# 920 "data/maps/Route104/scripts.pory"
	removefieldmugshot
# 921 "data/maps/Route104/scripts.pory"
	goto Route104_EventScript_DewfordRivalLeave
# 922 "data/maps/Route104/scripts.pory"

# 923 "data/maps/Route104/scripts.pory"
Route104_EventScript_DewfordRivalLeave::
# 924 "data/maps/Route104/scripts.pory"
	applymovement LOCALID_DEWFORD_ARRIVAL_RIVAL, Route104_Movement_DewfordArrivalRivalLeave
# 925 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 926 "data/maps/Route104/scripts.pory"
	removeobject LOCALID_DEWFORD_ARRIVAL_RIVAL
# 927 "data/maps/Route104/scripts.pory"
	setflag FLAG_HIDE_DEWFORD_ARRIVAL_RIVAL
# 928 "data/maps/Route104/scripts.pory"
	setflag FLAG_DEWFORD_RIVAL_ARRIVAL_DONE
# 929 "data/maps/Route104/scripts.pory"
	return
# 930 "data/maps/Route104/scripts.pory"

# 931 "data/maps/Route104/scripts.pory"
# 429 "data/maps/Route104/scripts.pory"
# 932 "data/maps/Route104/scripts.pory"
Route104_EventScript_DeliverLetterReminder::
# 933 "data/maps/Route104/scripts.pory"
# 430 "data/maps/Route104/scripts.pory"
# 934 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_LandedInDewfordDeliverLetter, MSGBOX_DEFAULT
# 935 "data/maps/Route104/scripts.pory"
# 431 "data/maps/Route104/scripts.pory"
# 936 "data/maps/Route104/scripts.pory"
	call_if_unset FLAG_DEWFORD_RIVAL_ARRIVAL_DONE, Route104_EventScript_DewfordRivalFarewell
# 937 "data/maps/Route104/scripts.pory"
# 431 "data/maps/Route104/scripts.pory"
# 938 "data/maps/Route104/scripts.pory"
	releaseall
# 939 "data/maps/Route104/scripts.pory"
# 432 "data/maps/Route104/scripts.pory"
# 940 "data/maps/Route104/scripts.pory"
	end
# 941 "data/maps/Route104/scripts.pory"
# 433 "data/maps/Route104/scripts.pory"
# 942 "data/maps/Route104/scripts.pory"

# 943 "data/maps/Route104/scripts.pory"
# 434 "data/maps/Route104/scripts.pory"
# 944 "data/maps/Route104/scripts.pory"
Route104_EventScript_LandedInDewford::
# 945 "data/maps/Route104/scripts.pory"
# 435 "data/maps/Route104/scripts.pory"
# 946 "data/maps/Route104/scripts.pory"
	msgbox DewfordTown_Text_BrineyLandedInDewford, MSGBOX_DEFAULT
# 947 "data/maps/Route104/scripts.pory"
# 436 "data/maps/Route104/scripts.pory"
# 948 "data/maps/Route104/scripts.pory"
	call_if_unset FLAG_DEWFORD_RIVAL_ARRIVAL_DONE, Route104_EventScript_DewfordRivalFarewell
# 949 "data/maps/Route104/scripts.pory"
# 436 "data/maps/Route104/scripts.pory"
# 950 "data/maps/Route104/scripts.pory"
	releaseall
# 951 "data/maps/Route104/scripts.pory"
# 437 "data/maps/Route104/scripts.pory"
# 952 "data/maps/Route104/scripts.pory"
	end
# 953 "data/maps/Route104/scripts.pory"
# 438 "data/maps/Route104/scripts.pory"
# 954 "data/maps/Route104/scripts.pory"

# 955 "data/maps/Route104/scripts.pory"
# 439 "data/maps/Route104/scripts.pory"
# 956 "data/maps/Route104/scripts.pory"
Route104_Movement_SailToDewfordBeforeDadCalls:
# 957 "data/maps/Route104/scripts.pory"
# 440 "data/maps/Route104/scripts.pory"
# 958 "data/maps/Route104/scripts.pory"
	walk_down
# 959 "data/maps/Route104/scripts.pory"
# 441 "data/maps/Route104/scripts.pory"
# 960 "data/maps/Route104/scripts.pory"
	walk_down
# 961 "data/maps/Route104/scripts.pory"
# 442 "data/maps/Route104/scripts.pory"
# 962 "data/maps/Route104/scripts.pory"
	walk_down
# 963 "data/maps/Route104/scripts.pory"
# 443 "data/maps/Route104/scripts.pory"
# 964 "data/maps/Route104/scripts.pory"
	walk_down
# 965 "data/maps/Route104/scripts.pory"
# 444 "data/maps/Route104/scripts.pory"
# 966 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 967 "data/maps/Route104/scripts.pory"
# 445 "data/maps/Route104/scripts.pory"
# 968 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 969 "data/maps/Route104/scripts.pory"
# 446 "data/maps/Route104/scripts.pory"
# 970 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 971 "data/maps/Route104/scripts.pory"
# 447 "data/maps/Route104/scripts.pory"
# 972 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 973 "data/maps/Route104/scripts.pory"
# 448 "data/maps/Route104/scripts.pory"
# 974 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 975 "data/maps/Route104/scripts.pory"
# 449 "data/maps/Route104/scripts.pory"
# 976 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 977 "data/maps/Route104/scripts.pory"
# 450 "data/maps/Route104/scripts.pory"
# 978 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 979 "data/maps/Route104/scripts.pory"
# 451 "data/maps/Route104/scripts.pory"
# 980 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 981 "data/maps/Route104/scripts.pory"
# 452 "data/maps/Route104/scripts.pory"
# 982 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 983 "data/maps/Route104/scripts.pory"
# 453 "data/maps/Route104/scripts.pory"
# 984 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 985 "data/maps/Route104/scripts.pory"
# 454 "data/maps/Route104/scripts.pory"
# 986 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 987 "data/maps/Route104/scripts.pory"
# 455 "data/maps/Route104/scripts.pory"
# 988 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 989 "data/maps/Route104/scripts.pory"
# 456 "data/maps/Route104/scripts.pory"
# 990 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 991 "data/maps/Route104/scripts.pory"
# 457 "data/maps/Route104/scripts.pory"
# 992 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 993 "data/maps/Route104/scripts.pory"
# 458 "data/maps/Route104/scripts.pory"
# 994 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 995 "data/maps/Route104/scripts.pory"
# 459 "data/maps/Route104/scripts.pory"
# 996 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 997 "data/maps/Route104/scripts.pory"
# 460 "data/maps/Route104/scripts.pory"
# 998 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 999 "data/maps/Route104/scripts.pory"
# 461 "data/maps/Route104/scripts.pory"
# 1000 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1001 "data/maps/Route104/scripts.pory"
# 462 "data/maps/Route104/scripts.pory"
# 1002 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1003 "data/maps/Route104/scripts.pory"
# 463 "data/maps/Route104/scripts.pory"
# 1004 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1005 "data/maps/Route104/scripts.pory"
# 464 "data/maps/Route104/scripts.pory"
# 1006 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1007 "data/maps/Route104/scripts.pory"
# 465 "data/maps/Route104/scripts.pory"
# 1008 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1009 "data/maps/Route104/scripts.pory"
# 466 "data/maps/Route104/scripts.pory"
# 1010 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1011 "data/maps/Route104/scripts.pory"
# 467 "data/maps/Route104/scripts.pory"
# 1012 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1013 "data/maps/Route104/scripts.pory"
# 468 "data/maps/Route104/scripts.pory"
# 1014 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1015 "data/maps/Route104/scripts.pory"
# 469 "data/maps/Route104/scripts.pory"
# 1016 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1017 "data/maps/Route104/scripts.pory"
# 470 "data/maps/Route104/scripts.pory"
# 1018 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1019 "data/maps/Route104/scripts.pory"
# 471 "data/maps/Route104/scripts.pory"
# 1020 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1021 "data/maps/Route104/scripts.pory"
# 472 "data/maps/Route104/scripts.pory"
# 1022 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1023 "data/maps/Route104/scripts.pory"
# 473 "data/maps/Route104/scripts.pory"
# 1024 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1025 "data/maps/Route104/scripts.pory"
# 474 "data/maps/Route104/scripts.pory"
# 1026 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1027 "data/maps/Route104/scripts.pory"
# 475 "data/maps/Route104/scripts.pory"
# 1028 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1029 "data/maps/Route104/scripts.pory"
# 476 "data/maps/Route104/scripts.pory"
# 1030 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1031 "data/maps/Route104/scripts.pory"
# 477 "data/maps/Route104/scripts.pory"
# 1032 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1033 "data/maps/Route104/scripts.pory"
# 478 "data/maps/Route104/scripts.pory"
# 1034 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1035 "data/maps/Route104/scripts.pory"
# 479 "data/maps/Route104/scripts.pory"
# 1036 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1037 "data/maps/Route104/scripts.pory"
# 480 "data/maps/Route104/scripts.pory"
# 1038 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1039 "data/maps/Route104/scripts.pory"
# 481 "data/maps/Route104/scripts.pory"
# 1040 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1041 "data/maps/Route104/scripts.pory"
# 482 "data/maps/Route104/scripts.pory"
# 1042 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1043 "data/maps/Route104/scripts.pory"
# 483 "data/maps/Route104/scripts.pory"
# 1044 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1045 "data/maps/Route104/scripts.pory"
# 484 "data/maps/Route104/scripts.pory"
# 1046 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1047 "data/maps/Route104/scripts.pory"
# 485 "data/maps/Route104/scripts.pory"
# 1048 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1049 "data/maps/Route104/scripts.pory"
# 486 "data/maps/Route104/scripts.pory"
# 1050 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1051 "data/maps/Route104/scripts.pory"
# 487 "data/maps/Route104/scripts.pory"
# 1052 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1053 "data/maps/Route104/scripts.pory"
# 488 "data/maps/Route104/scripts.pory"
# 1054 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1055 "data/maps/Route104/scripts.pory"
# 489 "data/maps/Route104/scripts.pory"
# 1056 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1057 "data/maps/Route104/scripts.pory"
# 490 "data/maps/Route104/scripts.pory"
# 1058 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1059 "data/maps/Route104/scripts.pory"
# 491 "data/maps/Route104/scripts.pory"
# 1060 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1061 "data/maps/Route104/scripts.pory"
# 492 "data/maps/Route104/scripts.pory"
# 1062 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1063 "data/maps/Route104/scripts.pory"
# 493 "data/maps/Route104/scripts.pory"
# 1064 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1065 "data/maps/Route104/scripts.pory"
# 494 "data/maps/Route104/scripts.pory"
# 1066 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1067 "data/maps/Route104/scripts.pory"
# 495 "data/maps/Route104/scripts.pory"
# 1068 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1069 "data/maps/Route104/scripts.pory"
# 496 "data/maps/Route104/scripts.pory"
# 1070 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1071 "data/maps/Route104/scripts.pory"
# 497 "data/maps/Route104/scripts.pory"
# 1072 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1073 "data/maps/Route104/scripts.pory"
# 498 "data/maps/Route104/scripts.pory"
# 1074 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1075 "data/maps/Route104/scripts.pory"
# 499 "data/maps/Route104/scripts.pory"
# 1076 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1077 "data/maps/Route104/scripts.pory"
# 500 "data/maps/Route104/scripts.pory"
# 1078 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1079 "data/maps/Route104/scripts.pory"
# 501 "data/maps/Route104/scripts.pory"
# 1080 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1081 "data/maps/Route104/scripts.pory"
# 502 "data/maps/Route104/scripts.pory"
# 1082 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1083 "data/maps/Route104/scripts.pory"
# 503 "data/maps/Route104/scripts.pory"
# 1084 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1085 "data/maps/Route104/scripts.pory"
# 504 "data/maps/Route104/scripts.pory"
# 1086 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1087 "data/maps/Route104/scripts.pory"
# 505 "data/maps/Route104/scripts.pory"
# 1088 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1089 "data/maps/Route104/scripts.pory"
# 506 "data/maps/Route104/scripts.pory"
# 1090 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1091 "data/maps/Route104/scripts.pory"
# 507 "data/maps/Route104/scripts.pory"
# 1092 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1093 "data/maps/Route104/scripts.pory"
# 508 "data/maps/Route104/scripts.pory"
# 1094 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1095 "data/maps/Route104/scripts.pory"
# 509 "data/maps/Route104/scripts.pory"
# 1096 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1097 "data/maps/Route104/scripts.pory"
# 510 "data/maps/Route104/scripts.pory"
# 1098 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1099 "data/maps/Route104/scripts.pory"
# 511 "data/maps/Route104/scripts.pory"
# 1100 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1101 "data/maps/Route104/scripts.pory"
# 512 "data/maps/Route104/scripts.pory"
# 1102 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1103 "data/maps/Route104/scripts.pory"
# 513 "data/maps/Route104/scripts.pory"
# 1104 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1105 "data/maps/Route104/scripts.pory"
# 514 "data/maps/Route104/scripts.pory"
# 1106 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1107 "data/maps/Route104/scripts.pory"
# 515 "data/maps/Route104/scripts.pory"
# 1108 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1109 "data/maps/Route104/scripts.pory"
# 516 "data/maps/Route104/scripts.pory"
# 1110 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1111 "data/maps/Route104/scripts.pory"
# 517 "data/maps/Route104/scripts.pory"
# 1112 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1113 "data/maps/Route104/scripts.pory"
# 518 "data/maps/Route104/scripts.pory"
# 1114 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1115 "data/maps/Route104/scripts.pory"
# 519 "data/maps/Route104/scripts.pory"
# 1116 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1117 "data/maps/Route104/scripts.pory"
# 520 "data/maps/Route104/scripts.pory"
# 1118 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1119 "data/maps/Route104/scripts.pory"
# 521 "data/maps/Route104/scripts.pory"
# 1120 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1121 "data/maps/Route104/scripts.pory"
# 522 "data/maps/Route104/scripts.pory"
# 1122 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1123 "data/maps/Route104/scripts.pory"
# 523 "data/maps/Route104/scripts.pory"
# 1124 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1125 "data/maps/Route104/scripts.pory"
# 524 "data/maps/Route104/scripts.pory"
# 1126 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1127 "data/maps/Route104/scripts.pory"
# 525 "data/maps/Route104/scripts.pory"
# 1128 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1129 "data/maps/Route104/scripts.pory"
# 526 "data/maps/Route104/scripts.pory"
# 1130 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1131 "data/maps/Route104/scripts.pory"
# 527 "data/maps/Route104/scripts.pory"
# 1132 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1133 "data/maps/Route104/scripts.pory"
# 528 "data/maps/Route104/scripts.pory"
# 1134 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1135 "data/maps/Route104/scripts.pory"
# 529 "data/maps/Route104/scripts.pory"
# 1136 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1137 "data/maps/Route104/scripts.pory"
# 530 "data/maps/Route104/scripts.pory"
# 1138 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1139 "data/maps/Route104/scripts.pory"
# 531 "data/maps/Route104/scripts.pory"
# 1140 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1141 "data/maps/Route104/scripts.pory"
# 532 "data/maps/Route104/scripts.pory"
# 1142 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1143 "data/maps/Route104/scripts.pory"
# 533 "data/maps/Route104/scripts.pory"
# 1144 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1145 "data/maps/Route104/scripts.pory"
# 534 "data/maps/Route104/scripts.pory"
# 1146 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1147 "data/maps/Route104/scripts.pory"
# 535 "data/maps/Route104/scripts.pory"
# 1148 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1149 "data/maps/Route104/scripts.pory"
# 536 "data/maps/Route104/scripts.pory"
# 1150 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1151 "data/maps/Route104/scripts.pory"
# 537 "data/maps/Route104/scripts.pory"
# 1152 "data/maps/Route104/scripts.pory"
	step_end
# 1153 "data/maps/Route104/scripts.pory"
# 538 "data/maps/Route104/scripts.pory"
# 1154 "data/maps/Route104/scripts.pory"

# 1155 "data/maps/Route104/scripts.pory"
# 539 "data/maps/Route104/scripts.pory"
# 1156 "data/maps/Route104/scripts.pory"
Route104_Movement_SailToDewfordAfterDadCalls:
# 1157 "data/maps/Route104/scripts.pory"
# 540 "data/maps/Route104/scripts.pory"
# 1158 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1159 "data/maps/Route104/scripts.pory"
# 541 "data/maps/Route104/scripts.pory"
# 1160 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1161 "data/maps/Route104/scripts.pory"
# 542 "data/maps/Route104/scripts.pory"
# 1162 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1163 "data/maps/Route104/scripts.pory"
# 543 "data/maps/Route104/scripts.pory"
# 1164 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1165 "data/maps/Route104/scripts.pory"
# 544 "data/maps/Route104/scripts.pory"
# 1166 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1167 "data/maps/Route104/scripts.pory"
# 545 "data/maps/Route104/scripts.pory"
# 1168 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1169 "data/maps/Route104/scripts.pory"
# 546 "data/maps/Route104/scripts.pory"
# 1170 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1171 "data/maps/Route104/scripts.pory"
# 547 "data/maps/Route104/scripts.pory"
# 1172 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1173 "data/maps/Route104/scripts.pory"
# 548 "data/maps/Route104/scripts.pory"
# 1174 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1175 "data/maps/Route104/scripts.pory"
# 549 "data/maps/Route104/scripts.pory"
# 1176 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1177 "data/maps/Route104/scripts.pory"
# 550 "data/maps/Route104/scripts.pory"
# 1178 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1179 "data/maps/Route104/scripts.pory"
# 551 "data/maps/Route104/scripts.pory"
# 1180 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1181 "data/maps/Route104/scripts.pory"
# 552 "data/maps/Route104/scripts.pory"
# 1182 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1183 "data/maps/Route104/scripts.pory"
# 553 "data/maps/Route104/scripts.pory"
# 1184 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1185 "data/maps/Route104/scripts.pory"
# 554 "data/maps/Route104/scripts.pory"
# 1186 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1187 "data/maps/Route104/scripts.pory"
# 555 "data/maps/Route104/scripts.pory"
# 1188 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1189 "data/maps/Route104/scripts.pory"
# 556 "data/maps/Route104/scripts.pory"
# 1190 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1191 "data/maps/Route104/scripts.pory"
# 557 "data/maps/Route104/scripts.pory"
# 1192 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1193 "data/maps/Route104/scripts.pory"
# 558 "data/maps/Route104/scripts.pory"
# 1194 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1195 "data/maps/Route104/scripts.pory"
# 559 "data/maps/Route104/scripts.pory"
# 1196 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1197 "data/maps/Route104/scripts.pory"
# 560 "data/maps/Route104/scripts.pory"
# 1198 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1199 "data/maps/Route104/scripts.pory"
# 561 "data/maps/Route104/scripts.pory"
# 1200 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1201 "data/maps/Route104/scripts.pory"
# 562 "data/maps/Route104/scripts.pory"
# 1202 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1203 "data/maps/Route104/scripts.pory"
# 563 "data/maps/Route104/scripts.pory"
# 1204 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1205 "data/maps/Route104/scripts.pory"
# 564 "data/maps/Route104/scripts.pory"
# 1206 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1207 "data/maps/Route104/scripts.pory"
# 565 "data/maps/Route104/scripts.pory"
# 1208 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1209 "data/maps/Route104/scripts.pory"
# 566 "data/maps/Route104/scripts.pory"
# 1210 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1211 "data/maps/Route104/scripts.pory"
# 567 "data/maps/Route104/scripts.pory"
# 1212 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1213 "data/maps/Route104/scripts.pory"
# 568 "data/maps/Route104/scripts.pory"
# 1214 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1215 "data/maps/Route104/scripts.pory"
# 569 "data/maps/Route104/scripts.pory"
# 1216 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1217 "data/maps/Route104/scripts.pory"
# 570 "data/maps/Route104/scripts.pory"
# 1218 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1219 "data/maps/Route104/scripts.pory"
# 571 "data/maps/Route104/scripts.pory"
# 1220 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1221 "data/maps/Route104/scripts.pory"
# 572 "data/maps/Route104/scripts.pory"
# 1222 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1223 "data/maps/Route104/scripts.pory"
# 573 "data/maps/Route104/scripts.pory"
# 1224 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1225 "data/maps/Route104/scripts.pory"
# 574 "data/maps/Route104/scripts.pory"
# 1226 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1227 "data/maps/Route104/scripts.pory"
# 575 "data/maps/Route104/scripts.pory"
# 1228 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1229 "data/maps/Route104/scripts.pory"
# 576 "data/maps/Route104/scripts.pory"
# 1230 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1231 "data/maps/Route104/scripts.pory"
# 577 "data/maps/Route104/scripts.pory"
# 1232 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1233 "data/maps/Route104/scripts.pory"
# 578 "data/maps/Route104/scripts.pory"
# 1234 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1235 "data/maps/Route104/scripts.pory"
# 579 "data/maps/Route104/scripts.pory"
# 1236 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1237 "data/maps/Route104/scripts.pory"
# 580 "data/maps/Route104/scripts.pory"
# 1238 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1239 "data/maps/Route104/scripts.pory"
# 581 "data/maps/Route104/scripts.pory"
# 1240 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1241 "data/maps/Route104/scripts.pory"
# 582 "data/maps/Route104/scripts.pory"
# 1242 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1243 "data/maps/Route104/scripts.pory"
# 583 "data/maps/Route104/scripts.pory"
# 1244 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1245 "data/maps/Route104/scripts.pory"
# 584 "data/maps/Route104/scripts.pory"
# 1246 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1247 "data/maps/Route104/scripts.pory"
# 585 "data/maps/Route104/scripts.pory"
# 1248 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1249 "data/maps/Route104/scripts.pory"
# 586 "data/maps/Route104/scripts.pory"
# 1250 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1251 "data/maps/Route104/scripts.pory"
# 587 "data/maps/Route104/scripts.pory"
# 1252 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1253 "data/maps/Route104/scripts.pory"
# 588 "data/maps/Route104/scripts.pory"
# 1254 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1255 "data/maps/Route104/scripts.pory"
# 589 "data/maps/Route104/scripts.pory"
# 1256 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1257 "data/maps/Route104/scripts.pory"
# 590 "data/maps/Route104/scripts.pory"
# 1258 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1259 "data/maps/Route104/scripts.pory"
# 591 "data/maps/Route104/scripts.pory"
# 1260 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1261 "data/maps/Route104/scripts.pory"
# 592 "data/maps/Route104/scripts.pory"
# 1262 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1263 "data/maps/Route104/scripts.pory"
# 593 "data/maps/Route104/scripts.pory"
# 1264 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1265 "data/maps/Route104/scripts.pory"
# 594 "data/maps/Route104/scripts.pory"
# 1266 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1267 "data/maps/Route104/scripts.pory"
# 595 "data/maps/Route104/scripts.pory"
# 1268 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1269 "data/maps/Route104/scripts.pory"
# 596 "data/maps/Route104/scripts.pory"
# 1270 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1271 "data/maps/Route104/scripts.pory"
# 597 "data/maps/Route104/scripts.pory"
# 1272 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1273 "data/maps/Route104/scripts.pory"
# 598 "data/maps/Route104/scripts.pory"
# 1274 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1275 "data/maps/Route104/scripts.pory"
# 599 "data/maps/Route104/scripts.pory"
# 1276 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1277 "data/maps/Route104/scripts.pory"
# 600 "data/maps/Route104/scripts.pory"
# 1278 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1279 "data/maps/Route104/scripts.pory"
# 601 "data/maps/Route104/scripts.pory"
# 1280 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1281 "data/maps/Route104/scripts.pory"
# 602 "data/maps/Route104/scripts.pory"
# 1282 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1283 "data/maps/Route104/scripts.pory"
# 603 "data/maps/Route104/scripts.pory"
# 1284 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1285 "data/maps/Route104/scripts.pory"
# 604 "data/maps/Route104/scripts.pory"
# 1286 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1287 "data/maps/Route104/scripts.pory"
# 605 "data/maps/Route104/scripts.pory"
# 1288 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1289 "data/maps/Route104/scripts.pory"
# 606 "data/maps/Route104/scripts.pory"
# 1290 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1291 "data/maps/Route104/scripts.pory"
# 607 "data/maps/Route104/scripts.pory"
# 1292 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1293 "data/maps/Route104/scripts.pory"
# 608 "data/maps/Route104/scripts.pory"
# 1294 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1295 "data/maps/Route104/scripts.pory"
# 609 "data/maps/Route104/scripts.pory"
# 1296 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1297 "data/maps/Route104/scripts.pory"
# 610 "data/maps/Route104/scripts.pory"
# 1298 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1299 "data/maps/Route104/scripts.pory"
# 611 "data/maps/Route104/scripts.pory"
# 1300 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1301 "data/maps/Route104/scripts.pory"
# 612 "data/maps/Route104/scripts.pory"
# 1302 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1303 "data/maps/Route104/scripts.pory"
# 613 "data/maps/Route104/scripts.pory"
# 1304 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1305 "data/maps/Route104/scripts.pory"
# 614 "data/maps/Route104/scripts.pory"
# 1306 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1307 "data/maps/Route104/scripts.pory"
# 615 "data/maps/Route104/scripts.pory"
# 1308 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1309 "data/maps/Route104/scripts.pory"
# 616 "data/maps/Route104/scripts.pory"
# 1310 "data/maps/Route104/scripts.pory"
	walk_right
# 1311 "data/maps/Route104/scripts.pory"
# 617 "data/maps/Route104/scripts.pory"
# 1312 "data/maps/Route104/scripts.pory"
	walk_right
# 1313 "data/maps/Route104/scripts.pory"
# 618 "data/maps/Route104/scripts.pory"
# 1314 "data/maps/Route104/scripts.pory"
	walk_down
# 1315 "data/maps/Route104/scripts.pory"
# 619 "data/maps/Route104/scripts.pory"
# 1316 "data/maps/Route104/scripts.pory"
	walk_down
# 1317 "data/maps/Route104/scripts.pory"
# 620 "data/maps/Route104/scripts.pory"
# 1318 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1319 "data/maps/Route104/scripts.pory"
# 621 "data/maps/Route104/scripts.pory"
# 1320 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1321 "data/maps/Route104/scripts.pory"
# 622 "data/maps/Route104/scripts.pory"
# 1322 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1323 "data/maps/Route104/scripts.pory"
# 623 "data/maps/Route104/scripts.pory"
# 1324 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1325 "data/maps/Route104/scripts.pory"
# 624 "data/maps/Route104/scripts.pory"
# 1326 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1327 "data/maps/Route104/scripts.pory"
# 625 "data/maps/Route104/scripts.pory"
# 1328 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1329 "data/maps/Route104/scripts.pory"
# 626 "data/maps/Route104/scripts.pory"
# 1330 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1331 "data/maps/Route104/scripts.pory"
# 627 "data/maps/Route104/scripts.pory"
# 1332 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1333 "data/maps/Route104/scripts.pory"
# 628 "data/maps/Route104/scripts.pory"
# 1334 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1335 "data/maps/Route104/scripts.pory"
# 629 "data/maps/Route104/scripts.pory"
# 1336 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1337 "data/maps/Route104/scripts.pory"
# 630 "data/maps/Route104/scripts.pory"
# 1338 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1339 "data/maps/Route104/scripts.pory"
# 631 "data/maps/Route104/scripts.pory"
# 1340 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1341 "data/maps/Route104/scripts.pory"
# 632 "data/maps/Route104/scripts.pory"
# 1342 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1343 "data/maps/Route104/scripts.pory"
# 633 "data/maps/Route104/scripts.pory"
# 1344 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1345 "data/maps/Route104/scripts.pory"
# 634 "data/maps/Route104/scripts.pory"
# 1346 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1347 "data/maps/Route104/scripts.pory"
# 635 "data/maps/Route104/scripts.pory"
# 1348 "data/maps/Route104/scripts.pory"
	walk_down
# 1349 "data/maps/Route104/scripts.pory"
# 636 "data/maps/Route104/scripts.pory"
# 1350 "data/maps/Route104/scripts.pory"
	walk_down
# 1351 "data/maps/Route104/scripts.pory"
# 637 "data/maps/Route104/scripts.pory"
# 1352 "data/maps/Route104/scripts.pory"
	step_end
# 1353 "data/maps/Route104/scripts.pory"
# 638 "data/maps/Route104/scripts.pory"
# 1354 "data/maps/Route104/scripts.pory"

# 1355 "data/maps/Route104/scripts.pory"
# 639 "data/maps/Route104/scripts.pory"
# 1356 "data/maps/Route104/scripts.pory"
Route104_Movement_SailToDewford:
# 1357 "data/maps/Route104/scripts.pory"
# 640 "data/maps/Route104/scripts.pory"
# 1358 "data/maps/Route104/scripts.pory"
	walk_down
# 1359 "data/maps/Route104/scripts.pory"
# 641 "data/maps/Route104/scripts.pory"
# 1360 "data/maps/Route104/scripts.pory"
	walk_down
# 1361 "data/maps/Route104/scripts.pory"
# 642 "data/maps/Route104/scripts.pory"
# 1362 "data/maps/Route104/scripts.pory"
	walk_down
# 1363 "data/maps/Route104/scripts.pory"
# 643 "data/maps/Route104/scripts.pory"
# 1364 "data/maps/Route104/scripts.pory"
	walk_down
# 1365 "data/maps/Route104/scripts.pory"
# 644 "data/maps/Route104/scripts.pory"
# 1366 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1367 "data/maps/Route104/scripts.pory"
# 645 "data/maps/Route104/scripts.pory"
# 1368 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1369 "data/maps/Route104/scripts.pory"
# 646 "data/maps/Route104/scripts.pory"
# 1370 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1371 "data/maps/Route104/scripts.pory"
# 647 "data/maps/Route104/scripts.pory"
# 1372 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1373 "data/maps/Route104/scripts.pory"
# 648 "data/maps/Route104/scripts.pory"
# 1374 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1375 "data/maps/Route104/scripts.pory"
# 649 "data/maps/Route104/scripts.pory"
# 1376 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1377 "data/maps/Route104/scripts.pory"
# 650 "data/maps/Route104/scripts.pory"
# 1378 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1379 "data/maps/Route104/scripts.pory"
# 651 "data/maps/Route104/scripts.pory"
# 1380 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1381 "data/maps/Route104/scripts.pory"
# 652 "data/maps/Route104/scripts.pory"
# 1382 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1383 "data/maps/Route104/scripts.pory"
# 653 "data/maps/Route104/scripts.pory"
# 1384 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1385 "data/maps/Route104/scripts.pory"
# 654 "data/maps/Route104/scripts.pory"
# 1386 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1387 "data/maps/Route104/scripts.pory"
# 655 "data/maps/Route104/scripts.pory"
# 1388 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1389 "data/maps/Route104/scripts.pory"
# 656 "data/maps/Route104/scripts.pory"
# 1390 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1391 "data/maps/Route104/scripts.pory"
# 657 "data/maps/Route104/scripts.pory"
# 1392 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1393 "data/maps/Route104/scripts.pory"
# 658 "data/maps/Route104/scripts.pory"
# 1394 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1395 "data/maps/Route104/scripts.pory"
# 659 "data/maps/Route104/scripts.pory"
# 1396 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1397 "data/maps/Route104/scripts.pory"
# 660 "data/maps/Route104/scripts.pory"
# 1398 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1399 "data/maps/Route104/scripts.pory"
# 661 "data/maps/Route104/scripts.pory"
# 1400 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1401 "data/maps/Route104/scripts.pory"
# 662 "data/maps/Route104/scripts.pory"
# 1402 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1403 "data/maps/Route104/scripts.pory"
# 663 "data/maps/Route104/scripts.pory"
# 1404 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1405 "data/maps/Route104/scripts.pory"
# 664 "data/maps/Route104/scripts.pory"
# 1406 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1407 "data/maps/Route104/scripts.pory"
# 665 "data/maps/Route104/scripts.pory"
# 1408 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1409 "data/maps/Route104/scripts.pory"
# 666 "data/maps/Route104/scripts.pory"
# 1410 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1411 "data/maps/Route104/scripts.pory"
# 667 "data/maps/Route104/scripts.pory"
# 1412 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1413 "data/maps/Route104/scripts.pory"
# 668 "data/maps/Route104/scripts.pory"
# 1414 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1415 "data/maps/Route104/scripts.pory"
# 669 "data/maps/Route104/scripts.pory"
# 1416 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1417 "data/maps/Route104/scripts.pory"
# 670 "data/maps/Route104/scripts.pory"
# 1418 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1419 "data/maps/Route104/scripts.pory"
# 671 "data/maps/Route104/scripts.pory"
# 1420 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1421 "data/maps/Route104/scripts.pory"
# 672 "data/maps/Route104/scripts.pory"
# 1422 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1423 "data/maps/Route104/scripts.pory"
# 673 "data/maps/Route104/scripts.pory"
# 1424 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1425 "data/maps/Route104/scripts.pory"
# 674 "data/maps/Route104/scripts.pory"
# 1426 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1427 "data/maps/Route104/scripts.pory"
# 675 "data/maps/Route104/scripts.pory"
# 1428 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1429 "data/maps/Route104/scripts.pory"
# 676 "data/maps/Route104/scripts.pory"
# 1430 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1431 "data/maps/Route104/scripts.pory"
# 677 "data/maps/Route104/scripts.pory"
# 1432 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1433 "data/maps/Route104/scripts.pory"
# 678 "data/maps/Route104/scripts.pory"
# 1434 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1435 "data/maps/Route104/scripts.pory"
# 679 "data/maps/Route104/scripts.pory"
# 1436 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1437 "data/maps/Route104/scripts.pory"
# 680 "data/maps/Route104/scripts.pory"
# 1438 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1439 "data/maps/Route104/scripts.pory"
# 681 "data/maps/Route104/scripts.pory"
# 1440 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1441 "data/maps/Route104/scripts.pory"
# 682 "data/maps/Route104/scripts.pory"
# 1442 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1443 "data/maps/Route104/scripts.pory"
# 683 "data/maps/Route104/scripts.pory"
# 1444 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1445 "data/maps/Route104/scripts.pory"
# 684 "data/maps/Route104/scripts.pory"
# 1446 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1447 "data/maps/Route104/scripts.pory"
# 685 "data/maps/Route104/scripts.pory"
# 1448 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1449 "data/maps/Route104/scripts.pory"
# 686 "data/maps/Route104/scripts.pory"
# 1450 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1451 "data/maps/Route104/scripts.pory"
# 687 "data/maps/Route104/scripts.pory"
# 1452 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1453 "data/maps/Route104/scripts.pory"
# 688 "data/maps/Route104/scripts.pory"
# 1454 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1455 "data/maps/Route104/scripts.pory"
# 689 "data/maps/Route104/scripts.pory"
# 1456 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1457 "data/maps/Route104/scripts.pory"
# 690 "data/maps/Route104/scripts.pory"
# 1458 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1459 "data/maps/Route104/scripts.pory"
# 691 "data/maps/Route104/scripts.pory"
# 1460 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1461 "data/maps/Route104/scripts.pory"
# 692 "data/maps/Route104/scripts.pory"
# 1462 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1463 "data/maps/Route104/scripts.pory"
# 693 "data/maps/Route104/scripts.pory"
# 1464 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1465 "data/maps/Route104/scripts.pory"
# 694 "data/maps/Route104/scripts.pory"
# 1466 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1467 "data/maps/Route104/scripts.pory"
# 695 "data/maps/Route104/scripts.pory"
# 1468 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1469 "data/maps/Route104/scripts.pory"
# 696 "data/maps/Route104/scripts.pory"
# 1470 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1471 "data/maps/Route104/scripts.pory"
# 697 "data/maps/Route104/scripts.pory"
# 1472 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1473 "data/maps/Route104/scripts.pory"
# 698 "data/maps/Route104/scripts.pory"
# 1474 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1475 "data/maps/Route104/scripts.pory"
# 699 "data/maps/Route104/scripts.pory"
# 1476 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1477 "data/maps/Route104/scripts.pory"
# 700 "data/maps/Route104/scripts.pory"
# 1478 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1479 "data/maps/Route104/scripts.pory"
# 701 "data/maps/Route104/scripts.pory"
# 1480 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1481 "data/maps/Route104/scripts.pory"
# 702 "data/maps/Route104/scripts.pory"
# 1482 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1483 "data/maps/Route104/scripts.pory"
# 703 "data/maps/Route104/scripts.pory"
# 1484 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1485 "data/maps/Route104/scripts.pory"
# 704 "data/maps/Route104/scripts.pory"
# 1486 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1487 "data/maps/Route104/scripts.pory"
# 705 "data/maps/Route104/scripts.pory"
# 1488 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1489 "data/maps/Route104/scripts.pory"
# 706 "data/maps/Route104/scripts.pory"
# 1490 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1491 "data/maps/Route104/scripts.pory"
# 707 "data/maps/Route104/scripts.pory"
# 1492 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1493 "data/maps/Route104/scripts.pory"
# 708 "data/maps/Route104/scripts.pory"
# 1494 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1495 "data/maps/Route104/scripts.pory"
# 709 "data/maps/Route104/scripts.pory"
# 1496 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1497 "data/maps/Route104/scripts.pory"
# 710 "data/maps/Route104/scripts.pory"
# 1498 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1499 "data/maps/Route104/scripts.pory"
# 711 "data/maps/Route104/scripts.pory"
# 1500 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1501 "data/maps/Route104/scripts.pory"
# 712 "data/maps/Route104/scripts.pory"
# 1502 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1503 "data/maps/Route104/scripts.pory"
# 713 "data/maps/Route104/scripts.pory"
# 1504 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1505 "data/maps/Route104/scripts.pory"
# 714 "data/maps/Route104/scripts.pory"
# 1506 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1507 "data/maps/Route104/scripts.pory"
# 715 "data/maps/Route104/scripts.pory"
# 1508 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1509 "data/maps/Route104/scripts.pory"
# 716 "data/maps/Route104/scripts.pory"
# 1510 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1511 "data/maps/Route104/scripts.pory"
# 717 "data/maps/Route104/scripts.pory"
# 1512 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1513 "data/maps/Route104/scripts.pory"
# 718 "data/maps/Route104/scripts.pory"
# 1514 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1515 "data/maps/Route104/scripts.pory"
# 719 "data/maps/Route104/scripts.pory"
# 1516 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1517 "data/maps/Route104/scripts.pory"
# 720 "data/maps/Route104/scripts.pory"
# 1518 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1519 "data/maps/Route104/scripts.pory"
# 721 "data/maps/Route104/scripts.pory"
# 1520 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1521 "data/maps/Route104/scripts.pory"
# 722 "data/maps/Route104/scripts.pory"
# 1522 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1523 "data/maps/Route104/scripts.pory"
# 723 "data/maps/Route104/scripts.pory"
# 1524 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1525 "data/maps/Route104/scripts.pory"
# 724 "data/maps/Route104/scripts.pory"
# 1526 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1527 "data/maps/Route104/scripts.pory"
# 725 "data/maps/Route104/scripts.pory"
# 1528 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1529 "data/maps/Route104/scripts.pory"
# 726 "data/maps/Route104/scripts.pory"
# 1530 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1531 "data/maps/Route104/scripts.pory"
# 727 "data/maps/Route104/scripts.pory"
# 1532 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1533 "data/maps/Route104/scripts.pory"
# 728 "data/maps/Route104/scripts.pory"
# 1534 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1535 "data/maps/Route104/scripts.pory"
# 729 "data/maps/Route104/scripts.pory"
# 1536 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1537 "data/maps/Route104/scripts.pory"
# 730 "data/maps/Route104/scripts.pory"
# 1538 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1539 "data/maps/Route104/scripts.pory"
# 731 "data/maps/Route104/scripts.pory"
# 1540 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1541 "data/maps/Route104/scripts.pory"
# 732 "data/maps/Route104/scripts.pory"
# 1542 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1543 "data/maps/Route104/scripts.pory"
# 733 "data/maps/Route104/scripts.pory"
# 1544 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1545 "data/maps/Route104/scripts.pory"
# 734 "data/maps/Route104/scripts.pory"
# 1546 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1547 "data/maps/Route104/scripts.pory"
# 735 "data/maps/Route104/scripts.pory"
# 1548 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1549 "data/maps/Route104/scripts.pory"
# 736 "data/maps/Route104/scripts.pory"
# 1550 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1551 "data/maps/Route104/scripts.pory"
# 737 "data/maps/Route104/scripts.pory"
# 1552 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1553 "data/maps/Route104/scripts.pory"
# 738 "data/maps/Route104/scripts.pory"
# 1554 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1555 "data/maps/Route104/scripts.pory"
# 739 "data/maps/Route104/scripts.pory"
# 1556 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1557 "data/maps/Route104/scripts.pory"
# 740 "data/maps/Route104/scripts.pory"
# 1558 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1559 "data/maps/Route104/scripts.pory"
# 741 "data/maps/Route104/scripts.pory"
# 1560 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1561 "data/maps/Route104/scripts.pory"
# 742 "data/maps/Route104/scripts.pory"
# 1562 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1563 "data/maps/Route104/scripts.pory"
# 743 "data/maps/Route104/scripts.pory"
# 1564 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1565 "data/maps/Route104/scripts.pory"
# 744 "data/maps/Route104/scripts.pory"
# 1566 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1567 "data/maps/Route104/scripts.pory"
# 745 "data/maps/Route104/scripts.pory"
# 1568 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1569 "data/maps/Route104/scripts.pory"
# 746 "data/maps/Route104/scripts.pory"
# 1570 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1571 "data/maps/Route104/scripts.pory"
# 747 "data/maps/Route104/scripts.pory"
# 1572 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1573 "data/maps/Route104/scripts.pory"
# 748 "data/maps/Route104/scripts.pory"
# 1574 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1575 "data/maps/Route104/scripts.pory"
# 749 "data/maps/Route104/scripts.pory"
# 1576 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1577 "data/maps/Route104/scripts.pory"
# 750 "data/maps/Route104/scripts.pory"
# 1578 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1579 "data/maps/Route104/scripts.pory"
# 751 "data/maps/Route104/scripts.pory"
# 1580 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1581 "data/maps/Route104/scripts.pory"
# 752 "data/maps/Route104/scripts.pory"
# 1582 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1583 "data/maps/Route104/scripts.pory"
# 753 "data/maps/Route104/scripts.pory"
# 1584 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1585 "data/maps/Route104/scripts.pory"
# 754 "data/maps/Route104/scripts.pory"
# 1586 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1587 "data/maps/Route104/scripts.pory"
# 755 "data/maps/Route104/scripts.pory"
# 1588 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1589 "data/maps/Route104/scripts.pory"
# 756 "data/maps/Route104/scripts.pory"
# 1590 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1591 "data/maps/Route104/scripts.pory"
# 757 "data/maps/Route104/scripts.pory"
# 1592 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1593 "data/maps/Route104/scripts.pory"
# 758 "data/maps/Route104/scripts.pory"
# 1594 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1595 "data/maps/Route104/scripts.pory"
# 759 "data/maps/Route104/scripts.pory"
# 1596 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1597 "data/maps/Route104/scripts.pory"
# 760 "data/maps/Route104/scripts.pory"
# 1598 "data/maps/Route104/scripts.pory"
	walk_faster_down
# 1599 "data/maps/Route104/scripts.pory"
# 761 "data/maps/Route104/scripts.pory"
# 1600 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1601 "data/maps/Route104/scripts.pory"
# 762 "data/maps/Route104/scripts.pory"
# 1602 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1603 "data/maps/Route104/scripts.pory"
# 763 "data/maps/Route104/scripts.pory"
# 1604 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1605 "data/maps/Route104/scripts.pory"
# 764 "data/maps/Route104/scripts.pory"
# 1606 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1607 "data/maps/Route104/scripts.pory"
# 765 "data/maps/Route104/scripts.pory"
# 1608 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1609 "data/maps/Route104/scripts.pory"
# 766 "data/maps/Route104/scripts.pory"
# 1610 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1611 "data/maps/Route104/scripts.pory"
# 767 "data/maps/Route104/scripts.pory"
# 1612 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1613 "data/maps/Route104/scripts.pory"
# 768 "data/maps/Route104/scripts.pory"
# 1614 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1615 "data/maps/Route104/scripts.pory"
# 769 "data/maps/Route104/scripts.pory"
# 1616 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1617 "data/maps/Route104/scripts.pory"
# 770 "data/maps/Route104/scripts.pory"
# 1618 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1619 "data/maps/Route104/scripts.pory"
# 771 "data/maps/Route104/scripts.pory"
# 1620 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1621 "data/maps/Route104/scripts.pory"
# 772 "data/maps/Route104/scripts.pory"
# 1622 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1623 "data/maps/Route104/scripts.pory"
# 773 "data/maps/Route104/scripts.pory"
# 1624 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1625 "data/maps/Route104/scripts.pory"
# 774 "data/maps/Route104/scripts.pory"
# 1626 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1627 "data/maps/Route104/scripts.pory"
# 775 "data/maps/Route104/scripts.pory"
# 1628 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1629 "data/maps/Route104/scripts.pory"
# 776 "data/maps/Route104/scripts.pory"
# 1630 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1631 "data/maps/Route104/scripts.pory"
# 777 "data/maps/Route104/scripts.pory"
# 1632 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1633 "data/maps/Route104/scripts.pory"
# 778 "data/maps/Route104/scripts.pory"
# 1634 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1635 "data/maps/Route104/scripts.pory"
# 779 "data/maps/Route104/scripts.pory"
# 1636 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1637 "data/maps/Route104/scripts.pory"
# 780 "data/maps/Route104/scripts.pory"
# 1638 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1639 "data/maps/Route104/scripts.pory"
# 781 "data/maps/Route104/scripts.pory"
# 1640 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1641 "data/maps/Route104/scripts.pory"
# 782 "data/maps/Route104/scripts.pory"
# 1642 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1643 "data/maps/Route104/scripts.pory"
# 783 "data/maps/Route104/scripts.pory"
# 1644 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1645 "data/maps/Route104/scripts.pory"
# 784 "data/maps/Route104/scripts.pory"
# 1646 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1647 "data/maps/Route104/scripts.pory"
# 785 "data/maps/Route104/scripts.pory"
# 1648 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1649 "data/maps/Route104/scripts.pory"
# 786 "data/maps/Route104/scripts.pory"
# 1650 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1651 "data/maps/Route104/scripts.pory"
# 787 "data/maps/Route104/scripts.pory"
# 1652 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1653 "data/maps/Route104/scripts.pory"
# 788 "data/maps/Route104/scripts.pory"
# 1654 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1655 "data/maps/Route104/scripts.pory"
# 789 "data/maps/Route104/scripts.pory"
# 1656 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1657 "data/maps/Route104/scripts.pory"
# 790 "data/maps/Route104/scripts.pory"
# 1658 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1659 "data/maps/Route104/scripts.pory"
# 791 "data/maps/Route104/scripts.pory"
# 1660 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1661 "data/maps/Route104/scripts.pory"
# 792 "data/maps/Route104/scripts.pory"
# 1662 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1663 "data/maps/Route104/scripts.pory"
# 793 "data/maps/Route104/scripts.pory"
# 1664 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1665 "data/maps/Route104/scripts.pory"
# 794 "data/maps/Route104/scripts.pory"
# 1666 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1667 "data/maps/Route104/scripts.pory"
# 795 "data/maps/Route104/scripts.pory"
# 1668 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1669 "data/maps/Route104/scripts.pory"
# 796 "data/maps/Route104/scripts.pory"
# 1670 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1671 "data/maps/Route104/scripts.pory"
# 797 "data/maps/Route104/scripts.pory"
# 1672 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1673 "data/maps/Route104/scripts.pory"
# 798 "data/maps/Route104/scripts.pory"
# 1674 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1675 "data/maps/Route104/scripts.pory"
# 799 "data/maps/Route104/scripts.pory"
# 1676 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1677 "data/maps/Route104/scripts.pory"
# 800 "data/maps/Route104/scripts.pory"
# 1678 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1679 "data/maps/Route104/scripts.pory"
# 801 "data/maps/Route104/scripts.pory"
# 1680 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1681 "data/maps/Route104/scripts.pory"
# 802 "data/maps/Route104/scripts.pory"
# 1682 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1683 "data/maps/Route104/scripts.pory"
# 803 "data/maps/Route104/scripts.pory"
# 1684 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1685 "data/maps/Route104/scripts.pory"
# 804 "data/maps/Route104/scripts.pory"
# 1686 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1687 "data/maps/Route104/scripts.pory"
# 805 "data/maps/Route104/scripts.pory"
# 1688 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1689 "data/maps/Route104/scripts.pory"
# 806 "data/maps/Route104/scripts.pory"
# 1690 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1691 "data/maps/Route104/scripts.pory"
# 807 "data/maps/Route104/scripts.pory"
# 1692 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1693 "data/maps/Route104/scripts.pory"
# 808 "data/maps/Route104/scripts.pory"
# 1694 "data/maps/Route104/scripts.pory"
	walk_faster_right
# 1695 "data/maps/Route104/scripts.pory"
# 809 "data/maps/Route104/scripts.pory"
# 1696 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1697 "data/maps/Route104/scripts.pory"
# 810 "data/maps/Route104/scripts.pory"
# 1698 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1699 "data/maps/Route104/scripts.pory"
# 811 "data/maps/Route104/scripts.pory"
# 1700 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1701 "data/maps/Route104/scripts.pory"
# 812 "data/maps/Route104/scripts.pory"
# 1702 "data/maps/Route104/scripts.pory"
	walk_fast_right
# 1703 "data/maps/Route104/scripts.pory"
# 813 "data/maps/Route104/scripts.pory"
# 1704 "data/maps/Route104/scripts.pory"
	walk_right
# 1705 "data/maps/Route104/scripts.pory"
# 814 "data/maps/Route104/scripts.pory"
# 1706 "data/maps/Route104/scripts.pory"
	walk_right
# 1707 "data/maps/Route104/scripts.pory"
# 815 "data/maps/Route104/scripts.pory"
# 1708 "data/maps/Route104/scripts.pory"
	walk_down
# 1709 "data/maps/Route104/scripts.pory"
# 816 "data/maps/Route104/scripts.pory"
# 1710 "data/maps/Route104/scripts.pory"
	walk_down
# 1711 "data/maps/Route104/scripts.pory"
# 817 "data/maps/Route104/scripts.pory"
# 1712 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1713 "data/maps/Route104/scripts.pory"
# 818 "data/maps/Route104/scripts.pory"
# 1714 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1715 "data/maps/Route104/scripts.pory"
# 819 "data/maps/Route104/scripts.pory"
# 1716 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1717 "data/maps/Route104/scripts.pory"
# 820 "data/maps/Route104/scripts.pory"
# 1718 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1719 "data/maps/Route104/scripts.pory"
# 821 "data/maps/Route104/scripts.pory"
# 1720 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1721 "data/maps/Route104/scripts.pory"
# 822 "data/maps/Route104/scripts.pory"
# 1722 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1723 "data/maps/Route104/scripts.pory"
# 823 "data/maps/Route104/scripts.pory"
# 1724 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1725 "data/maps/Route104/scripts.pory"
# 824 "data/maps/Route104/scripts.pory"
# 1726 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1727 "data/maps/Route104/scripts.pory"
# 825 "data/maps/Route104/scripts.pory"
# 1728 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1729 "data/maps/Route104/scripts.pory"
# 826 "data/maps/Route104/scripts.pory"
# 1730 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1731 "data/maps/Route104/scripts.pory"
# 827 "data/maps/Route104/scripts.pory"
# 1732 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1733 "data/maps/Route104/scripts.pory"
# 828 "data/maps/Route104/scripts.pory"
# 1734 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1735 "data/maps/Route104/scripts.pory"
# 829 "data/maps/Route104/scripts.pory"
# 1736 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1737 "data/maps/Route104/scripts.pory"
# 830 "data/maps/Route104/scripts.pory"
# 1738 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1739 "data/maps/Route104/scripts.pory"
# 831 "data/maps/Route104/scripts.pory"
# 1740 "data/maps/Route104/scripts.pory"
	walk_fast_down
# 1741 "data/maps/Route104/scripts.pory"
# 832 "data/maps/Route104/scripts.pory"
# 1742 "data/maps/Route104/scripts.pory"
	walk_down
# 1743 "data/maps/Route104/scripts.pory"
# 833 "data/maps/Route104/scripts.pory"
# 1744 "data/maps/Route104/scripts.pory"
	walk_down
# 1745 "data/maps/Route104/scripts.pory"
# 834 "data/maps/Route104/scripts.pory"
# 1746 "data/maps/Route104/scripts.pory"
	step_end
# 1747 "data/maps/Route104/scripts.pory"
# 835 "data/maps/Route104/scripts.pory"
# 1748 "data/maps/Route104/scripts.pory"

# 1749 "data/maps/Route104/scripts.pory"
# 836 "data/maps/Route104/scripts.pory"
# 1750 "data/maps/Route104/scripts.pory"
Route104_Movement_PlayerBoardBoat:
# 1751 "data/maps/Route104/scripts.pory"
# 837 "data/maps/Route104/scripts.pory"
# 1752 "data/maps/Route104/scripts.pory"
	walk_left
# 1753 "data/maps/Route104/scripts.pory"
# 838 "data/maps/Route104/scripts.pory"
# 1754 "data/maps/Route104/scripts.pory"
	walk_down
# 1755 "data/maps/Route104/scripts.pory"
# 839 "data/maps/Route104/scripts.pory"
# 1756 "data/maps/Route104/scripts.pory"
	walk_down
# 1757 "data/maps/Route104/scripts.pory"
# 840 "data/maps/Route104/scripts.pory"
# 1758 "data/maps/Route104/scripts.pory"
	step_end
# 1759 "data/maps/Route104/scripts.pory"
# 841 "data/maps/Route104/scripts.pory"
# 1760 "data/maps/Route104/scripts.pory"

# 1761 "data/maps/Route104/scripts.pory"
# 842 "data/maps/Route104/scripts.pory"
# 1762 "data/maps/Route104/scripts.pory"
Route104_Movement_PlayerExitBoat:
# 1763 "data/maps/Route104/scripts.pory"
# 843 "data/maps/Route104/scripts.pory"
# 1764 "data/maps/Route104/scripts.pory"
	walk_down
# 1765 "data/maps/Route104/scripts.pory"
# 844 "data/maps/Route104/scripts.pory"
# 1766 "data/maps/Route104/scripts.pory"
	step_end
# 1767 "data/maps/Route104/scripts.pory"
# 845 "data/maps/Route104/scripts.pory"
# 1768 "data/maps/Route104/scripts.pory"

# 1769 "data/maps/Route104/scripts.pory"
# 846 "data/maps/Route104/scripts.pory"
# 1770 "data/maps/Route104/scripts.pory"
Route104_Movement_PlayerMoveForBriney:
# 1771 "data/maps/Route104/scripts.pory"
# 847 "data/maps/Route104/scripts.pory"
# 1772 "data/maps/Route104/scripts.pory"
	walk_down
# 1773 "data/maps/Route104/scripts.pory"
# 848 "data/maps/Route104/scripts.pory"
# 1774 "data/maps/Route104/scripts.pory"
	walk_left
# 1775 "data/maps/Route104/scripts.pory"
# 849 "data/maps/Route104/scripts.pory"
# 1776 "data/maps/Route104/scripts.pory"
	walk_in_place_faster_right
# 1777 "data/maps/Route104/scripts.pory"
# 850 "data/maps/Route104/scripts.pory"
# 1778 "data/maps/Route104/scripts.pory"
	step_end
# 1779 "data/maps/Route104/scripts.pory"
# 851 "data/maps/Route104/scripts.pory"
# 1780 "data/maps/Route104/scripts.pory"

# 1781 "data/maps/Route104/scripts.pory"
Route104_Movement_DewfordArrivalRivalDisembark:
# 1782 "data/maps/Route104/scripts.pory"
	walk_down
# 1783 "data/maps/Route104/scripts.pory"
	walk_left
# 1784 "data/maps/Route104/scripts.pory"
	walk_left
# 1785 "data/maps/Route104/scripts.pory"
	walk_in_place_faster_right
# 1786 "data/maps/Route104/scripts.pory"
	step_end
# 1787 "data/maps/Route104/scripts.pory"

# 1788 "data/maps/Route104/scripts.pory"
Route104_Movement_DewfordArrivalRivalLeave:
# 1789 "data/maps/Route104/scripts.pory"
	walk_left
# 1790 "data/maps/Route104/scripts.pory"
	walk_left
# 1791 "data/maps/Route104/scripts.pory"
	walk_left
# 1792 "data/maps/Route104/scripts.pory"
	walk_left
# 1793 "data/maps/Route104/scripts.pory"
	walk_left
# 1794 "data/maps/Route104/scripts.pory"
	walk_down
# 1795 "data/maps/Route104/scripts.pory"
	walk_down
# 1796 "data/maps/Route104/scripts.pory"
	walk_down
# 1797 "data/maps/Route104/scripts.pory"
	walk_down
# 1798 "data/maps/Route104/scripts.pory"
	walk_down
# 1799 "data/maps/Route104/scripts.pory"
	walk_down
# 1800 "data/maps/Route104/scripts.pory"
	walk_down
# 1801 "data/maps/Route104/scripts.pory"
	walk_down
# 1802 "data/maps/Route104/scripts.pory"
	walk_down
# 1803 "data/maps/Route104/scripts.pory"
	walk_down
# 1804 "data/maps/Route104/scripts.pory"
	walk_down
# 1805 "data/maps/Route104/scripts.pory"
	walk_down
# 1806 "data/maps/Route104/scripts.pory"
	step_end
# 1807 "data/maps/Route104/scripts.pory"

# 1808 "data/maps/Route104/scripts.pory"
# 852 "data/maps/Route104/scripts.pory"
# 1809 "data/maps/Route104/scripts.pory"
Route104_Movement_BrineyBoardBoat:
# 1810 "data/maps/Route104/scripts.pory"
# 853 "data/maps/Route104/scripts.pory"
# 1811 "data/maps/Route104/scripts.pory"
	walk_down
# 1812 "data/maps/Route104/scripts.pory"
# 854 "data/maps/Route104/scripts.pory"
# 1813 "data/maps/Route104/scripts.pory"
	walk_down
# 1814 "data/maps/Route104/scripts.pory"
# 855 "data/maps/Route104/scripts.pory"
# 1815 "data/maps/Route104/scripts.pory"
	step_end
# 1816 "data/maps/Route104/scripts.pory"

# 1817 "data/maps/Route104/scripts.pory"
Route104_Movement_RivalBoardBoat:
# 1818 "data/maps/Route104/scripts.pory"
	walk_left
# 1819 "data/maps/Route104/scripts.pory"
	walk_left
# 1820 "data/maps/Route104/scripts.pory"
	walk_left
# 1821 "data/maps/Route104/scripts.pory"
	walk_left
# 1822 "data/maps/Route104/scripts.pory"
	walk_left
# 1823 "data/maps/Route104/scripts.pory"
	walk_left
# 1824 "data/maps/Route104/scripts.pory"
	walk_left
# 1825 "data/maps/Route104/scripts.pory"
	walk_down
# 1826 "data/maps/Route104/scripts.pory"
	step_end
# 1827 "data/maps/Route104/scripts.pory"
# 856 "data/maps/Route104/scripts.pory"
# 1828 "data/maps/Route104/scripts.pory"

# 1829 "data/maps/Route104/scripts.pory"
# 857 "data/maps/Route104/scripts.pory"
# 1830 "data/maps/Route104/scripts.pory"
Route104_Movement_BrineyExitBoat:
# 1831 "data/maps/Route104/scripts.pory"
# 858 "data/maps/Route104/scripts.pory"
# 1832 "data/maps/Route104/scripts.pory"
	walk_down
# 1833 "data/maps/Route104/scripts.pory"
# 859 "data/maps/Route104/scripts.pory"
# 1834 "data/maps/Route104/scripts.pory"
	walk_in_place_faster_left
# 1835 "data/maps/Route104/scripts.pory"
# 860 "data/maps/Route104/scripts.pory"
# 1836 "data/maps/Route104/scripts.pory"
	step_end
# 1837 "data/maps/Route104/scripts.pory"
# 861 "data/maps/Route104/scripts.pory"
# 1838 "data/maps/Route104/scripts.pory"

# 1839 "data/maps/Route104/scripts.pory"
# 862 "data/maps/Route104/scripts.pory"
# 1840 "data/maps/Route104/scripts.pory"
Route104_EventScript_Ivan::
# 1841 "data/maps/Route104/scripts.pory"
# 863 "data/maps/Route104/scripts.pory"
# 1842 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_IVAN, Route104_Text_IvanIntro, Route104_Text_IvanDefeat
# 1843 "data/maps/Route104/scripts.pory"
# 864 "data/maps/Route104/scripts.pory"
# 1844 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_IvanPostBattle, MSGBOX_AUTOCLOSE
# 1845 "data/maps/Route104/scripts.pory"
# 865 "data/maps/Route104/scripts.pory"
# 1846 "data/maps/Route104/scripts.pory"
	end
# 1847 "data/maps/Route104/scripts.pory"
# 866 "data/maps/Route104/scripts.pory"
# 1848 "data/maps/Route104/scripts.pory"

# 1849 "data/maps/Route104/scripts.pory"
# 867 "data/maps/Route104/scripts.pory"
# 1850 "data/maps/Route104/scripts.pory"
Route104_EventScript_Billy::
# 1851 "data/maps/Route104/scripts.pory"
# 868 "data/maps/Route104/scripts.pory"
# 1852 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_BILLY, Route104_Text_BillyIntro, Route104_Text_BillyDefeat
# 1853 "data/maps/Route104/scripts.pory"
# 869 "data/maps/Route104/scripts.pory"
# 1854 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_BillyPostBattle, MSGBOX_AUTOCLOSE
# 1855 "data/maps/Route104/scripts.pory"
# 870 "data/maps/Route104/scripts.pory"
# 1856 "data/maps/Route104/scripts.pory"
	end
# 1857 "data/maps/Route104/scripts.pory"
# 871 "data/maps/Route104/scripts.pory"
# 1858 "data/maps/Route104/scripts.pory"

# 1859 "data/maps/Route104/scripts.pory"
# 872 "data/maps/Route104/scripts.pory"
# 1860 "data/maps/Route104/scripts.pory"
Route104_EventScript_Haley::
# 1861 "data/maps/Route104/scripts.pory"
# 873 "data/maps/Route104/scripts.pory"
# 1862 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_HALEY_1, Route104_Text_HaleyIntro, Route104_Text_HaleyDefeat, Route104_EventScript_TryRegisterHaleyAfterBattle
# 1863 "data/maps/Route104/scripts.pory"
# 874 "data/maps/Route104/scripts.pory"
# 1864 "data/maps/Route104/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 1865 "data/maps/Route104/scripts.pory"
# 875 "data/maps/Route104/scripts.pory"
# 1866 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route104_EventScript_RematchHaley
# 1867 "data/maps/Route104/scripts.pory"
# 876 "data/maps/Route104/scripts.pory"
# 1868 "data/maps/Route104/scripts.pory"
	setvar VAR_0x8004, TRAINER_HALEY_1
# 1869 "data/maps/Route104/scripts.pory"
# 877 "data/maps/Route104/scripts.pory"
# 1870 "data/maps/Route104/scripts.pory"
	specialvar VAR_RESULT, IsTrainerRegistered
# 1871 "data/maps/Route104/scripts.pory"
# 878 "data/maps/Route104/scripts.pory"
# 1872 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route104_EventScript_TryRegisterHaley
# 1873 "data/maps/Route104/scripts.pory"
# 879 "data/maps/Route104/scripts.pory"
# 1874 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_HaleyPostBattle, MSGBOX_DEFAULT
# 1875 "data/maps/Route104/scripts.pory"
# 880 "data/maps/Route104/scripts.pory"
# 1876 "data/maps/Route104/scripts.pory"
	release
# 1877 "data/maps/Route104/scripts.pory"
# 881 "data/maps/Route104/scripts.pory"
# 1878 "data/maps/Route104/scripts.pory"
	end
# 1879 "data/maps/Route104/scripts.pory"
# 882 "data/maps/Route104/scripts.pory"
# 1880 "data/maps/Route104/scripts.pory"

# 1881 "data/maps/Route104/scripts.pory"
# 883 "data/maps/Route104/scripts.pory"
# 1882 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryRegisterHaleyAfterBattle::
# 1883 "data/maps/Route104/scripts.pory"
# 884 "data/maps/Route104/scripts.pory"
# 1884 "data/maps/Route104/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 1885 "data/maps/Route104/scripts.pory"
# 885 "data/maps/Route104/scripts.pory"
# 1886 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 1887 "data/maps/Route104/scripts.pory"
# 886 "data/maps/Route104/scripts.pory"
# 1888 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_HAS_MATCH_CALL, Route104_EventScript_RegisterHaleyAfterBattle
# 1889 "data/maps/Route104/scripts.pory"
# 887 "data/maps/Route104/scripts.pory"
# 1890 "data/maps/Route104/scripts.pory"
	release
# 1891 "data/maps/Route104/scripts.pory"
# 888 "data/maps/Route104/scripts.pory"
# 1892 "data/maps/Route104/scripts.pory"
	end
# 1893 "data/maps/Route104/scripts.pory"
# 889 "data/maps/Route104/scripts.pory"
# 1894 "data/maps/Route104/scripts.pory"

# 1895 "data/maps/Route104/scripts.pory"
# 890 "data/maps/Route104/scripts.pory"
# 1896 "data/maps/Route104/scripts.pory"
Route104_EventScript_RegisterHaleyAfterBattle::
# 1897 "data/maps/Route104/scripts.pory"
# 891 "data/maps/Route104/scripts.pory"
# 1898 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_HaleyRegister2, MSGBOX_DEFAULT
# 1899 "data/maps/Route104/scripts.pory"
# 892 "data/maps/Route104/scripts.pory"
# 1900 "data/maps/Route104/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_HALEY_1
# 1901 "data/maps/Route104/scripts.pory"
# 893 "data/maps/Route104/scripts.pory"
# 1902 "data/maps/Route104/scripts.pory"
	release
# 1903 "data/maps/Route104/scripts.pory"
# 894 "data/maps/Route104/scripts.pory"
# 1904 "data/maps/Route104/scripts.pory"
	end
# 1905 "data/maps/Route104/scripts.pory"
# 895 "data/maps/Route104/scripts.pory"
# 1906 "data/maps/Route104/scripts.pory"

# 1907 "data/maps/Route104/scripts.pory"
# 896 "data/maps/Route104/scripts.pory"
# 1908 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryRegisterHaley::
# 1909 "data/maps/Route104/scripts.pory"
# 897 "data/maps/Route104/scripts.pory"
# 1910 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_HAS_MATCH_CALL, Route104_EventScript_RegisterHaley
# 1911 "data/maps/Route104/scripts.pory"
# 898 "data/maps/Route104/scripts.pory"
# 1912 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_HaleyPostBattle, MSGBOX_DEFAULT
# 1913 "data/maps/Route104/scripts.pory"
# 899 "data/maps/Route104/scripts.pory"
# 1914 "data/maps/Route104/scripts.pory"
	release
# 1915 "data/maps/Route104/scripts.pory"
# 900 "data/maps/Route104/scripts.pory"
# 1916 "data/maps/Route104/scripts.pory"
	end
# 1917 "data/maps/Route104/scripts.pory"
# 901 "data/maps/Route104/scripts.pory"
# 1918 "data/maps/Route104/scripts.pory"

# 1919 "data/maps/Route104/scripts.pory"
# 902 "data/maps/Route104/scripts.pory"
# 1920 "data/maps/Route104/scripts.pory"
Route104_EventScript_RegisterHaley::
# 1921 "data/maps/Route104/scripts.pory"
# 903 "data/maps/Route104/scripts.pory"
# 1922 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_HaleyRegister1, MSGBOX_DEFAULT
# 1923 "data/maps/Route104/scripts.pory"
# 904 "data/maps/Route104/scripts.pory"
# 1924 "data/maps/Route104/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_HALEY_1
# 1925 "data/maps/Route104/scripts.pory"
# 905 "data/maps/Route104/scripts.pory"
# 1926 "data/maps/Route104/scripts.pory"
	release
# 1927 "data/maps/Route104/scripts.pory"
# 906 "data/maps/Route104/scripts.pory"
# 1928 "data/maps/Route104/scripts.pory"
	end
# 1929 "data/maps/Route104/scripts.pory"
# 907 "data/maps/Route104/scripts.pory"
# 1930 "data/maps/Route104/scripts.pory"

# 1931 "data/maps/Route104/scripts.pory"
# 908 "data/maps/Route104/scripts.pory"
# 1932 "data/maps/Route104/scripts.pory"
Route104_EventScript_RematchHaley::
# 1933 "data/maps/Route104/scripts.pory"
# 909 "data/maps/Route104/scripts.pory"
# 1934 "data/maps/Route104/scripts.pory"
	trainerbattle_rematch TRAINER_HALEY_1, Route104_Text_HaleyRematchIntro, Route104_Text_HaleyRematchDefeat
# 1935 "data/maps/Route104/scripts.pory"
# 910 "data/maps/Route104/scripts.pory"
# 1936 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_HaleyPostRematch, MSGBOX_AUTOCLOSE
# 1937 "data/maps/Route104/scripts.pory"
# 911 "data/maps/Route104/scripts.pory"
# 1938 "data/maps/Route104/scripts.pory"
	end
# 1939 "data/maps/Route104/scripts.pory"
# 912 "data/maps/Route104/scripts.pory"
# 1940 "data/maps/Route104/scripts.pory"

# 1941 "data/maps/Route104/scripts.pory"
# 913 "data/maps/Route104/scripts.pory"
# 1942 "data/maps/Route104/scripts.pory"
Route104_EventScript_Winston::
# 1943 "data/maps/Route104/scripts.pory"
# 914 "data/maps/Route104/scripts.pory"
# 1944 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_WINSTON_1, Route104_Text_WinstonIntro, Route104_Text_WinstonDefeat, Route104_EventScript_TryRegisterWinstonAfterBattle
# 1945 "data/maps/Route104/scripts.pory"
# 915 "data/maps/Route104/scripts.pory"
# 1946 "data/maps/Route104/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 1947 "data/maps/Route104/scripts.pory"
# 916 "data/maps/Route104/scripts.pory"
# 1948 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route104_EventScript_RematchWinston
# 1949 "data/maps/Route104/scripts.pory"
# 917 "data/maps/Route104/scripts.pory"
# 1950 "data/maps/Route104/scripts.pory"
	setvar VAR_0x8004, TRAINER_WINSTON_1
# 1951 "data/maps/Route104/scripts.pory"
# 918 "data/maps/Route104/scripts.pory"
# 1952 "data/maps/Route104/scripts.pory"
	specialvar VAR_RESULT, IsTrainerRegistered
# 1953 "data/maps/Route104/scripts.pory"
# 919 "data/maps/Route104/scripts.pory"
# 1954 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route104_EventScript_TryRegisterWinston
# 1955 "data/maps/Route104/scripts.pory"
# 920 "data/maps/Route104/scripts.pory"
# 1956 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_WinstonPostBattle, MSGBOX_DEFAULT
# 1957 "data/maps/Route104/scripts.pory"
# 921 "data/maps/Route104/scripts.pory"
# 1958 "data/maps/Route104/scripts.pory"
	release
# 1959 "data/maps/Route104/scripts.pory"
# 922 "data/maps/Route104/scripts.pory"
# 1960 "data/maps/Route104/scripts.pory"
	end
# 1961 "data/maps/Route104/scripts.pory"
# 923 "data/maps/Route104/scripts.pory"
# 1962 "data/maps/Route104/scripts.pory"

# 1963 "data/maps/Route104/scripts.pory"
# 924 "data/maps/Route104/scripts.pory"
# 1964 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryRegisterWinstonAfterBattle::
# 1965 "data/maps/Route104/scripts.pory"
# 925 "data/maps/Route104/scripts.pory"
# 1966 "data/maps/Route104/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 1967 "data/maps/Route104/scripts.pory"
# 926 "data/maps/Route104/scripts.pory"
# 1968 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 1969 "data/maps/Route104/scripts.pory"
# 927 "data/maps/Route104/scripts.pory"
# 1970 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_HAS_MATCH_CALL, Route104_EventScript_RegisterWinstonAfterBattle
# 1971 "data/maps/Route104/scripts.pory"
# 928 "data/maps/Route104/scripts.pory"
# 1972 "data/maps/Route104/scripts.pory"
	release
# 1973 "data/maps/Route104/scripts.pory"
# 929 "data/maps/Route104/scripts.pory"
# 1974 "data/maps/Route104/scripts.pory"
	end
# 1975 "data/maps/Route104/scripts.pory"
# 930 "data/maps/Route104/scripts.pory"
# 1976 "data/maps/Route104/scripts.pory"

# 1977 "data/maps/Route104/scripts.pory"
# 931 "data/maps/Route104/scripts.pory"
# 1978 "data/maps/Route104/scripts.pory"
Route104_EventScript_RegisterWinstonAfterBattle::
# 1979 "data/maps/Route104/scripts.pory"
# 932 "data/maps/Route104/scripts.pory"
# 1980 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_WinstonRegister2, MSGBOX_DEFAULT
# 1981 "data/maps/Route104/scripts.pory"
# 933 "data/maps/Route104/scripts.pory"
# 1982 "data/maps/Route104/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_WINSTON_1
# 1983 "data/maps/Route104/scripts.pory"
# 934 "data/maps/Route104/scripts.pory"
# 1984 "data/maps/Route104/scripts.pory"
	release
# 1985 "data/maps/Route104/scripts.pory"
# 935 "data/maps/Route104/scripts.pory"
# 1986 "data/maps/Route104/scripts.pory"
	end
# 1987 "data/maps/Route104/scripts.pory"
# 936 "data/maps/Route104/scripts.pory"
# 1988 "data/maps/Route104/scripts.pory"

# 1989 "data/maps/Route104/scripts.pory"
# 937 "data/maps/Route104/scripts.pory"
# 1990 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryRegisterWinston::
# 1991 "data/maps/Route104/scripts.pory"
# 938 "data/maps/Route104/scripts.pory"
# 1992 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_HAS_MATCH_CALL, Route104_EventScript_RegisterWinston
# 1993 "data/maps/Route104/scripts.pory"
# 939 "data/maps/Route104/scripts.pory"
# 1994 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_WinstonPostBattle, MSGBOX_DEFAULT
# 1995 "data/maps/Route104/scripts.pory"
# 940 "data/maps/Route104/scripts.pory"
# 1996 "data/maps/Route104/scripts.pory"
	release
# 1997 "data/maps/Route104/scripts.pory"
# 941 "data/maps/Route104/scripts.pory"
# 1998 "data/maps/Route104/scripts.pory"
	end
# 1999 "data/maps/Route104/scripts.pory"
# 942 "data/maps/Route104/scripts.pory"
# 2000 "data/maps/Route104/scripts.pory"

# 2001 "data/maps/Route104/scripts.pory"
# 943 "data/maps/Route104/scripts.pory"
# 2002 "data/maps/Route104/scripts.pory"
Route104_EventScript_RegisterWinston::
# 2003 "data/maps/Route104/scripts.pory"
# 944 "data/maps/Route104/scripts.pory"
# 2004 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_WinstonRegister1, MSGBOX_DEFAULT
# 2005 "data/maps/Route104/scripts.pory"
# 945 "data/maps/Route104/scripts.pory"
# 2006 "data/maps/Route104/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_WINSTON_1
# 2007 "data/maps/Route104/scripts.pory"
# 946 "data/maps/Route104/scripts.pory"
# 2008 "data/maps/Route104/scripts.pory"
	release
# 2009 "data/maps/Route104/scripts.pory"
# 947 "data/maps/Route104/scripts.pory"
# 2010 "data/maps/Route104/scripts.pory"
	end
# 2011 "data/maps/Route104/scripts.pory"
# 948 "data/maps/Route104/scripts.pory"
# 2012 "data/maps/Route104/scripts.pory"

# 2013 "data/maps/Route104/scripts.pory"
# 949 "data/maps/Route104/scripts.pory"
# 2014 "data/maps/Route104/scripts.pory"
Route104_EventScript_RematchWinston::
# 2015 "data/maps/Route104/scripts.pory"
# 950 "data/maps/Route104/scripts.pory"
# 2016 "data/maps/Route104/scripts.pory"
	trainerbattle_rematch TRAINER_WINSTON_1, Route104_Text_WinstonRematchIntro, Route104_Text_WinstonRematchDefeat
# 2017 "data/maps/Route104/scripts.pory"
# 951 "data/maps/Route104/scripts.pory"
# 2018 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_WinstonPostRematch, MSGBOX_AUTOCLOSE
# 2019 "data/maps/Route104/scripts.pory"
# 952 "data/maps/Route104/scripts.pory"
# 2020 "data/maps/Route104/scripts.pory"
	end
# 2021 "data/maps/Route104/scripts.pory"
# 953 "data/maps/Route104/scripts.pory"
# 2022 "data/maps/Route104/scripts.pory"

# 2023 "data/maps/Route104/scripts.pory"
# 954 "data/maps/Route104/scripts.pory"
# 2024 "data/maps/Route104/scripts.pory"
Route104_EventScript_Cindy::
# 2025 "data/maps/Route104/scripts.pory"
# 955 "data/maps/Route104/scripts.pory"
# 2026 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_CINDY_1, Route104_Text_CindyIntro, Route104_Text_CindyDefeat, Route104_EventScript_TryRegisterCindyAfterBattle
# 2027 "data/maps/Route104/scripts.pory"
# 956 "data/maps/Route104/scripts.pory"
# 2028 "data/maps/Route104/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 2029 "data/maps/Route104/scripts.pory"
# 957 "data/maps/Route104/scripts.pory"
# 2030 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route104_EventScript_RematchCindy
# 2031 "data/maps/Route104/scripts.pory"
# 958 "data/maps/Route104/scripts.pory"
# 2032 "data/maps/Route104/scripts.pory"
	setvar VAR_0x8004, TRAINER_CINDY_1
# 2033 "data/maps/Route104/scripts.pory"
# 959 "data/maps/Route104/scripts.pory"
# 2034 "data/maps/Route104/scripts.pory"
	specialvar VAR_RESULT, IsTrainerRegistered
# 2035 "data/maps/Route104/scripts.pory"
# 960 "data/maps/Route104/scripts.pory"
# 2036 "data/maps/Route104/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route104_EventScript_TryRegisterCindy
# 2037 "data/maps/Route104/scripts.pory"
# 961 "data/maps/Route104/scripts.pory"
# 2038 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_CindyPostBattle, MSGBOX_DEFAULT
# 2039 "data/maps/Route104/scripts.pory"
# 962 "data/maps/Route104/scripts.pory"
# 2040 "data/maps/Route104/scripts.pory"
	release
# 2041 "data/maps/Route104/scripts.pory"
# 963 "data/maps/Route104/scripts.pory"
# 2042 "data/maps/Route104/scripts.pory"
	end
# 2043 "data/maps/Route104/scripts.pory"
# 964 "data/maps/Route104/scripts.pory"
# 2044 "data/maps/Route104/scripts.pory"

# 2045 "data/maps/Route104/scripts.pory"
# 965 "data/maps/Route104/scripts.pory"
# 2046 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryRegisterCindyAfterBattle::
# 2047 "data/maps/Route104/scripts.pory"
# 966 "data/maps/Route104/scripts.pory"
# 2048 "data/maps/Route104/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 2049 "data/maps/Route104/scripts.pory"
# 967 "data/maps/Route104/scripts.pory"
# 2050 "data/maps/Route104/scripts.pory"
	waitmovement 0
# 2051 "data/maps/Route104/scripts.pory"
# 968 "data/maps/Route104/scripts.pory"
# 2052 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_HAS_MATCH_CALL, Route104_EventScript_RegisterCindyAfterBattle
# 2053 "data/maps/Route104/scripts.pory"
# 969 "data/maps/Route104/scripts.pory"
# 2054 "data/maps/Route104/scripts.pory"
	release
# 2055 "data/maps/Route104/scripts.pory"
# 970 "data/maps/Route104/scripts.pory"
# 2056 "data/maps/Route104/scripts.pory"
	end
# 2057 "data/maps/Route104/scripts.pory"
# 971 "data/maps/Route104/scripts.pory"
# 2058 "data/maps/Route104/scripts.pory"

# 2059 "data/maps/Route104/scripts.pory"
# 972 "data/maps/Route104/scripts.pory"
# 2060 "data/maps/Route104/scripts.pory"
Route104_EventScript_RegisterCindyAfterBattle::
# 2061 "data/maps/Route104/scripts.pory"
# 973 "data/maps/Route104/scripts.pory"
# 2062 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_CindyRegister2, MSGBOX_DEFAULT
# 2063 "data/maps/Route104/scripts.pory"
# 974 "data/maps/Route104/scripts.pory"
# 2064 "data/maps/Route104/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_CINDY_1
# 2065 "data/maps/Route104/scripts.pory"
# 975 "data/maps/Route104/scripts.pory"
# 2066 "data/maps/Route104/scripts.pory"
	release
# 2067 "data/maps/Route104/scripts.pory"
# 976 "data/maps/Route104/scripts.pory"
# 2068 "data/maps/Route104/scripts.pory"
	end
# 2069 "data/maps/Route104/scripts.pory"
# 977 "data/maps/Route104/scripts.pory"
# 2070 "data/maps/Route104/scripts.pory"

# 2071 "data/maps/Route104/scripts.pory"
# 978 "data/maps/Route104/scripts.pory"
# 2072 "data/maps/Route104/scripts.pory"
Route104_EventScript_TryRegisterCindy::
# 2073 "data/maps/Route104/scripts.pory"
# 979 "data/maps/Route104/scripts.pory"
# 2074 "data/maps/Route104/scripts.pory"
	@ PokéNav removed goto_if_set FLAG_HAS_MATCH_CALL, Route104_EventScript_RegisterCindy
# 2075 "data/maps/Route104/scripts.pory"
# 980 "data/maps/Route104/scripts.pory"
# 2076 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_CindyPostBattle, MSGBOX_DEFAULT
# 2077 "data/maps/Route104/scripts.pory"
# 981 "data/maps/Route104/scripts.pory"
# 2078 "data/maps/Route104/scripts.pory"
	release
# 2079 "data/maps/Route104/scripts.pory"
# 982 "data/maps/Route104/scripts.pory"
# 2080 "data/maps/Route104/scripts.pory"
	end
# 2081 "data/maps/Route104/scripts.pory"
# 983 "data/maps/Route104/scripts.pory"
# 2082 "data/maps/Route104/scripts.pory"

# 2083 "data/maps/Route104/scripts.pory"
# 984 "data/maps/Route104/scripts.pory"
# 2084 "data/maps/Route104/scripts.pory"
Route104_EventScript_RegisterCindy::
# 2085 "data/maps/Route104/scripts.pory"
# 985 "data/maps/Route104/scripts.pory"
# 2086 "data/maps/Route104/scripts.pory"
	@ PokéNav removed msgbox Route104_Text_CindyRegister1, MSGBOX_DEFAULT
# 2087 "data/maps/Route104/scripts.pory"
# 986 "data/maps/Route104/scripts.pory"
# 2088 "data/maps/Route104/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_CINDY_1
# 2089 "data/maps/Route104/scripts.pory"
# 987 "data/maps/Route104/scripts.pory"
# 2090 "data/maps/Route104/scripts.pory"
	release
# 2091 "data/maps/Route104/scripts.pory"
# 988 "data/maps/Route104/scripts.pory"
# 2092 "data/maps/Route104/scripts.pory"
	end
# 2093 "data/maps/Route104/scripts.pory"
# 989 "data/maps/Route104/scripts.pory"
# 2094 "data/maps/Route104/scripts.pory"

# 2095 "data/maps/Route104/scripts.pory"
# 990 "data/maps/Route104/scripts.pory"
# 2096 "data/maps/Route104/scripts.pory"
Route104_EventScript_RematchCindy::
# 2097 "data/maps/Route104/scripts.pory"
# 991 "data/maps/Route104/scripts.pory"
# 2098 "data/maps/Route104/scripts.pory"
	trainerbattle_rematch TRAINER_CINDY_1, Route104_Text_CindyRematchIntro, Route104_Text_CindyRematchDefeat
# 2099 "data/maps/Route104/scripts.pory"
# 992 "data/maps/Route104/scripts.pory"
# 2100 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_CindyPostRematch, MSGBOX_AUTOCLOSE
# 2101 "data/maps/Route104/scripts.pory"
# 993 "data/maps/Route104/scripts.pory"
# 2102 "data/maps/Route104/scripts.pory"
	end
# 2103 "data/maps/Route104/scripts.pory"
# 994 "data/maps/Route104/scripts.pory"
# 2104 "data/maps/Route104/scripts.pory"

# 2105 "data/maps/Route104/scripts.pory"
# 995 "data/maps/Route104/scripts.pory"
# 2106 "data/maps/Route104/scripts.pory"
Route104_EventScript_Gina::
# 2107 "data/maps/Route104/scripts.pory"
# 996 "data/maps/Route104/scripts.pory"
# 2108 "data/maps/Route104/scripts.pory"
	trainerbattle_double TRAINER_GINA_AND_MIA_1, Route104_Text_GinaIntro, Route104_Text_GinaDefeat, Route104_Text_GinaNotEnoughMons
# 2109 "data/maps/Route104/scripts.pory"
# 997 "data/maps/Route104/scripts.pory"
# 2110 "data/maps/Route104/scripts.pory"
	special GetPlayerBigGuyGirlString
# 2111 "data/maps/Route104/scripts.pory"
# 998 "data/maps/Route104/scripts.pory"
# 2112 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_GinaPostBattle, MSGBOX_DEFAULT
# 2113 "data/maps/Route104/scripts.pory"
# 999 "data/maps/Route104/scripts.pory"
# 2114 "data/maps/Route104/scripts.pory"
	release
# 2115 "data/maps/Route104/scripts.pory"
# 1000 "data/maps/Route104/scripts.pory"
# 2116 "data/maps/Route104/scripts.pory"
	end
# 2117 "data/maps/Route104/scripts.pory"
# 1001 "data/maps/Route104/scripts.pory"
# 2118 "data/maps/Route104/scripts.pory"

# 2119 "data/maps/Route104/scripts.pory"
# 1002 "data/maps/Route104/scripts.pory"
# 2120 "data/maps/Route104/scripts.pory"
Route104_EventScript_Mia::
# 2121 "data/maps/Route104/scripts.pory"
# 1003 "data/maps/Route104/scripts.pory"
# 2122 "data/maps/Route104/scripts.pory"
	trainerbattle_double TRAINER_GINA_AND_MIA_1, Route104_Text_MiaIntro, Route104_Text_MiaDefeat, Route104_Text_MiaNotEnoughMons
# 2123 "data/maps/Route104/scripts.pory"
# 1004 "data/maps/Route104/scripts.pory"
# 2124 "data/maps/Route104/scripts.pory"
	special GetPlayerBigGuyGirlString
# 2125 "data/maps/Route104/scripts.pory"
# 1005 "data/maps/Route104/scripts.pory"
# 2126 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_MiaPostBattle, MSGBOX_DEFAULT
# 2127 "data/maps/Route104/scripts.pory"
# 1006 "data/maps/Route104/scripts.pory"
# 2128 "data/maps/Route104/scripts.pory"
	release
# 2129 "data/maps/Route104/scripts.pory"
# 1007 "data/maps/Route104/scripts.pory"
# 2130 "data/maps/Route104/scripts.pory"
	end
# 2131 "data/maps/Route104/scripts.pory"
# 1008 "data/maps/Route104/scripts.pory"
# 2132 "data/maps/Route104/scripts.pory"

# 2133 "data/maps/Route104/scripts.pory"
# 1009 "data/maps/Route104/scripts.pory"
# 2134 "data/maps/Route104/scripts.pory"
Route104_EventScript_Darian::
# 2135 "data/maps/Route104/scripts.pory"
# 1010 "data/maps/Route104/scripts.pory"
# 2136 "data/maps/Route104/scripts.pory"
	trainerbattle_single TRAINER_DARIAN, Route104_Text_DarianIntro, Route104_Text_DarianDefeat
# 2137 "data/maps/Route104/scripts.pory"
# 1011 "data/maps/Route104/scripts.pory"
# 2138 "data/maps/Route104/scripts.pory"
	msgbox Route104_Text_DarianPostBattle, MSGBOX_AUTOCLOSE
# 2139 "data/maps/Route104/scripts.pory"
# 1012 "data/maps/Route104/scripts.pory"
# 2140 "data/maps/Route104/scripts.pory"
	end
# 2141 "data/maps/Route104/scripts.pory"
# 1013 "data/maps/Route104/scripts.pory"
# 2142 "data/maps/Route104/scripts.pory"

# 2143 "data/maps/Route104/scripts.pory"
# 1014 "data/maps/Route104/scripts.pory"
# 2144 "data/maps/Route104/scripts.pory"
Route104_EventScript_MARILL104::
# 2145 "data/maps/Route104/scripts.pory"
# 1015 "data/maps/Route104/scripts.pory"
# 2146 "data/maps/Route104/scripts.pory"
	lock
# 2147 "data/maps/Route104/scripts.pory"
# 1016 "data/maps/Route104/scripts.pory"
# 2148 "data/maps/Route104/scripts.pory"
	faceplayer
# 2149 "data/maps/Route104/scripts.pory"
# 1017 "data/maps/Route104/scripts.pory"
# 2150 "data/maps/Route104/scripts.pory"
	playmoncry SPECIES_MARILL, CRY_MODE_NORMAL
# 2151 "data/maps/Route104/scripts.pory"
# 1018 "data/maps/Route104/scripts.pory"
# 2152 "data/maps/Route104/scripts.pory"
	waitmoncry
# 2153 "data/maps/Route104/scripts.pory"
# 1019 "data/maps/Route104/scripts.pory"
# 2154 "data/maps/Route104/scripts.pory"
	release
# 2155 "data/maps/Route104/scripts.pory"
# 1020 "data/maps/Route104/scripts.pory"
# 2156 "data/maps/Route104/scripts.pory"
	end
# 2157 "data/maps/Route104/scripts.pory"
# 1021 "data/maps/Route104/scripts.pory"
# 2158 "data/maps/Route104/scripts.pory"

# 2159 "data/maps/Route104/scripts.pory"
# 1022 "data/maps/Route104/scripts.pory"
# 2160 "data/maps/Route104/scripts.pory"
Route104_EventScript_PIDGEY104::
# 2161 "data/maps/Route104/scripts.pory"
# 1023 "data/maps/Route104/scripts.pory"
# 2162 "data/maps/Route104/scripts.pory"
	lock
# 2163 "data/maps/Route104/scripts.pory"
# 1024 "data/maps/Route104/scripts.pory"
# 2164 "data/maps/Route104/scripts.pory"
	faceplayer
# 2165 "data/maps/Route104/scripts.pory"
# 1025 "data/maps/Route104/scripts.pory"
# 2166 "data/maps/Route104/scripts.pory"
	playmoncry SPECIES_PIDGEY, CRY_MODE_NORMAL
# 2167 "data/maps/Route104/scripts.pory"
# 1026 "data/maps/Route104/scripts.pory"
# 2168 "data/maps/Route104/scripts.pory"
	waitmoncry
# 2169 "data/maps/Route104/scripts.pory"
# 1027 "data/maps/Route104/scripts.pory"
# 2170 "data/maps/Route104/scripts.pory"
	release
# 2171 "data/maps/Route104/scripts.pory"
# 1028 "data/maps/Route104/scripts.pory"
# 2172 "data/maps/Route104/scripts.pory"
	end
# 2173 "data/maps/Route104/scripts.pory"
# 1029 "data/maps/Route104/scripts.pory"
# 2174 "data/maps/Route104/scripts.pory"

# 2175 "data/maps/Route104/scripts.pory"
# 1030 "data/maps/Route104/scripts.pory"
# 2176 "data/maps/Route104/scripts.pory"
Route104_EventScript_LOTAD104::
# 2177 "data/maps/Route104/scripts.pory"
# 1031 "data/maps/Route104/scripts.pory"
# 2178 "data/maps/Route104/scripts.pory"
	lock
# 2179 "data/maps/Route104/scripts.pory"
# 1032 "data/maps/Route104/scripts.pory"
# 2180 "data/maps/Route104/scripts.pory"
	faceplayer
# 2181 "data/maps/Route104/scripts.pory"
# 1033 "data/maps/Route104/scripts.pory"
# 2182 "data/maps/Route104/scripts.pory"
	playmoncry SPECIES_LOTAD, CRY_MODE_NORMAL
# 2183 "data/maps/Route104/scripts.pory"
# 1034 "data/maps/Route104/scripts.pory"
# 2184 "data/maps/Route104/scripts.pory"
	waitmoncry
# 2185 "data/maps/Route104/scripts.pory"
# 1035 "data/maps/Route104/scripts.pory"
# 2186 "data/maps/Route104/scripts.pory"
	release
# 2187 "data/maps/Route104/scripts.pory"
# 1036 "data/maps/Route104/scripts.pory"
# 2188 "data/maps/Route104/scripts.pory"
	end
# 2189 "data/maps/Route104/scripts.pory"
# 1037 "data/maps/Route104/scripts.pory"
# 2190 "data/maps/Route104/scripts.pory"

# 2191 "data/maps/Route104/scripts.pory"
# 1038 "data/maps/Route104/scripts.pory"
# 2192 "data/maps/Route104/scripts.pory"
Route104_EventScript_ODDISH104::
# 2193 "data/maps/Route104/scripts.pory"
# 1039 "data/maps/Route104/scripts.pory"
# 2194 "data/maps/Route104/scripts.pory"
	lock
# 2195 "data/maps/Route104/scripts.pory"
# 1040 "data/maps/Route104/scripts.pory"
# 2196 "data/maps/Route104/scripts.pory"
	faceplayer
# 2197 "data/maps/Route104/scripts.pory"
# 1041 "data/maps/Route104/scripts.pory"
# 2198 "data/maps/Route104/scripts.pory"
	playmoncry SPECIES_ODDISH, CRY_MODE_NORMAL
# 2199 "data/maps/Route104/scripts.pory"
# 1042 "data/maps/Route104/scripts.pory"
# 2200 "data/maps/Route104/scripts.pory"
	waitmoncry
# 2201 "data/maps/Route104/scripts.pory"
# 1043 "data/maps/Route104/scripts.pory"
# 2202 "data/maps/Route104/scripts.pory"
	release
# 2203 "data/maps/Route104/scripts.pory"
# 1044 "data/maps/Route104/scripts.pory"
# 2204 "data/maps/Route104/scripts.pory"
	end
# 2205 "data/maps/Route104/scripts.pory"
# 1045 "data/maps/Route104/scripts.pory"
# 2206 "data/maps/Route104/scripts.pory"

# 2207 "data/maps/Route104/scripts.pory"
# 1046 "data/maps/Route104/scripts.pory"
# 2208 "data/maps/Route104/scripts.pory"

# 2209 "data/maps/Route104/scripts.pory"
# 1047 "data/maps/Route104/scripts.pory"
# 2210 "data/maps/Route104/scripts.pory"
Route104_Text_BrineyLivesInSeasideCottage:
# 2211 "data/maps/Route104/scripts.pory"
# 1048 "data/maps/Route104/scripts.pory"
# 2212 "data/maps/Route104/scripts.pory"
	.string "That old sailor lives in the\n"
# 2213 "data/maps/Route104/scripts.pory"
# 1049 "data/maps/Route104/scripts.pory"
# 2214 "data/maps/Route104/scripts.pory"
	.string "seaside cottage.\p"
# 2215 "data/maps/Route104/scripts.pory"
# 1050 "data/maps/Route104/scripts.pory"
# 2216 "data/maps/Route104/scripts.pory"
	.string "He was once a mighty sailor who never\n"
# 2217 "data/maps/Route104/scripts.pory"
# 1051 "data/maps/Route104/scripts.pory"
# 2218 "data/maps/Route104/scripts.pory"
	.string "feared the sea, however stormy.\p"
# 2219 "data/maps/Route104/scripts.pory"
# 1052 "data/maps/Route104/scripts.pory"
# 2220 "data/maps/Route104/scripts.pory"
	.string "Though lately, the sea has grown\n"
# 2221 "data/maps/Route104/scripts.pory"
# 1053 "data/maps/Route104/scripts.pory"
# 2222 "data/maps/Route104/scripts.pory"
	.string "strangely more dangerous.\p"
# 2223 "data/maps/Route104/scripts.pory"
# 1054 "data/maps/Route104/scripts.pory"
# 2224 "data/maps/Route104/scripts.pory"
	.string "Legends say ships were swallowed\n"
# 2225 "data/maps/Route104/scripts.pory"
# 1055 "data/maps/Route104/scripts.pory"
# 2226 "data/maps/Route104/scripts.pory"
	.string "whole by the storms.$"
# 2227 "data/maps/Route104/scripts.pory"
# 1056 "data/maps/Route104/scripts.pory"
# 2228 "data/maps/Route104/scripts.pory"

# 2229 "data/maps/Route104/scripts.pory"
# 1057 "data/maps/Route104/scripts.pory"
# 2230 "data/maps/Route104/scripts.pory"
Route104_Text_WhatsItLikeAtBottomOfSea:
# 2231 "data/maps/Route104/scripts.pory"
# 1058 "data/maps/Route104/scripts.pory"
# 2232 "data/maps/Route104/scripts.pory"
	.string "The sea, huh?\p"
# 2233 "data/maps/Route104/scripts.pory"
# 1059 "data/maps/Route104/scripts.pory"
# 2234 "data/maps/Route104/scripts.pory"
	.string "I wonder what it's like at the bottom\n"
# 2235 "data/maps/Route104/scripts.pory"
# 1060 "data/maps/Route104/scripts.pory"
# 2236 "data/maps/Route104/scripts.pory"
	.string "of the sea?\p"
# 2237 "data/maps/Route104/scripts.pory"
# 1061 "data/maps/Route104/scripts.pory"
# 2238 "data/maps/Route104/scripts.pory"
	.string "They say there are huge monsters\n"
# 2239 "data/maps/Route104/scripts.pory"
# 1062 "data/maps/Route104/scripts.pory"
# 2240 "data/maps/Route104/scripts.pory"
	.string "and dangerous creatures down there.\p"
# 2241 "data/maps/Route104/scripts.pory"
# 1063 "data/maps/Route104/scripts.pory"
# 2242 "data/maps/Route104/scripts.pory"
	.string "So scary…$"
# 2243 "data/maps/Route104/scripts.pory"
# 1064 "data/maps/Route104/scripts.pory"
# 2244 "data/maps/Route104/scripts.pory"

# 2245 "data/maps/Route104/scripts.pory"
# 1065 "data/maps/Route104/scripts.pory"
# 2246 "data/maps/Route104/scripts.pory"
Route104_Text_ThrowBallAtWeakenedPokemon:
# 2247 "data/maps/Route104/scripts.pory"
# 1066 "data/maps/Route104/scripts.pory"
# 2248 "data/maps/Route104/scripts.pory"
	.string "If you're going to throw a POKé BALL,\n"
# 2249 "data/maps/Route104/scripts.pory"
# 1067 "data/maps/Route104/scripts.pory"
# 2250 "data/maps/Route104/scripts.pory"
	.string "weaken the wild POKéMON first.\p"
# 2251 "data/maps/Route104/scripts.pory"
# 1068 "data/maps/Route104/scripts.pory"
# 2252 "data/maps/Route104/scripts.pory"
	.string "It will be easier to catch if it's been\n"
# 2253 "data/maps/Route104/scripts.pory"
# 1069 "data/maps/Route104/scripts.pory"
# 2254 "data/maps/Route104/scripts.pory"
	.string "poisoned, burned, or lulled to sleep.\p"
# 2255 "data/maps/Route104/scripts.pory"
# 1070 "data/maps/Route104/scripts.pory"
# 2256 "data/maps/Route104/scripts.pory"
	.string "Once I tried to catch a SENTRET, and\n"
# 2257 "data/maps/Route104/scripts.pory"
# 1071 "data/maps/Route104/scripts.pory"
# 2258 "data/maps/Route104/scripts.pory"
	.string "it grabbed the POKé BALL and threw it\l"
# 2259 "data/maps/Route104/scripts.pory"
# 1072 "data/maps/Route104/scripts.pory"
# 2260 "data/maps/Route104/scripts.pory"
	.string "right back at me with full force!\p"
# 2261 "data/maps/Route104/scripts.pory"
# 1073 "data/maps/Route104/scripts.pory"
# 2262 "data/maps/Route104/scripts.pory"
	.string "Those SENTRET may look cute,\n"
# 2263 "data/maps/Route104/scripts.pory"
# 1074 "data/maps/Route104/scripts.pory"
# 2264 "data/maps/Route104/scripts.pory"
	.string "but they're feisty little fighters…$"
# 2265 "data/maps/Route104/scripts.pory"
# 1075 "data/maps/Route104/scripts.pory"
# 2266 "data/maps/Route104/scripts.pory"

# 2267 "data/maps/Route104/scripts.pory"
# 1076 "data/maps/Route104/scripts.pory"
# 2268 "data/maps/Route104/scripts.pory"
Route104_Text_OnlyThrowBallAtWildPokemon:
# 2269 "data/maps/Route104/scripts.pory"
# 1077 "data/maps/Route104/scripts.pory"
# 2270 "data/maps/Route104/scripts.pory"
	.string "Imagine a world without POKé BALLS…\n"
# 2271 "data/maps/Route104/scripts.pory"
# 1078 "data/maps/Route104/scripts.pory"
# 2272 "data/maps/Route104/scripts.pory"
	.string "It would be terrible, wouldn't it?\p"
# 2273 "data/maps/Route104/scripts.pory"
# 1079 "data/maps/Route104/scripts.pory"
# 2274 "data/maps/Route104/scripts.pory"
	.string "We couldn't train POKéMON properly.\n"
# 2275 "data/maps/Route104/scripts.pory"
# 1080 "data/maps/Route104/scripts.pory"
# 2276 "data/maps/Route104/scripts.pory"
	.string "What would we even do?\p"
# 2277 "data/maps/Route104/scripts.pory"
# 1081 "data/maps/Route104/scripts.pory"
# 2278 "data/maps/Route104/scripts.pory"
	.string "Thank goodness they exist…$"
# 2279 "data/maps/Route104/scripts.pory"
# 1082 "data/maps/Route104/scripts.pory"
# 2280 "data/maps/Route104/scripts.pory"

# 2281 "data/maps/Route104/scripts.pory"
# 1083 "data/maps/Route104/scripts.pory"
# 2282 "data/maps/Route104/scripts.pory"
Route104_Text_ImNotATrainer:
# 2283 "data/maps/Route104/scripts.pory"
# 1084 "data/maps/Route104/scripts.pory"
# 2284 "data/maps/Route104/scripts.pory"
	.string "Oh, no, I'm not a TRAINER.\p"
# 2285 "data/maps/Route104/scripts.pory"
# 1085 "data/maps/Route104/scripts.pory"
# 2286 "data/maps/Route104/scripts.pory"
	.string "I prefer observing POKéMON behavior\n"
# 2287 "data/maps/Route104/scripts.pory"
# 1086 "data/maps/Route104/scripts.pory"
# 2288 "data/maps/Route104/scripts.pory"
	.string "in their natural habitat.\p"
# 2289 "data/maps/Route104/scripts.pory"
# 1087 "data/maps/Route104/scripts.pory"
# 2290 "data/maps/Route104/scripts.pory"
	.string "Lately, I've noticed the wild POKéMON\n"
# 2291 "data/maps/Route104/scripts.pory"
# 1088 "data/maps/Route104/scripts.pory"
# 2292 "data/maps/Route104/scripts.pory"
	.string "acting strangely and more aggressive.\p"
# 2293 "data/maps/Route104/scripts.pory"
# 1089 "data/maps/Route104/scripts.pory"
# 2294 "data/maps/Route104/scripts.pory"
	.string "Something feels different in the air.$"
# 2295 "data/maps/Route104/scripts.pory"
# 1090 "data/maps/Route104/scripts.pory"
# 2296 "data/maps/Route104/scripts.pory"

# 2297 "data/maps/Route104/scripts.pory"
# 1091 "data/maps/Route104/scripts.pory"
# 2298 "data/maps/Route104/scripts.pory"
Route104_Text_LikeFillingMouthWithSeedsTakeThis:
# 2299 "data/maps/Route104/scripts.pory"
# 1092 "data/maps/Route104/scripts.pory"
# 2300 "data/maps/Route104/scripts.pory"
	.string "I like filling my mouth with seeds,\n"
# 2301 "data/maps/Route104/scripts.pory"
# 1093 "data/maps/Route104/scripts.pory"
# 2302 "data/maps/Route104/scripts.pory"
	.string "then spitting them out fast!\p"
# 2303 "data/maps/Route104/scripts.pory"
# 1094 "data/maps/Route104/scripts.pory"
# 2304 "data/maps/Route104/scripts.pory"
	.string "You can have this, so you try it out!\p"
# 2305 "data/maps/Route104/scripts.pory"
# 1095 "data/maps/Route104/scripts.pory"
# 2306 "data/maps/Route104/scripts.pory"
	.string "Use it on a POKéMON, and it will learn\n"
# 2307 "data/maps/Route104/scripts.pory"
# 1096 "data/maps/Route104/scripts.pory"
# 2308 "data/maps/Route104/scripts.pory"
	.string "a move for firing seeds rapidly.$"
# 2309 "data/maps/Route104/scripts.pory"
# 1097 "data/maps/Route104/scripts.pory"
# 2310 "data/maps/Route104/scripts.pory"

# 2311 "data/maps/Route104/scripts.pory"
# 1098 "data/maps/Route104/scripts.pory"
# 2312 "data/maps/Route104/scripts.pory"
Route104_Text_TMsAreOneTimeUse:
# 2313 "data/maps/Route104/scripts.pory"
# 1099 "data/maps/Route104/scripts.pory"
# 2314 "data/maps/Route104/scripts.pory"
	.string "A word of advice!\p"
# 2315 "data/maps/Route104/scripts.pory"
# 1100 "data/maps/Route104/scripts.pory"
# 2316 "data/maps/Route104/scripts.pory"
	.string "Back in the old days, TMs could only\n"
# 2317 "data/maps/Route104/scripts.pory"
# 1101 "data/maps/Route104/scripts.pory"
# 2318 "data/maps/Route104/scripts.pory"
	.string "be used once. You had to be really\l"
# 2319 "data/maps/Route104/scripts.pory"
# 1102 "data/maps/Route104/scripts.pory"
# 2320 "data/maps/Route104/scripts.pory"
	.string "careful about when to use them!\p"
# 2321 "data/maps/Route104/scripts.pory"
# 1103 "data/maps/Route104/scripts.pory"
# 2322 "data/maps/Route104/scripts.pory"
	.string "Thankfully, technology has advanced\n"
# 2323 "data/maps/Route104/scripts.pory"
# 1104 "data/maps/Route104/scripts.pory"
# 2324 "data/maps/Route104/scripts.pory"
	.string "and now TMs can be used repeatedly!\p"
# 2325 "data/maps/Route104/scripts.pory"
# 1105 "data/maps/Route104/scripts.pory"
# 2326 "data/maps/Route104/scripts.pory"
	.string "Thank you, technology!$"
# 2327 "data/maps/Route104/scripts.pory"
# 1106 "data/maps/Route104/scripts.pory"
# 2328 "data/maps/Route104/scripts.pory"

# 2329 "data/maps/Route104/scripts.pory"
# 1107 "data/maps/Route104/scripts.pory"
# 2330 "data/maps/Route104/scripts.pory"
Route104_Text_DontNeedThisTakeIt:
# 2331 "data/maps/Route104/scripts.pory"
# 1108 "data/maps/Route104/scripts.pory"
# 2332 "data/maps/Route104/scripts.pory"
	.string "This FLOWER SHOP started selling\n"
# 2333 "data/maps/Route104/scripts.pory"
# 1109 "data/maps/Route104/scripts.pory"
# 2334 "data/maps/Route104/scripts.pory"
	.string "saplings recently.\p"
# 2335 "data/maps/Route104/scripts.pory"
# 1110 "data/maps/Route104/scripts.pory"
# 2336 "data/maps/Route104/scripts.pory"
	.string "It made me so happy, I went overboard\n"
# 2337 "data/maps/Route104/scripts.pory"
# 1111 "data/maps/Route104/scripts.pory"
# 2338 "data/maps/Route104/scripts.pory"
	.string "shopping.\p"
# 2339 "data/maps/Route104/scripts.pory"
# 1112 "data/maps/Route104/scripts.pory"
# 2340 "data/maps/Route104/scripts.pory"
	.string "I don't need this WHITE HERB anymore.\n"
# 2341 "data/maps/Route104/scripts.pory"
# 1113 "data/maps/Route104/scripts.pory"
# 2342 "data/maps/Route104/scripts.pory"
	.string "Would you take it, please?$"
# 2343 "data/maps/Route104/scripts.pory"
# 1114 "data/maps/Route104/scripts.pory"
# 2344 "data/maps/Route104/scripts.pory"

# 2345 "data/maps/Route104/scripts.pory"
# 1115 "data/maps/Route104/scripts.pory"
# 2346 "data/maps/Route104/scripts.pory"
Route104_Text_FlowerShopSellingSaplings:
# 2347 "data/maps/Route104/scripts.pory"
# 1116 "data/maps/Route104/scripts.pory"
# 2348 "data/maps/Route104/scripts.pory"
	.string "This FLOWER SHOP started selling\n"
# 2349 "data/maps/Route104/scripts.pory"
# 1117 "data/maps/Route104/scripts.pory"
# 2350 "data/maps/Route104/scripts.pory"
	.string "saplings recently.\p"
# 2351 "data/maps/Route104/scripts.pory"
# 1118 "data/maps/Route104/scripts.pory"
# 2352 "data/maps/Route104/scripts.pory"
	.string "It made me so happy, I went overboard\n"
# 2353 "data/maps/Route104/scripts.pory"
# 1119 "data/maps/Route104/scripts.pory"
# 2354 "data/maps/Route104/scripts.pory"
	.string "shopping. Where should I put them?$"
# 2355 "data/maps/Route104/scripts.pory"
# 1120 "data/maps/Route104/scripts.pory"
# 2356 "data/maps/Route104/scripts.pory"

# 2357 "data/maps/Route104/scripts.pory"
# 1121 "data/maps/Route104/scripts.pory"
# 2358 "data/maps/Route104/scripts.pory"
Route104_Text_MrBrineysCottage:
# 2359 "data/maps/Route104/scripts.pory"
# 1122 "data/maps/Route104/scripts.pory"
# 2360 "data/maps/Route104/scripts.pory"
	.string "MR. BRINEY'S COTTAGE$"
# 2361 "data/maps/Route104/scripts.pory"
# 1123 "data/maps/Route104/scripts.pory"
# 2362 "data/maps/Route104/scripts.pory"

# 2363 "data/maps/Route104/scripts.pory"
# 1124 "data/maps/Route104/scripts.pory"
# 2364 "data/maps/Route104/scripts.pory"
Route104_Text_RouteSignPetalburg:
# 2365 "data/maps/Route104/scripts.pory"
# 1125 "data/maps/Route104/scripts.pory"
# 2366 "data/maps/Route104/scripts.pory"
	.string "ROUTE 1O4\n"
# 2367 "data/maps/Route104/scripts.pory"
# 1126 "data/maps/Route104/scripts.pory"
# 2368 "data/maps/Route104/scripts.pory"
	.string "{RIGHT_ARROW} PETALBURG CITY$"
# 2369 "data/maps/Route104/scripts.pory"
# 1127 "data/maps/Route104/scripts.pory"
# 2370 "data/maps/Route104/scripts.pory"

# 2371 "data/maps/Route104/scripts.pory"
# 1128 "data/maps/Route104/scripts.pory"
# 2372 "data/maps/Route104/scripts.pory"
Route104_Text_RouteSignRustboro:
# 2373 "data/maps/Route104/scripts.pory"
# 1129 "data/maps/Route104/scripts.pory"
# 2374 "data/maps/Route104/scripts.pory"
	.string "ROUTE 1O4\n"
# 2375 "data/maps/Route104/scripts.pory"
# 1130 "data/maps/Route104/scripts.pory"
# 2376 "data/maps/Route104/scripts.pory"
	.string "{UP_ARROW} RUSTBORO CITY$"
# 2377 "data/maps/Route104/scripts.pory"
# 1131 "data/maps/Route104/scripts.pory"
# 2378 "data/maps/Route104/scripts.pory"

# 2379 "data/maps/Route104/scripts.pory"
# 1132 "data/maps/Route104/scripts.pory"
# 2380 "data/maps/Route104/scripts.pory"
Route104_Text_PrettyPetalFlowShop:
# 2381 "data/maps/Route104/scripts.pory"
# 1133 "data/maps/Route104/scripts.pory"
# 2382 "data/maps/Route104/scripts.pory"
	.string "PRETTY PETAL FLOWER SHOP$"
# 2383 "data/maps/Route104/scripts.pory"
# 1134 "data/maps/Route104/scripts.pory"
# 2384 "data/maps/Route104/scripts.pory"

# 2385 "data/maps/Route104/scripts.pory"
# 1135 "data/maps/Route104/scripts.pory"
# 2386 "data/maps/Route104/scripts.pory"
Route104_Text_TrainerTipsDoubleBattles:
# 2387 "data/maps/Route104/scripts.pory"
# 1136 "data/maps/Route104/scripts.pory"
# 2388 "data/maps/Route104/scripts.pory"
	.string "You know what's really exciting?\n"
# 2389 "data/maps/Route104/scripts.pory"
# 1137 "data/maps/Route104/scripts.pory"
# 2390 "data/maps/Route104/scripts.pory"
	.string "Double battles!\p"
# 2391 "data/maps/Route104/scripts.pory"
# 1138 "data/maps/Route104/scripts.pory"
# 2392 "data/maps/Route104/scripts.pory"
	.string "Watching two TRAINERS team up with\n"
# 2393 "data/maps/Route104/scripts.pory"
# 1139 "data/maps/Route104/scripts.pory"
# 2394 "data/maps/Route104/scripts.pory"
	.string "four POKéMON battling at once…\p"
# 2395 "data/maps/Route104/scripts.pory"
# 1140 "data/maps/Route104/scripts.pory"
# 2396 "data/maps/Route104/scripts.pory"
	.string "The strategy gets so much deeper when\n"
# 2397 "data/maps/Route104/scripts.pory"
# 1141 "data/maps/Route104/scripts.pory"
# 2398 "data/maps/Route104/scripts.pory"
	.string "you have to coordinate two POKéMON\l"
# 2399 "data/maps/Route104/scripts.pory"
# 1142 "data/maps/Route104/scripts.pory"
# 2400 "data/maps/Route104/scripts.pory"
	.string "working together.\p"
# 2401 "data/maps/Route104/scripts.pory"
# 1143 "data/maps/Route104/scripts.pory"
# 2402 "data/maps/Route104/scripts.pory"
	.string "It's like a beautiful, chaotic dance\n"
# 2403 "data/maps/Route104/scripts.pory"
# 1144 "data/maps/Route104/scripts.pory"
# 2404 "data/maps/Route104/scripts.pory"
	.string "of attacks and teamwork!$"
# 2405 "data/maps/Route104/scripts.pory"
# 1145 "data/maps/Route104/scripts.pory"
# 2406 "data/maps/Route104/scripts.pory"

# 2407 "data/maps/Route104/scripts.pory"
# 1146 "data/maps/Route104/scripts.pory"
# 2408 "data/maps/Route104/scripts.pory"
Route104_Text_MayWeShouldRegister:
# 2409 "data/maps/Route104/scripts.pory"
# 1147 "data/maps/Route104/scripts.pory"
# 2410 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: Oh, hi, {PLAYER}{KUN}!\p"
# 2411 "data/maps/Route104/scripts.pory"
# 1148 "data/maps/Route104/scripts.pory"
# 2412 "data/maps/Route104/scripts.pory"
	.string "DEVON upgraded your POKéNAV with\n"
# 2413 "data/maps/Route104/scripts.pory"
# 1149 "data/maps/Route104/scripts.pory"
# 2414 "data/maps/Route104/scripts.pory"
	.string "the MATCH CALL system, huh?\p"
# 2415 "data/maps/Route104/scripts.pory"
# 1150 "data/maps/Route104/scripts.pory"
# 2416 "data/maps/Route104/scripts.pory"
	.string "We should register each other so we\n"
# 2417 "data/maps/Route104/scripts.pory"
# 1151 "data/maps/Route104/scripts.pory"
# 2418 "data/maps/Route104/scripts.pory"
	.string "can get in contact anytime.$"
# 2419 "data/maps/Route104/scripts.pory"
# 1152 "data/maps/Route104/scripts.pory"
# 2420 "data/maps/Route104/scripts.pory"

# 2421 "data/maps/Route104/scripts.pory"
# 1153 "data/maps/Route104/scripts.pory"
# 2422 "data/maps/Route104/scripts.pory"
Route104_Text_RegisteredMay:
# 2423 "data/maps/Route104/scripts.pory"
# 1154 "data/maps/Route104/scripts.pory"
# 2424 "data/maps/Route104/scripts.pory"
	.string "{PLAYER} registered ZINNIA\n"
# 2425 "data/maps/Route104/scripts.pory"
# 1155 "data/maps/Route104/scripts.pory"
# 2426 "data/maps/Route104/scripts.pory"
	.string "in the POKéNAV.$"
# 2427 "data/maps/Route104/scripts.pory"
# 1156 "data/maps/Route104/scripts.pory"
# 2428 "data/maps/Route104/scripts.pory"

# 2429 "data/maps/Route104/scripts.pory"
# 1157 "data/maps/Route104/scripts.pory"
# 2430 "data/maps/Route104/scripts.pory"
Route104_Text_MayHowsYourPokedex:
# 2431 "data/maps/Route104/scripts.pory"
# 1158 "data/maps/Route104/scripts.pory"
# 2432 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: Oh, by the way, {PLAYER}{KUN},\n"
# 2433 "data/maps/Route104/scripts.pory"
# 1159 "data/maps/Route104/scripts.pory"
# 2434 "data/maps/Route104/scripts.pory"
	.string "how's your POKéDEX coming along?$"
# 2435 "data/maps/Route104/scripts.pory"
# 1160 "data/maps/Route104/scripts.pory"
# 2436 "data/maps/Route104/scripts.pory"

# 2437 "data/maps/Route104/scripts.pory"
# 1161 "data/maps/Route104/scripts.pory"
# 2438 "data/maps/Route104/scripts.pory"
Route104_Text_MayMinesDecentLetsBattle:
# 2439 "data/maps/Route104/scripts.pory"
# 1162 "data/maps/Route104/scripts.pory"
# 2440 "data/maps/Route104/scripts.pory"
	.string "Mine's looking pretty decent.\n"
# 2441 "data/maps/Route104/scripts.pory"
# 1163 "data/maps/Route104/scripts.pory"
# 2442 "data/maps/Route104/scripts.pory"
	.string "So…\l"
# 2443 "data/maps/Route104/scripts.pory"
# 1164 "data/maps/Route104/scripts.pory"
# 2444 "data/maps/Route104/scripts.pory"
	.string "How about a little battle?$"
# 2445 "data/maps/Route104/scripts.pory"
# 1165 "data/maps/Route104/scripts.pory"
# 2446 "data/maps/Route104/scripts.pory"

# 2447 "data/maps/Route104/scripts.pory"
# 1166 "data/maps/Route104/scripts.pory"
# 2448 "data/maps/Route104/scripts.pory"
Route104_Text_MayHaventRaisedPokemon:
# 2449 "data/maps/Route104/scripts.pory"
# 1167 "data/maps/Route104/scripts.pory"
# 2450 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: Oh, what's the matter?\p"
# 2451 "data/maps/Route104/scripts.pory"
# 1168 "data/maps/Route104/scripts.pory"
# 2452 "data/maps/Route104/scripts.pory"
	.string "Haven't you caught or raised your\n"
# 2453 "data/maps/Route104/scripts.pory"
# 1169 "data/maps/Route104/scripts.pory"
# 2454 "data/maps/Route104/scripts.pory"
	.string "POKéMON very much?\p"
# 2455 "data/maps/Route104/scripts.pory"
# 1170 "data/maps/Route104/scripts.pory"
# 2456 "data/maps/Route104/scripts.pory"
	.string "That's not very good for a TRAINER!$"
# 2457 "data/maps/Route104/scripts.pory"
# 1171 "data/maps/Route104/scripts.pory"
# 2458 "data/maps/Route104/scripts.pory"

# 2459 "data/maps/Route104/scripts.pory"
# 1172 "data/maps/Route104/scripts.pory"
# 2460 "data/maps/Route104/scripts.pory"
Route104_Text_MayLetsBattle:
# 2461 "data/maps/Route104/scripts.pory"
# 1173 "data/maps/Route104/scripts.pory"
# 2462 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: So, what do you think?\n"
# 2463 "data/maps/Route104/scripts.pory"
# 1174 "data/maps/Route104/scripts.pory"
# 2464 "data/maps/Route104/scripts.pory"
	.string "How about a little battle here?$"
# 2465 "data/maps/Route104/scripts.pory"
# 1175 "data/maps/Route104/scripts.pory"
# 2466 "data/maps/Route104/scripts.pory"

# 2467 "data/maps/Route104/scripts.pory"
# 1176 "data/maps/Route104/scripts.pory"
# 2468 "data/maps/Route104/scripts.pory"
Route104_Text_MayIntro:
# 2469 "data/maps/Route104/scripts.pory"
# 1177 "data/maps/Route104/scripts.pory"
# 2470 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: You just became a TRAINER,\n"
# 2471 "data/maps/Route104/scripts.pory"
# 1178 "data/maps/Route104/scripts.pory"
# 2472 "data/maps/Route104/scripts.pory"
	.string "{PLAYER}{KUN}. I'm not going to lose!$"
# 2473 "data/maps/Route104/scripts.pory"
# 1179 "data/maps/Route104/scripts.pory"
# 2474 "data/maps/Route104/scripts.pory"

# 2475 "data/maps/Route104/scripts.pory"
# 1180 "data/maps/Route104/scripts.pory"
# 2476 "data/maps/Route104/scripts.pory"
Route104_Text_MayDefeat:
# 2477 "data/maps/Route104/scripts.pory"
# 1181 "data/maps/Route104/scripts.pory"
# 2478 "data/maps/Route104/scripts.pory"
	.string "Yikes!\n"
# 2479 "data/maps/Route104/scripts.pory"
# 1182 "data/maps/Route104/scripts.pory"
# 2480 "data/maps/Route104/scripts.pory"
	.string "You're better than I expected!$"
# 2481 "data/maps/Route104/scripts.pory"
# 1183 "data/maps/Route104/scripts.pory"
# 2482 "data/maps/Route104/scripts.pory"

# 2483 "data/maps/Route104/scripts.pory"
# 1184 "data/maps/Route104/scripts.pory"
# 2484 "data/maps/Route104/scripts.pory"
Route104_Text_MayPostBattle:
# 2485 "data/maps/Route104/scripts.pory"
# 1185 "data/maps/Route104/scripts.pory"
# 2486 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: I can tell you've gotten pretty\n"
# 2487 "data/maps/Route104/scripts.pory"
# 1186 "data/maps/Route104/scripts.pory"
# 2488 "data/maps/Route104/scripts.pory"
	.string "good with the way you handle POKéMON.\p"
# 2489 "data/maps/Route104/scripts.pory"
# 1187 "data/maps/Route104/scripts.pory"
# 2490 "data/maps/Route104/scripts.pory"
	.string "But instead of only making them\n"
# 2491 "data/maps/Route104/scripts.pory"
# 1188 "data/maps/Route104/scripts.pory"
# 2492 "data/maps/Route104/scripts.pory"
	.string "battle, you should be like MR. BRINEY.\p"
# 2493 "data/maps/Route104/scripts.pory"
# 1189 "data/maps/Route104/scripts.pory"
# 2494 "data/maps/Route104/scripts.pory"
	.string "It's important to become friends with\n"
# 2495 "data/maps/Route104/scripts.pory"
# 1190 "data/maps/Route104/scripts.pory"
# 2496 "data/maps/Route104/scripts.pory"
	.string "POKéMON, too.$"
# 2497 "data/maps/Route104/scripts.pory"
# 1191 "data/maps/Route104/scripts.pory"
# 2498 "data/maps/Route104/scripts.pory"

# 2499 "data/maps/Route104/scripts.pory"
# 1192 "data/maps/Route104/scripts.pory"
# 2500 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanWeShouldRegister:
# 2501 "data/maps/Route104/scripts.pory"
# 1193 "data/maps/Route104/scripts.pory"
# 2502 "data/maps/Route104/scripts.pory"
	.string "ZENNO: Oh, hey, {PLAYER}!\p"
# 2503 "data/maps/Route104/scripts.pory"
# 1194 "data/maps/Route104/scripts.pory"
# 2504 "data/maps/Route104/scripts.pory"
	.string "Cool, you had DEVON install the MATCH\n"
# 2505 "data/maps/Route104/scripts.pory"
# 1195 "data/maps/Route104/scripts.pory"
# 2506 "data/maps/Route104/scripts.pory"
	.string "CALL system on your POKéNAV!\p"
# 2507 "data/maps/Route104/scripts.pory"
# 1196 "data/maps/Route104/scripts.pory"
# 2508 "data/maps/Route104/scripts.pory"
	.string "Let's register each other in our\n"
# 2509 "data/maps/Route104/scripts.pory"
# 1197 "data/maps/Route104/scripts.pory"
# 2510 "data/maps/Route104/scripts.pory"
	.string "POKéNAVS so we can keep in touch.$"
# 2511 "data/maps/Route104/scripts.pory"
# 1198 "data/maps/Route104/scripts.pory"
# 2512 "data/maps/Route104/scripts.pory"

# 2513 "data/maps/Route104/scripts.pory"
# 1199 "data/maps/Route104/scripts.pory"
# 2514 "data/maps/Route104/scripts.pory"
Route104_Text_RegisteredBrendan:
# 2515 "data/maps/Route104/scripts.pory"
# 1200 "data/maps/Route104/scripts.pory"
# 2516 "data/maps/Route104/scripts.pory"
	.string "{PLAYER} registered ZENNO\n"
# 2517 "data/maps/Route104/scripts.pory"
# 1201 "data/maps/Route104/scripts.pory"
# 2518 "data/maps/Route104/scripts.pory"
	.string "in the POKéNAV.$"
# 2519 "data/maps/Route104/scripts.pory"
# 1202 "data/maps/Route104/scripts.pory"
# 2520 "data/maps/Route104/scripts.pory"

# 2521 "data/maps/Route104/scripts.pory"
# 1203 "data/maps/Route104/scripts.pory"
# 2522 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanHowsYourPokedex:
# 2523 "data/maps/Route104/scripts.pory"
# 1204 "data/maps/Route104/scripts.pory"
# 2524 "data/maps/Route104/scripts.pory"
	.string "ZENNO: {PLAYER}, how's your POKéDEX?\n"
# 2525 "data/maps/Route104/scripts.pory"
# 1205 "data/maps/Route104/scripts.pory"
# 2526 "data/maps/Route104/scripts.pory"
	.string "Have you filled in any pages yet?$"
# 2527 "data/maps/Route104/scripts.pory"
# 1206 "data/maps/Route104/scripts.pory"
# 2528 "data/maps/Route104/scripts.pory"

# 2529 "data/maps/Route104/scripts.pory"
# 1207 "data/maps/Route104/scripts.pory"
# 2530 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanDoingGreatLetsBattle:
# 2531 "data/maps/Route104/scripts.pory"
# 1208 "data/maps/Route104/scripts.pory"
# 2532 "data/maps/Route104/scripts.pory"
	.string "Me, I'm doing great!\p"
# 2533 "data/maps/Route104/scripts.pory"
# 1209 "data/maps/Route104/scripts.pory"
# 2534 "data/maps/Route104/scripts.pory"
	.string "Want to check out how good I am with\n"
# 2535 "data/maps/Route104/scripts.pory"
# 1210 "data/maps/Route104/scripts.pory"
# 2536 "data/maps/Route104/scripts.pory"
	.string "a battle?$"
# 2537 "data/maps/Route104/scripts.pory"
# 1211 "data/maps/Route104/scripts.pory"
# 2538 "data/maps/Route104/scripts.pory"

# 2539 "data/maps/Route104/scripts.pory"
# 1212 "data/maps/Route104/scripts.pory"
# 2540 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanNoConfidence:
# 2541 "data/maps/Route104/scripts.pory"
# 1213 "data/maps/Route104/scripts.pory"
# 2542 "data/maps/Route104/scripts.pory"
	.string "ZENNO: What's the matter? Don't have\n"
# 2543 "data/maps/Route104/scripts.pory"
# 1214 "data/maps/Route104/scripts.pory"
# 2544 "data/maps/Route104/scripts.pory"
	.string "any confidence in your POKéMON?$"
# 2545 "data/maps/Route104/scripts.pory"
# 1215 "data/maps/Route104/scripts.pory"
# 2546 "data/maps/Route104/scripts.pory"

# 2547 "data/maps/Route104/scripts.pory"
# 1216 "data/maps/Route104/scripts.pory"
# 2548 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanLetsBattle:
# 2549 "data/maps/Route104/scripts.pory"
# 1217 "data/maps/Route104/scripts.pory"
# 2550 "data/maps/Route104/scripts.pory"
	.string "ZENNO: What's up?\n"
# 2551 "data/maps/Route104/scripts.pory"
# 1218 "data/maps/Route104/scripts.pory"
# 2552 "data/maps/Route104/scripts.pory"
	.string "Want to have a battle with me?$"
# 2553 "data/maps/Route104/scripts.pory"
# 1219 "data/maps/Route104/scripts.pory"
# 2554 "data/maps/Route104/scripts.pory"

# 2555 "data/maps/Route104/scripts.pory"
# 1220 "data/maps/Route104/scripts.pory"
# 2556 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanIntro:
# 2557 "data/maps/Route104/scripts.pory"
# 1221 "data/maps/Route104/scripts.pory"
# 2558 "data/maps/Route104/scripts.pory"
	.string "ZENNO: I know you just became\n"
# 2559 "data/maps/Route104/scripts.pory"
# 1222 "data/maps/Route104/scripts.pory"
# 2560 "data/maps/Route104/scripts.pory"
	.string "a TRAINER, but I won't go easy!$"
# 2561 "data/maps/Route104/scripts.pory"
# 1223 "data/maps/Route104/scripts.pory"
# 2562 "data/maps/Route104/scripts.pory"

# 2563 "data/maps/Route104/scripts.pory"
# 1224 "data/maps/Route104/scripts.pory"
# 2564 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanDefeat:
# 2565 "data/maps/Route104/scripts.pory"
# 1225 "data/maps/Route104/scripts.pory"
# 2566 "data/maps/Route104/scripts.pory"
	.string "Hmm…\n"
# 2567 "data/maps/Route104/scripts.pory"
# 1226 "data/maps/Route104/scripts.pory"
# 2568 "data/maps/Route104/scripts.pory"
	.string "You're pretty good.$"
# 2569 "data/maps/Route104/scripts.pory"
# 1227 "data/maps/Route104/scripts.pory"
# 2570 "data/maps/Route104/scripts.pory"

# 2571 "data/maps/Route104/scripts.pory"
# 1228 "data/maps/Route104/scripts.pory"
# 2572 "data/maps/Route104/scripts.pory"
Route104_Text_BrendanPostBattle:
# 2573 "data/maps/Route104/scripts.pory"
# 1229 "data/maps/Route104/scripts.pory"
# 2574 "data/maps/Route104/scripts.pory"
	.string "ZENNO: You've gotten pretty decent\n"
# 2575 "data/maps/Route104/scripts.pory"
# 1230 "data/maps/Route104/scripts.pory"
# 2576 "data/maps/Route104/scripts.pory"
	.string "at handling POKéMON.\p"
# 2577 "data/maps/Route104/scripts.pory"
# 1231 "data/maps/Route104/scripts.pory"
# 2578 "data/maps/Route104/scripts.pory"
	.string "But, you know, you shouldn't just be\n"
# 2579 "data/maps/Route104/scripts.pory"
# 1232 "data/maps/Route104/scripts.pory"
# 2580 "data/maps/Route104/scripts.pory"
	.string "making POKéMON battle.\p"
# 2581 "data/maps/Route104/scripts.pory"
# 1233 "data/maps/Route104/scripts.pory"
# 2582 "data/maps/Route104/scripts.pory"
	.string "Like MR. BRINEY, it's important to\n"
# 2583 "data/maps/Route104/scripts.pory"
# 1234 "data/maps/Route104/scripts.pory"
# 2584 "data/maps/Route104/scripts.pory"
	.string "become friends with your POKéMON.$"
# 2585 "data/maps/Route104/scripts.pory"

# 2586 "data/maps/Route104/scripts.pory"
CamperCaesar_Text_0:
# 2587 "data/maps/Route104/scripts.pory"
# 4 "data/maps/Route104/scripts.pory"
# 2588 "data/maps/Route104/scripts.pory"
	.string "I wanna camp in the woods, but I'm\n"
# 2589 "data/maps/Route104/scripts.pory"
	.string "scared!$"
# 2590 "data/maps/Route104/scripts.pory"

# 2591 "data/maps/Route104/scripts.pory"
CaesarIntro::
# 2592 "data/maps/Route104/scripts.pory"
# 9 "data/maps/Route104/scripts.pory"
# 2593 "data/maps/Route104/scripts.pory"
	.string "You think you can handle the woods? Ha!$"
# 2594 "data/maps/Route104/scripts.pory"

# 2595 "data/maps/Route104/scripts.pory"
CaesarLose::
# 2596 "data/maps/Route104/scripts.pory"
# 13 "data/maps/Route104/scripts.pory"
# 2597 "data/maps/Route104/scripts.pory"
	.string "Maybe you can...$"
# 2598 "data/maps/Route104/scripts.pory"

# 2599 "data/maps/Route104/scripts.pory"
Route104_Text_BrineyRivalWaiting:
# 2600 "data/maps/Route104/scripts.pory"
	.string "This is MR. BRINEY's place.\n"
# 2601 "data/maps/Route104/scripts.pory"
	.string "I'll wait out here while you speak to him\l"
# 2602 "data/maps/Route104/scripts.pory"
	.string "about going to DEWFORD.$"
# 2603 "data/maps/Route104/scripts.pory"

# 2604 "data/maps/Route104/scripts.pory"
Route104_Text_DewfordArrivalZinnia:
# 2605 "data/maps/Route104/scripts.pory"
	.string "ZINNIA: Wow! We got here in no time.\p"
# 2606 "data/maps/Route104/scripts.pory"
	.string "While I'm here, I think I'll check out the\n"
# 2607 "data/maps/Route104/scripts.pory"
	.string "jungle and challenge the GYM before\l"
# 2608 "data/maps/Route104/scripts.pory"
	.string "heading to SLATEPORT.\p"
# 2609 "data/maps/Route104/scripts.pory"
	.string "Good luck, {PLAYER}! I'll see you around.$"
# 2610 "data/maps/Route104/scripts.pory"

# 2611 "data/maps/Route104/scripts.pory"
Route104_Text_DewfordArrivalZenno:
# 2612 "data/maps/Route104/scripts.pory"
	.string "ZENNO: Wow! We got here in no time.\p"
# 2613 "data/maps/Route104/scripts.pory"
	.string "While I'm here, I think I'll check out the\n"
# 2614 "data/maps/Route104/scripts.pory"
	.string "jungle and challenge the GYM before\l"
# 2615 "data/maps/Route104/scripts.pory"
	.string "heading to SLATEPORT.\p"
# 2616 "data/maps/Route104/scripts.pory"
	.string "Good luck, {PLAYER}! I'll see you around.$"
