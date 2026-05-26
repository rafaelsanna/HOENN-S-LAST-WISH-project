# 1 "data/maps/PetalburgCity/scripts.pory"

# 2 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_MapScripts::
# 3 "data/maps/PetalburgCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PetalburgCity_OnTransition
# 4 "data/maps/PetalburgCity/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, PetalburgCity_OnFrame
# 5 "data/maps/PetalburgCity/scripts.pory"
	.byte 0
# 6 "data/maps/PetalburgCity/scripts.pory"

# 7 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnTransition:
# 8 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_VISITED_PETALBURG_CITY
# 9 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_LUKA_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_HideLukaAfterGym
# 10 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 11 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_DisableMapNameAndMusic
# 12 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_DisableMapNameAndMusic
# 13 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_EventScript_SetGymDoorsUnlocked
# 14 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleAquaGrunts
# 15 "data/maps/PetalburgCity/scripts.pory"
	end
# 16 "data/maps/PetalburgCity/scripts.pory"

# 17 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideLukaAfterGym::
# 18 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 19 "data/maps/PetalburgCity/scripts.pory"
	return
# 20 "data/maps/PetalburgCity/scripts.pory"

# 21 "data/maps/PetalburgCity/scripts.pory"
@ Aqua Grunt blocker logic:
# 22 "data/maps/PetalburgCity/scripts.pory"
@ - Shown ONLY after 5th gym is defeated
# 23 "data/maps/PetalburgCity/scripts.pory"
@ - Hidden again once the player completes the relevant tasks (FLAG_AQUA_GRUNTS_PETALBURG_DONE)
# 24 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleAquaGrunts::
# 25 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, PetalburgCity_EventScript_HideAquaGrunts
# 26 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_ShowAquaGrunts
# 27 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_HideAquaGrunts
# 28 "data/maps/PetalburgCity/scripts.pory"

# 29 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowAquaGrunts::
# 30 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 31 "data/maps/PetalburgCity/scripts.pory"
	return
# 32 "data/maps/PetalburgCity/scripts.pory"

# 33 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideAquaGrunts::
# 34 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 35 "data/maps/PetalburgCity/scripts.pory"
	return
# 36 "data/maps/PetalburgCity/scripts.pory"

# 37 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_MoveGymBoyToWestEntrance::
# 38 "data/maps/PetalburgCity/scripts.pory"
	setobjectxyperm LOCALID_GYM_BOY, 5, 11
# 39 "data/maps/PetalburgCity/scripts.pory"
	return
# 40 "data/maps/PetalburgCity/scripts.pory"

# 41 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_DisableMapNameAndMusic::
# 42 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 43 "data/maps/PetalburgCity/scripts.pory"
	savebgm MUS_FOLLOW_ME
# 44 "data/maps/PetalburgCity/scripts.pory"
	return
# 45 "data/maps/PetalburgCity/scripts.pory"

# 46 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_SetGymDoorsUnlocked::
# 47 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 7
# 48 "data/maps/PetalburgCity/scripts.pory"
	return
# 49 "data/maps/PetalburgCity/scripts.pory"

# 50 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnFrame:
# 51 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_WallyTutorial
# 52 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_WalkToWallyHouse
# 53 "data/maps/PetalburgCity/scripts.pory"
	.2byte 0
# 54 "data/maps/PetalburgCity/scripts.pory"

# 55 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial::
# 56 "data/maps/PetalburgCity/scripts.pory"
    lockall
# 57 "data/maps/PetalburgCity/scripts.pory"
    special SavePlayerParty
# 58 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, PetalburgCity_Movement_WallyTutorialWally
# 59 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PLAYER, PetalburgCity_Movement_WallyTutorialPlayer
# 60 "data/maps/PetalburgCity/scripts.pory"
    waitmovement 0
# 61 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WatchMeCatchPokemon, MSGBOX_DEFAULT
# 62 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyIntro, MSGBOX_DEFAULT
# 63 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 64 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 65 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 66 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 67 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 68 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 69 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 70 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 71 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 72 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 73 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 74 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 75 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 76 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 77 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 78 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 79 "data/maps/PetalburgCity/scripts.pory"
    end
# 80 "data/maps/PetalburgCity/scripts.pory"

