# 1 "data/maps/RustboroCity/scripts.pory"

# 2 "data/maps/RustboroCity/scripts.pory"
RustboroCity_MapScripts::
# 3 "data/maps/RustboroCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, RustboroCity_OnTransition
# 4 "data/maps/RustboroCity/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, RustboroCity_OnFrame
# 5 "data/maps/RustboroCity/scripts.pory"
	.byte 0
# 6 "data/maps/RustboroCity/scripts.pory"

# 7 "data/maps/RustboroCity/scripts.pory"
RustboroCity_OnTransition:
# 8 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_VISITED_RUSTBORO_CITY
# 9 "data/maps/RustboroCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 10 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_LUKA_SCHOOL_SCENE
# 11 "data/maps/RustboroCity/scripts.pory"
	@ MAR's object is tied to FLAG_HIDE_MAR_RUST_VISIBILITY in map.json.
# 12 "data/maps/RustboroCity/scripts.pory"
	@ Force it set on every map load so he's hidden by default; the
# 13 "data/maps/RustboroCity/scripts.pory"
	@ trigger clears it only for the duration of his cutscene.
# 14 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_MAR_RUST_VISIBILITY
# 15 "data/maps/RustboroCity/scripts.pory"
	end
# 16 "data/maps/RustboroCity/scripts.pory"

# 17 "data/maps/RustboroCity/scripts.pory"
RustboroCity_OnFrame:
# 18 "data/maps/RustboroCity/scripts.pory"
	.2byte 0
# 19 "data/maps/RustboroCity/scripts.pory"

# 20 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LukaSchoolTrigger20::
# 21 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_RUSTBORO_LUKA_SCHOOL_SCENE_COMPLETE, RustboroCity_EventScript_LukaSchoolTriggerDone
# 22 "data/maps/RustboroCity/scripts.pory"
	lockall
# 23 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTBORO_CITY_LUKA_SCHOOL_SCENE
# 24 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE
# 25 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE, RustboroCity_Movement_LukaApproachPlayer20
# 26 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 27 "data/maps/RustboroCity/scripts.pory"
	turnobject LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE, DIR_WEST
# 28 "data/maps/RustboroCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_EAST
# 29 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_LukaSchoolDialogue
# 30 "data/maps/RustboroCity/scripts.pory"

# 31 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LukaSchoolTrigger21::
# 32 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_RUSTBORO_LUKA_SCHOOL_SCENE_COMPLETE, RustboroCity_EventScript_LukaSchoolTriggerDone
# 33 "data/maps/RustboroCity/scripts.pory"
	lockall
# 34 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTBORO_CITY_LUKA_SCHOOL_SCENE
# 35 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE
# 36 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE, RustboroCity_Movement_LukaApproachPlayer21
# 37 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 38 "data/maps/RustboroCity/scripts.pory"
	turnobject LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE, DIR_EAST
# 39 "data/maps/RustboroCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 40 "data/maps/RustboroCity/scripts.pory"

# 41 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LukaSchoolDialogue:
# 42 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 43 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_LukaSchoolScene, MSGBOX_DEFAULT
# 44 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 45 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 46 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE, RustboroCity_Movement_LukaSchoolExit
# 47 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 48 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_RUSTBORO_LUKA_SCHOOL_SCENE_COMPLETE
# 49 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_LUKA_SCHOOL_SCENE
# 50 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_LUKA_SCHOOL_SCENE
# 51 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 52 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 53 "data/maps/RustboroCity/scripts.pory"
	end
# 54 "data/maps/RustboroCity/scripts.pory"

# 55 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LukaSchoolTriggerDone:
# 56 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 57 "data/maps/RustboroCity/scripts.pory"
	end
# 58 "data/maps/RustboroCity/scripts.pory"

# 59 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_LukaApproachPlayer20:
# 60 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 61 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 62 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 63 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 64 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 65 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 66 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 67 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 68 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 69 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 70 "data/maps/RustboroCity/scripts.pory"
	step_end
# 71 "data/maps/RustboroCity/scripts.pory"

# 72 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_LukaApproachPlayer21:
# 73 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 74 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 75 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 76 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 77 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 78 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 79 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 80 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 81 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 82 "data/maps/RustboroCity/scripts.pory"
	step_end
# 83 "data/maps/RustboroCity/scripts.pory"

# 84 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_LukaSchoolExit:
# 85 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 86 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 87 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 88 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 89 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 90 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 91 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 92 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 93 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 94 "data/maps/RustboroCity/scripts.pory"
	walk_fast_down
# 95 "data/maps/RustboroCity/scripts.pory"
	step_end
# 96 "data/maps/RustboroCity/scripts.pory"

# 97 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_LukaSchoolScene:
# 98 "data/maps/RustboroCity/scripts.pory"
	.string "LUKA: Hey, {PLAYER}! I was heading to\n"
# 99 "data/maps/RustboroCity/scripts.pory"
	.string "VERDANTURF, but it looks like that\l"
# 100 "data/maps/RustboroCity/scripts.pory"
	.string "tunnel still isn't open, so I'll have\l"
# 101 "data/maps/RustboroCity/scripts.pory"
	.string "to go a different way.\p"
# 102 "data/maps/RustboroCity/scripts.pory"
	.string "I stopped by the TRAINER SCHOOL here,\n"
# 103 "data/maps/RustboroCity/scripts.pory"
	.string "but they didn't have anything useful\l"
# 104 "data/maps/RustboroCity/scripts.pory"
	.string "about the comet.\p"
# 105 "data/maps/RustboroCity/scripts.pory"
	.string "There were lots of books that would\n"
# 106 "data/maps/RustboroCity/scripts.pory"
	.string "help someone starting a new POKEMON\l"
# 107 "data/maps/RustboroCity/scripts.pory"
	.string "journey, though.\p"
# 108 "data/maps/RustboroCity/scripts.pory"
	.string "You should stop by if you haven't\n"
# 109 "data/maps/RustboroCity/scripts.pory"
	.string "already.\p"
# 110 "data/maps/RustboroCity/scripts.pory"
	.string "See you around!$"
# 111 "data/maps/RustboroCity/scripts.pory"

# 112 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_FatMan::
# 113 "data/maps/RustboroCity/scripts.pory"
	lock
# 114 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 115 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEVON_GOODS_STOLEN, RustboroCity_EventScript_FatManSawGrunt
# 116 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WeShortenItToDevon, MSGBOX_DEFAULT
# 117 "data/maps/RustboroCity/scripts.pory"
	release
# 118 "data/maps/RustboroCity/scripts.pory"
	end
# 119 "data/maps/RustboroCity/scripts.pory"

# 120 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_FatManSawGrunt::
# 121 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_SneakyLookingManWentAroundCorner, MSGBOX_DEFAULT
# 122 "data/maps/RustboroCity/scripts.pory"
	release
# 123 "data/maps/RustboroCity/scripts.pory"
	end
# 124 "data/maps/RustboroCity/scripts.pory"

# 125 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonEmployee2::
# 126 "data/maps/RustboroCity/scripts.pory"
	lock
# 127 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 128 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YoureNewAroundHere, MSGBOX_DEFAULT
# 129 "data/maps/RustboroCity/scripts.pory"
	release
# 130 "data/maps/RustboroCity/scripts.pory"
	end
# 131 "data/maps/RustboroCity/scripts.pory"

# 132 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Woman::
# 133 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_GymLeaderIsntEasyWithFire, MSGBOX_NPC
# 134 "data/maps/RustboroCity/scripts.pory"
	end
# 135 "data/maps/RustboroCity/scripts.pory"

# 136 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man1::
# 137 "data/maps/RustboroCity/scripts.pory"
	lock
# 138 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 139 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_EventScript_Man1HaveBadge
# 140 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HaveYouChallengedGym, MSGBOX_DEFAULT
# 141 "data/maps/RustboroCity/scripts.pory"
	release
# 142 "data/maps/RustboroCity/scripts.pory"
	end
# 143 "data/maps/RustboroCity/scripts.pory"

# 144 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man1HaveBadge::
# 145 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HeyThatsRustborosGymBadge, MSGBOX_DEFAULT
# 146 "data/maps/RustboroCity/scripts.pory"
	release
# 147 "data/maps/RustboroCity/scripts.pory"
	end
# 148 "data/maps/RustboroCity/scripts.pory"

# 149 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy2::
# 150 "data/maps/RustboroCity/scripts.pory"
	lock
# 151 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 152 "data/maps/RustboroCity/scripts.pory"
	goto_if_set DN_FLAG_DEXNAV_GET, RustboroCity_EventScript_Boy2BrineyLeftTunnel
# 153 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MrBrineyWalksInTheTunnel, MSGBOX_DEFAULT
# 154 "data/maps/RustboroCity/scripts.pory"
	release
# 155 "data/maps/RustboroCity/scripts.pory"
	end
# 156 "data/maps/RustboroCity/scripts.pory"

# 157 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy2BrineyLeftTunnel::
# 158 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MrBrineyLovesPeeko, MSGBOX_DEFAULT
# 159 "data/maps/RustboroCity/scripts.pory"
	release
# 160 "data/maps/RustboroCity/scripts.pory"
	end
# 161 "data/maps/RustboroCity/scripts.pory"

# 162 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Twin::
# 163 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WowYouHavePokemon, MSGBOX_NPC
# 164 "data/maps/RustboroCity/scripts.pory"
	end
# 165 "data/maps/RustboroCity/scripts.pory"

# 166 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_NinjaBoy::
# 167 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CatchRarePokemonIfIGoToSchool, MSGBOX_SIGN
# 168 "data/maps/RustboroCity/scripts.pory"
	end
# 169 "data/maps/RustboroCity/scripts.pory"

# 170 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_TunnelSign::
# 171 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TunnelNearingCompletion, MSGBOX_SIGN
# 172 "data/maps/RustboroCity/scripts.pory"
	end
# 173 "data/maps/RustboroCity/scripts.pory"

# 174 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonCorpSign::
# 175 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_DevonCorpSign, MSGBOX_SIGN
# 176 "data/maps/RustboroCity/scripts.pory"
	end
# 177 "data/maps/RustboroCity/scripts.pory"

# 178 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_GymSign::
# 179 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_GymSign, MSGBOX_SIGN
# 180 "data/maps/RustboroCity/scripts.pory"
	end
# 181 "data/maps/RustboroCity/scripts.pory"

# 182 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 183 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonCorpBranchOfficeSign::
# 184 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_DevonCorpBranchOfficeSign, MSGBOX_SIGN
# 185 "data/maps/RustboroCity/scripts.pory"
	end
# 186 "data/maps/RustboroCity/scripts.pory"

# 187 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_CitySign::
# 188 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CitySign, MSGBOX_SIGN
# 189 "data/maps/RustboroCity/scripts.pory"
	end
# 190 "data/maps/RustboroCity/scripts.pory"

# 191 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_TrainersSchoolSign::
# 192 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TrainersSchoolSign, MSGBOX_SIGN
# 193 "data/maps/RustboroCity/scripts.pory"
	end
# 194 "data/maps/RustboroCity/scripts.pory"

# 195 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_CuttersHouseSign::
# 196 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CuttersHouse, MSGBOX_SIGN
# 197 "data/maps/RustboroCity/scripts.pory"
	end
# 198 "data/maps/RustboroCity/scripts.pory"

# 199 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LittleBoy::
# 200 "data/maps/RustboroCity/scripts.pory"
	lock
