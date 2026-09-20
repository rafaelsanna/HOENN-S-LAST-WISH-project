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
	setvar VAR_TEMP_2, 0
# 11 "data/maps/PetalburgCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 12 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleQuakeRainEvent
# 13 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleNightmareReturnScene
# 14 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_LUKA_PETALBURG_ENCOUNTER, 0, PetalburgCity_EventScript_HideLukaAfterGym
# 15 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 0, PetalburgCity_EventScript_MoveGymBoyToWestEntrance
# 16 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_DisableMapNameAndMusic
# 17 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_DisableMapNameAndMusic
# 18 "data/maps/PetalburgCity/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_EventScript_SetGymDoorsUnlocked
# 19 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_HandleAquaGrunts
# 20 "data/maps/PetalburgCity/scripts.pory"
	end
# 21 "data/maps/PetalburgCity/scripts.pory"

# 22 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideLukaAfterGym::
# 23 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 24 "data/maps/PetalburgCity/scripts.pory"
	return
# 25 "data/maps/PetalburgCity/scripts.pory"

# 26 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleQuakeRainEvent::
# 27 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_HideQuakeEventNpcs
# 28 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_HideQuakeEventNpcs
# 29 "data/maps/PetalburgCity/scripts.pory"
	setweather WEATHER_RAIN
# 30 "data/maps/PetalburgCity/scripts.pory"
	doweather
# 31 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART1_CLEARED, PetalburgCity_EventScript_HandleQuakeReturnGroup
# 32 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 33 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 34 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 35 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 36 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 37 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_EVENT_STARTED, PetalburgCity_EventScript_QuakeRainEventAlreadyStarted
# 38 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 1
# 39 "data/maps/PetalburgCity/scripts.pory"
	return
# 40 "data/maps/PetalburgCity/scripts.pory"

# 41 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleQuakeReturnGroup::
# 42 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 43 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 44 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 45 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 46 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 47 "data/maps/PetalburgCity/scripts.pory"
	return
# 48 "data/maps/PetalburgCity/scripts.pory"

# 49 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideQuakeReturnGroup::
# 50 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 51 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 52 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 53 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 54 "data/maps/PetalburgCity/scripts.pory"
	return
# 55 "data/maps/PetalburgCity/scripts.pory"

# 56 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRainEventAlreadyStarted::
# 57 "data/maps/PetalburgCity/scripts.pory"
	return
# 58 "data/maps/PetalburgCity/scripts.pory"

# 59 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideQuakeEventNpcs::
# 60 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 61 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
# 62 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
# 63 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 64 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
# 65 "data/maps/PetalburgCity/scripts.pory"
	return
# 66 "data/maps/PetalburgCity/scripts.pory"

# 67 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleNightmareReturnScene::
# 68 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_HideNightmareReturnScene
# 69 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_HideNightmareReturnScene
# 70 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_LUKA
# 71 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 72 "data/maps/PetalburgCity/scripts.pory"
	return
# 73 "data/maps/PetalburgCity/scripts.pory"

# 74 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideNightmareReturnScene::
# 75 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_LUKA
# 76 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 77 "data/maps/PetalburgCity/scripts.pory"
	return
# 78 "data/maps/PetalburgCity/scripts.pory"

# 79 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HandleAquaGrunts::
# 80 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LUKA_SLATEPORT_CARGO_INTRO, PetalburgCity_EventScript_HideAquaGrunts
# 81 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_ShowAquaGrunts
# 82 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_HideAquaGrunts
# 83 "data/maps/PetalburgCity/scripts.pory"

# 84 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowAquaGrunts::
# 85 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 86 "data/maps/PetalburgCity/scripts.pory"
	return
# 87 "data/maps/PetalburgCity/scripts.pory"

# 88 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_HideAquaGrunts::
# 89 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_AQUA_GRUNTS
# 90 "data/maps/PetalburgCity/scripts.pory"
	return
# 91 "data/maps/PetalburgCity/scripts.pory"

# 92 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_MoveGymBoyToWestEntrance::
# 93 "data/maps/PetalburgCity/scripts.pory"
	setobjectxyperm LOCALID_GYM_BOY, 5, 11
# 94 "data/maps/PetalburgCity/scripts.pory"
	return
# 95 "data/maps/PetalburgCity/scripts.pory"

# 96 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_DisableMapNameAndMusic::
# 97 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 98 "data/maps/PetalburgCity/scripts.pory"
	savebgm MUS_FOLLOW_ME
# 99 "data/maps/PetalburgCity/scripts.pory"
	return
# 100 "data/maps/PetalburgCity/scripts.pory"

# 101 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_SetGymDoorsUnlocked::
# 102 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 7
# 103 "data/maps/PetalburgCity/scripts.pory"
	return
# 104 "data/maps/PetalburgCity/scripts.pory"

# 105 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_OnFrame:
# 106 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, PetalburgCity_EventScript_FirstQuakeAfterHeatBadge
# 107 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 2, PetalburgCity_EventScript_WallyTutorial
# 108 "data/maps/PetalburgCity/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_EventScript_WalkToWallyHouse
# 109 "data/maps/PetalburgCity/scripts.pory"
	.2byte 0
# 110 "data/maps/PetalburgCity/scripts.pory"

# 111 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_FirstQuakeAfterHeatBadge::
# 112 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 113 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_0, 0
# 114 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_EVENT_STARTED
# 115 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 1
# 116 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 1
# 117 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8006, 8
# 118 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8007, 5
# 119 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 120 "data/maps/PetalburgCity/scripts.pory"
	special ShakeCamera
# 121 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 122 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 123 "data/maps/PetalburgCity/scripts.pory"
	end
# 124 "data/maps/PetalburgCity/scripts.pory"

# 125 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial::
# 126 "data/maps/PetalburgCity/scripts.pory"
    lockall
# 127 "data/maps/PetalburgCity/scripts.pory"
    special SavePlayerParty
# 128 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, PetalburgCity_Movement_WallyTutorialWally
# 129 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PLAYER, PetalburgCity_Movement_WallyTutorialPlayer
# 130 "data/maps/PetalburgCity/scripts.pory"
    waitmovement 0
# 131 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WatchMeCatchPokemon, MSGBOX_DEFAULT
# 132 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 133 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyIntro, MSGBOX_DEFAULT
# 134 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 135 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 136 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_WHITEOUT
# 137 "data/maps/PetalburgCity/scripts.pory"
    setflag B_FLAG_NO_RUNNING
# 138 "data/maps/PetalburgCity/scripts.pory"
    trainerbattle_no_intro TRAINER_WALLY_VR_6, PetalburgCity_Text_WallyDefeat
# 139 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_WHITEOUT
# 140 "data/maps/PetalburgCity/scripts.pory"
    clearflag B_FLAG_NO_RUNNING
# 141 "data/maps/PetalburgCity/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_EventScript_WallyTutorial_Victory
# 142 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Defeat
# 143 "data/maps/PetalburgCity/scripts.pory"

# 144 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Victory::
# 145 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 146 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_WallyIDidIt, MSGBOX_DEFAULT
# 147 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 148 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 149 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 150 "data/maps/PetalburgCity/scripts.pory"
    msgbox Route102_Text_LetsGoBack, MSGBOX_DEFAULT
# 151 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 152 "data/maps/PetalburgCity/scripts.pory"

# 153 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Defeat::
# 154 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 155 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaWon, MSGBOX_DEFAULT
# 156 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 157 "data/maps/PetalburgCity/scripts.pory"
    applymovement LOCALID_PETALBURG_WALLY, Common_Movement_WalkInPlaceFasterLeft, MAP_PETALBURG_CITY
# 158 "data/maps/PetalburgCity/scripts.pory"
    waitmovement LOCALID_PETALBURG_WALLY, MAP_PETALBURG_CITY
# 159 "data/maps/PetalburgCity/scripts.pory"
    createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 160 "data/maps/PetalburgCity/scripts.pory"
    msgbox PetalburgCity_Text_WallyTutorial_LukaGoBack, MSGBOX_DEFAULT
# 161 "data/maps/PetalburgCity/scripts.pory"
    removefieldmugshot
