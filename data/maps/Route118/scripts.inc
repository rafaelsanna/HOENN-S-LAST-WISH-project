# 1 "data/maps/Route118/scripts.pory"

# 2 "data/maps/Route118/scripts.pory"
Route118_MapScripts::
# 3 "data/maps/Route118/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route118_OnTransition
# 4 "data/maps/Route118/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, Route118_OnLoad
# 5 "data/maps/Route118/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route118_OnFrame
# 6 "data/maps/Route118/scripts.pory"
	.byte 0
# 7 "data/maps/Route118/scripts.pory"

# 8 "data/maps/Route118/scripts.pory"
Route118_OnTransition:
# 9 "data/maps/Route118/scripts.pory"
	call GabbyAndTy_EventScript_UpdateLocation
# 10 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_SHOULD_END_ABNORMAL_WEATHER, 1, AbnormalWeather_EventScript_HideMapNamePopup
# 11 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_ABNORMAL_WEATHER_LOCATION, ABNORMAL_WEATHER_ROUTE_118_EAST, AbnormalWeather_StartGroudonWeather
# 12 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_ABNORMAL_WEATHER_LOCATION, ABNORMAL_WEATHER_ROUTE_118_WEST, AbnormalWeather_StartGroudonWeather
# 13 "data/maps/Route118/scripts.pory"
	end
# 14 "data/maps/Route118/scripts.pory"

# 15 "data/maps/Route118/scripts.pory"
Route118_OnLoad:
# 16 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_ABNORMAL_WEATHER_LOCATION, ABNORMAL_WEATHER_ROUTE_118_EAST, AbnormalWeather_EventScript_PlaceTilesRoute118East
# 17 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_ABNORMAL_WEATHER_LOCATION, ABNORMAL_WEATHER_ROUTE_118_WEST, AbnormalWeather_EventScript_PlaceTilesRoute118West
# 18 "data/maps/Route118/scripts.pory"
	end
# 19 "data/maps/Route118/scripts.pory"

# 20 "data/maps/Route118/scripts.pory"
Route118_OnFrame:
# 21 "data/maps/Route118/scripts.pory"
	map_script_2 VAR_SHOULD_END_ABNORMAL_WEATHER, 1, AbnormalWeather_EventScript_EndEventAndCleanup_1
# 22 "data/maps/Route118/scripts.pory"
	.2byte 0
# 23 "data/maps/Route118/scripts.pory"

# 24 "data/maps/Route118/scripts.pory"
Route118_EventScript_GoodRodFisherman::
# 25 "data/maps/Route118/scripts.pory"
	lock
# 26 "data/maps/Route118/scripts.pory"
	faceplayer
# 27 "data/maps/Route118/scripts.pory"
	goto_if_set FLAG_RECEIVED_GOOD_ROD, Route118_EventScript_ReceivedGoodRod
# 28 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_YouAgreeGoodRodIsGood, MSGBOX_YESNO
# 29 "data/maps/Route118/scripts.pory"
	goto_if_eq VAR_RESULT, YES, Route118_EventScript_ReceiveGoodRod
# 30 "data/maps/Route118/scripts.pory"
	goto_if_eq VAR_RESULT, NO, Route118_EventScript_DeclineGoodRod
# 31 "data/maps/Route118/scripts.pory"
	end
# 32 "data/maps/Route118/scripts.pory"

# 33 "data/maps/Route118/scripts.pory"
Route118_EventScript_ReceiveGoodRod::
# 34 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_IdenticalMindsTakeThis, MSGBOX_DEFAULT
# 35 "data/maps/Route118/scripts.pory"
	giveitem ITEM_GOOD_ROD
# 36 "data/maps/Route118/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 37 "data/maps/Route118/scripts.pory"
	setflag FLAG_RECEIVED_GOOD_ROD
# 38 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_TryYourLuckFishing, MSGBOX_DEFAULT
# 39 "data/maps/Route118/scripts.pory"
	release
