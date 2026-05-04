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
	end
# 11 "data/maps/Route103/scripts.pory"

# 12 "data/maps/Route103/scripts.pory"
Route103_OnLoad:
# 13 "data/maps/Route103/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, Route103_EventScript_OpenAlteringCave
# 14 "data/maps/Route103/scripts.pory"
	end
# 15 "data/maps/Route103/scripts.pory"

# 16 "data/maps/Route103/scripts.pory"
Route103_EventScript_WingullOverworld::
# 17 "data/maps/Route103/scripts.pory"
	lock
# 18 "data/maps/Route103/scripts.pory"
	faceplayer
# 19 "data/maps/Route103/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 20 "data/maps/Route103/scripts.pory"
	waitmoncry
# 21 "data/maps/Route103/scripts.pory"
	release
# 22 "data/maps/Route103/scripts.pory"
	end
# 23 "data/maps/Route103/scripts.pory"

# 24 "data/maps/Route103/scripts.pory"
Route103_EventScript_CorphishOverworld::
# 25 "data/maps/Route103/scripts.pory"
	lock
# 26 "data/maps/Route103/scripts.pory"
	faceplayer
# 27 "data/maps/Route103/scripts.pory"
	playmoncry SPECIES_CORPHISH, CRY_MODE_NORMAL
# 28 "data/maps/Route103/scripts.pory"
	waitmoncry
# 29 "data/maps/Route103/scripts.pory"
	release
# 30 "data/maps/Route103/scripts.pory"
	end
# 31 "data/maps/Route103/scripts.pory"

# 32 "data/maps/Route103/scripts.pory"
Route103_EventScript_OpenAlteringCave::
# 33 "data/maps/Route103/scripts.pory"
	setmetatile 45, 5, METATILE_General_CaveEntrance_Top, TRUE
# 34 "data/maps/Route103/scripts.pory"
	setmetatile 45, 6, METATILE_General_CaveEntrance_Bottom, FALSE
# 35 "data/maps/Route103/scripts.pory"
	return
# 36 "data/maps/Route103/scripts.pory"

# 37 "data/maps/Route103/scripts.pory"
Route103_EventScript_Rival::
# 38 "data/maps/Route103/scripts.pory"
	lockall
# 39 "data/maps/Route103/scripts.pory"
	checkplayergender
# 40 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route103_EventScript_RivalMay
# 41 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route103_EventScript_RivalBrendan
# 42 "data/maps/Route103/scripts.pory"
	end
# 43 "data/maps/Route103/scripts.pory"

# 44 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalMay::
# 45 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayRoute103Pokemon, MSGBOX_DEFAULT
# 46 "data/maps/Route103/scripts.pory"
	closemessage
# 47 "data/maps/Route103/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 48 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_FacePlayer
# 49 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 50 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_ExclamationMark
# 51 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 52 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_Delay48
# 53 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 54 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayLetsBattle, MSGBOX_DEFAULT
# 55 "data/maps/Route103/scripts.pory"
	switch VAR_STARTER_MON
# 56 "data/maps/Route103/scripts.pory"
	case 0, Route103_EventScript_StartMayBattleTreecko
# 57 "data/maps/Route103/scripts.pory"
	case 1, Route103_EventScript_StartMayBattleTorchic
# 58 "data/maps/Route103/scripts.pory"
	case 2, Route103_EventScript_StartMayBattleMudkip
# 59 "data/maps/Route103/scripts.pory"
	end
# 60 "data/maps/Route103/scripts.pory"

# 61 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalBrendan::
# 62 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanRoute103Pokemon, MSGBOX_DEFAULT
# 63 "data/maps/Route103/scripts.pory"
	closemessage
# 64 "data/maps/Route103/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 65 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_FacePlayer
# 66 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 67 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_ExclamationMark
# 68 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 69 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_Delay48
# 70 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 71 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanLetsBattle, MSGBOX_DEFAULT
# 72 "data/maps/Route103/scripts.pory"
	switch VAR_STARTER_MON
