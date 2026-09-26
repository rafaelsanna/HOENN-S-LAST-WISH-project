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
	.string "I just got back from MT. CHIMNEY.\n"
# 87 "data/maps/Route112/scripts.pory"
	.string "As I'm sure you remember,\n"
# 88 "data/maps/Route112/scripts.pory"
	.string "all of my instruments recently started\l"
# 89 "data/maps/Route112/scripts.pory"
	.string "going haywire in the direction of\l"
# 90 "data/maps/Route112/scripts.pory"
	.string "MT. CHIMNEY, so I came out here to\l"
# 91 "data/maps/Route112/scripts.pory"
	.string "see if there was some relation to\l"
# 92 "data/maps/Route112/scripts.pory"
	.string "the comet.\p"
# 93 "data/maps/Route112/scripts.pory"
	.string "I couldn't get very far, though.\p"
# 94 "data/maps/Route112/scripts.pory"
	.string "There is a dangerous conflict\n"
# 95 "data/maps/Route112/scripts.pory"
	.string "happening between TEAM AQUA and\l"
# 96 "data/maps/Route112/scripts.pory"
	.string "TEAM MAGMA.\p"
# 97 "data/maps/Route112/scripts.pory"
	.string "Whatever they're doing, it seems to\n"
# 98 "data/maps/Route112/scripts.pory"
	.string "be creating some sort of\l"
# 99 "data/maps/Route112/scripts.pory"
	.string "destabilization again.\p"
# 100 "data/maps/Route112/scripts.pory"
	.string "I need to get back to the lab and\n"
# 101 "data/maps/Route112/scripts.pory"
	.string "record these readings.\p"
# 102 "data/maps/Route112/scripts.pory"
	.string "If you're going up, please be careful.$"
# 103 "data/maps/Route112/scripts.pory"

# 104 "data/maps/Route112/scripts.pory"
Route112_EventScript_MagmaGrunts::
# 105 "data/maps/Route112/scripts.pory"
	lockall
# 106 "data/maps/Route112/scripts.pory"
	delay 40
# 107 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_WalkInPlaceFasterRight
# 108 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 109 "data/maps/Route112/scripts.pory"
	delay 20
# 110 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_LeaderGoingToAwakenThing, MSGBOX_DEFAULT
# 111 "data/maps/Route112/scripts.pory"
	closemessage
# 112 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_FaceOriginalDirection
# 113 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 114 "data/maps/Route112/scripts.pory"
	delay 40
# 115 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
# 116 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 117 "data/maps/Route112/scripts.pory"
	delay 20
# 118 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_YeahWeNeedMeteorite, MSGBOX_DEFAULT
# 119 "data/maps/Route112/scripts.pory"
	closemessage
# 120 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_FaceOriginalDirection
# 121 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 122 "data/maps/Route112/scripts.pory"
	delay 40
# 123 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_WalkInPlaceFasterRight
# 124 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 125 "data/maps/Route112/scripts.pory"
	delay 20
# 126 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_OhThatsWhyCrewWentToFallarbor, MSGBOX_DEFAULT
# 127 "data/maps/Route112/scripts.pory"
	closemessage
# 128 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_1, Common_Movement_FaceOriginalDirection
# 129 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 130 "data/maps/Route112/scripts.pory"
	delay 40
# 131 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
# 132 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 133 "data/maps/Route112/scripts.pory"
	delay 20
# 134 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_CantLetAnyonePassUntilTheyreBack, MSGBOX_DEFAULT
# 135 "data/maps/Route112/scripts.pory"
	closemessage
# 136 "data/maps/Route112/scripts.pory"
	applymovement LOCALID_ROUTE112_GRUNT_2, Common_Movement_FaceOriginalDirection
# 137 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 138 "data/maps/Route112/scripts.pory"
	releaseall
# 139 "data/maps/Route112/scripts.pory"
	end
# 140 "data/maps/Route112/scripts.pory"

# 141 "data/maps/Route112/scripts.pory"
Route112_EventScript_MtChimneyCableCarSign::
# 142 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_MtChimneyCableCarSign, MSGBOX_SIGN
# 143 "data/maps/Route112/scripts.pory"
	end
# 144 "data/maps/Route112/scripts.pory"

# 145 "data/maps/Route112/scripts.pory"
Route112_EventScript_MtChimneySign::
# 146 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_MtChimneySign, MSGBOX_SIGN
# 147 "data/maps/Route112/scripts.pory"
	end
# 148 "data/maps/Route112/scripts.pory"