# 201 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 202 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PokemonCanChangeLookFromExp, MSGBOX_DEFAULT
# 203 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LITTLE_BOY, Common_Movement_FaceOriginalDirection
# 204 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 205 "data/maps/RustboroCity/scripts.pory"
	release
# 206 "data/maps/RustboroCity/scripts.pory"
	end
# 207 "data/maps/RustboroCity/scripts.pory"

# 208 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LittleGirl::
# 209 "data/maps/RustboroCity/scripts.pory"
	lock
# 210 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 211 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PokemonChangeShape, MSGBOX_DEFAULT
# 212 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LITTLE_GIRL, Common_Movement_FaceOriginalDirection
# 213 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 214 "data/maps/RustboroCity/scripts.pory"
	release
# 215 "data/maps/RustboroCity/scripts.pory"
	end
# 216 "data/maps/RustboroCity/scripts.pory"

# 217 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man2::
# 218 "data/maps/RustboroCity/scripts.pory"
	lock
# 219 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 220 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TradePokemonGrowFast, MSGBOX_DEFAULT
# 221 "data/maps/RustboroCity/scripts.pory"
	release
# 222 "data/maps/RustboroCity/scripts.pory"
	end
# 223 "data/maps/RustboroCity/scripts.pory"

# 224 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger0::
# 225 "data/maps/RustboroCity/scripts.pory"
	lockall
# 226 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 227 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 228 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 0
# 229 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 230 "data/maps/RustboroCity/scripts.pory"
	end
# 231 "data/maps/RustboroCity/scripts.pory"

# 232 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger1::
# 233 "data/maps/RustboroCity/scripts.pory"
	lockall
# 234 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 235 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 236 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 1
# 237 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 238 "data/maps/RustboroCity/scripts.pory"
	end
# 239 "data/maps/RustboroCity/scripts.pory"

# 240 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger2::
# 241 "data/maps/RustboroCity/scripts.pory"
	lockall
# 242 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 243 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 244 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 2
# 245 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 246 "data/maps/RustboroCity/scripts.pory"
	end
# 247 "data/maps/RustboroCity/scripts.pory"

# 248 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger3::
# 249 "data/maps/RustboroCity/scripts.pory"
	lockall
# 250 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 251 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 252 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 3
# 253 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 254 "data/maps/RustboroCity/scripts.pory"
	end
# 255 "data/maps/RustboroCity/scripts.pory"

# 256 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger4::
# 257 "data/maps/RustboroCity/scripts.pory"
	lockall
# 258 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 259 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 260 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 4
# 261 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 262 "data/maps/RustboroCity/scripts.pory"
	end
# 263 "data/maps/RustboroCity/scripts.pory"

# 264 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsScene::
# 265 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_OutOfTheWay, MSGBOX_DEFAULT
# 266 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 267 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 268 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_GRUNT
# 269 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 270 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_GRUNT, RustboroCity_Movement_GruntEscape
# 271 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 272 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_GRUNT
# 273 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeChaseGrunt1
# 274 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 275 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WaitDontTakeMyGoods, MSGBOX_DEFAULT
# 276 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 277 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeChaseGrunt2
# 278 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 279 "data/maps/RustboroCity/scripts.pory"
	fadedefaultbgm
# 280 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 281 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 30, 10
# 282 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
# 283 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEVON_GOODS_STOLEN
# 284 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 2
# 285 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTURF_TUNNEL_STATE, 2
# 286 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE116_STATE, 1
# 287 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_116_MR_BRINEY
# 288 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_PEEKO
# 289 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_AQUA_GRUNT
# 290 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_BRINEYS_HOUSE_MR_BRINEY
# 291 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_BRINEYS_HOUSE_PEEKO
# 292 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 293 "data/maps/RustboroCity/scripts.pory"
	end
# 294 "data/maps/RustboroCity/scripts.pory"

# 295 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 296 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ShadyCharacterTookOff::
# 297 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel, MSGBOX_DEFAULT
# 298 "data/maps/RustboroCity/scripts.pory"
	return
# 299 "data/maps/RustboroCity/scripts.pory"

# 300 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 301 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_YouGotItThankYou::
# 302 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouGotItThankYou, MSGBOX_DEFAULT
# 303 "data/maps/RustboroCity/scripts.pory"
	return
# 304 "data/maps/RustboroCity/scripts.pory"

# 305 "data/maps/RustboroCity/scripts.pory"
@ Unknown, unused employee movements.
# 306 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachUp::
# 307 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachUp
# 308 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 309 "data/maps/RustboroCity/scripts.pory"
	return
# 310 "data/maps/RustboroCity/scripts.pory"

# 311 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 312 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachLeft::
# 313 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachLeft
# 314 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 315 "data/maps/RustboroCity/scripts.pory"
	return
# 316 "data/maps/RustboroCity/scripts.pory"

# 317 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 318 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachRight::
# 319 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachRight
# 320 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 321 "data/maps/RustboroCity/scripts.pory"
	return
# 322 "data/maps/RustboroCity/scripts.pory"

# 323 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 324 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachDown::
# 325 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachDown
# 326 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 327 "data/maps/RustboroCity/scripts.pory"
	return
# 328 "data/maps/RustboroCity/scripts.pory"

# 329 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 330 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerFar::
# 331 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerFar
# 332 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 333 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 334 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 335 "data/maps/RustboroCity/scripts.pory"
	return
# 336 "data/maps/RustboroCity/scripts.pory"

# 337 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 338 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_GruntEscapeExtended:
# 339 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 340 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 341 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 342 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 343 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 344 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 345 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 346 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 347 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 348 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 349 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 350 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 351 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 352 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 353 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 354 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 355 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 356 "data/maps/RustboroCity/scripts.pory"
	step_end
# 357 "data/maps/RustboroCity/scripts.pory"

# 358 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_GruntEscape:
# 359 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 360 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 361 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 362 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 363 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 364 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 365 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 366 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 367 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 368 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 369 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 370 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 371 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 372 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 373 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 374 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 375 "data/maps/RustboroCity/scripts.pory"
	step_end
# 376 "data/maps/RustboroCity/scripts.pory"

# 377 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeChaseGrunt1:
# 378 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 379 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 380 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 381 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 382 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 383 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 384 "data/maps/RustboroCity/scripts.pory"
	walk_in_place_faster_up
# 385 "data/maps/RustboroCity/scripts.pory"
	step_end
# 386 "data/maps/RustboroCity/scripts.pory"

# 387 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeChaseGrunt2:
# 388 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 389 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 390 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 391 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 392 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 393 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 394 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 395 "data/maps/RustboroCity/scripts.pory"
	step_end
# 396 "data/maps/RustboroCity/scripts.pory"

# 397 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 398 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachUp:
# 399 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 400 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 401 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 402 "data/maps/RustboroCity/scripts.pory"
	step_end
# 403 "data/maps/RustboroCity/scripts.pory"

# 404 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 405 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachLeft:
# 406 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 407 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 408 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 409 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 410 "data/maps/RustboroCity/scripts.pory"
	step_end
# 411 "data/maps/RustboroCity/scripts.pory"

# 412 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 413 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachRight:
# 414 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 415 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 416 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 417 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 418 "data/maps/RustboroCity/scripts.pory"
	step_end
# 419 "data/maps/RustboroCity/scripts.pory"

# 420 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 421 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachDown:
# 422 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 423 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 424 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 425 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 426 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 427 "data/maps/RustboroCity/scripts.pory"
	step_end
# 428 "data/maps/RustboroCity/scripts.pory"

# 429 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 430 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachPlayerFar:
# 431 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 432 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 433 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 434 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 435 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 436 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 437 "data/maps/RustboroCity/scripts.pory"
	walk_in_place_faster_down
# 438 "data/maps/RustboroCity/scripts.pory"
	step_end
# 439 "data/maps/RustboroCity/scripts.pory"

# 440 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonEmployee1::
# 441 "data/maps/RustboroCity/scripts.pory"
	lock
# 442 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 443 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_RECOVERED_DEVON_GOODS, RustboroCity_EventScript_ReturnGoodsSpokeToEmployee
# 444 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel, MSGBOX_DEFAULT
# 445 "data/maps/RustboroCity/scripts.pory"
	release
# 446 "data/maps/RustboroCity/scripts.pory"
	end
# 447 "data/maps/RustboroCity/scripts.pory"

# 448 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsSpokeToEmployee::
# 449 "data/maps/RustboroCity/scripts.pory"
	waitse
# 450 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 4
# 451 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 452 "data/maps/RustboroCity/scripts.pory"
	end
# 453 "data/maps/RustboroCity/scripts.pory"

# 454 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger0::
# 455 "data/maps/RustboroCity/scripts.pory"
	lockall
# 456 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 0
# 457 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 458 "data/maps/RustboroCity/scripts.pory"
	end
# 459 "data/maps/RustboroCity/scripts.pory"

# 460 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger1::
# 461 "data/maps/RustboroCity/scripts.pory"
	lockall
# 462 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 463 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 464 "data/maps/RustboroCity/scripts.pory"
	end
# 465 "data/maps/RustboroCity/scripts.pory"

# 466 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger2::
# 467 "data/maps/RustboroCity/scripts.pory"
	lockall
# 468 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 2
# 469 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 470 "data/maps/RustboroCity/scripts.pory"
	end
# 471 "data/maps/RustboroCity/scripts.pory"

# 472 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger3::
# 473 "data/maps/RustboroCity/scripts.pory"
	lockall
# 474 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 3
# 475 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 476 "data/maps/RustboroCity/scripts.pory"
	end
# 477 "data/maps/RustboroCity/scripts.pory"

# 478 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeAskToGetGoods::
# 479 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, RustboroCity_EventScript_EmployeeFacePlayerUp1
# 480 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, RustboroCity_EventScript_EmployeeFacePlayerLeft1
# 481 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, RustboroCity_EventScript_EmployeeFacePlayerDown1
# 482 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 3, RustboroCity_EventScript_EmployeeApproachPlayerDown1
# 483 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_INTERACTED_WITH_DEVON_EMPLOYEE_GOODS_STOLEN
# 484 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 3
# 485 "data/maps/RustboroCity/scripts.pory"
	copyobjectxytoperm LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 486 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HelpMeIWasRobbed, MSGBOX_DEFAULT
# 487 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 488 "data/maps/RustboroCity/scripts.pory"
	end
# 489 "data/maps/RustboroCity/scripts.pory"

# 490 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerUp1::
# 491 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 492 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 493 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 494 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 495 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 496 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 497 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 498 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 499 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 500 "data/maps/RustboroCity/scripts.pory"
	return
# 501 "data/maps/RustboroCity/scripts.pory"

# 502 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerLeft1::
# 503 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterLeft
# 504 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 505 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 506 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 507 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 508 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 509 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 510 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 511 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 512 "data/maps/RustboroCity/scripts.pory"
	return
# 513 "data/maps/RustboroCity/scripts.pory"

# 514 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerDown1::
# 515 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 516 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 517 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 518 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 519 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 520 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 521 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 522 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 523 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 524 "data/maps/RustboroCity/scripts.pory"
	return
# 525 "data/maps/RustboroCity/scripts.pory"

# 526 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerDown1::
# 527 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 528 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 529 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 530 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 531 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 532 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 533 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 534 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerDown
# 535 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 536 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 537 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 538 "data/maps/RustboroCity/scripts.pory"
	return
