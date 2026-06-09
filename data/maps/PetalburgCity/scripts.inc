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
    setflag B_FLAG_NO_RUNNING
# 66 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 67 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 68 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 69 "data/maps/PetalburgCity/scripts.pory"
    @ VAR_RESULT: 1 = jogador venceu, 0 = jogador perdeu
# 70 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 71 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 72 "data/maps/PetalburgCity/scripts.pory"

# 73 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 74 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 75 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 76 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 77 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 78 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 79 "data/maps/PetalburgCity/scripts.pory"

# 80 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Defeat::
# 81 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 82 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 83 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 84 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 85 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 86 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 87 "data/maps/PetalburgCity/scripts.pory"

# 88 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 89 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 90 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 91 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 92 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 93 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 94 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 95 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 96 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 97 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 98 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 99 "data/maps/PetalburgCity/scripts.pory"
    end
# 100 "data/maps/PetalburgCity/scripts.pory"

# 101 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 102 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 103 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 104 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 105 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 106 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 107 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 108 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 109 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 110 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 111 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 112 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 113 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 114 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 115 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 116 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 117 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 118 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 119 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 120 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 121 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 122 "data/maps/PetalburgCity/scripts.pory"
	end
# 123 "data/maps/PetalburgCity/scripts.pory"

# 124 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 125 "data/maps/PetalburgCity/scripts.pory"
	lock
# 126 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 127 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 128 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 129 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 130 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 131 "data/maps/PetalburgCity/scripts.pory"
	release
# 132 "data/maps/PetalburgCity/scripts.pory"
	end
# 133 "data/maps/PetalburgCity/scripts.pory"

# 134 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 135 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 136 "data/maps/PetalburgCity/scripts.pory"
	end
# 137 "data/maps/PetalburgCity/scripts.pory"

# 138 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 139 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 140 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 141 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 142 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 150 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 151 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 152 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 153 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 154 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 155 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 156 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 157 "data/maps/PetalburgCity/scripts.pory"

# 158 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 159 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 160 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 161 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 162 "data/maps/PetalburgCity/scripts.pory"

# 163 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 164 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 165 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 166 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 174 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 175 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 176 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 177 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 178 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 179 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 180 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 181 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 182 "data/maps/PetalburgCity/scripts.pory"

# 183 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 184 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 185 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 186 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 187 "data/maps/PetalburgCity/scripts.pory"

# 188 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 189 "data/maps/PetalburgCity/scripts.pory"
	delay_8
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
	walk_down
# 199 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_right
# 219 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 220 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 221 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 222 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 223 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 224 "data/maps/PetalburgCity/scripts.pory"

# 225 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 226 "data/maps/PetalburgCity/scripts.pory"
	delay_8
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
	walk_down
# 235 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_right
# 255 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 256 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 257 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 258 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 259 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 260 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 261 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 262 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 263 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 264 "data/maps/PetalburgCity/scripts.pory"

# 265 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 266 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 267 "data/maps/PetalburgCity/scripts.pory"
	end
# 268 "data/maps/PetalburgCity/scripts.pory"

# 269 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 270 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 271 "data/maps/PetalburgCity/scripts.pory"
	end
# 272 "data/maps/PetalburgCity/scripts.pory"

# 273 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 274 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 275 "data/maps/PetalburgCity/scripts.pory"
	end
# 276 "data/maps/PetalburgCity/scripts.pory"

# 277 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 278 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 279 "data/maps/PetalburgCity/scripts.pory"
	end
# 280 "data/maps/PetalburgCity/scripts.pory"

# 281 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 282 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 283 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 284 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 285 "data/maps/PetalburgCity/scripts.pory"
	end
# 286 "data/maps/PetalburgCity/scripts.pory"

# 287 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 288 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 289 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 290 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 291 "data/maps/PetalburgCity/scripts.pory"
	end
# 292 "data/maps/PetalburgCity/scripts.pory"

# 293 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 294 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 295 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 296 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 297 "data/maps/PetalburgCity/scripts.pory"
	end
# 298 "data/maps/PetalburgCity/scripts.pory"

# 299 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 300 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 301 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 302 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 303 "data/maps/PetalburgCity/scripts.pory"
	end
# 304 "data/maps/PetalburgCity/scripts.pory"

# 305 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 306 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 307 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 308 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 309 "data/maps/PetalburgCity/scripts.pory"
	playse SE_PIN
