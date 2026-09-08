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

# 215 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal::
# 216 "data/maps/PetalburgCity/scripts.pory"
	@ The rival starts outside the camera object-spawn range.
# 217 "data/maps/PetalburgCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 218 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 219 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_QUAKE_RIVAL
# 220 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_QUAKE_RIVAL, 24, 18
# 221 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 222 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaNightmareInterrupt, MSGBOX_DEFAULT
# 223 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 224 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 225 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_C_VS_LEGEND_BEAST, FALSE
# 226 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 227 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 228 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_CALENDULA, Common_Movement_ExclamationMark
# 229 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_LUKA, Common_Movement_ExclamationMark
# 230 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_RIVAL, Common_Movement_ExclamationMark
# 231 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_CALENDULA
# 232 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_LUKA
# 233 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_RIVAL
# 234 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_RIVAL, PetalburgCity_Movement_QuakeRivalRunToGroup
# 235 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 236 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 237 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaNightmareInterrupt
# 238 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoNightmareInterrupt
# 239 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 240 "data/maps/PetalburgCity/scripts.pory"

# 241 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaNightmareInterrupt::
# 242 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 243 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeRivalNightmareInterrupt, MSGBOX_DEFAULT
# 244 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 245 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 246 "data/maps/PetalburgCity/scripts.pory"

# 247 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoNightmareInterrupt::
# 248 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 249 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeRivalNightmareInterrupt, MSGBOX_DEFAULT
# 250 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 251 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 252 "data/maps/PetalburgCity/scripts.pory"

# 253 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLukaNightmareInterrupt::
# 254 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_LUKA, PetalburgCity_Movement_QuakeLukaMoveToGroup
# 255 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 256 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 257 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaNightmareInterrupt, MSGBOX_DEFAULT
# 258 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 259 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 260 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaPlayerSick, MSGBOX_DEFAULT
# 261 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 262 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 263 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 264 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 265 "data/maps/PetalburgCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 4
# 266 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 267 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 268 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 269 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 270 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 271 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 272 "data/maps/PetalburgCity/scripts.pory"
	delay 90
# 273 "data/maps/PetalburgCity/scripts.pory"
	playse SE_WARP_OUT
# 274 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 275 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 276 "data/maps/PetalburgCity/scripts.pory"
	warpsilent MAP_NIGHTMARE_PETALBURG, 23, 11
# 277 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 278 "data/maps/PetalburgCity/scripts.pory"
	release
# 279 "data/maps/PetalburgCity/scripts.pory"
	end
# 280 "data/maps/PetalburgCity/scripts.pory"

# 281 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareQuake::
# 282 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 1
# 283 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 1
# 284 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8006, 8
# 285 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8007, 5
# 286 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 287 "data/maps/PetalburgCity/scripts.pory"
	special ShakeCamera
# 288 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 289 "data/maps/PetalburgCity/scripts.pory"
	return
# 290 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLuka::
# 291 "data/maps/PetalburgCity/scripts.pory"
	lock
# 292 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 293 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 294 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaPart15, MSGBOX_DEFAULT
# 295 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 296 "data/maps/PetalburgCity/scripts.pory"
	release
# 297 "data/maps/PetalburgCity/scripts.pory"
	end
# 298 "data/maps/PetalburgCity/scripts.pory"

# 299 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRival::
# 300 "data/maps/PetalburgCity/scripts.pory"
	lock
# 301 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 302 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 303 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaPart15
# 304 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoPart15
# 305 "data/maps/PetalburgCity/scripts.pory"
	release
# 306 "data/maps/PetalburgCity/scripts.pory"
	end
# 307 "data/maps/PetalburgCity/scripts.pory"

# 308 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaPart15::
# 309 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 310 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZinniaPart15, MSGBOX_DEFAULT
# 311 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 312 "data/maps/PetalburgCity/scripts.pory"
	release
# 313 "data/maps/PetalburgCity/scripts.pory"
	end
# 314 "data/maps/PetalburgCity/scripts.pory"

# 315 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoPart15::
# 316 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 317 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZennoPart15, MSGBOX_DEFAULT
# 318 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 319 "data/maps/PetalburgCity/scripts.pory"
	release
# 320 "data/maps/PetalburgCity/scripts.pory"
	end
# 321 "data/maps/PetalburgCity/scripts.pory"

