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
    setflag B_FLAG_NO_WHITEOUT
# 65 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 66 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 67 "data/maps/PetalburgCity/scripts.pory"
    @ VAR_RESULT: 1 = jogador venceu, 0 = jogador perdeu
# 68 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 69 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 70 "data/maps/PetalburgCity/scripts.pory"

# 71 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 72 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 73 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 74 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 75 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 76 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 77 "data/maps/PetalburgCity/scripts.pory"

# 78 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Defeat::
# 79 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 80 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 81 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 82 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 83 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 84 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 85 "data/maps/PetalburgCity/scripts.pory"

# 86 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 87 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 88 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 89 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 90 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 91 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 92 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 93 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 94 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 95 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 96 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 97 "data/maps/PetalburgCity/scripts.pory"
    end
# 98 "data/maps/PetalburgCity/scripts.pory"

# 99 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 100 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 101 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 102 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 103 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 104 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 105 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 106 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 107 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 108 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 109 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 110 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 111 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 112 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 113 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 114 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 115 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 116 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 117 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 118 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 119 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 120 "data/maps/PetalburgCity/scripts.pory"
	end
# 121 "data/maps/PetalburgCity/scripts.pory"

# 122 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 123 "data/maps/PetalburgCity/scripts.pory"
	lock
# 124 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 125 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 126 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 127 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 128 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 129 "data/maps/PetalburgCity/scripts.pory"
	release
# 130 "data/maps/PetalburgCity/scripts.pory"
	end
# 131 "data/maps/PetalburgCity/scripts.pory"

# 132 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 133 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 134 "data/maps/PetalburgCity/scripts.pory"
	end
# 135 "data/maps/PetalburgCity/scripts.pory"

# 136 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 137 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 138 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 139 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 140 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 141 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 142 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 143 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 144 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 145 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 146 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 147 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 148 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 149 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 150 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 151 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 152 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 153 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 154 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 155 "data/maps/PetalburgCity/scripts.pory"

# 156 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 157 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 158 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 159 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 160 "data/maps/PetalburgCity/scripts.pory"

# 161 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 162 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 163 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 164 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 165 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 166 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 167 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 168 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 169 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 170 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 171 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 172 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 173 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 174 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 175 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 176 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 177 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 178 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 179 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 180 "data/maps/PetalburgCity/scripts.pory"

# 181 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 182 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 183 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 184 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 185 "data/maps/PetalburgCity/scripts.pory"

# 186 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 187 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 188 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 189 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 190 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 191 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 192 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 193 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 194 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 195 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 196 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 197 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 198 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 199 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 200 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 201 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 202 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 203 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 204 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 205 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 206 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 207 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 208 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 209 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 210 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 211 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 212 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 213 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 214 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 215 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 216 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 217 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 218 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 219 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 220 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 221 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 222 "data/maps/PetalburgCity/scripts.pory"

# 223 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 224 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 225 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 226 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 227 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 228 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 229 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 230 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 231 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 232 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 233 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 234 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 235 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 236 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 237 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 238 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 239 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 240 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 241 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 242 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 243 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 244 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 245 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 246 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 247 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 248 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 249 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 250 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 251 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 252 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 253 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 254 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 255 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 256 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 257 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 258 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 259 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 260 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 261 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 262 "data/maps/PetalburgCity/scripts.pory"

# 263 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 264 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 265 "data/maps/PetalburgCity/scripts.pory"
	end
# 266 "data/maps/PetalburgCity/scripts.pory"

# 267 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 268 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 269 "data/maps/PetalburgCity/scripts.pory"
	end
# 270 "data/maps/PetalburgCity/scripts.pory"

# 271 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 272 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 273 "data/maps/PetalburgCity/scripts.pory"
	end
# 274 "data/maps/PetalburgCity/scripts.pory"

# 275 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 276 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 277 "data/maps/PetalburgCity/scripts.pory"
	end
# 278 "data/maps/PetalburgCity/scripts.pory"

# 279 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 280 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 281 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 282 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 283 "data/maps/PetalburgCity/scripts.pory"
	end
# 284 "data/maps/PetalburgCity/scripts.pory"

# 285 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 286 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 287 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 288 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 289 "data/maps/PetalburgCity/scripts.pory"
	end
# 290 "data/maps/PetalburgCity/scripts.pory"

# 291 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 292 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 293 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 294 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 295 "data/maps/PetalburgCity/scripts.pory"
	end
# 296 "data/maps/PetalburgCity/scripts.pory"

