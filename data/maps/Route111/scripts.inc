# 1 "data/maps/Route111/scripts.pory"

# 2 "data/maps/Route111/scripts.pory"
Route111_MapScripts::
# 3 "data/maps/Route111/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, Route111_OnLoad
# 4 "data/maps/Route111/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route111_OnTransition
# 5 "data/maps/Route111/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, Route111_OnWarp
# 6 "data/maps/Route111/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route111_OnFrame
# 7 "data/maps/Route111/scripts.pory"
	.byte 0
# 8 "data/maps/Route111/scripts.pory"

# 9 "data/maps/Route111/scripts.pory"
Route111_OnLoad:
# 10 "data/maps/Route111/scripts.pory"
	call_if_unset FLAG_REGI_DOORS_OPENED, Route111_EventScript_CloseDesertRuins
# 11 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_MIRAGE_TOWER_STATE, 1, Route111_EventScript_ShowTemporaryMirageTower
# 12 "data/maps/Route111/scripts.pory"
	end
# 13 "data/maps/Route111/scripts.pory"

# 14 "data/maps/Route111/scripts.pory"
Route111_EventScript_CloseDesertRuins::
# 15 "data/maps/Route111/scripts.pory"
	setmetatile 29, 86, METATILE_General_RockWall_RockBase, TRUE
# 16 "data/maps/Route111/scripts.pory"
	setmetatile 29, 87, METATILE_General_RockWall_SandBase, TRUE
# 17 "data/maps/Route111/scripts.pory"
	return
# 18 "data/maps/Route111/scripts.pory"

# 19 "data/maps/Route111/scripts.pory"
@ Show Mirage Tower just prior to disintegration. Mirage Tower is otherwise handled by the map layout
# 20 "data/maps/Route111/scripts.pory"
Route111_EventScript_ShowTemporaryMirageTower::
# 21 "data/maps/Route111/scripts.pory"
	setmetatile 18, 53, METATILE_Mauville_MirageTower_Tile0, FALSE
# 22 "data/maps/Route111/scripts.pory"
	setmetatile 19, 53, METATILE_Mauville_MirageTower_Tile1, FALSE
# 23 "data/maps/Route111/scripts.pory"
	setmetatile 20, 53, METATILE_Mauville_MirageTower_Tile2, FALSE
# 24 "data/maps/Route111/scripts.pory"
	setmetatile 18, 54, METATILE_Mauville_MirageTower_Tile3, FALSE
# 25 "data/maps/Route111/scripts.pory"
	setmetatile 19, 54, METATILE_Mauville_MirageTower_Tile4, FALSE
# 26 "data/maps/Route111/scripts.pory"
	setmetatile 20, 54, METATILE_Mauville_MirageTower_Tile5, FALSE
# 27 "data/maps/Route111/scripts.pory"
	setmetatile 18, 55, METATILE_Mauville_MirageTower_Tile6, FALSE
# 28 "data/maps/Route111/scripts.pory"
	setmetatile 19, 55, METATILE_Mauville_MirageTower_Tile7, FALSE
# 29 "data/maps/Route111/scripts.pory"
	setmetatile 20, 55, METATILE_Mauville_MirageTower_Tile8, FALSE
# 30 "data/maps/Route111/scripts.pory"
	setmetatile 18, 56, METATILE_Mauville_MirageTower_Tile9, FALSE
# 31 "data/maps/Route111/scripts.pory"
	setmetatile 19, 56, METATILE_Mauville_MirageTower_TileA, FALSE
# 32 "data/maps/Route111/scripts.pory"
	setmetatile 20, 56, METATILE_Mauville_MirageTower_TileB, FALSE
# 33 "data/maps/Route111/scripts.pory"
	setmetatile 18, 57, METATILE_Mauville_MirageTower_TileC, FALSE
# 34 "data/maps/Route111/scripts.pory"
	setmetatile 19, 57, METATILE_Mauville_MirageTower_TileD, FALSE
# 35 "data/maps/Route111/scripts.pory"
	setmetatile 20, 57, METATILE_Mauville_MirageTower_TileE, FALSE
# 36 "data/maps/Route111/scripts.pory"
	setmetatile 18, 58, METATILE_Mauville_MirageTower_TileF, FALSE
# 37 "data/maps/Route111/scripts.pory"
	setmetatile 19, 58, METATILE_Mauville_MirageTower_Tile10, FALSE
# 38 "data/maps/Route111/scripts.pory"
	setmetatile 20, 58, METATILE_Mauville_MirageTower_Tile11, FALSE
# 39 "data/maps/Route111/scripts.pory"
	return
# 40 "data/maps/Route111/scripts.pory"

# 41 "data/maps/Route111/scripts.pory"
Route111_OnTransition:
# 42 "data/maps/Route111/scripts.pory"
	setvar VAR_TRAINER_HILL_IS_ACTIVE, 0
# 43 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_MIRAGE_TOWER_STATE, 1, Route111_EventScript_SetFallingPlayerGfx
# 44 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_MIRAGE_TOWER_STATE, 2, Route111_EventScript_SetMirageTowerGone
# 45 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CheckSetSandstorm
# 46 "data/maps/Route111/scripts.pory"
	call GabbyAndTy_EventScript_UpdateLocation
# 47 "data/maps/Route111/scripts.pory"
	goto_if_not_defeated TRAINER_VICKY, Route111_EventScript_SetWinstratesNotDefeated
# 48 "data/maps/Route111/scripts.pory"
	end
# 49 "data/maps/Route111/scripts.pory"

# 50 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetFallingPlayerGfx::
# 51 "data/maps/Route111/scripts.pory"
	checkplayergender
# 52 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route111_EventScript_SetFallingPlayerGfxMale
# 53 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route111_EventScript_SetFallingPlayerGfxFemale
# 54 "data/maps/Route111/scripts.pory"
	return
# 55 "data/maps/Route111/scripts.pory"

# 56 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetFallingPlayerGfxMale::
# 57 "data/maps/Route111/scripts.pory"
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_BRENDAN_NORMAL
# 58 "data/maps/Route111/scripts.pory"
	return
# 59 "data/maps/Route111/scripts.pory"

# 60 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetFallingPlayerGfxFemale::
# 61 "data/maps/Route111/scripts.pory"
	setvar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_RIVAL_MAY_NORMAL
# 62 "data/maps/Route111/scripts.pory"
	return
# 63 "data/maps/Route111/scripts.pory"

# 64 "data/maps/Route111/scripts.pory"
Route111_EventScript_CheckSetSandstorm::
# 65 "data/maps/Route111/scripts.pory"
	getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 66 "data/maps/Route111/scripts.pory"
	goto_if_lt VAR_TEMP_1, 34, Route111_EventScript_EndCheckSetSandstorm
# 67 "data/maps/Route111/scripts.pory"
	goto_if_gt VAR_TEMP_1, 107, Route111_EventScript_EndCheckSetSandstorm
# 68 "data/maps/Route111/scripts.pory"
	goto_if_gt VAR_TEMP_1, 72, Route111_EventScript_SetSandstorm
# 69 "data/maps/Route111/scripts.pory"
	goto_if_gt VAR_TEMP_0, 2000, Route111_EventScript_EndCheckSetSandstorm
# 70 "data/maps/Route111/scripts.pory"
	goto_if_lt VAR_TEMP_0, 8, Route111_EventScript_EndCheckSetSandstorm
