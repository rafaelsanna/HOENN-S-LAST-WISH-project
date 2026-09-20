# 1 "data/maps/PetalburgCity/scripts.pory"

# 2 "data/maps/PetalburgCity/scripts.pory"

# 3 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_MapScripts::
# 4 "data/maps/PetalburgCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PetalburgCity_OnTransition
# 5 "data/maps/PetalburgCity/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, PetalburgCity_OnFrame
# 6 "data/maps/PetalburgCity/scripts.pory"
	.byte 0
# 7 "data/maps/PetalburgCity/scripts.pory"

# 8 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnTransition:
# 9 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_VISITED_PETALBURG_CITY
# 10 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 0
# 11 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 0
# 12 "data/maps/PetalburgCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 13 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleQuakeRainEvent
# 14 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleNightmareReturnScene
# 15 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_LUKA_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_HideLukaAfterGym
# 16 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 17 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_DisableMapNameAndMusic
# 18 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_DisableMapNameAndMusic
# 19 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_EventScript_SetGymDoorsUnlocked
# 20 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleAquaGrunts
# 21 "data/maps/PetalburgCity/scripts.pory"
	end
# 22 "data/maps/PetalburgCity/scripts.pory"

# 23 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideLukaAfterGym::
# 24 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 25 "data/maps/PetalburgCity/scripts.pory"
	return
# 26 "data/maps/PetalburgCity/scripts.pory"

# 27 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleQuakeRainEvent::
# 28 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_HideQuakeEventNpcs
# 29 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_HideQuakeEventNpcs
# 30 "data/maps/PetalburgCity/scripts.pory"
	setweather WEATHER_RAIN
# 31 "data/maps/PetalburgCity/scripts.pory"
	doweather
# 32 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART1_CLEARED, PetalburgCity_EventScript_HandleQuakeReturnGroup
# 33 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 34 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 35 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 36 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 37 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 38 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_EVENT_STARTED, PetalburgCity_EventScript_QuakeRainEventAlreadyStarted
# 39 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 1
# 40 "data/maps/PetalburgCity/scripts.pory"
	return
# 41 "data/maps/PetalburgCity/scripts.pory"

# 42 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleQuakeReturnGroup::
# 43 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 44 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 45 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 46 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 47 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 48 "data/maps/PetalburgCity/scripts.pory"
	return
# 49 "data/maps/PetalburgCity/scripts.pory"

# 50 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideQuakeReturnGroup::
# 51 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 52 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 53 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 54 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 55 "data/maps/PetalburgCity/scripts.pory"
	return
# 56 "data/maps/PetalburgCity/scripts.pory"

# 57 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRainEventAlreadyStarted::
# 58 "data/maps/PetalburgCity/scripts.pory"
	return
# 59 "data/maps/PetalburgCity/scripts.pory"

# 60 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideQuakeEventNpcs::
# 61 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 62 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 63 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 64 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 65 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 66 "data/maps/PetalburgCity/scripts.pory"
	return
# 67 "data/maps/PetalburgCity/scripts.pory"

# 68 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleNightmareReturnScene::
# 69 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_HideNightmareReturnScene
# 70 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_HideNightmareReturnScene
# 71 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_LUKA
# 72 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 73 "data/maps/PetalburgCity/scripts.pory"
	return
# 74 "data/maps/PetalburgCity/scripts.pory"

# 75 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideNightmareReturnScene::
# 76 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_LUKA
# 77 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 78 "data/maps/PetalburgCity/scripts.pory"
	return
# 79 "data/maps/PetalburgCity/scripts.pory"

# 80 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleAquaGrunts::
# 81 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LUKA_SLATEPORT_CARGO_INTRO, PetalburgCity_EventScript_HideAquaGrunts
# 82 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_ShowAquaGrunts
# 83 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_HideAquaGrunts
# 84 "data/maps/PetalburgCity/scripts.pory"

# 85 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowAquaGrunts::
# 86 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 87 "data/maps/PetalburgCity/scripts.pory"
	return
# 88 "data/maps/PetalburgCity/scripts.pory"

# 89 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideAquaGrunts::
# 90 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 91 "data/maps/PetalburgCity/scripts.pory"
	return
# 92 "data/maps/PetalburgCity/scripts.pory"

# 93 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_MoveGymBoyToWestEntrance::
# 94 "data/maps/PetalburgCity/scripts.pory"
	setobjectxyperm LOCALID_GYM_BOY, 5, 11
# 95 "data/maps/PetalburgCity/scripts.pory"
	return
# 96 "data/maps/PetalburgCity/scripts.pory"

# 97 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_DisableMapNameAndMusic::
# 98 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 99 "data/maps/PetalburgCity/scripts.pory"
	savebgm MUS_FOLLOW_ME
# 100 "data/maps/PetalburgCity/scripts.pory"
	return
# 101 "data/maps/PetalburgCity/scripts.pory"

# 102 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_SetGymDoorsUnlocked::
# 103 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 7
# 104 "data/maps/PetalburgCity/scripts.pory"
	return
# 105 "data/maps/PetalburgCity/scripts.pory"

# 106 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnFrame:
# 107 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, PetalburgCity_EventScript_FirstQuakeAfterHeatBadge
# 108 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_WallyTutorial
# 109 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_WalkToWallyHouse
# 110 "data/maps/PetalburgCity/scripts.pory"
	.2byte 0
# 111 "data/maps/PetalburgCity/scripts.pory"

# 112 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_FirstQuakeAfterHeatBadge::
# 113 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 114 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 0
# 115 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_EVENT_STARTED
# 116 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 1
# 117 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 1
# 118 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8006, 8
# 119 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8007, 5
# 120 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 121 "data/maps/PetalburgCity/scripts.pory"
	special ShakeCamera
# 122 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 123 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 124 "data/maps/PetalburgCity/scripts.pory"
	end
# 125 "data/maps/PetalburgCity/scripts.pory"

# 126 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial::
# 127 "data/maps/PetalburgCity/scripts.pory"
    lockall
# 128 "data/maps/PetalburgCity/scripts.pory"
    special SavePlayerParty
