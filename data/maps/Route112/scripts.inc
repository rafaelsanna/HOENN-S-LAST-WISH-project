# 1 "data/maps/Route112/scripts.pory"

# 2 "data/maps/Route112/scripts.pory"
Route112_MapScripts::
# 3 "data/maps/Route112/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route112_OnTransition
# 4 "data/maps/Route112/scripts.pory"
	.byte 0
# 5 "data/maps/Route112/scripts.pory"

# 6 "data/maps/Route112/scripts.pory"
Route112_OnTransition:
# 7 "data/maps/Route112/scripts.pory"
	clearflag FLAG_FORCE_MIRAGE_TOWER_VISIBLE
# 8 "data/maps/Route112/scripts.pory"
	setflag FLAG_HIDE_ROUTE112_ACACIA_CHIMNEY_SCENE
# 9 "data/maps/Route112/scripts.pory"
	setvar VAR_JAGGED_PASS_ASH_WEATHER, 0
# 10 "data/maps/Route112/scripts.pory"
	end
# 11 "data/maps/Route112/scripts.pory"

# 12 "data/maps/Route112/scripts.pory"
Route112_EventScript_AcaciaChimneyTrigger26::
# 13 "data/maps/Route112/scripts.pory"
	goto_if_unset FLAG_MET_ARCHIE_METEOR_FALLS, Route112_EventScript_AcaciaChimneyTriggerUnavailable
# 14 "data/maps/Route112/scripts.pory"
	goto_if_set FLAG_ROUTE112_ACACIA_CHIMNEY_SCENE_COMPLETE, Route112_EventScript_AcaciaChimneyTriggerDone
# 15 "data/maps/Route112/scripts.pory"
	lockall
# 16 "data/maps/Route112/scripts.pory"
	clearflag FLAG_HIDE_ROUTE112_ACACIA_CHIMNEY_SCENE
# 17 "data/maps/Route112/scripts.pory"
	addobject LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE
# 18 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE, Route112_Movement_AcaciaApproachPlayer26
# 19 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 20 "data/maps/Route112/scripts.pory"
	turnobject LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE, DIR_WEST
# 21 "data/maps/Route112/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_EAST
# 22 "data/maps/Route112/scripts.pory"
	goto Route112_EventScript_AcaciaChimneyDialogue
# 23 "data/maps/Route112/scripts.pory"

# 24 "data/maps/Route112/scripts.pory"
Route112_EventScript_AcaciaChimneyTrigger27::
# 25 "data/maps/Route112/scripts.pory"
	goto_if_unset FLAG_MET_ARCHIE_METEOR_FALLS, Route112_EventScript_AcaciaChimneyTriggerUnavailable
# 26 "data/maps/Route112/scripts.pory"
	goto_if_set FLAG_ROUTE112_ACACIA_CHIMNEY_SCENE_COMPLETE, Route112_EventScript_AcaciaChimneyTriggerDone
# 27 "data/maps/Route112/scripts.pory"
	lockall
# 28 "data/maps/Route112/scripts.pory"
	clearflag FLAG_HIDE_ROUTE112_ACACIA_CHIMNEY_SCENE
# 29 "data/maps/Route112/scripts.pory"
	addobject LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE
# 30 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE, Route112_Movement_AcaciaApproachPlayer27
# 31 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 32 "data/maps/Route112/scripts.pory"
	turnobject LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE, DIR_EAST
# 33 "data/maps/Route112/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 34 "data/maps/Route112/scripts.pory"

# 35 "data/maps/Route112/scripts.pory"
Route112_EventScript_AcaciaChimneyDialogue:
# 36 "data/maps/Route112/scripts.pory"
	createfieldmugshot MUGSHOT_ACACIA, EMOTE_NORMAL
# 37 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_AcaciaChimneyScene, MSGBOX_DEFAULT
# 38 "data/maps/Route112/scripts.pory"
	removefieldmugshot
# 39 "data/maps/Route112/scripts.pory"
	closemessage