# 40 "data/maps/Route118/scripts.pory"
	end
# 41 "data/maps/Route118/scripts.pory"

# 42 "data/maps/Route118/scripts.pory"
Route118_EventScript_DeclineGoodRod::
# 43 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_DontYouLikeToFish, MSGBOX_DEFAULT
# 44 "data/maps/Route118/scripts.pory"
	release
# 45 "data/maps/Route118/scripts.pory"
	end
# 46 "data/maps/Route118/scripts.pory"

# 47 "data/maps/Route118/scripts.pory"
Route118_EventScript_ReceivedGoodRod::
# 48 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_TryCatchingMonWithGoodRod, MSGBOX_DEFAULT
# 49 "data/maps/Route118/scripts.pory"
	release
# 50 "data/maps/Route118/scripts.pory"
	end
# 51 "data/maps/Route118/scripts.pory"

# 52 "data/maps/Route118/scripts.pory"
Route118_EventScript_Girl::
# 53 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_CanCrossRiversWithSurf, MSGBOX_NPC
# 54 "data/maps/Route118/scripts.pory"
	end
# 55 "data/maps/Route118/scripts.pory"

# 56 "data/maps/Route118/scripts.pory"
Route118_EventScript_RouteSignMauville::
# 57 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_RouteSignMauville, MSGBOX_SIGN
# 58 "data/maps/Route118/scripts.pory"
	end
# 59 "data/maps/Route118/scripts.pory"

# 60 "data/maps/Route118/scripts.pory"
Route118_EventScript_RouteSign119::
# 61 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_RouteSign119, MSGBOX_SIGN
# 62 "data/maps/Route118/scripts.pory"
	end
# 63 "data/maps/Route118/scripts.pory"

# 64 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenTrigger0::
# 65 "data/maps/Route118/scripts.pory"
	lockall
# 66 "data/maps/Route118/scripts.pory"
	setvar VAR_0x8008, 0
# 67 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 68 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 69 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_ROUTE118_STEVEN, Route118_Movement_StevenApproachLedge0
# 70 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 71 "data/maps/Route118/scripts.pory"
	goto Route118_EventScript_StevenTrigger
# 72 "data/maps/Route118/scripts.pory"
	end
# 73 "data/maps/Route118/scripts.pory"

# 74 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenTrigger1::
# 75 "data/maps/Route118/scripts.pory"
	lockall
# 76 "data/maps/Route118/scripts.pory"
	setvar VAR_0x8008, 1
# 77 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 78 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 79 "data/maps/Route118/scripts.pory"
	goto Route118_EventScript_StevenTrigger
# 80 "data/maps/Route118/scripts.pory"
	end
# 81 "data/maps/Route118/scripts.pory"

# 82 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenTrigger2::
# 83 "data/maps/Route118/scripts.pory"
	lockall
# 84 "data/maps/Route118/scripts.pory"
	setvar VAR_0x8008, 2
# 85 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 86 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 87 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_ROUTE118_STEVEN, Route118_Movement_StevenApproachLedge2
# 88 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 89 "data/maps/Route118/scripts.pory"
	goto Route118_EventScript_StevenTrigger
# 90 "data/maps/Route118/scripts.pory"
	end
# 91 "data/maps/Route118/scripts.pory"

# 92 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenTrigger::
# 93 "data/maps/Route118/scripts.pory"
	playse SE_LEDGE
# 94 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_ROUTE118_STEVEN, Route118_Movement_StevenJumpLedge
# 95 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 96 "data/maps/Route118/scripts.pory"
	delay 30
# 97 "data/maps/Route118/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 98 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_StellaQuestions, MSGBOX_DEFAULT
# 99 "data/maps/Route118/scripts.pory"
	removefieldmugshot
# 100 "data/maps/Route118/scripts.pory"
	closemessage