# 71 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetSandstorm::
# 72 "data/maps/Route111/scripts.pory"
	setweather WEATHER_SANDSTORM
# 73 "data/maps/Route111/scripts.pory"
Route111_EventScript_EndCheckSetSandstorm::
# 74 "data/maps/Route111/scripts.pory"
	return
# 75 "data/maps/Route111/scripts.pory"

# 76 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetWinstratesNotDefeated::
# 77 "data/maps/Route111/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_111_VICTOR_WINSTRATE
# 78 "data/maps/Route111/scripts.pory"
	setflag FLAG_HIDE_ROUTE_111_VICTORIA_WINSTRATE
# 79 "data/maps/Route111/scripts.pory"
	setflag FLAG_HIDE_ROUTE_111_VIVI_WINSTRATE
# 80 "data/maps/Route111/scripts.pory"
	setflag FLAG_HIDE_ROUTE_111_VICKY_WINSTRATE
# 81 "data/maps/Route111/scripts.pory"
	cleartrainerflag TRAINER_VICTOR
# 82 "data/maps/Route111/scripts.pory"
	cleartrainerflag TRAINER_VICTORIA
# 83 "data/maps/Route111/scripts.pory"
	cleartrainerflag TRAINER_VIVI
# 84 "data/maps/Route111/scripts.pory"
	end
# 85 "data/maps/Route111/scripts.pory"

# 86 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetLayoutNoMirageTower::
# 87 "data/maps/Route111/scripts.pory"
	setmaplayoutindex LAYOUT_ROUTE111_NO_MIRAGE_TOWER
# 88 "data/maps/Route111/scripts.pory"
	return
# 89 "data/maps/Route111/scripts.pory"

# 90 "data/maps/Route111/scripts.pory"
Route111_EventScript_SetMirageTowerGone::
# 91 "data/maps/Route111/scripts.pory"
	setvar VAR_MIRAGE_TOWER_STATE, 3
# 92 "data/maps/Route111/scripts.pory"
	return
# 93 "data/maps/Route111/scripts.pory"

# 94 "data/maps/Route111/scripts.pory"
Route111_OnWarp:
# 95 "data/maps/Route111/scripts.pory"
	map_script_2 VAR_MIRAGE_TOWER_STATE, 1, Route111_EventScript_HidePlayerForMirageTower
# 96 "data/maps/Route111/scripts.pory"
	.2byte 0
# 97 "data/maps/Route111/scripts.pory"

# 98 "data/maps/Route111/scripts.pory"
Route111_EventScript_HidePlayerForMirageTower::
# 99 "data/maps/Route111/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_LITTLEROOT_TOWN
# 100 "data/maps/Route111/scripts.pory"
	end
# 101 "data/maps/Route111/scripts.pory"

# 102 "data/maps/Route111/scripts.pory"
Route111_OnFrame:
# 103 "data/maps/Route111/scripts.pory"
	map_script_2 VAR_MIRAGE_TOWER_STATE, 1, Route111_EventScript_MirageTowerDisappear
# 104 "data/maps/Route111/scripts.pory"
	.2byte 0
# 105 "data/maps/Route111/scripts.pory"

# 106 "data/maps/Route111/scripts.pory"
Route111_EventScript_MirageTowerDisappear::
# 107 "data/maps/Route111/scripts.pory"
	lockall
# 108 "data/maps/Route111/scripts.pory"
	special StartMirageTowerShake
# 109 "data/maps/Route111/scripts.pory"
	waitstate
# 110 "data/maps/Route111/scripts.pory"
	delay 24
# 111 "data/maps/Route111/scripts.pory"
	playse SE_FALL
# 112 "data/maps/Route111/scripts.pory"
	addobject LOCALID_ROUTE111_PLAYER_FALLING
# 113 "data/maps/Route111/scripts.pory"
	special StartPlayerDescendMirageTower
# 114 "data/maps/Route111/scripts.pory"
	waitstate
# 115 "data/maps/Route111/scripts.pory"
	showobjectat LOCALID_PLAYER, MAP_LITTLEROOT_TOWN
# 116 "data/maps/Route111/scripts.pory"
	removeobject LOCALID_ROUTE111_PLAYER_FALLING
# 117 "data/maps/Route111/scripts.pory"
	delay 16
# 118 "data/maps/Route111/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 119 "data/maps/Route111/scripts.pory"
	delay 16
# 120 "data/maps/Route111/scripts.pory"
	special StartMirageTowerDisintegration
# 121 "data/maps/Route111/scripts.pory"
	waitstate
# 122 "data/maps/Route111/scripts.pory"
	special StartMirageTowerFossilFallAndSink
# 123 "data/maps/Route111/scripts.pory"
	waitstate
# 124 "data/maps/Route111/scripts.pory"
	setvar VAR_MIRAGE_TOWER_STATE, 2
# 125 "data/maps/Route111/scripts.pory"
	clearflag FLAG_HIDE_DESERT_UNDERPASS_FOSSIL
# 126 "data/maps/Route111/scripts.pory"
	goto_if_set FLAG_CHOSE_CLAW_FOSSIL, Route111_EventScript_RootFossilDisappeared
# 127 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_ClawFossilDisappeared, MSGBOX_DEFAULT
# 128 "data/maps/Route111/scripts.pory"
	releaseall
# 129 "data/maps/Route111/scripts.pory"
	end
# 130 "data/maps/Route111/scripts.pory"

# 131 "data/maps/Route111/scripts.pory"
Route111_EventScript_RootFossilDisappeared::
# 132 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_RootFossilDisappeared, MSGBOX_DEFAULT
# 133 "data/maps/Route111/scripts.pory"
	releaseall
# 134 "data/maps/Route111/scripts.pory"
	end
# 135 "data/maps/Route111/scripts.pory"

# 136 "data/maps/Route111/scripts.pory"
@ Unused
# 137 "data/maps/Route111/scripts.pory"
Route111_Movement_PlayerFall::
# 138 "data/maps/Route111/scripts.pory"
	lock_anim
# 139 "data/maps/Route111/scripts.pory"
	walk_fast_down
# 140 "data/maps/Route111/scripts.pory"
	walk_fast_down
# 141 "data/maps/Route111/scripts.pory"
	walk_fast_down
# 142 "data/maps/Route111/scripts.pory"
	walk_fast_down
# 143 "data/maps/Route111/scripts.pory"
	walk_fast_down
# 144 "data/maps/Route111/scripts.pory"
	walk_fast_down
# 145 "data/maps/Route111/scripts.pory"
	step_end
# 146 "data/maps/Route111/scripts.pory"

# 147 "data/maps/Route111/scripts.pory"
Route111_EventScript_Girl::
# 148 "data/maps/Route111/scripts.pory"
	lock
# 149 "data/maps/Route111/scripts.pory"
	faceplayer
# 150 "data/maps/Route111/scripts.pory"
	dotimebasedevents
# 151 "data/maps/Route111/scripts.pory"
	goto_if_set FLAG_DAILY_ROUTE_111_RECEIVED_BERRY, Route111_EventScript_ReceivedBerry
# 152 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WateredPlantsEveryDayTakeBerry, MSGBOX_DEFAULT
# 153 "data/maps/Route111/scripts.pory"
	giveitem ITEM_RAZZ_BERRY
# 154 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 155 "data/maps/Route111/scripts.pory"
	setflag FLAG_DAILY_ROUTE_111_RECEIVED_BERRY