# 40 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE, Route112_Movement_AcaciaChimneyExit
# 41 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 42 "data/maps/Route112/scripts.pory"
	setflag FLAG_ROUTE112_ACACIA_CHIMNEY_SCENE_COMPLETE
# 43 "data/maps/Route112/scripts.pory"
	setflag FLAG_HIDE_ROUTE112_ACACIA_CHIMNEY_SCENE
# 44 "data/maps/Route112/scripts.pory"
	removeobject LOCALID_ROUTE112_ACACIA_CHIMNEY_SCENE
# 45 "data/maps/Route112/scripts.pory"
	setvar VAR_TEMP_2, 1
# 46 "data/maps/Route112/scripts.pory"
	releaseall
# 47 "data/maps/Route112/scripts.pory"
	end
# 48 "data/maps/Route112/scripts.pory"

# 49 "data/maps/Route112/scripts.pory"
Route112_EventScript_AcaciaChimneyTriggerDone:
# 50 "data/maps/Route112/scripts.pory"
	setvar VAR_TEMP_2, 1
# 51 "data/maps/Route112/scripts.pory"
	end
# 52 "data/maps/Route112/scripts.pory"

# 53 "data/maps/Route112/scripts.pory"
Route112_EventScript_AcaciaChimneyTriggerUnavailable:
# 54 "data/maps/Route112/scripts.pory"
	end
# 55 "data/maps/Route112/scripts.pory"

# 56 "data/maps/Route112/scripts.pory"
Route112_Movement_AcaciaApproachPlayer26:
# 57 "data/maps/Route112/scripts.pory"
	walk_down
# 58 "data/maps/Route112/scripts.pory"
	walk_left
# 59 "data/maps/Route112/scripts.pory"
	walk_down
# 60 "data/maps/Route112/scripts.pory"
	walk_down
# 61 "data/maps/Route112/scripts.pory"
	step_end
# 62 "data/maps/Route112/scripts.pory"

# 63 "data/maps/Route112/scripts.pory"
Route112_Movement_AcaciaApproachPlayer27:
# 64 "data/maps/Route112/scripts.pory"
	walk_down
# 65 "data/maps/Route112/scripts.pory"
	walk_left
# 66 "data/maps/Route112/scripts.pory"
	walk_left
# 67 "data/maps/Route112/scripts.pory"
	walk_down
# 68 "data/maps/Route112/scripts.pory"
	walk_down
# 69 "data/maps/Route112/scripts.pory"
	step_end
# 70 "data/maps/Route112/scripts.pory"

# 71 "data/maps/Route112/scripts.pory"
Route112_Movement_AcaciaChimneyExit:
# 72 "data/maps/Route112/scripts.pory"
	walk_down
# 73 "data/maps/Route112/scripts.pory"
	walk_down
# 74 "data/maps/Route112/scripts.pory"
	walk_down
# 75 "data/maps/Route112/scripts.pory"
	walk_left
# 76 "data/maps/Route112/scripts.pory"
	walk_left
# 77 "data/maps/Route112/scripts.pory"
	walk_down
# 78 "data/maps/Route112/scripts.pory"
	walk_down
# 79 "data/maps/Route112/scripts.pory"
	walk_down
# 80 "data/maps/Route112/scripts.pory"
	walk_down
# 81 "data/maps/Route112/scripts.pory"
	walk_down
# 82 "data/maps/Route112/scripts.pory"
	step_end
# 83 "data/maps/Route112/scripts.pory"

# 84 "data/maps/Route112/scripts.pory"
Route112_Text_AcaciaChimneyScene:
# 85 "data/maps/Route112/scripts.pory"
	.string "PROF. ACACIA: Oh! Hello, {PLAYER}.\p"
# 86 "data/maps/Route112/scripts.pory"
	.string "All of my instruments recently started\n"
# 87 "data/maps/Route112/scripts.pory"
	.string "going haywire in the direction of\l"
# 88 "data/maps/Route112/scripts.pory"
	.string "MT. CHIMNEY, so I came out here to\l"
# 89 "data/maps/Route112/scripts.pory"
	.string "see if there was some relation to\l"