# 297 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 298 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 299 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 300 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 301 "data/maps/PetalburgCity/scripts.pory"
	end
# 302 "data/maps/PetalburgCity/scripts.pory"

# 303 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 304 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 305 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 306 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 307 "data/maps/PetalburgCity/scripts.pory"
	playse SE_PIN
# 308 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_ExclamationMark
# 309 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 310 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_Delay48
# 311 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 312 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_BoyApproachPlayer0
# 313 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_BoyApproachPlayer1
# 314 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_BoyApproachPlayer2
# 315 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_BoyApproachPlayer3
# 316 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 317 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 318 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_LeadPlayerToGym0
# 319 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_LeadPlayerToGym1
# 320 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_LeadPlayerToGym2
# 321 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_LeadPlayerToGym3
# 322 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ThisIsPetalburgGym, MSGBOX_DEFAULT
# 323 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_WalkInPlaceFasterLeft
# 324 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 325 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 326 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ThisIsGymSign, MSGBOX_DEFAULT
# 327 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 328 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkAway
# 329 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 330 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 331 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 332 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 333 "data/maps/PetalburgCity/scripts.pory"
	end
# 334 "data/maps/PetalburgCity/scripts.pory"

# 335 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer0::
# 336 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer0
# 337 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 338 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 339 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 340 "data/maps/PetalburgCity/scripts.pory"
	return
# 341 "data/maps/PetalburgCity/scripts.pory"

# 342 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer1::
# 343 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer1
# 344 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 345 "data/maps/PetalburgCity/scripts.pory"
	return
# 346 "data/maps/PetalburgCity/scripts.pory"

# 347 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer2::
# 348 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer2
# 349 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 350 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 351 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 352 "data/maps/PetalburgCity/scripts.pory"
	return
# 353 "data/maps/PetalburgCity/scripts.pory"

# 354 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer3::
# 355 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer3
# 356 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 357 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 358 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 359 "data/maps/PetalburgCity/scripts.pory"
	return
# 360 "data/maps/PetalburgCity/scripts.pory"

# 361 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym0::
# 362 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym0
# 363 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym0
# 364 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 365 "data/maps/PetalburgCity/scripts.pory"
	return
# 366 "data/maps/PetalburgCity/scripts.pory"

# 367 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym1::
# 368 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym1
# 369 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym1
# 370 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 371 "data/maps/PetalburgCity/scripts.pory"
	return
# 372 "data/maps/PetalburgCity/scripts.pory"

# 373 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym2::
# 374 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym2
# 375 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym2
# 376 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 377 "data/maps/PetalburgCity/scripts.pory"
	return
# 378 "data/maps/PetalburgCity/scripts.pory"

# 379 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym3::
# 380 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym3
# 381 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym3
# 382 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 383 "data/maps/PetalburgCity/scripts.pory"
	return
# 384 "data/maps/PetalburgCity/scripts.pory"

# 385 "data/maps/PetalburgCity/scripts.pory"
@ Unused
# 386 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_Delay48::
# 387 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 388 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 389 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 390 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 391 "data/maps/PetalburgCity/scripts.pory"

# 392 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer0:
# 393 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 394 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 395 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 396 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 397 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 398 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 399 "data/maps/PetalburgCity/scripts.pory"

# 400 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer1:
# 401 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 402 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 403 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 404 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 405 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 406 "data/maps/PetalburgCity/scripts.pory"

# 407 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer2:
# 408 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 409 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 410 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 411 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 412 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 413 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 414 "data/maps/PetalburgCity/scripts.pory"

# 415 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer3:
# 416 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 417 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 418 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 419 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 420 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 421 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 422 "data/maps/PetalburgCity/scripts.pory"

# 423 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym0:
# 424 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 425 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 426 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 427 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 428 "data/maps/PetalburgCity/scripts.pory"
	walk_right
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
	walk_up
# 435 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 436 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 437 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 438 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 439 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 440 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 441 "data/maps/PetalburgCity/scripts.pory"

# 442 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym1:
# 443 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 444 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 445 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 446 "data/maps/PetalburgCity/scripts.pory"
	walk_up
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
	walk_up
# 456 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 457 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 458 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 459 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 460 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 461 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 462 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 463 "data/maps/PetalburgCity/scripts.pory"

# 464 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym2:
# 465 "data/maps/PetalburgCity/scripts.pory"
	walk_right
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
	walk_up
# 475 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 476 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 477 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 478 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 479 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 480 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 481 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 482 "data/maps/PetalburgCity/scripts.pory"