# 156 "data/maps/Route111/scripts.pory"
	special GetPlayerBigGuyGirlString
# 157 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_GoingToTryToMakeDifferentColorBerries, MSGBOX_DEFAULT
# 158 "data/maps/Route111/scripts.pory"
	release
# 159 "data/maps/Route111/scripts.pory"
	end
# 160 "data/maps/Route111/scripts.pory"

# 161 "data/maps/Route111/scripts.pory"
Route111_EventScript_ReceivedBerry::
# 162 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WhatColorBerriesToLookForToday, MSGBOX_DEFAULT
# 163 "data/maps/Route111/scripts.pory"
	release
# 164 "data/maps/Route111/scripts.pory"
	end
# 165 "data/maps/Route111/scripts.pory"

# 166 "data/maps/Route111/scripts.pory"
@ Unused
# 167 "data/maps/Route111/scripts.pory"
Route111_EventScript_ViciousSandstormTriggerUp::
# 168 "data/maps/Route111/scripts.pory"
	lockall
# 169 "data/maps/Route111/scripts.pory"
	setvar VAR_0x8004, 0
# 170 "data/maps/Route111/scripts.pory"
	goto Route111_EventScript_ViciousSandstormTrigger
# 171 "data/maps/Route111/scripts.pory"
	end
# 172 "data/maps/Route111/scripts.pory"

# 173 "data/maps/Route111/scripts.pory"
Route111_EventScript_ViciousSandstormTriggerDown::
# 174 "data/maps/Route111/scripts.pory"
	lockall
# 175 "data/maps/Route111/scripts.pory"
	setvar VAR_0x8004, 1
# 176 "data/maps/Route111/scripts.pory"
	goto Route111_EventScript_ViciousSandstormTrigger
# 177 "data/maps/Route111/scripts.pory"
	end
# 178 "data/maps/Route111/scripts.pory"

# 179 "data/maps/Route111/scripts.pory"
Route111_EventScript_ViciousSandstormTriggerLeft::
# 180 "data/maps/Route111/scripts.pory"
	lockall
# 181 "data/maps/Route111/scripts.pory"
	setvar VAR_0x8004, 2
# 182 "data/maps/Route111/scripts.pory"
	goto Route111_EventScript_ViciousSandstormTrigger
# 183 "data/maps/Route111/scripts.pory"
	end
# 184 "data/maps/Route111/scripts.pory"

# 185 "data/maps/Route111/scripts.pory"
@ Unused
# 186 "data/maps/Route111/scripts.pory"
Route111_EventScript_ViciousSandstormTriggerRight::
# 187 "data/maps/Route111/scripts.pory"
	lockall
# 188 "data/maps/Route111/scripts.pory"
	setvar VAR_0x8004, 3
# 189 "data/maps/Route111/scripts.pory"
	goto Route111_EventScript_ViciousSandstormTrigger
# 190 "data/maps/Route111/scripts.pory"
	end
# 191 "data/maps/Route111/scripts.pory"

# 192 "data/maps/Route111/scripts.pory"
Route111_EventScript_ViciousSandstormTrigger::
# 193 "data/maps/Route111/scripts.pory"
	checkitem ITEM_GO_GOGGLES
# 194 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route111_EventScript_PreventRouteAccess
# 195 "data/maps/Route111/scripts.pory"
	setvar VAR_TEMP_3, 1
# 196 "data/maps/Route111/scripts.pory"
	releaseall
# 197 "data/maps/Route111/scripts.pory"
	end
# 198 "data/maps/Route111/scripts.pory"

# 199 "data/maps/Route111/scripts.pory"
Route111_EventScript_PreventRouteAccess::
# 200 "data/maps/Route111/scripts.pory"
	msgbox gText_SandstormIsVicious, MSGBOX_DEFAULT
# 201 "data/maps/Route111/scripts.pory"
	closemessage
# 202 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_0x8004, 0, Route111_EventScript_PushUpFromRoute
# 203 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_0x8004, 1, Route111_EventScript_PushDownFromRoute
# 204 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_0x8004, 2, Route111_EventScript_PushLeftFromRoute
# 205 "data/maps/Route111/scripts.pory"
	call_if_eq VAR_0x8004, 3, Route111_EventScript_PushRightFromRoute
# 206 "data/maps/Route111/scripts.pory"
	releaseall
# 207 "data/maps/Route111/scripts.pory"
	end
# 208 "data/maps/Route111/scripts.pory"

# 209 "data/maps/Route111/scripts.pory"
Route111_EventScript_PushUpFromRoute::
# 210 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_PushUpFromRoute
# 211 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 212 "data/maps/Route111/scripts.pory"
	return
# 213 "data/maps/Route111/scripts.pory"

# 214 "data/maps/Route111/scripts.pory"
Route111_EventScript_PushDownFromRoute::
# 215 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_PushDownFromRoute
# 216 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 217 "data/maps/Route111/scripts.pory"
	return
# 218 "data/maps/Route111/scripts.pory"

# 219 "data/maps/Route111/scripts.pory"
Route111_EventScript_PushLeftFromRoute::
# 220 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_PushLeftFromRoute
# 221 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 222 "data/maps/Route111/scripts.pory"
	return
# 223 "data/maps/Route111/scripts.pory"

# 224 "data/maps/Route111/scripts.pory"
Route111_EventScript_PushRightFromRoute::
# 225 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_PushRightFromRoute
# 226 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 227 "data/maps/Route111/scripts.pory"
	return
# 228 "data/maps/Route111/scripts.pory"

# 229 "data/maps/Route111/scripts.pory"
Route111_Movement_PushUpFromRoute:
# 230 "data/maps/Route111/scripts.pory"
	walk_up
# 231 "data/maps/Route111/scripts.pory"
	step_end
# 232 "data/maps/Route111/scripts.pory"

# 233 "data/maps/Route111/scripts.pory"
Route111_Movement_PushDownFromRoute:
# 234 "data/maps/Route111/scripts.pory"
	walk_down
# 235 "data/maps/Route111/scripts.pory"
	step_end
# 236 "data/maps/Route111/scripts.pory"

# 237 "data/maps/Route111/scripts.pory"
Route111_Movement_PushLeftFromRoute:
# 238 "data/maps/Route111/scripts.pory"
	walk_left
# 239 "data/maps/Route111/scripts.pory"
	step_end
# 240 "data/maps/Route111/scripts.pory"

# 241 "data/maps/Route111/scripts.pory"
Route111_Movement_PushRightFromRoute:
# 242 "data/maps/Route111/scripts.pory"
	walk_right
# 243 "data/maps/Route111/scripts.pory"
	step_end
# 244 "data/maps/Route111/scripts.pory"

# 245 "data/maps/Route111/scripts.pory"
Route111_EventScript_SunTrigger::
# 246 "data/maps/Route111/scripts.pory"
	setweather WEATHER_SUNNY
# 247 "data/maps/Route111/scripts.pory"
	fadenewbgm MUS_ROUTE110
# 248 "data/maps/Route111/scripts.pory"
	doweather
# 249 "data/maps/Route111/scripts.pory"
	setvar VAR_TEMP_3, 0
# 250 "data/maps/Route111/scripts.pory"
	end
# 251 "data/maps/Route111/scripts.pory"

# 252 "data/maps/Route111/scripts.pory"
Route111_EventScript_SandstormTrigger::
# 253 "data/maps/Route111/scripts.pory"
	setweather WEATHER_SANDSTORM
