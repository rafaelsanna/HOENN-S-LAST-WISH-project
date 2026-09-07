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
	setvar VAR_TEMP_0, 0
# 10 "data/maps/PetalburgCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 11 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleQuakeRainEvent
# 12 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_LUKA_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_HideLukaAfterGym
# 13 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 14 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_DisableMapNameAndMusic
# 15 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_DisableMapNameAndMusic
# 16 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_EventScript_SetGymDoorsUnlocked
# 17 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleAquaGrunts
# 18 "data/maps/PetalburgCity/scripts.pory"
	end
# 19 "data/maps/PetalburgCity/scripts.pory"

# 20 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideLukaAfterGym::
# 21 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 22 "data/maps/PetalburgCity/scripts.pory"
	return
# 23 "data/maps/PetalburgCity/scripts.pory"

# 24 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleQuakeRainEvent::
# 25 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_HideQuakeEventNpcs
# 26 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_HideQuakeEventNpcs
# 27 "data/maps/PetalburgCity/scripts.pory"
	setweather WEATHER_RAIN
# 28 "data/maps/PetalburgCity/scripts.pory"
	doweather
# 29 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART1_CLEARED, PetalburgCity_EventScript_HandleQuakeReturnGroup
# 30 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 31 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 32 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 33 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 34 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 35 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_EVENT_STARTED, PetalburgCity_EventScript_QuakeRainEventAlreadyStarted
# 36 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 1
# 37 "data/maps/PetalburgCity/scripts.pory"
	return
# 38 "data/maps/PetalburgCity/scripts.pory"

# 39 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleQuakeReturnGroup::
# 40 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 41 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 42 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 43 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 44 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 45 "data/maps/PetalburgCity/scripts.pory"
	return
# 46 "data/maps/PetalburgCity/scripts.pory"

# 47 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideQuakeReturnGroup::
# 48 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 49 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 50 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 51 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 52 "data/maps/PetalburgCity/scripts.pory"
	return
# 53 "data/maps/PetalburgCity/scripts.pory"

# 54 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRainEventAlreadyStarted::
# 55 "data/maps/PetalburgCity/scripts.pory"
	return
# 56 "data/maps/PetalburgCity/scripts.pory"

# 57 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideQuakeEventNpcs::
# 58 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 59 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 60 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 61 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 62 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 63 "data/maps/PetalburgCity/scripts.pory"
	return
# 64 "data/maps/PetalburgCity/scripts.pory"

# 65 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleAquaGrunts::
# 66 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_AQUA_GRUNTS_PETALBURG_DONE, PetalburgCity_EventScript_HideAquaGrunts
# 67 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_ShowAquaGrunts
# 68 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_HideAquaGrunts
# 69 "data/maps/PetalburgCity/scripts.pory"

# 70 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowAquaGrunts::
# 71 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 72 "data/maps/PetalburgCity/scripts.pory"
	return
# 73 "data/maps/PetalburgCity/scripts.pory"

# 74 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideAquaGrunts::
# 75 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 76 "data/maps/PetalburgCity/scripts.pory"
	return
# 77 "data/maps/PetalburgCity/scripts.pory"

# 78 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_MoveGymBoyToWestEntrance::
# 79 "data/maps/PetalburgCity/scripts.pory"
	setobjectxyperm LOCALID_GYM_BOY, 5, 11
# 80 "data/maps/PetalburgCity/scripts.pory"
	return
# 81 "data/maps/PetalburgCity/scripts.pory"

# 82 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_DisableMapNameAndMusic::
# 83 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 84 "data/maps/PetalburgCity/scripts.pory"
	savebgm MUS_FOLLOW_ME
# 85 "data/maps/PetalburgCity/scripts.pory"
	return
# 86 "data/maps/PetalburgCity/scripts.pory"

# 87 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_SetGymDoorsUnlocked::
# 88 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 7
# 89 "data/maps/PetalburgCity/scripts.pory"
	return
# 90 "data/maps/PetalburgCity/scripts.pory"