# 90 "data/maps/Route112/scripts.pory"
	.string "the comet.\p"
# 91 "data/maps/Route112/scripts.pory"
	.string "I couldn't get very far, though.\p"
# 92 "data/maps/Route112/scripts.pory"
	.string "There is a dangerous conflict\n"
# 93 "data/maps/Route112/scripts.pory"
	.string "happening between TEAM AQUA and\l"
# 94 "data/maps/Route112/scripts.pory"
	.string "TEAM MAGMA.\p"
# 95 "data/maps/Route112/scripts.pory"
	.string "Whatever they're doing, it seems to\n"
# 96 "data/maps/Route112/scripts.pory"
	.string "be creating some sort of\l"
# 97 "data/maps/Route112/scripts.pory"
	.string "destabilization.\p"
# 98 "data/maps/Route112/scripts.pory"
	.string "I need to get back to the lab and\n"
# 99 "data/maps/Route112/scripts.pory"
	.string "record these readings.\p"
# 100 "data/maps/Route112/scripts.pory"
	.string "If you're going up, please be careful.$"
# 101 "data/maps/Route112/scripts.pory"

# 102 "data/maps/Route112/scripts.pory"
Route112_EventScript_MagmaGrunts::
# 103 "data/maps/Route112/scripts.pory"
	lockall
# 104 "data/maps/Route112/scripts.pory"
	delay 40
# 105 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_WalkInPlaceFasterRight
# 106 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 107 "data/maps/Route112/scripts.pory"
	delay 20
# 108 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_LeaderGoingToAwakenThing, MSGBOX_DEFAULT
# 109 "data/maps/Route112/scripts.pory"
	closemessage
# 110 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_FaceOriginalDirection
# 111 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 112 "data/maps/Route112/scripts.pory"
	delay 40
# 113 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
# 114 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 115 "data/maps/Route112/scripts.pory"
	delay 20
# 116 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_YeahWeNeedMeteorite, MSGBOX_DEFAULT
# 117 "data/maps/Route112/scripts.pory"
	closemessage
# 118 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_FaceOriginalDirection
# 119 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 120 "data/maps/Route112/scripts.pory"
	delay 40
# 121 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_WalkInPlaceFasterRight
# 122 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 123 "data/maps/Route112/scripts.pory"
	delay 20
# 124 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_OhThatsWhyCrewWentToFallarbor, MSGBOX_DEFAULT
# 125 "data/maps/Route112/scripts.pory"
	closemessage
# 126 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_FaceOriginalDirection
# 127 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 128 "data/maps/Route112/scripts.pory"
	delay 40
# 129 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
# 130 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 131 "data/maps/Route112/scripts.pory"
	delay 20
# 132 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_CantLetAnyonePassUntilTheyreBack, MSGBOX_DEFAULT
# 133 "data/maps/Route112/scripts.pory"
	closemessage
# 134 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_FaceOriginalDirection
# 135 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 136 "data/maps/Route112/scripts.pory"
	releaseall
# 137 "data/maps/Route112/scripts.pory"
	end
# 138 "data/maps/Route112/scripts.pory"

# 139 "data/maps/Route112/scripts.pory"
Route112_EventScript_MtChimneyCableCarSign::
# 140 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_MtChimneyCableCarSign, MSGBOX_SIGN
# 141 "data/maps/Route112/scripts.pory"
	end
# 142 "data/maps/Route112/scripts.pory"

# 143 "data/maps/Route112/scripts.pory"
Route112_EventScript_MtChimneySign::
# 144 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_MtChimneySign, MSGBOX_SIGN
# 145 "data/maps/Route112/scripts.pory"
	end
# 146 "data/maps/Route112/scripts.pory"

# 147 "data/maps/Route112/scripts.pory"
Route112_EventScript_RouteSignLavaridge::
# 148 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_RouteSignLavaridge, MSGBOX_SIGN
# 149 "data/maps/Route112/scripts.pory"
	end
# 150 "data/maps/Route112/scripts.pory"