# 81 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 82 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 83 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 84 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 85 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 86 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 87 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 88 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 89 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 90 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 91 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 92 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 93 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 94 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 95 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 96 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 97 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 98 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 99 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 100 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 101 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 102 "data/maps/PetalburgCity/scripts.pory"
	end
# 103 "data/maps/PetalburgCity/scripts.pory"

# 104 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 105 "data/maps/PetalburgCity/scripts.pory"
	lock
# 106 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 107 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 108 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 109 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 110 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 111 "data/maps/PetalburgCity/scripts.pory"
	release
# 112 "data/maps/PetalburgCity/scripts.pory"
	end
# 113 "data/maps/PetalburgCity/scripts.pory"

# 114 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 115 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 116 "data/maps/PetalburgCity/scripts.pory"
	end
# 117 "data/maps/PetalburgCity/scripts.pory"

# 118 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 119 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 120 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 121 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 122 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 123 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 124 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 125 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 126 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 127 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 128 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 129 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 130 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 131 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 132 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 133 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 134 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 135 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 136 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 137 "data/maps/PetalburgCity/scripts.pory"

# 138 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 139 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 140 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 141 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 142 "data/maps/PetalburgCity/scripts.pory"

# 143 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 144 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 145 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 146 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 147 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 148 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 149 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 150 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 151 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 152 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 153 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 154 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 155 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 156 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 157 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 158 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 159 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 160 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 161 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 162 "data/maps/PetalburgCity/scripts.pory"

# 163 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 164 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 165 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 166 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 167 "data/maps/PetalburgCity/scripts.pory"

# 168 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 169 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 170 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 171 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 172 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 173 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 174 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 175 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 176 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 177 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 178 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 179 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 180 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 181 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 182 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 183 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 184 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 185 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 186 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 187 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 188 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 189 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 190 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 191 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 192 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 193 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 194 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 195 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 196 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 197 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 198 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 199 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 200 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 201 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 202 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 203 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 204 "data/maps/PetalburgCity/scripts.pory"

# 205 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 206 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 207 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 208 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 209 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 210 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 211 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 212 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 213 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 214 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 215 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 216 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 217 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 218 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 219 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 220 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 221 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 222 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 223 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 224 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 225 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 226 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 227 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 228 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 229 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 230 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 231 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 232 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 233 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 234 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 235 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 236 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 237 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 238 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 239 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 240 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 241 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 242 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 243 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 244 "data/maps/PetalburgCity/scripts.pory"

# 245 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 246 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 247 "data/maps/PetalburgCity/scripts.pory"
	end
# 248 "data/maps/PetalburgCity/scripts.pory"

# 249 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 250 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 251 "data/maps/PetalburgCity/scripts.pory"
	end
# 252 "data/maps/PetalburgCity/scripts.pory"

# 253 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 254 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 255 "data/maps/PetalburgCity/scripts.pory"
	end
# 256 "data/maps/PetalburgCity/scripts.pory"

# 257 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 258 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 259 "data/maps/PetalburgCity/scripts.pory"
	end
# 260 "data/maps/PetalburgCity/scripts.pory"

# 261 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 262 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 263 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 264 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 265 "data/maps/PetalburgCity/scripts.pory"
	end
# 266 "data/maps/PetalburgCity/scripts.pory"

# 267 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 268 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 269 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 270 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 271 "data/maps/PetalburgCity/scripts.pory"
	end
# 272 "data/maps/PetalburgCity/scripts.pory"

# 273 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 274 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 275 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 276 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 277 "data/maps/PetalburgCity/scripts.pory"
	end
# 278 "data/maps/PetalburgCity/scripts.pory"

# 279 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 280 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 281 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 282 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 283 "data/maps/PetalburgCity/scripts.pory"
	end
# 284 "data/maps/PetalburgCity/scripts.pory"

# 285 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 286 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 287 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 288 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 289 "data/maps/PetalburgCity/scripts.pory"
	playse SE_PIN