# 91 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnFrame:
# 92 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, PetalburgCity_EventScript_FirstQuakeAfterHeatBadge
# 93 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_WallyTutorial
# 94 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_WalkToWallyHouse
# 95 "data/maps/PetalburgCity/scripts.pory"
	.2byte 0
# 96 "data/maps/PetalburgCity/scripts.pory"

# 97 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_FirstQuakeAfterHeatBadge::
# 98 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 99 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 0
# 100 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_EVENT_STARTED
# 101 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 1
# 102 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 1
# 103 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8006, 8
# 104 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8007, 5
# 105 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 106 "data/maps/PetalburgCity/scripts.pory"
	special ShakeCamera
# 107 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 108 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 109 "data/maps/PetalburgCity/scripts.pory"
	end
# 110 "data/maps/PetalburgCity/scripts.pory"

# 111 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial::
# 112 "data/maps/PetalburgCity/scripts.pory"
    lockall
# 113 "data/maps/PetalburgCity/scripts.pory"
    special SavePlayerParty
# 114 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, PetalburgCity_Movement_WallyTutorialWally
# 115 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PLAYER, PetalburgCity_Movement_WallyTutorialPlayer
# 116 "data/maps/PetalburgCity/scripts.pory"
    waitmovement 0
# 117 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WatchMeCatchPokemon, MSGBOX_DEFAULT
# 118 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 119 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyIntro, MSGBOX_DEFAULT
# 120 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 121 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 122 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_WHITEOUT
# 123 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_RUNNING
# 124 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 125 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 126 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 127 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 128 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 129 "data/maps/PetalburgCity/scripts.pory"

# 130 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 131 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 132 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 133 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 134 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 135 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 136 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 137 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 138 "data/maps/PetalburgCity/scripts.pory"

# 139 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Defeat::
# 140 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 141 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 142 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 143 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 144 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 145 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 146 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 147 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 148 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 149 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 150 "data/maps/PetalburgCity/scripts.pory"

# 151 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 152 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 153 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 154 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 155 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 156 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 157 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 158 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 159 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 160 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 161 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 162 "data/maps/PetalburgCity/scripts.pory"
    end
# 163 "data/maps/PetalburgCity/scripts.pory"

# 164 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 165 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 166 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 167 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 168 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkToWallyHousePlayer
# 169 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 170 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 171 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 172 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 173 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 174 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 175 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkInsideHousePlayer
# 176 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 177 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 178 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 179 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 180 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 181 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 182 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 183 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 184 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 185 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 186 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 187 "data/maps/PetalburgCity/scripts.pory"
	end
# 188 "data/maps/PetalburgCity/scripts.pory"

# 189 "data/maps/PetalburgCity/scripts.pory"
eventscientist::
# 190 "data/maps/PetalburgCity/scripts.pory"
	lock
# 191 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 192 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_SCIENTIST_SPOKE, PetalburgCity_EventScript_QuakeScientistRepeat
# 193 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_SCIENTIST_SPOKE
# 194 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistFirst, MSGBOX_DEFAULT
# 195 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistRepeat, MSGBOX_DEFAULT
# 196 "data/maps/PetalburgCity/scripts.pory"
	release
# 197 "data/maps/PetalburgCity/scripts.pory"
	end
# 198 "data/maps/PetalburgCity/scripts.pory"

# 199 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeScientistRepeat::
# 200 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistRepeat, MSGBOX_DEFAULT
# 201 "data/maps/PetalburgCity/scripts.pory"
	release
# 202 "data/maps/PetalburgCity/scripts.pory"
	end
# 203 "data/maps/PetalburgCity/scripts.pory"

# 204 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendula::
# 205 "data/maps/PetalburgCity/scripts.pory"
	lock
# 206 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 207 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART15_CLEARED, PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal
# 208 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 209 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaPart15, MSGBOX_DEFAULT
# 210 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 211 "data/maps/PetalburgCity/scripts.pory"
	release
# 212 "data/maps/PetalburgCity/scripts.pory"
	end
# 213 "data/maps/PetalburgCity/scripts.pory"

# 214 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal::
# 215 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 216 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaOpenNightmarePortal, MSGBOX_DEFAULT
# 217 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 218 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 219 "data/maps/PetalburgCity/scripts.pory"
	getplayerxy VAR_TEMP_1, VAR_TEMP_2
