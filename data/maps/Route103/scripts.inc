# 1 "data/maps/Route103/scripts.pory"

# 2 "data/maps/Route103/scripts.pory"
Route103_MapScripts::
# 3 "data/maps/Route103/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route103_OnTransition
# 4 "data/maps/Route103/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, Route103_OnLoad
# 5 "data/maps/Route103/scripts.pory"
	.byte 0
# 6 "data/maps/Route103/scripts.pory"

# 7 "data/maps/Route103/scripts.pory"
Route103_OnTransition:
# 8 "data/maps/Route103/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 9 "data/maps/Route103/scripts.pory"
	call ProfAcacia_EventScript_UpdateLocation
# 10 "data/maps/Route103/scripts.pory"
	call PetalburgCity_EventScript_HandleAquaGrunts
# 11 "data/maps/Route103/scripts.pory"
	end
# 12 "data/maps/Route103/scripts.pory"

# 13 "data/maps/Route103/scripts.pory"
Route103_OnLoad:
# 14 "data/maps/Route103/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, Route103_EventScript_OpenAlteringCave
# 15 "data/maps/Route103/scripts.pory"
	end
# 16 "data/maps/Route103/scripts.pory"

# 17 "data/maps/Route103/scripts.pory"
Route103_EventScript_WingullOverworld::
# 18 "data/maps/Route103/scripts.pory"
	lock
# 19 "data/maps/Route103/scripts.pory"
	faceplayer
# 20 "data/maps/Route103/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 21 "data/maps/Route103/scripts.pory"
	waitmoncry
# 22 "data/maps/Route103/scripts.pory"
	release
# 23 "data/maps/Route103/scripts.pory"
	end
# 24 "data/maps/Route103/scripts.pory"

# 25 "data/maps/Route103/scripts.pory"
Route103_EventScript_CorphishOverworld::
# 26 "data/maps/Route103/scripts.pory"
	lock
# 27 "data/maps/Route103/scripts.pory"
	faceplayer
# 28 "data/maps/Route103/scripts.pory"
	playmoncry SPECIES_CORPHISH, CRY_MODE_NORMAL
# 29 "data/maps/Route103/scripts.pory"
	waitmoncry
# 30 "data/maps/Route103/scripts.pory"
	release
# 31 "data/maps/Route103/scripts.pory"
	end
# 32 "data/maps/Route103/scripts.pory"

# 33 "data/maps/Route103/scripts.pory"
Route103_EventScript_OpenAlteringCave::
# 34 "data/maps/Route103/scripts.pory"
	setmetatile 45, 5, METATILE_General_CaveEntrance_Top, TRUE
# 35 "data/maps/Route103/scripts.pory"
	setmetatile 45, 6, METATILE_General_CaveEntrance_Bottom, FALSE
# 36 "data/maps/Route103/scripts.pory"
	return
# 37 "data/maps/Route103/scripts.pory"

# 38 "data/maps/Route103/scripts.pory"
Route103_EventScript_Rival::
# 39 "data/maps/Route103/scripts.pory"
	lockall
# 40 "data/maps/Route103/scripts.pory"
	checkplayergender
# 41 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route103_EventScript_RivalMay
# 42 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route103_EventScript_RivalBrendan
# 43 "data/maps/Route103/scripts.pory"
	end
# 44 "data/maps/Route103/scripts.pory"

# 45 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalMay::
# 46 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL 
# 47 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayRoute103Pokemon, MSGBOX_DEFAULT
# 48 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 49 "data/maps/Route103/scripts.pory"
	closemessage
# 50 "data/maps/Route103/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 51 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_FacePlayer
# 52 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 53 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_ExclamationMark
# 54 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 55 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_Delay48
# 56 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 57 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL 
# 58 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayLetsBattle, MSGBOX_DEFAULT
# 59 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 60 "data/maps/Route103/scripts.pory"
	switch VAR_STARTER_MON
# 61 "data/maps/Route103/scripts.pory"
	case 0, Route103_EventScript_StartMayBattleTreecko
# 62 "data/maps/Route103/scripts.pory"
	case 1, Route103_EventScript_StartMayBattleTorchic
