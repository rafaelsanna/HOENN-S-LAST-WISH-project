# 1 "data/maps/Route128/scripts.pory"

# 2 "data/maps/Route128/scripts.pory"
Route128_MapScripts::
# 3 "data/maps/Route128/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route128_OnTransition
# 4 "data/maps/Route128/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route128_OnFrame
# 5 "data/maps/Route128/scripts.pory"
	.byte 0
# 6 "data/maps/Route128/scripts.pory"

# 7 "data/maps/Route128/scripts.pory"
Route128_OnTransition:
# 8 "data/maps/Route128/scripts.pory"
	call_if_set FLAG_SYS_WEATHER_CTRL, Common_EventScript_SetAbnormalWeather
# 9 "data/maps/Route128/scripts.pory"
	end
# 10 "data/maps/Route128/scripts.pory"

# 11 "data/maps/Route128/scripts.pory"
Route128_OnFrame:
# 12 "data/maps/Route128/scripts.pory"
	map_script_2 VAR_ROUTE128_STATE, 1, Route128_EventScript_KyogreAwakenedScene
# 13 "data/maps/Route128/scripts.pory"
	.2byte 0
# 14 "data/maps/Route128/scripts.pory"

# 15 "data/maps/Route128/scripts.pory"
Route128_EventScript_KyogreAwakenedScene::
# 16 "data/maps/Route128/scripts.pory"
	lockall
# 17 "data/maps/Route128/scripts.pory"
	delay 20
# 18 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_ARCHIE, Route128_Movement_ArchieLookAround
# 19 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 20 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_ArchieWhatHappened, MSGBOX_DEFAULT
# 21 "data/maps/Route128/scripts.pory"
	closemessage
# 22 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_ARCHIE, Route128_Movement_ArchieBackUp
# 23 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 24 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_ArchieIOnlyWanted, MSGBOX_DEFAULT
# 25 "data/maps/Route128/scripts.pory"
	closemessage
# 26 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_MAXIE, Route128_Movement_MaxieApproachArchie
# 27 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 28 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_ARCHIE, Common_Movement_WalkInPlaceFasterUp
# 29 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 30 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_MaxieDoYouUnderstandNow, MSGBOX_DEFAULT
# 31 "data/maps/Route128/scripts.pory"
	closemessage
# 32 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_MAXIE, Route128_Movement_MaxieApproachPlayer
# 33 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 34 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 35 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 36 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_MaxieResposibilityFallsToArchieAndMe, MSGBOX_DEFAULT
# 37 "data/maps/Route128/scripts.pory"
	closemessage
# 38 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_ARCHIE, Route128_Movement_ArchieRunLeft
# 39 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 40 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_MAXIE, Route128_Movement_MaxieWalkLeft
# 41 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 42 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_MaxieThisDefiesBelief, MSGBOX_DEFAULT
# 43 "data/maps/Route128/scripts.pory"
	closemessage
# 44 "data/maps/Route128/scripts.pory"
	delay 40
# 45 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_MAXIE, Route128_Movement_MaxieExit
# 46 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_ARCHIE, Route128_Movement_ArchieExit
# 47 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 48 "data/maps/Route128/scripts.pory"
	removeobject LOCALID_ROUTE128_MAXIE
# 49 "data/maps/Route128/scripts.pory"
	removeobject LOCALID_ROUTE128_ARCHIE
# 50 "data/maps/Route128/scripts.pory"
	delay 100
# 51 "data/maps/Route128/scripts.pory"
	setfieldeffectargument 0, 1
# 52 "data/maps/Route128/scripts.pory"
	dofieldeffect FLDEFF_NPCFLY_OUT
# 53 "data/maps/Route128/scripts.pory"
	waitfieldeffect FLDEFF_NPCFLY_OUT
# 54 "data/maps/Route128/scripts.pory"
	addobject LOCALID_ROUTE128_STEVEN
# 55 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_STEVEN, Route128_Movement_StevenApproachPlayer
# 56 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 57 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 58 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 59 "data/maps/Route128/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 60 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_StevenWhatIsHappening, MSGBOX_DEFAULT
# 61 "data/maps/Route128/scripts.pory"
	removefieldmugshot
# 62 "data/maps/Route128/scripts.pory"
	closemessage
# 63 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_STEVEN, Route128_Movement_StevenWalkUp
# 64 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 65 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 66 "data/maps/Route128/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 67 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_StevenWholeWorldWillDrown, MSGBOX_DEFAULT
# 68 "data/maps/Route128/scripts.pory"
	removefieldmugshot