# 73 "data/maps/Route103/scripts.pory"
	case 0, Route103_EventScript_StartBrendanBattleTreecko
# 74 "data/maps/Route103/scripts.pory"
	case 1, Route103_EventScript_StartBrendanBattleTorchic
# 75 "data/maps/Route103/scripts.pory"
	case 2, Route103_EventScript_StartBrendanBattleMudkip
# 76 "data/maps/Route103/scripts.pory"
	end
# 77 "data/maps/Route103/scripts.pory"

# 78 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleTreecko::
# 79 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_TREECKO, Route103_Text_MayDefeated
# 80 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 81 "data/maps/Route103/scripts.pory"
	end
# 82 "data/maps/Route103/scripts.pory"

# 83 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleTorchic::
# 84 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_TORCHIC, Route103_Text_MayDefeated
# 85 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 86 "data/maps/Route103/scripts.pory"
	end
# 87 "data/maps/Route103/scripts.pory"

# 88 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleMudkip::
# 89 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_MUDKIP, Route103_Text_MayDefeated
# 90 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 91 "data/maps/Route103/scripts.pory"
	end
# 92 "data/maps/Route103/scripts.pory"

# 93 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleTreecko::
# 94 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_TREECKO, Route103_Text_BrendanDefeated
# 95 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 96 "data/maps/Route103/scripts.pory"
	end
# 97 "data/maps/Route103/scripts.pory"

# 98 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleTorchic::
# 99 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_TORCHIC, Route103_Text_BrendanDefeated
# 100 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 101 "data/maps/Route103/scripts.pory"
	end
# 102 "data/maps/Route103/scripts.pory"

# 103 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleMudkip::
# 104 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_MUDKIP, Route103_Text_BrendanDefeated
# 105 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 106 "data/maps/Route103/scripts.pory"
	end
# 107 "data/maps/Route103/scripts.pory"

# 108 "data/maps/Route103/scripts.pory"
Route103_EventScript_AfterMayBattle::
# 109 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayTimeToHeadBack, MSGBOX_DEFAULT
# 110 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalExit
# 111 "data/maps/Route103/scripts.pory"
	end
# 112 "data/maps/Route103/scripts.pory"

# 113 "data/maps/Route103/scripts.pory"
Route103_EventScript_AfterBrendanBattle::
# 114 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanTimeToHeadBack, MSGBOX_DEFAULT
# 115 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalExit
# 116 "data/maps/Route103/scripts.pory"
	end
# 117 "data/maps/Route103/scripts.pory"

# 118 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExit::
# 119 "data/maps/Route103/scripts.pory"
	closemessage
# 120 "data/maps/Route103/scripts.pory"
	switch VAR_FACING
# 121 "data/maps/Route103/scripts.pory"
	case DIR_SOUTH, Route103_EventScript_RivalExitFacingSouth
# 122 "data/maps/Route103/scripts.pory"
	case DIR_NORTH, Route103_EventScript_RivalExitFacingNorth
# 123 "data/maps/Route103/scripts.pory"
	case DIR_WEST, Route103_EventScript_RivalExitFacingEastOrWest
# 124 "data/maps/Route103/scripts.pory"
	case DIR_EAST, Route103_EventScript_RivalExitFacingEastOrWest
# 125 "data/maps/Route103/scripts.pory"
	end
# 126 "data/maps/Route103/scripts.pory"

# 127 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingNorth::
# 128 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_PLAYER, Route103_Movement_WatchRivalExitFacingNorth
# 129 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExitFacingNorth1
# 130 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 131 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 132 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExitFacingNorth2
# 133 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 134 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 135 "data/maps/Route103/scripts.pory"
	end
# 136 "data/maps/Route103/scripts.pory"