# 539 "data/maps/RustboroCity/scripts.pory"

# 540 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachPlayerDown:
# 541 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 542 "data/maps/RustboroCity/scripts.pory"
	step_end
# 543 "data/maps/RustboroCity/scripts.pory"

# 544 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger0::
# 545 "data/maps/RustboroCity/scripts.pory"
	lockall
# 546 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 0
# 547 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 548 "data/maps/RustboroCity/scripts.pory"
	end
# 549 "data/maps/RustboroCity/scripts.pory"

# 550 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger1::
# 551 "data/maps/RustboroCity/scripts.pory"
	lockall
# 552 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 553 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 554 "data/maps/RustboroCity/scripts.pory"
	end
# 555 "data/maps/RustboroCity/scripts.pory"

# 556 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger2::
# 557 "data/maps/RustboroCity/scripts.pory"
	lockall
# 558 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 2
# 559 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 560 "data/maps/RustboroCity/scripts.pory"
	end
# 561 "data/maps/RustboroCity/scripts.pory"

# 562 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger3::
# 563 "data/maps/RustboroCity/scripts.pory"
	lockall
# 564 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 3
# 565 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 566 "data/maps/RustboroCity/scripts.pory"
	end
# 567 "data/maps/RustboroCity/scripts.pory"

# 568 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoods::
# 569 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, RustboroCity_EventScript_EmployeeFacePlayerUp2
# 570 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, RustboroCity_EventScript_EmployeeFacePlayerLeft2
# 571 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, RustboroCity_EventScript_EmployeeFacePlayerDown2
# 572 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 3, RustboroCity_EventScript_EmployeeApproachPlayerDown2
# 573 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 4, RustboroCity_EventScript_EmployeeFacePlayerRight
# 574 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouGotItThankYou, MSGBOX_DEFAULT
# 575 "data/maps/RustboroCity/scripts.pory"
	giveitem ITEM_ABILITY_CAPSULE
# 576 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, RustboroCity_EventScript_BagFull
# 577 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 578 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 579 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_RETURNED_DEVON_GOODS
# 580 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
# 581 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 5
# 582 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 583 "data/maps/RustboroCity/scripts.pory"
	warp MAP_RUSTBORO_CITY_DEVON_CORP_3F, 2, 2
# 584 "data/maps/RustboroCity/scripts.pory"
	waitstate
# 585 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 586 "data/maps/RustboroCity/scripts.pory"
	end
# 587 "data/maps/RustboroCity/scripts.pory"

# 588 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BagFull::
# 589 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YoureLoadedWithItems, MSGBOX_DEFAULT
# 590 "data/maps/RustboroCity/scripts.pory"
	return
# 591 "data/maps/RustboroCity/scripts.pory"

# 592 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerUp2::
# 593 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 594 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 595 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 596 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 597 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 598 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 599 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 600 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 601 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 602 "data/maps/RustboroCity/scripts.pory"
	return
# 603 "data/maps/RustboroCity/scripts.pory"

# 604 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerLeft2::
# 605 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterRight
# 606 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 607 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 608 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 609 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 610 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 611 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 612 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 613 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 614 "data/maps/RustboroCity/scripts.pory"
	return
# 615 "data/maps/RustboroCity/scripts.pory"

# 616 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerDown2::
# 617 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 618 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 619 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 620 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 621 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 622 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 623 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 624 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 625 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 626 "data/maps/RustboroCity/scripts.pory"
	return
# 627 "data/maps/RustboroCity/scripts.pory"

# 628 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerDown2::
# 629 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 630 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 631 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 632 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 633 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 634 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 635 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 636 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerDown
# 637 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 638 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 639 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 640 "data/maps/RustboroCity/scripts.pory"
	return
# 641 "data/maps/RustboroCity/scripts.pory"

# 642 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerRight::
# 643 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterLeft
# 644 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 645 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 646 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 647 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 648 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 649 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 650 "data/maps/RustboroCity/scripts.pory"
	return
# 651 "data/maps/RustboroCity/scripts.pory"

# 652 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Rival::
# 653 "data/maps/RustboroCity/scripts.pory"
    lockall
# 654 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalAfterBattle
# 655 "data/maps/RustboroCity/scripts.pory"
    goto_if_unset FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalFirstMeeting
# 656 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 657 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_FacePlayer
# 658 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 659 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 660 "data/maps/RustboroCity/scripts.pory"

# 661 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalFirstMeeting::
# 662 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 663 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_FacePlayer
# 664 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 665 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_MET_RIVAL_RUSTBORO
# 666 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 667 "data/maps/RustboroCity/scripts.pory"

# 668 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalAfterBattle::
# 669 "data/maps/RustboroCity/scripts.pory"
    checkplayergender
# 670 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_MayBrineyHint
# 671 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_BrendanBrineyHint
# 672 "data/maps/RustboroCity/scripts.pory"
    end
# 673 "data/maps/RustboroCity/scripts.pory"

# 674 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_GiveExpShareAfterBattle::
# 675 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL, RustboroCity_EventScript_AlreadyGotExpShare
# 676 "data/maps/RustboroCity/scripts.pory"
    giveitem ITEM_EXP_SHARE
# 677 "data/maps/RustboroCity/scripts.pory"
    setflag I_EXP_SHARE_FLAG
# 678 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL
# 679 "data/maps/RustboroCity/scripts.pory"
    return
# 680 "data/maps/RustboroCity/scripts.pory"

# 681 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_AlreadyGotExpShare::
# 682 "data/maps/RustboroCity/scripts.pory"
    return
# 683 "data/maps/RustboroCity/scripts.pory"

# 684 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayExpShareAfterBattle::
# 685 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL, RustboroCity_EventScript_AlreadyGotExpShare
# 686 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 687 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_MayHiLetsRegister, MSGBOX_DEFAULT
# 688 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 689 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_GiveExpShareAfterBattle
# 690 "data/maps/RustboroCity/scripts.pory"
    return
# 691 "data/maps/RustboroCity/scripts.pory"

# 692 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanExpShareAfterBattle::
# 693 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL, RustboroCity_EventScript_AlreadyGotExpShare
# 694 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 695 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_BrendanHiLetsRegister, MSGBOX_DEFAULT
# 696 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 697 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_GiveExpShareAfterBattle
# 698 "data/maps/RustboroCity/scripts.pory"
    return
# 699 "data/maps/RustboroCity/scripts.pory"

# 700 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayRivalMusic::
# 701 "data/maps/RustboroCity/scripts.pory"
	checkplayergender
# 702 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_PlayMayMusic
# 703 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_PlayBrendanMusic
# 704 "data/maps/RustboroCity/scripts.pory"
	return
# 705 "data/maps/RustboroCity/scripts.pory"

# 706 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayMayMusic::
# 707 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 708 "data/maps/RustboroCity/scripts.pory"
	return
# 709 "data/maps/RustboroCity/scripts.pory"

# 710 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayBrendanMusic::
# 711 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 712 "data/maps/RustboroCity/scripts.pory"
	return
# 713 "data/maps/RustboroCity/scripts.pory"

# 714 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger0::
# 715 "data/maps/RustboroCity/scripts.pory"
    lockall
# 716 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 717 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 718 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 719 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 720 "data/maps/RustboroCity/scripts.pory"
    playse SE_PIN
# 721 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 722 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 723 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 724 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 725 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer0
# 726 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 727 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 728 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 729 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 730 "data/maps/RustboroCity/scripts.pory"

# 731 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger1::
# 732 "data/maps/RustboroCity/scripts.pory"
	lockall
# 733 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 734 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 735 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 736 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 737 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 738 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 739 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 740 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 741 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 742 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer1
# 743 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 744 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 745 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 746 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 747 "data/maps/RustboroCity/scripts.pory"

# 748 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger2::
# 749 "data/maps/RustboroCity/scripts.pory"
	lockall
# 750 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 751 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 752 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 753 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 754 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 755 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 756 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 757 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 758 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 759 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer2
# 760 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 761 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 762 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 763 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 764 "data/maps/RustboroCity/scripts.pory"

# 765 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger3::
# 766 "data/maps/RustboroCity/scripts.pory"
	lockall
# 767 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 768 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 769 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 770 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 771 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 772 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 773 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 774 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 775 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 776 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer3
# 777 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 778 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 779 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 780 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 781 "data/maps/RustboroCity/scripts.pory"

# 782 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger4::
# 783 "data/maps/RustboroCity/scripts.pory"
	lockall
# 784 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 785 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 786 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 787 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 788 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 789 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 790 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 791 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 792 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 793 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer4
# 794 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 795 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 796 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 797 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 798 "data/maps/RustboroCity/scripts.pory"

# 799 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger5::
# 800 "data/maps/RustboroCity/scripts.pory"
	lockall
# 801 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 802 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 803 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 804 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 805 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 806 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 807 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 808 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 809 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 810 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer5
# 811 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 812 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 813 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 814 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 815 "data/maps/RustboroCity/scripts.pory"

# 816 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger6::
# 817 "data/maps/RustboroCity/scripts.pory"
	lockall
# 818 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 819 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 820 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 821 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 822 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 823 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 824 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 825 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 826 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 827 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer6
# 828 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 829 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 830 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 831 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 832 "data/maps/RustboroCity/scripts.pory"

# 833 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger7::
# 834 "data/maps/RustboroCity/scripts.pory"
	lockall
# 835 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 836 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 837 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 838 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 839 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 840 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 841 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 842 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 843 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 844 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer7
# 845 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 846 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 847 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 848 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 849 "data/maps/RustboroCity/scripts.pory"

# 850 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalEncounter::
# 851 "data/maps/RustboroCity/scripts.pory"
	checkplayergender
# 852 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_MayEncounter
# 853 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_BrendanEncounter
# 854 "data/maps/RustboroCity/scripts.pory"
	end
# 855 "data/maps/RustboroCity/scripts.pory"

# 856 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BlockPlayer::
# 857 "data/maps/RustboroCity/scripts.pory"
    lockall
# 858 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_NeedToTalkToRival, MSGBOX_DEFAULT
# 859 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 860 "data/maps/RustboroCity/scripts.pory"
    end
# 861 "data/maps/RustboroCity/scripts.pory"

# 862 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalDeclined::
# 863 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_RestoreBgm
# 864 "data/maps/RustboroCity/scripts.pory"
    getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 865 "data/maps/RustboroCity/scripts.pory"
    setvar VAR_RUSTBORO_CITY_STATE, 7
# 866 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkUp
# 867 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 868 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_TEMP_1, 53, RustboroCity_EventScript_RivalReturnAfterDecline
# 869 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 870 "data/maps/RustboroCity/scripts.pory"
    end
# 871 "data/maps/RustboroCity/scripts.pory"

# 872 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnAfterDecline::
# 873 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 12, RustboroCity_EventScript_RivalReturnFromTrigger0
# 874 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 13, RustboroCity_EventScript_RivalReturnFromTrigger1
# 875 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 14, RustboroCity_EventScript_RivalReturnFromTrigger2
# 876 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 15, RustboroCity_EventScript_RivalReturnFromTrigger3
# 877 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 16, RustboroCity_EventScript_RivalReturnFromTrigger4
# 878 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 17, RustboroCity_EventScript_RivalReturnFromTrigger5
# 879 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 18, RustboroCity_EventScript_RivalReturnFromTrigger6
# 880 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 19, RustboroCity_EventScript_RivalReturnFromTrigger7
# 881 "data/maps/RustboroCity/scripts.pory"
    return