# 310 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_ExclamationMark
# 311 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 312 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_Delay48
# 313 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 314 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_BoyApproachPlayer0
# 315 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_BoyApproachPlayer1
# 316 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_BoyApproachPlayer2
# 317 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_BoyApproachPlayer3
# 318 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 319 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 320 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_LeadPlayerToGym0
# 321 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_LeadPlayerToGym1
# 322 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_LeadPlayerToGym2
# 323 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_LeadPlayerToGym3
# 324 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ThisIsPetalburgGym, MSGBOX_DEFAULT
# 325 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_WalkInPlaceFasterLeft
# 326 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 327 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 328 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ThisIsGymSign, MSGBOX_DEFAULT
# 329 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 330 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkAway
# 331 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 332 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 333 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 334 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 335 "data/maps/PetalburgCity/scripts.pory"
	end
# 336 "data/maps/PetalburgCity/scripts.pory"

# 337 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer0::
# 338 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer0
# 339 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 340 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 341 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 342 "data/maps/PetalburgCity/scripts.pory"
	return
# 343 "data/maps/PetalburgCity/scripts.pory"

# 344 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer1::
# 345 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer1
# 346 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 347 "data/maps/PetalburgCity/scripts.pory"
	return
# 348 "data/maps/PetalburgCity/scripts.pory"

# 349 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer2::
# 350 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer2
# 351 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 352 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 353 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 354 "data/maps/PetalburgCity/scripts.pory"
	return
# 355 "data/maps/PetalburgCity/scripts.pory"

# 356 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_BoyApproachPlayer3::
# 357 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyApproachPlayer3
# 358 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 359 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 360 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 361 "data/maps/PetalburgCity/scripts.pory"
	return
# 362 "data/maps/PetalburgCity/scripts.pory"

# 363 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym0::
# 364 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym0
# 365 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym0
# 366 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 367 "data/maps/PetalburgCity/scripts.pory"
	return
# 368 "data/maps/PetalburgCity/scripts.pory"

# 369 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym1::
# 370 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym1
# 371 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym1
# 372 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 373 "data/maps/PetalburgCity/scripts.pory"
	return
# 374 "data/maps/PetalburgCity/scripts.pory"

# 375 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym2::
# 376 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym2
# 377 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym2
# 378 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 379 "data/maps/PetalburgCity/scripts.pory"
	return
# 380 "data/maps/PetalburgCity/scripts.pory"

# 381 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LeadPlayerToGym3::
# 382 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, PetalburgCity_Movement_BoyWalkToGym3
# 383 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWalkToGym3
# 384 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 385 "data/maps/PetalburgCity/scripts.pory"
	return
# 386 "data/maps/PetalburgCity/scripts.pory"

# 387 "data/maps/PetalburgCity/scripts.pory"
@ Unused
# 388 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_Delay48::
# 389 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 390 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 391 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 392 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 393 "data/maps/PetalburgCity/scripts.pory"

# 394 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer0:
# 395 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 396 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 397 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 398 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 399 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 400 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 401 "data/maps/PetalburgCity/scripts.pory"

# 402 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer1:
# 403 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 404 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 405 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 406 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 407 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 408 "data/maps/PetalburgCity/scripts.pory"

# 409 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer2:
# 410 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 411 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 412 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 413 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 414 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 415 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 416 "data/maps/PetalburgCity/scripts.pory"

# 417 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyApproachPlayer3:
# 418 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 419 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 420 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 421 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 422 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 423 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 424 "data/maps/PetalburgCity/scripts.pory"

# 425 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym0:
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
	walk_right
# 435 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 436 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 437 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 438 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 439 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 440 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 441 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 442 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 443 "data/maps/PetalburgCity/scripts.pory"

# 444 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym1:
# 445 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 446 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 447 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 448 "data/maps/PetalburgCity/scripts.pory"
	walk_up
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
	walk_right
# 457 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 458 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 459 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 460 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 461 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 462 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 463 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 464 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 465 "data/maps/PetalburgCity/scripts.pory"

# 466 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym2:
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
	walk_right
# 476 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 477 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 478 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 479 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 480 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 481 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 482 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 483 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 484 "data/maps/PetalburgCity/scripts.pory"

# 485 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkToGym3:
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
	walk_right
# 494 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 495 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 496 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 497 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 498 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 499 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 500 "data/maps/PetalburgCity/scripts.pory"