# 322 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 323 "data/maps/PetalburgCity/scripts.pory"
	lock
# 324 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 325 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Boy_Normal
# 326 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Boy_Normal
# 327 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeBoy, MSGBOX_DEFAULT
# 328 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 329 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 330 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 331 "data/maps/PetalburgCity/scripts.pory"
	release
# 332 "data/maps/PetalburgCity/scripts.pory"
	end
# 333 "data/maps/PetalburgCity/scripts.pory"

# 334 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy_Normal::
# 335 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 336 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 337 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 338 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 339 "data/maps/PetalburgCity/scripts.pory"
	release
# 340 "data/maps/PetalburgCity/scripts.pory"
	end
# 341 "data/maps/PetalburgCity/scripts.pory"

# 342 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 343 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_WallysMom_Normal
# 344 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_WallysMom_Normal
# 345 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeWallysMom, MSGBOX_NPC
# 346 "data/maps/PetalburgCity/scripts.pory"
	end
# 347 "data/maps/PetalburgCity/scripts.pory"

# 348 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom_Normal::
# 349 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 350 "data/maps/PetalburgCity/scripts.pory"
	end
# 351 "data/maps/PetalburgCity/scripts.pory"

# 352 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 353 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 354 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 355 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 356 "data/maps/PetalburgCity/scripts.pory"
	end
# 357 "data/maps/PetalburgCity/scripts.pory"

# 358 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 359 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 360 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 361 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 362 "data/maps/PetalburgCity/scripts.pory"
	end
# 363 "data/maps/PetalburgCity/scripts.pory"

# 364 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 365 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 366 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 367 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 368 "data/maps/PetalburgCity/scripts.pory"
	end
# 369 "data/maps/PetalburgCity/scripts.pory"

# 370 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 371 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 372 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 373 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 374 "data/maps/PetalburgCity/scripts.pory"
	end
# 375 "data/maps/PetalburgCity/scripts.pory"

# 376 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 377 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 378 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 379 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 380 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 381 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 382 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 383 "data/maps/PetalburgCity/scripts.pory"
	end
# 384 "data/maps/PetalburgCity/scripts.pory"

# 385 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 386 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 387 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 388 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 389 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 390 "data/maps/PetalburgCity/scripts.pory"
	end
# 391 "data/maps/PetalburgCity/scripts.pory"

# 392 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 393 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 394 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 395 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 396 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 397 "data/maps/PetalburgCity/scripts.pory"
	end
# 398 "data/maps/PetalburgCity/scripts.pory"

# 399 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 400 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 401 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 402 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 403 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 404 "data/maps/PetalburgCity/scripts.pory"
	end
# 405 "data/maps/PetalburgCity/scripts.pory"

# 406 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 407 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 408 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 409 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 410 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 411 "data/maps/PetalburgCity/scripts.pory"
	end
# 412 "data/maps/PetalburgCity/scripts.pory"

# 413 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 414 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 415 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 416 "data/maps/PetalburgCity/scripts.pory"
	end
# 417 "data/maps/PetalburgCity/scripts.pory"

# 418 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 419 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 420 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 421 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 422 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 423 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 424 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 425 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 426 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 427 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 428 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 429 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 430 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 431 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 432 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 433 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 434 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 435 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 436 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 437 "data/maps/PetalburgCity/scripts.pory"

# 438 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 439 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 440 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 441 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 442 "data/maps/PetalburgCity/scripts.pory"

# 443 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 444 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 445 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 446 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 447 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 448 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 449 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 450 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 451 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 452 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 453 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 454 "data/maps/PetalburgCity/scripts.pory"
	walk_left
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
	walk_up
# 461 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 462 "data/maps/PetalburgCity/scripts.pory"

# 463 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 464 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 465 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 466 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 467 "data/maps/PetalburgCity/scripts.pory"

# 468 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 469 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 470 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 471 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 472 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 473 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 474 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 475 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 476 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 477 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 478 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 479 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 480 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 481 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 482 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 483 "data/maps/PetalburgCity/scripts.pory"
	walk_right
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
	walk_right
# 494 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 495 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 496 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 497 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 498 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 499 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 500 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 501 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 502 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 503 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 504 "data/maps/PetalburgCity/scripts.pory"

# 505 "data/maps/PetalburgCity/scripts.pory"