# 129 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, PetalburgCity_Movement_WallyTutorialWally
# 130 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PLAYER, PetalburgCity_Movement_WallyTutorialPlayer
# 131 "data/maps/PetalburgCity/scripts.pory"
    waitmovement 0
# 132 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WatchMeCatchPokemon, MSGBOX_DEFAULT
# 133 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 134 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyIntro, MSGBOX_DEFAULT
# 135 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 136 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 137 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_WHITEOUT
# 138 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_RUNNING
# 139 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 140 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 141 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 142 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 143 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 144 "data/maps/PetalburgCity/scripts.pory"

# 145 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 146 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 147 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 148 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 149 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 150 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 151 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 152 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 153 "data/maps/PetalburgCity/scripts.pory"

# 154 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Defeat::
# 155 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 156 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 157 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 158 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 159 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 160 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 161 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 162 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 163 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 164 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 165 "data/maps/PetalburgCity/scripts.pory"

# 166 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 167 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 168 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 169 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 170 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 171 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 172 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 173 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 174 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 175 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 176 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 177 "data/maps/PetalburgCity/scripts.pory"
    end
# 178 "data/maps/PetalburgCity/scripts.pory"

# 179 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 180 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 181 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 182 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 183 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkToWallyHousePlayer
# 184 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 185 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 186 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 187 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 188 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 189 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 190 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkInsideHousePlayer
# 191 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 192 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 193 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 194 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 195 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 196 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 197 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 198 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 199 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 200 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 201 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 202 "data/maps/PetalburgCity/scripts.pory"
	end
# 203 "data/maps/PetalburgCity/scripts.pory"

# 204 "data/maps/PetalburgCity/scripts.pory"
eventscientist::
# 205 "data/maps/PetalburgCity/scripts.pory"
	lock
# 206 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 207 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_SCIENTIST_SPOKE, PetalburgCity_EventScript_QuakeScientistRepeat
# 208 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_SCIENTIST_SPOKE
# 209 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistFirst, MSGBOX_DEFAULT
# 210 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistRepeat, MSGBOX_DEFAULT
# 211 "data/maps/PetalburgCity/scripts.pory"
	release
# 212 "data/maps/PetalburgCity/scripts.pory"
	end
# 213 "data/maps/PetalburgCity/scripts.pory"

# 214 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeScientistRepeat::
# 215 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistRepeat, MSGBOX_DEFAULT
# 216 "data/maps/PetalburgCity/scripts.pory"
	release
# 217 "data/maps/PetalburgCity/scripts.pory"
	end
# 218 "data/maps/PetalburgCity/scripts.pory"

# 219 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendula::
# 220 "data/maps/PetalburgCity/scripts.pory"
	lock
# 221 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 222 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART15_CLEARED, PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal
# 223 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 224 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaPart15, MSGBOX_DEFAULT
# 225 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 226 "data/maps/PetalburgCity/scripts.pory"
	release
# 227 "data/maps/PetalburgCity/scripts.pory"
	end
# 228 "data/maps/PetalburgCity/scripts.pory"

# 229 "data/maps/PetalburgCity/scripts.pory"

# 230 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal::
# 231 "data/maps/PetalburgCity/scripts.pory"
	@ The rival starts outside the camera object-spawn range.
# 232 "data/maps/PetalburgCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 233 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 234 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_QUAKE_RIVAL
# 235 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_QUAKE_RIVAL, 24, 18
# 236 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 237 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaNightmareInterrupt, MSGBOX_DEFAULT
# 238 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 239 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 240 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_C_VS_LEGEND_BEAST, FALSE
# 241 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 242 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 243 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_CALENDULA, Common_Movement_ExclamationMark
# 244 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_LUKA, Common_Movement_ExclamationMark
# 245 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_RIVAL, Common_Movement_ExclamationMark
# 246 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_CALENDULA
# 247 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_LUKA
# 248 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_RIVAL
# 249 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_RIVAL, PetalburgCity_Movement_QuakeRivalRunToGroup
# 250 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 251 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 252 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaNightmareInterrupt
# 253 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoNightmareInterrupt
# 254 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 255 "data/maps/PetalburgCity/scripts.pory"

# 256 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaNightmareInterrupt::
# 257 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 258 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeRivalNightmareInterrupt, MSGBOX_DEFAULT
# 259 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 260 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 261 "data/maps/PetalburgCity/scripts.pory"

# 262 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoNightmareInterrupt::
# 263 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 264 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeRivalNightmareInterrupt, MSGBOX_DEFAULT
# 265 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 266 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 267 "data/maps/PetalburgCity/scripts.pory"

# 268 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLukaNightmareInterrupt::
# 269 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_LUKA, PetalburgCity_Movement_QuakeLukaMoveToGroup
# 270 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 271 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 272 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaNightmareInterrupt, MSGBOX_DEFAULT
# 273 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 274 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 275 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaPlayerSick, MSGBOX_DEFAULT
# 276 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 277 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 278 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 279 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 280 "data/maps/PetalburgCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 4
# 281 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 282 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 283 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 284 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 285 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 286 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 287 "data/maps/PetalburgCity/scripts.pory"
	delay 90
# 288 "data/maps/PetalburgCity/scripts.pory"
	playse SE_WARP_OUT
# 289 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 290 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 291 "data/maps/PetalburgCity/scripts.pory"
	warpsilent MAP_NIGHTMARE_PETALBURG, 47, 18
# 292 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 293 "data/maps/PetalburgCity/scripts.pory"
	release
# 294 "data/maps/PetalburgCity/scripts.pory"
	end
# 295 "data/maps/PetalburgCity/scripts.pory"

# 296 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareQuake::
# 297 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 1
# 298 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 1
# 299 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8006, 8
# 300 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8007, 5
# 301 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 302 "data/maps/PetalburgCity/scripts.pory"
	special ShakeCamera
# 303 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 304 "data/maps/PetalburgCity/scripts.pory"
	return
# 305 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLuka::
# 306 "data/maps/PetalburgCity/scripts.pory"
	lock