# 63 "data/maps/Route103/scripts.pory"
	case 2, Route103_EventScript_StartMayBattleMudkip
# 64 "data/maps/Route103/scripts.pory"
	end
# 65 "data/maps/Route103/scripts.pory"

# 66 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalBrendan::
# 67 "data/maps/Route103/scripts.pory"
createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL 
# 68 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanRoute103Pokemon, MSGBOX_DEFAULT
# 69 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 70 "data/maps/Route103/scripts.pory"
	closemessage
# 71 "data/maps/Route103/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 72 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_FacePlayer
# 73 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 74 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_ExclamationMark
# 75 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 76 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_Delay48
# 77 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 78 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL 
# 79 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanLetsBattle, MSGBOX_DEFAULT
# 80 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 81 "data/maps/Route103/scripts.pory"
	switch VAR_STARTER_MON
# 82 "data/maps/Route103/scripts.pory"
	case 0, Route103_EventScript_StartBrendanBattleTreecko
# 83 "data/maps/Route103/scripts.pory"
	case 1, Route103_EventScript_StartBrendanBattleTorchic
# 84 "data/maps/Route103/scripts.pory"
	case 2, Route103_EventScript_StartBrendanBattleMudkip
# 85 "data/maps/Route103/scripts.pory"
	end
# 86 "data/maps/Route103/scripts.pory"

# 87 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleTreecko::
# 88 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_TREECKO, Route103_Text_MayDefeated
# 89 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 90 "data/maps/Route103/scripts.pory"
	end
# 91 "data/maps/Route103/scripts.pory"

# 92 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleTorchic::
# 93 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_TORCHIC, Route103_Text_MayDefeated
# 94 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 95 "data/maps/Route103/scripts.pory"
	end
# 96 "data/maps/Route103/scripts.pory"

# 97 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleMudkip::
# 98 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_MUDKIP, Route103_Text_MayDefeated
# 99 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 100 "data/maps/Route103/scripts.pory"
	end
# 101 "data/maps/Route103/scripts.pory"

# 102 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleTreecko::
# 103 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_TREECKO, Route103_Text_BrendanDefeated
# 104 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 105 "data/maps/Route103/scripts.pory"
	end
# 106 "data/maps/Route103/scripts.pory"

# 107 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleTorchic::
# 108 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_TORCHIC, Route103_Text_BrendanDefeated
# 109 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 110 "data/maps/Route103/scripts.pory"
	end
# 111 "data/maps/Route103/scripts.pory"

# 112 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleMudkip::
# 113 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_MUDKIP, Route103_Text_BrendanDefeated
# 114 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 115 "data/maps/Route103/scripts.pory"
	end
# 116 "data/maps/Route103/scripts.pory"

# 117 "data/maps/Route103/scripts.pory"
Route103_EventScript_AfterMayBattle::
# 118 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 119 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayTimeToHeadBack, MSGBOX_DEFAULT
# 120 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 121 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalExit
# 122 "data/maps/Route103/scripts.pory"
	end
# 123 "data/maps/Route103/scripts.pory"

# 124 "data/maps/Route103/scripts.pory"
Route103_EventScript_AfterBrendanBattle::
# 125 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 126 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanTimeToHeadBack, MSGBOX_DEFAULT
# 127 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 128 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalExit
# 129 "data/maps/Route103/scripts.pory"
	end
# 130 "data/maps/Route103/scripts.pory"

# 131 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExit::
# 132 "data/maps/Route103/scripts.pory"
	closemessage
# 133 "data/maps/Route103/scripts.pory"
	switch VAR_FACING
# 134 "data/maps/Route103/scripts.pory"
	case DIR_SOUTH, Route103_EventScript_RivalExitFacingSouth
# 135 "data/maps/Route103/scripts.pory"
	case DIR_NORTH, Route103_EventScript_RivalExitFacingNorth
# 136 "data/maps/Route103/scripts.pory"
	case DIR_WEST, Route103_EventScript_RivalExitFacingEastOrWest