# 220 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_1, 19, PetalburgCity_EventScript_QuakeCalendulaMovePlayerFromWest
# 221 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_1, 21, PetalburgCity_EventScript_QuakeCalendulaMovePlayerFromEast
# 222 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeCalendulaMovePlayerFromSouth
# 223 "data/maps/PetalburgCity/scripts.pory"

# 224 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaMovePlayerFromSouth::
# 225 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_QuakePortalPlayerFromSouth
# 226 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 227 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeCalendulaSummonNightmarePortal
# 228 "data/maps/PetalburgCity/scripts.pory"

# 229 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaMovePlayerFromWest::
# 230 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_QuakePortalPlayerFromWest
# 231 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 232 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeCalendulaSummonNightmarePortal
# 233 "data/maps/PetalburgCity/scripts.pory"

# 234 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaMovePlayerFromEast::
# 235 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_QuakePortalPlayerFromEast
# 236 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 237 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeCalendulaSummonNightmarePortal
# 238 "data/maps/PetalburgCity/scripts.pory"

# 239 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaSummonNightmarePortal::
# 240 "data/maps/PetalburgCity/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 241 "data/maps/PetalburgCity/scripts.pory"
	delay 20
# 242 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 243 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_QUAKE_PORTAL
# 244 "data/maps/PetalburgCity/scripts.pory"
	playse SE_WARP_IN
# 245 "data/maps/PetalburgCity/scripts.pory"
	delay 20
# 246 "data/maps/PetalburgCity/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 247 "data/maps/PetalburgCity/scripts.pory"
	delay 20
# 248 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_QuakePortalPlayerEnter
# 249 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 250 "data/maps/PetalburgCity/scripts.pory"
	playse SE_WARP_OUT
# 251 "data/maps/PetalburgCity/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 252 "data/maps/PetalburgCity/scripts.pory"
	delay 20
# 253 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_NIGHTMARE_PETALBURG, 23, 11
# 254 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 255 "data/maps/PetalburgCity/scripts.pory"
	release
# 256 "data/maps/PetalburgCity/scripts.pory"
	end
# 257 "data/maps/PetalburgCity/scripts.pory"

# 258 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLuka::
# 259 "data/maps/PetalburgCity/scripts.pory"
	lock
# 260 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 261 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 262 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaPart15, MSGBOX_DEFAULT
# 263 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 264 "data/maps/PetalburgCity/scripts.pory"
	release
# 265 "data/maps/PetalburgCity/scripts.pory"
	end
# 266 "data/maps/PetalburgCity/scripts.pory"

# 267 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRival::
# 268 "data/maps/PetalburgCity/scripts.pory"
	lock
# 269 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 270 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 271 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaPart15
# 272 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoPart15
# 273 "data/maps/PetalburgCity/scripts.pory"
	release
# 274 "data/maps/PetalburgCity/scripts.pory"
	end
# 275 "data/maps/PetalburgCity/scripts.pory"

# 276 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaPart15::
# 277 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 278 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZinniaPart15, MSGBOX_DEFAULT
# 279 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 280 "data/maps/PetalburgCity/scripts.pory"
	release
# 281 "data/maps/PetalburgCity/scripts.pory"
	end
# 282 "data/maps/PetalburgCity/scripts.pory"

# 283 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoPart15::
# 284 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 285 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZennoPart15, MSGBOX_DEFAULT
# 286 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 287 "data/maps/PetalburgCity/scripts.pory"
	release
# 288 "data/maps/PetalburgCity/scripts.pory"
	end
# 289 "data/maps/PetalburgCity/scripts.pory"

# 290 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 291 "data/maps/PetalburgCity/scripts.pory"
	lock
# 292 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 293 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Boy_Normal
# 294 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Boy_Normal
# 295 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeBoy, MSGBOX_DEFAULT
# 296 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 297 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 298 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 299 "data/maps/PetalburgCity/scripts.pory"
	release
# 300 "data/maps/PetalburgCity/scripts.pory"
	end