# 307 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 308 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 309 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaPart15, MSGBOX_DEFAULT
# 310 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 311 "data/maps/PetalburgCity/scripts.pory"
	release
# 312 "data/maps/PetalburgCity/scripts.pory"
	end
# 313 "data/maps/PetalburgCity/scripts.pory"

# 314 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRival::
# 315 "data/maps/PetalburgCity/scripts.pory"
	lock
# 316 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 317 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 318 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaPart15
# 319 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoPart15
# 320 "data/maps/PetalburgCity/scripts.pory"
	release
# 321 "data/maps/PetalburgCity/scripts.pory"
	end
# 322 "data/maps/PetalburgCity/scripts.pory"

# 323 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaPart15::
# 324 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 325 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZinniaPart15, MSGBOX_DEFAULT
# 326 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 327 "data/maps/PetalburgCity/scripts.pory"
	release
# 328 "data/maps/PetalburgCity/scripts.pory"
	end
# 329 "data/maps/PetalburgCity/scripts.pory"

# 330 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoPart15::
# 331 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 332 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZennoPart15, MSGBOX_DEFAULT
# 333 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 334 "data/maps/PetalburgCity/scripts.pory"
	release
# 335 "data/maps/PetalburgCity/scripts.pory"
	end
# 336 "data/maps/PetalburgCity/scripts.pory"

# 337 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Left::
# 338 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 339 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 340 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 341 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 342 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 0
# 343 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 344 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachLeft
# 345 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachLeft
# 346 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 347 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 348 "data/maps/PetalburgCity/scripts.pory"

# 349 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Right::
# 350 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 351 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 352 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 353 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 354 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 1
# 355 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 356 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachRight
# 357 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachRight
# 358 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 359 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 360 "data/maps/PetalburgCity/scripts.pory"

# 361 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Up::
# 362 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 363 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 364 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 365 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 366 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 2
# 367 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 368 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachUp
# 369 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachUp
# 370 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 371 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 372 "data/maps/PetalburgCity/scripts.pory"

# 373 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Down::
# 374 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 375 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 376 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 377 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 378 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 3
# 379 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 380 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachDown
# 381 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachDown
# 382 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 383 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 384 "data/maps/PetalburgCity/scripts.pory"

# 385 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Unavailable::
# 386 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 387 "data/maps/PetalburgCity/scripts.pory"
	end
# 388 "data/maps/PetalburgCity/scripts.pory"

# 389 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_NoticePlayer::
# 390 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, Common_Movement_ExclamationMark
# 391 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, Common_Movement_ExclamationMark
# 392 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 393 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, DIR_EAST
# 394 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, DIR_EAST
# 395 "data/maps/PetalburgCity/scripts.pory"
	return
# 396 "data/maps/PetalburgCity/scripts.pory"

# 397 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Dialogue::
# 398 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, DIR_EAST
# 399 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, DIR_NORTH
# 400 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 401 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 402 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaAwake, MSGBOX_DEFAULT
# 403 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 404 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 405 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 406 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalPassedOut
# 407 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 408 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 409 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaRelieved, MSGBOX_DEFAULT
# 410 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 411 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 412 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 413 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalGhost
# 414 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 415 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 416 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaUnsettled, MSGBOX_DEFAULT
# 417 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 418 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 419 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 420 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalLeaves
# 421 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalExit
# 422 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 423 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 424 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 425 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 426 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaLeaves, MSGBOX_DEFAULT
# 427 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 428 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 429 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_LukaExit
# 430 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_LUKA
# 431 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA
# 432 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE
# 433 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 434 "data/maps/PetalburgCity/scripts.pory"
	end
# 435 "data/maps/PetalburgCity/scripts.pory"

# 436 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalPassedOut::
# 437 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 438 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_NightmareReturn_ZinniaPassedOut
# 439 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 440 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalPassedOut, MSGBOX_DEFAULT
# 441 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 442 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 443 "data/maps/PetalburgCity/scripts.pory"
	return
# 444 "data/maps/PetalburgCity/scripts.pory"

# 445 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_ZinniaPassedOut::
# 446 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 447 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalPassedOut, MSGBOX_DEFAULT
# 448 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 449 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 450 "data/maps/PetalburgCity/scripts.pory"
	return
# 451 "data/maps/PetalburgCity/scripts.pory"

# 452 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalGhost::
# 453 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 454 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_NightmareReturn_ZinniaGhost
# 455 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 456 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalGhost, MSGBOX_DEFAULT
# 457 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 458 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 459 "data/maps/PetalburgCity/scripts.pory"
	return
# 460 "data/maps/PetalburgCity/scripts.pory"

# 461 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_ZinniaGhost::
# 462 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 463 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalGhost, MSGBOX_DEFAULT
# 464 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 465 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 466 "data/maps/PetalburgCity/scripts.pory"
	return
# 467 "data/maps/PetalburgCity/scripts.pory"

# 468 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalLeaves::
# 469 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 470 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_NightmareReturn_ZinniaLeaves
# 471 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 472 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalLeaves, MSGBOX_DEFAULT
# 473 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 474 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 475 "data/maps/PetalburgCity/scripts.pory"
	return
# 476 "data/maps/PetalburgCity/scripts.pory"

# 477 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_ZinniaLeaves::
# 478 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 479 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalLeaves, MSGBOX_DEFAULT
# 480 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 481 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 482 "data/maps/PetalburgCity/scripts.pory"
	return
# 483 "data/maps/PetalburgCity/scripts.pory"

# 484 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExit::
# 485 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 0, PetalburgCity_EventScript_NightmareReturn_RivalExitLeft
# 486 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 1, PetalburgCity_EventScript_NightmareReturn_RivalExitRight
# 487 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 3, PetalburgCity_EventScript_NightmareReturn_RivalExitDown
# 488 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitUp
# 489 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 490 "data/maps/PetalburgCity/scripts.pory"
	return
# 491 "data/maps/PetalburgCity/scripts.pory"

# 492 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExitLeft::
# 493 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitLeft
# 494 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 495 "data/maps/PetalburgCity/scripts.pory"
	return
