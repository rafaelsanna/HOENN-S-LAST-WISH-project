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
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL 
# 46 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayRoute103Pokemon, MSGBOX_DEFAULT
# 47 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 48 "data/maps/Route103/scripts.pory"
	closemessage
# 49 "data/maps/Route103/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 50 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_FacePlayer
# 51 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 52 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_ExclamationMark
# 53 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 54 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_Delay48
# 55 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 56 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL 
# 57 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayLetsBattle, MSGBOX_DEFAULT
# 58 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 59 "data/maps/Route103/scripts.pory"
	switch VAR_STARTER_MON
# 60 "data/maps/Route103/scripts.pory"
	case 0, Route103_EventScript_StartMayBattleTreecko
# 61 "data/maps/Route103/scripts.pory"
	case 1, Route103_EventScript_StartMayBattleTorchic
# 62 "data/maps/Route103/scripts.pory"
	case 2, Route103_EventScript_StartMayBattleMudkip
# 63 "data/maps/Route103/scripts.pory"
	end
# 64 "data/maps/Route103/scripts.pory"

# 65 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalBrendan::
# 66 "data/maps/Route103/scripts.pory"
createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL 
# 67 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanRoute103Pokemon, MSGBOX_DEFAULT
# 68 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 69 "data/maps/Route103/scripts.pory"
	closemessage
# 70 "data/maps/Route103/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 71 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_FacePlayer
# 72 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 73 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_ExclamationMark
# 74 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 75 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Common_Movement_Delay48
# 76 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 77 "data/maps/Route103/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL 
# 78 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanLetsBattle, MSGBOX_DEFAULT
# 79 "data/maps/Route103/scripts.pory"
	removefieldmugshot
# 80 "data/maps/Route103/scripts.pory"
	switch VAR_STARTER_MON
# 81 "data/maps/Route103/scripts.pory"
	case 0, Route103_EventScript_StartBrendanBattleTreecko
# 82 "data/maps/Route103/scripts.pory"
	case 1, Route103_EventScript_StartBrendanBattleTorchic
# 83 "data/maps/Route103/scripts.pory"
	case 2, Route103_EventScript_StartBrendanBattleMudkip
# 84 "data/maps/Route103/scripts.pory"
	end
# 85 "data/maps/Route103/scripts.pory"

# 86 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleTreecko::
# 87 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_TREECKO, Route103_Text_MayDefeated
# 88 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 89 "data/maps/Route103/scripts.pory"
	end
# 90 "data/maps/Route103/scripts.pory"

# 91 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleTorchic::
# 92 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_TORCHIC, Route103_Text_MayDefeated
# 93 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 94 "data/maps/Route103/scripts.pory"
	end
# 95 "data/maps/Route103/scripts.pory"

# 96 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartMayBattleMudkip::
# 97 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_103_MUDKIP, Route103_Text_MayDefeated
# 98 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterMayBattle
# 99 "data/maps/Route103/scripts.pory"
	end
# 100 "data/maps/Route103/scripts.pory"

# 101 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleTreecko::
# 102 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_TREECKO, Route103_Text_BrendanDefeated
# 103 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 104 "data/maps/Route103/scripts.pory"
	end
# 105 "data/maps/Route103/scripts.pory"

# 106 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleTorchic::
# 107 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_TORCHIC, Route103_Text_BrendanDefeated
# 108 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 109 "data/maps/Route103/scripts.pory"
	end
# 110 "data/maps/Route103/scripts.pory"

# 111 "data/maps/Route103/scripts.pory"
Route103_EventScript_StartBrendanBattleMudkip::
# 112 "data/maps/Route103/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_103_MUDKIP, Route103_Text_BrendanDefeated
# 113 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_AfterBrendanBattle
# 114 "data/maps/Route103/scripts.pory"
	end
# 115 "data/maps/Route103/scripts.pory"

# 116 "data/maps/Route103/scripts.pory"
Route103_EventScript_AfterMayBattle::
# 117 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MayTimeToHeadBack, MSGBOX_DEFAULT
# 118 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalExit
# 119 "data/maps/Route103/scripts.pory"
	end
# 120 "data/maps/Route103/scripts.pory"

# 121 "data/maps/Route103/scripts.pory"
Route103_EventScript_AfterBrendanBattle::
# 122 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_BrendanTimeToHeadBack, MSGBOX_DEFAULT
# 123 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalExit
# 124 "data/maps/Route103/scripts.pory"
	end