# 882 "data/maps/RustboroCity/scripts.pory"

# 883 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger0::
# 884 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn0
# 885 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 886 "data/maps/RustboroCity/scripts.pory"
    return
# 887 "data/maps/RustboroCity/scripts.pory"

# 888 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger1::
# 889 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn1
# 890 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 891 "data/maps/RustboroCity/scripts.pory"
    return
# 892 "data/maps/RustboroCity/scripts.pory"

# 893 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger2::
# 894 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn2
# 895 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 896 "data/maps/RustboroCity/scripts.pory"
    return
# 897 "data/maps/RustboroCity/scripts.pory"

# 898 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger3::
# 899 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn3
# 900 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 901 "data/maps/RustboroCity/scripts.pory"
    return
# 902 "data/maps/RustboroCity/scripts.pory"

# 903 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger4::
# 904 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn4
# 905 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 906 "data/maps/RustboroCity/scripts.pory"
    return
# 907 "data/maps/RustboroCity/scripts.pory"

# 908 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger5::
# 909 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn5
# 910 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 911 "data/maps/RustboroCity/scripts.pory"
    return
# 912 "data/maps/RustboroCity/scripts.pory"

# 913 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger6::
# 914 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn6
# 915 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 916 "data/maps/RustboroCity/scripts.pory"
    return
# 917 "data/maps/RustboroCity/scripts.pory"

# 918 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalReturnFromTrigger7::
# 919 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalReturn7
# 920 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 921 "data/maps/RustboroCity/scripts.pory"
    return
# 922 "data/maps/RustboroCity/scripts.pory"

# 923 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTriggerAfter::
# 924 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 925 "data/maps/RustboroCity/scripts.pory"
    end
# 926 "data/maps/RustboroCity/scripts.pory"

# 927 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeave::
# 928 "data/maps/RustboroCity/scripts.pory"
    getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 929 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_1, 53, RustboroCity_EventScript_RivalLeaveFromTrigger
# 930 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 17, RustboroCity_EventScript_RivalLeaveSameColumn
# 931 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveDirect
# 932 "data/maps/RustboroCity/scripts.pory"

# 933 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveSameColumn::
# 934 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_1, 51, RustboroCity_EventScript_RivalLeaveFromSouth
# 935 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveDirect
# 936 "data/maps/RustboroCity/scripts.pory"

# 937 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveFromTrigger::
# 938 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 12, RustboroCity_EventScript_RivalLeaveTrigger0
# 939 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 13, RustboroCity_EventScript_RivalLeaveTrigger1
# 940 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 14, RustboroCity_EventScript_RivalLeaveTrigger2
# 941 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 15, RustboroCity_EventScript_RivalLeaveTrigger3
# 942 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 16, RustboroCity_EventScript_RivalLeaveTrigger4
# 943 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 17, RustboroCity_EventScript_RivalLeaveTrigger5
# 944 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 18, RustboroCity_EventScript_RivalLeaveTrigger6
# 945 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_TEMP_0, 19, RustboroCity_EventScript_RivalLeaveTrigger7
# 946 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveDirect
# 947 "data/maps/RustboroCity/scripts.pory"

# 948 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger0::
# 949 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 950 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 951 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveRight3
# 952 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 953 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 954 "data/maps/RustboroCity/scripts.pory"

# 955 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger1::
# 956 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 957 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 958 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveRight2
# 959 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 960 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 961 "data/maps/RustboroCity/scripts.pory"

# 962 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger2::
# 963 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 964 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 965 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveRight1
# 966 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 967 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 968 "data/maps/RustboroCity/scripts.pory"

# 969 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger3::
# 970 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 971 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 972 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 973 "data/maps/RustboroCity/scripts.pory"

# 974 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger4::
# 975 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 976 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 977 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft1
# 978 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 979 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 980 "data/maps/RustboroCity/scripts.pory"

# 981 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger5::
# 982 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 983 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 984 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft2
# 985 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 986 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 987 "data/maps/RustboroCity/scripts.pory"

# 988 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger6::
# 989 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 990 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 991 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft3
# 992 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 993 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 994 "data/maps/RustboroCity/scripts.pory"

# 995 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveTrigger7::
# 996 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft2
# 997 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 998 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown2
# 999 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1000 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft2
# 1001 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1002 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 1003 "data/maps/RustboroCity/scripts.pory"

# 1004 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveDirect::
# 1005 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown4
# 1006 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1007 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft1
# 1008 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1009 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 1010 "data/maps/RustboroCity/scripts.pory"

# 1011 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveFromSouth::
# 1012 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveRight1Down4
# 1013 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1014 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveLeft2
# 1015 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1016 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalLeaveOffscreen
# 1017 "data/maps/RustboroCity/scripts.pory"

# 1018 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalLeaveOffscreen::
# 1019 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalLeaveDown6
# 1020 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 1021 "data/maps/RustboroCity/scripts.pory"
    removeobject LOCALID_RUSTBORO_RIVAL
# 1022 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_HIDE_RUSTBORO_CITY_RIVAL
# 1023 "data/maps/RustboroCity/scripts.pory"
    return
# 1024 "data/maps/RustboroCity/scripts.pory"

# 1025 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayEncounter::
# 1026 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_MayBrineyHint
# 1027 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_MayAskToBattle
# 1028 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_MET_RIVAL_RUSTBORO
# 1029 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed msgbox RustboroCity_Text_MayHiLetsRegister, MSGBOX_DEFAULT
# 1030 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed closemessage
# 1031 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed delay 30
# 1032 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 1033 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed msgbox RustboroCity_Text_RegisteredMay, MSGBOX_DEFAULT
# 1034 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed waitfanfare
# 1035 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed closemessage
# 1036 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed delay 30
# 1037 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 1038 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 1039 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 1040 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8008, 0
# 1041 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 1042 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayPassedBrineyWantToBattle, MSGBOX_YESNO
# 1043 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1044 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleMay
# 1045 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 1046 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_MayOhHaventRaisedPokemonEnough, MSGBOX_DEFAULT
# 1047 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 1048 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalDeclined
# 1049 "data/maps/RustboroCity/scripts.pory"

# 1050 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayAskToBattle::
# 1051 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8008, 1
# 1052 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 1053 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayWantToBattle, MSGBOX_YESNO
# 1054 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1055 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleMay
# 1056 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 1057 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_MayOhHaventRaisedPokemonEnough, MSGBOX_DEFAULT
# 1058 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 1059 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalDeclined
# 1060 "data/maps/RustboroCity/scripts.pory"

# 1061 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMay::
# 1062 "data/maps/RustboroCity/scripts.pory"
    setrespawn HEAL_LOCATION_RUSTBORO_CITY
# 1063 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 1064 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayImNotGoingToLose, MSGBOX_DEFAULT
# 1065 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1066 "data/maps/RustboroCity/scripts.pory"
	switch VAR_STARTER_MON
# 1067 "data/maps/RustboroCity/scripts.pory"
	case 0, RustboroCity_EventScript_BattleMayTreecko
# 1068 "data/maps/RustboroCity/scripts.pory"
	case 1, RustboroCity_EventScript_BattleMayTorchic
# 1069 "data/maps/RustboroCity/scripts.pory"
	case 2, RustboroCity_EventScript_BattleMayMudkip
# 1070 "data/maps/RustboroCity/scripts.pory"
	end
# 1071 "data/maps/RustboroCity/scripts.pory"

# 1072 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayBrineyHint::
# 1073 "data/maps/RustboroCity/scripts.pory"
    lock
# 1074 "data/maps/RustboroCity/scripts.pory"
    faceplayer
# 1075 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 1076 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_MayMrBrineyHint, MSGBOX_DEFAULT
# 1077 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 1078 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_0x8008, 0, RustboroCity_EventScript_RestoreBgm
# 1079 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_RivalLeave
# 1080 "data/maps/RustboroCity/scripts.pory"
    release
# 1081 "data/maps/RustboroCity/scripts.pory"
    end
# 1082 "data/maps/RustboroCity/scripts.pory"

# 1083 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RestoreBgm::
# 1084 "data/maps/RustboroCity/scripts.pory"
	savebgm MUS_DUMMY
# 1085 "data/maps/RustboroCity/scripts.pory"
	fadedefaultbgm
# 1086 "data/maps/RustboroCity/scripts.pory"
	return
# 1087 "data/maps/RustboroCity/scripts.pory"

# 1088 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayTreecko::
# 1089 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TREECKO, RustboroCity_Text_MayDefeat
# 1090 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 1091 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_MayExpShareAfterBattle
# 1092 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 1093 "data/maps/RustboroCity/scripts.pory"
	end
# 1094 "data/maps/RustboroCity/scripts.pory"

# 1095 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayTorchic::
# 1096 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TORCHIC, RustboroCity_Text_MayDefeat
# 1097 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 1098 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_MayExpShareAfterBattle
# 1099 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 1100 "data/maps/RustboroCity/scripts.pory"
	end
# 1101 "data/maps/RustboroCity/scripts.pory"

# 1102 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayMudkip::
# 1103 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_MUDKIP, RustboroCity_Text_MayDefeat
# 1104 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 1105 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_MayExpShareAfterBattle
# 1106 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 1107 "data/maps/RustboroCity/scripts.pory"
	end
# 1108 "data/maps/RustboroCity/scripts.pory"

# 1109 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanEncounter::
# 1110 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_BrendanBrineyHint
# 1111 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_BrendanAskToBattle
# 1112 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_MET_RIVAL_RUSTBORO
# 1113 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed msgbox RustboroCity_Text_BrendanHiLetsRegister, MSGBOX_DEFAULT
# 1114 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed closemessage
# 1115 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed delay 30
# 1116 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 1117 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed msgbox RustboroCity_Text_RegisteredBrendan, MSGBOX_DEFAULT
# 1118 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed waitfanfare
# 1119 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed closemessage
# 1120 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed delay 30
# 1121 "data/maps/RustboroCity/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 1122 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 1123 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 1124 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 1125 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanPassedBrineyWantToBattle, MSGBOX_YESNO
# 1126 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1127 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleBrendan
# 1128 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 1129 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_BrendanNoConfidenceInPokemon, MSGBOX_DEFAULT
# 1130 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 1131 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalDeclined
# 1132 "data/maps/RustboroCity/scripts.pory"

# 1133 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanAskToBattle::
# 1134 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 1135 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanWantToBattle, MSGBOX_YESNO
# 1136 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1137 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleBrendan
# 1138 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 1139 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_BrendanNoConfidenceInPokemon, MSGBOX_DEFAULT
# 1140 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 1141 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalDeclined
# 1142 "data/maps/RustboroCity/scripts.pory"

# 1143 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendan::
# 1144 "data/maps/RustboroCity/scripts.pory"
    setrespawn HEAL_LOCATION_RUSTBORO_CITY
# 1145 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 1146 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanIWontGoEasy, MSGBOX_DEFAULT
# 1147 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1148 "data/maps/RustboroCity/scripts.pory"
	switch VAR_STARTER_MON
# 1149 "data/maps/RustboroCity/scripts.pory"
	case 0, RustboroCity_EventScript_BattleBrendanTreecko
