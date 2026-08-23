# 1 "data/maps/Route120/scripts.pory"

# 2 "data/maps/Route120/scripts.pory"
@ LOCALID_BRIDGE_KECLEON_SHADOW is a second object which is identical to LOCALID_BRIDGE_KECLEON but has a reflection palette tag for the bridge shadow
# 3 "data/maps/Route120/scripts.pory"
Route120_MapScripts::
# 4 "data/maps/Route120/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, Route120_OnResume
# 5 "data/maps/Route120/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route120_OnTransition
# 6 "data/maps/Route120/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, Route120_OnLoad
# 7 "data/maps/Route120/scripts.pory"
	.byte 0
# 8 "data/maps/Route120/scripts.pory"

# 9 "data/maps/Route120/scripts.pory"
Route120_OnResume:
# 10 "data/maps/Route120/scripts.pory"
	call_if_set FLAG_SYS_CTRL_OBJ_DELETE, Route120_EventScript_RemoveKecleonObject
# 11 "data/maps/Route120/scripts.pory"
	end
# 12 "data/maps/Route120/scripts.pory"

# 13 "data/maps/Route120/scripts.pory"
Route120_EventScript_RemoveKecleonObject::
# 14 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_0x8009, 0, Route120_EventScript_RemoveBridgeKecleon
# 15 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_0x8009, 1, Route120_EventScript_RemoveKecleon
# 16 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_0x8009, 2, Route120_EventScript_RemoveKecleon
# 17 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_0x8009, 3, Route120_EventScript_RemoveKecleon
# 18 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_0x8009, 4, Route120_EventScript_RemoveKecleon
# 19 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_0x8009, 5, Route120_EventScript_RemoveKecleon
# 20 "data/maps/Route120/scripts.pory"
	return
# 21 "data/maps/Route120/scripts.pory"

# 22 "data/maps/Route120/scripts.pory"
Route120_EventScript_RemoveBridgeKecleon::
# 23 "data/maps/Route120/scripts.pory"
	specialvar VAR_RESULT, GetBattleOutcome
# 24 "data/maps/Route120/scripts.pory"
	goto_if_ne VAR_RESULT, B_OUTCOME_CAUGHT, Common_EventScript_NopReturn
# 25 "data/maps/Route120/scripts.pory"
	removeobject LOCALID_BRIDGE_KECLEON
# 26 "data/maps/Route120/scripts.pory"
	removeobject LOCALID_BRIDGE_KECLEON_SHADOW
# 27 "data/maps/Route120/scripts.pory"
	return
# 28 "data/maps/Route120/scripts.pory"

# 29 "data/maps/Route120/scripts.pory"
Route120_EventScript_RemoveKecleon::
# 30 "data/maps/Route120/scripts.pory"
	specialvar VAR_RESULT, GetBattleOutcome
# 31 "data/maps/Route120/scripts.pory"
	goto_if_ne VAR_RESULT, B_OUTCOME_CAUGHT, Common_EventScript_NopReturn
# 32 "data/maps/Route120/scripts.pory"
	removeobject VAR_LAST_TALKED
# 33 "data/maps/Route120/scripts.pory"
	return
# 34 "data/maps/Route120/scripts.pory"

# 35 "data/maps/Route120/scripts.pory"
Route120_OnLoad:
# 36 "data/maps/Route120/scripts.pory"
	call_if_unset FLAG_REGI_DOORS_OPENED, Route120_EventScript_CloseAncientTomb
# 37 "data/maps/Route120/scripts.pory"
	call_if_set FLAG_RECEIVED_DEVON_SCOPE, Route120_EventScript_SetBridgeClearMetatiles
# 38 "data/maps/Route120/scripts.pory"
	call_if_unset FLAG_RECEIVED_DEVON_SCOPE, Route120_EventScript_SetBridgeKecleonMovement
# 39 "data/maps/Route120/scripts.pory"
	end
# 40 "data/maps/Route120/scripts.pory"

# 41 "data/maps/Route120/scripts.pory"
Route120_EventScript_CloseAncientTomb::
# 42 "data/maps/Route120/scripts.pory"
	setmetatile 7, 54, METATILE_General_RockWall_RockBase, TRUE
# 43 "data/maps/Route120/scripts.pory"
	setmetatile 7, 55, METATILE_General_RockWall_SandBase, TRUE
# 44 "data/maps/Route120/scripts.pory"
	return
# 45 "data/maps/Route120/scripts.pory"

# 46 "data/maps/Route120/scripts.pory"
Route120_EventScript_SetBridgeClearMetatiles::
# 47 "data/maps/Route120/scripts.pory"
	setmetatile 13, 15, METATILE_Fortree_WoodBridge1_Top, FALSE