# 254 "data/maps/Route111/scripts.pory"
	fadenewbgm MUS_DESERT
# 255 "data/maps/Route111/scripts.pory"
	doweather
# 256 "data/maps/Route111/scripts.pory"
	end
# 257 "data/maps/Route111/scripts.pory"

# 258 "data/maps/Route111/scripts.pory"
Route111_EventScript_Victor::
# 259 "data/maps/Route111/scripts.pory"
	lock
# 260 "data/maps/Route111/scripts.pory"
	faceplayer
# 261 "data/maps/Route111/scripts.pory"
	setflag FLAG_LANDMARK_WINSTRATE_FAMILY
# 262 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BattleOurFamily, MSGBOX_YESNO
# 263 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, YES, Route111_EventScript_BattleWinstrates
# 264 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_IsThatSo, MSGBOX_DEFAULT
# 265 "data/maps/Route111/scripts.pory"
	release
# 266 "data/maps/Route111/scripts.pory"
	end
# 267 "data/maps/Route111/scripts.pory"

# 268 "data/maps/Route111/scripts.pory"
Route111_EventScript_BattleWinstrates::
# 269 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_VictorIntro, MSGBOX_DEFAULT
# 270 "data/maps/Route111/scripts.pory"
	trainerbattle_no_intro TRAINER_VICTOR, Route111_Text_VictorDefeat
# 271 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICTOR, Common_Movement_WalkInPlaceFasterUp
# 272 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 273 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 274 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_VictorPostBattle, MSGBOX_DEFAULT
# 275 "data/maps/Route111/scripts.pory"
	closemessage
# 276 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICTOR, Route111_Movement_WinstrateEnterHouse
# 277 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 278 "data/maps/Route111/scripts.pory"
	removeobject LOCALID_ROUTE111_VICTOR
# 279 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 280 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_WaitForNextWinstrate
# 281 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 282 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 283 "data/maps/Route111/scripts.pory"
	addobject LOCALID_ROUTE111_VICTORIA
# 284 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICTORIA, Route111_Movement_WinstrateExitHouse
# 285 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 286 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 287 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_VictoriaIntro, MSGBOX_DEFAULT
# 288 "data/maps/Route111/scripts.pory"
	trainerbattle_no_intro TRAINER_VICTORIA, Route111_Text_VictoriaDefeat
# 289 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICTORIA, Common_Movement_WalkInPlaceFasterUp
# 290 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 291 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 292 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_VictoriaPostBattle, MSGBOX_DEFAULT
# 293 "data/maps/Route111/scripts.pory"
	closemessage
# 294 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICTORIA, Route111_Movement_WinstrateEnterHouse
# 295 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 296 "data/maps/Route111/scripts.pory"
	removeobject LOCALID_ROUTE111_VICTORIA
# 297 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 298 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_WaitForNextWinstrate
# 299 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 300 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 301 "data/maps/Route111/scripts.pory"
	addobject LOCALID_ROUTE111_VIVI
# 302 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VIVI, Route111_Movement_WinstrateExitHouse
# 303 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 304 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 305 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_ViviIntro, MSGBOX_DEFAULT
# 306 "data/maps/Route111/scripts.pory"
	trainerbattle_no_intro TRAINER_VIVI, Route111_Text_ViviDefeat
# 307 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VIVI, Common_Movement_WalkInPlaceFasterUp
# 308 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 309 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 310 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_ViviPostBattle, MSGBOX_DEFAULT
# 311 "data/maps/Route111/scripts.pory"
	closemessage
# 312 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VIVI, Route111_Movement_WinstrateEnterHouse
# 313 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 314 "data/maps/Route111/scripts.pory"
	removeobject LOCALID_ROUTE111_VIVI
# 315 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 316 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_PLAYER, Route111_Movement_WaitForNextWinstrate
# 317 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 318 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 319 "data/maps/Route111/scripts.pory"
	addobject LOCALID_ROUTE111_VICKY
# 320 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICKY, Route111_Movement_WinstrateExitHouse
# 321 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 322 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 323 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_VickyIntro, MSGBOX_DEFAULT
# 324 "data/maps/Route111/scripts.pory"
	trainerbattle_no_intro TRAINER_VICKY, Route111_Text_VickyDefeat
# 325 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_VickyPostBattle, MSGBOX_DEFAULT
# 326 "data/maps/Route111/scripts.pory"
	closemessage
# 327 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICKY, Common_Movement_WalkInPlaceFasterUp
# 328 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 329 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_OpenWinstrateDoor
# 330 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_VICKY, Route111_Movement_WinstrateEnterHouse
# 331 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 332 "data/maps/Route111/scripts.pory"
	removeobject LOCALID_ROUTE111_VICKY
# 333 "data/maps/Route111/scripts.pory"
	call Route111_EventScript_CloseWinstrateDoor
# 334 "data/maps/Route111/scripts.pory"
	release
# 335 "data/maps/Route111/scripts.pory"
	end
# 336 "data/maps/Route111/scripts.pory"

# 337 "data/maps/Route111/scripts.pory"
Route111_EventScript_OpenWinstrateDoor::
# 338 "data/maps/Route111/scripts.pory"
	opendoor 13, 113
# 339 "data/maps/Route111/scripts.pory"
	waitdooranim
# 340 "data/maps/Route111/scripts.pory"
	return
# 341 "data/maps/Route111/scripts.pory"

# 342 "data/maps/Route111/scripts.pory"
Route111_EventScript_CloseWinstrateDoor::
# 343 "data/maps/Route111/scripts.pory"
	closedoor 13, 113
# 344 "data/maps/Route111/scripts.pory"
	waitdooranim
# 345 "data/maps/Route111/scripts.pory"
	return
# 346 "data/maps/Route111/scripts.pory"

# 347 "data/maps/Route111/scripts.pory"
Route111_Movement_WinstrateEnterHouse:
# 348 "data/maps/Route111/scripts.pory"
	walk_in_place_faster_up
# 349 "data/maps/Route111/scripts.pory"
	walk_up
# 350 "data/maps/Route111/scripts.pory"
	step_end
# 351 "data/maps/Route111/scripts.pory"

# 352 "data/maps/Route111/scripts.pory"
Route111_Movement_WinstrateExitHouse:
# 353 "data/maps/Route111/scripts.pory"
	walk_down
# 354 "data/maps/Route111/scripts.pory"
	step_end
# 355 "data/maps/Route111/scripts.pory"

# 356 "data/maps/Route111/scripts.pory"
Route111_Movement_WaitForNextWinstrate:
# 357 "data/maps/Route111/scripts.pory"
	delay_16
# 358 "data/maps/Route111/scripts.pory"
	delay_16
# 359 "data/maps/Route111/scripts.pory"
	delay_16
# 360 "data/maps/Route111/scripts.pory"
	step_end
# 361 "data/maps/Route111/scripts.pory"

# 362 "data/maps/Route111/scripts.pory"
Route111_EventScript_RouteSignMauville::
# 363 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_RouteSignMauville, MSGBOX_SIGN
# 364 "data/maps/Route111/scripts.pory"
	end
# 365 "data/maps/Route111/scripts.pory"

# 366 "data/maps/Route111/scripts.pory"
Route111_EventScript_WinstrateHouseSign::
# 367 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WinstrateHouseSign, MSGBOX_SIGN
# 368 "data/maps/Route111/scripts.pory"
	end