# 1150 "data/maps/RustboroCity/scripts.pory"
	case 1, RustboroCity_EventScript_BattleBrendanTorchic
# 1151 "data/maps/RustboroCity/scripts.pory"
	case 2, RustboroCity_EventScript_BattleBrendanMudkip
# 1152 "data/maps/RustboroCity/scripts.pory"
	end
# 1153 "data/maps/RustboroCity/scripts.pory"

# 1154 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanBrineyHint::
# 1155 "data/maps/RustboroCity/scripts.pory"
    lock
# 1156 "data/maps/RustboroCity/scripts.pory"
    faceplayer
# 1157 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 1158 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_BrendanMrBrineyHint, MSGBOX_DEFAULT
# 1159 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 1160 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_0x8008, 0, RustboroCity_EventScript_RestoreBgm
# 1161 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_RivalLeave
# 1162 "data/maps/RustboroCity/scripts.pory"
    release
# 1163 "data/maps/RustboroCity/scripts.pory"
    end
# 1164 "data/maps/RustboroCity/scripts.pory"

# 1165 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanTreecko::
# 1166 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TREECKO, RustboroCity_Text_BrendanDefeat
# 1167 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 1168 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_BrendanExpShareAfterBattle
# 1169 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 1170 "data/maps/RustboroCity/scripts.pory"
	end
# 1171 "data/maps/RustboroCity/scripts.pory"

# 1172 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanTorchic::
# 1173 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TORCHIC, RustboroCity_Text_BrendanDefeat
# 1174 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 1175 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_BrendanExpShareAfterBattle
# 1176 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 1177 "data/maps/RustboroCity/scripts.pory"
	end
# 1178 "data/maps/RustboroCity/scripts.pory"

# 1179 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanMudkip::
# 1180 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_MUDKIP, RustboroCity_Text_BrendanDefeat
# 1181 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 1182 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_BrendanExpShareAfterBattle
# 1183 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 1184 "data/maps/RustboroCity/scripts.pory"
	end
# 1185 "data/maps/RustboroCity/scripts.pory"

# 1186 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer0:
# 1187 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1188 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1189 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1190 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1191 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1192 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1193 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1194 "data/maps/RustboroCity/scripts.pory"

# 1195 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer1:
# 1196 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1197 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1198 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1199 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1200 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1201 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1202 "data/maps/RustboroCity/scripts.pory"

# 1203 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer2:
# 1204 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1205 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1206 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1207 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1208 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1209 "data/maps/RustboroCity/scripts.pory"

# 1210 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer3:
# 1211 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1212 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1213 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1214 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1215 "data/maps/RustboroCity/scripts.pory"

# 1216 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer4:
# 1217 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1218 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1219 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1220 "data/maps/RustboroCity/scripts.pory"

# 1221 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer5:
# 1222 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1223 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1224 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1225 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1226 "data/maps/RustboroCity/scripts.pory"

# 1227 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer6:
# 1228 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1229 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1230 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1231 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1232 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1233 "data/maps/RustboroCity/scripts.pory"

# 1234 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer7:
# 1235 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1236 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1237 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1238 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1239 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1240 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1241 "data/maps/RustboroCity/scripts.pory"

# 1242 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveDown2:
# 1243 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1244 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1245 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1246 "data/maps/RustboroCity/scripts.pory"

# 1247 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveDown4:
# 1248 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1249 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1250 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1251 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1252 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1253 "data/maps/RustboroCity/scripts.pory"

# 1254 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveDown6:
# 1255 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1256 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1257 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1258 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1259 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1260 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1261 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1262 "data/maps/RustboroCity/scripts.pory"

# 1263 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveRight1:
# 1264 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1265 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1266 "data/maps/RustboroCity/scripts.pory"

# 1267 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveRight2:
# 1268 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1269 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1270 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1271 "data/maps/RustboroCity/scripts.pory"

# 1272 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveRight3:
# 1273 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1274 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1275 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1276 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1277 "data/maps/RustboroCity/scripts.pory"

# 1278 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveLeft1:
# 1279 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1280 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1281 "data/maps/RustboroCity/scripts.pory"

# 1282 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveLeft2:
# 1283 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1284 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1285 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1286 "data/maps/RustboroCity/scripts.pory"

# 1287 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveLeft3:
# 1288 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1289 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1290 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1291 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1292 "data/maps/RustboroCity/scripts.pory"

# 1293 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalLeaveRight1Down4:
# 1294 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1295 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1296 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1297 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1298 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1299 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1300 "data/maps/RustboroCity/scripts.pory"

# 1301 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn0:
# 1302 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1303 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1304 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1305 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1306 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1307 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1308 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1309 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1310 "data/maps/RustboroCity/scripts.pory"

# 1311 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn1:
# 1312 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1313 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1314 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1315 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1316 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1317 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1318 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1319 "data/maps/RustboroCity/scripts.pory"

# 1320 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn2:
# 1321 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1322 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1323 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1324 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1325 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1326 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1327 "data/maps/RustboroCity/scripts.pory"

# 1328 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn3:
# 1329 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1330 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 1331 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1332 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1333 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1334 "data/maps/RustboroCity/scripts.pory"

# 1335 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn4:
# 1336 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1337 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1338 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1339 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1340 "data/maps/RustboroCity/scripts.pory"

# 1341 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn5:
# 1342 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1343 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1344 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1345 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1346 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1347 "data/maps/RustboroCity/scripts.pory"

# 1348 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn6:
# 1349 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1350 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1351 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1352 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1353 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1354 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1355 "data/maps/RustboroCity/scripts.pory"

# 1356 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalReturn7:
# 1357 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1358 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1359 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1360 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1361 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1362 "data/maps/RustboroCity/scripts.pory"
	face_down
# 1363 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1364 "data/maps/RustboroCity/scripts.pory"

# 1365 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy1::
# 1366 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouCanHave2On2Battle, MSGBOX_NPC
# 1367 "data/maps/RustboroCity/scripts.pory"
	end
# 1368 "data/maps/RustboroCity/scripts.pory"

# 1369 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Devonearthquake::
# 1370 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_Devonearthquake, MSGBOX_NPC
# 1371 "data/maps/RustboroCity/scripts.pory"
	end
# 1372 "data/maps/RustboroCity/scripts.pory"

# 1373 "data/maps/RustboroCity/scripts.pory"
@ ============================================================
# 1374 "data/maps/RustboroCity/scripts.pory"
@ MAR - father of TERRA and RIO, appears once near the Gym door
# 1375 "data/maps/RustboroCity/scripts.pory"
@
# 1376 "data/maps/RustboroCity/scripts.pory"
@ Visibility: MAR's object (local id 20) is tied to FLAG_HIDE_MAR_RUST_VISIBILITY
# 1377 "data/maps/RustboroCity/scripts.pory"
@ in map.json ("flag": "FLAG_HIDE_MAR_RUST_VISIBILITY"). That flag is only
# 1378 "data/maps/RustboroCity/scripts.pory"
@ checked when the object is (re)spawned - i.e. on map load - NOT live every
# 1379 "data/maps/RustboroCity/scripts.pory"
@ frame. So clearflag/setflag alone do nothing to an object that's already
# 1380 "data/maps/RustboroCity/scripts.pory"
@ on screen; showing/hiding him mid-scene needs an explicit addobject/
# 1381 "data/maps/RustboroCity/scripts.pory"
@ removeobject, same as LOCALID_RUSTBORO_GRUNT/DEVON_EMPLOYEE do above in
# 1382 "data/maps/RustboroCity/scripts.pory"
@ RustboroCity_EventScript_StolenGoodsScene. The flag is still kept in sync
# 1383 "data/maps/RustboroCity/scripts.pory"
@ so a normal map (re)load always starts with him hidden.
# 1384 "data/maps/RustboroCity/scripts.pory"
@
# 1385 "data/maps/RustboroCity/scripts.pory"
@ The trigger uses VAR_UNUSED_0x40BB == 0 (always true, never touched by
# 1386 "data/maps/RustboroCity/scripts.pory"
@ anything else) instead of VAR_RUSTBORO_CITY_STATE - that var is only set
# 1387 "data/maps/RustboroCity/scripts.pory"
@ to 1 by RustboroCity_Gym_EventScript_Victory (scripts_gym.pory), i.e.
# 1388 "data/maps/RustboroCity/scripts.pory"
@ AFTER beating TERRA, which made this scene fire in the wrong order.
# 1389 "data/maps/RustboroCity/scripts.pory"
@
# 1390 "data/maps/RustboroCity/scripts.pory"
@ Guaranteed order (runs once, ever):
# 1391 "data/maps/RustboroCity/scripts.pory"
@   1) Player steps on the trigger (26,20)
# 1392 "data/maps/RustboroCity/scripts.pory"
@   2) FLAG_HIDE_MAR_RUST_VISIBILITY cleared + addobject -> MAR appears
# 1393 "data/maps/RustboroCity/scripts.pory"
@   3) MAR walks up to the player and talks (mugshot)
# 1394 "data/maps/RustboroCity/scripts.pory"
@   4) MAR gives the Charti Berry
# 1395 "data/maps/RustboroCity/scripts.pory"
@   5) Player is pushed up, towards the Gym
# 1396 "data/maps/RustboroCity/scripts.pory"
@   6) MAR walks away, removeobject + FLAG_HIDE_MAR_RUST_VISIBILITY set again
# 1397 "data/maps/RustboroCity/scripts.pory"
@      -> he's actually gone, not just invisible-flagged
# 1398 "data/maps/RustboroCity/scripts.pory"
@   7) FLAG_HIDE_MAR_RUST is set -> this scene never runs again
# 1399 "data/maps/RustboroCity/scripts.pory"
@ ============================================================
# 1400 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ChallangeTerra::
# 1401 "data/maps/RustboroCity/scripts.pory"
	lockall
# 1402 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_RUST, RustboroCity_EventScript_ChallangeTerra_Done
# 1403 "data/maps/RustboroCity/scripts.pory"

# 1404 "data/maps/RustboroCity/scripts.pory"
	@ He was hidden - now the door opens and he steps out of the Gym
# 1405 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_MAR_RUST_VISIBILITY
# 1406 "data/maps/RustboroCity/scripts.pory"
	opendoor 27, 19
# 1407 "data/maps/RustboroCity/scripts.pory"
	waitdooranim
# 1408 "data/maps/RustboroCity/scripts.pory"
	addobject 20
# 1409 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, Common_Movement_WalkInPlaceFasterDown
# 1410 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1411 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 1412 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, Common_Movement_ExclamationMark
# 1413 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1414 "data/maps/RustboroCity/scripts.pory"

# 1415 "data/maps/RustboroCity/scripts.pory"
	@ Walks up to the player - MAR ends up facing left, player facing right,
# 1416 "data/maps/RustboroCity/scripts.pory"
	@ so they're actually looking at each other (he's on the player's right)
# 1417 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, RustboroCity_Movement_MarApproachPlayer
# 1418 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1419 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 1420 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1421 "data/maps/RustboroCity/scripts.pory"

# 1422 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_Mar_Scene
# 1423 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 1424 "data/maps/RustboroCity/scripts.pory"
	end
# 1425 "data/maps/RustboroCity/scripts.pory"

# 1426 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ChallangeTerra_Done::
# 1427 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 1428 "data/maps/RustboroCity/scripts.pory"
	end
# 1429 "data/maps/RustboroCity/scripts.pory"