# 48 "data/maps/Route120/scripts.pory"
	setmetatile 12, 16, METATILE_Fortree_WoodBridge1_Bottom, FALSE
# 49 "data/maps/Route120/scripts.pory"
	setmetatile 12, 17, METATILE_General_ReflectiveWater, FALSE
# 50 "data/maps/Route120/scripts.pory"
	setmetatile 13, 17, METATILE_General_ReflectiveWater, FALSE
# 51 "data/maps/Route120/scripts.pory"
	return
# 52 "data/maps/Route120/scripts.pory"

# 53 "data/maps/Route120/scripts.pory"
Route120_EventScript_SetBridgeKecleonMovement::
# 54 "data/maps/Route120/scripts.pory"
	setobjectmovementtype LOCALID_BRIDGE_KECLEON_SHADOW, MOVEMENT_TYPE_FACE_RIGHT
# 55 "data/maps/Route120/scripts.pory"
	return
# 56 "data/maps/Route120/scripts.pory"

# 57 "data/maps/Route120/scripts.pory"
Route120_OnTransition:
# 58 "data/maps/Route120/scripts.pory"
	call GabbyAndTy_EventScript_UpdateLocation
# 59 "data/maps/Route120/scripts.pory"
	call Route120_EventScript_SetWeather
# 60 "data/maps/Route120/scripts.pory"
	end
# 61 "data/maps/Route120/scripts.pory"

# 62 "data/maps/Route120/scripts.pory"
Route120_EventScript_SetWeather::
# 63 "data/maps/Route120/scripts.pory"
	getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 64 "data/maps/Route120/scripts.pory"
	goto_if_le VAR_TEMP_1, 14, Route120_EventScript_SetSunnyWeather
# 65 "data/maps/Route120/scripts.pory"
	goto_if_le VAR_TEMP_1, 60, Route120_EventScript_TrySetRainyWeather
# 66 "data/maps/Route120/scripts.pory"
	goto_if_ge VAR_TEMP_1, 61, Route120_EventScript_SetCloudyWeather
# 67 "data/maps/Route120/scripts.pory"
	return
# 68 "data/maps/Route120/scripts.pory"

# 69 "data/maps/Route120/scripts.pory"
Route120_EventScript_SetCloudyWeather::
# 70 "data/maps/Route120/scripts.pory"
	setweather WEATHER_SUNNY_CLOUDS
# 71 "data/maps/Route120/scripts.pory"
	return
# 72 "data/maps/Route120/scripts.pory"

# 73 "data/maps/Route120/scripts.pory"
Route120_EventScript_SetSunnyWeather::
# 74 "data/maps/Route120/scripts.pory"
	setweather WEATHER_SUNNY
# 75 "data/maps/Route120/scripts.pory"
	return
# 76 "data/maps/Route120/scripts.pory"

# 77 "data/maps/Route120/scripts.pory"
Route120_EventScript_TrySetRainyWeather::
# 78 "data/maps/Route120/scripts.pory"
	goto_if_le VAR_TEMP_0, 7, Route120_EventScript_SetRainyWeather
# 79 "data/maps/Route120/scripts.pory"
	goto_if_le VAR_TEMP_0, 19, Route120_EventScript_SetSunnyWeather
# 80 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_SetRainyWeather
# 81 "data/maps/Route120/scripts.pory"
	end
# 82 "data/maps/Route120/scripts.pory"

# 83 "data/maps/Route120/scripts.pory"
Route120_EventScript_SetRainyWeather::
# 84 "data/maps/Route120/scripts.pory"
	setweather WEATHER_RAIN
# 85 "data/maps/Route120/scripts.pory"
	return
# 86 "data/maps/Route120/scripts.pory"

# 87 "data/maps/Route120/scripts.pory"
Route120_EventScript_BerryBeauty::
# 88 "data/maps/Route120/scripts.pory"
	lock
# 89 "data/maps/Route120/scripts.pory"
	faceplayer
# 90 "data/maps/Route120/scripts.pory"
	dotimebasedevents
# 91 "data/maps/Route120/scripts.pory"
	goto_if_set FLAG_DAILY_ROUTE_120_RECEIVED_BERRY, Route120_EventScript_ReceivedBerry
# 92 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_BerriesExpressionOfLoveIsntIt, MSGBOX_YESNO
# 93 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_RESULT, YES, Route120_EventScript_BerryLove
# 94 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_RESULT, NO, Route120_EventScript_BerryNotLove
# 95 "data/maps/Route120/scripts.pory"
	specialvar VAR_RESULT, GetPlayerTrainerIdOnesDigit
# 96 "data/maps/Route120/scripts.pory"
	switch VAR_RESULT
# 97 "data/maps/Route120/scripts.pory"
	case 0, Route120_EventScript_GiveFigyBerry
# 98 "data/maps/Route120/scripts.pory"
	case 5, Route120_EventScript_GiveFigyBerry