# 369 "data/maps/Route111/scripts.pory"

# 370 "data/maps/Route111/scripts.pory"
Route111_EventScript_RouteSign112::
# 371 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_RouteSign112, MSGBOX_SIGN
# 372 "data/maps/Route111/scripts.pory"
	end
# 373 "data/maps/Route111/scripts.pory"

# 374 "data/maps/Route111/scripts.pory"
Route111_EventScript_RouteSign113::
# 375 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_RouteSign113, MSGBOX_SIGN
# 376 "data/maps/Route111/scripts.pory"
	end
# 377 "data/maps/Route111/scripts.pory"

# 378 "data/maps/Route111/scripts.pory"
Route111_EventScript_OldLadysRestStopSign::
# 379 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_OldLadysRestStopSign, MSGBOX_SIGN
# 380 "data/maps/Route111/scripts.pory"
	end
# 381 "data/maps/Route111/scripts.pory"

# 382 "data/maps/Route111/scripts.pory"
Route111_EventScript_TrainerTipsSpAtkSpDef::
# 383 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_TrainerTipsSpAtkSpDef, MSGBOX_SIGN
# 384 "data/maps/Route111/scripts.pory"
	end
# 385 "data/maps/Route111/scripts.pory"

# 386 "data/maps/Route111/scripts.pory"
Route111_EventScript_Man1::
# 387 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_ToughToKeepWinningUpTheRanks, MSGBOX_NPC
# 388 "data/maps/Route111/scripts.pory"
	end
# 389 "data/maps/Route111/scripts.pory"

# 390 "data/maps/Route111/scripts.pory"
Route111_EventScript_Man2::
# 391 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WinstrateFamilyDestroyedMe, MSGBOX_NPC
# 392 "data/maps/Route111/scripts.pory"
	end
# 393 "data/maps/Route111/scripts.pory"

# 394 "data/maps/Route111/scripts.pory"
Route111_EventScript_Hiker::
# 395 "data/maps/Route111/scripts.pory"
	lock
# 396 "data/maps/Route111/scripts.pory"
	faceplayer
# 397 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_MIRAGE_TOWER_STATE, 3, Route111_EventScript_HikerMirageTowerGone
# 398 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_MIRAGE_TOWER_STATE, 2, Route111_EventScript_HikerMirageTowerDisintegrated
# 399 "data/maps/Route111/scripts.pory"
	goto_if_set FLAG_MIRAGE_TOWER_VISIBLE, Route111_EventScript_HikerMirageTowerVisible
# 400 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_ShouldBeMirageTowerAroundHere, MSGBOX_DEFAULT
# 401 "data/maps/Route111/scripts.pory"
	release
# 402 "data/maps/Route111/scripts.pory"
	end
# 403 "data/maps/Route111/scripts.pory"

# 404 "data/maps/Route111/scripts.pory"
Route111_EventScript_HikerMirageTowerGone::
# 405 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_MirageTowerHasntBeenSeenSince, MSGBOX_DEFAULT
# 406 "data/maps/Route111/scripts.pory"
	release
# 407 "data/maps/Route111/scripts.pory"
	end
# 408 "data/maps/Route111/scripts.pory"

# 409 "data/maps/Route111/scripts.pory"
Route111_EventScript_HikerMirageTowerDisintegrated::
# 410 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_ThatWasShockingSandRainedDown, MSGBOX_DEFAULT
# 411 "data/maps/Route111/scripts.pory"
	release
# 412 "data/maps/Route111/scripts.pory"
	end
# 413 "data/maps/Route111/scripts.pory"

# 414 "data/maps/Route111/scripts.pory"
Route111_EventScript_HikerMirageTowerVisible::
# 415 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_MirageTowerClearlyVisible, MSGBOX_DEFAULT
# 416 "data/maps/Route111/scripts.pory"
	release
# 417 "data/maps/Route111/scripts.pory"
	end
# 418 "data/maps/Route111/scripts.pory"

# 419 "data/maps/Route111/scripts.pory"
Route111_EventScript_RockSmashTipFatMan::
# 420 "data/maps/Route111/scripts.pory"
	lockall
# 421 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_ROCK_SMASH_MAN, Common_Movement_FacePlayer
# 422 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 423 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_MauvilleUncleToldMeToTakeRockSmash, MSGBOX_DEFAULT
# 424 "data/maps/Route111/scripts.pory"
	closemessage
# 425 "data/maps/Route111/scripts.pory"
	applymovement LOCALID_ROUTE111_ROCK_SMASH_MAN, Common_Movement_FaceOriginalDirection
# 426 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 427 "data/maps/Route111/scripts.pory"
	releaseall
# 428 "data/maps/Route111/scripts.pory"
	end
# 429 "data/maps/Route111/scripts.pory"

# 430 "data/maps/Route111/scripts.pory"
Route111_EventScript_Drew::
# 431 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_DREW, Route111_Text_DrewIntro, Route111_Text_DrewDefeat
# 432 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_DrewPostBattle, MSGBOX_AUTOCLOSE
# 433 "data/maps/Route111/scripts.pory"
	end
# 434 "data/maps/Route111/scripts.pory"

# 435 "data/maps/Route111/scripts.pory"
Route111_EventScript_Heidi::
# 436 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_HEIDI, Route111_Text_HeidiIntro, Route111_Text_HeidiDefeat
# 437 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_HeidiPostBattle, MSGBOX_AUTOCLOSE
# 438 "data/maps/Route111/scripts.pory"
	end
# 439 "data/maps/Route111/scripts.pory"

# 440 "data/maps/Route111/scripts.pory"
Route111_EventScript_Beau::
# 441 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_BEAU, Route111_Text_BeauIntro, Route111_Text_BeauDefeat
# 442 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BeauPostBattle, MSGBOX_AUTOCLOSE
# 443 "data/maps/Route111/scripts.pory"
	end
# 444 "data/maps/Route111/scripts.pory"

# 445 "data/maps/Route111/scripts.pory"
Route111_EventScript_Becky::
# 446 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_BECKY, Route111_Text_BeckyIntro, Route111_Text_BeckyDefeat
# 447 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BeckyPostBattle, MSGBOX_AUTOCLOSE
# 448 "data/maps/Route111/scripts.pory"
	end
# 449 "data/maps/Route111/scripts.pory"

# 450 "data/maps/Route111/scripts.pory"
Route111_EventScript_Dusty::
# 451 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_DUSTY_1, Route111_Text_DustyIntro, Route111_Text_DustyDefeat, Route111_EventScript_RegisterDusty
# 452 "data/maps/Route111/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 453 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route111_EventScript_RematchDusty
# 454 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_DustyPostBattle, MSGBOX_DEFAULT
# 455 "data/maps/Route111/scripts.pory"
	release
# 456 "data/maps/Route111/scripts.pory"
	end
# 457 "data/maps/Route111/scripts.pory"

# 458 "data/maps/Route111/scripts.pory"
Route111_EventScript_RegisterDusty::
# 459 "data/maps/Route111/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 460 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 461 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_DustyRegister, MSGBOX_DEFAULT
# 462 "data/maps/Route111/scripts.pory"
	register_matchcall TRAINER_DUSTY_1
# 463 "data/maps/Route111/scripts.pory"
	release
# 464 "data/maps/Route111/scripts.pory"
	end
# 465 "data/maps/Route111/scripts.pory"