# 290 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_ExclamationMark
# 291 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 292 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_Delay48
# 293 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 294 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_BoyApproachPlayer0
# 295 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_BoyApproachPlayer1
# 296 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_BoyApproachPlayer2
# 297 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_BoyApproachPlayer3
# 298 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 299 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 300 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_LeadPlayerToGym0
# 301 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_LeadPlayerToGym1
# 302 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_LeadPlayerToGym2
# 303 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_LeadPlayerToGym3
# 304 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ThisIsPetalburgGym, MSGBOX_DEFAULT
# 305 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_WalkInPlaceFasterLeft
# 306 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 307 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 308 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ThisIsGymSign, MSGBOX_DEFAULT
# 309 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 310 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkAway
# 311 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 312 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 313 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 314 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 315 "data/maps/PetalburgCity/scripts.pory"
	end
# 316 "data/maps/PetalburgCity/scripts.pory"

# 317 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer0::
# 318 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer0
# 319 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 320 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 321 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 322 "data/maps/PetalburgCity/scripts.pory"
	return
# 323 "data/maps/PetalburgCity/scripts.pory"

# 324 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer1::
# 325 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer1
# 326 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 327 "data/maps/PetalburgCity/scripts.pory"
	return
# 328 "data/maps/PetalburgCity/scripts.pory"

# 329 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer2::
# 330 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer2
# 331 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 332 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 333 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 334 "data/maps/PetalburgCity/scripts.pory"
	return
# 335 "data/maps/PetalburgCity/scripts.pory"

# 336 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer3::
# 337 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer3
# 338 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 339 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 340 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 341 "data/maps/PetalburgCity/scripts.pory"
	return
# 342 "data/maps/PetalburgCity/scripts.pory"

# 343 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym0::
# 344 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym0
# 345 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym0
# 346 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 347 "data/maps/PetalburgCity/scripts.pory"
	return
# 348 "data/maps/PetalburgCity/scripts.pory"

# 349 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym1::
# 350 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym1
# 351 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym1
# 352 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 353 "data/maps/PetalburgCity/scripts.pory"
	return
# 354 "data/maps/PetalburgCity/scripts.pory"

# 355 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym2::
# 356 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym2
# 357 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym2
# 358 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 359 "data/maps/PetalburgCity/scripts.pory"
	return
# 360 "data/maps/PetalburgCity/scripts.pory"

# 361 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym3::
# 362 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym3
# 363 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym3
# 364 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 365 "data/maps/PetalburgCity/scripts.pory"
	return
# 366 "data/maps/PetalburgCity/scripts.pory"

# 367 "data/maps/PetalburgCity/scripts.pory"
@ Unused
# 368 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_Delay48::
# 369 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 370 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 371 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 372 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 373 "data/maps/PetalburgCity/scripts.pory"

# 374 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer0:
# 375 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 376 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 377 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 378 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 379 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 380 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 381 "data/maps/PetalburgCity/scripts.pory"

# 382 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer1:
# 383 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 384 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 385 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 386 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 387 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 388 "data/maps/PetalburgCity/scripts.pory"

# 389 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer2:
# 390 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 391 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 392 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 393 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 394 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 395 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 396 "data/maps/PetalburgCity/scripts.pory"

# 397 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer3:
# 398 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 399 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 400 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 401 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 402 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 403 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 404 "data/maps/PetalburgCity/scripts.pory"

# 405 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym0:
# 406 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 407 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 408 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 409 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 410 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 411 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 412 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 413 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 414 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 415 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 416 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 417 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 418 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 419 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 420 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 421 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 422 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 423 "data/maps/PetalburgCity/scripts.pory"

# 424 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym1:
# 425 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 426 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 427 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 428 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 429 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 430 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 431 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 432 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 433 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 434 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 435 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 436 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 437 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 438 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 439 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 440 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 441 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 442 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 443 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 444 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 445 "data/maps/PetalburgCity/scripts.pory"

# 446 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym2:
# 447 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 448 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 449 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 450 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 451 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 452 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 453 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 454 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 455 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 456 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 457 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 458 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 459 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 460 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 461 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 462 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 463 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 464 "data/maps/PetalburgCity/scripts.pory"

# 465 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym3:
# 466 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 467 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 468 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 469 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 470 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 471 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 472 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 473 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 474 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 475 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 476 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 477 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 478 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 479 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 480 "data/maps/PetalburgCity/scripts.pory"

# 481 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkAway:
# 482 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 483 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 484 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 485 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 486 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 487 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 488 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 489 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 490 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 491 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 492 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 493 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 494 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 495 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 496 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 497 "data/maps/PetalburgCity/scripts.pory"