# 301 "data/maps/PetalburgCity/scripts.pory"

# 302 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy_Normal::
# 303 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 304 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 305 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 306 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 307 "data/maps/PetalburgCity/scripts.pory"
	release
# 308 "data/maps/PetalburgCity/scripts.pory"
	end
# 309 "data/maps/PetalburgCity/scripts.pory"

# 310 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 311 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_WallysMom_Normal
# 312 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_WallysMom_Normal
# 313 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeWallysMom, MSGBOX_NPC
# 314 "data/maps/PetalburgCity/scripts.pory"
	end
# 315 "data/maps/PetalburgCity/scripts.pory"

# 316 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom_Normal::
# 317 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 318 "data/maps/PetalburgCity/scripts.pory"
	end
# 319 "data/maps/PetalburgCity/scripts.pory"

# 320 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 321 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 322 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 323 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 324 "data/maps/PetalburgCity/scripts.pory"
	end
# 325 "data/maps/PetalburgCity/scripts.pory"

# 326 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 327 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 328 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 329 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 330 "data/maps/PetalburgCity/scripts.pory"
	end
# 331 "data/maps/PetalburgCity/scripts.pory"

# 332 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 333 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 334 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 335 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 336 "data/maps/PetalburgCity/scripts.pory"
	end
# 337 "data/maps/PetalburgCity/scripts.pory"

# 338 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 339 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 340 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 341 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 342 "data/maps/PetalburgCity/scripts.pory"
	end
# 343 "data/maps/PetalburgCity/scripts.pory"

# 344 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 345 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 346 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 347 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 348 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 349 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 350 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 351 "data/maps/PetalburgCity/scripts.pory"
	end
# 352 "data/maps/PetalburgCity/scripts.pory"

# 353 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 354 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 355 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 356 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 357 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 358 "data/maps/PetalburgCity/scripts.pory"
	end
# 359 "data/maps/PetalburgCity/scripts.pory"

# 360 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 361 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 362 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 363 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 364 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 365 "data/maps/PetalburgCity/scripts.pory"
	end
# 366 "data/maps/PetalburgCity/scripts.pory"

# 367 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 368 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 369 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 370 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 371 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 372 "data/maps/PetalburgCity/scripts.pory"
	end
# 373 "data/maps/PetalburgCity/scripts.pory"

# 374 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 375 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 376 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 377 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 378 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 379 "data/maps/PetalburgCity/scripts.pory"
	end
# 380 "data/maps/PetalburgCity/scripts.pory"

# 381 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 382 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 383 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 384 "data/maps/PetalburgCity/scripts.pory"
	end
# 385 "data/maps/PetalburgCity/scripts.pory"

# 386 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 387 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 388 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 389 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 390 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 391 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 392 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 393 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 394 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 395 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 396 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 397 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 398 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 399 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 400 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 401 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 402 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 403 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 404 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 405 "data/maps/PetalburgCity/scripts.pory"

# 406 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 407 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 408 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 409 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 410 "data/maps/PetalburgCity/scripts.pory"

# 411 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 412 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 413 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 414 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 415 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 416 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 417 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 418 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 419 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 420 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 421 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 422 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 423 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 424 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 425 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 426 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 427 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 428 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 429 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 430 "data/maps/PetalburgCity/scripts.pory"

# 431 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 432 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 433 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 434 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 435 "data/maps/PetalburgCity/scripts.pory"

# 436 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 437 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 438 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 439 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 440 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 441 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 442 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 443 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 444 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 445 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 446 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 447 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_right
# 457 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 458 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 459 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 460 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 461 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 462 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 463 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 464 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 465 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 466 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 467 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 468 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 469 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 470 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 471 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 472 "data/maps/PetalburgCity/scripts.pory"

# 473 "data/maps/PetalburgCity/scripts.pory"

# 474 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakePortalPlayerFromSouth:
# 475 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 476 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 477 "data/maps/PetalburgCity/scripts.pory"
	face_down
# 478 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 479 "data/maps/PetalburgCity/scripts.pory"

# 480 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakePortalPlayerFromWest:
# 481 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 482 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 483 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 484 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 485 "data/maps/PetalburgCity/scripts.pory"
	face_down