# 137 "data/maps/Route103/scripts.pory"
	case DIR_EAST, Route103_EventScript_RivalExitFacingEastOrWest
# 138 "data/maps/Route103/scripts.pory"
	end
# 139 "data/maps/Route103/scripts.pory"

# 140 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingNorth::
# 141 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_PLAYER, Route103_Movement_WatchRivalExitFacingNorth
# 142 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExitFacingNorth1
# 143 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 144 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 145 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExitFacingNorth2
# 146 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 147 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 148 "data/maps/Route103/scripts.pory"
	end
# 149 "data/maps/Route103/scripts.pory"

# 150 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingEastOrWest::
# 151 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_PLAYER, Route103_Movement_WatchRivalExitFacingEastOrWest
# 152 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit1
# 153 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 154 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 155 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit2
# 156 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 157 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 158 "data/maps/Route103/scripts.pory"
	end
# 159 "data/maps/Route103/scripts.pory"

# 160 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingSouth::
# 161 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit1
# 162 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 163 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 164 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit2
# 165 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 166 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 167 "data/maps/Route103/scripts.pory"
	end
# 168 "data/maps/Route103/scripts.pory"

# 169 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalEnd::
# 170 "data/maps/Route103/scripts.pory"
	removeobject LOCALID_ROUTE103_RIVAL
# 171 "data/maps/Route103/scripts.pory"
	setvar VAR_BIRCH_LAB_STATE, 4
# 172 "data/maps/Route103/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 173 "data/maps/Route103/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE103
# 174 "data/maps/Route103/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 1
# 175 "data/maps/Route103/scripts.pory"
	clearflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 176 "data/maps/Route103/scripts.pory"
	savebgm MUS_DUMMY
# 177 "data/maps/Route103/scripts.pory"
	fadedefaultbgm
# 178 "data/maps/Route103/scripts.pory"
	releaseall
# 179 "data/maps/Route103/scripts.pory"
	end
# 180 "data/maps/Route103/scripts.pory"

# 181 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExitFacingNorth1:
# 182 "data/maps/Route103/scripts.pory"
	walk_left
# 183 "data/maps/Route103/scripts.pory"
	walk_down
# 184 "data/maps/Route103/scripts.pory"
	step_end
# 185 "data/maps/Route103/scripts.pory"

# 186 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExitFacingNorth2:
# 187 "data/maps/Route103/scripts.pory"
	walk_down
# 188 "data/maps/Route103/scripts.pory"
	jump_2_down
# 189 "data/maps/Route103/scripts.pory"
	delay_16
# 190 "data/maps/Route103/scripts.pory"
	walk_down
# 191 "data/maps/Route103/scripts.pory"
	walk_down
# 192 "data/maps/Route103/scripts.pory"
	walk_down
# 193 "data/maps/Route103/scripts.pory"
	walk_down
# 194 "data/maps/Route103/scripts.pory"
	step_end
# 195 "data/maps/Route103/scripts.pory"

# 196 "data/maps/Route103/scripts.pory"
Route103_Movement_WatchRivalExitFacingNorth:
# 197 "data/maps/Route103/scripts.pory"
	delay_16
# 198 "data/maps/Route103/scripts.pory"
	delay_4
# 199 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_left
# 200 "data/maps/Route103/scripts.pory"
	delay_16
# 201 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_down
# 202 "data/maps/Route103/scripts.pory"
	step_end
# 203 "data/maps/Route103/scripts.pory"

# 204 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExit1:
# 205 "data/maps/Route103/scripts.pory"
	walk_down
# 206 "data/maps/Route103/scripts.pory"
	step_end
# 207 "data/maps/Route103/scripts.pory"

# 208 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExit2:
# 209 "data/maps/Route103/scripts.pory"
	walk_down
# 210 "data/maps/Route103/scripts.pory"
	jump_2_down
# 211 "data/maps/Route103/scripts.pory"
	delay_16
# 212 "data/maps/Route103/scripts.pory"
	walk_down
# 213 "data/maps/Route103/scripts.pory"
	walk_down
# 214 "data/maps/Route103/scripts.pory"
	walk_down
