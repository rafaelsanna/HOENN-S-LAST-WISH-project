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
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 60 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyIntro, MSGBOX_DEFAULT
# 61 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 62 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 63 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_WHITEOUT
# 64 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_RUNNING
# 65 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 66 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 67 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 68 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 69 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 70 "data/maps/PetalburgCity/scripts.pory"

# 71 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 72 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 73 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 74 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
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
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 82 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 83 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 84 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 85 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 86 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 87 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 88 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 89 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 90 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 91 "data/maps/PetalburgCity/scripts.pory"

# 92 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 93 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 94 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 95 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 96 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 97 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 98 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 99 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 100 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 101 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 102 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 103 "data/maps/PetalburgCity/scripts.pory"
    end
# 104 "data/maps/PetalburgCity/scripts.pory"

# 105 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 106 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 107 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 108 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 109 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkToWallyHousePlayer
# 110 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 111 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 112 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 113 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 114 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 115 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 116 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkInsideHousePlayer
# 117 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 118 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 119 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 120 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 121 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 122 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 123 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 124 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 125 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 126 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 127 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 128 "data/maps/PetalburgCity/scripts.pory"
	end
# 129 "data/maps/PetalburgCity/scripts.pory"

# 130 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 131 "data/maps/PetalburgCity/scripts.pory"
	lock
# 132 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 133 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 134 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 135 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 136 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 137 "data/maps/PetalburgCity/scripts.pory"
	release
# 138 "data/maps/PetalburgCity/scripts.pory"
	end
# 139 "data/maps/PetalburgCity/scripts.pory"

# 140 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 141 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 142 "data/maps/PetalburgCity/scripts.pory"
	end
# 143 "data/maps/PetalburgCity/scripts.pory"

# 144 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 145 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 146 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 147 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 148 "data/maps/PetalburgCity/scripts.pory"
	end
# 149 "data/maps/PetalburgCity/scripts.pory"

# 150 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 151 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 152 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 153 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 154 "data/maps/PetalburgCity/scripts.pory"
	end
# 155 "data/maps/PetalburgCity/scripts.pory"

# 156 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 157 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 158 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 159 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 160 "data/maps/PetalburgCity/scripts.pory"
	end
# 161 "data/maps/PetalburgCity/scripts.pory"

# 162 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 163 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 164 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 165 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 166 "data/maps/PetalburgCity/scripts.pory"
	end
# 167 "data/maps/PetalburgCity/scripts.pory"

# 168 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 169 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 170 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 171 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 172 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 173 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 174 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 175 "data/maps/PetalburgCity/scripts.pory"
	end
# 176 "data/maps/PetalburgCity/scripts.pory"

# 177 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 178 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 179 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 180 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 181 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 182 "data/maps/PetalburgCity/scripts.pory"
	end
# 183 "data/maps/PetalburgCity/scripts.pory"

# 184 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 185 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 186 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 187 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 188 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 189 "data/maps/PetalburgCity/scripts.pory"
	end
# 190 "data/maps/PetalburgCity/scripts.pory"

# 191 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 192 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 193 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 194 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 195 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 196 "data/maps/PetalburgCity/scripts.pory"
	end
# 197 "data/maps/PetalburgCity/scripts.pory"

# 198 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 199 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 200 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 201 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 202 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 203 "data/maps/PetalburgCity/scripts.pory"
	end
# 204 "data/maps/PetalburgCity/scripts.pory"

# 205 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 206 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 207 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 208 "data/maps/PetalburgCity/scripts.pory"
	end
# 209 "data/maps/PetalburgCity/scripts.pory"

# 210 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 211 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 212 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 213 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 214 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 215 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 216 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 217 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 218 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 219 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 220 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 221 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 222 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 223 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 224 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 225 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 226 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 227 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 228 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 229 "data/maps/PetalburgCity/scripts.pory"

# 230 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 231 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 232 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 233 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 234 "data/maps/PetalburgCity/scripts.pory"

# 235 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 236 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 237 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 238 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 239 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 240 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 241 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 242 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 243 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 244 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 245 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 246 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 247 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 248 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 249 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 250 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 251 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 252 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 253 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 254 "data/maps/PetalburgCity/scripts.pory"

# 255 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 256 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 257 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 258 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 259 "data/maps/PetalburgCity/scripts.pory"

