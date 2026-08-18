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
PetalburgCity_EventScript_HandleAquaGrunts::
# 22 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, PetalburgCity_EventScript_HideAquaGrunts
# 23 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_ShowAquaGrunts
# 24 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_HideAquaGrunts
# 25 "data/maps/PetalburgCity/scripts.pory"

# 26 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowAquaGrunts::
# 27 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 28 "data/maps/PetalburgCity/scripts.pory"
	return
# 29 "data/maps/PetalburgCity/scripts.pory"

# 30 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideAquaGrunts::
# 31 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 32 "data/maps/PetalburgCity/scripts.pory"
	return
# 33 "data/maps/PetalburgCity/scripts.pory"

# 34 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_MoveGymBoyToWestEntrance::
# 35 "data/maps/PetalburgCity/scripts.pory"
	setobjectxyperm LOCALID_GYM_BOY, 5, 11
# 36 "data/maps/PetalburgCity/scripts.pory"
	return
# 37 "data/maps/PetalburgCity/scripts.pory"

# 38 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_DisableMapNameAndMusic::
# 39 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 40 "data/maps/PetalburgCity/scripts.pory"
	savebgm MUS_FOLLOW_ME
# 41 "data/maps/PetalburgCity/scripts.pory"
	return
# 42 "data/maps/PetalburgCity/scripts.pory"

# 43 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_SetGymDoorsUnlocked::
# 44 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 7
# 45 "data/maps/PetalburgCity/scripts.pory"
	return
# 46 "data/maps/PetalburgCity/scripts.pory"

# 47 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnFrame:
# 48 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_WallyTutorial
# 49 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_WalkToWallyHouse
# 50 "data/maps/PetalburgCity/scripts.pory"
	.2byte 0
# 51 "data/maps/PetalburgCity/scripts.pory"

# 52 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial::
# 53 "data/maps/PetalburgCity/scripts.pory"
    lockall
# 54 "data/maps/PetalburgCity/scripts.pory"
    special SavePlayerParty
# 55 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, PetalburgCity_Movement_WallyTutorialWally
# 56 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PLAYER, PetalburgCity_Movement_WallyTutorialPlayer
# 57 "data/maps/PetalburgCity/scripts.pory"
    waitmovement 0
# 58 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WatchMeCatchPokemon, MSGBOX_DEFAULT
# 59 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyIntro, MSGBOX_DEFAULT
# 60 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 61 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_WHITEOUT
# 62 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_RUNNING
# 63 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 64 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 65 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 66 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 67 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 68 "data/maps/PetalburgCity/scripts.pory"

# 69 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 70 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 71 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 72 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 73 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 74 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 75 "data/maps/PetalburgCity/scripts.pory"

# 76 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Defeat::
# 77 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 78 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 79 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 80 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 81 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 82 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 83 "data/maps/PetalburgCity/scripts.pory"

# 84 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 85 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 86 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 87 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 88 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 89 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 90 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 91 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 92 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 93 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 94 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 95 "data/maps/PetalburgCity/scripts.pory"
    end
# 96 "data/maps/PetalburgCity/scripts.pory"

# 97 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 98 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 99 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 100 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 101 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkToWallyHousePlayer
# 102 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 103 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 104 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 105 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 106 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 107 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 108 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkInsideHousePlayer
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
PetalburgCity_EventScript_ShowGymToPlayer0::
# 137 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 138 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 139 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 140 "data/maps/PetalburgCity/scripts.pory"
	end
# 141 "data/maps/PetalburgCity/scripts.pory"

# 142 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 143 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 144 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 145 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 146 "data/maps/PetalburgCity/scripts.pory"
	end
# 147 "data/maps/PetalburgCity/scripts.pory"

# 148 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 149 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 150 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 151 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 152 "data/maps/PetalburgCity/scripts.pory"
	end
# 153 "data/maps/PetalburgCity/scripts.pory"

# 154 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 155 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 156 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 157 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 158 "data/maps/PetalburgCity/scripts.pory"
	end
# 159 "data/maps/PetalburgCity/scripts.pory"

# 160 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 161 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 162 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 163 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 164 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 165 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 166 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 167 "data/maps/PetalburgCity/scripts.pory"
	end
# 168 "data/maps/PetalburgCity/scripts.pory"

# 169 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 170 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 171 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 172 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 173 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 174 "data/maps/PetalburgCity/scripts.pory"
	end
# 175 "data/maps/PetalburgCity/scripts.pory"

# 176 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 177 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 178 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 179 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 180 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 181 "data/maps/PetalburgCity/scripts.pory"
	end
# 182 "data/maps/PetalburgCity/scripts.pory"

# 183 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 184 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 185 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 186 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 187 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 188 "data/maps/PetalburgCity/scripts.pory"
	end
# 189 "data/maps/PetalburgCity/scripts.pory"

# 190 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 191 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 192 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 193 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 194 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 195 "data/maps/PetalburgCity/scripts.pory"
	end