# 498 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym0:
# 499 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 500 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 501 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 502 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 503 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 504 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 505 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 506 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 507 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 508 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 509 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 510 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 511 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 512 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 513 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 514 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 515 "data/maps/PetalburgCity/scripts.pory"

# 516 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym1:
# 517 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 518 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 519 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 520 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 521 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 522 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 523 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 524 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 525 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 526 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 527 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 528 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 529 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 530 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 532 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 533 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 534 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 535 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 536 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 537 "data/maps/PetalburgCity/scripts.pory"

# 538 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym2:
# 539 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 540 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 541 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 542 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 543 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 544 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 545 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 546 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 547 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 548 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 549 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 550 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 551 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 552 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 553 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 554 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 555 "data/maps/PetalburgCity/scripts.pory"

# 556 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym3:
# 557 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 558 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 559 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 560 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 561 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 562 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 563 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 564 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 565 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 566 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 567 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 568 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 569 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 570 "data/maps/PetalburgCity/scripts.pory"

# 571 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 572 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 573 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 574 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 575 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 10
# 576 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 577 "data/maps/PetalburgCity/scripts.pory"
	end
# 578 "data/maps/PetalburgCity/scripts.pory"

# 579 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 580 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 581 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 582 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 583 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 11
# 584 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 585 "data/maps/PetalburgCity/scripts.pory"
	end
# 586 "data/maps/PetalburgCity/scripts.pory"

# 587 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 588 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 589 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 590 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 591 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 12
# 592 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 593 "data/maps/PetalburgCity/scripts.pory"
	end
# 594 "data/maps/PetalburgCity/scripts.pory"

# 595 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 596 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 597 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 598 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 599 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 13
# 600 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 601 "data/maps/PetalburgCity/scripts.pory"
	end
# 602 "data/maps/PetalburgCity/scripts.pory"

# 603 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 604 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottStartWalkLeft
# 605 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 606 "data/maps/PetalburgCity/scripts.pory"
	playse SE_PIN
# 607 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_ExclamationMark
# 608 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 609 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_Delay48
# 610 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 611 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottApproachPlayer
# 612 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 613 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 614 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 615 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_STATE, 1
# 616 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouATrainer, MSGBOX_DEFAULT
# 617 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 618 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_WalkInPlaceFasterRight
# 619 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 620 "data/maps/PetalburgCity/scripts.pory"
	delay 30
# 621 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WellMaybeNot, MSGBOX_DEFAULT
# 622 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 623 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_WalkInPlaceFasterLeft
# 624 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 625 "data/maps/PetalburgCity/scripts.pory"
	delay 30
# 626 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ImLookingForTalentedTrainers, MSGBOX_DEFAULT
# 627 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 628 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_ScottExit0
# 629 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_ScottExit1
# 630 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_ScottExit2
# 631 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_ScottExit3
# 632 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 633 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_SCOTT
# 634 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 635 "data/maps/PetalburgCity/scripts.pory"
	end
# 636 "data/maps/PetalburgCity/scripts.pory"

# 637 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit0::
# 638 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit0
# 639 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit0
# 640 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 641 "data/maps/PetalburgCity/scripts.pory"
	return
# 642 "data/maps/PetalburgCity/scripts.pory"

# 643 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit1::
# 644 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit1
# 645 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit1
# 646 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 647 "data/maps/PetalburgCity/scripts.pory"
	return
# 648 "data/maps/PetalburgCity/scripts.pory"

# 649 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit2::
# 650 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit2
# 651 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit2
# 652 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 653 "data/maps/PetalburgCity/scripts.pory"
	return
# 654 "data/maps/PetalburgCity/scripts.pory"

# 655 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit3::
# 656 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit3
# 657 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit3
# 658 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 659 "data/maps/PetalburgCity/scripts.pory"
	return
# 660 "data/maps/PetalburgCity/scripts.pory"

# 661 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottStartWalkLeft:
# 662 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 663 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 664 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 665 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 666 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 667 "data/maps/PetalburgCity/scripts.pory"

# 668 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottApproachPlayer:
# 669 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 670 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 671 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 672 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 673 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 674 "data/maps/PetalburgCity/scripts.pory"

