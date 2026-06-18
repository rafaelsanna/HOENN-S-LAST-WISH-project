# 1 "data/maps/Route101/scripts.pory"

# 2 "data/maps/Route101/scripts.pory"
Route101_MapScripts::
# 3 "data/maps/Route101/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route101_OnTransition
# 4 "data/maps/Route101/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route101_OnFrame
# 5 "data/maps/Route101/scripts.pory"
	.byte 0
# 6 "data/maps/Route101/scripts.pory"

# 7 "data/maps/Route101/scripts.pory"
Route101_OnTransition:
# 8 "data/maps/Route101/scripts.pory"
	call ProfAcacia_EventScript_UpdateLocation
# 9 "data/maps/Route101/scripts.pory"
	end
# 10 "data/maps/Route101/scripts.pory"

# 11 "data/maps/Route101/scripts.pory"
Route101_OnFrame:
# 12 "data/maps/Route101/scripts.pory"
	map_script_2 VAR_ROUTE101_STATE, 0, Route101_EventScript_HideMapNamePopup
# 13 "data/maps/Route101/scripts.pory"
	.2byte 0
# 14 "data/maps/Route101/scripts.pory"

# 15 "data/maps/Route101/scripts.pory"
Route101_EventScript_HideMapNamePopup::
# 16 "data/maps/Route101/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 17 "data/maps/Route101/scripts.pory"
	setvar VAR_ROUTE101_STATE, 1
# 18 "data/maps/Route101/scripts.pory"
	end
# 19 "data/maps/Route101/scripts.pory"

# 20 "data/maps/Route101/scripts.pory"
Route101_EventScript_StartAcaciaRescue::
# 21 "data/maps/Route101/scripts.pory"
	lockall
# 22 "data/maps/Route101/scripts.pory"
	playbgm MUS_HELP, TRUE
# 23 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_HelpMe, MSGBOX_DEFAULT
# 24 "data/maps/Route101/scripts.pory"
	closemessage
# 25 "data/maps/Route101/scripts.pory"
	setobjectxy LOCALID_ROUTE101_ACACIA, 0, 15
# 26 "data/maps/Route101/scripts.pory"
	setobjectxy LOCALID_ROUTE101_ZIGZAGOON, 0, 16
# 27 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_PLAYER, Route101_Movement_EnterScene
# 28 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ACACIA, Route101_Movement_AcaciaRunAway1
# 29 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ZIGZAGOON, Route101_Movement_ZigzagoonChase1
# 30 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 31 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ZIGZAGOON, Route101_Movement_ZigzagoonChaseInCircles
# 32 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ACACIA, Route101_Movement_AcaciaRunInCircles
# 33 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 34 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ACACIA, Common_Movement_WalkInPlaceFasterRight
# 35 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 36 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ZIGZAGOON, Route101_Movement_ZigzagoonFaceAcacia
# 37 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ACACIA, Route101_Movement_AcaciaFaceZigzagoon
# 38 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 39 "data/maps/Route101/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL 
# 40 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_PleaseHelp, MSGBOX_DEFAULT
# 41 "data/maps/Route101/scripts.pory"
	removefieldmugshot
# 42 "data/maps/Route101/scripts.pory"
	closemessage
# 43 "data/maps/Route101/scripts.pory"
	setvar VAR_ROUTE101_STATE, 2
# 44 "data/maps/Route101/scripts.pory"
	releaseall
# 45 "data/maps/Route101/scripts.pory"
	end
# 46 "data/maps/Route101/scripts.pory"

# 47 "data/maps/Route101/scripts.pory"
Route101_EventScript_PreventExitSouth::
# 48 "data/maps/Route101/scripts.pory"
	lockall
# 49 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_DontLeaveMe, MSGBOX_DEFAULT
# 50 "data/maps/Route101/scripts.pory"
	closemessage
# 51 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_PLAYER, Route101_Movement_PreventExitSouth
# 52 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 53 "data/maps/Route101/scripts.pory"
	releaseall
# 54 "data/maps/Route101/scripts.pory"
	end
# 55 "data/maps/Route101/scripts.pory"

# 56 "data/maps/Route101/scripts.pory"
Route101_EventScript_PreventExitWest::
# 57 "data/maps/Route101/scripts.pory"
	lockall
# 58 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_DontLeaveMe, MSGBOX_DEFAULT
# 59 "data/maps/Route101/scripts.pory"
	closemessage
# 60 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_PLAYER, Route101_Movement_PreventExitWest
# 61 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 62 "data/maps/Route101/scripts.pory"
	releaseall
# 63 "data/maps/Route101/scripts.pory"
	end
# 64 "data/maps/Route101/scripts.pory"