# 125 "data/maps/Route103/scripts.pory"

# 126 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExit::
# 127 "data/maps/Route103/scripts.pory"
	closemessage
# 128 "data/maps/Route103/scripts.pory"
	switch VAR_FACING
# 129 "data/maps/Route103/scripts.pory"
	case DIR_SOUTH, Route103_EventScript_RivalExitFacingSouth
# 130 "data/maps/Route103/scripts.pory"
	case DIR_NORTH, Route103_EventScript_RivalExitFacingNorth
# 131 "data/maps/Route103/scripts.pory"
	case DIR_WEST, Route103_EventScript_RivalExitFacingEastOrWest
# 132 "data/maps/Route103/scripts.pory"
	case DIR_EAST, Route103_EventScript_RivalExitFacingEastOrWest
# 133 "data/maps/Route103/scripts.pory"
	end
# 134 "data/maps/Route103/scripts.pory"

# 135 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingNorth::
# 136 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_PLAYER, Route103_Movement_WatchRivalExitFacingNorth
# 137 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExitFacingNorth1
# 138 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 139 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 140 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExitFacingNorth2
# 141 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 142 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 143 "data/maps/Route103/scripts.pory"
	end
# 144 "data/maps/Route103/scripts.pory"

# 145 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingEastOrWest::
# 146 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_PLAYER, Route103_Movement_WatchRivalExitFacingEastOrWest
# 147 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit1
# 148 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 149 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 150 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit2
# 151 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 152 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 153 "data/maps/Route103/scripts.pory"
	end
# 154 "data/maps/Route103/scripts.pory"

# 155 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalExitFacingSouth::
# 156 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit1
# 157 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 158 "data/maps/Route103/scripts.pory"
	playse SE_LEDGE
# 159 "data/maps/Route103/scripts.pory"
	applymovement LOCALID_ROUTE103_RIVAL, Route103_Movement_RivalExit2
# 160 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 161 "data/maps/Route103/scripts.pory"
	goto Route103_EventScript_RivalEnd
# 162 "data/maps/Route103/scripts.pory"
	end
# 163 "data/maps/Route103/scripts.pory"

# 164 "data/maps/Route103/scripts.pory"
Route103_EventScript_RivalEnd::
# 165 "data/maps/Route103/scripts.pory"
	removeobject LOCALID_ROUTE103_RIVAL
# 166 "data/maps/Route103/scripts.pory"
	setvar VAR_BIRCH_LAB_STATE, 4
# 167 "data/maps/Route103/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 168 "data/maps/Route103/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_ROUTE103
# 169 "data/maps/Route103/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 1
# 170 "data/maps/Route103/scripts.pory"
	clearflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 171 "data/maps/Route103/scripts.pory"
	savebgm MUS_DUMMY
# 172 "data/maps/Route103/scripts.pory"
	fadedefaultbgm
# 173 "data/maps/Route103/scripts.pory"
	releaseall
# 174 "data/maps/Route103/scripts.pory"
	end
# 175 "data/maps/Route103/scripts.pory"

# 176 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExitFacingNorth1:
# 177 "data/maps/Route103/scripts.pory"
	walk_left
# 178 "data/maps/Route103/scripts.pory"
	walk_down
# 179 "data/maps/Route103/scripts.pory"
	step_end
# 180 "data/maps/Route103/scripts.pory"

# 181 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExitFacingNorth2:
# 182 "data/maps/Route103/scripts.pory"
	jump_2_down
# 183 "data/maps/Route103/scripts.pory"
	delay_16
# 184 "data/maps/Route103/scripts.pory"
	walk_down
# 185 "data/maps/Route103/scripts.pory"
	walk_down
# 186 "data/maps/Route103/scripts.pory"
	walk_down
# 187 "data/maps/Route103/scripts.pory"
	walk_down
# 188 "data/maps/Route103/scripts.pory"
	step_end
# 189 "data/maps/Route103/scripts.pory"

# 190 "data/maps/Route103/scripts.pory"
Route103_Movement_WatchRivalExitFacingNorth:
# 191 "data/maps/Route103/scripts.pory"
	delay_16
# 192 "data/maps/Route103/scripts.pory"
	delay_4
# 193 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_left
# 194 "data/maps/Route103/scripts.pory"
	delay_16