# 101 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_0x8008, 0, Route118_EventScript_StevenExit0
# 102 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_0x8008, 1, Route118_EventScript_StevenExit1
# 103 "data/maps/Route118/scripts.pory"
	call_if_eq VAR_0x8008, 2, Route118_EventScript_StevenExit2
# 104 "data/maps/Route118/scripts.pory"
	setvar VAR_ROUTE118_STATE, 1
# 105 "data/maps/Route118/scripts.pory"
	removeobject LOCALID_ROUTE118_STEVEN
# 106 "data/maps/Route118/scripts.pory"
	releaseall
# 107 "data/maps/Route118/scripts.pory"
	end
# 108 "data/maps/Route118/scripts.pory"

# 109 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenExit0::
# 110 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_PLAYER, Route118_Movement_PlayerWatchStevenExit
# 111 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_ROUTE118_STEVEN, Route118_Movement_StevenExit0
# 112 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 113 "data/maps/Route118/scripts.pory"
	return
# 114 "data/maps/Route118/scripts.pory"

# 115 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenExit1::
# 116 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_PLAYER, Route118_Movement_PlayerWatchStevenExit
# 117 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_ROUTE118_STEVEN, Route118_Movement_StevenExit1
# 118 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 119 "data/maps/Route118/scripts.pory"
	return
# 120 "data/maps/Route118/scripts.pory"

# 121 "data/maps/Route118/scripts.pory"
Route118_EventScript_StevenExit2::
# 122 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_PLAYER, Route118_Movement_PlayerWatchStevenExit
# 123 "data/maps/Route118/scripts.pory"
	applymovement LOCALID_ROUTE118_STEVEN, Route118_Movement_StevenExit2
# 124 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 125 "data/maps/Route118/scripts.pory"
	return
# 126 "data/maps/Route118/scripts.pory"

# 127 "data/maps/Route118/scripts.pory"
Route118_Movement_PlayerWatchStevenExit:
# 128 "data/maps/Route118/scripts.pory"
	delay_16
# 129 "data/maps/Route118/scripts.pory"
	walk_in_place_faster_right
# 130 "data/maps/Route118/scripts.pory"
	step_end
# 131 "data/maps/Route118/scripts.pory"

# 132 "data/maps/Route118/scripts.pory"
Route118_Movement_StevenApproachLedge0:
# 133 "data/maps/Route118/scripts.pory"
	walk_left
# 134 "data/maps/Route118/scripts.pory"
	step_end
# 135 "data/maps/Route118/scripts.pory"

# 136 "data/maps/Route118/scripts.pory"
Route118_Movement_StevenApproachLedge2:
# 137 "data/maps/Route118/scripts.pory"
	walk_right
# 138 "data/maps/Route118/scripts.pory"
	step_end
# 139 "data/maps/Route118/scripts.pory"

# 140 "data/maps/Route118/scripts.pory"
Route118_Movement_StevenJumpLedge:
# 141 "data/maps/Route118/scripts.pory"
	jump_2_down
# 142 "data/maps/Route118/scripts.pory"
	delay_16
# 143 "data/maps/Route118/scripts.pory"
	walk_down
# 144 "data/maps/Route118/scripts.pory"
	step_end
# 145 "data/maps/Route118/scripts.pory"

# 146 "data/maps/Route118/scripts.pory"
Route118_Movement_StevenExit0:
# 147 "data/maps/Route118/scripts.pory"
	walk_right
# 148 "data/maps/Route118/scripts.pory"
	walk_right
# 149 "data/maps/Route118/scripts.pory"
	walk_right
# 150 "data/maps/Route118/scripts.pory"
	walk_right
# 151 "data/maps/Route118/scripts.pory"
	walk_right
# 152 "data/maps/Route118/scripts.pory"
	walk_right
# 153 "data/maps/Route118/scripts.pory"
	walk_right