# 483 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym3:
# 484 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 485 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 486 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 487 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 488 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 489 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 490 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 491 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 492 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 493 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 494 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 495 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 496 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 497 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 498 "data/maps/PetalburgCity/scripts.pory"

# 499 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkAway:
# 500 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 501 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 502 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 503 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 504 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 505 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 506 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 507 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 508 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 509 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 510 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 511 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 512 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 513 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 514 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 515 "data/maps/PetalburgCity/scripts.pory"

# 516 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym0:
# 517 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 518 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 519 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 520 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 521 "data/maps/PetalburgCity/scripts.pory"
	walk_right
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
	walk_up
# 529 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 530 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 532 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 533 "data/maps/PetalburgCity/scripts.pory"

# 534 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym1:
# 535 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 536 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 537 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 538 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 539 "data/maps/PetalburgCity/scripts.pory"
	delay_16
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
	walk_right
# 550 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 551 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 552 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 553 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 554 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 555 "data/maps/PetalburgCity/scripts.pory"

# 556 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym2:
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
	walk_right
# 570 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 571 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 572 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 573 "data/maps/PetalburgCity/scripts.pory"

# 574 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym3:
# 575 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 576 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 577 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 578 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 579 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 580 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 581 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 582 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 583 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 584 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 585 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 586 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 587 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 588 "data/maps/PetalburgCity/scripts.pory"

# 589 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 590 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 591 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 592 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 593 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 10
# 594 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 595 "data/maps/PetalburgCity/scripts.pory"
	end
# 596 "data/maps/PetalburgCity/scripts.pory"

# 597 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 598 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 599 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 600 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 601 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 11
# 602 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 603 "data/maps/PetalburgCity/scripts.pory"
	end
# 604 "data/maps/PetalburgCity/scripts.pory"

# 605 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 606 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 607 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 608 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 609 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 12
# 610 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 611 "data/maps/PetalburgCity/scripts.pory"
	end
# 612 "data/maps/PetalburgCity/scripts.pory"

# 613 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 614 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 615 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 616 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 617 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 13
# 618 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 619 "data/maps/PetalburgCity/scripts.pory"
	end
# 620 "data/maps/PetalburgCity/scripts.pory"

# 621 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 622 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottStartWalkLeft
# 623 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 624 "data/maps/PetalburgCity/scripts.pory"
	playse SE_PIN
# 625 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_ExclamationMark
# 626 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 627 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_Delay48
# 628 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 629 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottApproachPlayer
# 630 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 631 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 632 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 633 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_STATE, 1
# 634 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouATrainer, MSGBOX_DEFAULT
# 635 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 636 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_WalkInPlaceFasterRight
# 637 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 638 "data/maps/PetalburgCity/scripts.pory"
	delay 30
# 639 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WellMaybeNot, MSGBOX_DEFAULT
# 640 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 641 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_WalkInPlaceFasterLeft
# 642 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 643 "data/maps/PetalburgCity/scripts.pory"
	delay 30
# 644 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ImLookingForTalentedTrainers, MSGBOX_DEFAULT
# 645 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 646 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_ScottExit0
# 647 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_ScottExit1
# 648 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_ScottExit2
# 649 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_ScottExit3
# 650 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 651 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_SCOTT
# 652 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 653 "data/maps/PetalburgCity/scripts.pory"
	end
# 654 "data/maps/PetalburgCity/scripts.pory"

# 655 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit0::
# 656 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit0
# 657 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit0
# 658 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 659 "data/maps/PetalburgCity/scripts.pory"
	return
# 660 "data/maps/PetalburgCity/scripts.pory"

# 661 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit1::
# 662 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit1
# 663 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit1
# 664 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 665 "data/maps/PetalburgCity/scripts.pory"
	return
# 666 "data/maps/PetalburgCity/scripts.pory"

# 667 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit2::
# 668 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit2
# 669 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit2
# 670 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 671 "data/maps/PetalburgCity/scripts.pory"
	return
# 672 "data/maps/PetalburgCity/scripts.pory"

# 673 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit3::
# 674 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit3
# 675 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit3
# 676 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 677 "data/maps/PetalburgCity/scripts.pory"
	return
# 678 "data/maps/PetalburgCity/scripts.pory"

# 679 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottStartWalkLeft:
# 680 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 681 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 682 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 683 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 684 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 685 "data/maps/PetalburgCity/scripts.pory"

# 686 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottApproachPlayer:
# 687 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 688 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 689 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 690 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 691 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 692 "data/maps/PetalburgCity/scripts.pory"