# 675 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit0:
# 676 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 677 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 678 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 679 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 680 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 681 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 682 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 683 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 684 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 685 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 686 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 687 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 688 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 689 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 690 "data/maps/PetalburgCity/scripts.pory"

# 691 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit0:
# 692 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 693 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 694 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 695 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 696 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 697 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 698 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 699 "data/maps/PetalburgCity/scripts.pory"

# 700 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit1:
# 701 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 702 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 703 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 704 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 705 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 706 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 707 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 708 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 709 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 710 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 711 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 712 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 713 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 714 "data/maps/PetalburgCity/scripts.pory"

# 715 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit1:
# 716 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 717 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 718 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 719 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 720 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 721 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 722 "data/maps/PetalburgCity/scripts.pory"

# 723 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit2:
# 724 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 725 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 726 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 727 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 728 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 729 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 730 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 731 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 732 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 733 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 734 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 735 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 736 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 737 "data/maps/PetalburgCity/scripts.pory"

# 738 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit2:
# 739 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 740 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 741 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 742 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 743 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 744 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 745 "data/maps/PetalburgCity/scripts.pory"

# 746 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit3:
# 747 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 748 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 749 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 750 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 751 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 752 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 753 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 754 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 755 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 756 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 757 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 758 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 759 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 760 "data/maps/PetalburgCity/scripts.pory"

# 761 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit3:
# 762 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 763 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 764 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 765 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 766 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 767 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 768 "data/maps/PetalburgCity/scripts.pory"

# 769 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 770 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 771 "data/maps/PetalburgCity/scripts.pory"
	end
# 772 "data/maps/PetalburgCity/scripts.pory"

# 773 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 774 "data/maps/PetalburgCity/scripts.pory"
	lock
# 775 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 776 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 777 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 778 "data/maps/PetalburgCity/scripts.pory"
	release
# 779 "data/maps/PetalburgCity/scripts.pory"
	end
# 780 "data/maps/PetalburgCity/scripts.pory"

# 781 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 782 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 783 "data/maps/PetalburgCity/scripts.pory"
	end	
# 784 "data/maps/PetalburgCity/scripts.pory"

# 785 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 786 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 787 "data/maps/PetalburgCity/scripts.pory"
	end
# 788 "data/maps/PetalburgCity/scripts.pory"

# 789 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 790 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 791 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 792 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 793 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach4
# 794 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 795 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 796 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 797 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 798 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 799 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 800 "data/maps/PetalburgCity/scripts.pory"
	end
# 801 "data/maps/PetalburgCity/scripts.pory"

# 802 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 803 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 804 "data/maps/PetalburgCity/scripts.pory"
	end
# 805 "data/maps/PetalburgCity/scripts.pory"

# 806 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 807 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 808 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 809 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 810 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 811 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 812 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 813 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 814 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 815 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 816 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 817 "data/maps/PetalburgCity/scripts.pory"
	end
# 818 "data/maps/PetalburgCity/scripts.pory"

# 819 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 820 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 821 "data/maps/PetalburgCity/scripts.pory"
	end
# 822 "data/maps/PetalburgCity/scripts.pory"

# 823 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 824 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 825 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 826 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 827 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 828 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 829 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 830 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 831 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 832 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 833 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 834 "data/maps/PetalburgCity/scripts.pory"
	end
# 835 "data/maps/PetalburgCity/scripts.pory"

# 836 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 837 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 838 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 839 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 840 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 841 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 842 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 843 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 844 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 845 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 846 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 847 "data/maps/PetalburgCity/scripts.pory"
	end
# 848 "data/maps/PetalburgCity/scripts.pory"

# 849 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach4:
# 850 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 851 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 852 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 853 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 854 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 855 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 856 "data/maps/PetalburgCity/scripts.pory"

# 857 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 858 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 859 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 860 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 861 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 862 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 863 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 864 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 865 "data/maps/PetalburgCity/scripts.pory"

# 866 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 867 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 868 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 869 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 870 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 871 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 872 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 873 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 874 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 875 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 876 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 877 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 878 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 879 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 880 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 881 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 882 "data/maps/PetalburgCity/scripts.pory"

# 883 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 884 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 885 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 886 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 887 "data/maps/PetalburgCity/scripts.pory"

# 888 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 889 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 890 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 891 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 892 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 893 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 894 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 895 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 896 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 897 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 898 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 899 "data/maps/PetalburgCity/scripts.pory"