# 137 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingEastOrWest::
# 138 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_PLAYER, Route103_Movement_WatchRivalExitFacingEastOrWest
# 139 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit1
# 140 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 141 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 142 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit2
# 143 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 144 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 145 "data/maps/Route103/scripts.pory"
	end
# 146 "data/maps/Route103/scripts.pory"

# 147 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingSouth::
# 148 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit1
# 149 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 150 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 151 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit2
# 152 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 153 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 154 "data/maps/Route103/scripts.pory"
	end
# 155 "data/maps/Route103/scripts.pory"

# 156 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalEnd::
# 157 "data/maps/Route103/scripts.pory"
	removeobject LOCALID_ROUTE103_RIVAL
# 158 "data/maps/Route103/scripts.pory"
	setvar VAR_BIRCH_LAB_STATE, 4
# 159 "data/maps/Route103/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 160 "data/maps/Route103/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE103
# 161 "data/maps/Route103/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 1
# 162 "data/maps/Route103/scripts.pory"
	clearflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 163 "data/maps/Route103/scripts.pory"
	savebgm MUS_DUMMY
# 164 "data/maps/Route103/scripts.pory"
	fadedefaultbgm
# 165 "data/maps/Route103/scripts.pory"
	releaseall
# 166 "data/maps/Route103/scripts.pory"
	end
# 167 "data/maps/Route103/scripts.pory"

# 168 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExitFacingNorth1:
# 169 "data/maps/Route103/scripts.pory"
	walk_left
# 170 "data/maps/Route103/scripts.pory"
	walk_down
# 171 "data/maps/Route103/scripts.pory"
	step_end
# 172 "data/maps/Route103/scripts.pory"

# 173 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExitFacingNorth2:
# 174 "data/maps/Route103/scripts.pory"
	jump_2_down
# 175 "data/maps/Route103/scripts.pory"
	delay_16
# 176 "data/maps/Route103/scripts.pory"
	walk_down
# 177 "data/maps/Route103/scripts.pory"
	walk_down
# 178 "data/maps/Route103/scripts.pory"
	walk_down
# 179 "data/maps/Route103/scripts.pory"
	walk_down
# 180 "data/maps/Route103/scripts.pory"
	step_end
# 181 "data/maps/Route103/scripts.pory"

# 182 "data/maps/Route103/scripts.pory"
Route103_Movement_WatchRivalExitFacingNorth:
# 183 "data/maps/Route103/scripts.pory"
	delay_16
# 184 "data/maps/Route103/scripts.pory"
	delay_4
# 185 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_left
# 186 "data/maps/Route103/scripts.pory"
	delay_16
# 187 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_down
# 188 "data/maps/Route103/scripts.pory"
	step_end
# 189 "data/maps/Route103/scripts.pory"

# 190 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExit1:
# 191 "data/maps/Route103/scripts.pory"
	walk_down
# 192 "data/maps/Route103/scripts.pory"
	step_end
# 193 "data/maps/Route103/scripts.pory"

# 194 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExit2:
# 195 "data/maps/Route103/scripts.pory"
	jump_2_down
# 196 "data/maps/Route103/scripts.pory"
	delay_16
# 197 "data/maps/Route103/scripts.pory"
	walk_down
# 198 "data/maps/Route103/scripts.pory"
	walk_down
# 199 "data/maps/Route103/scripts.pory"
	walk_down
# 200 "data/maps/Route103/scripts.pory"
	step_end
# 201 "data/maps/Route103/scripts.pory"

# 202 "data/maps/Route103/scripts.pory"
Route103_Movement_WatchRivalExitFacingEastOrWest:
# 203 "data/maps/Route103/scripts.pory"
	delay_16
# 204 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_down
# 205 "data/maps/Route103/scripts.pory"
	step_end
# 206 "data/maps/Route103/scripts.pory"