# 195 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_down
# 196 "data/maps/Route103/scripts.pory"
	step_end
# 197 "data/maps/Route103/scripts.pory"

# 198 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExit1:
# 199 "data/maps/Route103/scripts.pory"
	walk_down
# 200 "data/maps/Route103/scripts.pory"
	step_end
# 201 "data/maps/Route103/scripts.pory"

# 202 "data/maps/Route103/scripts.pory"
Route103_Movement_RivalExit2:
# 203 "data/maps/Route103/scripts.pory"
	jump_2_down
# 204 "data/maps/Route103/scripts.pory"
	delay_16
# 205 "data/maps/Route103/scripts.pory"
	walk_down
# 206 "data/maps/Route103/scripts.pory"
	walk_down
# 207 "data/maps/Route103/scripts.pory"
	walk_down
# 208 "data/maps/Route103/scripts.pory"
	step_end
# 209 "data/maps/Route103/scripts.pory"

# 210 "data/maps/Route103/scripts.pory"
Route103_Movement_WatchRivalExitFacingEastOrWest:
# 211 "data/maps/Route103/scripts.pory"
	delay_16
# 212 "data/maps/Route103/scripts.pory"
	walk_in_place_faster_down
# 213 "data/maps/Route103/scripts.pory"
	step_end
# 214 "data/maps/Route103/scripts.pory"

# 215 "data/maps/Route103/scripts.pory"
Route103_EventScript_Boy::
# 216 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_ShouldHaveBroughtPotion, MSGBOX_NPC
# 217 "data/maps/Route103/scripts.pory"
	end
# 218 "data/maps/Route103/scripts.pory"

# 219 "data/maps/Route103/scripts.pory"
Route103_EventScript_Man::
# 220 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_ShortcutToOldale, MSGBOX_NPC
# 221 "data/maps/Route103/scripts.pory"
	end
# 222 "data/maps/Route103/scripts.pory"

# 223 "data/maps/Route103/scripts.pory"
Route103_EventScript_RouteSign::
# 224 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_RouteSign, MSGBOX_SIGN
# 225 "data/maps/Route103/scripts.pory"
	end
# 226 "data/maps/Route103/scripts.pory"

# 227 "data/maps/Route103/scripts.pory"
Route103_EventScript_Daisy::
# 228 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_DAISY, Route103_Text_DaisyIntro, Route103_Text_DaisyDefeated
# 229 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_DaisyPostBattle, MSGBOX_AUTOCLOSE
# 230 "data/maps/Route103/scripts.pory"
	end
# 231 "data/maps/Route103/scripts.pory"

# 232 "data/maps/Route103/scripts.pory"
Route103_EventScript_Amy::
# 233 "data/maps/Route103/scripts.pory"
	trainerbattle_double TRAINER_AMY_AND_LIV_1, Route103_Text_AmyIntro, Route103_Text_AmyDefeated, Route103_Text_AmyNotEnoughPokemon, Route102_EventScript_AmyRegisterMatchCallAfterBattle
# 234 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 235 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route102_EventScript_AmyRematch
# 236 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyPostBattle, MSGBOX_AUTOCLOSE
# 237 "data/maps/Route103/scripts.pory"
	end
# 238 "data/maps/Route103/scripts.pory"

# 239 "data/maps/Route103/scripts.pory"
Route102_EventScript_AmyRegisterMatchCallAfterBattle::
# 240 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyLivRegister, MSGBOX_DEFAULT
# 241 "data/maps/Route103/scripts.pory"
	register_matchcall TRAINER_AMY_AND_LIV_1
# 242 "data/maps/Route103/scripts.pory"
	release
# 243 "data/maps/Route103/scripts.pory"
	end
# 244 "data/maps/Route103/scripts.pory"

# 245 "data/maps/Route103/scripts.pory"
Route102_EventScript_AmyRematch::
# 246 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch_double TRAINER_AMY_AND_LIV_1, Route103_Text_AmyRematchIntro, Route103_Text_AmyRematchDefeated, Route103_Text_AmyRematchNotEnoughPokemon
# 247 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyRematchPostBattle, MSGBOX_AUTOCLOSE
# 248 "data/maps/Route103/scripts.pory"
	end
# 249 "data/maps/Route103/scripts.pory"