# 466 "data/maps/Route111/scripts.pory"
Route111_EventScript_RematchDusty::
# 467 "data/maps/Route111/scripts.pory"
	trainerbattle_rematch TRAINER_DUSTY_1, Route111_Text_DustyRematchIntro, Route111_Text_DustyRematchDefeat
# 468 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_DustyPostRematch, MSGBOX_AUTOCLOSE
# 469 "data/maps/Route111/scripts.pory"
	end
# 470 "data/maps/Route111/scripts.pory"

# 471 "data/maps/Route111/scripts.pory"
Route111_EventScript_Travis::
# 472 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_TRAVIS, Route111_Text_TravisIntro, Route111_Text_TravisDefeat
# 473 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_TravisPostBattle, MSGBOX_AUTOCLOSE
# 474 "data/maps/Route111/scripts.pory"
	end
# 475 "data/maps/Route111/scripts.pory"

# 476 "data/maps/Route111/scripts.pory"
Route111_EventScript_Irene::
# 477 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_IRENE, Route111_Text_IreneIntro, Route111_Text_IreneDefeat
# 478 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_IrenePostBattle, MSGBOX_AUTOCLOSE
# 479 "data/maps/Route111/scripts.pory"
	end
# 480 "data/maps/Route111/scripts.pory"

# 481 "data/maps/Route111/scripts.pory"
Route111_EventScript_Daisuke::
# 482 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_DAISUKE, Route111_Text_DaisukeIntro, Route111_Text_DaisukeDefeat
# 483 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_DaisukePostBattle, MSGBOX_AUTOCLOSE
# 484 "data/maps/Route111/scripts.pory"
	end
# 485 "data/maps/Route111/scripts.pory"

# 486 "data/maps/Route111/scripts.pory"
Route111_EventScript_Wilton::
# 487 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_WILTON_1, Route111_Text_WiltonIntro, Route111_Text_WiltonDefeat, Route111_EventScript_RegisterWilton
# 488 "data/maps/Route111/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 489 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route111_EventScript_RematchWilton
# 490 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WiltonPostBattle, MSGBOX_DEFAULT
# 491 "data/maps/Route111/scripts.pory"
	release
# 492 "data/maps/Route111/scripts.pory"
	end
# 493 "data/maps/Route111/scripts.pory"

# 494 "data/maps/Route111/scripts.pory"
Route111_EventScript_RegisterWilton::
# 495 "data/maps/Route111/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 496 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 497 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WiltonRegister, MSGBOX_DEFAULT
# 498 "data/maps/Route111/scripts.pory"
	register_matchcall TRAINER_WILTON_1
# 499 "data/maps/Route111/scripts.pory"
	release
# 500 "data/maps/Route111/scripts.pory"
	end
# 501 "data/maps/Route111/scripts.pory"

# 502 "data/maps/Route111/scripts.pory"
Route111_EventScript_RematchWilton::
# 503 "data/maps/Route111/scripts.pory"
	trainerbattle_rematch TRAINER_WILTON_1, Route111_Text_WiltonRematchIntro, Route111_Text_WiltonRematchDefeat
# 504 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_WiltonPostRematch, MSGBOX_AUTOCLOSE
# 505 "data/maps/Route111/scripts.pory"
	end
# 506 "data/maps/Route111/scripts.pory"

# 507 "data/maps/Route111/scripts.pory"
Route111_EventScript_Brooke::
# 508 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_BROOKE_1, Route111_Text_BrookeIntro, Route111_Text_BrookeDefeat, Route111_EventScript_RegisterBrooke
# 509 "data/maps/Route111/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 510 "data/maps/Route111/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route111_EventScript_RematchBrooke
# 511 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BrookePostBattle, MSGBOX_DEFAULT
# 512 "data/maps/Route111/scripts.pory"
	release
# 513 "data/maps/Route111/scripts.pory"
	end
# 514 "data/maps/Route111/scripts.pory"

# 515 "data/maps/Route111/scripts.pory"
Route111_EventScript_RegisterBrooke::
# 516 "data/maps/Route111/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 517 "data/maps/Route111/scripts.pory"
	waitmovement 0
# 518 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BrookeRegister, MSGBOX_DEFAULT
# 519 "data/maps/Route111/scripts.pory"
	register_matchcall TRAINER_BROOKE_1
# 520 "data/maps/Route111/scripts.pory"
	release
# 521 "data/maps/Route111/scripts.pory"
	end
# 522 "data/maps/Route111/scripts.pory"

# 523 "data/maps/Route111/scripts.pory"
Route111_EventScript_RematchBrooke::
# 524 "data/maps/Route111/scripts.pory"
	trainerbattle_rematch TRAINER_BROOKE_1, Route111_Text_BrookeRematchIntro, Route111_Text_BrookeRematchDefeat
# 525 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BrookePostRematch, MSGBOX_AUTOCLOSE
# 526 "data/maps/Route111/scripts.pory"
	end
# 527 "data/maps/Route111/scripts.pory"

# 528 "data/maps/Route111/scripts.pory"
Route111_EventScript_Hayden::
# 529 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_HAYDEN, Route111_Text_HaydenIntro, Route111_Text_HaydenDefeat
# 530 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_HaydenPostBattle, MSGBOX_AUTOCLOSE
# 531 "data/maps/Route111/scripts.pory"
	end
# 532 "data/maps/Route111/scripts.pory"

# 533 "data/maps/Route111/scripts.pory"
Route111_EventScript_Bianca::
# 534 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_BIANCA, Route111_Text_BiancaIntro, Route111_Text_BiancaDefeat
# 535 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BiancaPostBattle, MSGBOX_AUTOCLOSE
# 536 "data/maps/Route111/scripts.pory"
	end
# 537 "data/maps/Route111/scripts.pory"

# 538 "data/maps/Route111/scripts.pory"
Route111_EventScript_Tyron::
# 539 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_TYRON, Route111_Text_TyronIntro, Route111_Text_TyronDefeat
# 540 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_TyronPostBattle, MSGBOX_AUTOCLOSE
# 541 "data/maps/Route111/scripts.pory"
	end
# 542 "data/maps/Route111/scripts.pory"

# 543 "data/maps/Route111/scripts.pory"
Route111_EventScript_Celina::
# 544 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_CELINA, Route111_Text_CelinaIntro, Route111_Text_CelinaDefeat
# 545 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_CelinaPostBattle, MSGBOX_AUTOCLOSE
# 546 "data/maps/Route111/scripts.pory"
	end
# 547 "data/maps/Route111/scripts.pory"

# 548 "data/maps/Route111/scripts.pory"
Route111_EventScript_Celia::
# 549 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_CELIA, Route111_Text_CeliaIntro, Route111_Text_CeliaDefeat
# 550 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_CeliaPostBattle, MSGBOX_AUTOCLOSE
# 551 "data/maps/Route111/scripts.pory"
	end
# 552 "data/maps/Route111/scripts.pory"

# 553 "data/maps/Route111/scripts.pory"
Route111_EventScript_Bryan::
# 554 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_BRYAN, Route111_Text_BryanIntro, Route111_Text_BryanDefeat
# 555 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BryanPostBattle, MSGBOX_AUTOCLOSE
# 556 "data/maps/Route111/scripts.pory"
	end
# 557 "data/maps/Route111/scripts.pory"

# 558 "data/maps/Route111/scripts.pory"
Route111_EventScript_Branden::
# 559 "data/maps/Route111/scripts.pory"
	trainerbattle_single TRAINER_BRANDEN, Route111_Text_BrandenIntro, Route111_Text_BrandenDefeat