# 196 "data/maps/PetalburgCity/scripts.pory"

# 197 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 198 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 199 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 200 "data/maps/PetalburgCity/scripts.pory"
	end
# 201 "data/maps/PetalburgCity/scripts.pory"

# 202 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 203 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 204 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 205 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 206 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 207 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 208 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 209 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 210 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 211 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 212 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 213 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 214 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 215 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 216 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 217 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 218 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 219 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 220 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 221 "data/maps/PetalburgCity/scripts.pory"

# 222 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 223 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 224 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 225 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 226 "data/maps/PetalburgCity/scripts.pory"

# 227 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 228 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 229 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 230 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 231 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 232 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 233 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 234 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 235 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 236 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 237 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 238 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 239 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 240 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 241 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 242 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 243 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 244 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 245 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 246 "data/maps/PetalburgCity/scripts.pory"

# 247 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 248 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 249 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 250 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 251 "data/maps/PetalburgCity/scripts.pory"

# 252 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 253 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 254 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 255 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 256 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 257 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 258 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 259 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 260 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 261 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 262 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 263 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 264 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 265 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 266 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 267 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 268 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 269 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 270 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 271 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 272 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 273 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 274 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 275 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 276 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 277 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 278 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 279 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 280 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 281 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 282 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 283 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 284 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 285 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 286 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 287 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 288 "data/maps/PetalburgCity/scripts.pory"

# 289 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 290 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 291 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 292 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 293 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 294 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 295 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 296 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 297 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 298 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 299 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 300 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 301 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 302 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 303 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 304 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 305 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 306 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 307 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 308 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 309 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 310 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 311 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 312 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 313 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 314 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 315 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 316 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 317 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 318 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 319 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 320 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 321 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 322 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 323 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 324 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 325 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 326 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 327 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 328 "data/maps/PetalburgCity/scripts.pory"

# 329 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 330 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 331 "data/maps/PetalburgCity/scripts.pory"
	end
# 332 "data/maps/PetalburgCity/scripts.pory"

# 333 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 334 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 335 "data/maps/PetalburgCity/scripts.pory"
	end
# 336 "data/maps/PetalburgCity/scripts.pory"

# 337 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 338 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 339 "data/maps/PetalburgCity/scripts.pory"
	end
# 340 "data/maps/PetalburgCity/scripts.pory"

# 341 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 342 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 343 "data/maps/PetalburgCity/scripts.pory"
	end
# 344 "data/maps/PetalburgCity/scripts.pory"

# 345 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 346 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 347 "data/maps/PetalburgCity/scripts.pory"
	end
# 348 "data/maps/PetalburgCity/scripts.pory"

# 349 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 350 "data/maps/PetalburgCity/scripts.pory"
	lock
# 351 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 352 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 353 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 354 "data/maps/PetalburgCity/scripts.pory"
	release
# 355 "data/maps/PetalburgCity/scripts.pory"
	end
# 356 "data/maps/PetalburgCity/scripts.pory"

# 357 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 358 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 359 "data/maps/PetalburgCity/scripts.pory"
	end	
# 360 "data/maps/PetalburgCity/scripts.pory"

# 361 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 362 "data/maps/PetalburgCity/scripts.pory"
@ ENCONTRO COM O LUKA APÓS O GINÁSIO
# 363 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 364 "data/maps/PetalburgCity/scripts.pory"

# 365 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 366 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 367 "data/maps/PetalburgCity/scripts.pory"
	end
# 368 "data/maps/PetalburgCity/scripts.pory"

# 369 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 370 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 371 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 372 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 373 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachCenter
# 374 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 375 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 376 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 377 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 378 "data/maps/PetalburgCity/scripts.pory"
	end
# 379 "data/maps/PetalburgCity/scripts.pory"

# 380 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 381 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 382 "data/maps/PetalburgCity/scripts.pory"
	end
# 383 "data/maps/PetalburgCity/scripts.pory"

# 384 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 385 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 386 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 387 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 388 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachLeft
# 389 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 390 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 391 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 392 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 393 "data/maps/PetalburgCity/scripts.pory"
	end
# 394 "data/maps/PetalburgCity/scripts.pory"

# 395 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 396 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 397 "data/maps/PetalburgCity/scripts.pory"
	end
# 398 "data/maps/PetalburgCity/scripts.pory"

# 399 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 400 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 401 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 402 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 403 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 404 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 405 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 406 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 407 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 408 "data/maps/PetalburgCity/scripts.pory"
	end
# 409 "data/maps/PetalburgCity/scripts.pory"

# 410 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_StartBattle::
# 411 "data/maps/PetalburgCity/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 412 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 413 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 414 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 415 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 416 "data/maps/PetalburgCity/scripts.pory"
	end
# 417 "data/maps/PetalburgCity/scripts.pory"

# 418 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 419 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 420 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 421 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 422 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 423 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 424 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 425 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 426 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 427 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 428 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 429 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 430 "data/maps/PetalburgCity/scripts.pory"
	end