# 693 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit0:
# 694 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 695 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 696 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 697 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 698 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 699 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 700 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 701 "data/maps/PetalburgCity/scripts.pory"
	walk_left
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
	step_end
# 708 "data/maps/PetalburgCity/scripts.pory"

# 709 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit0:
# 710 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 711 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 712 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 713 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 714 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 715 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 716 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 717 "data/maps/PetalburgCity/scripts.pory"

# 718 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit1:
# 719 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 720 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 721 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 722 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 723 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 724 "data/maps/PetalburgCity/scripts.pory"
	walk_left
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
	step_end
# 732 "data/maps/PetalburgCity/scripts.pory"

# 733 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit1:
# 734 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 735 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 736 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 737 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 738 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 739 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 740 "data/maps/PetalburgCity/scripts.pory"

# 741 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit2:
# 742 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 743 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 744 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 745 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 746 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 747 "data/maps/PetalburgCity/scripts.pory"
	walk_left
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
	step_end
# 755 "data/maps/PetalburgCity/scripts.pory"

# 756 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit2:
# 757 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 758 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 759 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 760 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 761 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 762 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 763 "data/maps/PetalburgCity/scripts.pory"

# 764 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit3:
# 765 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 766 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 767 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 768 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 769 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 770 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 771 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 772 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 773 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 774 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 775 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 776 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 777 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 778 "data/maps/PetalburgCity/scripts.pory"

# 779 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit3:
# 780 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 781 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 782 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 783 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 784 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 785 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 786 "data/maps/PetalburgCity/scripts.pory"

# 787 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 788 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 789 "data/maps/PetalburgCity/scripts.pory"
	end
# 790 "data/maps/PetalburgCity/scripts.pory"

# 791 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 792 "data/maps/PetalburgCity/scripts.pory"
	lock
# 793 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 794 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 795 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 796 "data/maps/PetalburgCity/scripts.pory"
	release
# 797 "data/maps/PetalburgCity/scripts.pory"
	end
# 798 "data/maps/PetalburgCity/scripts.pory"

# 799 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 800 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 801 "data/maps/PetalburgCity/scripts.pory"
	end	
# 802 "data/maps/PetalburgCity/scripts.pory"

# 803 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 804 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 805 "data/maps/PetalburgCity/scripts.pory"
	end
# 806 "data/maps/PetalburgCity/scripts.pory"

# 807 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 808 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 809 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 810 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 811 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach4
# 812 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 813 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 814 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 815 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 816 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 817 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 818 "data/maps/PetalburgCity/scripts.pory"
	end
# 819 "data/maps/PetalburgCity/scripts.pory"

# 820 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 821 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 822 "data/maps/PetalburgCity/scripts.pory"
	end
# 823 "data/maps/PetalburgCity/scripts.pory"

# 824 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 825 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 826 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 827 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 828 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 829 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 830 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 831 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 832 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 833 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 834 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 835 "data/maps/PetalburgCity/scripts.pory"
	end
# 836 "data/maps/PetalburgCity/scripts.pory"

# 837 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 838 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 839 "data/maps/PetalburgCity/scripts.pory"
	end
# 840 "data/maps/PetalburgCity/scripts.pory"

# 841 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 842 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 843 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 844 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 845 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 846 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 847 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 848 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 849 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 850 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 851 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 852 "data/maps/PetalburgCity/scripts.pory"
	end
# 853 "data/maps/PetalburgCity/scripts.pory"

# 854 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 855 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 856 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 857 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 858 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 859 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 860 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 861 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 862 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 863 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 864 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 865 "data/maps/PetalburgCity/scripts.pory"
	end
# 866 "data/maps/PetalburgCity/scripts.pory"

# 867 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach4:
# 868 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 869 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 870 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 871 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 872 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 873 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 874 "data/maps/PetalburgCity/scripts.pory"

# 875 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 876 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 877 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 878 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 879 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 880 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 881 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 882 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 883 "data/maps/PetalburgCity/scripts.pory"

# 884 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 885 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 886 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 887 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 888 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 889 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 890 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 891 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 892 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 893 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 894 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 895 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 896 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 897 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 898 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 899 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 900 "data/maps/PetalburgCity/scripts.pory"

# 901 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 902 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 903 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 904 "data/maps/PetalburgCity/scripts.pory"

# 905 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 906 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 907 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 908 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 909 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 910 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 911 "data/maps/PetalburgCity/scripts.pory"