# 154 "data/maps/Route118/scripts.pory"
	walk_right
# 155 "data/maps/Route118/scripts.pory"
	walk_right
# 156 "data/maps/Route118/scripts.pory"
	walk_right
# 157 "data/maps/Route118/scripts.pory"
	step_end
# 158 "data/maps/Route118/scripts.pory"

# 159 "data/maps/Route118/scripts.pory"
Route118_Movement_StevenExit1:
# 160 "data/maps/Route118/scripts.pory"
	walk_right
# 161 "data/maps/Route118/scripts.pory"
	walk_right
# 162 "data/maps/Route118/scripts.pory"
	walk_right
# 163 "data/maps/Route118/scripts.pory"
	walk_right
# 164 "data/maps/Route118/scripts.pory"
	walk_right
# 165 "data/maps/Route118/scripts.pory"
	walk_right
# 166 "data/maps/Route118/scripts.pory"
	walk_right
# 167 "data/maps/Route118/scripts.pory"
	walk_right
# 168 "data/maps/Route118/scripts.pory"
	walk_right
# 169 "data/maps/Route118/scripts.pory"
	step_end
# 170 "data/maps/Route118/scripts.pory"

# 171 "data/maps/Route118/scripts.pory"
Route118_Movement_StevenExit2:
# 172 "data/maps/Route118/scripts.pory"
	walk_right
# 173 "data/maps/Route118/scripts.pory"
	walk_right
# 174 "data/maps/Route118/scripts.pory"
	walk_right
# 175 "data/maps/Route118/scripts.pory"
	walk_right
# 176 "data/maps/Route118/scripts.pory"
	walk_right
# 177 "data/maps/Route118/scripts.pory"
	walk_right
# 178 "data/maps/Route118/scripts.pory"
	walk_right
# 179 "data/maps/Route118/scripts.pory"
	walk_right
# 180 "data/maps/Route118/scripts.pory"
	step_end
# 181 "data/maps/Route118/scripts.pory"

# 182 "data/maps/Route118/scripts.pory"
Route118_EventScript_Rose::
# 183 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_ROSE_1, Route118_Text_RoseIntro, Route118_Text_RoseDefeat
# 184 "data/maps/Route118/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 185 "data/maps/Route118/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route118_EventScript_RematchRose
# 186 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_RosePostBattle, MSGBOX_DEFAULT
# 187 "data/maps/Route118/scripts.pory"
	release
# 188 "data/maps/Route118/scripts.pory"
	end
# 189 "data/maps/Route118/scripts.pory"

# 190 "data/maps/Route118/scripts.pory"
Route118_EventScript_RegisterRose::
# 191 "data/maps/Route118/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 192 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 193 "data/maps/Route118/scripts.pory"
	@ PokéNav removed msgbox Route118_Text_RoseRegister, MSGBOX_DEFAULT
# 194 "data/maps/Route118/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_ROSE_1
# 195 "data/maps/Route118/scripts.pory"
	release
# 196 "data/maps/Route118/scripts.pory"
	end
# 197 "data/maps/Route118/scripts.pory"

# 198 "data/maps/Route118/scripts.pory"
Route118_EventScript_RematchRose::
# 199 "data/maps/Route118/scripts.pory"
	trainerbattle_rematch TRAINER_ROSE_1, Route118_Text_RoseRematchIntro, Route118_Text_RoseRematchDefeat
# 200 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_RosePostRematch, MSGBOX_AUTOCLOSE
# 201 "data/maps/Route118/scripts.pory"
	end
# 202 "data/maps/Route118/scripts.pory"

# 203 "data/maps/Route118/scripts.pory"
Route118_EventScript_Barny::
# 204 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_BARNY, Route118_Text_BarnyIntro, Route118_Text_BarnyDefeat
# 205 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_BarnyPostBattle, MSGBOX_AUTOCLOSE
# 206 "data/maps/Route118/scripts.pory"
	end