# 162 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_WALLY_TUTORIAL_RESULT, 1
# 163 "data/maps/PetalburgCity/scripts.pory"
    goto PetalburgCity_EventScript_WallyTutorial_Shared
# 164 "data/maps/PetalburgCity/scripts.pory"

# 165 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyTutorial_Shared::
# 166 "data/maps/PetalburgCity/scripts.pory"
    closemessage
# 167 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_HIDE_MAP_NAME_POPUP
# 168 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_CITY_STATE, 3
# 169 "data/maps/PetalburgCity/scripts.pory"
    fadedefaultbgm
# 170 "data/maps/PetalburgCity/scripts.pory"
    clearflag FLAG_DONT_TRANSITION_MUSIC
# 171 "data/maps/PetalburgCity/scripts.pory"
    special LoadPlayerParty
# 172 "data/maps/PetalburgCity/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 1
# 173 "data/maps/PetalburgCity/scripts.pory"
    warp MAP_PETALBURG_CITY_GYM, 4, 108
# 174 "data/maps/PetalburgCity/scripts.pory"
    waitstate
# 175 "data/maps/PetalburgCity/scripts.pory"
    releaseall
# 176 "data/maps/PetalburgCity/scripts.pory"
    end
# 177 "data/maps/PetalburgCity/scripts.pory"

# 178 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WalkToWallyHouse::
# 179 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 180 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 181 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkToWallyHouseWallysDad
# 182 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkToWallyHousePlayer
# 183 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 184 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 7
# 185 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 5
# 186 "data/maps/PetalburgCity/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 187 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 188 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_WALLYS_DAD, PetalburgCity_Movement_WalkInsideHouseWallysDad
# 189 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Movement_WalkInsideHousePlayer
# 190 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 191 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 192 "data/maps/PetalburgCity/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_PETALBURG_CITY
# 193 "data/maps/PetalburgCity/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 194 "data/maps/PetalburgCity/scripts.pory"
	waitdooranim
# 195 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 196 "data/maps/PetalburgCity/scripts.pory"
	fadedefaultbgm
# 197 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 198 "data/maps/PetalburgCity/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 199 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 200 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 201 "data/maps/PetalburgCity/scripts.pory"
	end
# 202 "data/maps/PetalburgCity/scripts.pory"

# 203 "data/maps/PetalburgCity/scripts.pory"
eventscientist::
# 204 "data/maps/PetalburgCity/scripts.pory"
	lock
# 205 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 206 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_SCIENTIST_SPOKE, PetalburgCity_EventScript_QuakeScientistRepeat
# 207 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_SCIENTIST_SPOKE
# 208 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistFirst, MSGBOX_DEFAULT
# 209 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistRepeat, MSGBOX_DEFAULT
# 210 "data/maps/PetalburgCity/scripts.pory"
	release
# 211 "data/maps/PetalburgCity/scripts.pory"
	end
# 212 "data/maps/PetalburgCity/scripts.pory"

# 213 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeScientistRepeat::
# 214 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeScientistRepeat, MSGBOX_DEFAULT
# 215 "data/maps/PetalburgCity/scripts.pory"
	release
# 216 "data/maps/PetalburgCity/scripts.pory"
	end
# 217 "data/maps/PetalburgCity/scripts.pory"

# 218 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendula::
# 219 "data/maps/PetalburgCity/scripts.pory"
	lock
# 220 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 221 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART15_CLEARED, PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal
# 222 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 223 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaPart15, MSGBOX_DEFAULT
# 224 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 225 "data/maps/PetalburgCity/scripts.pory"
	release
# 226 "data/maps/PetalburgCity/scripts.pory"
	end
# 227 "data/maps/PetalburgCity/scripts.pory"

# 228 "data/maps/PetalburgCity/scripts.pory"

# 229 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeCalendulaOpenNightmarePortal::
# 230 "data/maps/PetalburgCity/scripts.pory"
	@ The rival starts outside the camera object-spawn range.
# 231 "data/maps/PetalburgCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 232 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
# 233 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_QUAKE_RIVAL
# 234 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_QUAKE_RIVAL, 24, 18
# 235 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 236 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaNightmareInterrupt, MSGBOX_DEFAULT
# 237 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 238 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 239 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_C_VS_LEGEND_BEAST, FALSE
# 240 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 241 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 242 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_CALENDULA, Common_Movement_ExclamationMark
# 243 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_LUKA, Common_Movement_ExclamationMark
# 244 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_RIVAL, Common_Movement_ExclamationMark
# 245 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_CALENDULA
# 246 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_LUKA
# 247 "data/maps/PetalburgCity/scripts.pory"
	waitmovement LOCALID_PETALBURG_QUAKE_RIVAL
# 248 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_RIVAL, PetalburgCity_Movement_QuakeRivalRunToGroup
# 249 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 250 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 251 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaNightmareInterrupt
# 252 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoNightmareInterrupt
# 253 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 254 "data/maps/PetalburgCity/scripts.pory"

# 255 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaNightmareInterrupt::
# 256 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 257 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeRivalNightmareInterrupt, MSGBOX_DEFAULT
# 258 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 259 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 260 "data/maps/PetalburgCity/scripts.pory"

# 261 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoNightmareInterrupt::
# 262 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 263 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeRivalNightmareInterrupt, MSGBOX_DEFAULT
# 264 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 265 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_QuakeLukaNightmareInterrupt
# 266 "data/maps/PetalburgCity/scripts.pory"

# 267 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLukaNightmareInterrupt::
# 268 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_QUAKE_LUKA, PetalburgCity_Movement_QuakeLukaMoveToGroup
# 269 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 270 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 271 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaNightmareInterrupt, MSGBOX_DEFAULT
# 272 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 273 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 274 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeCalendulaPlayerSick, MSGBOX_DEFAULT
# 275 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 276 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 277 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 278 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareQuake
# 279 "data/maps/PetalburgCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 4
# 280 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 281 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 282 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 283 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 284 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 285 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 286 "data/maps/PetalburgCity/scripts.pory"
	delay 90
# 287 "data/maps/PetalburgCity/scripts.pory"
	playse SE_WARP_OUT
# 288 "data/maps/PetalburgCity/scripts.pory"
	waitse
# 289 "data/maps/PetalburgCity/scripts.pory"
	delay 60
# 290 "data/maps/PetalburgCity/scripts.pory"
	warpsilent MAP_NIGHTMARE_PETALBURG, 47, 18
# 291 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 292 "data/maps/PetalburgCity/scripts.pory"
	release
# 293 "data/maps/PetalburgCity/scripts.pory"
	end
# 294 "data/maps/PetalburgCity/scripts.pory"

# 295 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareQuake::
# 296 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8004, 1
# 297 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8005, 1
# 298 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8006, 8
# 299 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8007, 5
# 300 "data/maps/PetalburgCity/scripts.pory"
	playse SE_M_STRENGTH
# 301 "data/maps/PetalburgCity/scripts.pory"
	special ShakeCamera
# 302 "data/maps/PetalburgCity/scripts.pory"
	waitstate
# 303 "data/maps/PetalburgCity/scripts.pory"
	return
# 304 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeLuka::
# 305 "data/maps/PetalburgCity/scripts.pory"
	lock
# 306 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 307 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 308 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeLukaPart15, MSGBOX_DEFAULT
# 309 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 310 "data/maps/PetalburgCity/scripts.pory"
	release
# 311 "data/maps/PetalburgCity/scripts.pory"
	end
# 312 "data/maps/PetalburgCity/scripts.pory"

# 313 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeRival::
# 314 "data/maps/PetalburgCity/scripts.pory"
	lock
# 315 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 316 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 317 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_QuakeZinniaPart15
# 318 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PetalburgCity_EventScript_QuakeZennoPart15
# 319 "data/maps/PetalburgCity/scripts.pory"
	release
# 320 "data/maps/PetalburgCity/scripts.pory"
	end
# 321 "data/maps/PetalburgCity/scripts.pory"

# 322 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZinniaPart15::
# 323 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 324 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZinniaPart15, MSGBOX_DEFAULT
# 325 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 326 "data/maps/PetalburgCity/scripts.pory"
	release
# 327 "data/maps/PetalburgCity/scripts.pory"
	end