# 207 "data/maps/Route103/scripts.pory"
Route103_EventScript_Boy::
# 208 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_ShouldHaveBroughtPotion, MSGBOX_NPC
# 209 "data/maps/Route103/scripts.pory"
	end
# 210 "data/maps/Route103/scripts.pory"

# 211 "data/maps/Route103/scripts.pory"
Route103_EventScript_Man::
# 212 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_ShortcutToOldale, MSGBOX_NPC
# 213 "data/maps/Route103/scripts.pory"
	end
# 214 "data/maps/Route103/scripts.pory"

# 215 "data/maps/Route103/scripts.pory"
Route103_EventScript_RouteSign::
# 216 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_RouteSign, MSGBOX_SIGN
# 217 "data/maps/Route103/scripts.pory"
	end
# 218 "data/maps/Route103/scripts.pory"

# 219 "data/maps/Route103/scripts.pory"
Route103_EventScript_Daisy::
# 220 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_DAISY, Route103_Text_DaisyIntro, Route103_Text_DaisyDefeated
# 221 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_DaisyPostBattle, MSGBOX_AUTOCLOSE
# 222 "data/maps/Route103/scripts.pory"
	end
# 223 "data/maps/Route103/scripts.pory"

# 224 "data/maps/Route103/scripts.pory"
Route103_EventScript_Amy::
# 225 "data/maps/Route103/scripts.pory"
	trainerbattle_double TRAINER_AMY_AND_LIV_1, Route103_Text_AmyIntro, Route103_Text_AmyDefeated, Route103_Text_AmyNotEnoughPokemon, Route102_EventScript_AmyRegisterMatchCallAfterBattle
# 226 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 227 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route102_EventScript_AmyRematch
# 228 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyPostBattle, MSGBOX_AUTOCLOSE
# 229 "data/maps/Route103/scripts.pory"
	end
# 230 "data/maps/Route103/scripts.pory"

# 231 "data/maps/Route103/scripts.pory"
Route102_EventScript_AmyRegisterMatchCallAfterBattle::
# 232 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyLivRegister, MSGBOX_DEFAULT
# 233 "data/maps/Route103/scripts.pory"
	register_matchcall TRAINER_AMY_AND_LIV_1
# 234 "data/maps/Route103/scripts.pory"
	release
# 235 "data/maps/Route103/scripts.pory"
	end
# 236 "data/maps/Route103/scripts.pory"

# 237 "data/maps/Route103/scripts.pory"
Route102_EventScript_AmyRematch::
# 238 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch_double TRAINER_AMY_AND_LIV_1, Route103_Text_AmyRematchIntro, Route103_Text_AmyRematchDefeated, Route103_Text_AmyRematchNotEnoughPokemon
# 239 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyRematchPostBattle, MSGBOX_AUTOCLOSE
# 240 "data/maps/Route103/scripts.pory"
	end
# 241 "data/maps/Route103/scripts.pory"

# 242 "data/maps/Route103/scripts.pory"
Route103_EventScript_Liv::
# 243 "data/maps/Route103/scripts.pory"
	trainerbattle_double TRAINER_AMY_AND_LIV_1, Route103_Text_LivIntro, Route103_Text_LivDefeated, Route103_Text_LivNotEnoughPokemon, Route102_EventScript_LivRegisterMatchCallAfterBattle
# 244 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 245 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route102_EventScript_LivRematch
# 246 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_LivPostBattle, MSGBOX_AUTOCLOSE
# 247 "data/maps/Route103/scripts.pory"
	end
# 248 "data/maps/Route103/scripts.pory"

# 249 "data/maps/Route103/scripts.pory"
Route102_EventScript_LivRegisterMatchCallAfterBattle::
# 250 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyLivRegister, MSGBOX_DEFAULT
# 251 "data/maps/Route103/scripts.pory"
	register_matchcall TRAINER_AMY_AND_LIV_1
# 252 "data/maps/Route103/scripts.pory"
	release