# 69 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_STEVEN, Common_Movement_WalkInPlaceFasterDown
# 70 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 71 "data/maps/Route128/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 72 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_StevenImGoingToSootopolis, MSGBOX_DEFAULT
# 73 "data/maps/Route128/scripts.pory"
	removefieldmugshot
# 74 "data/maps/Route128/scripts.pory"
	closemessage
# 75 "data/maps/Route128/scripts.pory"
	applymovement LOCALID_ROUTE128_STEVEN, Common_Movement_WalkInPlaceFasterDown
# 76 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 77 "data/maps/Route128/scripts.pory"
	delay 50
# 78 "data/maps/Route128/scripts.pory"
	setfieldeffectargument 0, 1
# 79 "data/maps/Route128/scripts.pory"
	dofieldeffect FLDEFF_NPCFLY_OUT
# 80 "data/maps/Route128/scripts.pory"
	delay 15
# 81 "data/maps/Route128/scripts.pory"
	removeobject LOCALID_ROUTE128_STEVEN
# 82 "data/maps/Route128/scripts.pory"
	waitfieldeffect FLDEFF_NPCFLY_OUT
# 83 "data/maps/Route128/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 84 "data/maps/Route128/scripts.pory"
	setvar VAR_ROUTE128_STATE, 2
# 85 "data/maps/Route128/scripts.pory"
	releaseall
# 86 "data/maps/Route128/scripts.pory"
	end
# 87 "data/maps/Route128/scripts.pory"

# 88 "data/maps/Route128/scripts.pory"
Route128_Movement_Unused1:
# 89 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 90 "data/maps/Route128/scripts.pory"
	step_end
# 91 "data/maps/Route128/scripts.pory"

# 92 "data/maps/Route128/scripts.pory"
Route128_Movement_Unused2:
# 93 "data/maps/Route128/scripts.pory"
	walk_left
# 94 "data/maps/Route128/scripts.pory"
	walk_left
# 95 "data/maps/Route128/scripts.pory"
	walk_left
# 96 "data/maps/Route128/scripts.pory"
	walk_left
# 97 "data/maps/Route128/scripts.pory"
	walk_left
# 98 "data/maps/Route128/scripts.pory"
	walk_left
# 99 "data/maps/Route128/scripts.pory"
	walk_up
# 100 "data/maps/Route128/scripts.pory"
	walk_up
# 101 "data/maps/Route128/scripts.pory"
	walk_up
# 102 "data/maps/Route128/scripts.pory"
	walk_up
# 103 "data/maps/Route128/scripts.pory"
	walk_up
# 104 "data/maps/Route128/scripts.pory"
	walk_up
# 105 "data/maps/Route128/scripts.pory"
	step_end
# 106 "data/maps/Route128/scripts.pory"

# 107 "data/maps/Route128/scripts.pory"
Route128_Movement_StevenWalkUp:
# 108 "data/maps/Route128/scripts.pory"
	walk_up
# 109 "data/maps/Route128/scripts.pory"
	step_end
# 110 "data/maps/Route128/scripts.pory"

# 111 "data/maps/Route128/scripts.pory"
Route128_Movement_StevenApproachPlayer:
# 112 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 113 "data/maps/Route128/scripts.pory"
	step_end
# 114 "data/maps/Route128/scripts.pory"

# 115 "data/maps/Route128/scripts.pory"
Route128_Movement_ArchieLookAround:
# 116 "data/maps/Route128/scripts.pory"
	walk_fast_down
# 117 "data/maps/Route128/scripts.pory"
	walk_in_place_faster_left
# 118 "data/maps/Route128/scripts.pory"
	delay_16
# 119 "data/maps/Route128/scripts.pory"
	walk_in_place_faster_right
# 120 "data/maps/Route128/scripts.pory"
	delay_16
# 121 "data/maps/Route128/scripts.pory"
	delay_16
# 122 "data/maps/Route128/scripts.pory"
	walk_in_place_faster_down
# 123 "data/maps/Route128/scripts.pory"
	step_end
# 124 "data/maps/Route128/scripts.pory"

# 125 "data/maps/Route128/scripts.pory"
Route128_Movement_ArchieBackUp:
# 126 "data/maps/Route128/scripts.pory"
	lock_facing_direction
# 127 "data/maps/Route128/scripts.pory"
	walk_slow_up
# 128 "data/maps/Route128/scripts.pory"
	delay_16
# 129 "data/maps/Route128/scripts.pory"
	unlock_facing_direction
# 130 "data/maps/Route128/scripts.pory"
	step_end
# 131 "data/maps/Route128/scripts.pory"