# 328 "data/maps/PetalburgCity/scripts.pory"

# 329 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_QuakeZennoPart15::
# 330 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 331 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeZennoPart15, MSGBOX_DEFAULT
# 332 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 333 "data/maps/PetalburgCity/scripts.pory"
	release
# 334 "data/maps/PetalburgCity/scripts.pory"
	end
# 335 "data/maps/PetalburgCity/scripts.pory"

# 336 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Left::
# 337 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 338 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 339 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 340 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 341 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 0
# 342 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 343 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachLeft
# 344 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachLeft
# 345 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 346 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 347 "data/maps/PetalburgCity/scripts.pory"

# 348 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Right::
# 349 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 350 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 351 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 352 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 353 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 1
# 354 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 355 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachRight
# 356 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachRight
# 357 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 358 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 359 "data/maps/PetalburgCity/scripts.pory"

# 360 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Up::
# 361 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 362 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 363 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 364 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 365 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 2
# 366 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 367 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachUp
# 368 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachUp
# 369 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 370 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 371 "data/maps/PetalburgCity/scripts.pory"

# 372 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Down::
# 373 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 374 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE, PetalburgCity_EventScript_NightmareReturn_Unavailable
# 375 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 376 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 377 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_3, 2
# 378 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_NoticePlayer
# 379 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaApproachDown
# 380 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalApproachDown
# 381 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 382 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_NightmareReturn_Dialogue
# 383 "data/maps/PetalburgCity/scripts.pory"

# 384 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Unavailable::
# 385 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 386 "data/maps/PetalburgCity/scripts.pory"
	end
# 387 "data/maps/PetalburgCity/scripts.pory"

# 388 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_NoticePlayer::
# 389 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, Common_Movement_ExclamationMark
# 390 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, Common_Movement_ExclamationMark
# 391 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 392 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, DIR_EAST
# 393 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, DIR_EAST
# 394 "data/maps/PetalburgCity/scripts.pory"
	return
# 395 "data/maps/PetalburgCity/scripts.pory"

# 396 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_Dialogue::
# 397 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, DIR_EAST
# 398 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, DIR_NORTH
# 399 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 400 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 401 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaAwake, MSGBOX_DEFAULT
# 402 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 403 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 404 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 405 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalPassedOut
# 406 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 407 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 408 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaRelieved, MSGBOX_DEFAULT
# 409 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 410 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 411 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 412 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalGhost
# 413 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 414 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 415 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaUnsettled, MSGBOX_DEFAULT
# 416 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 417 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 418 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 419 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalLeaves
# 420 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_RivalExit
# 421 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 422 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL
# 423 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 424 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 425 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_LukaLeaves, MSGBOX_DEFAULT
# 426 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 427 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 428 "data/maps/PetalburgCity/scripts.pory"
	call PetalburgCity_EventScript_NightmareReturn_LukaExit
# 429 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_NIGHTMARE_RETURN_LUKA
# 430 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA
# 431 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_PETALBURG_NIGHTMARE_RETURN_SCENE_COMPLETE
# 432 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 433 "data/maps/PetalburgCity/scripts.pory"
	end
# 434 "data/maps/PetalburgCity/scripts.pory"

# 435 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalPassedOut::
# 436 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 437 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_NightmareReturn_ZinniaPassedOut
# 438 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 439 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalPassedOut, MSGBOX_DEFAULT
# 440 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 441 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 442 "data/maps/PetalburgCity/scripts.pory"
	return
# 443 "data/maps/PetalburgCity/scripts.pory"

# 444 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_ZinniaPassedOut::
# 445 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 446 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalPassedOut, MSGBOX_DEFAULT
# 447 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 448 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 449 "data/maps/PetalburgCity/scripts.pory"
	return
# 450 "data/maps/PetalburgCity/scripts.pory"

# 451 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalGhost::
# 452 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 453 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_NightmareReturn_ZinniaGhost
# 454 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 455 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalGhost, MSGBOX_DEFAULT
# 456 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 457 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 458 "data/maps/PetalburgCity/scripts.pory"
	return
# 459 "data/maps/PetalburgCity/scripts.pory"

# 460 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_ZinniaGhost::
# 461 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 462 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalGhost, MSGBOX_DEFAULT
# 463 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 464 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 465 "data/maps/PetalburgCity/scripts.pory"
	return
# 466 "data/maps/PetalburgCity/scripts.pory"

# 467 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalLeaves::
# 468 "data/maps/PetalburgCity/scripts.pory"
	checkplayergender
# 469 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PetalburgCity_EventScript_NightmareReturn_ZinniaLeaves
# 470 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 471 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalLeaves, MSGBOX_DEFAULT
# 472 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 473 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 474 "data/maps/PetalburgCity/scripts.pory"
	return
# 475 "data/maps/PetalburgCity/scripts.pory"

# 476 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_ZinniaLeaves::
# 477 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 478 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_NightmareReturn_RivalLeaves, MSGBOX_DEFAULT
# 479 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 480 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 481 "data/maps/PetalburgCity/scripts.pory"
	return
# 482 "data/maps/PetalburgCity/scripts.pory"

# 483 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExit::
# 484 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 0, PetalburgCity_EventScript_NightmareReturn_RivalExitLeft
# 485 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 1, PetalburgCity_EventScript_NightmareReturn_RivalExitRight
# 486 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitMiddle
# 487 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 488 "data/maps/PetalburgCity/scripts.pory"
	return
# 489 "data/maps/PetalburgCity/scripts.pory"

# 490 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExitLeft::
# 491 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitLeft
# 492 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 493 "data/maps/PetalburgCity/scripts.pory"
	return
# 494 "data/maps/PetalburgCity/scripts.pory"

# 495 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_RivalExitRight::
# 496 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_RIVAL, PetalburgCity_Movement_NightmareReturn_RivalExitRight
# 497 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 498 "data/maps/PetalburgCity/scripts.pory"
	return
# 499 "data/maps/PetalburgCity/scripts.pory"

# 500 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExit::
# 501 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 0, PetalburgCity_EventScript_NightmareReturn_LukaExitLeft
# 502 "data/maps/PetalburgCity/scripts.pory"
	goto_if_eq VAR_TEMP_3, 1, PetalburgCity_EventScript_NightmareReturn_LukaExitRight
# 503 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitMiddle
# 504 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 505 "data/maps/PetalburgCity/scripts.pory"
	return
# 506 "data/maps/PetalburgCity/scripts.pory"

# 507 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExitLeft::
# 508 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitLeft
# 509 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 510 "data/maps/PetalburgCity/scripts.pory"
	return
# 511 "data/maps/PetalburgCity/scripts.pory"

# 512 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_NightmareReturn_LukaExitRight::
# 513 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_NIGHTMARE_RETURN_LUKA, PetalburgCity_Movement_NightmareReturn_LukaExitRight
# 514 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 515 "data/maps/PetalburgCity/scripts.pory"
	return
# 516 "data/maps/PetalburgCity/scripts.pory"

# 517 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachLeft:
# 518 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 519 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 520 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 521 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 522 "data/maps/PetalburgCity/scripts.pory"

# 523 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachLeft:
# 524 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 525 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 526 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 527 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 528 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 529 "data/maps/PetalburgCity/scripts.pory"

# 530 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachRight:
# 531 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 532 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 533 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 534 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 535 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 536 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 537 "data/maps/PetalburgCity/scripts.pory"

# 538 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachRight:
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
	step_end
# 546 "data/maps/PetalburgCity/scripts.pory"

# 547 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachUp:
# 548 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 549 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 550 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 551 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 552 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 553 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 554 "data/maps/PetalburgCity/scripts.pory"

# 555 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachUp:
# 556 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 557 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 558 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 559 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 560 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 561 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 562 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 563 "data/maps/PetalburgCity/scripts.pory"

# 564 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaApproachDown:
# 565 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 566 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 567 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 568 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 569 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 570 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 571 "data/maps/PetalburgCity/scripts.pory"

# 572 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalApproachDown:
# 573 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 574 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 575 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 576 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 577 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 578 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 579 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 580 "data/maps/PetalburgCity/scripts.pory"