# 253 "data/maps/Route103/scripts.pory"
	end
# 254 "data/maps/Route103/scripts.pory"

# 255 "data/maps/Route103/scripts.pory"
Route102_EventScript_LivRematch::
# 256 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch_double TRAINER_AMY_AND_LIV_1, Route103_Text_LivRematchIntro, Route103_Text_LivRematchDefeated, Route103_Text_LivRematchNotEnoughPokemon
# 257 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_LivRematchPostBattle, MSGBOX_AUTOCLOSE
# 258 "data/maps/Route103/scripts.pory"
	end
# 259 "data/maps/Route103/scripts.pory"

# 260 "data/maps/Route103/scripts.pory"
Route103_EventScript_Andrew::
# 261 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_ANDREW, Route103_Text_AndrewIntro, Route103_Text_AndrewDefeated
# 262 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AndrewPostBattle, MSGBOX_AUTOCLOSE
# 263 "data/maps/Route103/scripts.pory"
	end
# 264 "data/maps/Route103/scripts.pory"

# 265 "data/maps/Route103/scripts.pory"
Route103_EventScript_Miguel::
# 266 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_MIGUEL_1, Route103_Text_MiguelIntro, Route103_Text_MiguelDefeated, Route102_EventScript_MiguelRegisterMatchCallAfterBattle
# 267 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 268 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route103_EventScript_MiguelRematch
# 269 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelPostBattle, MSGBOX_DEFAULT
# 270 "data/maps/Route103/scripts.pory"
	release
# 271 "data/maps/Route103/scripts.pory"
	end
# 272 "data/maps/Route103/scripts.pory"

# 273 "data/maps/Route103/scripts.pory"
Route102_EventScript_MiguelRegisterMatchCallAfterBattle::
# 274 "data/maps/Route103/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 275 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 276 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelRegister, MSGBOX_DEFAULT
# 277 "data/maps/Route103/scripts.pory"
	register_matchcall TRAINER_MIGUEL_1
# 278 "data/maps/Route103/scripts.pory"
	release
# 279 "data/maps/Route103/scripts.pory"
	end
# 280 "data/maps/Route103/scripts.pory"

# 281 "data/maps/Route103/scripts.pory"
Route103_EventScript_MiguelRematch::
# 282 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch TRAINER_MIGUEL_1, Route103_Text_MiguelRematchIntro, Route103_Text_MiguelRematchDefeated
# 283 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelRematchPostBattle, MSGBOX_AUTOCLOSE
# 284 "data/maps/Route103/scripts.pory"
	end
# 285 "data/maps/Route103/scripts.pory"

# 286 "data/maps/Route103/scripts.pory"
Route103_EventScript_Marcos::
# 287 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_MARCOS, Route103_Text_MarcosIntro, Route103_Text_MarcosDefeated
# 288 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MarcosPostBattle, MSGBOX_AUTOCLOSE
# 289 "data/maps/Route103/scripts.pory"
	end
# 290 "data/maps/Route103/scripts.pory"

# 291 "data/maps/Route103/scripts.pory"
Route103_EventScript_Rhett::
# 292 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_RHETT, Route103_Text_RhettIntro, Route103_Text_RhettDefeated
# 293 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_RhettPostBattle, MSGBOX_AUTOCLOSE
# 294 "data/maps/Route103/scripts.pory"
	end
# 295 "data/maps/Route103/scripts.pory"

# 296 "data/maps/Route103/scripts.pory"
Route103_EventScript_Pete::
# 297 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_PETE, Route103_Text_PeteIntro, Route103_Text_PeteDefeated
# 298 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_PetePostBattle, MSGBOX_AUTOCLOSE
# 299 "data/maps/Route103/scripts.pory"
	end
# 300 "data/maps/Route103/scripts.pory"