# 496 "data/maps/PetalburgCity/scripts.pory"

# 497 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExitRight::
# 498 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitRight
# 499 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 500 "data/maps/PetalburgCity/scripts.pory"
	return
# 501 "data/maps/PetalburgCity/scripts.pory"

# 502 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExitDown::
# 503 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitDown
# 504 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 505 "data/maps/PetalburgCity/scripts.pory"
	return
# 506 "data/maps/PetalburgCity/scripts.pory"

# 507 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExit::
# 508 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 0, PetalburgCity_EventScript_NightmareReturn_LukaExitLeft
# 509 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 1, PetalburgCity_EventScript_NightmareReturn_LukaExitRight
# 510 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 3, PetalburgCity_EventScript_NightmareReturn_LukaExitDown
# 511 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitUp
# 512 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 513 "data/maps/PetalburgCity/scripts.pory"
	return
# 514 "data/maps/PetalburgCity/scripts.pory"

# 515 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExitLeft::
# 516 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitLeft
# 517 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 518 "data/maps/PetalburgCity/scripts.pory"
	return
# 519 "data/maps/PetalburgCity/scripts.pory"

# 520 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExitRight::
# 521 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitRight
# 522 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 523 "data/maps/PetalburgCity/scripts.pory"
	return
# 524 "data/maps/PetalburgCity/scripts.pory"

# 525 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExitDown::
# 526 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitDown
# 527 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 528 "data/maps/PetalburgCity/scripts.pory"
	return
# 529 "data/maps/PetalburgCity/scripts.pory"

# 530 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachLeft:
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 532 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 533 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 534 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 535 "data/maps/PetalburgCity/scripts.pory"

# 536 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachLeft:
# 537 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 538 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 539 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 540 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 541 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 542 "data/maps/PetalburgCity/scripts.pory"

# 543 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachRight:
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
	step_end
# 550 "data/maps/PetalburgCity/scripts.pory"

# 551 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachRight:
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
	step_end
# 559 "data/maps/PetalburgCity/scripts.pory"

# 560 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachUp:
# 561 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 562 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 563 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 564 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 565 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 566 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 567 "data/maps/PetalburgCity/scripts.pory"

# 568 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachUp:
# 569 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 570 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 571 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 572 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 573 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 574 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 575 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 576 "data/maps/PetalburgCity/scripts.pory"

# 577 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachDown:
# 578 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 579 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 580 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 581 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 582 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 583 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 584 "data/maps/PetalburgCity/scripts.pory"

# 585 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachDown:
# 586 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 587 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 588 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 589 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 590 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 591 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 592 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 593 "data/maps/PetalburgCity/scripts.pory"

# 594 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitLeft:
# 595 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 596 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 597 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 598 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 599 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 600 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 601 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 602 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 603 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 604 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 605 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 606 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 607 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 608 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 609 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 610 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 611 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 612 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 613 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 614 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 615 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 616 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 617 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 618 "data/maps/PetalburgCity/scripts.pory"

# 619 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitUp:
# 620 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 621 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 622 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 623 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 624 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 625 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 626 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 627 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 628 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 629 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 630 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 631 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 632 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 633 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 634 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 635 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 636 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 637 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 638 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 639 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 640 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 641 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 642 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 643 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 644 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 645 "data/maps/PetalburgCity/scripts.pory"

# 646 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitRight:
# 647 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 648 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 649 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 650 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 651 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 652 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 653 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 654 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 655 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 656 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 657 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 658 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 659 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 660 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 661 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 662 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 663 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 664 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 665 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 666 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 667 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 668 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 669 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 670 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 671 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 672 "data/maps/PetalburgCity/scripts.pory"

# 673 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitDown:
# 674 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 675 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 676 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 677 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 678 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 679 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 680 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 681 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 682 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 683 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 684 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 685 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 686 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 687 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 688 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 689 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 690 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 691 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 692 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 693 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 694 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 695 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 696 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 697 "data/maps/PetalburgCity/scripts.pory"

# 698 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitLeft:
# 699 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 710 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 711 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 712 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 713 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 714 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 715 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 716 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 717 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 718 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 719 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 720 "data/maps/PetalburgCity/scripts.pory"

# 721 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitUp:
# 722 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 723 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 734 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 735 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 736 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 737 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 738 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 739 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 740 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 741 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 742 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 743 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 744 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 745 "data/maps/PetalburgCity/scripts.pory"

# 746 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitRight:
# 747 "data/maps/PetalburgCity/scripts.pory"
	walk_down
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
	walk_left
# 760 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 761 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 762 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 763 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 764 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 765 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 766 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 767 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 768 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 769 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 770 "data/maps/PetalburgCity/scripts.pory"

# 771 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitDown:
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
	walk_left
# 780 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 781 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 782 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 783 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 784 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 785 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 786 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 787 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 788 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 789 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 790 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 791 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 792 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 793 "data/maps/PetalburgCity/scripts.pory"

# 794 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 795 "data/maps/PetalburgCity/scripts.pory"
	lock
# 796 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 797 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Boy_Normal
# 798 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Boy_Normal
# 799 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeBoy, MSGBOX_DEFAULT
# 800 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 801 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 802 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 803 "data/maps/PetalburgCity/scripts.pory"
	release
# 804 "data/maps/PetalburgCity/scripts.pory"
	end
# 805 "data/maps/PetalburgCity/scripts.pory"

# 806 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy_Normal::
# 807 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 808 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 809 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 810 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 811 "data/maps/PetalburgCity/scripts.pory"
	release
# 812 "data/maps/PetalburgCity/scripts.pory"
	end
# 813 "data/maps/PetalburgCity/scripts.pory"

# 814 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 815 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_WallysMom_Normal
# 816 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_WallysMom_Normal
# 817 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeWallysMom, MSGBOX_NPC
# 818 "data/maps/PetalburgCity/scripts.pory"
	end
# 819 "data/maps/PetalburgCity/scripts.pory"

# 820 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom_Normal::
# 821 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 822 "data/maps/PetalburgCity/scripts.pory"
	end
# 823 "data/maps/PetalburgCity/scripts.pory"