# 65 "data/maps/Route101/scripts.pory"
Route101_EventScript_PreventExitNorth::
# 66 "data/maps/Route101/scripts.pory"
	lockall
# 67 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_DontLeaveMe, MSGBOX_DEFAULT
# 68 "data/maps/Route101/scripts.pory"
	closemessage
# 69 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_PLAYER, Route101_Movement_PreventExitNorth
# 70 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 71 "data/maps/Route101/scripts.pory"
	releaseall
# 72 "data/maps/Route101/scripts.pory"
	end
# 73 "data/maps/Route101/scripts.pory"

# 74 "data/maps/Route101/scripts.pory"
Route101_Movement_PreventExitSouth:
# 75 "data/maps/Route101/scripts.pory"
	walk_up
# 76 "data/maps/Route101/scripts.pory"
	step_end
# 77 "data/maps/Route101/scripts.pory"

# 78 "data/maps/Route101/scripts.pory"
Route101_Movement_PreventExitWest:
# 79 "data/maps/Route101/scripts.pory"
	walk_right
# 80 "data/maps/Route101/scripts.pory"
	step_end
# 81 "data/maps/Route101/scripts.pory"

# 82 "data/maps/Route101/scripts.pory"
Route101_Movement_PreventExitNorth:
# 83 "data/maps/Route101/scripts.pory"
	walk_down
# 84 "data/maps/Route101/scripts.pory"
	step_end
# 85 "data/maps/Route101/scripts.pory"

# 86 "data/maps/Route101/scripts.pory"
Route101_Movement_ZigzagoonChaseInCircles:
# 87 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 88 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 89 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 90 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 91 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 92 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 93 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 94 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 95 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 96 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 97 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 98 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 99 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 100 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 101 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 102 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 103 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 104 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 105 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 106 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 107 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 108 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 109 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 110 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 111 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 112 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 113 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 114 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 115 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 116 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 117 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 118 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 119 "data/maps/Route101/scripts.pory"
	step_end
# 120 "data/maps/Route101/scripts.pory"

# 121 "data/maps/Route101/scripts.pory"
Route101_Movement_ZigzagoonChase1:
# 122 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 123 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 124 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 125 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 126 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 127 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 128 "data/maps/Route101/scripts.pory"
	step_end
# 129 "data/maps/Route101/scripts.pory"

# 130 "data/maps/Route101/scripts.pory"
@ Leftover data? This command is unused.
# 131 "data/maps/Route101/scripts.pory"
	step_end
# 132 "data/maps/Route101/scripts.pory"

# 133 "data/maps/Route101/scripts.pory"
Route101_Movement_ZigzagoonFaceAcacia:
# 134 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_left
# 135 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_left
# 136 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_left
# 137 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_left
# 138 "data/maps/Route101/scripts.pory"
	step_end
# 139 "data/maps/Route101/scripts.pory"

# 140 "data/maps/Route101/scripts.pory"
Route101_Movement_EnterScene:
# 141 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 142 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 143 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 144 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 145 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 146 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 147 "data/maps/Route101/scripts.pory"
	walk_in_place_faster_left
# 148 "data/maps/Route101/scripts.pory"
	step_end
# 149 "data/maps/Route101/scripts.pory"

# 150 "data/maps/Route101/scripts.pory"
Route101_Movement_AcaciaRunInCircles:
# 151 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 152 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 153 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 154 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 155 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 156 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 157 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 158 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 159 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 160 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 161 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 162 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 163 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 164 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 165 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 166 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 167 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 168 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 169 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 170 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 171 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 172 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 173 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 174 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 175 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 176 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 177 "data/maps/Route101/scripts.pory"
	walk_fast_down
# 178 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 179 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 180 "data/maps/Route101/scripts.pory"
	walk_fast_left
# 181 "data/maps/Route101/scripts.pory"
	step_end
# 182 "data/maps/Route101/scripts.pory"

# 183 "data/maps/Route101/scripts.pory"
Route101_Movement_AcaciaRunAway1:
# 184 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 185 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 186 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 187 "data/maps/Route101/scripts.pory"
	walk_fast_right
# 188 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 189 "data/maps/Route101/scripts.pory"
	walk_fast_up
# 190 "data/maps/Route101/scripts.pory"
	step_end
# 191 "data/maps/Route101/scripts.pory"

# 192 "data/maps/Route101/scripts.pory"
@ Leftover data? This command is unused.
# 193 "data/maps/Route101/scripts.pory"
	step_end
# 194 "data/maps/Route101/scripts.pory"

# 195 "data/maps/Route101/scripts.pory"
Route101_Movement_AcaciaFaceZigzagoon:
# 196 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_right
# 197 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_right
# 198 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_right
# 199 "data/maps/Route101/scripts.pory"
	walk_in_place_fast_right