# 1430 "data/maps/RustboroCity/scripts.pory"
@ MAR's own object script. In practice this is only reachable
# 1431 "data/maps/RustboroCity/scripts.pory"
@ while FLAG_HIDE_MAR_RUST_VISIBILITY is cleared (i.e. during the cutscene above),
# 1432 "data/maps/RustboroCity/scripts.pory"
@ since outside of it he's hidden by his map.json flag (kept set
# 1433 "data/maps/RustboroCity/scripts.pory"
@ by default in RustboroCity_OnTransition).
# 1434 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar::
# 1435 "data/maps/RustboroCity/scripts.pory"
	lockall
# 1436 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_RUST, RustboroCity_EventScript_Mar_Done
# 1437 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 1438 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_Mar_Scene
# 1439 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_Done::
# 1440 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 1441 "data/maps/RustboroCity/scripts.pory"
	end
# 1442 "data/maps/RustboroCity/scripts.pory"

# 1443 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_Scene::
# 1444 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 1445 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MarIntro, MSGBOX_DEFAULT
# 1446 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1447 "data/maps/RustboroCity/scripts.pory"
	giveitem ITEM_CHARTI_BERRY
# 1448 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, RustboroCity_EventScript_Mar_BagFull
# 1449 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 1450 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MarGiveCharti, MSGBOX_DEFAULT
# 1451 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1452 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 1453 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_Mar_Leave
# 1454 "data/maps/RustboroCity/scripts.pory"

# 1455 "data/maps/RustboroCity/scripts.pory"
@ Bag full: he still has to leave and the flag still has to be
# 1456 "data/maps/RustboroCity/scripts.pory"
@ set, otherwise the trigger would be stuck forever (softlock).
# 1457 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_BagFull::
# 1458 "data/maps/RustboroCity/scripts.pory"
	msgbox gText_BagIsFull, MSGBOX_DEFAULT
# 1459 "data/maps/RustboroCity/scripts.pory"

# 1460 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_Leave::
# 1461 "data/maps/RustboroCity/scripts.pory"
	@ Close MAR's dialogue box before either character starts moving.
# 1462 "data/maps/RustboroCity/scripts.pory"
	@ Without this, the last msgbox remains visible during the movement sequence.
# 1463 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 1464 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, RustboroCity_Movement_PlayerContinueToGym
# 1465 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1466 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, RustboroCity_Movement_MarReturnToGym
# 1467 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1468 "data/maps/RustboroCity/scripts.pory"
	removeobject 20
# 1469 "data/maps/RustboroCity/scripts.pory"
	closedoor 27, 19
# 1470 "data/maps/RustboroCity/scripts.pory"
	waitdooranim
# 1471 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_MAR_RUST_VISIBILITY
# 1472 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_MAR_RUST
# 1473 "data/maps/RustboroCity/scripts.pory"
	return
# 1474 "data/maps/RustboroCity/scripts.pory"

# 1475 "data/maps/RustboroCity/scripts.pory"
@ ---- Movements (adjust the step count if the real distance differs) ----
# 1476 "data/maps/RustboroCity/scripts.pory"

# 1477 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_MarApproachPlayer:
# 1478 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1479 "data/maps/RustboroCity/scripts.pory"
	face_left
# 1480 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1481 "data/maps/RustboroCity/scripts.pory"

# 1482 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_PlayerContinueToGym:
# 1483 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1484 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1485 "data/maps/RustboroCity/scripts.pory"

# 1486 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_MarReturnToGym:
# 1487 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1488 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1489 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1490 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1491 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1492 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1493 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1494 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1495 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1496 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1497 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1498 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1499 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1500 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1501 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1502 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1503 "data/maps/RustboroCity/scripts.pory"

# 1504 "data/maps/RustboroCity/scripts.pory"
@ ---- Text ----
# 1505 "data/maps/RustboroCity/scripts.pory"

# 1506 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MarIntro:
# 1507 "data/maps/RustboroCity/scripts.pory"
	.string "Whoa there! You're on your way to\n"
# 1508 "data/maps/RustboroCity/scripts.pory"
	.string "challenge the GYM LEADER, TERRA,\l"
# 1509 "data/maps/RustboroCity/scripts.pory"
	.string "aren't you?\p"
# 1510 "data/maps/RustboroCity/scripts.pory"
	.string "I'm MAR, her dad!\n"
# 1511 "data/maps/RustboroCity/scripts.pory"
	.string "I'm also RIO's dad, the GYM LEADER\l"
# 1512 "data/maps/RustboroCity/scripts.pory"
	.string "over in Sootopolis... her sibling.\p"
# 1513 "data/maps/RustboroCity/scripts.pory"
	.string "Everybody in my family trains like\n"
# 1514 "data/maps/RustboroCity/scripts.pory"
	.string "an athlete... and trains POKéMON,\l"
# 1515 "data/maps/RustboroCity/scripts.pory"
	.string "too.\p"
# 1516 "data/maps/RustboroCity/scripts.pory"
	.string "I'm a TRAINER myself, but I've been\n"
# 1517 "data/maps/RustboroCity/scripts.pory"
	.string "busy with more important stuff\l"
# 1518 "data/maps/RustboroCity/scripts.pory"
	.string "lately...\p"
# 1519 "data/maps/RustboroCity/scripts.pory"
	.string "HAHAHA, I've said too much already!\n"
# 1520 "data/maps/RustboroCity/scripts.pory"
	.string "Anyway, TERRA's plenty tough.\p"
# 1521 "data/maps/RustboroCity/scripts.pory"
	.string "The last challenger I saw take her\n"
# 1522 "data/maps/RustboroCity/scripts.pory"
	.string "on walked out crying...$"
# 1523 "data/maps/RustboroCity/scripts.pory"

# 1524 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MarGiveCharti:
# 1525 "data/maps/RustboroCity/scripts.pory"
	.string "Here, take this.\n"
# 1526 "data/maps/RustboroCity/scripts.pory"
	.string "Maybe it'll help you take fewer\l"
# 1527 "data/maps/RustboroCity/scripts.pory"
	.string "hits from my daughter!$"
# 1528 "data/maps/RustboroCity/scripts.pory"

# 1529 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WeShortenItToDevon:
# 1530 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON CORPORATION…\n"
# 1531 "data/maps/RustboroCity/scripts.pory"
	.string "We all just shorten it to DEVON.\p"
# 1532 "data/maps/RustboroCity/scripts.pory"
	.string "That company makes all sorts of\n"
# 1533 "data/maps/RustboroCity/scripts.pory"
	.string "convenient products.$"
# 1534 "data/maps/RustboroCity/scripts.pory"

# 1535 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_SneakyLookingManWentAroundCorner:
# 1536 "data/maps/RustboroCity/scripts.pory"
	.string "Hm? A sneaky-looking man?\p"
# 1537 "data/maps/RustboroCity/scripts.pory"
	.string "Come to think of it, yes, a shady-\n"
# 1538 "data/maps/RustboroCity/scripts.pory"
	.string "looking guy went around the corner.$"
# 1539 "data/maps/RustboroCity/scripts.pory"

# 1540 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HaveYouChallengedGym:
# 1541 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO has always had frequent\n"
# 1542 "data/maps/RustboroCity/scripts.pory"
	.string "earthquakes, but they've gotten\l"
# 1543 "data/maps/RustboroCity/scripts.pory"
	.string "more intense lately.\p"
# 1544 "data/maps/RustboroCity/scripts.pory"
	.string "We're barely keeping up with the\n"
# 1545 "data/maps/RustboroCity/scripts.pory"
	.string "damage as it is!$"
# 1546 "data/maps/RustboroCity/scripts.pory"

# 1547 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HeyThatsRustborosGymBadge:
# 1548 "data/maps/RustboroCity/scripts.pory"
.string "Hah! You want the RUSTBORO GYM BADGE?\p"
# 1549 "data/maps/RustboroCity/scripts.pory"
.string "You'll have to face TERRA!\p"
# 1550 "data/maps/RustboroCity/scripts.pory"
.string "She's tough! And a formidable\n"
# 1551 "data/maps/RustboroCity/scripts.pory"
.string "climber! Look at you, with those\l"
# 1552 "data/maps/RustboroCity/scripts.pory"
.string "weird clothes, all scrawny, and those\l"
# 1553 "data/maps/RustboroCity/scripts.pory"
.string "dark circles under your eyes...\p"
# 1554 "data/maps/RustboroCity/scripts.pory"
.string "I'm not sure you stand a chance...\p"
# 1555 "data/maps/RustboroCity/scripts.pory"
.string "I got mine after like 20 attempts,\n"
# 1556 "data/maps/RustboroCity/scripts.pory"
.string "and I think TERRA went easy on me\l"
# 1557 "data/maps/RustboroCity/scripts.pory"
.string "'cause we're climbing buddies!\p"
# 1558 "data/maps/RustboroCity/scripts.pory"
.string "Good luck! HAHAHAH!$"
# 1559 "data/maps/RustboroCity/scripts.pory"

# 1560 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YoureNewAroundHere:
# 1561 "data/maps/RustboroCity/scripts.pory"
.string "Oh? Who might you be?\n"
# 1562 "data/maps/RustboroCity/scripts.pory"
.string "You're a new face around these parts.\p"
# 1563 "data/maps/RustboroCity/scripts.pory"
.string "With those weird clothes of yours,\n"
# 1564 "data/maps/RustboroCity/scripts.pory"
.string "they won't accept you at the school!\l"
# 1565 "data/maps/RustboroCity/scripts.pory"
.string "Where's your uniform?$"
# 1566 "data/maps/RustboroCity/scripts.pory"

# 1567 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_GymLeaderIsntEasyWithFire:
# 1568 "data/maps/RustboroCity/scripts.pory"
    .string "You know TERRA, the GYM LEADER?\n"
# 1569 "data/maps/RustboroCity/scripts.pory"
    .string "Amazing rock climber! People say she\l"
# 1570 "data/maps/RustboroCity/scripts.pory"
    .string "climbed Mt. Chimney with no equipment.\p"
# 1571 "data/maps/RustboroCity/scripts.pory"
    .string "I went to meet her just to ask for an\n"
# 1572 "data/maps/RustboroCity/scripts.pory"
    .string "autograph, but she challenged me to a\l"
# 1573 "data/maps/RustboroCity/scripts.pory"
    .string "battle instead...\p"
# 1574 "data/maps/RustboroCity/scripts.pory"
    .string "I got beaten really badly...$"
# 1575 "data/maps/RustboroCity/scripts.pory"

# 1576 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MrBrineyWalksInTheTunnel:
# 1577 "data/maps/RustboroCity/scripts.pory"
	.string "The old sailor MR. BRINEY lives in\n"
# 1578 "data/maps/RustboroCity/scripts.pory"
	.string "a cottage by the sea.\p"
# 1579 "data/maps/RustboroCity/scripts.pory"
	.string "He goes for walks in the tunnel every\n"
# 1580 "data/maps/RustboroCity/scripts.pory"
	.string "so often.$"
# 1581 "data/maps/RustboroCity/scripts.pory"

# 1582 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MrBrineyLovesPeeko:
# 1583 "data/maps/RustboroCity/scripts.pory"
	.string "The old sailor MR. BRINEY lives in\n"
# 1584 "data/maps/RustboroCity/scripts.pory"
	.string "a cottage by the sea.\p"