# 99 "data/maps/Route120/scripts.pory"
	case 1, Route120_EventScript_GiveWikiBerry
# 100 "data/maps/Route120/scripts.pory"
	case 6, Route120_EventScript_GiveWikiBerry
# 101 "data/maps/Route120/scripts.pory"
	case 2, Route120_EventScript_GiveMagoBerry
# 102 "data/maps/Route120/scripts.pory"
	case 7, Route120_EventScript_GiveMagoBerry
# 103 "data/maps/Route120/scripts.pory"
	case 3, Route120_EventScript_GiveAguavBerry
# 104 "data/maps/Route120/scripts.pory"
	case 8, Route120_EventScript_GiveAguavBerry
# 105 "data/maps/Route120/scripts.pory"
	case 4, Route120_EventScript_GiveIapapaBerry
# 106 "data/maps/Route120/scripts.pory"
	case 9, Route120_EventScript_GiveIapapaBerry
# 107 "data/maps/Route120/scripts.pory"
	end
# 108 "data/maps/Route120/scripts.pory"

# 109 "data/maps/Route120/scripts.pory"
Route120_EventScript_GiveFigyBerry::
# 110 "data/maps/Route120/scripts.pory"
	setvar VAR_0x8004, ITEM_FIGY_BERRY
# 111 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_GiveBerry
# 112 "data/maps/Route120/scripts.pory"
	end
# 113 "data/maps/Route120/scripts.pory"

# 114 "data/maps/Route120/scripts.pory"
Route120_EventScript_GiveWikiBerry::
# 115 "data/maps/Route120/scripts.pory"
	setvar VAR_0x8004, ITEM_WIKI_BERRY
# 116 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_GiveBerry
# 117 "data/maps/Route120/scripts.pory"
	end
# 118 "data/maps/Route120/scripts.pory"

# 119 "data/maps/Route120/scripts.pory"
Route120_EventScript_GiveMagoBerry::
# 120 "data/maps/Route120/scripts.pory"
	setvar VAR_0x8004, ITEM_MAGO_BERRY
# 121 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_GiveBerry
# 122 "data/maps/Route120/scripts.pory"
	end
# 123 "data/maps/Route120/scripts.pory"

# 124 "data/maps/Route120/scripts.pory"
Route120_EventScript_GiveAguavBerry::
# 125 "data/maps/Route120/scripts.pory"
	setvar VAR_0x8004, ITEM_AGUAV_BERRY
# 126 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_GiveBerry
# 127 "data/maps/Route120/scripts.pory"
	end
# 128 "data/maps/Route120/scripts.pory"

# 129 "data/maps/Route120/scripts.pory"
Route120_EventScript_GiveIapapaBerry::
# 130 "data/maps/Route120/scripts.pory"
	setvar VAR_0x8004, ITEM_IAPAPA_BERRY
# 131 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_GiveBerry
# 132 "data/maps/Route120/scripts.pory"
	end
# 133 "data/maps/Route120/scripts.pory"

# 134 "data/maps/Route120/scripts.pory"
Route120_EventScript_GiveBerry::
# 135 "data/maps/Route120/scripts.pory"
	giveitem VAR_0x8004
# 136 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 137 "data/maps/Route120/scripts.pory"
	setflag FLAG_DAILY_ROUTE_120_RECEIVED_BERRY
# 138 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_BerryIsRareRaiseItWithCare, MSGBOX_DEFAULT
# 139 "data/maps/Route120/scripts.pory"
	release
# 140 "data/maps/Route120/scripts.pory"
	end
# 141 "data/maps/Route120/scripts.pory"

# 142 "data/maps/Route120/scripts.pory"
Route120_EventScript_ReceivedBerry::
# 143 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_IllGetMoreBerriesFromBerryMaster, MSGBOX_DEFAULT
# 144 "data/maps/Route120/scripts.pory"
	release
# 145 "data/maps/Route120/scripts.pory"
	end
# 146 "data/maps/Route120/scripts.pory"

# 147 "data/maps/Route120/scripts.pory"
Route120_EventScript_BerryLove::
# 148 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_YesYouUnderstand, MSGBOX_DEFAULT
# 149 "data/maps/Route120/scripts.pory"
	return
# 150 "data/maps/Route120/scripts.pory"

# 151 "data/maps/Route120/scripts.pory"
Route120_EventScript_BerryNotLove::
# 152 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_MakeYourOwnImpressions, MSGBOX_DEFAULT
# 153 "data/maps/Route120/scripts.pory"
	return
# 154 "data/maps/Route120/scripts.pory"

# 155 "data/maps/Route120/scripts.pory"
Route120_EventScript_Steven::
# 156 "data/maps/Route120/scripts.pory"
	lock