# 900 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 901 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 902 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 903 "data/maps/PetalburgCity/scripts.pory"

# 904 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 905 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 906 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 907 "data/maps/PetalburgCity/scripts.pory"

# 908 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 909 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 910 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 911 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 912 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 913 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 914 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 915 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 916 "data/maps/PetalburgCity/scripts.pory"

# 917 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 918 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 919 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 920 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 921 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 922 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 923 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 924 "data/maps/PetalburgCity/scripts.pory"

# 925 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 926 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 927 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 928 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 929 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 930 "data/maps/PetalburgCity/scripts.pory"

# 931 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 932 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 933 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 934 "data/maps/PetalburgCity/scripts.pory"

# 935 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 936 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 937 "data/maps/PetalburgCity/scripts.pory"

# 938 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouATrainer:
# 939 "data/maps/PetalburgCity/scripts.pory"
    .string "Excuse me!\p"
# 940 "data/maps/PetalburgCity/scripts.pory"
    .string "Is that… your actual outfit?\n"
# 941 "data/maps/PetalburgCity/scripts.pory"
    .string "Is this the new TRAINER trend now?\p"
# 942 "data/maps/PetalburgCity/scripts.pory"
    .string "Capes, layers, and mysterious vibes…\n"
# 943 "data/maps/PetalburgCity/scripts.pory"
    .string "Guess fashion really is evolving!$"
# 944 "data/maps/PetalburgCity/scripts.pory"

# 945 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WellMaybeNot:
# 946 "data/maps/PetalburgCity/scripts.pory"
    .string "… … … … … …\p"
# 947 "data/maps/PetalburgCity/scripts.pory"
    .string "Hmm… actually, never mind.\n"
# 948 "data/maps/PetalburgCity/scripts.pory"
    .string "Your clothes look pretty worn out.\p"
# 949 "data/maps/PetalburgCity/scripts.pory"
    .string "All torn edges and old fabric…\n"
# 950 "data/maps/PetalburgCity/scripts.pory"
    .string "Like they're from another era.\p"
# 951 "data/maps/PetalburgCity/scripts.pory"
    .string "Are you a TRAINER or did you just\n"
# 952 "data/maps/PetalburgCity/scripts.pory"
    .string "crawl out of some ancient ruin?$"
# 953 "data/maps/PetalburgCity/scripts.pory"

# 954 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ImLookingForTalentedTrainers:
# 955 "data/maps/PetalburgCity/scripts.pory"
    .string "I'm traveling around because I heard\n"
# 956 "data/maps/PetalburgCity/scripts.pory"
    .string "something worrying.\p"
# 957 "data/maps/PetalburgCity/scripts.pory"
    .string "I'm searching for a truly talented\n"
# 958 "data/maps/PetalburgCity/scripts.pory"
    .string "TRAINER, someone capable.\p"
# 959 "data/maps/PetalburgCity/scripts.pory"
    .string "There's a mission I can't handle alone.\n"
# 960 "data/maps/PetalburgCity/scripts.pory"
    .string "If only I could find the right person…$"
# 961 "data/maps/PetalburgCity/scripts.pory"

# 962 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 963 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 964 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 965 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 966 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 967 "data/maps/PetalburgCity/scripts.pory"

# 968 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 969 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 970 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 971 "data/maps/PetalburgCity/scripts.pory"

# 972 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 973 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 974 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…$"
# 975 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 976 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 977 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 978 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 979 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 980 "data/maps/PetalburgCity/scripts.pory"

# 981 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 982 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 983 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 984 "data/maps/PetalburgCity/scripts.pory"

# 985 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 986 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 987 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 988 "data/maps/PetalburgCity/scripts.pory"

# 989 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 990 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 991 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 992 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 993 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 994 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 995 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 996 "data/maps/PetalburgCity/scripts.pory"

# 997 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 998 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 999 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 1000 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 1001 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 1002 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 1003 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 1004 "data/maps/PetalburgCity/scripts.pory"

# 1005 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 1006 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 1007 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 1008 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 1009 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 1010 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 1011 "data/maps/PetalburgCity/scripts.pory"

# 1012 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 1013 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 1014 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 1015 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 1016 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 1017 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 1018 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 1019 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 1020 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