# 912 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 913 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 914 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 915 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 916 "data/maps/PetalburgCity/scripts.pory"

# 917 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 918 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 919 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 920 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 921 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 922 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 923 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 924 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 925 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 926 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 927 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 928 "data/maps/PetalburgCity/scripts.pory"

# 929 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 930 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 931 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 932 "data/maps/PetalburgCity/scripts.pory"

# 933 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 934 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 935 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 936 "data/maps/PetalburgCity/scripts.pory"

# 937 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 938 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 939 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 940 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 941 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 942 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 943 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 944 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 945 "data/maps/PetalburgCity/scripts.pory"

# 946 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 947 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 948 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 949 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 950 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 951 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 952 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 953 "data/maps/PetalburgCity/scripts.pory"

# 954 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 955 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 956 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 957 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 958 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 959 "data/maps/PetalburgCity/scripts.pory"

# 960 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 961 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 962 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 963 "data/maps/PetalburgCity/scripts.pory"

# 964 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 965 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 966 "data/maps/PetalburgCity/scripts.pory"

# 967 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouATrainer:
# 968 "data/maps/PetalburgCity/scripts.pory"
    .string "Excuse me!\p"
# 969 "data/maps/PetalburgCity/scripts.pory"
    .string "Is that… your actual outfit?\n"
# 970 "data/maps/PetalburgCity/scripts.pory"
    .string "Is this the new TRAINER trend now?\p"
# 971 "data/maps/PetalburgCity/scripts.pory"
    .string "Capes, layers, and mysterious vibes…\n"
# 972 "data/maps/PetalburgCity/scripts.pory"
    .string "Guess fashion really is evolving!$"
# 973 "data/maps/PetalburgCity/scripts.pory"

# 974 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WellMaybeNot:
# 975 "data/maps/PetalburgCity/scripts.pory"
    .string "… … … … … …\p"
# 976 "data/maps/PetalburgCity/scripts.pory"
    .string "Hmm… actually, never mind.\n"
# 977 "data/maps/PetalburgCity/scripts.pory"
    .string "Your clothes look pretty worn out.\p"
# 978 "data/maps/PetalburgCity/scripts.pory"
    .string "All torn edges and old fabric…\n"
# 979 "data/maps/PetalburgCity/scripts.pory"
    .string "Like they're from another era.\p"
# 980 "data/maps/PetalburgCity/scripts.pory"
    .string "Are you a TRAINER or did you just\n"
# 981 "data/maps/PetalburgCity/scripts.pory"
    .string "crawl out of some ancient ruin?$"
# 982 "data/maps/PetalburgCity/scripts.pory"

# 983 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ImLookingForTalentedTrainers:
# 984 "data/maps/PetalburgCity/scripts.pory"
    .string "I'm traveling around because I heard\n"
# 985 "data/maps/PetalburgCity/scripts.pory"
    .string "something worrying.\p"
# 986 "data/maps/PetalburgCity/scripts.pory"
    .string "I'm searching for a truly talented\n"
# 987 "data/maps/PetalburgCity/scripts.pory"
    .string "TRAINER, someone capable.\p"
# 988 "data/maps/PetalburgCity/scripts.pory"
    .string "There's a mission I can't handle alone.\n"
# 989 "data/maps/PetalburgCity/scripts.pory"
    .string "If only I could find the right person…$"
# 990 "data/maps/PetalburgCity/scripts.pory"

# 991 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 992 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 993 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 994 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 995 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 996 "data/maps/PetalburgCity/scripts.pory"

# 997 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 998 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 999 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 1000 "data/maps/PetalburgCity/scripts.pory"

# 1001 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 1002 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 1003 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…$"
# 1004 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 1005 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 1006 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 1007 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 1008 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 1009 "data/maps/PetalburgCity/scripts.pory"

# 1010 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 1011 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 1012 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 1013 "data/maps/PetalburgCity/scripts.pory"

# 1014 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 1015 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 1016 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 1017 "data/maps/PetalburgCity/scripts.pory"

# 1018 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 1019 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 1020 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 1021 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 1022 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 1023 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 1024 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 1025 "data/maps/PetalburgCity/scripts.pory"

# 1026 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 1027 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 1028 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 1029 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 1030 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 1031 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 1032 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 1033 "data/maps/PetalburgCity/scripts.pory"

# 1034 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 1035 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 1036 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 1037 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 1038 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 1039 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 1040 "data/maps/PetalburgCity/scripts.pory"

# 1041 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 1042 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 1043 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 1044 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 1045 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 1046 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 1047 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 1048 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 1049 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