# 157 "data/maps/Route120/scripts.pory"
	faceplayer
# 158 "data/maps/Route120/scripts.pory"
	goto_if_set FLAG_NOT_READY_FOR_BATTLE_ROUTE_120, Route120_EventScript_StevenAskReadyForBattle
# 159 "data/maps/Route120/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 160 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenGreeting, MSGBOX_YESNO
# 161 "data/maps/Route120/scripts.pory"
	removefieldmugshot
# 162 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route120_EventScript_StevenNotReady
# 163 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_StevenBattleKecleon
# 164 "data/maps/Route120/scripts.pory"
	end
# 165 "data/maps/Route120/scripts.pory"

# 166 "data/maps/Route120/scripts.pory"
Route120_EventScript_StevenNotReady::
# 167 "data/maps/Route120/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 168 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenIllWaitHere, MSGBOX_DEFAULT
# 169 "data/maps/Route120/scripts.pory"
	removefieldmugshot
# 170 "data/maps/Route120/scripts.pory"
	setflag FLAG_NOT_READY_FOR_BATTLE_ROUTE_120
# 171 "data/maps/Route120/scripts.pory"
	release
# 172 "data/maps/Route120/scripts.pory"
	end
# 173 "data/maps/Route120/scripts.pory"

# 174 "data/maps/Route120/scripts.pory"
Route120_EventScript_StevenAskReadyForBattle::
# 175 "data/maps/Route120/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 176 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenReadyForBattle, MSGBOX_YESNO
# 177 "data/maps/Route120/scripts.pory"
	removefieldmugshot
# 178 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route120_EventScript_StevenNotReady
# 179 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_StevenBattleKecleon
# 180 "data/maps/Route120/scripts.pory"
	end
# 181 "data/maps/Route120/scripts.pory"

# 182 "data/maps/Route120/scripts.pory"
Route120_EventScript_StevenBattleKecleon::
# 183 "data/maps/Route120/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 184 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenShowMeYourPower, MSGBOX_DEFAULT
# 185 "data/maps/Route120/scripts.pory"
	removefieldmugshot
# 186 "data/maps/Route120/scripts.pory"
	closemessage
# 187 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, Route120_EventScript_PlayerApproachKecleonNorth
# 188 "data/maps/Route120/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, Route120_EventScript_PlayerApproachKecleonWest
# 189 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_ROUTE120_STEVEN, Common_Movement_WalkInPlaceFasterLeft
# 190 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 191 "data/maps/Route120/scripts.pory"
	delay 20
# 192 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenUsedDevonScope, MSGBOX_DEFAULT
# 193 "data/maps/Route120/scripts.pory"
	closemessage
# 194 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_BRIDGE_KECLEON, Common_Movement_WalkInPlaceFasterRight
# 195 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 196 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_BRIDGE_KECLEON, Movement_KecleonAppears
# 197 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 198 "data/maps/Route120/scripts.pory"
	waitse
# 199 "data/maps/Route120/scripts.pory"
	playmoncry SPECIES_KECLEON, CRY_MODE_ENCOUNTER
# 200 "data/maps/Route120/scripts.pory"
	delay 40
# 201 "data/maps/Route120/scripts.pory"
	waitmoncry
# 202 "data/maps/Route120/scripts.pory"
	setwildbattle SPECIES_KECLEON, 30
# 203 "data/maps/Route120/scripts.pory"
	setvar VAR_0x8009, 0
# 204 "data/maps/Route120/scripts.pory"
	setflag FLAG_SYS_CTRL_OBJ_DELETE
# 205 "data/maps/Route120/scripts.pory"
	dowildbattle
# 206 "data/maps/Route120/scripts.pory"
	clearflag FLAG_SYS_CTRL_OBJ_DELETE
# 207 "data/maps/Route120/scripts.pory"
	specialvar VAR_RESULT, GetBattleOutcome
# 208 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_WON, Route120_EventScript_RemoveBridgeKecleonPostBattle
# 209 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_RAN, Route120_EventScript_RemoveBridgeKecleonPostBattle
# 210 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_PLAYER_TELEPORTED, Route120_EventScript_RemoveBridgeKecleonPostBattle
# 211 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_StevenGiveDeconScope
# 212 "data/maps/Route120/scripts.pory"
	end
# 213 "data/maps/Route120/scripts.pory"

# 214 "data/maps/Route120/scripts.pory"
Route120_EventScript_RemoveBridgeKecleonPostBattle::
# 215 "data/maps/Route120/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 216 "data/maps/Route120/scripts.pory"
	removeobject LOCALID_BRIDGE_KECLEON
# 217 "data/maps/Route120/scripts.pory"
	removeobject LOCALID_BRIDGE_KECLEON_SHADOW
# 218 "data/maps/Route120/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 219 "data/maps/Route120/scripts.pory"
	goto Route120_EventScript_StevenGiveDeconScope