# 1585 "data/maps/RustboroCity/scripts.pory"
	.string "He said he was going shopping in\n"
# 1586 "data/maps/RustboroCity/scripts.pory"
	.string "SLATEPORT for his pet, NAMI.\p"
# 1587 "data/maps/RustboroCity/scripts.pory"
	.string "That old sea dog, he must really love\n"
# 1588 "data/maps/RustboroCity/scripts.pory"
	.string "that NAMI.$"
# 1589 "data/maps/RustboroCity/scripts.pory"

# 1590 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WowYouHavePokemon:
# 1591 "data/maps/RustboroCity/scripts.pory"
	.string "Wow, you have POKéMON with you, too.\p"
# 1592 "data/maps/RustboroCity/scripts.pory"
	.string "When I get bigger, I'm going to go\n"
# 1593 "data/maps/RustboroCity/scripts.pory"
	.string "places with POKéMON, too.$"
# 1594 "data/maps/RustboroCity/scripts.pory"

# 1595 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CatchRarePokemonIfIGoToSchool:
# 1596 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON TRAINER'S SCHOOL!\p"
# 1597 "data/maps/RustboroCity/scripts.pory"
	.string "If I go to this school, will I be able\n"
# 1598 "data/maps/RustboroCity/scripts.pory"
	.string "to catch rare POKéMON easily?$"
# 1599 "data/maps/RustboroCity/scripts.pory"

# 1600 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PokemonCanChangeLookFromExp:
# 1601 "data/maps/RustboroCity/scripts.pory"
    .string "RUSTBORO CITY always feels so alive.\n"
# 1602 "data/maps/RustboroCity/scripts.pory"
    .string "The streets are full of students,\l"
# 1603 "data/maps/RustboroCity/scripts.pory"
    .string "workers, and travelers passing through.\p"
# 1604 "data/maps/RustboroCity/scripts.pory"
    .string "Every corner has someone tinkering with\n"
# 1605 "data/maps/RustboroCity/scripts.pory"
    .string "a machine or studying something new.\l"
# 1606 "data/maps/RustboroCity/scripts.pory"
    .string "I wonder what discoveries will come out\l"
# 1607 "data/maps/RustboroCity/scripts.pory"
    .string "of this place next.$"
# 1608 "data/maps/RustboroCity/scripts.pory"

# 1609 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PokemonChangeShape:
# 1610 "data/maps/RustboroCity/scripts.pory"
    .string "I've heard there's a cave\n"
# 1611 "data/maps/RustboroCity/scripts.pory"
    .string "north of here, past ROUTE 116.\p"
# 1612 "data/maps/RustboroCity/scripts.pory"
    .string "Explorers say echoes come from the\n"
# 1613 "data/maps/RustboroCity/scripts.pory"
    .string "deep tunnels… like something hidden\l"
# 1614 "data/maps/RustboroCity/scripts.pory"
    .string "is shifting around in the dark.$"
# 1615 "data/maps/RustboroCity/scripts.pory"

# 1616 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TradePokemonGrowFast:
# 1617 "data/maps/RustboroCity/scripts.pory"
    .string "Hmph… Those climbers around Rustboro\n"
# 1618 "data/maps/RustboroCity/scripts.pory"
    .string "think they're so tough, climbing all\l"
# 1619 "data/maps/RustboroCity/scripts.pory"
    .string "day and bragging about their ROCK\l"
# 1620 "data/maps/RustboroCity/scripts.pory"
	.string "Pokémon.\p"
# 1621 "data/maps/RustboroCity/scripts.pory"
    .string "I can't stand that rowdy bunch,\n"
# 1622 "data/maps/RustboroCity/scripts.pory"
	.string "so I train WATER-types just to wash\l"
# 1623 "data/maps/RustboroCity/scripts.pory"
	.string "them off their precious mountains.$"
# 1624 "data/maps/RustboroCity/scripts.pory"

# 1625 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_OutOfTheWay:
# 1626 "data/maps/RustboroCity/scripts.pory"
	.string "Get out!\n"
# 1627 "data/maps/RustboroCity/scripts.pory"
	.string "Out of the way!$"
# 1628 "data/maps/RustboroCity/scripts.pory"

# 1629 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WaitDontTakeMyGoods:
# 1630 "data/maps/RustboroCity/scripts.pory"
	.string "Wait! Pleeeaaase!\p"
# 1631 "data/maps/RustboroCity/scripts.pory"
	.string "Don't take my GOODS!$"
# 1632 "data/maps/RustboroCity/scripts.pory"

# 1633 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HelpMeIWasRobbed:
# 1634 "data/maps/RustboroCity/scripts.pory"
	.string "Oh, it's you!\p"
# 1635 "data/maps/RustboroCity/scripts.pory"
	.string "You're that fantastic TRAINER who\n"
# 1636 "data/maps/RustboroCity/scripts.pory"
	.string "helped me in PETALBURG WOODS!\p"
# 1637 "data/maps/RustboroCity/scripts.pory"
	.string "Help me! I was robbed by TEAM AQUA!\n"
# 1638 "data/maps/RustboroCity/scripts.pory"
	.string "That thug jumped me right as I left\l"
# 1639 "data/maps/RustboroCity/scripts.pory"
	.string "the lab! What terrible timing.\p"
# 1640 "data/maps/RustboroCity/scripts.pory"
	.string "I have to get the DEVON GOODS back!\p"
# 1641 "data/maps/RustboroCity/scripts.pory"
	.string "If I don't…\n"
# 1642 "data/maps/RustboroCity/scripts.pory"
	.string "I'm going to be in serious trouble.$"
# 1643 "data/maps/RustboroCity/scripts.pory"

# 1644 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel:
# 1645 "data/maps/RustboroCity/scripts.pory"
	.string "That shady character, I think he took\n"
# 1646 "data/maps/RustboroCity/scripts.pory"
	.string "off towards the tunnel over there.$"
# 1647 "data/maps/RustboroCity/scripts.pory"

# 1648 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YouGotItThankYou:
# 1649 "data/maps/RustboroCity/scripts.pory"
	.string "Oh! How did it go?\n"
# 1650 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON GOODS?\p"
# 1651 "data/maps/RustboroCity/scripts.pory"
	.string "You did!\n"
# 1652 "data/maps/RustboroCity/scripts.pory"
	.string "You got them back!\p"
# 1653 "data/maps/RustboroCity/scripts.pory"
	.string "You really are a great TRAINER!\p"
# 1654 "data/maps/RustboroCity/scripts.pory"
	.string "I'm sorry to have suddenly dragged\n"
# 1655 "data/maps/RustboroCity/scripts.pory"
	.string "you in to something like this.\p"
# 1656 "data/maps/RustboroCity/scripts.pory"
	.string "It is unusual for anyone unauthorized\n"
# 1657 "data/maps/RustboroCity/scripts.pory"
	.string "to make it past DEVON security.\p"
# 1658 "data/maps/RustboroCity/scripts.pory"
	.string "I know! As my thanks, I'll give you\n"
# 1659 "data/maps/RustboroCity/scripts.pory"
	.string "this ABILITY CAPSULE! It's DEVON's\l"
# 1660 "data/maps/RustboroCity/scripts.pory"
	.string "latest breakthrough.\p"
# 1661 "data/maps/RustboroCity/scripts.pory"
	.string "With it, you can switch a\n"
# 1662 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON's abilities!$"
# 1663 "data/maps/RustboroCity/scripts.pory"

# 1664 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YoureLoadedWithItems:
# 1665 "data/maps/RustboroCity/scripts.pory"
	.string "You're loaded with items.\n"
# 1666 "data/maps/RustboroCity/scripts.pory"
	.string "I can't give you this...$"
# 1667 "data/maps/RustboroCity/scripts.pory"

# 1668 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PleaseComeWithMe:
# 1669 "data/maps/RustboroCity/scripts.pory"
	.string "Excuse me, please!\n"
# 1670 "data/maps/RustboroCity/scripts.pory"
	.string "Please come with me!$"
# 1671 "data/maps/RustboroCity/scripts.pory"

# 1672 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayHiLetsRegister:
# 1673 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, by the way, {PLAYER}{KUN},\n"
# 1674 "data/maps/RustboroCity/scripts.pory"
	.string "CALENDULA gave me this and\l"
# 1675 "data/maps/RustboroCity/scripts.pory"
	.string "asked me to deliver it to you!\p"
# 1676 "data/maps/RustboroCity/scripts.pory"
	.string "It's an EXP. SHARE!\p"
# 1677 "data/maps/RustboroCity/scripts.pory"
	.string "It makes all POKéMON in your party\n"
# 1678 "data/maps/RustboroCity/scripts.pory"
	.string "gain experience from battles!$"
# 1679 "data/maps/RustboroCity/scripts.pory"

# 1680 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_RegisteredMay:
# 1681 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1682 "data/maps/RustboroCity/scripts.pory"

# 1683 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayPassedBrineyWantToBattle:
# 1684 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, hey, {PLAYER}{KUN}! I passed\n"
# 1685 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY in PETALBURG WOODS.\p"
# 1686 "data/maps/RustboroCity/scripts.pory"
	.string "I guess he's on his way home to his\n"
# 1687 "data/maps/RustboroCity/scripts.pory"
	.string "cottage by the sea.\p"
# 1688 "data/maps/RustboroCity/scripts.pory"
	.string "How's your POKéDEX coming along,\n"
# 1689 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}? There's so many\l"
# 1690 "data/maps/RustboroCity/scripts.pory"
	.string "interesting POKéMON out there.\p"
# 1691 "data/maps/RustboroCity/scripts.pory"
	.string "We'll have to work hard to collect\n"
# 1692 "data/maps/RustboroCity/scripts.pory"
	.string "enough data for PROF. ACACIA.\p"
# 1693 "data/maps/RustboroCity/scripts.pory"
	.string "Breaks are important too, though!\n"
# 1694 "data/maps/RustboroCity/scripts.pory"
	.string "How about a little battle?$"
# 1695 "data/maps/RustboroCity/scripts.pory"

# 1696 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayOhHaventRaisedPokemonEnough:
# 1697 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, what's the matter?\p"
# 1698 "data/maps/RustboroCity/scripts.pory"
	.string "If you're not ready, that's fine.\n"
# 1699 "data/maps/RustboroCity/scripts.pory"
	.string "I'll be waiting here.\p"
# 1700 "data/maps/RustboroCity/scripts.pory"
	.string "Come back when you're ready!$"
# 1701 "data/maps/RustboroCity/scripts.pory"

# 1702 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayWantToBattle:
# 1703 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: So, what do you think?\n"
# 1704 "data/maps/RustboroCity/scripts.pory"
	.string "How about a little battle here?$"
# 1705 "data/maps/RustboroCity/scripts.pory"

# 1706 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayImNotGoingToLose:
# 1707 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: You just became a TRAINER,\n"
# 1708 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}. I'm not going to lose!$"
# 1709 "data/maps/RustboroCity/scripts.pory"

# 1710 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayDefeat:
# 1711 "data/maps/RustboroCity/scripts.pory"
	.string "Yikes!\n"
# 1712 "data/maps/RustboroCity/scripts.pory"
	.string "You're better than I expected!$"
# 1713 "data/maps/RustboroCity/scripts.pory"

# 1714 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayMrBrineyHint:
# 1715 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Also, MR. BRINEY\n"
# 1716 "data/maps/RustboroCity/scripts.pory"
	.string "was once a revered seafarer.\p"