# 250 "data/maps/Route103/scripts.pory"
Route103_EventScript_Liv::
# 251 "data/maps/Route103/scripts.pory"
	trainerbattle_double TRAINER_AMY_AND_LIV_1, Route103_Text_LivIntro, Route103_Text_LivDefeated, Route103_Text_LivNotEnoughPokemon, Route102_EventScript_LivRegisterMatchCallAfterBattle
# 252 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 253 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route102_EventScript_LivRematch
# 254 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_LivPostBattle, MSGBOX_AUTOCLOSE
# 255 "data/maps/Route103/scripts.pory"
	end
# 256 "data/maps/Route103/scripts.pory"

# 257 "data/maps/Route103/scripts.pory"
Route102_EventScript_LivRegisterMatchCallAfterBattle::
# 258 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AmyLivRegister, MSGBOX_DEFAULT
# 259 "data/maps/Route103/scripts.pory"
	register_matchcall TRAINER_AMY_AND_LIV_1
# 260 "data/maps/Route103/scripts.pory"
	release
# 261 "data/maps/Route103/scripts.pory"
	end
# 262 "data/maps/Route103/scripts.pory"

# 263 "data/maps/Route103/scripts.pory"
Route102_EventScript_LivRematch::
# 264 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch_double TRAINER_AMY_AND_LIV_1, Route103_Text_LivRematchIntro, Route103_Text_LivRematchDefeated, Route103_Text_LivRematchNotEnoughPokemon
# 265 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_LivRematchPostBattle, MSGBOX_AUTOCLOSE
# 266 "data/maps/Route103/scripts.pory"
	end
# 267 "data/maps/Route103/scripts.pory"

# 268 "data/maps/Route103/scripts.pory"
Route103_EventScript_Andrew::
# 269 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_ANDREW, Route103_Text_AndrewIntro, Route103_Text_AndrewDefeated
# 270 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_AndrewPostBattle, MSGBOX_AUTOCLOSE
# 271 "data/maps/Route103/scripts.pory"
	end
# 272 "data/maps/Route103/scripts.pory"

# 273 "data/maps/Route103/scripts.pory"
Route103_EventScript_Miguel::
# 274 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_MIGUEL_1, Route103_Text_MiguelIntro, Route103_Text_MiguelDefeated, Route102_EventScript_MiguelRegisterMatchCallAfterBattle
# 275 "data/maps/Route103/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 276 "data/maps/Route103/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route103_EventScript_MiguelRematch
# 277 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelPostBattle, MSGBOX_DEFAULT
# 278 "data/maps/Route103/scripts.pory"
	release
# 279 "data/maps/Route103/scripts.pory"
	end
# 280 "data/maps/Route103/scripts.pory"

# 281 "data/maps/Route103/scripts.pory"
Route102_EventScript_MiguelRegisterMatchCallAfterBattle::
# 282 "data/maps/Route103/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 283 "data/maps/Route103/scripts.pory"
	waitmovement 0
# 284 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelRegister, MSGBOX_DEFAULT
# 285 "data/maps/Route103/scripts.pory"
	register_matchcall TRAINER_MIGUEL_1
# 286 "data/maps/Route103/scripts.pory"
	release
# 287 "data/maps/Route103/scripts.pory"
	end
# 288 "data/maps/Route103/scripts.pory"

# 289 "data/maps/Route103/scripts.pory"
Route103_EventScript_MiguelRematch::
# 290 "data/maps/Route103/scripts.pory"
	trainerbattle_rematch TRAINER_MIGUEL_1, Route103_Text_MiguelRematchIntro, Route103_Text_MiguelRematchDefeated
# 291 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MiguelRematchPostBattle, MSGBOX_AUTOCLOSE
# 292 "data/maps/Route103/scripts.pory"
	end
# 293 "data/maps/Route103/scripts.pory"

# 294 "data/maps/Route103/scripts.pory"
Route103_EventScript_Marcos::
# 295 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_MARCOS, Route103_Text_MarcosIntro, Route103_Text_MarcosDefeated
# 296 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_MarcosPostBattle, MSGBOX_AUTOCLOSE
# 297 "data/maps/Route103/scripts.pory"
	end
# 298 "data/maps/Route103/scripts.pory"

# 299 "data/maps/Route103/scripts.pory"
Route103_EventScript_Rhett::
# 300 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_RHETT, Route103_Text_RhettIntro, Route103_Text_RhettDefeated
# 301 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_RhettPostBattle, MSGBOX_AUTOCLOSE
# 302 "data/maps/Route103/scripts.pory"
	end