# 431 "data/maps/PetalburgCity/scripts.pory"

# 432 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachCenter:
# 433 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 434 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 435 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 436 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 437 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 438 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 439 "data/maps/PetalburgCity/scripts.pory"

# 440 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 441 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 442 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 443 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 444 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 445 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 446 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 447 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 448 "data/maps/PetalburgCity/scripts.pory"

# 449 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachLeft:
# 450 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 451 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 452 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 453 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 454 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 455 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 456 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 457 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 458 "data/maps/PetalburgCity/scripts.pory"

# 459 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 460 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 461 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 462 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 463 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 464 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 465 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 466 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 467 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 468 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 469 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 470 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 471 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 472 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 473 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 474 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 475 "data/maps/PetalburgCity/scripts.pory"

# 476 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 477 "data/maps/PetalburgCity/scripts.pory"
@ TRIGGERS DE DERROTA (BLOQUEIO DAS SAÍDAS DA CIDADE)
# 478 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 479 "data/maps/PetalburgCity/scripts.pory"

# 480 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight::
# 481 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaRight_Trigger
# 482 "data/maps/PetalburgCity/scripts.pory"
	end
# 483 "data/maps/PetalburgCity/scripts.pory"

# 484 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight_Trigger::
# 485 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 486 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 487 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 488 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerLeft
# 489 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 490 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 491 "data/maps/PetalburgCity/scripts.pory"
	end
# 492 "data/maps/PetalburgCity/scripts.pory"

# 493 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft::
# 494 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaLeft_Trigger
# 495 "data/maps/PetalburgCity/scripts.pory"
	end
# 496 "data/maps/PetalburgCity/scripts.pory"

# 497 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft_Trigger::
# 498 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 499 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 500 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 501 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerRight
# 502 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 503 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 504 "data/maps/PetalburgCity/scripts.pory"
	end
# 505 "data/maps/PetalburgCity/scripts.pory"

# 506 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerLeft:
# 507 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 508 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 509 "data/maps/PetalburgCity/scripts.pory"

# 510 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerRight:
# 511 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 512 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 513 "data/maps/PetalburgCity/scripts.pory"

# 514 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_MustSeeLukaInHouse:
# 515 "data/maps/PetalburgCity/scripts.pory"
	.string "Oh, I have to see Luka in his house!$"
# 516 "data/maps/PetalburgCity/scripts.pory"

# 517 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 518 "data/maps/PetalburgCity/scripts.pory"
@ TEXTOS DIVERSOS
# 519 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 520 "data/maps/PetalburgCity/scripts.pory"

# 521 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 522 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 523 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 524 "data/maps/PetalburgCity/scripts.pory"

# 525 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 526 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 527 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 528 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 529 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 530 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 531 "data/maps/PetalburgCity/scripts.pory"

# 532 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 533 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 534 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 535 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 536 "data/maps/PetalburgCity/scripts.pory"

# 537 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 538 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 539 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 540 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 541 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 542 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 543 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 544 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 545 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 546 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 547 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 548 "data/maps/PetalburgCity/scripts.pory"

# 549 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 550 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 551 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 552 "data/maps/PetalburgCity/scripts.pory"

# 553 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 554 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 555 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 556 "data/maps/PetalburgCity/scripts.pory"

# 557 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 558 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 559 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 560 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 561 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 562 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 563 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 564 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 565 "data/maps/PetalburgCity/scripts.pory"

# 566 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 567 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 568 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 569 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 570 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 571 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 572 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 573 "data/maps/PetalburgCity/scripts.pory"

# 574 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 575 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 576 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 577 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 578 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 579 "data/maps/PetalburgCity/scripts.pory"

# 580 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 581 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 582 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 583 "data/maps/PetalburgCity/scripts.pory"

# 584 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 585 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 586 "data/maps/PetalburgCity/scripts.pory"

# 587 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 588 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 589 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 590 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 591 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 592 "data/maps/PetalburgCity/scripts.pory"

# 593 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 594 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 595 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 596 "data/maps/PetalburgCity/scripts.pory"

# 597 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 598 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 599 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…\n"
# 600 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 601 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 602 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 603 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 604 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 605 "data/maps/PetalburgCity/scripts.pory"

# 606 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 607 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 608 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 609 "data/maps/PetalburgCity/scripts.pory"

# 610 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 611 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 612 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 613 "data/maps/PetalburgCity/scripts.pory"

# 614 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 615 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 616 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 617 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 618 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 619 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 620 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 621 "data/maps/PetalburgCity/scripts.pory"

# 622 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 623 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 624 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 625 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 626 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 627 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 628 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 629 "data/maps/PetalburgCity/scripts.pory"

# 630 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 631 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 632 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 633 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 634 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 635 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 636 "data/maps/PetalburgCity/scripts.pory"

# 637 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 638 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 639 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 640 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 641 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 642 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 643 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 644 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 645 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