# 501 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_BoyWalkAway:
# 502 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 503 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 504 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 505 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 506 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 515 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 516 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 517 "data/maps/PetalburgCity/scripts.pory"

# 518 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym0:
# 519 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_right
# 529 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 530 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 532 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 533 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 534 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 535 "data/maps/PetalburgCity/scripts.pory"

# 536 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym1:
# 537 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 538 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 539 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 540 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 541 "data/maps/PetalburgCity/scripts.pory"
	delay_16
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
	walk_right
# 551 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 552 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 553 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 554 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 555 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 556 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 557 "data/maps/PetalburgCity/scripts.pory"

# 558 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym2:
# 559 "data/maps/PetalburgCity/scripts.pory"
	walk_up
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
	walk_right
# 568 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 569 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 570 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 571 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 572 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 573 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 574 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 575 "data/maps/PetalburgCity/scripts.pory"

# 576 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWalkToGym3:
# 577 "data/maps/PetalburgCity/scripts.pory"
	walk_up
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
	walk_right
# 586 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 587 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 588 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 589 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 590 "data/maps/PetalburgCity/scripts.pory"

# 591 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 592 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 593 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 594 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 595 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 10
# 596 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 597 "data/maps/PetalburgCity/scripts.pory"
	end
# 598 "data/maps/PetalburgCity/scripts.pory"

# 599 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 600 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 601 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 602 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 603 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 11
# 604 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 605 "data/maps/PetalburgCity/scripts.pory"
	end
# 606 "data/maps/PetalburgCity/scripts.pory"

# 607 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 608 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 609 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 610 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 611 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 12
# 612 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 613 "data/maps/PetalburgCity/scripts.pory"
	end
# 614 "data/maps/PetalburgCity/scripts.pory"

# 615 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 616 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 617 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 618 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 619 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_SCOTT, 13, 13
# 620 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 621 "data/maps/PetalburgCity/scripts.pory"
	end
# 622 "data/maps/PetalburgCity/scripts.pory"

# 623 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 624 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottStartWalkLeft
# 625 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 626 "data/maps/PetalburgCity/scripts.pory"
	playse SE_PIN
# 627 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_ExclamationMark
# 628 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 629 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_Delay48
# 630 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 631 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottApproachPlayer
# 632 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 633 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 634 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 635 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_STATE, 1
# 636 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouATrainer, MSGBOX_DEFAULT
# 637 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 638 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_WalkInPlaceFasterRight
# 639 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 640 "data/maps/PetalburgCity/scripts.pory"
	delay 30
# 641 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WellMaybeNot, MSGBOX_DEFAULT
# 642 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 643 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, Common_Movement_WalkInPlaceFasterLeft
# 644 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 645 "data/maps/PetalburgCity/scripts.pory"
	delay 30
# 646 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_ImLookingForTalentedTrainers, MSGBOX_DEFAULT
# 647 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 648 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_EventScript_ScottExit0
# 649 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_EventScript_ScottExit1
# 650 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_EventScript_ScottExit2
# 651 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_EventScript_ScottExit3
# 652 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 653 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_SCOTT
# 654 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 655 "data/maps/PetalburgCity/scripts.pory"
	end
# 656 "data/maps/PetalburgCity/scripts.pory"

# 657 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit0::
# 658 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit0
# 659 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit0
# 660 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 661 "data/maps/PetalburgCity/scripts.pory"
	return
# 662 "data/maps/PetalburgCity/scripts.pory"

# 663 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit1::
# 664 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit1
# 665 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit1
# 666 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 667 "data/maps/PetalburgCity/scripts.pory"
	return
# 668 "data/maps/PetalburgCity/scripts.pory"

# 669 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit2::
# 670 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit2
# 671 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit2
# 672 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 673 "data/maps/PetalburgCity/scripts.pory"
	return
# 674 "data/maps/PetalburgCity/scripts.pory"

# 675 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ScottExit3::
# 676 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_PlayerWatchScottExit3
# 677 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_SCOTT, PetalburgCity_Movement_ScottExit3
# 678 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 679 "data/maps/PetalburgCity/scripts.pory"
	return
# 680 "data/maps/PetalburgCity/scripts.pory"

# 681 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottStartWalkLeft:
# 682 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 683 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 684 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 685 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 686 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 687 "data/maps/PetalburgCity/scripts.pory"