# 215 "data/maps/Route103/scripts.pory"
	step_end
# 216 "data/maps/Route103/scripts.pory"

# 217 "data/maps/Route103/scripts.pory"
Route103_Movement_WatchRivalExitFacingEastOrWest:
# 218 "data/maps/Route103/scripts.pory"
	delay_16
# 219 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_down
# 220 "data/maps/Route103/scripts.pory"
	step_end
# 221 "data/maps/Route103/scripts.pory"

# 222 "data/maps/Route103/scripts.pory"
Route103_EventScript_Boy::
# 223 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_ShouldHaveBroughtPotion, MSGBOX_NPC
# 224 "data/maps/Route103/scripts.pory"
	end
# 225 "data/maps/Route103/scripts.pory"

# 226 "data/maps/Route103/scripts.pory"
Route103_EventScript_Man::
# 227 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_ShortcutToOldale, MSGBOX_NPC
# 228 "data/maps/Route103/scripts.pory"
	end
# 229 "data/maps/Route103/scripts.pory"

# 230 "data/maps/Route103/scripts.pory"
Route103_EventScript_RouteSign::
# 231 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_RouteSign, MSGBOX_SIGN
# 232 "data/maps/Route103/scripts.pory"
	end
# 233 "data/maps/Route103/scripts.pory"

# 234 "data/maps/Route103/scripts.pory"
Route103_EventScript_Daisy::
# 235 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_DAISY, Route103_Text_DaisyIntro, Route103_Text_DaisyDefeated
# 236 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_DaisyPostBattle, MSGBOX_AUTOCLOSE
# 237 "data/maps/Route103/scripts.pory"
	end
# 238 "data/maps/Route103/scripts.pory"

# 239 "data/maps/Route103/scripts.pory"
Route103_EventScript_Amy::
# 240 "data/maps/Route103/scripts.pory"
	trainerbattle_double TRAINER_AMY_AND_LIV_1, Route103_Text_AmyIntro, Route103_Text_AmyDefeated, Route103_Text_AmyNotEnoughPokemon, Route102_EventScript_AmyRegisterMatchCallAfterBattle
# 241 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 242 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route102_EventScript_AmyRematch
# 243 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyPostBattle, MSGBOX_AUTOCLOSE
# 244 "data/maps/Route103/scripts.pory"
	end
# 245 "data/maps/Route103/scripts.pory"

# 246 "data/maps/Route103/scripts.pory"
Route102_EventScript_AmyRegisterMatchCallAfterBattle::
# 247 "data/maps/Route103/scripts.pory"
	@ PokéNav removed msgbox Route103_Text_AmyLivRegister, MSGBOX_DEFAULT
# 248 "data/maps/Route103/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_AMY_AND_LIV_1
# 249 "data/maps/Route103/scripts.pory"
	release
# 250 "data/maps/Route103/scripts.pory"
	end
# 251 "data/maps/Route103/scripts.pory"

# 252 "data/maps/Route103/scripts.pory"
Route102_EventScript_AmyRematch::
# 253 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch_double TRAINER_AMY_AND_LIV_1, Route103_Text_AmyRematchIntro, Route103_Text_AmyRematchDefeated, Route103_Text_AmyRematchNotEnoughPokemon
# 254 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyRematchPostBattle, MSGBOX_AUTOCLOSE
# 255 "data/maps/Route103/scripts.pory"
	end
# 256 "data/maps/Route103/scripts.pory"

# 257 "data/maps/Route103/scripts.pory"
Route103_EventScript_Liv::
# 258 "data/maps/Route103/scripts.pory"
	trainerbattle_double TRAINER_AMY_AND_LIV_1, Route103_Text_LivIntro, Route103_Text_LivDefeated, Route103_Text_LivNotEnoughPokemon, Route102_EventScript_LivRegisterMatchCallAfterBattle
# 259 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 260 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route102_EventScript_LivRematch
# 261 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_LivPostBattle, MSGBOX_AUTOCLOSE
# 262 "data/maps/Route103/scripts.pory"
	end
# 263 "data/maps/Route103/scripts.pory"