# 149 "data/maps/Route112/scripts.pory"
Route112_EventScript_RouteSignLavaridge::
# 150 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_RouteSignLavaridge, MSGBOX_SIGN
# 151 "data/maps/Route112/scripts.pory"
	end
# 152 "data/maps/Route112/scripts.pory"

# 153 "data/maps/Route112/scripts.pory"
Route112_EventScript_BedrockMiningSign::
# 154 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_BedrockMiningSign, MSGBOX_SIGN
# 155 "data/maps/Route112/scripts.pory"
	end
# 156 "data/maps/Route112/scripts.pory"

# 157 "data/maps/Route112/scripts.pory"
Route112_EventScript_Hiker::
# 158 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_NotEasyToGetBackToLavaridge, MSGBOX_NPC
# 159 "data/maps/Route112/scripts.pory"
	end
# 160 "data/maps/Route112/scripts.pory"

# 161 "data/maps/Route112/scripts.pory"
Route112_EventScript_OldManBlocker::
# 162 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_OldManBlocker, MSGBOX_NPC
# 163 "data/maps/Route112/scripts.pory"
	end
# 164 "data/maps/Route112/scripts.pory"

# 165 "data/maps/Route112/scripts.pory"
Route112_EventScript_Brice::
# 166 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_BRICE, Route112_Text_BriceIntro, Route112_Text_BriceDefeat
# 167 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_BricePostBattle, MSGBOX_AUTOCLOSE
# 168 "data/maps/Route112/scripts.pory"
	end
# 169 "data/maps/Route112/scripts.pory"

# 170 "data/maps/Route112/scripts.pory"
Route112_EventScript_Trent::
# 171 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_TRENT_1, Route112_Text_TrentIntro, Route112_Text_TrentDefeat, Route112_EventScript_RegisterTrent
# 172 "data/maps/Route112/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 173 "data/maps/Route112/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route112_EventScript_RematchTrent
# 174 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_TrentPostBattle, MSGBOX_DEFAULT
# 175 "data/maps/Route112/scripts.pory"
	release
# 176 "data/maps/Route112/scripts.pory"
	end
# 177 "data/maps/Route112/scripts.pory"

# 178 "data/maps/Route112/scripts.pory"
Route112_EventScript_RegisterTrent::
# 179 "data/maps/Route112/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 180 "data/maps/Route112/scripts.pory"
	waitmovement 0
# 181 "data/maps/Route112/scripts.pory"
	@ PokéNav removed msgbox Route112_Text_TrentRegister, MSGBOX_DEFAULT
# 182 "data/maps/Route112/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_TRENT_1
# 183 "data/maps/Route112/scripts.pory"
	release
# 184 "data/maps/Route112/scripts.pory"
	end
# 185 "data/maps/Route112/scripts.pory"

# 186 "data/maps/Route112/scripts.pory"
Route112_EventScript_RematchTrent::
# 187 "data/maps/Route112/scripts.pory"
	trainerbattle_rematch TRAINER_TRENT_1, Route112_Text_TrentRematchIntro, Route112_Text_TrentRematchDefeat
# 188 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_TrentRematchPostBattle, MSGBOX_AUTOCLOSE
# 189 "data/maps/Route112/scripts.pory"
	end
# 190 "data/maps/Route112/scripts.pory"

# 191 "data/maps/Route112/scripts.pory"
Route112_EventScript_Larry::
# 192 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_LARRY, Route112_Text_LarryIntro, Route112_Text_LarryDefeat
# 193 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_LarryPostBattle, MSGBOX_AUTOCLOSE
# 194 "data/maps/Route112/scripts.pory"
	end
# 195 "data/maps/Route112/scripts.pory"

# 196 "data/maps/Route112/scripts.pory"
Route112_EventScript_Carol::
# 197 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_CAROL, Route112_Text_CarolIntro, Route112_Text_CarolDefeat
# 198 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_CarolPostBattle, MSGBOX_AUTOCLOSE
# 199 "data/maps/Route112/scripts.pory"
	end
# 200 "data/maps/Route112/scripts.pory"

# 201 "data/maps/Route112/scripts.pory"
Route112_EventScript_Bryant::
# 202 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_BRYANT, Route112_Text_BryantIntro, Route112_Text_BryantDefeat
# 203 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_BryantPostBattle, MSGBOX_AUTOCLOSE
# 204 "data/maps/Route112/scripts.pory"
	end
# 205 "data/maps/Route112/scripts.pory"

# 206 "data/maps/Route112/scripts.pory"
Route112_EventScript_Shayla::
# 207 "data/maps/Route112/scripts.pory"
	trainerbattle_single TRAINER_SHAYLA, Route112_Text_ShaylaIntro, Route112_Text_ShaylaDefeat