# 486 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 487 "data/maps/PetalburgCity/scripts.pory"

# 488 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakePortalPlayerFromEast:
# 489 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 490 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 491 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 492 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 493 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 494 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 495 "data/maps/PetalburgCity/scripts.pory"
	face_down
# 496 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 497 "data/maps/PetalburgCity/scripts.pory"

# 498 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakePortalPlayerEnter:
# 499 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 500 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 501 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 502 "data/maps/PetalburgCity/scripts.pory"

# 503 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 504 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 505 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 506 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 507 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 508 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 509 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 510 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 511 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 512 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 513 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 514 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 515 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 516 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 517 "data/maps/PetalburgCity/scripts.pory"
	walk_right
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
	walk_right
# 529 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 530 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 532 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 533 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 534 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 535 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 536 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 537 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 538 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 539 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 540 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 541 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 542 "data/maps/PetalburgCity/scripts.pory"

# 543 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 544 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 545 "data/maps/PetalburgCity/scripts.pory"
	end
# 546 "data/maps/PetalburgCity/scripts.pory"

# 547 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 548 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 549 "data/maps/PetalburgCity/scripts.pory"
	end
# 550 "data/maps/PetalburgCity/scripts.pory"

# 551 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 552 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Gentleman_Normal
# 553 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Gentleman_Normal
# 554 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGentleman, MSGBOX_NPC
# 555 "data/maps/PetalburgCity/scripts.pory"
	end
# 556 "data/maps/PetalburgCity/scripts.pory"

# 557 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman_Normal::
# 558 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 559 "data/maps/PetalburgCity/scripts.pory"
	end
# 560 "data/maps/PetalburgCity/scripts.pory"

# 561 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 562 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 563 "data/maps/PetalburgCity/scripts.pory"
	end
# 564 "data/maps/PetalburgCity/scripts.pory"

# 565 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 566 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_GymBoy_Normal
# 567 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_GymBoy_Normal
# 568 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGymBoy, MSGBOX_NPC
# 569 "data/maps/PetalburgCity/scripts.pory"
	end
# 570 "data/maps/PetalburgCity/scripts.pory"

# 571 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy_Normal::
# 572 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 573 "data/maps/PetalburgCity/scripts.pory"
	end
# 574 "data/maps/PetalburgCity/scripts.pory"

# 575 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 576 "data/maps/PetalburgCity/scripts.pory"
	lock
# 577 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 578 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 579 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 580 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAquaGruntBlock, MSGBOX_DEFAULT
# 581 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 582 "data/maps/PetalburgCity/scripts.pory"
	release
# 583 "data/maps/PetalburgCity/scripts.pory"
	end
# 584 "data/maps/PetalburgCity/scripts.pory"

# 585 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock_Normal::
# 586 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 587 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 588 "data/maps/PetalburgCity/scripts.pory"
	release
# 589 "data/maps/PetalburgCity/scripts.pory"
	end
# 590 "data/maps/PetalburgCity/scripts.pory"

# 591 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 592 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AdventureBoy_Normal
# 593 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AdventureBoy_Normal
# 594 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAdventureBoy, MSGBOX_NPC
# 595 "data/maps/PetalburgCity/scripts.pory"
	end
# 596 "data/maps/PetalburgCity/scripts.pory"

# 597 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy_Normal::
# 598 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 599 "data/maps/PetalburgCity/scripts.pory"
	end
# 600 "data/maps/PetalburgCity/scripts.pory"

# 601 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 602 "data/maps/PetalburgCity/scripts.pory"
@ ENCONTRO COM O LUKA APÓS O GINÁSIO
# 603 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 604 "data/maps/PetalburgCity/scripts.pory"

# 605 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 606 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 607 "data/maps/PetalburgCity/scripts.pory"
	end
# 608 "data/maps/PetalburgCity/scripts.pory"

# 609 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 610 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 611 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 612 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 613 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachCenter
# 614 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 615 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 616 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 617 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 618 "data/maps/PetalburgCity/scripts.pory"
	end
# 619 "data/maps/PetalburgCity/scripts.pory"