# 264 "data/maps/Route103/scripts.pory"
Route102_EventScript_LivRegisterMatchCallAfterBattle::
# 265 "data/maps/Route103/scripts.pory"
	@ PokéNav removed msgbox Route103_Text_AmyLivRegister, MSGBOX_DEFAULT
# 266 "data/maps/Route103/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_AMY_AND_LIV_1
# 267 "data/maps/Route103/scripts.pory"
	release
# 268 "data/maps/Route103/scripts.pory"
	end
# 269 "data/maps/Route103/scripts.pory"

# 270 "data/maps/Route103/scripts.pory"
Route102_EventScript_LivRematch::
# 271 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch_double TRAINER_AMY_AND_LIV_1, Route103_Text_LivRematchIntro, Route103_Text_LivRematchDefeated, Route103_Text_LivRematchNotEnoughPokemon
# 272 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_LivRematchPostBattle, MSGBOX_AUTOCLOSE
# 273 "data/maps/Route103/scripts.pory"
	end
# 274 "data/maps/Route103/scripts.pory"

# 275 "data/maps/Route103/scripts.pory"
Route103_EventScript_Andrew::
# 276 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_ANDREW, Route103_Text_AndrewIntro, Route103_Text_AndrewDefeated
# 277 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AndrewPostBattle, MSGBOX_AUTOCLOSE
# 278 "data/maps/Route103/scripts.pory"
	end
# 279 "data/maps/Route103/scripts.pory"

# 280 "data/maps/Route103/scripts.pory"
Route103_EventScript_Miguel::
# 281 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_MIGUEL_1, Route103_Text_MiguelIntro, Route103_Text_MiguelDefeated, Route102_EventScript_MiguelRegisterMatchCallAfterBattle
# 282 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 283 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route103_EventScript_MiguelRematch
# 284 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelPostBattle, MSGBOX_DEFAULT
# 285 "data/maps/Route103/scripts.pory"
	release
# 286 "data/maps/Route103/scripts.pory"
	end
# 287 "data/maps/Route103/scripts.pory"

# 288 "data/maps/Route103/scripts.pory"
Route102_EventScript_MiguelRegisterMatchCallAfterBattle::
# 289 "data/maps/Route103/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 290 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 291 "data/maps/Route103/scripts.pory"
	@ PokéNav removed msgbox Route103_Text_MiguelRegister, MSGBOX_DEFAULT
# 292 "data/maps/Route103/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_MIGUEL_1
# 293 "data/maps/Route103/scripts.pory"
	release
# 294 "data/maps/Route103/scripts.pory"
	end
# 295 "data/maps/Route103/scripts.pory"

# 296 "data/maps/Route103/scripts.pory"
Route103_EventScript_MiguelRematch::
# 297 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch TRAINER_MIGUEL_1, Route103_Text_MiguelRematchIntro, Route103_Text_MiguelRematchDefeated
# 298 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelRematchPostBattle, MSGBOX_AUTOCLOSE
# 299 "data/maps/Route103/scripts.pory"
	end
# 300 "data/maps/Route103/scripts.pory"

# 301 "data/maps/Route103/scripts.pory"
Route103_EventScript_Marcos::
# 302 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_MARCOS, Route103_Text_MarcosIntro, Route103_Text_MarcosDefeated
# 303 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MarcosPostBattle, MSGBOX_AUTOCLOSE
# 304 "data/maps/Route103/scripts.pory"
	end
# 305 "data/maps/Route103/scripts.pory"

# 306 "data/maps/Route103/scripts.pory"
Route103_EventScript_Rhett::
# 307 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_RHETT, Route103_Text_RhettIntro, Route103_Text_RhettDefeated
# 308 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_RhettPostBattle, MSGBOX_AUTOCLOSE
# 309 "data/maps/Route103/scripts.pory"
	end
# 310 "data/maps/Route103/scripts.pory"

# 311 "data/maps/Route103/scripts.pory"
Route103_EventScript_Pete::
# 312 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_PETE, Route103_Text_PeteIntro, Route103_Text_PeteDefeated
# 313 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_PetePostBattle, MSGBOX_AUTOCLOSE
# 314 "data/maps/Route103/scripts.pory"
	end