# 260 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 261 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 262 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 263 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 264 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 265 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 266 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 267 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 268 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 269 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 270 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 271 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_right
# 285 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 286 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 287 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 288 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 289 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 290 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 291 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 292 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 293 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 294 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 295 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 296 "data/maps/PetalburgCity/scripts.pory"

# 297 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 298 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 299 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 300 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 301 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 302 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 303 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 304 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 305 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 306 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 307 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_right
# 321 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 322 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 323 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 324 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 325 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 326 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 327 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 328 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 329 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 330 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 331 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 332 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 333 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 334 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 335 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 336 "data/maps/PetalburgCity/scripts.pory"

# 337 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 338 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 339 "data/maps/PetalburgCity/scripts.pory"
	end
# 340 "data/maps/PetalburgCity/scripts.pory"

# 341 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 342 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 343 "data/maps/PetalburgCity/scripts.pory"
	end
# 344 "data/maps/PetalburgCity/scripts.pory"

# 345 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 346 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 347 "data/maps/PetalburgCity/scripts.pory"
	end
# 348 "data/maps/PetalburgCity/scripts.pory"

# 349 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 350 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 351 "data/maps/PetalburgCity/scripts.pory"
	end
# 352 "data/maps/PetalburgCity/scripts.pory"

# 353 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 354 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 355 "data/maps/PetalburgCity/scripts.pory"
	end
# 356 "data/maps/PetalburgCity/scripts.pory"

# 357 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 358 "data/maps/PetalburgCity/scripts.pory"
	lock
# 359 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 360 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 361 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 362 "data/maps/PetalburgCity/scripts.pory"
	release
# 363 "data/maps/PetalburgCity/scripts.pory"
	end
# 364 "data/maps/PetalburgCity/scripts.pory"

# 365 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 366 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 367 "data/maps/PetalburgCity/scripts.pory"
	end	
# 368 "data/maps/PetalburgCity/scripts.pory"

# 369 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 370 "data/maps/PetalburgCity/scripts.pory"
@ ENCONTRO COM O LUKA APÓS O GINÁSIO
# 371 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 372 "data/maps/PetalburgCity/scripts.pory"

# 373 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 374 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 375 "data/maps/PetalburgCity/scripts.pory"
	end
# 376 "data/maps/PetalburgCity/scripts.pory"

# 377 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 378 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 379 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 380 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 381 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachCenter
# 382 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 383 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 384 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 385 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 386 "data/maps/PetalburgCity/scripts.pory"
	end
# 387 "data/maps/PetalburgCity/scripts.pory"

# 388 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 389 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 390 "data/maps/PetalburgCity/scripts.pory"
	end
# 391 "data/maps/PetalburgCity/scripts.pory"

# 392 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 393 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 394 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 395 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 396 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachLeft
# 397 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 398 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 399 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 400 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 401 "data/maps/PetalburgCity/scripts.pory"
	end
# 402 "data/maps/PetalburgCity/scripts.pory"

# 403 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 404 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 405 "data/maps/PetalburgCity/scripts.pory"
	end
# 406 "data/maps/PetalburgCity/scripts.pory"

# 407 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 408 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 409 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 410 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 411 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 412 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 413 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 414 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 415 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 416 "data/maps/PetalburgCity/scripts.pory"
	end
# 417 "data/maps/PetalburgCity/scripts.pory"

# 418 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_StartBattle::
# 419 "data/maps/PetalburgCity/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 420 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 421 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 422 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 423 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 424 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 425 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 426 "data/maps/PetalburgCity/scripts.pory"
	end
# 427 "data/maps/PetalburgCity/scripts.pory"

# 428 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 429 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 430 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 431 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 432 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 433 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 434 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 435 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 436 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 437 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 438 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 439 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 440 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 441 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 442 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 443 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 444 "data/maps/PetalburgCity/scripts.pory"
	end
# 445 "data/maps/PetalburgCity/scripts.pory"

# 446 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachCenter:
# 447 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 448 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 449 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 450 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 451 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 452 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 453 "data/maps/PetalburgCity/scripts.pory"

# 454 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 455 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 456 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 457 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 458 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 459 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 460 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 461 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 462 "data/maps/PetalburgCity/scripts.pory"

# 463 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachLeft:
# 464 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 465 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 466 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 467 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 468 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 469 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 470 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 471 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 472 "data/maps/PetalburgCity/scripts.pory"