# 208 "data/maps/Route112/scripts.pory"
	msgbox Route112_Text_ShaylaPostBattle, MSGBOX_AUTOCLOSE
# 209 "data/maps/Route112/scripts.pory"
	end
# 210 "data/maps/Route112/scripts.pory"

# 211 "data/maps/Route112/scripts.pory"
Route112_Text_LeaderGoingToAwakenThing:
# 212 "data/maps/Route112/scripts.pory"
	.string "Hey, man, is our leader really going\n"
# 213 "data/maps/Route112/scripts.pory"
	.string "to awaken that thing?$"
# 214 "data/maps/Route112/scripts.pory"

# 215 "data/maps/Route112/scripts.pory"
Route112_Text_YeahWeNeedMeteorite:
# 216 "data/maps/Route112/scripts.pory"
	.string "Sounds like it, yeah. But I heard\n"
# 217 "data/maps/Route112/scripts.pory"
	.string "we need a METEORITE to do it.$"
# 218 "data/maps/Route112/scripts.pory"

# 219 "data/maps/Route112/scripts.pory"
Route112_Text_OhThatsWhyCrewWentToFallarbor:
# 220 "data/maps/Route112/scripts.pory"
	.string "Oh, I get it now. That's why the rest\n"
# 221 "data/maps/Route112/scripts.pory"
	.string "of the crew went out to FALLARBOR.$"
# 222 "data/maps/Route112/scripts.pory"

# 223 "data/maps/Route112/scripts.pory"
Route112_Text_CantLetAnyonePassUntilTheyreBack:
# 224 "data/maps/Route112/scripts.pory"
	.string "You got it. And until they come back,\n"
# 225 "data/maps/Route112/scripts.pory"
	.string "we're not to let anyone pass, right.$"
# 226 "data/maps/Route112/scripts.pory"

# 227 "data/maps/Route112/scripts.pory"
Route112_Text_NotEasyToGetBackToLavaridge:
# 228 "data/maps/Route112/scripts.pory"
	.string "These stairs were built to make it\n"
# 229 "data/maps/Route112/scripts.pory"
	.string "easier for everyone to see AMATERASU.\p"
# 230 "data/maps/Route112/scripts.pory"
	.string "Now I can go to MAUVILLE\n"
# 231 "data/maps/Route112/scripts.pory"
	.string "whenever I want!$"
# 232 "data/maps/Route112/scripts.pory"

# 233 "data/maps/Route112/scripts.pory"
Route112_Text_OldManBlocker:
# 234 "data/maps/Route112/scripts.pory"
	.string "These old legs aren't what they used\n"
# 235 "data/maps/Route112/scripts.pory"
	.string "to be, but they can still get me\l"
# 236 "data/maps/Route112/scripts.pory"
	.string "up these stairs! Maybe just after\l"
# 237 "data/maps/Route112/scripts.pory"
	.string "a short break on this step...$"
# 238 "data/maps/Route112/scripts.pory"

# 239 "data/maps/Route112/scripts.pory"
Route112_Text_MtChimneyCableCarSign:
# 240 "data/maps/Route112/scripts.pory"
	.string "MT. CHIMNEY CABLE CAR\n"
# 241 "data/maps/Route112/scripts.pory"
	.string "“A short walk {UP_ARROW} way!”$"
# 242 "data/maps/Route112/scripts.pory"

# 243 "data/maps/Route112/scripts.pory"
Route112_Text_MtChimneySign:
# 244 "data/maps/Route112/scripts.pory"
	.string "MT. CHIMNEY\p"
# 245 "data/maps/Route112/scripts.pory"
	.string "“For LAVARIDGE TOWN or the summit,\n"
# 246 "data/maps/Route112/scripts.pory"
	.string "please take the CABLE CAR.”$"
# 247 "data/maps/Route112/scripts.pory"

# 248 "data/maps/Route112/scripts.pory"
Route112_Text_RouteSignLavaridge:
# 249 "data/maps/Route112/scripts.pory"
	.string "ROUTE 112\n"
# 250 "data/maps/Route112/scripts.pory"
	.string "{LEFT_ARROW} LAVARIDGE TOWN$"
# 251 "data/maps/Route112/scripts.pory"

# 252 "data/maps/Route112/scripts.pory"
Route112_Text_BedrockMiningSign:
# 253 "data/maps/Route112/scripts.pory"
	.string "Bedrock Mining Co.\n"
# 254 "data/maps/Route112/scripts.pory"
	.string "Temporary Headquarters$"