# 824 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 825 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 826 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 827 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 828 "data/maps/PetalburgCity/scripts.pory"
	end
# 829 "data/maps/PetalburgCity/scripts.pory"

# 830 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 831 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 832 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 833 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 834 "data/maps/PetalburgCity/scripts.pory"
	end
# 835 "data/maps/PetalburgCity/scripts.pory"

# 836 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 837 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 838 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 839 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 840 "data/maps/PetalburgCity/scripts.pory"
	end
# 841 "data/maps/PetalburgCity/scripts.pory"

# 842 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 843 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 844 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 845 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 846 "data/maps/PetalburgCity/scripts.pory"
	end
# 847 "data/maps/PetalburgCity/scripts.pory"

# 848 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 849 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 850 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 851 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 852 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 853 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 854 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkRight
# 855 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 856 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 857 "data/maps/PetalburgCity/scripts.pory"
	end
# 858 "data/maps/PetalburgCity/scripts.pory"

# 859 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 860 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 861 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 862 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 863 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 864 "data/maps/PetalburgCity/scripts.pory"
	end
# 865 "data/maps/PetalburgCity/scripts.pory"

# 866 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 867 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 868 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 869 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 870 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 871 "data/maps/PetalburgCity/scripts.pory"
	end
# 872 "data/maps/PetalburgCity/scripts.pory"

# 873 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 874 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 875 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 876 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 877 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 878 "data/maps/PetalburgCity/scripts.pory"
	end
# 879 "data/maps/PetalburgCity/scripts.pory"

# 880 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 881 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 882 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 883 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 884 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 885 "data/maps/PetalburgCity/scripts.pory"
	end
# 886 "data/maps/PetalburgCity/scripts.pory"

# 887 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 888 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 889 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 890 "data/maps/PetalburgCity/scripts.pory"
	end
# 891 "data/maps/PetalburgCity/scripts.pory"

# 892 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 893 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 894 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 895 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 896 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 897 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 898 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 899 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 900 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 901 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 902 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 903 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 904 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 905 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 906 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 907 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 908 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 909 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 910 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 911 "data/maps/PetalburgCity/scripts.pory"

# 912 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 913 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 914 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 915 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 916 "data/maps/PetalburgCity/scripts.pory"

# 917 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 918 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 919 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 920 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 921 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 922 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 923 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 924 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 925 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 926 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 927 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 928 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 929 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 930 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 931 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 932 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 933 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 934 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 935 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 936 "data/maps/PetalburgCity/scripts.pory"

# 937 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 938 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 939 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 940 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 941 "data/maps/PetalburgCity/scripts.pory"

# 942 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 943 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 944 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 945 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 946 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 947 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 948 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 949 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 950 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 951 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 952 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 953 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 954 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 955 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 956 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 957 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 958 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 959 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 960 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 961 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 962 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 963 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 964 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 965 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 966 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 967 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 968 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 969 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 970 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 971 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 972 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 973 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 974 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 975 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 976 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 977 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 978 "data/maps/PetalburgCity/scripts.pory"

# 979 "data/maps/PetalburgCity/scripts.pory"

# 980 "data/maps/PetalburgCity/scripts.pory"

# 981 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakeRivalRunToGroup:
# 982 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 983 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 984 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 985 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 986 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 987 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 988 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 989 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 990 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 991 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 992 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 993 "data/maps/PetalburgCity/scripts.pory"
	face_up
# 994 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 995 "data/maps/PetalburgCity/scripts.pory"

# 996 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakeLukaMoveToGroup:
# 997 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 998 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 999 "data/maps/PetalburgCity/scripts.pory"
	face_right
# 1000 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1001 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 1002 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 1003 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1004 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1005 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1006 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1007 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1008 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1009 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1010 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1011 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 1012 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1013 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1014 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1015 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1016 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1017 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1018 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1019 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1020 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1021 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1022 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1023 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1024 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1025 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1026 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1027 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1028 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1029 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1030 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1031 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1032 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1033 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1034 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1035 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 1036 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 1037 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 1038 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 1039 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1040 "data/maps/PetalburgCity/scripts.pory"

# 1041 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 1042 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 1043 "data/maps/PetalburgCity/scripts.pory"
	end
# 1044 "data/maps/PetalburgCity/scripts.pory"

# 1045 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 1046 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 1047 "data/maps/PetalburgCity/scripts.pory"
	end
# 1048 "data/maps/PetalburgCity/scripts.pory"

# 1049 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 1050 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Gentleman_Normal
# 1051 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Gentleman_Normal
# 1052 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGentleman, MSGBOX_NPC
# 1053 "data/maps/PetalburgCity/scripts.pory"
	end
# 1054 "data/maps/PetalburgCity/scripts.pory"

# 1055 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman_Normal::
# 1056 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 1057 "data/maps/PetalburgCity/scripts.pory"
	end
# 1058 "data/maps/PetalburgCity/scripts.pory"

# 1059 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 1060 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 1061 "data/maps/PetalburgCity/scripts.pory"
	end
# 1062 "data/maps/PetalburgCity/scripts.pory"

# 1063 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 1064 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_GymBoy_Normal
# 1065 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_GymBoy_Normal
# 1066 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGymBoy, MSGBOX_NPC
# 1067 "data/maps/PetalburgCity/scripts.pory"
	end
# 1068 "data/maps/PetalburgCity/scripts.pory"

# 1069 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy_Normal::
# 1070 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 1071 "data/maps/PetalburgCity/scripts.pory"
	end
# 1072 "data/maps/PetalburgCity/scripts.pory"

# 1073 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 1074 "data/maps/PetalburgCity/scripts.pory"
	lock
# 1075 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 1076 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 1077 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 1078 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAquaGruntBlock, MSGBOX_DEFAULT
# 1079 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1080 "data/maps/PetalburgCity/scripts.pory"
	release
# 1081 "data/maps/PetalburgCity/scripts.pory"
	end
# 1082 "data/maps/PetalburgCity/scripts.pory"

# 1083 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock_Normal::
# 1084 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 1085 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1086 "data/maps/PetalburgCity/scripts.pory"
	release