# 132 "data/maps/Route128/scripts.pory"
Route128_Movement_ArchieRunLeft:
# 133 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 134 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 135 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 136 "data/maps/Route128/scripts.pory"
	walk_in_place_faster_right
# 137 "data/maps/Route128/scripts.pory"
	step_end
# 138 "data/maps/Route128/scripts.pory"

# 139 "data/maps/Route128/scripts.pory"
Route128_Movement_ArchieExit:
# 140 "data/maps/Route128/scripts.pory"
	delay_16
# 141 "data/maps/Route128/scripts.pory"
	delay_16
# 142 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 143 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 144 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 145 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 146 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 147 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 148 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 149 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 150 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 151 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 152 "data/maps/Route128/scripts.pory"
	step_end
# 153 "data/maps/Route128/scripts.pory"

# 154 "data/maps/Route128/scripts.pory"
Route128_Movement_MaxieWalkLeft:
# 155 "data/maps/Route128/scripts.pory"
	walk_left
# 156 "data/maps/Route128/scripts.pory"
	walk_left
# 157 "data/maps/Route128/scripts.pory"
	delay_8
# 158 "data/maps/Route128/scripts.pory"
	delay_4
# 159 "data/maps/Route128/scripts.pory"
	step_end
# 160 "data/maps/Route128/scripts.pory"

# 161 "data/maps/Route128/scripts.pory"
Route128_Movement_MaxieApproachArchie:
# 162 "data/maps/Route128/scripts.pory"
	walk_left
# 163 "data/maps/Route128/scripts.pory"
	walk_in_place_faster_down
# 164 "data/maps/Route128/scripts.pory"
	step_end
# 165 "data/maps/Route128/scripts.pory"

# 166 "data/maps/Route128/scripts.pory"
Route128_Movement_MaxieExit:
# 167 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 168 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 169 "data/maps/Route128/scripts.pory"
	walk_fast_left
# 170 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 171 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 172 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 173 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 174 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 175 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 176 "data/maps/Route128/scripts.pory"
	walk_fast_up
# 177 "data/maps/Route128/scripts.pory"
	step_end
# 178 "data/maps/Route128/scripts.pory"

# 179 "data/maps/Route128/scripts.pory"
Route128_Movement_MaxieApproachPlayer:
# 180 "data/maps/Route128/scripts.pory"
	walk_right
# 181 "data/maps/Route128/scripts.pory"
	walk_in_place_faster_down
# 182 "data/maps/Route128/scripts.pory"
	step_end
# 183 "data/maps/Route128/scripts.pory"

# 184 "data/maps/Route128/scripts.pory"
Route128_EventScript_Isaiah::
# 185 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_ISAIAH_1, Route128_Text_IsaiahIntro, Route128_Text_IsaiahDefeat
# 186 "data/maps/Route128/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 187 "data/maps/Route128/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route128_EventScript_RematchIsaiah
# 188 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_IsaiahPostBattle, MSGBOX_DEFAULT
# 189 "data/maps/Route128/scripts.pory"
	release
# 190 "data/maps/Route128/scripts.pory"
	end
# 191 "data/maps/Route128/scripts.pory"

# 192 "data/maps/Route128/scripts.pory"
Route128_EventScript_RegisterIsaiah::
# 193 "data/maps/Route128/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 194 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 195 "data/maps/Route128/scripts.pory"
	@ PokéNav removed msgbox Route128_Text_IsaiahRegister, MSGBOX_DEFAULT
# 196 "data/maps/Route128/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_ISAIAH_1
# 197 "data/maps/Route128/scripts.pory"
	release
# 198 "data/maps/Route128/scripts.pory"
	end
# 199 "data/maps/Route128/scripts.pory"

# 200 "data/maps/Route128/scripts.pory"
Route128_EventScript_RematchIsaiah::
# 201 "data/maps/Route128/scripts.pory"
	trainerbattle_rematch TRAINER_ISAIAH_1, Route128_Text_IsaiahRematchIntro, Route128_Text_IsaiahRematchDefeat
# 202 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_IsaiahPostRematch, MSGBOX_AUTOCLOSE
# 203 "data/maps/Route128/scripts.pory"
	end
# 204 "data/maps/Route128/scripts.pory"

# 205 "data/maps/Route128/scripts.pory"
Route128_EventScript_Katelyn::
# 206 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_KATELYN_1, Route128_Text_KatelynIntro, Route128_Text_KatelynDefeat
# 207 "data/maps/Route128/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 208 "data/maps/Route128/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route128_EventScript_RematchKatelyn
# 209 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_KatelynPostBattle, MSGBOX_DEFAULT
# 210 "data/maps/Route128/scripts.pory"
	release