# 315 "data/maps/Route103/scripts.pory"

# 316 "data/maps/Route103/scripts.pory"
Route103_EventScript_Isabelle::
# 317 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_ISABELLE, Route103_Text_IsabelleIntro, Route103_Text_IsabelleDefeated
# 318 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_IsabellePostBattle, MSGBOX_AUTOCLOSE
# 319 "data/maps/Route103/scripts.pory"
	end
# 320 "data/maps/Route103/scripts.pory"

# 321 "data/maps/Route103/scripts.pory"
Route103_Text_MayRoute103Pokemon:
# 322 "data/maps/Route103/scripts.pory"
	.string "ZINNIA: Let's see…\p"
# 323 "data/maps/Route103/scripts.pory"
	.string "Some strong POKéMON on ROUTE 103\n"
# 324 "data/maps/Route103/scripts.pory"
	.string "are…$"
# 325 "data/maps/Route103/scripts.pory"

# 326 "data/maps/Route103/scripts.pory"
Route103_Text_MayLetsBattle:
# 327 "data/maps/Route103/scripts.pory"
    .string "Oh, hi, {PLAYER}{KUN}!\p"
# 328 "data/maps/Route103/scripts.pory"
    .string "So you got a POKeMON from PROFESSOR\n"
# 329 "data/maps/Route103/scripts.pory"
    .string "ACACIA too?\p"
# 330 "data/maps/Route103/scripts.pory"
	.string "The PROFESSOR has been very excited\n"
# 331 "data/maps/Route103/scripts.pory"
	.string "about the comet.\p"
# 332 "data/maps/Route103/scripts.pory"
	.string "If she's giving you a POKéMON, it must\n"
# 333 "data/maps/Route103/scripts.pory"
	.string "mean that she's planning something.\p"
# 334 "data/maps/Route103/scripts.pory"
    .string "I'm already training, so how about\n"
# 335 "data/maps/Route103/scripts.pory"
    .string "we battle?\p"
# 336 "data/maps/Route103/scripts.pory"
    .string "Let's see what you can do!$"
# 337 "data/maps/Route103/scripts.pory"

# 338 "data/maps/Route103/scripts.pory"
Route103_Text_MayDefeated:
# 339 "data/maps/Route103/scripts.pory"
	.string "Wow! That's great!\n"
# 340 "data/maps/Route103/scripts.pory"
	.string "{PLAYER}{KUN}, you're pretty good!$"
# 341 "data/maps/Route103/scripts.pory"

# 342 "data/maps/Route103/scripts.pory"
Route103_Text_MayTimeToHeadBack:
# 343 "data/maps/Route103/scripts.pory"
    .string "ZINNIA: Ah… now I get why\n"
# 344 "data/maps/Route103/scripts.pory"
    .string "PROFESSOR ACACIA noticed you.\p"
# 345 "data/maps/Route103/scripts.pory"
    .string "You just got your POKéMON, but it’s\n"
# 346 "data/maps/Route103/scripts.pory"
    .string "already bonded with you.\p"
# 347 "data/maps/Route103/scripts.pory"
    .string "That kind of connection will help a\n"
# 348 "data/maps/Route103/scripts.pory"
    .string "lot… especially now.\p"
# 349 "data/maps/Route103/scripts.pory"
    .string "Ever since that strange comet passed\n"
# 350 "data/maps/Route103/scripts.pory"
    .string "over HOENN, things feel different.\p"
# 351 "data/maps/Route103/scripts.pory"
    .string "ACACIA thinks the answers are out\n"
# 352 "data/maps/Route103/scripts.pory"
    .string "there… somewhere.\p"
# 353 "data/maps/Route103/scripts.pory"
    .string "Come on, let's head back to\n"
# 354 "data/maps/Route103/scripts.pory"
    .string "the LAB.$"
# 355 "data/maps/Route103/scripts.pory"

# 356 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanRoute103Pokemon:
# 357 "data/maps/Route103/scripts.pory"
	.string "ZENNO: Let's see…\p"