# 620 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 621 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 622 "data/maps/PetalburgCity/scripts.pory"
	end
# 623 "data/maps/PetalburgCity/scripts.pory"

# 624 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 625 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 626 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 627 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 628 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachLeft
# 629 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 630 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 631 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 632 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 633 "data/maps/PetalburgCity/scripts.pory"
	end
# 634 "data/maps/PetalburgCity/scripts.pory"

# 635 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 636 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 637 "data/maps/PetalburgCity/scripts.pory"
	end
# 638 "data/maps/PetalburgCity/scripts.pory"

# 639 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 640 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 641 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 642 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 643 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 644 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 645 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 646 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 647 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 648 "data/maps/PetalburgCity/scripts.pory"
	end
# 649 "data/maps/PetalburgCity/scripts.pory"

# 650 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_StartBattle::
# 651 "data/maps/PetalburgCity/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 652 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 653 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 654 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 655 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 656 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 657 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 658 "data/maps/PetalburgCity/scripts.pory"
	end
# 659 "data/maps/PetalburgCity/scripts.pory"

# 660 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 661 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 662 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 663 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 664 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 665 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 666 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 667 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 668 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 669 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 670 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 671 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 672 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 673 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 674 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 675 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 676 "data/maps/PetalburgCity/scripts.pory"
	end
# 677 "data/maps/PetalburgCity/scripts.pory"

# 678 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachCenter:
# 679 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 680 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 681 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 682 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 683 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 684 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 685 "data/maps/PetalburgCity/scripts.pory"

# 686 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 687 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 688 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 689 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 690 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 691 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 692 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 693 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 694 "data/maps/PetalburgCity/scripts.pory"

# 695 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachLeft:
# 696 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 697 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 698 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 699 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 700 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 701 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 702 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 703 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 704 "data/maps/PetalburgCity/scripts.pory"

# 705 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 706 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 707 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 708 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 709 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 710 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 711 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 712 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 713 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 714 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 715 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 716 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 717 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 718 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 719 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 720 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 721 "data/maps/PetalburgCity/scripts.pory"

# 722 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 723 "data/maps/PetalburgCity/scripts.pory"
@ TRIGGERS DE DERROTA (BLOQUEIO DAS SAÍDAS DA CIDADE)
# 724 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 725 "data/maps/PetalburgCity/scripts.pory"

# 726 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight::
# 727 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaRight_Trigger
# 728 "data/maps/PetalburgCity/scripts.pory"
	end
# 729 "data/maps/PetalburgCity/scripts.pory"

# 730 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight_Trigger::
# 731 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 732 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 733 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 734 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerLeft
# 735 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 736 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 737 "data/maps/PetalburgCity/scripts.pory"
	end
# 738 "data/maps/PetalburgCity/scripts.pory"

# 739 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft::
# 740 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaLeft_Trigger
# 741 "data/maps/PetalburgCity/scripts.pory"
	end
# 742 "data/maps/PetalburgCity/scripts.pory"

# 743 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft_Trigger::
# 744 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 745 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 746 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 747 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerRight
# 748 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 749 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 750 "data/maps/PetalburgCity/scripts.pory"
	end
# 751 "data/maps/PetalburgCity/scripts.pory"

# 752 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerLeft:
# 753 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 754 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 755 "data/maps/PetalburgCity/scripts.pory"

# 756 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerRight:
# 757 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 758 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 759 "data/maps/PetalburgCity/scripts.pory"

# 760 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_MustSeeLukaInHouse:
# 761 "data/maps/PetalburgCity/scripts.pory"
	.string "Oh, I have to see Luka in his house!$"
# 762 "data/maps/PetalburgCity/scripts.pory"

# 763 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 764 "data/maps/PetalburgCity/scripts.pory"
@ TEXTOS DIVERSOS
# 765 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 766 "data/maps/PetalburgCity/scripts.pory"

# 767 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 768 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 769 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 770 "data/maps/PetalburgCity/scripts.pory"

# 771 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 772 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 773 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 774 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 775 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 776 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 777 "data/maps/PetalburgCity/scripts.pory"