# 211 "data/maps/Route128/scripts.pory"
	end
# 212 "data/maps/Route128/scripts.pory"

# 213 "data/maps/Route128/scripts.pory"
Route128_EventScript_RegisterKatelyn::
# 214 "data/maps/Route128/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 215 "data/maps/Route128/scripts.pory"
	waitmovement 0
# 216 "data/maps/Route128/scripts.pory"
	@ PokéNav removed msgbox Route128_Text_KatelynRegister, MSGBOX_DEFAULT
# 217 "data/maps/Route128/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_KATELYN_1
# 218 "data/maps/Route128/scripts.pory"
	release
# 219 "data/maps/Route128/scripts.pory"
	end
# 220 "data/maps/Route128/scripts.pory"

# 221 "data/maps/Route128/scripts.pory"
Route128_EventScript_RematchKatelyn::
# 222 "data/maps/Route128/scripts.pory"
	trainerbattle_rematch TRAINER_KATELYN_1, Route128_Text_KatelynRematchIntro, Route128_Text_KatelynRematchDefeat
# 223 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_KatelynPostRematch, MSGBOX_AUTOCLOSE
# 224 "data/maps/Route128/scripts.pory"
	end
# 225 "data/maps/Route128/scripts.pory"

# 226 "data/maps/Route128/scripts.pory"
Route128_EventScript_Alexa::
# 227 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_ALEXA, Route128_Text_AlexaIntro, Route128_Text_AlexaDefeat
# 228 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_AlexaPostBattle, MSGBOX_AUTOCLOSE
# 229 "data/maps/Route128/scripts.pory"
	end
# 230 "data/maps/Route128/scripts.pory"

# 231 "data/maps/Route128/scripts.pory"
Route128_EventScript_Ruben::
# 232 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_RUBEN, Route128_Text_RubenIntro, Route128_Text_RubenDefeat
# 233 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_RubenPostBattle, MSGBOX_AUTOCLOSE
# 234 "data/maps/Route128/scripts.pory"
	end
# 235 "data/maps/Route128/scripts.pory"

# 236 "data/maps/Route128/scripts.pory"
Route128_EventScript_Wayne::
# 237 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_WAYNE, Route128_Text_WayneIntro, Route128_Text_WayneDefeat
# 238 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_WaynePostBattle, MSGBOX_AUTOCLOSE
# 239 "data/maps/Route128/scripts.pory"
	end
# 240 "data/maps/Route128/scripts.pory"

# 241 "data/maps/Route128/scripts.pory"
Route128_EventScript_Harrison::
# 242 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_HARRISON, Route128_Text_HarrisonIntro, Route128_Text_HarrisonDefeat
# 243 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_HarrisonPostBattle, MSGBOX_AUTOCLOSE
# 244 "data/maps/Route128/scripts.pory"
	end
# 245 "data/maps/Route128/scripts.pory"

# 246 "data/maps/Route128/scripts.pory"
Route128_EventScript_Carlee::
# 247 "data/maps/Route128/scripts.pory"
	trainerbattle_single TRAINER_CARLEE, Route128_Text_CarleeIntro, Route128_Text_CarleeDefeat
# 248 "data/maps/Route128/scripts.pory"
	msgbox Route128_Text_CarleePostBattle, MSGBOX_AUTOCLOSE
# 249 "data/maps/Route128/scripts.pory"
	end
# 250 "data/maps/Route128/scripts.pory"

# 251 "data/maps/Route128/scripts.pory"
Route128_Text_ArchieWhatHappened:
# 252 "data/maps/Route128/scripts.pory"
	.string "ARCHIE: What happened…\n"
# 253 "data/maps/Route128/scripts.pory"
	.string "What is this wretched scene…\p"
# 254 "data/maps/Route128/scripts.pory"
	.string "Did I…make a horrible mistake?$"
# 255 "data/maps/Route128/scripts.pory"

# 256 "data/maps/Route128/scripts.pory"
Route128_Text_ArchieIOnlyWanted:
# 257 "data/maps/Route128/scripts.pory"
	.string "I…\n"
# 258 "data/maps/Route128/scripts.pory"
	.string "I only wanted…$"
# 259 "data/maps/Route128/scripts.pory"

# 260 "data/maps/Route128/scripts.pory"
Route128_Text_MaxieDoYouUnderstandNow:
# 261 "data/maps/Route128/scripts.pory"
	.string "MAXIE: Do you understand now,\n"