# 1087 "data/maps/PetalburgCity/scripts.pory"
	end
# 1088 "data/maps/PetalburgCity/scripts.pory"

# 1089 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 1090 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AdventureBoy_Normal
# 1091 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AdventureBoy_Normal
# 1092 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAdventureBoy, MSGBOX_NPC
# 1093 "data/maps/PetalburgCity/scripts.pory"
	end
# 1094 "data/maps/PetalburgCity/scripts.pory"

# 1095 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy_Normal::
# 1096 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 1097 "data/maps/PetalburgCity/scripts.pory"
	end
# 1098 "data/maps/PetalburgCity/scripts.pory"

# 1099 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1100 "data/maps/PetalburgCity/scripts.pory"
@ ENCONTRO COM O LUKA APÓS O GINÁSIO
# 1101 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1102 "data/maps/PetalburgCity/scripts.pory"

# 1103 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 1104 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 1105 "data/maps/PetalburgCity/scripts.pory"
	end
# 1106 "data/maps/PetalburgCity/scripts.pory"

# 1107 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 1108 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1109 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1110 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 1111 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachCenter
# 1112 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1113 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 1114 "data/maps/PetalburgCity/scripts.pory"
	end
# 1115 "data/maps/PetalburgCity/scripts.pory"

# 1116 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 1117 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 1118 "data/maps/PetalburgCity/scripts.pory"
	end
# 1119 "data/maps/PetalburgCity/scripts.pory"

# 1120 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 1121 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1122 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1123 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 1124 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachLeft
# 1125 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1126 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 1127 "data/maps/PetalburgCity/scripts.pory"
	end
# 1128 "data/maps/PetalburgCity/scripts.pory"

# 1129 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 1130 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 1131 "data/maps/PetalburgCity/scripts.pory"
	end
# 1132 "data/maps/PetalburgCity/scripts.pory"

# 1133 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 1134 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1135 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1136 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 1137 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachRight
# 1138 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1139 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 1140 "data/maps/PetalburgCity/scripts.pory"
	end
# 1141 "data/maps/PetalburgCity/scripts.pory"

# 1142 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_StartBattle::
# 1143 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_LUKA_AFTER_GYM, DIR_NORTH
# 1144 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 1145 "data/maps/PetalburgCity/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 1146 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 1147 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 1148 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 1149 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1150 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 1151 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 1152 "data/maps/PetalburgCity/scripts.pory"
	end
# 1153 "data/maps/PetalburgCity/scripts.pory"

# 1154 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 1155 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 1156 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 1157 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 1158 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 1159 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1160 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 1161 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 1162 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 1163 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1164 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 1165 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1166 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 1167 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1168 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 1169 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 1170 "data/maps/PetalburgCity/scripts.pory"
	end
# 1171 "data/maps/PetalburgCity/scripts.pory"

# 1172 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachCenter:
# 1173 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1174 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1175 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1176 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1177 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 1178 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1179 "data/maps/PetalburgCity/scripts.pory"

# 1180 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachRight:
# 1181 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1182 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1183 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1184 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1185 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1186 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1187 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 1188 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1189 "data/maps/PetalburgCity/scripts.pory"

# 1190 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachLeft:
# 1191 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 1192 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1193 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1194 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1195 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1196 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1197 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 1198 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1199 "data/maps/PetalburgCity/scripts.pory"

# 1200 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 1201 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1202 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1203 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1204 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1205 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1206 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1207 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1208 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1209 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1210 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1211 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1212 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1213 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1214 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 1215 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1216 "data/maps/PetalburgCity/scripts.pory"

# 1217 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1218 "data/maps/PetalburgCity/scripts.pory"
@ TRIGGERS DE DERROTA (BLOQUEIO DAS SAÍDAS DA CIDADE)
# 1219 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1220 "data/maps/PetalburgCity/scripts.pory"

# 1221 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight::
# 1222 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaRight_Trigger
# 1223 "data/maps/PetalburgCity/scripts.pory"
	end
# 1224 "data/maps/PetalburgCity/scripts.pory"

# 1225 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight_Trigger::
# 1226 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1227 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 1228 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1229 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerLeft
# 1230 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1231 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 1232 "data/maps/PetalburgCity/scripts.pory"
	end
# 1233 "data/maps/PetalburgCity/scripts.pory"

# 1234 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft::
# 1235 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaLeft_Trigger
# 1236 "data/maps/PetalburgCity/scripts.pory"
	end
# 1237 "data/maps/PetalburgCity/scripts.pory"

# 1238 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft_Trigger::
# 1239 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1240 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 1241 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1242 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerRight
# 1243 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1244 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 1245 "data/maps/PetalburgCity/scripts.pory"
	end
# 1246 "data/maps/PetalburgCity/scripts.pory"

# 1247 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerLeft:
# 1248 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 1249 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1250 "data/maps/PetalburgCity/scripts.pory"

# 1251 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerRight:
# 1252 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1253 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1254 "data/maps/PetalburgCity/scripts.pory"

# 1255 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_MustSeeLukaInHouse:
# 1256 "data/maps/PetalburgCity/scripts.pory"
	.string "Oh, I have to see Luka in his house!$"
# 1257 "data/maps/PetalburgCity/scripts.pory"

# 1258 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1259 "data/maps/PetalburgCity/scripts.pory"
@ TEXTOS DIVERSOS
# 1260 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1261 "data/maps/PetalburgCity/scripts.pory"

# 1262 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 1263 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 1264 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 1265 "data/maps/PetalburgCity/scripts.pory"

# 1266 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 1267 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 1268 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 1269 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 1270 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 1271 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 1272 "data/maps/PetalburgCity/scripts.pory"

# 1273 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 1274 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 1275 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 1276 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 1277 "data/maps/PetalburgCity/scripts.pory"

# 1278 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 1279 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 1280 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 1281 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 1282 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 1283 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 1284 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 1285 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 1286 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 1287 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 1288 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 1289 "data/maps/PetalburgCity/scripts.pory"

# 1290 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 1291 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 1292 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 1293 "data/maps/PetalburgCity/scripts.pory"