# 506 "data/maps/PetalburgCity/scripts.pory"

# 507 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakeRivalRunToGroup:
# 508 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 509 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 510 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 511 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 512 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 513 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 514 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 515 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 516 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 517 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 518 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 519 "data/maps/PetalburgCity/scripts.pory"
	face_up
# 520 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 521 "data/maps/PetalburgCity/scripts.pory"

# 522 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakeLukaMoveToGroup:
# 523 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 524 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 525 "data/maps/PetalburgCity/scripts.pory"
	face_right
# 526 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 527 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 528 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 529 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 530 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 532 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 533 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 534 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 535 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 536 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 537 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 538 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 539 "data/maps/PetalburgCity/scripts.pory"
	walk_right
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
	walk_right
# 551 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 552 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 553 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 554 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 555 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 556 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 557 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 558 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 559 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 560 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 561 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 562 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 563 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 564 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 565 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 566 "data/maps/PetalburgCity/scripts.pory"

# 567 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 568 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 569 "data/maps/PetalburgCity/scripts.pory"
	end
# 570 "data/maps/PetalburgCity/scripts.pory"

# 571 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 572 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 573 "data/maps/PetalburgCity/scripts.pory"
	end
# 574 "data/maps/PetalburgCity/scripts.pory"

# 575 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 576 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Gentleman_Normal
# 577 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Gentleman_Normal
# 578 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGentleman, MSGBOX_NPC
# 579 "data/maps/PetalburgCity/scripts.pory"
	end
# 580 "data/maps/PetalburgCity/scripts.pory"

# 581 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman_Normal::
# 582 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 583 "data/maps/PetalburgCity/scripts.pory"
	end
# 584 "data/maps/PetalburgCity/scripts.pory"

# 585 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 586 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 587 "data/maps/PetalburgCity/scripts.pory"
	end
# 588 "data/maps/PetalburgCity/scripts.pory"

# 589 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 590 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_GymBoy_Normal
# 591 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_GymBoy_Normal
# 592 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGymBoy, MSGBOX_NPC
# 593 "data/maps/PetalburgCity/scripts.pory"
	end
# 594 "data/maps/PetalburgCity/scripts.pory"

# 595 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy_Normal::
# 596 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 597 "data/maps/PetalburgCity/scripts.pory"
	end
# 598 "data/maps/PetalburgCity/scripts.pory"

# 599 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 600 "data/maps/PetalburgCity/scripts.pory"
	lock
# 601 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 602 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 603 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 604 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAquaGruntBlock, MSGBOX_DEFAULT
# 605 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 606 "data/maps/PetalburgCity/scripts.pory"
	release
# 607 "data/maps/PetalburgCity/scripts.pory"
	end
# 608 "data/maps/PetalburgCity/scripts.pory"

# 609 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock_Normal::
# 610 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 611 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 612 "data/maps/PetalburgCity/scripts.pory"
	release
# 613 "data/maps/PetalburgCity/scripts.pory"
	end
# 614 "data/maps/PetalburgCity/scripts.pory"

# 615 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 616 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AdventureBoy_Normal
# 617 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AdventureBoy_Normal
# 618 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAdventureBoy, MSGBOX_NPC
# 619 "data/maps/PetalburgCity/scripts.pory"
	end
# 620 "data/maps/PetalburgCity/scripts.pory"

# 621 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy_Normal::
# 622 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 623 "data/maps/PetalburgCity/scripts.pory"
	end
# 624 "data/maps/PetalburgCity/scripts.pory"

# 625 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 626 "data/maps/PetalburgCity/scripts.pory"
@ ENCONTRO COM O LUKA APÓS O GINÁSIO
# 627 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 628 "data/maps/PetalburgCity/scripts.pory"

# 629 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 630 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 631 "data/maps/PetalburgCity/scripts.pory"
	end
# 632 "data/maps/PetalburgCity/scripts.pory"

# 633 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 634 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 635 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 636 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 637 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachCenter
# 638 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 639 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 640 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 641 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 642 "data/maps/PetalburgCity/scripts.pory"
	end
# 643 "data/maps/PetalburgCity/scripts.pory"

# 644 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 645 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 646 "data/maps/PetalburgCity/scripts.pory"
	end
# 647 "data/maps/PetalburgCity/scripts.pory"