# 301 "data/maps/Route103/scripts.pory"
Route103_EventScript_Isabelle::
# 302 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_ISABELLE, Route103_Text_IsabelleIntro, Route103_Text_IsabelleDefeated
# 303 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_IsabellePostBattle, MSGBOX_AUTOCLOSE
# 304 "data/maps/Route103/scripts.pory"
	end
# 305 "data/maps/Route103/scripts.pory"

# 306 "data/maps/Route103/scripts.pory"
Route103_Text_MayRoute103Pokemon:
# 307 "data/maps/Route103/scripts.pory"
	.string "ZINNIA: Let's see… The POKéMON found\n"
# 308 "data/maps/Route103/scripts.pory"
	.string "on ROUTE 103 include…$"
# 309 "data/maps/Route103/scripts.pory"

# 310 "data/maps/Route103/scripts.pory"
Route103_Text_MayLetsBattle:
# 311 "data/maps/Route103/scripts.pory"
    .string "Oh, hi, {PLAYER}{KUN}!\p"
# 312 "data/maps/Route103/scripts.pory"
    .string "So you got a POKeMON from\n"
# 313 "data/maps/Route103/scripts.pory"
    .string "Professor ACACIA too?\p"
# 314 "data/maps/Route103/scripts.pory"
    .string "Makes sense... after that strange\n"
# 315 "data/maps/Route103/scripts.pory"
    .string "comet passed over HOENN,\n"
# 316 "data/maps/Route103/scripts.pory"
    .string "she has been studying it closely.\p"
# 317 "data/maps/Route103/scripts.pory"
    .string "If she is helping you as well,\n"
# 318 "data/maps/Route103/scripts.pory"
    .string "then something big must be ahead.\p"
# 319 "data/maps/Route103/scripts.pory"
    .string "I'm already training, so how about\n"
# 320 "data/maps/Route103/scripts.pory"
    .string "we battle?\p"
# 321 "data/maps/Route103/scripts.pory"
    .string "Let's see what you can do!$"
# 322 "data/maps/Route103/scripts.pory"

# 323 "data/maps/Route103/scripts.pory"
Route103_Text_MayDefeated:
# 324 "data/maps/Route103/scripts.pory"
	.string "Wow! That's great!\n"
# 325 "data/maps/Route103/scripts.pory"
	.string "{PLAYER}{KUN}, you're pretty good!$"
# 326 "data/maps/Route103/scripts.pory"

# 327 "data/maps/Route103/scripts.pory"
Route103_Text_MayTimeToHeadBack:
# 328 "data/maps/Route103/scripts.pory"
    .string "ZINNIA: Ah… now I get why\n"
# 329 "data/maps/Route103/scripts.pory"
    .string "Professor ACACIA noticed you.\p"
# 330 "data/maps/Route103/scripts.pory"
    .string "You just got your POKéMON, but it’s\n"
# 331 "data/maps/Route103/scripts.pory"
    .string "already bonded with you.\p"
# 332 "data/maps/Route103/scripts.pory"
    .string "That kind of connection will help a\n"
# 333 "data/maps/Route103/scripts.pory"
    .string "lot… especially now.\p"
# 334 "data/maps/Route103/scripts.pory"
    .string "Ever since that strange comet passed\n"
# 335 "data/maps/Route103/scripts.pory"
    .string "over HOENN, things feel different.\p"
# 336 "data/maps/Route103/scripts.pory"
    .string "ACACIA thinks the answers are out\n"
# 337 "data/maps/Route103/scripts.pory"
    .string "there… somewhere.\p"
# 338 "data/maps/Route103/scripts.pory"
    .string "Come on, let's head back to\n"
# 339 "data/maps/Route103/scripts.pory"
    .string "the LAB.$"
# 340 "data/maps/Route103/scripts.pory"

# 341 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanRoute103Pokemon:
# 342 "data/maps/Route103/scripts.pory"
	.string "ZENNO: Okay, so it's this one and\n"