# 581 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitLeft:
# 582 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 583 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 584 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 585 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 586 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 587 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 588 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 589 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 590 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 591 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 592 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 593 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 594 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 595 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 596 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 597 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 598 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 599 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 600 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 601 "data/maps/PetalburgCity/scripts.pory"

# 602 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitMiddle:
# 603 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 604 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 605 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 606 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 607 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 608 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 609 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 610 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 611 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 612 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 613 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 614 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 615 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 616 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 617 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 618 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 619 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 620 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 621 "data/maps/PetalburgCity/scripts.pory"

# 622 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_RivalExitRight:
# 623 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 624 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 625 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 626 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 627 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 628 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 629 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 630 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 631 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 632 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 633 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 634 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 635 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 636 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 637 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 638 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 639 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 640 "data/maps/PetalburgCity/scripts.pory"

# 641 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitLeft:
# 642 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 643 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 644 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 645 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 646 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 647 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 648 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 649 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 650 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 651 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 652 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 653 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 654 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 655 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 656 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 657 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 658 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 659 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 660 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 661 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 662 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 663 "data/maps/PetalburgCity/scripts.pory"

# 664 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitMiddle:
# 665 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 666 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 667 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 668 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 669 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 670 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 671 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 672 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 673 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 674 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 675 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 676 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 677 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 678 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 679 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 680 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 681 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 682 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 683 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 684 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 685 "data/maps/PetalburgCity/scripts.pory"

# 686 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_NightmareReturn_LukaExitRight:
# 687 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 688 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 689 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 690 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 691 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 692 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 693 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 694 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 695 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 696 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 697 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 698 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 699 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 700 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 701 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 702 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 703 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_right
# 704 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 705 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 706 "data/maps/PetalburgCity/scripts.pory"

# 707 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy::
# 708 "data/maps/PetalburgCity/scripts.pory"
	lock
# 709 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 710 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Boy_Normal
# 711 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Boy_Normal
# 712 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeBoy, MSGBOX_DEFAULT
# 713 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 714 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 715 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 716 "data/maps/PetalburgCity/scripts.pory"
	release
# 717 "data/maps/PetalburgCity/scripts.pory"
	end
# 718 "data/maps/PetalburgCity/scripts.pory"

# 719 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Boy_Normal::
# 720 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WaterReflection, MSGBOX_DEFAULT
# 721 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 722 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_BOY, Common_Movement_FaceOriginalDirection
# 723 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 724 "data/maps/PetalburgCity/scripts.pory"
	release
# 725 "data/maps/PetalburgCity/scripts.pory"
	end
# 726 "data/maps/PetalburgCity/scripts.pory"

# 727 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom::
# 728 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_WallysMom_Normal
# 729 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_WallysMom_Normal
# 730 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeWallysMom, MSGBOX_NPC
# 731 "data/maps/PetalburgCity/scripts.pory"
	end
# 732 "data/maps/PetalburgCity/scripts.pory"

# 733 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallysMom_Normal::
# 734 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WhereIsWally, MSGBOX_NPC
# 735 "data/maps/PetalburgCity/scripts.pory"
	end
# 736 "data/maps/PetalburgCity/scripts.pory"

# 737 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer0::
# 738 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 739 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 740 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 741 "data/maps/PetalburgCity/scripts.pory"
	end
# 742 "data/maps/PetalburgCity/scripts.pory"

# 743 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer1::
# 744 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 745 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 746 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 747 "data/maps/PetalburgCity/scripts.pory"
	end
# 748 "data/maps/PetalburgCity/scripts.pory"

# 749 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer2::
# 750 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 751 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 752 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 753 "data/maps/PetalburgCity/scripts.pory"
	end
# 754 "data/maps/PetalburgCity/scripts.pory"

# 755 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer3::
# 756 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 757 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 758 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_ShowGymToPlayer
# 759 "data/maps/PetalburgCity/scripts.pory"
	end
# 760 "data/maps/PetalburgCity/scripts.pory"

# 761 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_ShowGymToPlayer::
# 762 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_GYM_BOY, Common_Movement_FacePlayer
# 763 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 764 "data/maps/PetalburgCity/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 765 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_DEFAULT
# 766 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 767 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkRight
# 768 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 769 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 770 "data/maps/PetalburgCity/scripts.pory"
	end
# 771 "data/maps/PetalburgCity/scripts.pory"

# 772 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott0::
# 773 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 774 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 775 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 0
# 776 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 777 "data/maps/PetalburgCity/scripts.pory"
	end
# 778 "data/maps/PetalburgCity/scripts.pory"

# 779 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott1::
# 780 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 781 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 782 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 1
# 783 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 784 "data/maps/PetalburgCity/scripts.pory"
	end
# 785 "data/maps/PetalburgCity/scripts.pory"

# 786 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott2::
# 787 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 788 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 789 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 2
# 790 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 791 "data/maps/PetalburgCity/scripts.pory"
	end
# 792 "data/maps/PetalburgCity/scripts.pory"

# 793 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott3::
# 794 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 795 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_SCOTT
# 796 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_0x8008, 3
# 797 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_Scott
# 798 "data/maps/PetalburgCity/scripts.pory"
	end
# 799 "data/maps/PetalburgCity/scripts.pory"

# 800 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Scott::
# 801 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_SCOTT_PETALBURG_ENCOUNTER, 1
# 802 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 803 "data/maps/PetalburgCity/scripts.pory"
	end
# 804 "data/maps/PetalburgCity/scripts.pory"

# 805 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHousePlayer:
# 806 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 807 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 808 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 809 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 810 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 811 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 812 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 813 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 814 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 815 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 816 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 817 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 818 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 819 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 820 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 821 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 822 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 823 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 824 "data/maps/PetalburgCity/scripts.pory"

# 825 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHousePlayer:
# 826 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 827 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 828 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 829 "data/maps/PetalburgCity/scripts.pory"

# 830 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkToWallyHouseWallysDad:
# 831 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 832 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 833 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 834 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 835 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 836 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 837 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 838 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 839 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 840 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 841 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 842 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 843 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 844 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 845 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 846 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 847 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 848 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 849 "data/maps/PetalburgCity/scripts.pory"

# 850 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WalkInsideHouseWallysDad:
# 851 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 852 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 853 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 854 "data/maps/PetalburgCity/scripts.pory"

# 855 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialPlayer:
# 856 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 857 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 858 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 859 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 860 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 861 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 862 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 863 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 864 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 865 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 866 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 867 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 868 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 869 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 870 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 871 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 872 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 873 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 874 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 875 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 876 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 877 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 878 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 879 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 880 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 881 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 882 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 883 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 884 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 885 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 886 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 887 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 888 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 889 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_right
# 890 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 891 "data/maps/PetalburgCity/scripts.pory"

# 892 "data/maps/PetalburgCity/scripts.pory"

# 893 "data/maps/PetalburgCity/scripts.pory"

# 894 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakeRivalRunToGroup:
# 895 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 896 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 897 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 898 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 899 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 900 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 901 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 902 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 903 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 904 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 905 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 906 "data/maps/PetalburgCity/scripts.pory"
	face_up
# 907 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 908 "data/maps/PetalburgCity/scripts.pory"

# 909 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_QuakeLukaMoveToGroup:
# 910 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 911 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 912 "data/maps/PetalburgCity/scripts.pory"
	face_right
# 913 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 914 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_WallyTutorialWally:
# 915 "data/maps/PetalburgCity/scripts.pory"
	delay_8
# 916 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 917 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 918 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 919 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 920 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 921 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 922 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 923 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 924 "data/maps/PetalburgCity/scripts.pory"
	walk_down
# 925 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 926 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 927 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 928 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 929 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 930 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 931 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 932 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 933 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 934 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 935 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 936 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 937 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 938 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 939 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 940 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 941 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 942 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 943 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 944 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 945 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 946 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 947 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 948 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 949 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 950 "data/maps/PetalburgCity/scripts.pory"
	delay_16
# 951 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_left
# 952 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 953 "data/maps/PetalburgCity/scripts.pory"

# 954 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymSign::
# 955 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_GymSign, MSGBOX_SIGN
# 956 "data/maps/PetalburgCity/scripts.pory"
	end
# 957 "data/maps/PetalburgCity/scripts.pory"