# 262 "data/maps/Route128/scripts.pory"
	.string "ARCHIE?\p"
# 263 "data/maps/Route128/scripts.pory"
	.string "Do you finally see how disastrous\n"
# 264 "data/maps/Route128/scripts.pory"
	.string "your dream turned out to be?\p"
# 265 "data/maps/Route128/scripts.pory"
	.string "We have to hurry! We have to do\n"
# 266 "data/maps/Route128/scripts.pory"
	.string "something before the situation goes\l"
# 267 "data/maps/Route128/scripts.pory"
	.string "completely out of control!$"
# 268 "data/maps/Route128/scripts.pory"

# 269 "data/maps/Route128/scripts.pory"
Route128_Text_MaxieResposibilityFallsToArchieAndMe:
# 270 "data/maps/Route128/scripts.pory"
	.string "MAXIE: {PLAYER}, don't say anything.\p"
# 271 "data/maps/Route128/scripts.pory"
	.string "I know that I have no right to be\n"
# 272 "data/maps/Route128/scripts.pory"
	.string "critical of ARCHIE…\p"
# 273 "data/maps/Route128/scripts.pory"
	.string "But the way things are now, I doubt\n"
# 274 "data/maps/Route128/scripts.pory"
	.string "that we humans will be capable of\l"
# 275 "data/maps/Route128/scripts.pory"
	.string "doing anything about it.\p"
# 276 "data/maps/Route128/scripts.pory"
	.string "But neither can we stand by and\n"
# 277 "data/maps/Route128/scripts.pory"
	.string "just watch helplessly.\p"
# 278 "data/maps/Route128/scripts.pory"
	.string "The responsibility for putting an end\n"
# 279 "data/maps/Route128/scripts.pory"
	.string "to this falls to ARCHIE and me…$"
# 280 "data/maps/Route128/scripts.pory"

# 281 "data/maps/Route128/scripts.pory"
Route128_Text_MaxieThisDefiesBelief:
# 282 "data/maps/Route128/scripts.pory"
	.string "MAXIE: This defies belief…\p"
# 283 "data/maps/Route128/scripts.pory"
	.string "Those super-ancient POKéMON…\p"
# 284 "data/maps/Route128/scripts.pory"
	.string "Their power is unbelievable.\n"
# 285 "data/maps/Route128/scripts.pory"
	.string "They've upset the balance of nature…$"
# 286 "data/maps/Route128/scripts.pory"

# 287 "data/maps/Route128/scripts.pory"
Route128_Text_StevenWhatIsHappening:
# 288 "data/maps/Route128/scripts.pory"
	.string "STELLA: {PLAYER}{KUN}! What is\n"
# 289 "data/maps/Route128/scripts.pory"
	.string "happening?$"
# 290 "data/maps/Route128/scripts.pory"

# 291 "data/maps/Route128/scripts.pory"
Route128_Text_StevenWholeWorldWillDrown:
# 292 "data/maps/Route128/scripts.pory"
	.string "This is terrible…\p"
# 293 "data/maps/Route128/scripts.pory"
	.string "After the scorching heat wave ended,\n"
# 294 "data/maps/Route128/scripts.pory"
	.string "this deluge began.\p"
# 295 "data/maps/Route128/scripts.pory"
	.string "If this doesn't stop, all of HOENN… No,\n"
# 296 "data/maps/Route128/scripts.pory"
	.string "the whole world will drown.\p"
# 297 "data/maps/Route128/scripts.pory"
	.string "This huge rain cloud is spreading from\n"
# 298 "data/maps/Route128/scripts.pory"
	.string "above SOOTOPOLIS…\p"
# 299 "data/maps/Route128/scripts.pory"
	.string "What in the world is taking place\n"
# 300 "data/maps/Route128/scripts.pory"
	.string "there?\p"
# 301 "data/maps/Route128/scripts.pory"
	.string "There's no point arguing here…\n"
# 302 "data/maps/Route128/scripts.pory"
	.string "SOOTOPOLIS might provide answers…$"
# 303 "data/maps/Route128/scripts.pory"

# 304 "data/maps/Route128/scripts.pory"
Route128_Text_StevenImGoingToSootopolis:
# 305 "data/maps/Route128/scripts.pory"
	.string "{PLAYER}{KUN}… I don't know what you\n"
# 306 "data/maps/Route128/scripts.pory"
	.string "intend to do, but don't do anything\l"
# 307 "data/maps/Route128/scripts.pory"
	.string "reckless.\p"
# 308 "data/maps/Route128/scripts.pory"
	.string "Okay. I'm going to SOOTOPOLIS.$"