# 560 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_BrandenPostBattle, MSGBOX_AUTOCLOSE
# 561 "data/maps/Route111/scripts.pory"
	end
# 562 "data/maps/Route111/scripts.pory"

# 563 "data/maps/Route111/scripts.pory"
Route111_EventScript_TrainerHillSign::
# 564 "data/maps/Route111/scripts.pory"
	msgbox Route111_Text_TrainerHillSign, MSGBOX_SIGN
# 565 "data/maps/Route111/scripts.pory"
	end
# 566 "data/maps/Route111/scripts.pory"

# 567 "data/maps/Route111/scripts.pory"
Route111_Text_BattleOurFamily:
# 568 "data/maps/Route111/scripts.pory"
	.string "Hello! I take it you're a traveler.\p"
# 569 "data/maps/Route111/scripts.pory"
	.string "How's this? What do you say to taking\n"
# 570 "data/maps/Route111/scripts.pory"
	.string "on our family of four in a series of\l"
# 571 "data/maps/Route111/scripts.pory"
	.string "POKéMON battles?$"
# 572 "data/maps/Route111/scripts.pory"

# 573 "data/maps/Route111/scripts.pory"
Route111_Text_IsThatSo:
# 574 "data/maps/Route111/scripts.pory"
	.string "Is that so?\n"
# 575 "data/maps/Route111/scripts.pory"
	.string "Drop in, if you change your mind!$"
# 576 "data/maps/Route111/scripts.pory"

# 577 "data/maps/Route111/scripts.pory"
Route111_Text_VictorIntro:
# 578 "data/maps/Route111/scripts.pory"
	.string "That's the spirit! I like you!$"
# 579 "data/maps/Route111/scripts.pory"

# 580 "data/maps/Route111/scripts.pory"
Route111_Text_VictorDefeat:
# 581 "data/maps/Route111/scripts.pory"
	.string "Aiyah!\n"
# 582 "data/maps/Route111/scripts.pory"
	.string "You're a lot tougher than I expected!$"
# 583 "data/maps/Route111/scripts.pory"

# 584 "data/maps/Route111/scripts.pory"
Route111_Text_VictorPostBattle:
# 585 "data/maps/Route111/scripts.pory"
	.string "Hey, all!\n"
# 586 "data/maps/Route111/scripts.pory"
	.string "I've found a pretty strong TRAINER!$"
# 587 "data/maps/Route111/scripts.pory"

# 588 "data/maps/Route111/scripts.pory"
Route111_Text_VictoriaIntro:
# 589 "data/maps/Route111/scripts.pory"
	.string "Oh, my goodness! Aren't you young?\p"
# 590 "data/maps/Route111/scripts.pory"
	.string "You must be quite the TRAINER to beat\n"
# 591 "data/maps/Route111/scripts.pory"
	.string "my husband, though.\p"
# 592 "data/maps/Route111/scripts.pory"
	.string "It's my turn to battle now!$"
# 593 "data/maps/Route111/scripts.pory"

# 594 "data/maps/Route111/scripts.pory"
Route111_Text_VictoriaDefeat:
# 595 "data/maps/Route111/scripts.pory"
	.string "Oh, gosh!\n"
# 596 "data/maps/Route111/scripts.pory"
	.string "I can't get over how strong you are!$"
# 597 "data/maps/Route111/scripts.pory"

# 598 "data/maps/Route111/scripts.pory"
Route111_Text_VictoriaPostBattle:
# 599 "data/maps/Route111/scripts.pory"
	.string "There's a strong TRAINER here!\n"
# 600 "data/maps/Route111/scripts.pory"
	.string "This one's really strong!$"
# 601 "data/maps/Route111/scripts.pory"

# 602 "data/maps/Route111/scripts.pory"
Route111_Text_ViviIntro:
# 603 "data/maps/Route111/scripts.pory"
	.string "You're stronger than Mommy? Wow!\p"
# 604 "data/maps/Route111/scripts.pory"
	.string "But I'm strong, too!\n"
# 605 "data/maps/Route111/scripts.pory"
	.string "Really! Honestly!$"
# 606 "data/maps/Route111/scripts.pory"

# 607 "data/maps/Route111/scripts.pory"
Route111_Text_ViviDefeat:
# 608 "data/maps/Route111/scripts.pory"
	.string "Huh? Did I just lose?$"
# 609 "data/maps/Route111/scripts.pory"

# 610 "data/maps/Route111/scripts.pory"
Route111_Text_ViviPostBattle:
# 611 "data/maps/Route111/scripts.pory"
	.string "This stinks…\p"
# 612 "data/maps/Route111/scripts.pory"
	.string "…Snivel… Grandma!$"
# 613 "data/maps/Route111/scripts.pory"

# 614 "data/maps/Route111/scripts.pory"
Route111_Text_VickyIntro:
# 615 "data/maps/Route111/scripts.pory"
	.string "How dare you make my granddaughter\n"
# 616 "data/maps/Route111/scripts.pory"
	.string "cry!\p"
# 617 "data/maps/Route111/scripts.pory"
	.string "For that, I'm going to smack you!\n"
# 618 "data/maps/Route111/scripts.pory"
	.string "Prepare to lose!$"
# 619 "data/maps/Route111/scripts.pory"

# 620 "data/maps/Route111/scripts.pory"
Route111_Text_VickyDefeat:
# 621 "data/maps/Route111/scripts.pory"
	.string "Kwah! You are strong…\n"
# 622 "data/maps/Route111/scripts.pory"
	.string "My granddaughter was right…$"
# 623 "data/maps/Route111/scripts.pory"

# 624 "data/maps/Route111/scripts.pory"
Route111_Text_VickyPostBattle:
# 625 "data/maps/Route111/scripts.pory"
	.string "If you're not in any hurry,\n"
# 626 "data/maps/Route111/scripts.pory"
	.string "visit with us awhile.$"
# 627 "data/maps/Route111/scripts.pory"

# 628 "data/maps/Route111/scripts.pory"
Route111_Text_ToughToKeepWinningUpTheRanks:
# 629 "data/maps/Route111/scripts.pory"
	.string "If you don't raise your POKéMON some\n"
# 630 "data/maps/Route111/scripts.pory"
	.string "more, it could be tough to keep winning\l"
# 631 "data/maps/Route111/scripts.pory"
	.string "up through the ranks.\p"
# 632 "data/maps/Route111/scripts.pory"
	.string "I've heard the POKéMON LEAGUE's\n"
# 633 "data/maps/Route111/scripts.pory"
	.string "ELITE FOUR are far stronger than\l"
# 634 "data/maps/Route111/scripts.pory"
	.string "any GYM LEADER.$"
# 635 "data/maps/Route111/scripts.pory"

# 636 "data/maps/Route111/scripts.pory"
Route111_Text_WinstrateFamilyDestroyedMe:
# 637 "data/maps/Route111/scripts.pory"
	.string "I challenged the WINSTRATE family,\n"
# 638 "data/maps/Route111/scripts.pory"
	.string "but four matches in a row is tough\l"
# 639 "data/maps/Route111/scripts.pory"
	.string "going… They destroyed me.$"
# 640 "data/maps/Route111/scripts.pory"

# 641 "data/maps/Route111/scripts.pory"
Route111_Text_RouteSignMauville:
# 642 "data/maps/Route111/scripts.pory"
	.string "ROUTE 111\n"