# 958 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_CitySign::
# 959 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_CitySign, MSGBOX_SIGN
# 960 "data/maps/PetalburgCity/scripts.pory"
	end
# 961 "data/maps/PetalburgCity/scripts.pory"

# 962 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman::
# 963 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_Gentleman_Normal
# 964 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_Gentleman_Normal
# 965 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGentleman, MSGBOX_NPC
# 966 "data/maps/PetalburgCity/scripts.pory"
	end
# 967 "data/maps/PetalburgCity/scripts.pory"

# 968 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_Gentleman_Normal::
# 969 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_FullPartyExplanation, MSGBOX_NPC
# 970 "data/maps/PetalburgCity/scripts.pory"
	end
# 971 "data/maps/PetalburgCity/scripts.pory"

# 972 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_WallyHouseSign::
# 973 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_WallyHouseSign, MSGBOX_SIGN
# 974 "data/maps/PetalburgCity/scripts.pory"
	end
# 975 "data/maps/PetalburgCity/scripts.pory"

# 976 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy::
# 977 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_GymBoy_Normal
# 978 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_GymBoy_Normal
# 979 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeGymBoy, MSGBOX_NPC
# 980 "data/maps/PetalburgCity/scripts.pory"
	end
# 981 "data/maps/PetalburgCity/scripts.pory"

# 982 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_GymBoy_Normal::
# 983 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AreYouRookieTrainer, MSGBOX_NPC
# 984 "data/maps/PetalburgCity/scripts.pory"
	end
# 985 "data/maps/PetalburgCity/scripts.pory"

# 986 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock::
# 987 "data/maps/PetalburgCity/scripts.pory"
	lock
# 988 "data/maps/PetalburgCity/scripts.pory"
	faceplayer
# 989 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 990 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AquaGruntBlock_Normal
# 991 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAquaGruntBlock, MSGBOX_DEFAULT
# 992 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 993 "data/maps/PetalburgCity/scripts.pory"
	release
# 994 "data/maps/PetalburgCity/scripts.pory"
	end
# 995 "data/maps/PetalburgCity/scripts.pory"

# 996 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AquaGruntBlock_Normal::
# 997 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AquaGruntBlock, MSGBOX_DEFAULT
# 998 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 999 "data/maps/PetalburgCity/scripts.pory"
	release
# 1000 "data/maps/PetalburgCity/scripts.pory"
	end
# 1001 "data/maps/PetalburgCity/scripts.pory"

# 1002 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy::
# 1003 "data/maps/PetalburgCity/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PetalburgCity_EventScript_AdventureBoy_Normal
# 1004 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_STORM_CLEARED, PetalburgCity_EventScript_AdventureBoy_Normal
# 1005 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_QuakeAdventureBoy, MSGBOX_NPC
# 1006 "data/maps/PetalburgCity/scripts.pory"
	end
# 1007 "data/maps/PetalburgCity/scripts.pory"

# 1008 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_AdventureBoy_Normal::
# 1009 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_AdventureBoy, MSGBOX_NPC
# 1010 "data/maps/PetalburgCity/scripts.pory"
	end
# 1011 "data/maps/PetalburgCity/scripts.pory"

# 1012 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1013 "data/maps/PetalburgCity/scripts.pory"
@ ENCONTRO COM O LUKA APÓS O GINÁSIO
# 1014 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1015 "data/maps/PetalburgCity/scripts.pory"

# 1016 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center::
# 1017 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Center_Battle
# 1018 "data/maps/PetalburgCity/scripts.pory"
	end
# 1019 "data/maps/PetalburgCity/scripts.pory"

# 1020 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Center_Battle::
# 1021 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1022 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1023 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 1024 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachCenter
# 1025 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1026 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 1027 "data/maps/PetalburgCity/scripts.pory"
	end
# 1028 "data/maps/PetalburgCity/scripts.pory"

# 1029 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left::
# 1030 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Left_Battle
# 1031 "data/maps/PetalburgCity/scripts.pory"
	end
# 1032 "data/maps/PetalburgCity/scripts.pory"

# 1033 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Left_Battle::
# 1034 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1035 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1036 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 1037 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachLeft
# 1038 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1039 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 1040 "data/maps/PetalburgCity/scripts.pory"
	end
# 1041 "data/maps/PetalburgCity/scripts.pory"

# 1042 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right::
# 1043 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_EventScript_LukaAfterGym_Right_Battle
# 1044 "data/maps/PetalburgCity/scripts.pory"
	end
# 1045 "data/maps/PetalburgCity/scripts.pory"

# 1046 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_Right_Battle::
# 1047 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1048 "data/maps/PetalburgCity/scripts.pory"
	addobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1049 "data/maps/PetalburgCity/scripts.pory"
	setobjectxy LOCALID_PETALBURG_LUKA_AFTER_GYM, 13, 12
# 1050 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_ApproachRight
# 1051 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1052 "data/maps/PetalburgCity/scripts.pory"
	goto PetalburgCity_EventScript_LukaAfterGym_StartBattle
# 1053 "data/maps/PetalburgCity/scripts.pory"
	end
# 1054 "data/maps/PetalburgCity/scripts.pory"

# 1055 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_StartBattle::
# 1056 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PETALBURG_LUKA_AFTER_GYM, DIR_NORTH
# 1057 "data/maps/PetalburgCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 1058 "data/maps/PetalburgCity/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 1059 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 1060 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_Intro, MSGBOX_DEFAULT
# 1061 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 1062 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1063 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 1064 "data/maps/PetalburgCity/scripts.pory"
	trainerbattle_single TRAINER_LUKA_PETALBURG_GYM, PetalburgCity_Text_LukaAfterGym_BattleStart, PetalburgCity_Text_LukaAfterGym_Defeat, PetalburgCity_EventScript_LukaAfterGym_AfterBattle
# 1065 "data/maps/PetalburgCity/scripts.pory"
	end
# 1066 "data/maps/PetalburgCity/scripts.pory"

# 1067 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LukaAfterGym_AfterBattle::
# 1068 "data/maps/PetalburgCity/scripts.pory"
	clearflag FLAG_LOST_TO_LUKA_AFTER_5GYM
# 1069 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 1070 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle1, MSGBOX_DEFAULT
# 1071 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 1072 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1073 "data/maps/PetalburgCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 1074 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_LukaAfterGym_PostBattle2, MSGBOX_DEFAULT
# 1075 "data/maps/PetalburgCity/scripts.pory"
	removefieldmugshot
# 1076 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1077 "data/maps/PetalburgCity/scripts.pory"
	applymovement LOCALID_PETALBURG_LUKA_AFTER_GYM, PetalburgCity_Movement_LukaAfterGym_Exit
# 1078 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1079 "data/maps/PetalburgCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_LUKA_AFTER_GYM
# 1080 "data/maps/PetalburgCity/scripts.pory"
	removeobject LOCALID_PETALBURG_LUKA_AFTER_GYM
# 1081 "data/maps/PetalburgCity/scripts.pory"
	setvar VAR_LUKA_PETALBURG_ENCOUNTER, 1
# 1082 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 1083 "data/maps/PetalburgCity/scripts.pory"
	end
# 1084 "data/maps/PetalburgCity/scripts.pory"

# 1085 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachCenter:
# 1086 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1087 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1088 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1089 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1090 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 1091 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1092 "data/maps/PetalburgCity/scripts.pory"

# 1093 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachRight:
# 1094 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1095 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1096 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1097 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1098 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1099 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1100 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 1101 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1102 "data/maps/PetalburgCity/scripts.pory"

# 1103 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_ApproachLeft:
# 1104 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 1105 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1106 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1107 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1108 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1109 "data/maps/PetalburgCity/scripts.pory"
	walk_up
# 1110 "data/maps/PetalburgCity/scripts.pory"
	walk_in_place_faster_up
# 1111 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1112 "data/maps/PetalburgCity/scripts.pory"

# 1113 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_LukaAfterGym_Exit:
# 1114 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1115 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1116 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1117 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1118 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_down
# 1119 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1120 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1121 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1122 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1123 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1124 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1125 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1126 "data/maps/PetalburgCity/scripts.pory"
	walk_fast_left
# 1127 "data/maps/PetalburgCity/scripts.pory"
	set_invisible