# 207 "data/maps/Route118/scripts.pory"

# 208 "data/maps/Route118/scripts.pory"
Route118_EventScript_Wade::
# 209 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_WADE, Route118_Text_WadeIntro, Route118_Text_WadeDefeat
# 210 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_WadePostBattle, MSGBOX_AUTOCLOSE
# 211 "data/maps/Route118/scripts.pory"
	end
# 212 "data/maps/Route118/scripts.pory"

# 213 "data/maps/Route118/scripts.pory"
Route118_EventScript_Dalton::
# 214 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_DALTON_1, Route118_Text_DaltonIntro, Route118_Text_DaltonDefeat
# 215 "data/maps/Route118/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 216 "data/maps/Route118/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route118_EventScript_RematchDalton
# 217 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_DaltonPostBattle, MSGBOX_DEFAULT
# 218 "data/maps/Route118/scripts.pory"
	release
# 219 "data/maps/Route118/scripts.pory"
	end
# 220 "data/maps/Route118/scripts.pory"

# 221 "data/maps/Route118/scripts.pory"
Route118_EventScript_RegisterDalton::
# 222 "data/maps/Route118/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 223 "data/maps/Route118/scripts.pory"
	waitmovement 0
# 224 "data/maps/Route118/scripts.pory"
	@ PokéNav removed msgbox Route118_Text_DaltonRegister, MSGBOX_DEFAULT
# 225 "data/maps/Route118/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_DALTON_1
# 226 "data/maps/Route118/scripts.pory"
	release
# 227 "data/maps/Route118/scripts.pory"
	end
# 228 "data/maps/Route118/scripts.pory"

# 229 "data/maps/Route118/scripts.pory"
Route118_EventScript_RematchDalton::
# 230 "data/maps/Route118/scripts.pory"
	trainerbattle_rematch TRAINER_DALTON_1, Route118_Text_DaltonRematchIntro, Route118_Text_DaltonRematchDefeat
# 231 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_DaltonPostRematch, MSGBOX_AUTOCLOSE
# 232 "data/maps/Route118/scripts.pory"
	end
# 233 "data/maps/Route118/scripts.pory"

# 234 "data/maps/Route118/scripts.pory"
Route118_EventScript_Perry::
# 235 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_PERRY, Route118_Text_PerryIntro, Route118_Text_PerryDefeat
# 236 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_PerryPostBattle, MSGBOX_AUTOCLOSE
# 237 "data/maps/Route118/scripts.pory"
	end
# 238 "data/maps/Route118/scripts.pory"

# 239 "data/maps/Route118/scripts.pory"
Route118_EventScript_Chester::
# 240 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_CHESTER, Route118_Text_ChesterIntro, Route118_Text_ChesterDefeat
# 241 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_ChesterPostBattle, MSGBOX_AUTOCLOSE
# 242 "data/maps/Route118/scripts.pory"
	end
# 243 "data/maps/Route118/scripts.pory"

# 244 "data/maps/Route118/scripts.pory"
Route118_EventScript_Deandre::
# 245 "data/maps/Route118/scripts.pory"
	trainerbattle_single TRAINER_DEANDRE, Route118_Text_DeandreIntro, Route118_Text_DeandreDefeat
# 246 "data/maps/Route118/scripts.pory"
	msgbox Route118_Text_DeandrePostBattle, MSGBOX_AUTOCLOSE
# 247 "data/maps/Route118/scripts.pory"
	end
# 248 "data/maps/Route118/scripts.pory"

# 249 "data/maps/Route118/scripts.pory"
Route118_Text_StellaQuestions:
# 250 "data/maps/Route118/scripts.pory"
	.string "STELLA: Oh! {PLAYER}{KUN}, it's good to\n"
# 251 "data/maps/Route118/scripts.pory"
	.string "see you made it past TEAM AQUA\l"