# 1294 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 1295 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 1296 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 1297 "data/maps/PetalburgCity/scripts.pory"

# 1298 "data/maps/PetalburgCity/scripts.pory"

# 1299 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeBoy:
# 1300 "data/maps/PetalburgCity/scripts.pory"
	.string "The water's gone all choppy from\n"
# 1301 "data/maps/PetalburgCity/scripts.pory"
	.string "the quakes.\p"
# 1302 "data/maps/PetalburgCity/scripts.pory"
	.string "Even my reflection looks like it\n"
# 1303 "data/maps/PetalburgCity/scripts.pory"
	.string "wants to run for cover.$"
# 1304 "data/maps/PetalburgCity/scripts.pory"

# 1305 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeWallysMom:
# 1306 "data/maps/PetalburgCity/scripts.pory"
	.string "This rain came on so suddenly...\p"
# 1307 "data/maps/PetalburgCity/scripts.pory"
	.string "I hope everyone outside is keeping\n"
# 1308 "data/maps/PetalburgCity/scripts.pory"
	.string "safe.$"
# 1309 "data/maps/PetalburgCity/scripts.pory"

# 1310 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGentleman:
# 1311 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG WOODS has always made\n"
# 1312 "data/maps/PetalburgCity/scripts.pory"
	.string "strange sounds at night.\p"
# 1313 "data/maps/PetalburgCity/scripts.pory"
	.string "But now even the ground beneath the\n"
# 1314 "data/maps/PetalburgCity/scripts.pory"
	.string "city seems restless.$"
# 1315 "data/maps/PetalburgCity/scripts.pory"

# 1316 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGymBoy:
# 1317 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM's closed while CALENDULA\n"
# 1318 "data/maps/PetalburgCity/scripts.pory"
	.string "looks into this storm.\p"
# 1319 "data/maps/PetalburgCity/scripts.pory"
	.string "Whatever is happening, it feels\n"
# 1320 "data/maps/PetalburgCity/scripts.pory"
	.string "bigger than a normal battle.$"
# 1321 "data/maps/PetalburgCity/scripts.pory"

# 1322 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAquaGruntBlock:
# 1323 "data/maps/PetalburgCity/scripts.pory"
	.string "With the ground shaking like this,\n"
# 1324 "data/maps/PetalburgCity/scripts.pory"
	.string "nobody's getting through here.\p"
# 1325 "data/maps/PetalburgCity/scripts.pory"
	.string "Find another route until things\n"
# 1326 "data/maps/PetalburgCity/scripts.pory"
	.string "settle down.$"
# 1327 "data/maps/PetalburgCity/scripts.pory"

# 1328 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAdventureBoy:
# 1329 "data/maps/PetalburgCity/scripts.pory"
	.string "I wanted an adventure, but I didn't\n"
# 1330 "data/maps/PetalburgCity/scripts.pory"
	.string "mean earthquakes and endless rain!\p"
# 1331 "data/maps/PetalburgCity/scripts.pory"
	.string "This is a little too exciting for\n"
# 1332 "data/maps/PetalburgCity/scripts.pory"
	.string "me.$"
# 1333 "data/maps/PetalburgCity/scripts.pory"

# 1334 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPart15:
# 1335 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, have you met\n"
# 1336 "data/maps/PetalburgCity/scripts.pory"
	.string "with AURORA yet?\p"
# 1337 "data/maps/PetalburgCity/scripts.pory"
	.string "Things are getting worse here.\n"
# 1338 "data/maps/PetalburgCity/scripts.pory"
	.string "Please go see her in PHOENIX TOWN\l"
# 1339 "data/maps/PetalburgCity/scripts.pory"
	.string "and return as soon as possible.$"
# 1340 "data/maps/PetalburgCity/scripts.pory"

# 1341 "data/maps/PetalburgCity/scripts.pory"

# 1342 "data/maps/PetalburgCity/scripts.pory"

# 1343 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaNightmareInterrupt:
# 1344 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: You're back, {PLAYER}!\n"
# 1345 "data/maps/PetalburgCity/scripts.pory"
	.string "The situation here is getting worse\l"
# 1346 "data/maps/PetalburgCity/scripts.pory"
	.string "by the minute. Did you learn-$"
# 1347 "data/maps/PetalburgCity/scripts.pory"

# 1348 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeRivalNightmareInterrupt:
# 1349 "data/maps/PetalburgCity/scripts.pory"
	.string "That was a big one!\n"
# 1350 "data/maps/PetalburgCity/scripts.pory"
	.string "Is everyone alright?$"
# 1351 "data/maps/PetalburgCity/scripts.pory"

# 1352 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaNightmareInterrupt:
# 1353 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: We're okay over here, but-\n"
# 1354 "data/maps/PetalburgCity/scripts.pory"
	.string "wait, {PLAYER}, you don't look so good.$"
# 1355 "data/maps/PetalburgCity/scripts.pory"

# 1356 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPlayerSick:
# 1357 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, what's wrong?\n"
# 1358 "data/maps/PetalburgCity/scripts.pory"
	.string "Are you okay?$"
# 1359 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaPart15:
# 1360 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: {PLAYER}! I'm glad to see\n"
# 1361 "data/maps/PetalburgCity/scripts.pory"
	.string "you, but we really need some help\l"
# 1362 "data/maps/PetalburgCity/scripts.pory"
	.string "here.\p"
# 1363 "data/maps/PetalburgCity/scripts.pory"
	.string "Please tell me you have something.$"
# 1364 "data/maps/PetalburgCity/scripts.pory"

# 1365 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZinniaPart15:
# 1366 "data/maps/PetalburgCity/scripts.pory"
	.string "ZINNIA: This rain just won't stop,\n"
# 1367 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 1368 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 1369 "data/maps/PetalburgCity/scripts.pory"

# 1370 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZennoPart15:
# 1371 "data/maps/PetalburgCity/scripts.pory"
	.string "ZENNO: This rain just won't stop,\n"
# 1372 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 1373 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 1374 "data/maps/PetalburgCity/scripts.pory"