# 688 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottApproachPlayer:
# 689 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 690 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 691 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 692 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 693 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 694 "data/maps/PetalburgCity/scripts.pory"

# 695 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit0:
# 696 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 697 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 708 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 709 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 710 "data/maps/PetalburgCity/scripts.pory"

# 711 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit0:
# 712 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 713 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 714 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 715 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 716 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 717 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 718 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 719 "data/maps/PetalburgCity/scripts.pory"

# 720 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit1:
# 721 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 732 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 733 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 734 "data/maps/PetalburgCity/scripts.pory"

# 735 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit1:
# 736 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 737 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 738 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 739 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 740 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 741 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 742 "data/maps/PetalburgCity/scripts.pory"

# 743 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit2:
# 744 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 755 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 756 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 757 "data/maps/PetalburgCity/scripts.pory"

# 758 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit2:
# 759 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 760 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 761 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 762 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 763 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 764 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 765 "data/maps/PetalburgCity/scripts.pory"

# 766 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ScottExit3:
# 767 "data/maps/PetalburgCity/scripts.pory"
	walk_up
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
	walk_left
# 778 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 779 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 780 "data/maps/PetalburgCity/scripts.pory"

# 781 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_PlayerWatchScottExit3:
# 782 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 783 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 784 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 785 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 786 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 787 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 788 "data/maps/PetalburgCity/scripts.pory"

# 789 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 790 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 791 "data/maps/PetalburgCity/scripts.pory"
	end
# 792 "data/maps/PetalburgCity/scripts.pory"

# 793 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 794 "data/maps/PetalburgCity/scripts.pory"
	lock
# 795 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 796 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 797 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 798 "data/maps/PetalburgCity/scripts.pory"
	release
# 799 "data/maps/PetalburgCity/scripts.pory"
	end
# 800 "data/maps/PetalburgCity/scripts.pory"

# 801 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 802 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 803 "data/maps/PetalburgCity/scripts.pory"
	end	
# 804 "data/maps/PetalburgCity/scripts.pory"

# 805 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 806 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 807 "data/maps/PetalburgCity/scripts.pory"
	end
# 808 "data/maps/PetalburgCity/scripts.pory"

# 809 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 810 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 811 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 812 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 813 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach4
# 814 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 815 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 816 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 817 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 818 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 819 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 820 "data/maps/PetalburgCity/scripts.pory"
	end
# 821 "data/maps/PetalburgCity/scripts.pory"

# 822 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 823 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 824 "data/maps/PetalburgCity/scripts.pory"
	end
# 825 "data/maps/PetalburgCity/scripts.pory"

# 826 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 827 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 828 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 829 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 830 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 831 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 832 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 833 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 834 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 835 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 836 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 837 "data/maps/PetalburgCity/scripts.pory"
	end
# 838 "data/maps/PetalburgCity/scripts.pory"

# 839 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 840 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 841 "data/maps/PetalburgCity/scripts.pory"
	end
# 842 "data/maps/PetalburgCity/scripts.pory"

# 843 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 844 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 845 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 846 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 847 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 848 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 849 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 850 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 851 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 852 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 853 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 854 "data/maps/PetalburgCity/scripts.pory"
	end
# 855 "data/maps/PetalburgCity/scripts.pory"

# 856 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 857 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 858 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 859 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 860 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 861 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 862 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 863 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 864 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 865 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 866 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 867 "data/maps/PetalburgCity/scripts.pory"
	end
# 868 "data/maps/PetalburgCity/scripts.pory"

# 869 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach4:
# 870 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 871 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 872 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 873 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 874 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 875 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 876 "data/maps/PetalburgCity/scripts.pory"

# 877 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 878 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 879 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 880 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 881 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 882 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 883 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_down
# 884 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 885 "data/maps/PetalburgCity/scripts.pory"

# 886 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 887 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 888 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 889 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 890 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 891 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
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
	walk_fast_left
# 899 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 900 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 901 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 902 "data/maps/PetalburgCity/scripts.pory"

# 903 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 904 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 905 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 906 "data/maps/PetalburgCity/scripts.pory"

# 907 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 908 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 909 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 910 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 911 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 912 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 913 "data/maps/PetalburgCity/scripts.pory"

# 914 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 915 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 916 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 917 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 918 "data/maps/PetalburgCity/scripts.pory"