# 252 "data/maps/Route118/scripts.pory"
	.string "safely.\p"
# 253 "data/maps/Route118/scripts.pory"
	.string "Are you on your way to FORTREE now?\p"
# 254 "data/maps/Route118/scripts.pory"
	.string "I'm also heading that way, so perhaps\n"
# 255 "data/maps/Route118/scripts.pory"
	.string "I'll see you again soon. Stay safe out\l"
# 256 "data/maps/Route118/scripts.pory"
	.string "there!$"
# 257 "data/maps/Route118/scripts.pory"

# 258 "data/maps/Route118/scripts.pory"
Route118_Text_YouAgreeGoodRodIsGood:
# 259 "data/maps/Route118/scripts.pory"
	.string "Hmm!\n"
# 260 "data/maps/Route118/scripts.pory"
	.string "A GOOD ROD is really good!\p"
# 261 "data/maps/Route118/scripts.pory"
	.string "Wouldn't you agree?$"
# 262 "data/maps/Route118/scripts.pory"

# 263 "data/maps/Route118/scripts.pory"
Route118_Text_IdenticalMindsTakeThis:
# 264 "data/maps/Route118/scripts.pory"
	.string "Hmm!\n"
# 265 "data/maps/Route118/scripts.pory"
	.string "We're of identical minds!\p"
# 266 "data/maps/Route118/scripts.pory"
	.string "Hmm!\n"
# 267 "data/maps/Route118/scripts.pory"
	.string "Take this GOOD ROD!$"
# 268 "data/maps/Route118/scripts.pory"

# 269 "data/maps/Route118/scripts.pory"
Route118_Text_TryYourLuckFishing:
# 270 "data/maps/Route118/scripts.pory"
	.string "Wherever there's water, try your luck\n"
# 271 "data/maps/Route118/scripts.pory"
	.string "at fishing.$"
# 272 "data/maps/Route118/scripts.pory"

# 273 "data/maps/Route118/scripts.pory"
Route118_Text_DontYouLikeToFish:
# 274 "data/maps/Route118/scripts.pory"
	.string "Don't you like to fish?$"
# 275 "data/maps/Route118/scripts.pory"

# 276 "data/maps/Route118/scripts.pory"
Route118_Text_TryCatchingMonWithGoodRod:
# 277 "data/maps/Route118/scripts.pory"
	.string "Try catching all sorts of POKéMON\n"
# 278 "data/maps/Route118/scripts.pory"
	.string "with your GOOD ROD.$"
# 279 "data/maps/Route118/scripts.pory"

# 280 "data/maps/Route118/scripts.pory"
Route118_Text_CanCrossRiversWithSurf:
# 281 "data/maps/Route118/scripts.pory"
	.string "Even if there isn't a boat, you can\n"
# 282 "data/maps/Route118/scripts.pory"
	.string "cross rivers and the sea if you have\l"
# 283 "data/maps/Route118/scripts.pory"
	.string "a POKéMON that knows SURF.\p"
# 284 "data/maps/Route118/scripts.pory"
	.string "POKéMON can be counted on to do so\n"
# 285 "data/maps/Route118/scripts.pory"
	.string "much!$"
# 286 "data/maps/Route118/scripts.pory"

# 287 "data/maps/Route118/scripts.pory"
Route118_Text_RouteSignMauville:
# 288 "data/maps/Route118/scripts.pory"
	.string "ROUTE 118\n"
# 289 "data/maps/Route118/scripts.pory"
	.string "{LEFT_ARROW} MAUVILLE CITY$"
# 290 "data/maps/Route118/scripts.pory"

# 291 "data/maps/Route118/scripts.pory"
Route118_Text_RouteSign119:
# 292 "data/maps/Route118/scripts.pory"
	.string "ROUTE 118\n"
# 293 "data/maps/Route118/scripts.pory"
	.string "{UP_ARROW} ROUTE 119$"