# 643 "data/maps/Route111/scripts.pory"
	.string "{DOWN_ARROW} MAUVILLE CITY$"
# 644 "data/maps/Route111/scripts.pory"

# 645 "data/maps/Route111/scripts.pory"
Route111_Text_WinstrateHouseSign:
# 646 "data/maps/Route111/scripts.pory"
	.string "“Our family's hearts beat as one!”\n"
# 647 "data/maps/Route111/scripts.pory"
	.string "THE WINSTRATE'S HOUSE$"
# 648 "data/maps/Route111/scripts.pory"

# 649 "data/maps/Route111/scripts.pory"
Route111_Text_RouteSign112:
# 650 "data/maps/Route111/scripts.pory"
	.string "ROUTE 111\n"
# 651 "data/maps/Route111/scripts.pory"
	.string "{LEFT_ARROW} ROUTE 112$"
# 652 "data/maps/Route111/scripts.pory"

# 653 "data/maps/Route111/scripts.pory"
Route111_Text_RouteSign113:
# 654 "data/maps/Route111/scripts.pory"
	.string "ROUTE 111\n"
# 655 "data/maps/Route111/scripts.pory"
	.string "{LEFT_ARROW} ROUTE 113$"
# 656 "data/maps/Route111/scripts.pory"

# 657 "data/maps/Route111/scripts.pory"
Route111_Text_OldLadysRestStopSign:
# 658 "data/maps/Route111/scripts.pory"
	.string "OLD LADY'S REST STOP\n"
# 659 "data/maps/Route111/scripts.pory"
	.string "“Come in and rest your tired bones.”$"
# 660 "data/maps/Route111/scripts.pory"

# 661 "data/maps/Route111/scripts.pory"
Route111_Text_TrainerTipsSpAtkSpDef:
# 662 "data/maps/Route111/scripts.pory"
	.string "TRAINER TIPS\p"
# 663 "data/maps/Route111/scripts.pory"
	.string "One of the indicators of a POKéMON's\n"
# 664 "data/maps/Route111/scripts.pory"
	.string "powerfulness is SP. ATK. It stands for\l"
# 665 "data/maps/Route111/scripts.pory"
	.string "“SPECIAL ATTACK.”\p"
# 666 "data/maps/Route111/scripts.pory"
	.string "Likewise, SP. DEF stands for “SPECIAL\n"
# 667 "data/maps/Route111/scripts.pory"
	.string "DEFENSE.”$"
# 668 "data/maps/Route111/scripts.pory"

# 669 "data/maps/Route111/scripts.pory"
Route111_Text_ShouldBeMirageTowerAroundHere:
# 670 "data/maps/Route111/scripts.pory"
	.string "There should be a tower made of sand\n"
# 671 "data/maps/Route111/scripts.pory"
	.string "around here somewhere.\p"
# 672 "data/maps/Route111/scripts.pory"
	.string "But for some reason, it can be seen\n"
# 673 "data/maps/Route111/scripts.pory"
	.string "sometimes, and sometimes not.\p"
# 674 "data/maps/Route111/scripts.pory"
	.string "That's why I call it the MIRAGE TOWER.$"
# 675 "data/maps/Route111/scripts.pory"

# 676 "data/maps/Route111/scripts.pory"
Route111_Text_MirageTowerClearlyVisible:
# 677 "data/maps/Route111/scripts.pory"
	.string "I see it!\n"
# 678 "data/maps/Route111/scripts.pory"
	.string "The tower of sand!\p"
# 679 "data/maps/Route111/scripts.pory"
	.string "The sand tower they called a mirage\n"
# 680 "data/maps/Route111/scripts.pory"
	.string "is clearly visible!\p"
# 681 "data/maps/Route111/scripts.pory"
	.string "But it looks so fragile…\n"
# 682 "data/maps/Route111/scripts.pory"
	.string "It could crumble away anytime…\p"
# 683 "data/maps/Route111/scripts.pory"
	.string "I want to go inside it, but I can't\n"
# 684 "data/maps/Route111/scripts.pory"
	.string "get my courage up for it…$"
# 685 "data/maps/Route111/scripts.pory"

# 686 "data/maps/Route111/scripts.pory"
Route111_Text_ThatWasShockingSandRainedDown:
# 687 "data/maps/Route111/scripts.pory"
	.string "Whoa…\n"
# 688 "data/maps/Route111/scripts.pory"
	.string "That was shocking.\p"
# 689 "data/maps/Route111/scripts.pory"
	.string "Sand rained down in chunks all of\n"
# 690 "data/maps/Route111/scripts.pory"
	.string "a sudden.\p"
# 691 "data/maps/Route111/scripts.pory"
	.string "What was it like inside?\n"
# 692 "data/maps/Route111/scripts.pory"
	.string "Were there sandy ghosts and such?$"
# 693 "data/maps/Route111/scripts.pory"

# 694 "data/maps/Route111/scripts.pory"
Route111_Text_MirageTowerHasntBeenSeenSince:
# 695 "data/maps/Route111/scripts.pory"
	.string "Since I spoke to you, the tower of sand\n"
# 696 "data/maps/Route111/scripts.pory"
	.string "hasn't been seen.\p"
# 697 "data/maps/Route111/scripts.pory"
	.string "Perhaps it really was\n"
# 698 "data/maps/Route111/scripts.pory"
	.string "the MIRAGE TOWER…$"
# 699 "data/maps/Route111/scripts.pory"

# 700 "data/maps/Route111/scripts.pory"
Route111_Text_ClawFossilDisappeared:
# 701 "data/maps/Route111/scripts.pory"
	.string "The CLAW FOSSIL disappeared into\n"
# 702 "data/maps/Route111/scripts.pory"
	.string "the sand…$"
# 703 "data/maps/Route111/scripts.pory"

# 704 "data/maps/Route111/scripts.pory"
Route111_Text_RootFossilDisappeared:
# 705 "data/maps/Route111/scripts.pory"
	.string "The ROOT FOSSIL disappeared into\n"
# 706 "data/maps/Route111/scripts.pory"
	.string "the sand…$"
# 707 "data/maps/Route111/scripts.pory"

# 708 "data/maps/Route111/scripts.pory"
Route111_Text_MauvilleUncleToldMeToTakeRockSmash:
# 709 "data/maps/Route111/scripts.pory"
	.string "Oh, no!\p"
# 710 "data/maps/Route111/scripts.pory"
	.string "My uncle in MAUVILLE told me to take\n"
# 711 "data/maps/Route111/scripts.pory"
	.string "ROCK SMASH with me if I was going to\l"
# 712 "data/maps/Route111/scripts.pory"
	.string "ROUTE 111!\p"
# 713 "data/maps/Route111/scripts.pory"
	.string "My uncle? He lives across from\n"
# 714 "data/maps/Route111/scripts.pory"
	.string "the bike shop in MAUVILLE.$"
# 715 "data/maps/Route111/scripts.pory"

# 716 "data/maps/Route111/scripts.pory"
Route111_Text_TrainerHillSign:
# 717 "data/maps/Route111/scripts.pory"
	.string "{RIGHT_ARROW} TRAINER HILL ENTRANCE\p"
# 718 "data/maps/Route111/scripts.pory"
	.string "“Scale the heights, you hot-blooded\n"
# 719 "data/maps/Route111/scripts.pory"
	.string "TRAINERS!”$"