# 220 "data/maps/Route120/scripts.pory"
	end
# 221 "data/maps/Route120/scripts.pory"

# 222 "data/maps/Route120/scripts.pory"
Route120_EventScript_StevenGiveDeconScope::
# 223 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_ROUTE120_STEVEN, Common_Movement_WalkInPlaceFasterDown
# 224 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 225 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 226 "data/maps/Route120/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 227 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenGiveDevonScope, MSGBOX_DEFAULT
# 228 "data/maps/Route120/scripts.pory"
	removefieldmugshot
# 229 "data/maps/Route120/scripts.pory"
	giveitem ITEM_DEVON_SCOPE
# 230 "data/maps/Route120/scripts.pory"
	setflag FLAG_RECEIVED_DEVON_SCOPE
# 231 "data/maps/Route120/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 232 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_StevenGoodbye, MSGBOX_DEFAULT
# 233 "data/maps/Route120/scripts.pory"
	removefieldmugshot
# 234 "data/maps/Route120/scripts.pory"
	closemessage
# 235 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_ROUTE120_STEVEN, Common_Movement_WalkInPlaceFasterDown
# 236 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 237 "data/maps/Route120/scripts.pory"
	delay 50
# 238 "data/maps/Route120/scripts.pory"
	setfieldeffectargument 0, 1
# 239 "data/maps/Route120/scripts.pory"
	dofieldeffect FLDEFF_NPCFLY_OUT
# 240 "data/maps/Route120/scripts.pory"
	delay 15
# 241 "data/maps/Route120/scripts.pory"
	removeobject LOCALID_ROUTE120_STEVEN
# 242 "data/maps/Route120/scripts.pory"
	waitfieldeffect FLDEFF_NPCFLY_OUT
# 243 "data/maps/Route120/scripts.pory"
	setmetatile 13, 15, METATILE_Fortree_WoodBridge1_Top, FALSE
# 244 "data/maps/Route120/scripts.pory"
	setmetatile 12, 16, METATILE_Fortree_WoodBridge1_Bottom, FALSE
# 245 "data/maps/Route120/scripts.pory"
	setmetatile 12, 17, METATILE_General_ReflectiveWater, FALSE
# 246 "data/maps/Route120/scripts.pory"
	setmetatile 13, 17, METATILE_General_ReflectiveWater, FALSE
# 247 "data/maps/Route120/scripts.pory"
	special DrawWholeMapView
# 248 "data/maps/Route120/scripts.pory"
	release
# 249 "data/maps/Route120/scripts.pory"
	end
# 250 "data/maps/Route120/scripts.pory"

# 251 "data/maps/Route120/scripts.pory"
Route120_EventScript_PlayerApproachKecleonNorth::
# 252 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 253 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 254 "data/maps/Route120/scripts.pory"
	return
# 255 "data/maps/Route120/scripts.pory"

# 256 "data/maps/Route120/scripts.pory"
Route120_EventScript_PlayerApproachKecleonWest::
# 257 "data/maps/Route120/scripts.pory"
	applymovement LOCALID_PLAYER, Route120_Movement_ApproachKecleonWest
# 258 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 259 "data/maps/Route120/scripts.pory"
	return
# 260 "data/maps/Route120/scripts.pory"

# 261 "data/maps/Route120/scripts.pory"
Route120_Movement_ApproachKecleonWest:
# 262 "data/maps/Route120/scripts.pory"
	walk_down
# 263 "data/maps/Route120/scripts.pory"
	walk_left
# 264 "data/maps/Route120/scripts.pory"
	step_end
# 265 "data/maps/Route120/scripts.pory"

# 266 "data/maps/Route120/scripts.pory"
Route120_EventScript_BridgeKecleon::
# 267 "data/maps/Route120/scripts.pory"
	msgbox Kecleon_Text_SomethingUnseeable, MSGBOX_NPC
# 268 "data/maps/Route120/scripts.pory"
	end
# 269 "data/maps/Route120/scripts.pory"

# 270 "data/maps/Route120/scripts.pory"
Route120_EventScript_RouteSignFortree::
# 271 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_RouteSignFortree, MSGBOX_SIGN
# 272 "data/maps/Route120/scripts.pory"
	end
# 273 "data/maps/Route120/scripts.pory"

# 274 "data/maps/Route120/scripts.pory"
Route120_EventScript_RouteSign121::
# 275 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_RouteSign121, MSGBOX_SIGN
# 276 "data/maps/Route120/scripts.pory"
	end
# 277 "data/maps/Route120/scripts.pory"

# 278 "data/maps/Route120/scripts.pory"
Route120_EventScript_Colin::
# 279 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_COLIN, Route120_Text_ColinIntro, Route120_Text_ColinDefeat
# 280 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_ColinPostBattle, MSGBOX_AUTOCLOSE
# 281 "data/maps/Route120/scripts.pory"
	end