# 919 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 920 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 921 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 922 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 923 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 924 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 925 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 926 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 927 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 928 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 929 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 930 "data/maps/PetalburgCity/scripts.pory"

# 931 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 932 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 933 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 934 "data/maps/PetalburgCity/scripts.pory"

# 935 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 936 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 937 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 938 "data/maps/PetalburgCity/scripts.pory"

# 939 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 940 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 941 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 942 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 943 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 944 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 945 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 946 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 947 "data/maps/PetalburgCity/scripts.pory"

# 948 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 949 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 950 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 951 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 952 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 953 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 954 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 955 "data/maps/PetalburgCity/scripts.pory"

# 956 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 957 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 958 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 959 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 960 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 961 "data/maps/PetalburgCity/scripts.pory"

# 962 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 963 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 964 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 965 "data/maps/PetalburgCity/scripts.pory"

# 966 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 967 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 968 "data/maps/PetalburgCity/scripts.pory"

# 969 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouATrainer:
# 970 "data/maps/PetalburgCity/scripts.pory"
    .string "Excuse me!\p"
# 971 "data/maps/PetalburgCity/scripts.pory"
    .string "Is that… your actual outfit?\n"
# 972 "data/maps/PetalburgCity/scripts.pory"
    .string "Is this the new TRAINER trend now?\p"
# 973 "data/maps/PetalburgCity/scripts.pory"
    .string "Capes, layers, and mysterious vibes…\n"
# 974 "data/maps/PetalburgCity/scripts.pory"
    .string "Guess fashion really is evolving!$"
# 975 "data/maps/PetalburgCity/scripts.pory"

# 976 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WellMaybeNot:
# 977 "data/maps/PetalburgCity/scripts.pory"
    .string "… … … … … …\p"
# 978 "data/maps/PetalburgCity/scripts.pory"
    .string "Hmm… actually, never mind.\n"
# 979 "data/maps/PetalburgCity/scripts.pory"
    .string "Your clothes look pretty worn out.\p"
# 980 "data/maps/PetalburgCity/scripts.pory"
    .string "All torn edges and old fabric…\n"
# 981 "data/maps/PetalburgCity/scripts.pory"
    .string "Like they're from another era.\p"
# 982 "data/maps/PetalburgCity/scripts.pory"
    .string "Are you a TRAINER or did you just\n"
# 983 "data/maps/PetalburgCity/scripts.pory"
    .string "crawl out of some ancient ruin?$"
# 984 "data/maps/PetalburgCity/scripts.pory"

# 985 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ImLookingForTalentedTrainers:
# 986 "data/maps/PetalburgCity/scripts.pory"
    .string "I'm traveling around because I heard\n"
# 987 "data/maps/PetalburgCity/scripts.pory"
    .string "something worrying.\p"
# 988 "data/maps/PetalburgCity/scripts.pory"
    .string "I'm searching for a truly talented\n"
# 989 "data/maps/PetalburgCity/scripts.pory"
    .string "TRAINER, someone capable.\p"
# 990 "data/maps/PetalburgCity/scripts.pory"
    .string "There's a mission I can't handle alone.\n"
# 991 "data/maps/PetalburgCity/scripts.pory"
    .string "If only I could find the right person…$"
# 992 "data/maps/PetalburgCity/scripts.pory"

# 993 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 994 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 995 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 996 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 997 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 998 "data/maps/PetalburgCity/scripts.pory"

# 999 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 1000 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 1001 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 1002 "data/maps/PetalburgCity/scripts.pory"

# 1003 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 1004 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 1005 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…$"
# 1006 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 1007 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 1008 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 1009 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 1010 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 1011 "data/maps/PetalburgCity/scripts.pory"

# 1012 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 1013 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 1014 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 1015 "data/maps/PetalburgCity/scripts.pory"

# 1016 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 1017 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 1018 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 1019 "data/maps/PetalburgCity/scripts.pory"

# 1020 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 1021 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 1022 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 1023 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 1024 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 1025 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 1026 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 1027 "data/maps/PetalburgCity/scripts.pory"

# 1028 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 1029 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 1030 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 1031 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 1032 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 1033 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 1034 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 1035 "data/maps/PetalburgCity/scripts.pory"

# 1036 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 1037 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 1038 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 1039 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 1040 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 1041 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 1042 "data/maps/PetalburgCity/scripts.pory"

# 1043 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 1044 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 1045 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 1046 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 1047 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 1048 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 1049 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 1050 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 1051 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