# 200 "data/maps/Route101/scripts.pory"
	step_end
# 201 "data/maps/Route101/scripts.pory"

# 202 "data/maps/Route101/scripts.pory"
Route101_Movement_Unused1:
# 203 "data/maps/Route101/scripts.pory"
	walk_up
# 204 "data/maps/Route101/scripts.pory"
	walk_up
# 205 "data/maps/Route101/scripts.pory"
	step_end
# 206 "data/maps/Route101/scripts.pory"

# 207 "data/maps/Route101/scripts.pory"
Route101_Movement_Unused2:
# 208 "data/maps/Route101/scripts.pory"
	walk_up
# 209 "data/maps/Route101/scripts.pory"
	walk_left
# 210 "data/maps/Route101/scripts.pory"
	walk_up
# 211 "data/maps/Route101/scripts.pory"
	step_end
# 212 "data/maps/Route101/scripts.pory"

# 213 "data/maps/Route101/scripts.pory"
Route101_EventScript_Youngster::
# 214 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_TakeTiredPokemonToPokeCenter, MSGBOX_NPC
# 215 "data/maps/Route101/scripts.pory"
	end
# 216 "data/maps/Route101/scripts.pory"

# 217 "data/maps/Route101/scripts.pory"
Route101_EventScript_Boy::
# 218 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_WildPokemonInTallGrass, MSGBOX_NPC
# 219 "data/maps/Route101/scripts.pory"
	end
# 220 "data/maps/Route101/scripts.pory"

# 221 "data/maps/Route101/scripts.pory"
Route101_EventScript_RouteSign::
# 222 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_RouteSign, MSGBOX_SIGN
# 223 "data/maps/Route101/scripts.pory"
	end
# 224 "data/maps/Route101/scripts.pory"

# 225 "data/maps/Route101/scripts.pory"
Route101_EventScript_WurmpleOverworld::
# 226 "data/maps/Route101/scripts.pory"
	lock
# 227 "data/maps/Route101/scripts.pory"
	faceplayer
# 228 "data/maps/Route101/scripts.pory"
	playmoncry SPECIES_WURMPLE, CRY_MODE_NORMAL
# 229 "data/maps/Route101/scripts.pory"
	waitmoncry
# 230 "data/maps/Route101/scripts.pory"
	release
# 231 "data/maps/Route101/scripts.pory"
	end
# 232 "data/maps/Route101/scripts.pory"

# 233 "data/maps/Route101/scripts.pory"
Route101_EventScript_AcaciasBag::
# 234 "data/maps/Route101/scripts.pory"
	lock
# 235 "data/maps/Route101/scripts.pory"
	faceplayer
# 236 "data/maps/Route101/scripts.pory"
	setflag FLAG_SYS_POKEMON_GET
# 237 "data/maps/Route101/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 238 "data/maps/Route101/scripts.pory"
	fadescreen FADE_TO_BLACK
# 239 "data/maps/Route101/scripts.pory"
	removeobject LOCALID_ROUTE101_ZIGZAGOON
# 240 "data/maps/Route101/scripts.pory"
	setobjectxy LOCALID_PLAYER, 9, 13
# 241 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 242 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 243 "data/maps/Route101/scripts.pory"
	special ChooseStarter
# 244 "data/maps/Route101/scripts.pory"
	waitstate
# 245 "data/maps/Route101/scripts.pory"
	applymovement LOCALID_ROUTE101_ACACIA, Route101_Movement_AcaciaApproachPlayer
# 246 "data/maps/Route101/scripts.pory"
	waitmovement 0
# 247 "data/maps/Route101/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL 
# 248 "data/maps/Route101/scripts.pory"
	msgbox Route101_Text_YouSavedMe, MSGBOX_DEFAULT
# 249 "data/maps/Route101/scripts.pory"
	removefieldmugshot
# 250 "data/maps/Route101/scripts.pory"
	special HealPlayerParty
# 251 "data/maps/Route101/scripts.pory"
	setflag FLAG_HIDE_ROUTE_101_BIRCH_ZIGZAGOON_BATTLE
# 252 "data/maps/Route101/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_BIRCH
# 253 "data/maps/Route101/scripts.pory"
	setflag FLAG_HIDE_ROUTE_101_BIRCH_STARTERS_BAG
# 254 "data/maps/Route101/scripts.pory"
	setvar VAR_BIRCH_LAB_STATE, 2
# 255 "data/maps/Route101/scripts.pory"
	setvar VAR_ROUTE101_STATE, 3
# 256 "data/maps/Route101/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 257 "data/maps/Route101/scripts.pory"
	checkplayergender
# 258 "data/maps/Route101/scripts.pory"
	call_if_eq VAR_RESULT, MALE, Route101_EventScript_HideMayInBedroom