# 303 "data/maps/Route103/scripts.pory"

# 304 "data/maps/Route103/scripts.pory"
Route103_EventScript_Pete::
# 305 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_PETE, Route103_Text_PeteIntro, Route103_Text_PeteDefeated
# 306 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_PetePostBattle, MSGBOX_AUTOCLOSE
# 307 "data/maps/Route103/scripts.pory"
	end
# 308 "data/maps/Route103/scripts.pory"

# 309 "data/maps/Route103/scripts.pory"
Route103_EventScript_Isabelle::
# 310 "data/maps/Route103/scripts.pory"
	trainerbattle_single TRAINER_ISABELLE, Route103_Text_IsabelleIntro, Route103_Text_IsabelleDefeated
# 311 "data/maps/Route103/scripts.pory"
	msgbox Route103_Text_IsabellePostBattle, MSGBOX_AUTOCLOSE
# 312 "data/maps/Route103/scripts.pory"
	end
# 313 "data/maps/Route103/scripts.pory"

# 314 "data/maps/Route103/scripts.pory"
Route103_Text_MayRoute103Pokemon:
# 315 "data/maps/Route103/scripts.pory"
	.string "ZINNIA: Let's see…\p"
# 316 "data/maps/Route103/scripts.pory"
	.string "Some strong POKéMON on ROUTE 103\n"
# 317 "data/maps/Route103/scripts.pory"
	.string "are…$"
# 318 "data/maps/Route103/scripts.pory"

# 319 "data/maps/Route103/scripts.pory"
Route103_Text_MayLetsBattle:
# 320 "data/maps/Route103/scripts.pory"
    .string "Oh, hi, {PLAYER}{KUN}!\p"
# 321 "data/maps/Route103/scripts.pory"
    .string "So you got a POKeMON from PROFESSOR\n"
# 322 "data/maps/Route103/scripts.pory"
    .string "ACACIA too?\p"
# 323 "data/maps/Route103/scripts.pory"
	.string "The PROFESSOR has been very excited\n"
# 324 "data/maps/Route103/scripts.pory"
	.string "about the comet.\p"
# 325 "data/maps/Route103/scripts.pory"
	.string "If she's giving you a POKéMON, it must\n"
# 326 "data/maps/Route103/scripts.pory"
	.string "mean that she's planning something.\p"
# 327 "data/maps/Route103/scripts.pory"
    .string "I'm already training, so how about\n"
# 328 "data/maps/Route103/scripts.pory"
    .string "we battle?\p"
# 329 "data/maps/Route103/scripts.pory"
    .string "Let's see what you can do!$"
# 330 "data/maps/Route103/scripts.pory"

# 331 "data/maps/Route103/scripts.pory"
Route103_Text_MayDefeated:
# 332 "data/maps/Route103/scripts.pory"
	.string "Wow! That's great!\n"
# 333 "data/maps/Route103/scripts.pory"
	.string "{PLAYER}{KUN}, you're pretty good!$"
# 334 "data/maps/Route103/scripts.pory"

# 335 "data/maps/Route103/scripts.pory"
Route103_Text_MayTimeToHeadBack:
# 336 "data/maps/Route103/scripts.pory"
    .string "ZINNIA: Ah… now I get why\n"
# 337 "data/maps/Route103/scripts.pory"
    .string "PROFESSOR ACACIA noticed you.\p"
# 338 "data/maps/Route103/scripts.pory"
    .string "You just got your POKéMON, but it’s\n"
# 339 "data/maps/Route103/scripts.pory"
    .string "already bonded with you.\p"
# 340 "data/maps/Route103/scripts.pory"
    .string "That kind of connection will help a\n"
# 341 "data/maps/Route103/scripts.pory"
    .string "lot… especially now.\p"
# 342 "data/maps/Route103/scripts.pory"
    .string "Ever since that strange comet passed\n"
# 343 "data/maps/Route103/scripts.pory"
    .string "over HOENN, things feel different.\p"
# 344 "data/maps/Route103/scripts.pory"
    .string "ACACIA thinks the answers are out\n"
# 345 "data/maps/Route103/scripts.pory"
    .string "there… somewhere.\p"
# 346 "data/maps/Route103/scripts.pory"
    .string "Come on, let's head back to\n"
# 347 "data/maps/Route103/scripts.pory"
    .string "the LAB.$"