# 151 "data/maps/Route112/scripts.pory"
Route112_EventScript_Hiker::
# 152 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_NotEasyToGetBackToLavaridge, MSGBOX_NPC
# 153 "data/maps/Route112/scripts.pory"
	end
# 154 "data/maps/Route112/scripts.pory"

# 155 "data/maps/Route112/scripts.pory"
Route112_EventScript_OldManBlocker::
# 156 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_OldManBlocker, MSGBOX_NPC
# 157 "data/maps/Route112/scripts.pory"
	end
# 158 "data/maps/Route112/scripts.pory"

# 159 "data/maps/Route112/scripts.pory"
Route112_EventScript_Brice::
# 160 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_BRICE, Route112_Text_BriceIntro, Route112_Text_BriceDefeat
# 161 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_BricePostBattle, MSGBOX_AUTOCLOSE
# 162 "data/maps/Route112/scripts.pory"
	end
# 163 "data/maps/Route112/scripts.pory"

# 164 "data/maps/Route112/scripts.pory"
Route112_EventScript_Trent::
# 165 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_TRENT_1, Route112_Text_TrentIntro, Route112_Text_TrentDefeat, Route112_EventScript_RegisterTrent
# 166 "data/maps/Route112/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 167 "data/maps/Route112/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route112_EventScript_RematchTrent
# 168 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_TrentPostBattle, MSGBOX_DEFAULT
# 169 "data/maps/Route112/scripts.pory"
	release
# 170 "data/maps/Route112/scripts.pory"
	end
# 171 "data/maps/Route112/scripts.pory"

# 172 "data/maps/Route112/scripts.pory"
Route112_EventScript_RegisterTrent::
# 173 "data/maps/Route112/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 174 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 175 "data/maps/Route112/scripts.pory"
	@ PokéNav removed msgbox Route112_Text_TrentRegister, MSGBOX_DEFAULT
# 176 "data/maps/Route112/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_TRENT_1
# 177 "data/maps/Route112/scripts.pory"
	release
# 178 "data/maps/Route112/scripts.pory"
	end
# 179 "data/maps/Route112/scripts.pory"

# 180 "data/maps/Route112/scripts.pory"
Route112_EventScript_RematchTrent::
# 181 "data/maps/Route112/scripts.pory"
	trainerbattle_rematch TRAINER_TRENT_1, Route112_Text_TrentRematchIntro, Route112_Text_TrentRematchDefeat
# 182 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_TrentRematchPostBattle, MSGBOX_AUTOCLOSE
# 183 "data/maps/Route112/scripts.pory"
	end
# 184 "data/maps/Route112/scripts.pory"

# 185 "data/maps/Route112/scripts.pory"
Route112_EventScript_Larry::
# 186 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_LARRY, Route112_Text_LarryIntro, Route112_Text_LarryDefeat
# 187 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_LarryPostBattle, MSGBOX_AUTOCLOSE
# 188 "data/maps/Route112/scripts.pory"
	end
# 189 "data/maps/Route112/scripts.pory"

# 190 "data/maps/Route112/scripts.pory"
Route112_EventScript_Carol::
# 191 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_CAROL, Route112_Text_CarolIntro, Route112_Text_CarolDefeat
# 192 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_CarolPostBattle, MSGBOX_AUTOCLOSE
# 193 "data/maps/Route112/scripts.pory"
	end
# 194 "data/maps/Route112/scripts.pory"

# 195 "data/maps/Route112/scripts.pory"
Route112_EventScript_Bryant::
# 196 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_BRYANT, Route112_Text_BryantIntro, Route112_Text_BryantDefeat
# 197 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_BryantPostBattle, MSGBOX_AUTOCLOSE
# 198 "data/maps/Route112/scripts.pory"
	end
# 199 "data/maps/Route112/scripts.pory"

# 200 "data/maps/Route112/scripts.pory"
Route112_EventScript_Shayla::
# 201 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_SHAYLA, Route112_Text_ShaylaIntro, Route112_Text_ShaylaDefeat
# 202 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_ShaylaPostBattle, MSGBOX_AUTOCLOSE
# 203 "data/maps/Route112/scripts.pory"
	end