# 648 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 649 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 650 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 651 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 652 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachLeft
# 653 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 654 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 655 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 656 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 657 "data/maps/PetalburgCity/scripts.pory"
	end
# 658 "data/maps/PetalburgCity/scripts.pory"

# 659 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 660 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 661 "data/maps/PetalburgCity/scripts.pory"
	end
# 662 "data/maps/PetalburgCity/scripts.pory"

# 663 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 664 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 665 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 666 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 20, 12
# 667 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Approach5
# 668 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 669 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 670 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 671 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 672 "data/maps/PetalburgCity/scripts.pory"
	end
# 673 "data/maps/PetalburgCity/scripts.pory"

# 674 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_StartBattle::
# 675 "data/maps/PetalburgCity/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 676 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 677 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 678 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 679 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 680 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 681 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 682 "data/maps/PetalburgCity/scripts.pory"
	end
# 683 "data/maps/PetalburgCity/scripts.pory"

# 684 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 685 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 686 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 687 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 688 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 689 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 690 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 691 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 692 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 693 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 694 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 695 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 696 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 697 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 698 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 699 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 700 "data/maps/PetalburgCity/scripts.pory"
	end
# 701 "data/maps/PetalburgCity/scripts.pory"

# 702 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachCenter:
# 703 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 704 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 705 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 706 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 707 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 708 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 709 "data/maps/PetalburgCity/scripts.pory"

# 710 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Approach5:
# 711 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 712 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 713 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 714 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 715 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 716 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 717 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 718 "data/maps/PetalburgCity/scripts.pory"

# 719 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachLeft:
# 720 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 721 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 722 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 723 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 724 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 725 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 726 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 727 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 728 "data/maps/PetalburgCity/scripts.pory"

# 729 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 730 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 731 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 732 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 733 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 734 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 735 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 736 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 737 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 738 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 739 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 740 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 741 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 742 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 743 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 744 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 745 "data/maps/PetalburgCity/scripts.pory"

# 746 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 747 "data/maps/PetalburgCity/scripts.pory"
@ TRIGGERS DE DERROTA (BLOQUEIO DAS SAÍDAS DA CIDADE)
# 748 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 749 "data/maps/PetalburgCity/scripts.pory"

# 750 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight::
# 751 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaRight_Trigger
# 752 "data/maps/PetalburgCity/scripts.pory"
	end
# 753 "data/maps/PetalburgCity/scripts.pory"

# 754 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight_Trigger::
# 755 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 756 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 757 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 758 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerLeft
# 759 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 760 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 761 "data/maps/PetalburgCity/scripts.pory"
	end
# 762 "data/maps/PetalburgCity/scripts.pory"

# 763 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft::
# 764 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaLeft_Trigger
# 765 "data/maps/PetalburgCity/scripts.pory"
	end
# 766 "data/maps/PetalburgCity/scripts.pory"

# 767 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft_Trigger::
# 768 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 769 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 770 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 771 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerRight
# 772 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 773 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 774 "data/maps/PetalburgCity/scripts.pory"
	end
# 775 "data/maps/PetalburgCity/scripts.pory"

# 776 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerLeft:
# 777 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 778 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 779 "data/maps/PetalburgCity/scripts.pory"

# 780 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerRight:
# 781 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 782 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 783 "data/maps/PetalburgCity/scripts.pory"

# 784 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_MustSeeLukaInHouse:
# 785 "data/maps/PetalburgCity/scripts.pory"
	.string "Oh, I have to see Luka in his house!$"
# 786 "data/maps/PetalburgCity/scripts.pory"

# 787 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 788 "data/maps/PetalburgCity/scripts.pory"
@ TEXTOS DIVERSOS
# 789 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 790 "data/maps/PetalburgCity/scripts.pory"

# 791 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 792 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 793 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 794 "data/maps/PetalburgCity/scripts.pory"

# 795 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 796 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 797 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 798 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 799 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 800 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 801 "data/maps/PetalburgCity/scripts.pory"

# 802 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 803 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 804 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 805 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 806 "data/maps/PetalburgCity/scripts.pory"

# 807 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 808 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 809 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 810 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 811 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 812 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 813 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 814 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 815 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 816 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 817 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 818 "data/maps/PetalburgCity/scripts.pory"