# 1128 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1129 "data/maps/PetalburgCity/scripts.pory"

# 1130 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1131 "data/maps/PetalburgCity/scripts.pory"
@ TRIGGERS DE DERROTA (BLOQUEIO DAS SAÍDAS DA CIDADE)
# 1132 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1133 "data/maps/PetalburgCity/scripts.pory"

# 1134 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight::
# 1135 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaRight_Trigger
# 1136 "data/maps/PetalburgCity/scripts.pory"
	end
# 1137 "data/maps/PetalburgCity/scripts.pory"

# 1138 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaRight_Trigger::
# 1139 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1140 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 1141 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1142 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerLeft
# 1143 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1144 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 1145 "data/maps/PetalburgCity/scripts.pory"
	end
# 1146 "data/maps/PetalburgCity/scripts.pory"

# 1147 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft::
# 1148 "data/maps/PetalburgCity/scripts.pory"
	goto_if_set FLAG_LOST_TO_LUKA_AFTER_5GYM, PetalburgCity_EventScript_LostLukaLeft_Trigger
# 1149 "data/maps/PetalburgCity/scripts.pory"
	end
# 1150 "data/maps/PetalburgCity/scripts.pory"

# 1151 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_EventScript_LostLukaLeft_Trigger::
# 1152 "data/maps/PetalburgCity/scripts.pory"
	lockall
# 1153 "data/maps/PetalburgCity/scripts.pory"
	msgbox PetalburgCity_Text_MustSeeLukaInHouse, MSGBOX_DEFAULT
# 1154 "data/maps/PetalburgCity/scripts.pory"
	closemessage
# 1155 "data/maps/PetalburgCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PetalburgCity_Movement_ForcePlayerRight
# 1156 "data/maps/PetalburgCity/scripts.pory"
	waitmovement 0
# 1157 "data/maps/PetalburgCity/scripts.pory"
	releaseall
# 1158 "data/maps/PetalburgCity/scripts.pory"
	end
# 1159 "data/maps/PetalburgCity/scripts.pory"

# 1160 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerLeft:
# 1161 "data/maps/PetalburgCity/scripts.pory"
	walk_left
# 1162 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1163 "data/maps/PetalburgCity/scripts.pory"

# 1164 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Movement_ForcePlayerRight:
# 1165 "data/maps/PetalburgCity/scripts.pory"
	walk_right
# 1166 "data/maps/PetalburgCity/scripts.pory"
	step_end
# 1167 "data/maps/PetalburgCity/scripts.pory"

# 1168 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_MustSeeLukaInHouse:
# 1169 "data/maps/PetalburgCity/scripts.pory"
	.string "Oh, I have to see Luka in his house!$"
# 1170 "data/maps/PetalburgCity/scripts.pory"

# 1171 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1172 "data/maps/PetalburgCity/scripts.pory"
@ TEXTOS DIVERSOS
# 1173 "data/maps/PetalburgCity/scripts.pory"
@ ============================================================
# 1174 "data/maps/PetalburgCity/scripts.pory"

# 1175 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaWon:
# 1176 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Heh… Not bad, {PLAYER}.\n"
# 1177 "data/maps/PetalburgCity/scripts.pory"
    .string "But I came out on top this time.$"
# 1178 "data/maps/PetalburgCity/scripts.pory"

# 1179 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyTutorial_LukaGoBack:
# 1180 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Don't be down about it.\n"
# 1181 "data/maps/PetalburgCity/scripts.pory"
    .string "A loss is just the start of\l"
# 1182 "data/maps/PetalburgCity/scripts.pory"
    .string "something bigger.\p"
# 1183 "data/maps/PetalburgCity/scripts.pory"
    .string "Come on, let's head back to\n"
# 1184 "data/maps/PetalburgCity/scripts.pory"
    .string "the GYM and tell CALENDULA.$"
# 1185 "data/maps/PetalburgCity/scripts.pory"

# 1186 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WhereIsWally:
# 1187 "data/maps/PetalburgCity/scripts.pory"
	.string "Where has our LUKA gone?\p"
# 1188 "data/maps/PetalburgCity/scripts.pory"
	.string "We have to leave for VERDANTURF TOWN\n"
# 1189 "data/maps/PetalburgCity/scripts.pory"
	.string "very soon…$"
# 1190 "data/maps/PetalburgCity/scripts.pory"

# 1191 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AreYouRookieTrainer:
# 1192 "data/maps/PetalburgCity/scripts.pory"
    .string "Hey, you're not from around here,\n"
# 1193 "data/maps/PetalburgCity/scripts.pory"
    .string "are you?\p"
# 1194 "data/maps/PetalburgCity/scripts.pory"
    .string "You've got that 'what did I walk into'\n"
# 1195 "data/maps/PetalburgCity/scripts.pory"
    .string "look on your face.\p"
# 1196 "data/maps/PetalburgCity/scripts.pory"
    .string "Petalburg's been… odd lately.\n"
# 1197 "data/maps/PetalburgCity/scripts.pory"
    .string "People keep hearing footsteps in the\l"
# 1198 "data/maps/PetalburgCity/scripts.pory"
    .string "woods even when the wind is still.\p"
# 1199 "data/maps/PetalburgCity/scripts.pory"
    .string "Calendula wants to speak with any new\n"
# 1200 "data/maps/PetalburgCity/scripts.pory"
    .string "visitors before they go into the woods.\l"
# 1201 "data/maps/PetalburgCity/scripts.pory"
	.string "You should visit her if you haven't.$"
# 1202 "data/maps/PetalburgCity/scripts.pory"

# 1203 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsPetalburgGym:
# 1204 "data/maps/PetalburgCity/scripts.pory"
	.string "See? This is PETALBURG CITY's GYM.\n"
# 1205 "data/maps/PetalburgCity/scripts.pory"
	.string "You'll find Calendula inside.$"
# 1206 "data/maps/PetalburgCity/scripts.pory"

# 1207 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_ThisIsGymSign:
# 1208 "data/maps/PetalburgCity/scripts.pory"
	.string "This is the GYM's sign. Look for it\n"
# 1209 "data/maps/PetalburgCity/scripts.pory"
	.string "whenever you're looking for a GYM.$"
# 1210 "data/maps/PetalburgCity/scripts.pory"

# 1211 "data/maps/PetalburgCity/scripts.pory"

# 1212 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeBoy:
# 1213 "data/maps/PetalburgCity/scripts.pory"
	.string "The water's gone all choppy from\n"
# 1214 "data/maps/PetalburgCity/scripts.pory"
	.string "the quakes.\p"
# 1215 "data/maps/PetalburgCity/scripts.pory"
	.string "Even my reflection looks like it\n"
# 1216 "data/maps/PetalburgCity/scripts.pory"
	.string "wants to run for cover.$"
# 1217 "data/maps/PetalburgCity/scripts.pory"

# 1218 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeWallysMom:
# 1219 "data/maps/PetalburgCity/scripts.pory"
	.string "This rain came on so suddenly...\p"
# 1220 "data/maps/PetalburgCity/scripts.pory"
	.string "I hope everyone outside is keeping\n"
# 1221 "data/maps/PetalburgCity/scripts.pory"
	.string "safe.$"
# 1222 "data/maps/PetalburgCity/scripts.pory"

# 1223 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGentleman:
# 1224 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG WOODS has always made\n"
# 1225 "data/maps/PetalburgCity/scripts.pory"
	.string "strange sounds at night.\p"
# 1226 "data/maps/PetalburgCity/scripts.pory"
	.string "But now even the ground beneath the\n"
# 1227 "data/maps/PetalburgCity/scripts.pory"
	.string "city seems restless.$"
# 1228 "data/maps/PetalburgCity/scripts.pory"

# 1229 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeGymBoy:
# 1230 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM's closed while CALENDULA\n"
# 1231 "data/maps/PetalburgCity/scripts.pory"
	.string "looks into this storm.\p"
# 1232 "data/maps/PetalburgCity/scripts.pory"
	.string "Whatever is happening, it feels\n"
# 1233 "data/maps/PetalburgCity/scripts.pory"
	.string "bigger than a normal battle.$"
# 1234 "data/maps/PetalburgCity/scripts.pory"