# 778 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 779 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 780 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 781 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 782 "data/maps/PetalburgCity/scripts.pory"

# 783 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 784 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 785 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 786 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 787 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 788 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 789 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 790 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 791 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 792 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 793 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 794 "data/maps/PetalburgCity/scripts.pory"

# 795 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 796 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 797 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 798 "data/maps/PetalburgCity/scripts.pory"

# 799 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 800 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 801 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 802 "data/maps/PetalburgCity/scripts.pory"

# 803 "data/maps/PetalburgCity/scripts.pory"

# 804 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeBoy:
# 805 "data/maps/PetalburgCity/scripts.pory"
	.string "The water's gone all choppy from\n"
# 806 "data/maps/PetalburgCity/scripts.pory"
	.string "the quakes.\p"
# 807 "data/maps/PetalburgCity/scripts.pory"
	.string "Even my reflection looks like it\n"
# 808 "data/maps/PetalburgCity/scripts.pory"
	.string "wants to run for cover.$"
# 809 "data/maps/PetalburgCity/scripts.pory"

# 810 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeWallysMom:
# 811 "data/maps/PetalburgCity/scripts.pory"
	.string "This rain came on so suddenly...\p"
# 812 "data/maps/PetalburgCity/scripts.pory"
	.string "I hope everyone outside is keeping\n"
# 813 "data/maps/PetalburgCity/scripts.pory"
	.string "safe.$"
# 814 "data/maps/PetalburgCity/scripts.pory"

# 815 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGentleman:
# 816 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG WOODS has always made\n"
# 817 "data/maps/PetalburgCity/scripts.pory"
	.string "strange sounds at night.\p"
# 818 "data/maps/PetalburgCity/scripts.pory"
	.string "But now even the ground beneath the\n"
# 819 "data/maps/PetalburgCity/scripts.pory"
	.string "city seems restless.$"
# 820 "data/maps/PetalburgCity/scripts.pory"

# 821 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGymBoy:
# 822 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM's closed while CALENDULA\n"
# 823 "data/maps/PetalburgCity/scripts.pory"
	.string "looks into this storm.\p"
# 824 "data/maps/PetalburgCity/scripts.pory"
	.string "Whatever is happening, it feels\n"
# 825 "data/maps/PetalburgCity/scripts.pory"
	.string "bigger than a normal battle.$"
# 826 "data/maps/PetalburgCity/scripts.pory"

# 827 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAquaGruntBlock:
# 828 "data/maps/PetalburgCity/scripts.pory"
	.string "With the ground shaking like this,\n"
# 829 "data/maps/PetalburgCity/scripts.pory"
	.string "nobody's getting through here.\p"
# 830 "data/maps/PetalburgCity/scripts.pory"
	.string "Find another route until things\n"
# 831 "data/maps/PetalburgCity/scripts.pory"
	.string "settle down.$"
# 832 "data/maps/PetalburgCity/scripts.pory"

# 833 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAdventureBoy:
# 834 "data/maps/PetalburgCity/scripts.pory"
	.string "I wanted an adventure, but I didn't\n"
# 835 "data/maps/PetalburgCity/scripts.pory"
	.string "mean earthquakes and endless rain!\p"
# 836 "data/maps/PetalburgCity/scripts.pory"
	.string "This is a little too exciting for\n"
# 837 "data/maps/PetalburgCity/scripts.pory"
	.string "me.$"
# 838 "data/maps/PetalburgCity/scripts.pory"

# 839 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPart15:
# 840 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, have you met\n"
# 841 "data/maps/PetalburgCity/scripts.pory"
	.string "with AURORA yet?\p"
# 842 "data/maps/PetalburgCity/scripts.pory"
	.string "Things are getting worse here.\n"
# 843 "data/maps/PetalburgCity/scripts.pory"
	.string "Please go see her in PHOENIX TOWN\l"
# 844 "data/maps/PetalburgCity/scripts.pory"
	.string "and return as soon as possible.$"
# 845 "data/maps/PetalburgCity/scripts.pory"

# 846 "data/maps/PetalburgCity/scripts.pory"