# 819 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 820 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 821 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 822 "data/maps/PetalburgCity/scripts.pory"

# 823 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 824 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 825 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 826 "data/maps/PetalburgCity/scripts.pory"

# 827 "data/maps/PetalburgCity/scripts.pory"

# 828 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeBoy:
# 829 "data/maps/PetalburgCity/scripts.pory"
	.string "The water's gone all choppy from\n"
# 830 "data/maps/PetalburgCity/scripts.pory"
	.string "the quakes.\p"
# 831 "data/maps/PetalburgCity/scripts.pory"
	.string "Even my reflection looks like it\n"
# 832 "data/maps/PetalburgCity/scripts.pory"
	.string "wants to run for cover.$"
# 833 "data/maps/PetalburgCity/scripts.pory"

# 834 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeWallysMom:
# 835 "data/maps/PetalburgCity/scripts.pory"
	.string "This rain came on so suddenly...\p"
# 836 "data/maps/PetalburgCity/scripts.pory"
	.string "I hope everyone outside is keeping\n"
# 837 "data/maps/PetalburgCity/scripts.pory"
	.string "safe.$"
# 838 "data/maps/PetalburgCity/scripts.pory"

# 839 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGentleman:
# 840 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG WOODS has always made\n"
# 841 "data/maps/PetalburgCity/scripts.pory"
	.string "strange sounds at night.\p"
# 842 "data/maps/PetalburgCity/scripts.pory"
	.string "But now even the ground beneath the\n"
# 843 "data/maps/PetalburgCity/scripts.pory"
	.string "city seems restless.$"
# 844 "data/maps/PetalburgCity/scripts.pory"

# 845 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGymBoy:
# 846 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM's closed while CALENDULA\n"
# 847 "data/maps/PetalburgCity/scripts.pory"
	.string "looks into this storm.\p"
# 848 "data/maps/PetalburgCity/scripts.pory"
	.string "Whatever is happening, it feels\n"
# 849 "data/maps/PetalburgCity/scripts.pory"
	.string "bigger than a normal battle.$"
# 850 "data/maps/PetalburgCity/scripts.pory"

# 851 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAquaGruntBlock:
# 852 "data/maps/PetalburgCity/scripts.pory"
	.string "With the ground shaking like this,\n"
# 853 "data/maps/PetalburgCity/scripts.pory"
	.string "nobody's getting through here.\p"
# 854 "data/maps/PetalburgCity/scripts.pory"
	.string "Find another route until things\n"
# 855 "data/maps/PetalburgCity/scripts.pory"
	.string "settle down.$"
# 856 "data/maps/PetalburgCity/scripts.pory"

# 857 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAdventureBoy:
# 858 "data/maps/PetalburgCity/scripts.pory"
	.string "I wanted an adventure, but I didn't\n"
# 859 "data/maps/PetalburgCity/scripts.pory"
	.string "mean earthquakes and endless rain!\p"
# 860 "data/maps/PetalburgCity/scripts.pory"
	.string "This is a little too exciting for\n"
# 861 "data/maps/PetalburgCity/scripts.pory"
	.string "me.$"
# 862 "data/maps/PetalburgCity/scripts.pory"

# 863 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPart15:
# 864 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, have you met\n"
# 865 "data/maps/PetalburgCity/scripts.pory"
	.string "with AURORA yet?\p"
# 866 "data/maps/PetalburgCity/scripts.pory"
	.string "Things are getting worse here.\n"
# 867 "data/maps/PetalburgCity/scripts.pory"
	.string "Please go see her in PHOENIX TOWN\l"
# 868 "data/maps/PetalburgCity/scripts.pory"
	.string "and return as soon as possible.$"
# 869 "data/maps/PetalburgCity/scripts.pory"

# 870 "data/maps/PetalburgCity/scripts.pory"

# 871 "data/maps/PetalburgCity/scripts.pory"

# 872 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaNightmareInterrupt:
# 873 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: You're back, {PLAYER}!\n"
# 874 "data/maps/PetalburgCity/scripts.pory"
	.string "The situation here is getting worse\l"
# 875 "data/maps/PetalburgCity/scripts.pory"
	.string "by the minute. Did you learn-$"
# 876 "data/maps/PetalburgCity/scripts.pory"

# 877 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeRivalNightmareInterrupt:
# 878 "data/maps/PetalburgCity/scripts.pory"
	.string "That was a big one!\n"