# 358 "data/maps/Route103/scripts.pory"
	.string "Some strong POKéMON on ROUTE 103\n"
# 359 "data/maps/Route103/scripts.pory"
	.string "are…$"
# 360 "data/maps/Route103/scripts.pory"

# 361 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanLetsBattle:
# 362 "data/maps/Route103/scripts.pory"
    .string "Hey, {PLAYER}!\p"
# 363 "data/maps/Route103/scripts.pory"
    .string "So you got a POKeMON from PROFESSOR\n"
# 364 "data/maps/Route103/scripts.pory"
    .string "ACACIA too?\p"
# 365 "data/maps/Route103/scripts.pory"
	.string "The PROFESSOR has been very excited\n"
# 366 "data/maps/Route103/scripts.pory"
	.string "about the comet.\p"
# 367 "data/maps/Route103/scripts.pory"
	.string "If she's giving you a POKéMON, it must\n"
# 368 "data/maps/Route103/scripts.pory"
	.string "mean that she's planning something.\p"
# 369 "data/maps/Route103/scripts.pory"
    .string "I'm already training, so how about\n"
# 370 "data/maps/Route103/scripts.pory"
    .string "we battle?\p"
# 371 "data/maps/Route103/scripts.pory"
    .string "Let's see what you can do!$"
# 372 "data/maps/Route103/scripts.pory"

# 373 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanDefeated:
# 374 "data/maps/Route103/scripts.pory"
	.string "Huh, {PLAYER}, you're not too shabby.$"
# 375 "data/maps/Route103/scripts.pory"

# 376 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanTimeToHeadBack:
# 377 "data/maps/Route103/scripts.pory"
    .string "ZENNO: Yeah… I see it now.\p"
# 378 "data/maps/Route103/scripts.pory"
    .string "ACACIA was right to keep an eye on\n"
# 379 "data/maps/Route103/scripts.pory"
    .string "you! You are really good, {PLAYER}!\p"
# 380 "data/maps/Route103/scripts.pory"
    .string "Your POKéMON already trusts you,\n"
# 381 "data/maps/Route103/scripts.pory"
    .string "and you just met it.\p"
# 382 "data/maps/Route103/scripts.pory"
    .string "With that kind of bond, you'll be able\n"
# 383 "data/maps/Route103/scripts.pory"
    .string "to handle any POKéMON.\p"
# 384 "data/maps/Route103/scripts.pory"
    .string "C’mon, let's head back to the LAB.\n"
# 385 "data/maps/Route103/scripts.pory"
    .string "ACACIA will want to hear how it went.\p"
# 386 "data/maps/Route103/scripts.pory"
    .string "And maybe she knows more about that\n"
# 387 "data/maps/Route103/scripts.pory"
    .string "strange comet…$"
# 388 "data/maps/Route103/scripts.pory"

# 389 "data/maps/Route103/scripts.pory"
Route103_Text_ShouldHaveBroughtPotion:
# 390 "data/maps/Route103/scripts.pory"
	.string "I attempted to teach my ZUBAT the\n"
# 391 "data/maps/Route103/scripts.pory"
	.string "hidden machine SURF.\p"
# 392 "data/maps/Route103/scripts.pory"
	.string "I miss him…$"
# 393 "data/maps/Route103/scripts.pory"

# 394 "data/maps/Route103/scripts.pory"
Route103_Text_ShortcutToOldale:
# 395 "data/maps/Route103/scripts.pory"
	.string "If you cross the sea from here,\n"
# 396 "data/maps/Route103/scripts.pory"
	.string "it'll be a shortcut to OLDALE TOWN.\p"
# 397 "data/maps/Route103/scripts.pory"
	.string "Fufufu, that's useful, isn't it?$"
# 398 "data/maps/Route103/scripts.pory"

# 399 "data/maps/Route103/scripts.pory"
Route103_Text_RouteSign:
# 400 "data/maps/Route103/scripts.pory"
	.string "ROUTE 103\n"
# 401 "data/maps/Route103/scripts.pory"
	.string "{DOWN_ARROW} OLDALE TOWN$"