# 282 "data/maps/Route120/scripts.pory"

# 283 "data/maps/Route120/scripts.pory"
Route120_EventScript_Robert::
# 284 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_ROBERT_1, Route120_Text_RobertIntro, Route120_Text_RobertDefeat, Route120_EventScript_RegisterRobert
# 285 "data/maps/Route120/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 286 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route120_EventScript_RematchRobert
# 287 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_RobertPostBattle, MSGBOX_DEFAULT
# 288 "data/maps/Route120/scripts.pory"
	release
# 289 "data/maps/Route120/scripts.pory"
	end
# 290 "data/maps/Route120/scripts.pory"

# 291 "data/maps/Route120/scripts.pory"
Route120_EventScript_RegisterRobert::
# 292 "data/maps/Route120/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 293 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 294 "data/maps/Route120/scripts.pory"
	@ PokéNav removed msgbox Route120_Text_RobertRegister, MSGBOX_DEFAULT
# 295 "data/maps/Route120/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_ROBERT_1
# 296 "data/maps/Route120/scripts.pory"
	release
# 297 "data/maps/Route120/scripts.pory"
	end
# 298 "data/maps/Route120/scripts.pory"

# 299 "data/maps/Route120/scripts.pory"
Route120_EventScript_RematchRobert::
# 300 "data/maps/Route120/scripts.pory"
	trainerbattle_rematch TRAINER_ROBERT_1, Route120_Text_RobertRematchIntro, Route120_Text_RobertRematchDefeat
# 301 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_RobertPostRematch, MSGBOX_AUTOCLOSE
# 302 "data/maps/Route120/scripts.pory"
	end
# 303 "data/maps/Route120/scripts.pory"

# 304 "data/maps/Route120/scripts.pory"
Route120_EventScript_Lorenzo::
# 305 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_LORENZO, Route120_Text_LorenzoIntro, Route120_Text_LorenzoDefeat
# 306 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_LorenzoPostBattle, MSGBOX_AUTOCLOSE
# 307 "data/maps/Route120/scripts.pory"
	end
# 308 "data/maps/Route120/scripts.pory"

# 309 "data/maps/Route120/scripts.pory"
Route120_EventScript_Jenna::
# 310 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_JENNA, Route120_Text_JennaIntro, Route120_Text_JennaDefeat
# 311 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_JennaPostBattle, MSGBOX_AUTOCLOSE
# 312 "data/maps/Route120/scripts.pory"
	end
# 313 "data/maps/Route120/scripts.pory"

# 314 "data/maps/Route120/scripts.pory"
Route120_EventScript_Jeffrey::
# 315 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_JEFFREY_1, Route120_Text_JeffreyIntro, Route120_Text_JeffreyDefeat, Route120_EventScript_RegisterJeffrey
# 316 "data/maps/Route120/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 317 "data/maps/Route120/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route120_EventScript_RematchJeffrey
# 318 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_JeffreyPostBattle, MSGBOX_DEFAULT
# 319 "data/maps/Route120/scripts.pory"
	release
# 320 "data/maps/Route120/scripts.pory"
	end
# 321 "data/maps/Route120/scripts.pory"

# 322 "data/maps/Route120/scripts.pory"
Route120_EventScript_RegisterJeffrey::
# 323 "data/maps/Route120/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 324 "data/maps/Route120/scripts.pory"
	waitmovement 0
# 325 "data/maps/Route120/scripts.pory"
	@ PokéNav removed msgbox Route120_Text_JeffreyRegister, MSGBOX_DEFAULT
# 326 "data/maps/Route120/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_JEFFREY_1
# 327 "data/maps/Route120/scripts.pory"
	release
# 328 "data/maps/Route120/scripts.pory"
	end
# 329 "data/maps/Route120/scripts.pory"

# 330 "data/maps/Route120/scripts.pory"
Route120_EventScript_RematchJeffrey::
# 331 "data/maps/Route120/scripts.pory"
	trainerbattle_rematch TRAINER_JEFFREY_1, Route120_Text_JeffreyRematchIntro, Route120_Text_JeffreyRematchDefeat
# 332 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_JeffreyPostRematch, MSGBOX_AUTOCLOSE
# 333 "data/maps/Route120/scripts.pory"
	end
# 334 "data/maps/Route120/scripts.pory"

# 335 "data/maps/Route120/scripts.pory"
Route120_EventScript_Jennifer::
# 336 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_JENNIFER, Route120_Text_JenniferIntro, Route120_Text_JenniferDefeat
# 337 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_JenniferPostBattle, MSGBOX_AUTOCLOSE
# 338 "data/maps/Route120/scripts.pory"
	end