# 879 "data/maps/PetalburgCity/scripts.pory"
	.string "Is everyone alright?$"
# 880 "data/maps/PetalburgCity/scripts.pory"

# 881 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaNightmareInterrupt:
# 882 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: We're okay over here, but-\n"
# 883 "data/maps/PetalburgCity/scripts.pory"
	.string "wait, {PLAYER}, you don't look so good.$"
# 884 "data/maps/PetalburgCity/scripts.pory"

# 885 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPlayerSick:
# 886 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, what's wrong?\n"
# 887 "data/maps/PetalburgCity/scripts.pory"
	.string "Are you okay?$"
# 888 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaPart15:
# 889 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: {PLAYER}! I'm glad to see\n"
# 890 "data/maps/PetalburgCity/scripts.pory"
	.string "you, but we really need some help\l"
# 891 "data/maps/PetalburgCity/scripts.pory"
	.string "here.\p"
# 892 "data/maps/PetalburgCity/scripts.pory"
	.string "Please tell me you have something.$"
# 893 "data/maps/PetalburgCity/scripts.pory"

# 894 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZinniaPart15:
# 895 "data/maps/PetalburgCity/scripts.pory"
	.string "ZINNIA: This rain just won't stop,\n"
# 896 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 897 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 898 "data/maps/PetalburgCity/scripts.pory"

# 899 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZennoPart15:
# 900 "data/maps/PetalburgCity/scripts.pory"
	.string "ZENNO: This rain just won't stop,\n"
# 901 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 902 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 903 "data/maps/PetalburgCity/scripts.pory"

# 904 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistFirst:
# 905 "data/maps/PetalburgCity/scripts.pory"
	.string "Careful, TRAINER! Did you feel\n"
# 906 "data/maps/PetalburgCity/scripts.pory"
	.string "that earthquake?\p"
# 907 "data/maps/PetalburgCity/scripts.pory"
	.string "They started suddenly along with\n"
# 908 "data/maps/PetalburgCity/scripts.pory"
	.string "this rain.$"
# 909 "data/maps/PetalburgCity/scripts.pory"

# 910 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistRepeat:
# 911 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM is closed right now.\p"
# 912 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA took off to the desert.\p"
# 913 "data/maps/PetalburgCity/scripts.pory"
	.string "She received a letter from someone\n"
# 914 "data/maps/PetalburgCity/scripts.pory"
	.string "in PHOENIX TOWN who says they can\l"
# 915 "data/maps/PetalburgCity/scripts.pory"
	.string "help.$"
# 916 "data/maps/PetalburgCity/scripts.pory"

# 917 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 918 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 919 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 920 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 921 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 922 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 923 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 924 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 925 "data/maps/PetalburgCity/scripts.pory"

# 926 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 927 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 928 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 929 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 930 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 931 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 932 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 933 "data/maps/PetalburgCity/scripts.pory"

# 934 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 935 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 936 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 937 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 938 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 939 "data/maps/PetalburgCity/scripts.pory"

# 940 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 941 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 942 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 943 "data/maps/PetalburgCity/scripts.pory"

# 944 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 945 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 946 "data/maps/PetalburgCity/scripts.pory"

# 947 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 948 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 949 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 950 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 951 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 952 "data/maps/PetalburgCity/scripts.pory"

# 953 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 954 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 955 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 956 "data/maps/PetalburgCity/scripts.pory"

# 957 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 958 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 959 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…\n"
# 960 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 961 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 962 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 963 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 964 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 965 "data/maps/PetalburgCity/scripts.pory"

# 966 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 967 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 968 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 969 "data/maps/PetalburgCity/scripts.pory"

# 970 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 971 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 972 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 973 "data/maps/PetalburgCity/scripts.pory"

# 974 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 975 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 976 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 977 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 978 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 979 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 980 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 981 "data/maps/PetalburgCity/scripts.pory"

# 982 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 983 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 984 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 985 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 986 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 987 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 988 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 989 "data/maps/PetalburgCity/scripts.pory"

# 990 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 991 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 992 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 993 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 994 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 995 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 996 "data/maps/PetalburgCity/scripts.pory"

# 997 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 998 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 999 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 1000 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 1001 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 1002 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 1003 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 1004 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 1005 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