# 847 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaOpenNightmarePortal:
# 848 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}! Welcome back!\n"
# 849 "data/maps/PetalburgCity/scripts.pory"
	.string "You have learned how to resolve\l"
# 850 "data/maps/PetalburgCity/scripts.pory"
	.string "this disaster?\p"
# 851 "data/maps/PetalburgCity/scripts.pory"
	.string "Wonderful! Please proceed right\n"
# 852 "data/maps/PetalburgCity/scripts.pory"
	.string "away.$"
# 853 "data/maps/PetalburgCity/scripts.pory"

# 854 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaPart15:
# 855 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: {PLAYER}! I'm glad to see\n"
# 856 "data/maps/PetalburgCity/scripts.pory"
	.string "you, but we really need some help\l"
# 857 "data/maps/PetalburgCity/scripts.pory"
	.string "here.\p"
# 858 "data/maps/PetalburgCity/scripts.pory"
	.string "Please tell me you have something.$"
# 859 "data/maps/PetalburgCity/scripts.pory"

# 860 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZinniaPart15:
# 861 "data/maps/PetalburgCity/scripts.pory"
	.string "ZINNIA: This rain just won't stop,\n"
# 862 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 863 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 864 "data/maps/PetalburgCity/scripts.pory"

# 865 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZennoPart15:
# 866 "data/maps/PetalburgCity/scripts.pory"
	.string "ZENNO: This rain just won't stop,\n"
# 867 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 868 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 869 "data/maps/PetalburgCity/scripts.pory"

# 870 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistFirst:
# 871 "data/maps/PetalburgCity/scripts.pory"
	.string "Careful, TRAINER! Did you feel\n"
# 872 "data/maps/PetalburgCity/scripts.pory"
	.string "that earthquake?\p"
# 873 "data/maps/PetalburgCity/scripts.pory"
	.string "They started suddenly along with\n"
# 874 "data/maps/PetalburgCity/scripts.pory"
	.string "this rain.$"
# 875 "data/maps/PetalburgCity/scripts.pory"

# 876 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistRepeat:
# 877 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM is closed right now.\p"
# 878 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA took off to the desert.\p"
# 879 "data/maps/PetalburgCity/scripts.pory"
	.string "She received a letter from someone\n"
# 880 "data/maps/PetalburgCity/scripts.pory"
	.string "in PHOENIX TOWN who says they can\l"
# 881 "data/maps/PetalburgCity/scripts.pory"
	.string "help.$"
# 882 "data/maps/PetalburgCity/scripts.pory"

# 883 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 884 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 885 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 886 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 887 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 888 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 889 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 890 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 891 "data/maps/PetalburgCity/scripts.pory"

# 892 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 893 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 894 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 895 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 896 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 897 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 898 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 899 "data/maps/PetalburgCity/scripts.pory"

# 900 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 901 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 902 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 903 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 904 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 905 "data/maps/PetalburgCity/scripts.pory"

# 906 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 907 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 908 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 909 "data/maps/PetalburgCity/scripts.pory"

# 910 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 911 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 912 "data/maps/PetalburgCity/scripts.pory"

# 913 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 914 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 915 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 916 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 917 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 918 "data/maps/PetalburgCity/scripts.pory"

# 919 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 920 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 921 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 922 "data/maps/PetalburgCity/scripts.pory"

# 923 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 924 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 925 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…\n"
# 926 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 927 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 928 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 929 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 930 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 931 "data/maps/PetalburgCity/scripts.pory"

# 932 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 933 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 934 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 935 "data/maps/PetalburgCity/scripts.pory"

# 936 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 937 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 938 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 939 "data/maps/PetalburgCity/scripts.pory"

# 940 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 941 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 942 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 943 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 944 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 945 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 946 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 947 "data/maps/PetalburgCity/scripts.pory"

# 948 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 949 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 950 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 951 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 952 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 953 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 954 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 955 "data/maps/PetalburgCity/scripts.pory"

# 956 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 957 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 958 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 959 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 960 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 961 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 962 "data/maps/PetalburgCity/scripts.pory"

# 963 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 964 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 965 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 966 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 967 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 968 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 969 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 970 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 971 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