# 473 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 474 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 475 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 476 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 477 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 478 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 479 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 480 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 481 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 482 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 483 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 484 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 485 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 486 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 487 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 488 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 489 "data/maps/PetalburgCity/scripts.pory"

# 490 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 491 "data/maps/PetalburgCity/scripts.pory"
@ TRIGGERS DE DERROTA (BLOQUEIO DAS SAÍDAS DA CIDADE)
# 492 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 493 "data/maps/PetalburgCity/scripts.pory"

# 494 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight::
# 495 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaRight_Trigger
# 496 "data/maps/PetalburgCity/scripts.pory"
	end
# 497 "data/maps/PetalburgCity/scripts.pory"

# 498 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight_Trigger::
# 499 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 500 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 501 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 502 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerLeft
# 503 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 504 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 505 "data/maps/PetalburgCity/scripts.pory"
	end
# 506 "data/maps/PetalburgCity/scripts.pory"

# 507 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft::
# 508 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaLeft_Trigger
# 509 "data/maps/PetalburgCity/scripts.pory"
	end
# 510 "data/maps/PetalburgCity/scripts.pory"

# 511 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft_Trigger::
# 512 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 513 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 514 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 515 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerRight
# 516 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 517 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 518 "data/maps/PetalburgCity/scripts.pory"
	end
# 519 "data/maps/PetalburgCity/scripts.pory"

# 520 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerLeft:
# 521 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 522 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 523 "data/maps/PetalburgCity/scripts.pory"

# 524 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerRight:
# 525 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 526 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 527 "data/maps/PetalburgCity/scripts.pory"

# 528 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_MustSeeLukaInHouse:
# 529 "data/maps/PetalburgCity/scripts.pory"
	.string "Oh, I have to see Luka in his house!$"
# 530 "data/maps/PetalburgCity/scripts.pory"

# 531 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 532 "data/maps/PetalburgCity/scripts.pory"
@ TEXTOS DIVERSOS
# 533 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 534 "data/maps/PetalburgCity/scripts.pory"

# 535 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 536 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 537 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 538 "data/maps/PetalburgCity/scripts.pory"

# 539 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 540 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 541 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 542 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 543 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 544 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 545 "data/maps/PetalburgCity/scripts.pory"

# 546 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 547 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 548 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 549 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 550 "data/maps/PetalburgCity/scripts.pory"

# 551 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 552 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 553 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 554 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 555 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 556 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 557 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 558 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 559 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 560 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 561 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 562 "data/maps/PetalburgCity/scripts.pory"

# 563 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 564 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 565 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 566 "data/maps/PetalburgCity/scripts.pory"

# 567 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 568 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 569 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 570 "data/maps/PetalburgCity/scripts.pory"

# 571 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 572 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 573 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 574 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 575 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 576 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 577 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 578 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 579 "data/maps/PetalburgCity/scripts.pory"

# 580 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 581 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 582 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 583 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 584 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 585 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 586 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 587 "data/maps/PetalburgCity/scripts.pory"

# 588 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 589 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 590 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 591 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 592 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 593 "data/maps/PetalburgCity/scripts.pory"

# 594 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 595 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 596 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 597 "data/maps/PetalburgCity/scripts.pory"

# 598 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 599 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 600 "data/maps/PetalburgCity/scripts.pory"

# 601 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 602 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 603 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 604 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 605 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 606 "data/maps/PetalburgCity/scripts.pory"

# 607 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 608 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 609 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 610 "data/maps/PetalburgCity/scripts.pory"

# 611 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 612 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 613 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…\n"
# 614 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 615 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 616 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 617 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 618 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 619 "data/maps/PetalburgCity/scripts.pory"

# 620 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 621 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 622 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 623 "data/maps/PetalburgCity/scripts.pory"

# 624 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 625 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 626 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 627 "data/maps/PetalburgCity/scripts.pory"

# 628 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 629 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 630 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 631 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 632 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 633 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 634 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 635 "data/maps/PetalburgCity/scripts.pory"

# 636 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 637 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 638 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 639 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 640 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 641 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 642 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 643 "data/maps/PetalburgCity/scripts.pory"

# 644 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 645 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 646 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 647 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 648 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 649 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 650 "data/maps/PetalburgCity/scripts.pory"

# 651 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 652 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 653 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 654 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 655 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 656 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 657 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 658 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 659 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