# 339 "data/maps/Route120/scripts.pory"

# 340 "data/maps/Route120/scripts.pory"
Route120_EventScript_Chip::
# 341 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_CHIP, Route120_Text_ChipIntro, Route120_Text_ChipDefeat
# 342 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_ChipPostBattle, MSGBOX_AUTOCLOSE
# 343 "data/maps/Route120/scripts.pory"
	end
# 344 "data/maps/Route120/scripts.pory"

# 345 "data/maps/Route120/scripts.pory"
Route120_EventScript_Clarissa::
# 346 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_CLARISSA, Route120_Text_ClarissaIntro, Route120_Text_ClarissaDefeat
# 347 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_ClarissaPostBattle, MSGBOX_AUTOCLOSE
# 348 "data/maps/Route120/scripts.pory"
	end
# 349 "data/maps/Route120/scripts.pory"

# 350 "data/maps/Route120/scripts.pory"
Route120_EventScript_Angelica::
# 351 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_ANGELICA, Route120_Text_AngelicaIntro, Route120_Text_AngelicaDefeat
# 352 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_AngelicaPostBattle, MSGBOX_AUTOCLOSE
# 353 "data/maps/Route120/scripts.pory"
	end
# 354 "data/maps/Route120/scripts.pory"

# 355 "data/maps/Route120/scripts.pory"
Route120_EventScript_Keigo::
# 356 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_KEIGO, Route120_Text_KeigoIntro, Route120_Text_KeigoDefeat
# 357 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_KeigoPostBattle, MSGBOX_AUTOCLOSE
# 358 "data/maps/Route120/scripts.pory"
	end
# 359 "data/maps/Route120/scripts.pory"

# 360 "data/maps/Route120/scripts.pory"
Route120_EventScript_Riley::
# 361 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_RILEY, Route120_Text_RileyIntro, Route120_Text_RileyDefeat
# 362 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_RileyPostBattle, MSGBOX_AUTOCLOSE
# 363 "data/maps/Route120/scripts.pory"
	end
# 364 "data/maps/Route120/scripts.pory"

# 365 "data/maps/Route120/scripts.pory"
Route120_EventScript_Leonel::
# 366 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_LEONEL, Route120_Text_LeonelIntro, Route120_Text_LeonelDefeat
# 367 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_LeonelPostBattle, MSGBOX_AUTOCLOSE
# 368 "data/maps/Route120/scripts.pory"
	end
# 369 "data/maps/Route120/scripts.pory"

# 370 "data/maps/Route120/scripts.pory"
Route120_EventScript_Callie::
# 371 "data/maps/Route120/scripts.pory"
	trainerbattle_single TRAINER_CALLIE, Route120_Text_CallieIntro, Route120_Text_CallieDefeat
# 372 "data/maps/Route120/scripts.pory"
	msgbox Route120_Text_CalliePostBattle, MSGBOX_AUTOCLOSE
# 373 "data/maps/Route120/scripts.pory"
	end
# 374 "data/maps/Route120/scripts.pory"

# 375 "data/maps/Route120/scripts.pory"
Route120_Text_StevenGreeting:
# 376 "data/maps/Route120/scripts.pory"
	.string "STELLA: Hm? {PLAYER}{KUN}, hi.\n"
# 377 "data/maps/Route120/scripts.pory"
	.string "It's been a while.\p"
# 378 "data/maps/Route120/scripts.pory"
	.string "There's something here that you can't\n"
# 379 "data/maps/Route120/scripts.pory"
	.string "see, right?\p"
# 380 "data/maps/Route120/scripts.pory"
	.string "Now, if I were to use this device on\n"
# 381 "data/maps/Route120/scripts.pory"
	.string "the invisible obstacle…\p"
# 382 "data/maps/Route120/scripts.pory"
	.string "No, no. Rather than describing it,\n"
# 383 "data/maps/Route120/scripts.pory"
	.string "I should just show you.\l"
# 384 "data/maps/Route120/scripts.pory"
	.string "That would be more fun.\p"
# 385 "data/maps/Route120/scripts.pory"
	.string "{PLAYER}{KUN}, are your POKéMON ready for\n"
# 386 "data/maps/Route120/scripts.pory"
	.string "battle?$"
# 387 "data/maps/Route120/scripts.pory"

# 388 "data/maps/Route120/scripts.pory"
Route120_Text_StevenIllWaitHere:
# 389 "data/maps/Route120/scripts.pory"
	.string "STELLA: No?\p"
# 390 "data/maps/Route120/scripts.pory"
	.string "I'll wait here, so you can get ready.$"
# 391 "data/maps/Route120/scripts.pory"

# 392 "data/maps/Route120/scripts.pory"
Route120_Text_StevenReadyForBattle:
# 393 "data/maps/Route120/scripts.pory"
	.string "STELLA: {PLAYER}{KUN}, are your POKéMON\n"