# 1375 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaAwake:
# 1376 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: {PLAYER}! You're awake!$"
# 1377 "data/maps/PetalburgCity/scripts.pory"

# 1378 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_RivalPassedOut:
# 1379 "data/maps/PetalburgCity/scripts.pory"
	.string "RIVAL: You were about to enter the\n"
# 1380 "data/maps/PetalburgCity/scripts.pory"
	.string "GYM, but you passed out all of a\l"
# 1381 "data/maps/PetalburgCity/scripts.pory"
	.string "sudden.\p"
# 1382 "data/maps/PetalburgCity/scripts.pory"
	.string "We were just deciding whether we\n"
# 1383 "data/maps/PetalburgCity/scripts.pory"
	.string "should move you into LUKA's house.$"
# 1384 "data/maps/PetalburgCity/scripts.pory"

# 1385 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaRelieved:
# 1386 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: But you woke up so quickly!\n"
# 1387 "data/maps/PetalburgCity/scripts.pory"
	.string "That's a relief.$"
# 1388 "data/maps/PetalburgCity/scripts.pory"

# 1389 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_RivalGhost:
# 1390 "data/maps/PetalburgCity/scripts.pory"
	.string "RIVAL: You look like you've seen a\n"
# 1391 "data/maps/PetalburgCity/scripts.pory"
	.string "ghost, {PLAYER}. Are you alright?$"
# 1392 "data/maps/PetalburgCity/scripts.pory"

# 1393 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaUnsettled:
# 1394 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: It's been peaceful here, but\n"
# 1395 "data/maps/PetalburgCity/scripts.pory"
	.string "I don't know...\p"
# 1396 "data/maps/PetalburgCity/scripts.pory"
	.string "I've just got an unsettling feeling.$"
# 1397 "data/maps/PetalburgCity/scripts.pory"

# 1398 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_RivalLeaves:
# 1399 "data/maps/PetalburgCity/scripts.pory"
	.string "RIVAL: I know what you mean. But...\n"
# 1400 "data/maps/PetalburgCity/scripts.pory"
	.string "there's no point lingering on it too\l"
# 1401 "data/maps/PetalburgCity/scripts.pory"
	.string "much.\p"
# 1402 "data/maps/PetalburgCity/scripts.pory"
	.string "I'm off to continue my journey.\n"
# 1403 "data/maps/PetalburgCity/scripts.pory"
	.string "Take care of yourselves, both of you.$"
# 1404 "data/maps/PetalburgCity/scripts.pory"

# 1405 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaLeaves:
# 1406 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: ...\p"
# 1407 "data/maps/PetalburgCity/scripts.pory"
	.string "It's just too strange. Whatever that\n"
# 1408 "data/maps/PetalburgCity/scripts.pory"
	.string "feeling was is gone now.\p"
# 1409 "data/maps/PetalburgCity/scripts.pory"
	.string "Hey, {PLAYER}, I'm going to ask around\n"
# 1410 "data/maps/PetalburgCity/scripts.pory"
	.string "to see if anyone else noticed anything.\p"
# 1411 "data/maps/PetalburgCity/scripts.pory"
	.string "Be careful.$"
# 1412 "data/maps/PetalburgCity/scripts.pory"

# 1413 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistFirst:
# 1414 "data/maps/PetalburgCity/scripts.pory"
	.string "Careful, TRAINER! Did you feel\n"
# 1415 "data/maps/PetalburgCity/scripts.pory"
	.string "that earthquake?\p"
# 1416 "data/maps/PetalburgCity/scripts.pory"
	.string "They started suddenly along with\n"
# 1417 "data/maps/PetalburgCity/scripts.pory"
	.string "this rain.$"
# 1418 "data/maps/PetalburgCity/scripts.pory"

# 1419 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistRepeat:
# 1420 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM is closed right now.\p"
# 1421 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA took off to the desert.\p"
# 1422 "data/maps/PetalburgCity/scripts.pory"
	.string "She received a letter from someone\n"
# 1423 "data/maps/PetalburgCity/scripts.pory"
	.string "in PHOENIX TOWN who says they can\l"
# 1424 "data/maps/PetalburgCity/scripts.pory"
	.string "help.$"
# 1425 "data/maps/PetalburgCity/scripts.pory"

# 1426 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 1427 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 1428 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 1429 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 1430 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 1431 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 1432 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 1433 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 1434 "data/maps/PetalburgCity/scripts.pory"

# 1435 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 1436 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 1437 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 1438 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 1439 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 1440 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 1441 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 1442 "data/maps/PetalburgCity/scripts.pory"

# 1443 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 1444 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 1445 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 1446 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 1447 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 1448 "data/maps/PetalburgCity/scripts.pory"

# 1449 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 1450 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 1451 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 1452 "data/maps/PetalburgCity/scripts.pory"

# 1453 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 1454 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 1455 "data/maps/PetalburgCity/scripts.pory"

# 1456 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 1457 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 1458 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 1459 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 1460 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 1461 "data/maps/PetalburgCity/scripts.pory"

# 1462 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 1463 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 1464 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 1465 "data/maps/PetalburgCity/scripts.pory"

# 1466 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 1467 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 1468 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…\n"
# 1469 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 1470 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 1471 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 1472 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 1473 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 1474 "data/maps/PetalburgCity/scripts.pory"

# 1475 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 1476 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 1477 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 1478 "data/maps/PetalburgCity/scripts.pory"

# 1479 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 1480 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 1481 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 1482 "data/maps/PetalburgCity/scripts.pory"

# 1483 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 1484 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 1485 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 1486 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 1487 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 1488 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 1489 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 1490 "data/maps/PetalburgCity/scripts.pory"

# 1491 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 1492 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 1493 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 1494 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 1495 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 1496 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 1497 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 1498 "data/maps/PetalburgCity/scripts.pory"

# 1499 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 1500 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 1501 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 1502 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 1503 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 1504 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 1505 "data/maps/PetalburgCity/scripts.pory"

# 1506 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 1507 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 1508 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 1509 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 1510 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 1511 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 1512 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 1513 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 1514 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