# 1235 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAquaGruntBlock:
# 1236 "data/maps/PetalburgCity/scripts.pory"
	.string "With the ground shaking like this,\n"
# 1237 "data/maps/PetalburgCity/scripts.pory"
	.string "nobody's getting through here.\p"
# 1238 "data/maps/PetalburgCity/scripts.pory"
	.string "Find another route until things\n"
# 1239 "data/maps/PetalburgCity/scripts.pory"
	.string "settle down.$"
# 1240 "data/maps/PetalburgCity/scripts.pory"

# 1241 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeAdventureBoy:
# 1242 "data/maps/PetalburgCity/scripts.pory"
	.string "I wanted an adventure, but I didn't\n"
# 1243 "data/maps/PetalburgCity/scripts.pory"
	.string "mean earthquakes and endless rain!\p"
# 1244 "data/maps/PetalburgCity/scripts.pory"
	.string "This is a little too exciting for\n"
# 1245 "data/maps/PetalburgCity/scripts.pory"
	.string "me.$"
# 1246 "data/maps/PetalburgCity/scripts.pory"

# 1247 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPart15:
# 1248 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, have you met\n"
# 1249 "data/maps/PetalburgCity/scripts.pory"
	.string "with AURORA yet?\p"
# 1250 "data/maps/PetalburgCity/scripts.pory"
	.string "Things are getting worse here.\n"
# 1251 "data/maps/PetalburgCity/scripts.pory"
	.string "Please go see her in PHOENIX TOWN\l"
# 1252 "data/maps/PetalburgCity/scripts.pory"
	.string "and return as soon as possible.$"
# 1253 "data/maps/PetalburgCity/scripts.pory"

# 1254 "data/maps/PetalburgCity/scripts.pory"

# 1255 "data/maps/PetalburgCity/scripts.pory"

# 1256 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaNightmareInterrupt:
# 1257 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: You're back, {PLAYER}!\n"
# 1258 "data/maps/PetalburgCity/scripts.pory"
	.string "The situation here is getting worse\l"
# 1259 "data/maps/PetalburgCity/scripts.pory"
	.string "by the minute. Did you learn-$"
# 1260 "data/maps/PetalburgCity/scripts.pory"

# 1261 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeRivalNightmareInterrupt:
# 1262 "data/maps/PetalburgCity/scripts.pory"
	.string "That was a big one!\n"
# 1263 "data/maps/PetalburgCity/scripts.pory"
	.string "Is everyone alright?$"
# 1264 "data/maps/PetalburgCity/scripts.pory"

# 1265 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaNightmareInterrupt:
# 1266 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: We're okay over here, but-\n"
# 1267 "data/maps/PetalburgCity/scripts.pory"
	.string "wait, {PLAYER}, you don't look so good.$"
# 1268 "data/maps/PetalburgCity/scripts.pory"

# 1269 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeCalendulaPlayerSick:
# 1270 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA: {PLAYER}, what's wrong?\n"
# 1271 "data/maps/PetalburgCity/scripts.pory"
	.string "Are you okay?$"
# 1272 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeLukaPart15:
# 1273 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: {PLAYER}! I'm glad to see\n"
# 1274 "data/maps/PetalburgCity/scripts.pory"
	.string "you, but we really need some help\l"
# 1275 "data/maps/PetalburgCity/scripts.pory"
	.string "here.\p"
# 1276 "data/maps/PetalburgCity/scripts.pory"
	.string "Please tell me you have something.$"
# 1277 "data/maps/PetalburgCity/scripts.pory"

# 1278 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZinniaPart15:
# 1279 "data/maps/PetalburgCity/scripts.pory"
	.string "ZINNIA: This rain just won't stop,\n"
# 1280 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 1281 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 1282 "data/maps/PetalburgCity/scripts.pory"

# 1283 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeZennoPart15:
# 1284 "data/maps/PetalburgCity/scripts.pory"
	.string "ZENNO: This rain just won't stop,\n"
# 1285 "data/maps/PetalburgCity/scripts.pory"
	.string "and the earthquakes are getting\l"
# 1286 "data/maps/PetalburgCity/scripts.pory"
	.string "worse...$"
# 1287 "data/maps/PetalburgCity/scripts.pory"

# 1288 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaAwake:
# 1289 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: {PLAYER}! You're awake!$"
# 1290 "data/maps/PetalburgCity/scripts.pory"

# 1291 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_RivalPassedOut:
# 1292 "data/maps/PetalburgCity/scripts.pory"
	.string "RIVAL: You were about to enter the\n"
# 1293 "data/maps/PetalburgCity/scripts.pory"
	.string "GYM, but you passed out all of a\l"
# 1294 "data/maps/PetalburgCity/scripts.pory"
	.string "sudden.\p"
# 1295 "data/maps/PetalburgCity/scripts.pory"
	.string "We were just deciding whether we\n"
# 1296 "data/maps/PetalburgCity/scripts.pory"
	.string "should move you into LUKA's house.$"
# 1297 "data/maps/PetalburgCity/scripts.pory"

# 1298 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaRelieved:
# 1299 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: But you woke up so quickly!\n"
# 1300 "data/maps/PetalburgCity/scripts.pory"
	.string "That's a relief.$"
# 1301 "data/maps/PetalburgCity/scripts.pory"

# 1302 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_RivalGhost:
# 1303 "data/maps/PetalburgCity/scripts.pory"
	.string "RIVAL: You look like you've seen a\n"
# 1304 "data/maps/PetalburgCity/scripts.pory"
	.string "ghost, {PLAYER}. Are you alright?$"
# 1305 "data/maps/PetalburgCity/scripts.pory"

# 1306 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaUnsettled:
# 1307 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: It's been peaceful here, but\n"
# 1308 "data/maps/PetalburgCity/scripts.pory"
	.string "I don't know...\p"
# 1309 "data/maps/PetalburgCity/scripts.pory"
	.string "I've just got an unsettling feeling.$"
# 1310 "data/maps/PetalburgCity/scripts.pory"

# 1311 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_RivalLeaves:
# 1312 "data/maps/PetalburgCity/scripts.pory"
	.string "RIVAL: I know what you mean. But...\n"
# 1313 "data/maps/PetalburgCity/scripts.pory"
	.string "there's no point lingering on it too\l"
# 1314 "data/maps/PetalburgCity/scripts.pory"
	.string "much.\p"
# 1315 "data/maps/PetalburgCity/scripts.pory"
	.string "I'm off to continue my journey.\n"
# 1316 "data/maps/PetalburgCity/scripts.pory"
	.string "Take care of yourselves, both of you.$"
# 1317 "data/maps/PetalburgCity/scripts.pory"

# 1318 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_NightmareReturn_LukaLeaves:
# 1319 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKA: ...\p"
# 1320 "data/maps/PetalburgCity/scripts.pory"
	.string "It's just too strange. Whatever that\n"
# 1321 "data/maps/PetalburgCity/scripts.pory"
	.string "feeling was is gone now.\p"
# 1322 "data/maps/PetalburgCity/scripts.pory"
	.string "Hey, {PLAYER}, I'm going to ask around\n"
# 1323 "data/maps/PetalburgCity/scripts.pory"
	.string "to see if anyone else noticed anything.\p"
# 1324 "data/maps/PetalburgCity/scripts.pory"
	.string "Be careful.$"
# 1325 "data/maps/PetalburgCity/scripts.pory"

# 1326 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistFirst:
# 1327 "data/maps/PetalburgCity/scripts.pory"
	.string "Careful, TRAINER! Did you feel\n"
# 1328 "data/maps/PetalburgCity/scripts.pory"
	.string "that earthquake?\p"
# 1329 "data/maps/PetalburgCity/scripts.pory"
	.string "They started suddenly along with\n"
# 1330 "data/maps/PetalburgCity/scripts.pory"
	.string "this rain.$"
# 1331 "data/maps/PetalburgCity/scripts.pory"

# 1332 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_QuakeScientistRepeat:
# 1333 "data/maps/PetalburgCity/scripts.pory"
	.string "The GYM is closed right now.\p"
# 1334 "data/maps/PetalburgCity/scripts.pory"
	.string "CALENDULA took off to the desert.\p"