# 394 "data/maps/Route120/scripts.pory"
	.string "ready for battle?$"
# 395 "data/maps/Route120/scripts.pory"

# 396 "data/maps/Route120/scripts.pory"
Route120_Text_StevenShowMeYourPower:
# 397 "data/maps/Route120/scripts.pory"
	.string "STELLA: {PLAYER}{KUN}, show me your true\n"
# 398 "data/maps/Route120/scripts.pory"
	.string "power as a TRAINER!$"
# 399 "data/maps/Route120/scripts.pory"

# 400 "data/maps/Route120/scripts.pory"
Route120_Text_StevenUsedDevonScope:
# 401 "data/maps/Route120/scripts.pory"
	.string "STEVEN used the DEVON SCOPE.\p"
# 402 "data/maps/Route120/scripts.pory"
	.string "An invisible POKéMON became completely\n"
# 403 "data/maps/Route120/scripts.pory"
	.string "visible!\p"
# 404 "data/maps/Route120/scripts.pory"
	.string "The startled POKéMON attacked!$"
# 405 "data/maps/Route120/scripts.pory"

# 406 "data/maps/Route120/scripts.pory"
Route120_Text_StevenGiveDevonScope:
# 407 "data/maps/Route120/scripts.pory"
	.string "STELLA: I see…\n"
# 408 "data/maps/Route120/scripts.pory"
	.string "Your battle style is intriguing.\p"
# 409 "data/maps/Route120/scripts.pory"
	.string "Your POKéMON have obviously grown\n"
# 410 "data/maps/Route120/scripts.pory"
	.string "since I first met you in DEWFORD.\p"
# 411 "data/maps/Route120/scripts.pory"
	.string "I'd like you to have this\n"
# 412 "data/maps/Route120/scripts.pory"
	.string "DEVON SCOPE.\p"
# 413 "data/maps/Route120/scripts.pory"
	.string "Who knows, there may be other\n"
# 414 "data/maps/Route120/scripts.pory"
	.string "concealed POKéMON.$"
# 415 "data/maps/Route120/scripts.pory"

# 416 "data/maps/Route120/scripts.pory"
Route120_Text_StevenGoodbye:
# 417 "data/maps/Route120/scripts.pory"
	.string "STELLA: {PLAYER}{KUN}.\p"
# 418 "data/maps/Route120/scripts.pory"
	.string "I enjoy seeing POKéMON and TRAINERS\n"
# 419 "data/maps/Route120/scripts.pory"
	.string "who strive together.\p"
# 420 "data/maps/Route120/scripts.pory"
	.string "I think you're doing great.\p"
# 421 "data/maps/Route120/scripts.pory"
	.string "Well, let's meet again somewhere.$"
# 422 "data/maps/Route120/scripts.pory"

# 423 "data/maps/Route120/scripts.pory"
Kecleon_Text_SomethingUnseeable:
# 424 "data/maps/Route120/scripts.pory"
	.string "Something unseeable is in the way.$"
# 425 "data/maps/Route120/scripts.pory"

# 426 "data/maps/Route120/scripts.pory"
Kecleon_Text_WantToUseDevonScope:
# 427 "data/maps/Route120/scripts.pory"
	.string "Something unseeable is in the way.\p"
# 428 "data/maps/Route120/scripts.pory"
	.string "Want to use the DEVON SCOPE?$"
# 429 "data/maps/Route120/scripts.pory"

# 430 "data/maps/Route120/scripts.pory"
Kecleon_Text_UseDevonScopeMonAttacked:
# 431 "data/maps/Route120/scripts.pory"
	.string "{PLAYER} used the DEVON SCOPE.\p"
# 432 "data/maps/Route120/scripts.pory"
	.string "An invisible POKéMON became completely\n"
# 433 "data/maps/Route120/scripts.pory"
	.string "visible!\p"
# 434 "data/maps/Route120/scripts.pory"
	.string "The startled POKéMON attacked!$"
# 435 "data/maps/Route120/scripts.pory"

# 436 "data/maps/Route120/scripts.pory"
Route120_Text_RouteSignFortree:
# 437 "data/maps/Route120/scripts.pory"
	.string "ROUTE 120\n"
# 438 "data/maps/Route120/scripts.pory"
	.string "{LEFT_ARROW} FORTREE CITY$"
# 439 "data/maps/Route120/scripts.pory"

# 440 "data/maps/Route120/scripts.pory"
Route120_Text_RouteSign121:
# 441 "data/maps/Route120/scripts.pory"
	.string "{RIGHT_ARROW} ROUTE 121\n"
# 442 "data/maps/Route120/scripts.pory"
	.string "{LEFT_ARROW} ROUTE 120$"