# 259 "data/maps/Route101/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, Route101_EventScript_HideBrendanInBedroom
# 260 "data/maps/Route101/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB, 6, 5
# 261 "data/maps/Route101/scripts.pory"
	waitstate
# 262 "data/maps/Route101/scripts.pory"
	release
# 263 "data/maps/Route101/scripts.pory"
	end
# 264 "data/maps/Route101/scripts.pory"

# 265 "data/maps/Route101/scripts.pory"
Route101_EventScript_HideMayInBedroom::
# 266 "data/maps/Route101/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 267 "data/maps/Route101/scripts.pory"
	return
# 268 "data/maps/Route101/scripts.pory"

# 269 "data/maps/Route101/scripts.pory"
Route101_EventScript_HideBrendanInBedroom::
# 270 "data/maps/Route101/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 271 "data/maps/Route101/scripts.pory"
	return
# 272 "data/maps/Route101/scripts.pory"

# 273 "data/maps/Route101/scripts.pory"
Route101_Movement_AcaciaApproachPlayer:
# 274 "data/maps/Route101/scripts.pory"
	walk_right
# 275 "data/maps/Route101/scripts.pory"
	step_end
# 276 "data/maps/Route101/scripts.pory"

# 277 "data/maps/Route101/scripts.pory"
Route101_Text_HelpMe:
# 278 "data/maps/Route101/scripts.pory"
	.string "H-help me!$"
# 279 "data/maps/Route101/scripts.pory"

# 280 "data/maps/Route101/scripts.pory"
Route101_Text_PleaseHelp:
# 281 "data/maps/Route101/scripts.pory"
	.string "Hello! You over there!\n"
# 282 "data/maps/Route101/scripts.pory"
	.string "Please! Help!\p"
# 283 "data/maps/Route101/scripts.pory"
	.string "In my BAG!\n"
# 284 "data/maps/Route101/scripts.pory"
	.string "There's a POKé BALL!$"
# 285 "data/maps/Route101/scripts.pory"

# 286 "data/maps/Route101/scripts.pory"
Route101_Text_DontLeaveMe:
# 287 "data/maps/Route101/scripts.pory"
	.string "Wh-Where are you going?!\n"
# 288 "data/maps/Route101/scripts.pory"
	.string "Don't leave me like this!$"
# 289 "data/maps/Route101/scripts.pory"

# 290 "data/maps/Route101/scripts.pory"
Route101_Text_YouSavedMe:
# 291 "data/maps/Route101/scripts.pory"
	.string "PROF. ACACIA: Whew…\p"
# 292 "data/maps/Route101/scripts.pory"
	.string "I was in the tall grass studying wild\n"
# 293 "data/maps/Route101/scripts.pory"
	.string "POKéMON when I was jumped.\p"
# 294 "data/maps/Route101/scripts.pory"
	.string "You saved me.\n"
# 295 "data/maps/Route101/scripts.pory"
	.string "Thanks a lot!\p"
# 296 "data/maps/Route101/scripts.pory"
	.string "Oh?\p"
# 297 "data/maps/Route101/scripts.pory"
	.string "Hi, you're {PLAYER}{KUN}!\p"
# 298 "data/maps/Route101/scripts.pory"
	.string "This is not the place to chat, so come\n"
# 299 "data/maps/Route101/scripts.pory"
	.string "by my POKéMON LAB later, okay?$"
# 300 "data/maps/Route101/scripts.pory"

# 301 "data/maps/Route101/scripts.pory"
Route101_Text_TakeTiredPokemonToPokeCenter:
# 302 "data/maps/Route101/scripts.pory"
	.string "What's up with those clothes?\p"
# 303 "data/maps/Route101/scripts.pory"
	.string "Oh, I get it.\p"
# 304 "data/maps/Route101/scripts.pory"
	.string "You're cosplaying as the protagonist\n"
# 305 "data/maps/Route101/scripts.pory"
	.string "of SALAMENCE QUEST.\p"
# 306 "data/maps/Route101/scripts.pory"
	.string "I love that game!$"
# 307 "data/maps/Route101/scripts.pory"

# 308 "data/maps/Route101/scripts.pory"
Route101_Text_WildPokemonInTallGrass:
# 309 "data/maps/Route101/scripts.pory"
	.string "Those are some weird clothes…\p"
# 310 "data/maps/Route101/scripts.pory"
	.string "You don't look like you live here!$"
# 311 "data/maps/Route101/scripts.pory"

# 312 "data/maps/Route101/scripts.pory"
Route101_Text_RouteSign:
# 313 "data/maps/Route101/scripts.pory"
	.string "ROUTE 101\n"
# 314 "data/maps/Route101/scripts.pory"
	.string "{UP_ARROW} OLDALE TOWN$"