# 1335 "data/maps/PetalburgCity/scripts.pory"
	.string "She received a letter from someone\n"
# 1336 "data/maps/PetalburgCity/scripts.pory"
	.string "in PHOENIX TOWN who says they can\l"
# 1337 "data/maps/PetalburgCity/scripts.pory"
	.string "help.$"
# 1338 "data/maps/PetalburgCity/scripts.pory"

# 1339 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WaterReflection:
# 1340 "data/maps/PetalburgCity/scripts.pory"
    .string "Funny thing about reflections…\n"
# 1341 "data/maps/PetalburgCity/scripts.pory"
    .string "they show you, but not the parts\l"
# 1342 "data/maps/PetalburgCity/scripts.pory"
    .string "you try to hide.\p"
# 1343 "data/maps/PetalburgCity/scripts.pory"
    .string "When I stare long enough, mine looks\n"
# 1344 "data/maps/PetalburgCity/scripts.pory"
    .string "almost like it's drifting away.\p"
# 1345 "data/maps/PetalburgCity/scripts.pory"
    .string "What about you?\n"
# 1346 "data/maps/PetalburgCity/scripts.pory"
    .string "What is your reflection trying to say?$"
# 1347 "data/maps/PetalburgCity/scripts.pory"

# 1348 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_FullPartyExplanation:
# 1349 "data/maps/PetalburgCity/scripts.pory"
    .string "You ever walk near Petalburg Woods\n"
# 1350 "data/maps/PetalburgCity/scripts.pory"
    .string "late in the evening?\p"
# 1351 "data/maps/PetalburgCity/scripts.pory"
    .string "Sometimes you can hear whispers from\n"
# 1352 "data/maps/PetalburgCity/scripts.pory"
    .string "deep inside, like the trees are alive.\p"
# 1353 "data/maps/PetalburgCity/scripts.pory"
    .string "Locals say the forest remembers every\n"
# 1354 "data/maps/PetalburgCity/scripts.pory"
    .string "step you've ever taken.$"
# 1355 "data/maps/PetalburgCity/scripts.pory"

# 1356 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_GymSign:
# 1357 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\n"
# 1358 "data/maps/PetalburgCity/scripts.pory"
    .string "LEADER: CALENDULA\p"
# 1359 "data/maps/PetalburgCity/scripts.pory"
    .string "A professor who blends knowledge\n"
# 1360 "data/maps/PetalburgCity/scripts.pory"
    .string "with battle skill.$"
# 1361 "data/maps/PetalburgCity/scripts.pory"

# 1362 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_CitySign:
# 1363 "data/maps/PetalburgCity/scripts.pory"
	.string "PETALBURG CITY\n"
# 1364 "data/maps/PetalburgCity/scripts.pory"
	.string "“Where people mingle with nature.”$"
# 1365 "data/maps/PetalburgCity/scripts.pory"

# 1366 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyHouseSign:
# 1367 "data/maps/PetalburgCity/scripts.pory"
	.string "LUKAS'S HOUSE$"
# 1368 "data/maps/PetalburgCity/scripts.pory"

# 1369 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyIntro:
# 1370 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}! The Professor said\n"
# 1371 "data/maps/PetalburgCity/scripts.pory"
    .string "you're special, but so am I!\p"
# 1372 "data/maps/PetalburgCity/scripts.pory"
    .string "I've been training for so long...\n"
# 1373 "data/maps/PetalburgCity/scripts.pory"
    .string "Let me show you what I've learned!$"
# 1374 "data/maps/PetalburgCity/scripts.pory"

# 1375 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_WallyDefeat:
# 1376 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Incredible…\n"
# 1377 "data/maps/PetalburgCity/scripts.pory"
    .string "You're really good!$"
# 1378 "data/maps/PetalburgCity/scripts.pory"

# 1379 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Intro:
# 1380 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: {PLAYER}!\n"
# 1381 "data/maps/PetalburgCity/scripts.pory"
    .string "You actually beat Calendula…\n"
# 1382 "data/maps/PetalburgCity/scripts.pory"
	.string "I knew you were strong, but this…\n"
# 1383 "data/maps/PetalburgCity/scripts.pory"
	.string "I had to come see for myself.\p"
# 1384 "data/maps/PetalburgCity/scripts.pory"
	.string "Before you go further into the world,\n"
# 1385 "data/maps/PetalburgCity/scripts.pory"
	.string "I want to test you one more time.\p"
# 1386 "data/maps/PetalburgCity/scripts.pory"
	.string "Come on. Show me what you've got!$"
# 1387 "data/maps/PetalburgCity/scripts.pory"

# 1388 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_BattleStart:
# 1389 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I won't hold back!\n"
# 1390 "data/maps/PetalburgCity/scripts.pory"
    .string "Not even a little!$"
# 1391 "data/maps/PetalburgCity/scripts.pory"

# 1392 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_Defeat:
# 1393 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: …You win. Again.\n"
# 1394 "data/maps/PetalburgCity/scripts.pory"
    .string "How do you do that?$"
# 1395 "data/maps/PetalburgCity/scripts.pory"

# 1396 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle1:
# 1397 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: Listen… while you were in there,\n"
# 1398 "data/maps/PetalburgCity/scripts.pory"
    .string "I heard some things.\p"
# 1399 "data/maps/PetalburgCity/scripts.pory"
    .string "Team Magma and Team Aqua have been\n"
# 1400 "data/maps/PetalburgCity/scripts.pory"
    .string "spotted near the woods.\p"
# 1401 "data/maps/PetalburgCity/scripts.pory"
    .string "They're not just passing through.\n"
# 1402 "data/maps/PetalburgCity/scripts.pory"
    .string "Something is going on between them.$"
# 1403 "data/maps/PetalburgCity/scripts.pory"

# 1404 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_LukaAfterGym_PostBattle2:
# 1405 "data/maps/PetalburgCity/scripts.pory"
    .string "LUKA: I'm going to keep an eye on it.\n"
# 1406 "data/maps/PetalburgCity/scripts.pory"
    .string "You keep moving forward.\p"
# 1407 "data/maps/PetalburgCity/scripts.pory"
    .string "But be careful, {PLAYER}.\n"
# 1408 "data/maps/PetalburgCity/scripts.pory"
    .string "Whatever they're after… it's serious.\p"
# 1409 "data/maps/PetalburgCity/scripts.pory"
    .string "We'll meet again soon.\n"
# 1410 "data/maps/PetalburgCity/scripts.pory"
    .string "Count on it!$"
# 1411 "data/maps/PetalburgCity/scripts.pory"

# 1412 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AquaGruntBlock:
# 1413 "data/maps/PetalburgCity/scripts.pory"
	.string "This route is off-limits now, friend.\p"
# 1414 "data/maps/PetalburgCity/scripts.pory"
	.string "Orders straight from the LEADER.\n"
# 1415 "data/maps/PetalburgCity/scripts.pory"
	.string "Unquestionable orders.\p"
# 1416 "data/maps/PetalburgCity/scripts.pory"
	.string "So do us both a favor…\n"
# 1417 "data/maps/PetalburgCity/scripts.pory"
	.string "And get lost.$"
# 1418 "data/maps/PetalburgCity/scripts.pory"

# 1419 "data/maps/PetalburgCity/scripts.pory"
PetalburgCity_Text_AdventureBoy:
# 1420 "data/maps/PetalburgCity/scripts.pory"
    .string "This city's pretty calm.\n"
# 1421 "data/maps/PetalburgCity/scripts.pory"
    .string "Or at least, it seems that way.\p"
# 1422 "data/maps/PetalburgCity/scripts.pory"
    .string "But the forest to the north...\n"
# 1423 "data/maps/PetalburgCity/scripts.pory"
    .string "It feels different somehow.\p"
# 1424 "data/maps/PetalburgCity/scripts.pory"
    .string "Even when it's quiet...\n"
# 1425 "data/maps/PetalburgCity/scripts.pory"
    .string "I get this strange feeling.\p"
# 1426 "data/maps/PetalburgCity/scripts.pory"
    .string "Like something's watching.\p"
# 1427 "data/maps/PetalburgCity/scripts.pory"
    .string "You should be careful, okay?$"