# 343 "data/maps/Route103/scripts.pory"
	.string "that one that live on ROUTE 103…$"
# 344 "data/maps/Route103/scripts.pory"

# 345 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanLetsBattle:
# 346 "data/maps/Route103/scripts.pory"
    .string "Hey, {PLAYER}!\n"
# 347 "data/maps/Route103/scripts.pory"
    .string "So ACACIA gave you a POKéMON too?\p"
# 348 "data/maps/Route103/scripts.pory"
    .string "Makes sense… After that weird\n"
# 349 "data/maps/Route103/scripts.pory"
    .string "comet passed, she's been trying to\l"
# 350 "data/maps/Route103/scripts.pory"
    .string "learn everything she can.\p"
# 351 "data/maps/Route103/scripts.pory"
    .string "And if she picked you, you must have\n"
# 352 "data/maps/Route103/scripts.pory"
    .string "something special.\p"
# 353 "data/maps/Route103/scripts.pory"
    .string "Since we're here, want a quick battle?\n"
# 354 "data/maps/Route103/scripts.pory"
    .string "It’s the best way to get started!$"
# 355 "data/maps/Route103/scripts.pory"

# 356 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanDefeated:
# 357 "data/maps/Route103/scripts.pory"
	.string "Huh, {PLAYER}, you're not too shabby.$"
# 358 "data/maps/Route103/scripts.pory"

# 359 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanTimeToHeadBack:
# 360 "data/maps/Route103/scripts.pory"
    .string "ZENNO: Yeah… I see it now.\p"
# 361 "data/maps/Route103/scripts.pory"
    .string "ACACIA was right to keep an eye on\n"
# 362 "data/maps/Route103/scripts.pory"
    .string "you! You are really good, {PLAYER}!\p"
# 363 "data/maps/Route103/scripts.pory"
    .string "Your POKéMON already trusts you,\n"
# 364 "data/maps/Route103/scripts.pory"
    .string "and you just met it.\p"
# 365 "data/maps/Route103/scripts.pory"
    .string "With that kind of bond, you'll be able\n"
# 366 "data/maps/Route103/scripts.pory"
    .string "to handle any POKéMON.\p"
# 367 "data/maps/Route103/scripts.pory"
    .string "C’mon, let's head back to the LAB.\n"
# 368 "data/maps/Route103/scripts.pory"
    .string "ACACIA will want to hear how it went.\p"
# 369 "data/maps/Route103/scripts.pory"
    .string "And maybe she knows more about that\n"
# 370 "data/maps/Route103/scripts.pory"
    .string "strange comet…$"
# 371 "data/maps/Route103/scripts.pory"

# 372 "data/maps/Route103/scripts.pory"
Route103_Text_ShouldHaveBroughtPotion:
# 373 "data/maps/Route103/scripts.pory"
	.string "I attempted to teach my ZUBAT the\n"
# 374 "data/maps/Route103/scripts.pory"
	.string "hidden machine SURF.\p"
# 375 "data/maps/Route103/scripts.pory"
	.string "I miss him…$"
# 376 "data/maps/Route103/scripts.pory"

# 377 "data/maps/Route103/scripts.pory"
Route103_Text_ShortcutToOldale:
# 378 "data/maps/Route103/scripts.pory"
	.string "If you cross the sea from here,\n"
# 379 "data/maps/Route103/scripts.pory"
	.string "it'll be a shortcut to OLDALE TOWN.\p"
# 380 "data/maps/Route103/scripts.pory"
	.string "Fufufu, that's useful, isn't it?$"
# 381 "data/maps/Route103/scripts.pory"

# 382 "data/maps/Route103/scripts.pory"
Route103_Text_RouteSign:
# 383 "data/maps/Route103/scripts.pory"
	.string "ROUTE 103\n"
# 384 "data/maps/Route103/scripts.pory"
	.string "{DOWN_ARROW} OLDALE TOWN$"