# 348 "data/maps/Route103/scripts.pory"

# 349 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanRoute103Pokemon:
# 350 "data/maps/Route103/scripts.pory"
	.string "ZENNO: Let's see…\p"
# 351 "data/maps/Route103/scripts.pory"
	.string "Some strong POKéMON on ROUTE 103\n"
# 352 "data/maps/Route103/scripts.pory"
	.string "are…$"
# 353 "data/maps/Route103/scripts.pory"

# 354 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanLetsBattle:
# 355 "data/maps/Route103/scripts.pory"
    .string "Hey, {PLAYER}!\p"
# 356 "data/maps/Route103/scripts.pory"
    .string "So you got a POKeMON from PROFESSOR\n"
# 357 "data/maps/Route103/scripts.pory"
    .string "ACACIA too?\p"
# 358 "data/maps/Route103/scripts.pory"
	.string "The PROFESSOR has been very excited\n"
# 359 "data/maps/Route103/scripts.pory"
	.string "about the comet.\p"
# 360 "data/maps/Route103/scripts.pory"
	.string "If she's giving you a POKéMON, it must\n"
# 361 "data/maps/Route103/scripts.pory"
	.string "mean that she's planning something.\p"
# 362 "data/maps/Route103/scripts.pory"
    .string "I'm already training, so how about\n"
# 363 "data/maps/Route103/scripts.pory"
    .string "we battle?\p"
# 364 "data/maps/Route103/scripts.pory"
    .string "Let's see what you can do!$"
# 365 "data/maps/Route103/scripts.pory"

# 366 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanDefeated:
# 367 "data/maps/Route103/scripts.pory"
	.string "Huh, {PLAYER}, you're not too shabby.$"
# 368 "data/maps/Route103/scripts.pory"

# 369 "data/maps/Route103/scripts.pory"
Route103_Text_BrendanTimeToHeadBack:
# 370 "data/maps/Route103/scripts.pory"
    .string "ZENNO: Yeah… I see it now.\p"
# 371 "data/maps/Route103/scripts.pory"
    .string "ACACIA was right to keep an eye on\n"
# 372 "data/maps/Route103/scripts.pory"
    .string "you! You are really good, {PLAYER}!\p"
# 373 "data/maps/Route103/scripts.pory"
    .string "Your POKéMON already trusts you,\n"
# 374 "data/maps/Route103/scripts.pory"
    .string "and you just met it.\p"
# 375 "data/maps/Route103/scripts.pory"
    .string "With that kind of bond, you'll be able\n"
# 376 "data/maps/Route103/scripts.pory"
    .string "to handle any POKéMON.\p"
# 377 "data/maps/Route103/scripts.pory"
    .string "C’mon, let's head back to the LAB.\n"
# 378 "data/maps/Route103/scripts.pory"
    .string "ACACIA will want to hear how it went.\p"
# 379 "data/maps/Route103/scripts.pory"
    .string "And maybe she knows more about that\n"
# 380 "data/maps/Route103/scripts.pory"
    .string "strange comet…$"
# 381 "data/maps/Route103/scripts.pory"

# 382 "data/maps/Route103/scripts.pory"
Route103_Text_ShouldHaveBroughtPotion:
# 383 "data/maps/Route103/scripts.pory"
	.string "I attempted to teach my ZUBAT the\n"
# 384 "data/maps/Route103/scripts.pory"
	.string "hidden machine SURF.\p"
# 385 "data/maps/Route103/scripts.pory"
	.string "I miss him…$"
# 386 "data/maps/Route103/scripts.pory"

# 387 "data/maps/Route103/scripts.pory"
Route103_Text_ShortcutToOldale:
# 388 "data/maps/Route103/scripts.pory"
	.string "If you cross the sea from here,\n"
# 389 "data/maps/Route103/scripts.pory"
	.string "it'll be a shortcut to OLDALE TOWN.\p"
# 390 "data/maps/Route103/scripts.pory"
	.string "Fufufu, that's useful, isn't it?$"
# 391 "data/maps/Route103/scripts.pory"

# 392 "data/maps/Route103/scripts.pory"
Route103_Text_RouteSign:
# 393 "data/maps/Route103/scripts.pory"
	.string "ROUTE 103\n"
# 394 "data/maps/Route103/scripts.pory"
	.string "{DOWN_ARROW} OLDALE TOWN$"