# 204 "data/maps/Route112/scripts.pory"

# 205 "data/maps/Route112/scripts.pory"
Route112_Text_LeaderGoingToAwakenThing:
# 206 "data/maps/Route112/scripts.pory"
	.string "Hey, man, is our leader really going\n"
# 207 "data/maps/Route112/scripts.pory"
	.string "to awaken that thing?$"
# 208 "data/maps/Route112/scripts.pory"

# 209 "data/maps/Route112/scripts.pory"
Route112_Text_YeahWeNeedMeteorite:
# 210 "data/maps/Route112/scripts.pory"
	.string "Sounds like it, yeah. But I heard\n"
# 211 "data/maps/Route112/scripts.pory"
	.string "we need a METEORITE to do it.$"
# 212 "data/maps/Route112/scripts.pory"

# 213 "data/maps/Route112/scripts.pory"
Route112_Text_OhThatsWhyCrewWentToFallarbor:
# 214 "data/maps/Route112/scripts.pory"
	.string "Oh, I get it now. That's why the rest\n"
# 215 "data/maps/Route112/scripts.pory"
	.string "of the crew went out to FALLARBOR.$"
# 216 "data/maps/Route112/scripts.pory"

# 217 "data/maps/Route112/scripts.pory"
Route112_Text_CantLetAnyonePassUntilTheyreBack:
# 218 "data/maps/Route112/scripts.pory"
	.string "You got it. And until they come back,\n"
# 219 "data/maps/Route112/scripts.pory"
	.string "we're not to let anyone pass, right.$"
# 220 "data/maps/Route112/scripts.pory"

# 221 "data/maps/Route112/scripts.pory"
Route112_Text_NotEasyToGetBackToLavaridge:
# 222 "data/maps/Route112/scripts.pory"
	.string "Eh, I'd like to get to MAUVILLE, but if\n"
# 223 "data/maps/Route112/scripts.pory"
	.string "I went down these ledges, it'd be no\l"
# 224 "data/maps/Route112/scripts.pory"
	.string "easy matter to get back to LAVARIDGE.$"
# 225 "data/maps/Route112/scripts.pory"

# 226 "data/maps/Route112/scripts.pory"
Route112_Text_OldManBlocker:
# 227 "data/maps/Route112/scripts.pory"
	.string "These old legs aren't what they used\n"
# 228 "data/maps/Route112/scripts.pory"
	.string "to be, but they can still get me\l"
# 229 "data/maps/Route112/scripts.pory"
	.string "up these stairs! Maybe just after\l"
# 230 "data/maps/Route112/scripts.pory"
	.string "a short break on this step...$"
# 231 "data/maps/Route112/scripts.pory"

# 232 "data/maps/Route112/scripts.pory"
Route112_Text_MtChimneyCableCarSign:
# 233 "data/maps/Route112/scripts.pory"
	.string "MT. CHIMNEY CABLE CAR\n"
# 234 "data/maps/Route112/scripts.pory"
	.string "“A short walk {UP_ARROW} way!”$"
# 235 "data/maps/Route112/scripts.pory"

# 236 "data/maps/Route112/scripts.pory"
Route112_Text_MtChimneySign:
# 237 "data/maps/Route112/scripts.pory"
	.string "MT. CHIMNEY\p"
# 238 "data/maps/Route112/scripts.pory"
	.string "“For LAVARIDGE TOWN or the summit,\n"
# 239 "data/maps/Route112/scripts.pory"
	.string "please take the CABLE CAR.”$"
# 240 "data/maps/Route112/scripts.pory"

# 241 "data/maps/Route112/scripts.pory"
Route112_Text_RouteSignLavaridge:
# 242 "data/maps/Route112/scripts.pory"
	.string "ROUTE 112\n"
# 243 "data/maps/Route112/scripts.pory"
	.string "{LEFT_ARROW} LAVARIDGE TOWN$"