# 1717 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}, you're on your way\n"
# 1718 "data/maps/RustboroCity/scripts.pory"
	.string "to DEWFORD now too, right?\p"
# 1719 "data/maps/RustboroCity/scripts.pory"
	.string "Let's go ask MR. BRINEY if he can\n"
# 1720 "data/maps/RustboroCity/scripts.pory"
	.string "give us a ride there on his boat!$"
# 1721 "data/maps/RustboroCity/scripts.pory"

# 1722 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanHiLetsRegister:
# 1723 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: Oh, by the way, {PLAYER},\n"
# 1724 "data/maps/RustboroCity/scripts.pory"
	.string "CALENDULA gave me something and\l"
# 1725 "data/maps/RustboroCity/scripts.pory"
	.string "told me to give it to you!\p"
# 1726 "data/maps/RustboroCity/scripts.pory"
	.string "It's an EXP. SHARE!\p"
# 1727 "data/maps/RustboroCity/scripts.pory"
	.string "When you use it, all POKéMON in\n"
# 1728 "data/maps/RustboroCity/scripts.pory"
	.string "your party will gain experience!$"
# 1729 "data/maps/RustboroCity/scripts.pory"

# 1730 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_RegisteredBrendan:
# 1731 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1732 "data/maps/RustboroCity/scripts.pory"

# 1733 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanPassedBrineyWantToBattle:
# 1734 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: Hey, {PLAYER}! I walked\n"
# 1735 "data/maps/RustboroCity/scripts.pory"
	.string "by MR. BRINEY in PETALBURG WOODS.\p"
# 1736 "data/maps/RustboroCity/scripts.pory"
	.string "I bet he was on his way home to his\n"
# 1737 "data/maps/RustboroCity/scripts.pory"
	.string "cottage by the sea.\p"
# 1738 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, how's your POKéDEX?\n"
# 1739 "data/maps/RustboroCity/scripts.pory"
	.string "I just stopped by the lab to show\n"
# 1740 "data/maps/RustboroCity/scripts.pory"
	.string "mine to PROF. ACACIA, but I still\n"
# 1741 "data/maps/RustboroCity/scripts.pory"
	.string "have a long way to go.\p"
# 1742 "data/maps/RustboroCity/scripts.pory"
	.string "Want to have a battle to test how\n"
# 1743 "data/maps/RustboroCity/scripts.pory"
	.string "far you've progressed?$"
# 1744 "data/maps/RustboroCity/scripts.pory"

# 1745 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanNoConfidenceInPokemon:
# 1746 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: What's the matter? Don't have\n"
# 1747 "data/maps/RustboroCity/scripts.pory"
	.string "any confidence in your POKéMON?\p"
# 1748 "data/maps/RustboroCity/scripts.pory"
	.string "That's okay, come back anytime.$"
# 1749 "data/maps/RustboroCity/scripts.pory"

# 1750 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanWantToBattle:
# 1751 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: What's up?\n"
# 1752 "data/maps/RustboroCity/scripts.pory"
	.string "Want to have a battle with me?$"
# 1753 "data/maps/RustboroCity/scripts.pory"

# 1754 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanIWontGoEasy:
# 1755 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: I know you just became\n"
# 1756 "data/maps/RustboroCity/scripts.pory"
	.string "a TRAINER, but I won't go easy!$"
# 1757 "data/maps/RustboroCity/scripts.pory"

# 1758 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanDefeat:
# 1759 "data/maps/RustboroCity/scripts.pory"
	.string "Hmm…\n"
# 1760 "data/maps/RustboroCity/scripts.pory"
	.string "You're pretty good.$"
# 1761 "data/maps/RustboroCity/scripts.pory"

# 1762 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanMrBrineyHint:
# 1763 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: Hey, you know\n"
# 1764 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY? The guy I just passed?\p"
# 1765 "data/maps/RustboroCity/scripts.pory"
	.string "He's a famous sailor. Well, he's\n"
# 1766 "data/maps/RustboroCity/scripts.pory"
	.string "retired now, but he still sails.\p"
# 1767 "data/maps/RustboroCity/scripts.pory"
	.string "I bet he'd give us a ride to DEWFORD\n"
# 1768 "data/maps/RustboroCity/scripts.pory"
	.string "if we asked! I'll meet you there.$"
# 1769 "data/maps/RustboroCity/scripts.pory"

# 1770 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TunnelNearingCompletion:
# 1771 "data/maps/RustboroCity/scripts.pory"
	.string "“Timesaving tunnel nearing\n"
# 1772 "data/maps/RustboroCity/scripts.pory"
	.string "completion!”\p"
# 1773 "data/maps/RustboroCity/scripts.pory"
	.string "…Is what it says on the sign, but\n"
# 1774 "data/maps/RustboroCity/scripts.pory"
	.string "there's also a big “X” splashed\l"
# 1775 "data/maps/RustboroCity/scripts.pory"
	.string "across it in red paint…$"
# 1776 "data/maps/RustboroCity/scripts.pory"

# 1777 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevonCorpSign:
# 1778 "data/maps/RustboroCity/scripts.pory"
	.string "DEVON CORPORATION\p"
# 1779 "data/maps/RustboroCity/scripts.pory"
	.string "“For all your living needs, we make\n"
# 1780 "data/maps/RustboroCity/scripts.pory"
	.string "it all.”$"
# 1781 "data/maps/RustboroCity/scripts.pory"

# 1782 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_GymSign:
# 1783 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO CITY POKéMON GYM\n"
# 1784 "data/maps/RustboroCity/scripts.pory"
	.string "LEADER: TERRA\p"
# 1785 "data/maps/RustboroCity/scripts.pory"
	.string "“The ROCK-loving honors student!”$"
# 1786 "data/maps/RustboroCity/scripts.pory"

# 1787 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevonCorpBranchOfficeSign:
# 1788 "data/maps/RustboroCity/scripts.pory"
	.string "DEVON CORP. BRANCH OFFICE\p"
# 1789 "data/maps/RustboroCity/scripts.pory"
	.string "“Access limited to DEVON employees\n"
# 1790 "data/maps/RustboroCity/scripts.pory"
	.string "and authorized personnel.”$"
# 1791 "data/maps/RustboroCity/scripts.pory"

# 1792 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CitySign:
# 1793 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO CITY\p"
# 1794 "data/maps/RustboroCity/scripts.pory"
	.string "“The city probing the integration of\n"
# 1795 "data/maps/RustboroCity/scripts.pory"
	.string "nature and science.”$"
# 1796 "data/maps/RustboroCity/scripts.pory"

# 1797 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TrainersSchoolSign:
# 1798 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON TRAINER'S SCHOOL\p"
# 1799 "data/maps/RustboroCity/scripts.pory"
	.string "“We'll teach you anything about\n"
# 1800 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON!”$"
# 1801 "data/maps/RustboroCity/scripts.pory"

# 1802 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CuttersHouse:
# 1803 "data/maps/RustboroCity/scripts.pory"
	.string "CUTTER'S HOUSE$"
# 1804 "data/maps/RustboroCity/scripts.pory"

# 1805 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevelopedNewPokenavFeature:
# 1806 "data/maps/RustboroCity/scripts.pory"
	.string "I've been developing an added feature\n"
# 1807 "data/maps/RustboroCity/scripts.pory"
	.string "for the POKéNAV…\p"
# 1808 "data/maps/RustboroCity/scripts.pory"
	.string "And it turned out great!\p"
# 1809 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, may I see that POKéNAV?\n"
# 1810 "data/maps/RustboroCity/scripts.pory"
	.string "The one our PRESIDENT gave you?$"
# 1811 "data/maps/RustboroCity/scripts.pory"

# 1812 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_AddedMatchCallPleaseCallMrStone:
# 1813 "data/maps/RustboroCity/scripts.pory"
	.string "There you go, {PLAYER}!\p"
# 1814 "data/maps/RustboroCity/scripts.pory"
	.string "I added a new feature named\n"
# 1815 "data/maps/RustboroCity/scripts.pory"
	.string "MATCH CALL to your POKéNAV.\p"
# 1816 "data/maps/RustboroCity/scripts.pory"
	.string "Using the MATCH CALL feature,\n"
# 1817 "data/maps/RustboroCity/scripts.pory"
	.string "you can chat with people who have\l"
# 1818 "data/maps/RustboroCity/scripts.pory"
	.string "been registered in your POKéNAV.\p"
# 1819 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, our PRESIDENT STONE should\n"
# 1820 "data/maps/RustboroCity/scripts.pory"
	.string "be registered in your POKéNAV.\p"
# 1821 "data/maps/RustboroCity/scripts.pory"
	.string "Test it out.\n"
# 1822 "data/maps/RustboroCity/scripts.pory"
	.string "Please give our PRESIDENT a call.$"
# 1823 "data/maps/RustboroCity/scripts.pory"

# 1824 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PleaseSelectPokenav:
# 1825 "data/maps/RustboroCity/scripts.pory"
	.string "Please select the POKéNAV.$"
# 1826 "data/maps/RustboroCity/scripts.pory"

# 1827 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_IdBetterGetBackToWork:
# 1828 "data/maps/RustboroCity/scripts.pory"
	.string "Okay, I'd better get back to work.\n"
# 1829 "data/maps/RustboroCity/scripts.pory"
	.string "Please take care, {PLAYER}!$"
# 1830 "data/maps/RustboroCity/scripts.pory"

# 1831 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YouCanHave2On2Battle:
# 1832 "data/maps/RustboroCity/scripts.pory"
	.string "Did you know this?\p"
# 1833 "data/maps/RustboroCity/scripts.pory"
	.string "You can have a 2-on-2 battle even\n"
# 1834 "data/maps/RustboroCity/scripts.pory"
	.string "if you're not with another TRAINER.\p"
# 1835 "data/maps/RustboroCity/scripts.pory"
	.string "If you catch the eyes of two TRAINERS\n"
# 1836 "data/maps/RustboroCity/scripts.pory"
	.string "when you have two or more POKéMON,\l"
# 1837 "data/maps/RustboroCity/scripts.pory"
	.string "they'll both challenge you.\p"
# 1838 "data/maps/RustboroCity/scripts.pory"
	.string "Don't you think it'd be cool if you\n"
# 1839 "data/maps/RustboroCity/scripts.pory"
	.string "could beat two TRAINERS by yourself?$"
# 1840 "data/maps/RustboroCity/scripts.pory"

# 1841 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_NeedToTalkToRival:
# 1842 "data/maps/RustboroCity/scripts.pory"
    .string "Hey! Wait up!\p"
# 1843 "data/maps/RustboroCity/scripts.pory"
    .string "Don't you want to talk to\n"
# 1844 "data/maps/RustboroCity/scripts.pory"
    .string "your rival first?$"
# 1845 "data/maps/RustboroCity/scripts.pory"

# 1846 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_Devonearthquake:
# 1847 "data/maps/RustboroCity/scripts.pory"
	.string "The earthquakes have been going\n"
# 1848 "data/maps/RustboroCity/scripts.pory"
	.string "on for years, but with each one,\l"
# 1849 "data/maps/RustboroCity/scripts.pory"
	.string "the land cracks open more and more.\p"
# 1850 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON building may even end\n"
# 1851 "data/maps/RustboroCity/scripts.pory"
	.string "up falling into the sea soon!$"
