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
	end
# 11 "data/maps/RustboroCity/scripts.pory"

# 12 "data/maps/RustboroCity/scripts.pory"
RustboroCity_OnFrame:
# 13 "data/maps/RustboroCity/scripts.pory"
	.2byte 0
# 14 "data/maps/RustboroCity/scripts.pory"

# 15 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_FatMan::
# 16 "data/maps/RustboroCity/scripts.pory"
	lock
# 17 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 18 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEVON_GOODS_STOLEN, RustboroCity_EventScript_FatManSawGrunt
# 19 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WeShortenItToDevon, MSGBOX_DEFAULT
# 20 "data/maps/RustboroCity/scripts.pory"
	release
# 21 "data/maps/RustboroCity/scripts.pory"
	end
# 22 "data/maps/RustboroCity/scripts.pory"

# 23 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_FatManSawGrunt::
# 24 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_SneakyLookingManWentAroundCorner, MSGBOX_DEFAULT
# 25 "data/maps/RustboroCity/scripts.pory"
	release
# 26 "data/maps/RustboroCity/scripts.pory"
	end
# 27 "data/maps/RustboroCity/scripts.pory"

# 28 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonEmployee2::
# 29 "data/maps/RustboroCity/scripts.pory"
	lock
# 30 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 31 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YoureNewAroundHere, MSGBOX_DEFAULT
# 32 "data/maps/RustboroCity/scripts.pory"
	release
# 33 "data/maps/RustboroCity/scripts.pory"
	end
# 34 "data/maps/RustboroCity/scripts.pory"

# 35 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Woman::
# 36 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_GymLeaderIsntEasyWithFire, MSGBOX_NPC
# 37 "data/maps/RustboroCity/scripts.pory"
	end
# 38 "data/maps/RustboroCity/scripts.pory"

# 39 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man1::
# 40 "data/maps/RustboroCity/scripts.pory"
	lock
# 41 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 42 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_EventScript_Man1HaveBadge
# 43 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HaveYouChallengedGym, MSGBOX_DEFAULT
# 44 "data/maps/RustboroCity/scripts.pory"
	release
# 45 "data/maps/RustboroCity/scripts.pory"
	end
# 46 "data/maps/RustboroCity/scripts.pory"

# 47 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man1HaveBadge::
# 48 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HeyThatsRustborosGymBadge, MSGBOX_DEFAULT
# 49 "data/maps/RustboroCity/scripts.pory"
	release
# 50 "data/maps/RustboroCity/scripts.pory"
	end
# 51 "data/maps/RustboroCity/scripts.pory"

# 52 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy2::
# 53 "data/maps/RustboroCity/scripts.pory"
	lock
# 54 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 55 "data/maps/RustboroCity/scripts.pory"
	goto_if_set DN_FLAG_DEXNAV_GET, RustboroCity_EventScript_Boy2BrineyLeftTunnel
# 56 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MrBrineyWalksInTheTunnel, MSGBOX_DEFAULT
# 57 "data/maps/RustboroCity/scripts.pory"
	release
# 58 "data/maps/RustboroCity/scripts.pory"
	end
# 59 "data/maps/RustboroCity/scripts.pory"

# 60 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy2BrineyLeftTunnel::
# 61 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MrBrineyLovesPeeko, MSGBOX_DEFAULT
# 62 "data/maps/RustboroCity/scripts.pory"
	release
# 63 "data/maps/RustboroCity/scripts.pory"
	end
# 64 "data/maps/RustboroCity/scripts.pory"

# 65 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Twin::
# 66 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WowYouHavePokemon, MSGBOX_NPC
# 67 "data/maps/RustboroCity/scripts.pory"
	end
# 68 "data/maps/RustboroCity/scripts.pory"

# 69 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_NinjaBoy::
# 70 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CatchRarePokemonIfIGoToSchool, MSGBOX_SIGN
# 71 "data/maps/RustboroCity/scripts.pory"
	end
# 72 "data/maps/RustboroCity/scripts.pory"

# 73 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_TunnelSign::
# 74 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TunnelNearingCompletion, MSGBOX_SIGN
# 75 "data/maps/RustboroCity/scripts.pory"
	end
# 76 "data/maps/RustboroCity/scripts.pory"

# 77 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonCorpSign::
# 78 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_DevonCorpSign, MSGBOX_SIGN
# 79 "data/maps/RustboroCity/scripts.pory"
	end
# 80 "data/maps/RustboroCity/scripts.pory"

# 81 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_GymSign::
# 82 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_GymSign, MSGBOX_SIGN
# 83 "data/maps/RustboroCity/scripts.pory"
	end
# 84 "data/maps/RustboroCity/scripts.pory"

# 85 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 86 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonCorpBranchOfficeSign::
# 87 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_DevonCorpBranchOfficeSign, MSGBOX_SIGN
# 88 "data/maps/RustboroCity/scripts.pory"
	end
# 89 "data/maps/RustboroCity/scripts.pory"

# 90 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_CitySign::
# 91 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CitySign, MSGBOX_SIGN
# 92 "data/maps/RustboroCity/scripts.pory"
	end
# 93 "data/maps/RustboroCity/scripts.pory"

# 94 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_TrainersSchoolSign::
# 95 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TrainersSchoolSign, MSGBOX_SIGN
# 96 "data/maps/RustboroCity/scripts.pory"
	end
# 97 "data/maps/RustboroCity/scripts.pory"

# 98 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_CuttersHouseSign::
# 99 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CuttersHouse, MSGBOX_SIGN
# 100 "data/maps/RustboroCity/scripts.pory"
	end
# 101 "data/maps/RustboroCity/scripts.pory"

# 102 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LittleBoy::
# 103 "data/maps/RustboroCity/scripts.pory"
	lock
# 104 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 105 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PokemonCanChangeLookFromExp, MSGBOX_DEFAULT
# 106 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LITTLE_BOY, Common_Movement_FaceOriginalDirection
# 107 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 108 "data/maps/RustboroCity/scripts.pory"
	release
# 109 "data/maps/RustboroCity/scripts.pory"
	end
# 110 "data/maps/RustboroCity/scripts.pory"

# 111 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LittleGirl::
# 112 "data/maps/RustboroCity/scripts.pory"
	lock
# 113 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 114 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PokemonChangeShape, MSGBOX_DEFAULT
# 115 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LITTLE_GIRL, Common_Movement_FaceOriginalDirection
# 116 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 117 "data/maps/RustboroCity/scripts.pory"
	release
# 118 "data/maps/RustboroCity/scripts.pory"
	end
# 119 "data/maps/RustboroCity/scripts.pory"

# 120 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man2::
# 121 "data/maps/RustboroCity/scripts.pory"
	lock
# 122 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 123 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TradePokemonGrowFast, MSGBOX_DEFAULT
# 124 "data/maps/RustboroCity/scripts.pory"
	release
# 125 "data/maps/RustboroCity/scripts.pory"
	end
# 126 "data/maps/RustboroCity/scripts.pory"

# 127 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger0::
# 128 "data/maps/RustboroCity/scripts.pory"
	lockall
# 129 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 130 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 131 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 0
# 132 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 133 "data/maps/RustboroCity/scripts.pory"
	end
# 134 "data/maps/RustboroCity/scripts.pory"

# 135 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger1::
# 136 "data/maps/RustboroCity/scripts.pory"
	lockall
# 137 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 138 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 139 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 1
# 140 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 141 "data/maps/RustboroCity/scripts.pory"
	end
# 142 "data/maps/RustboroCity/scripts.pory"

# 143 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger2::
# 144 "data/maps/RustboroCity/scripts.pory"
	lockall
# 145 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 146 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 147 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 2
# 148 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 149 "data/maps/RustboroCity/scripts.pory"
	end
# 150 "data/maps/RustboroCity/scripts.pory"

# 151 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger3::
# 152 "data/maps/RustboroCity/scripts.pory"
	lockall
# 153 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 154 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 155 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 3
# 156 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 157 "data/maps/RustboroCity/scripts.pory"
	end
# 158 "data/maps/RustboroCity/scripts.pory"

# 159 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger4::
# 160 "data/maps/RustboroCity/scripts.pory"
	lockall
# 161 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 162 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 163 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 4
# 164 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 165 "data/maps/RustboroCity/scripts.pory"
	end
# 166 "data/maps/RustboroCity/scripts.pory"

# 167 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsScene::
# 168 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_OutOfTheWay, MSGBOX_DEFAULT
# 169 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 170 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 171 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_GRUNT
# 172 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 173 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_GRUNT, RustboroCity_Movement_GruntEscape
# 174 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 175 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_GRUNT
# 176 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeChaseGrunt1
# 177 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 178 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WaitDontTakeMyGoods, MSGBOX_DEFAULT
# 179 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 180 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeChaseGrunt2
# 181 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 182 "data/maps/RustboroCity/scripts.pory"
	fadedefaultbgm
# 183 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 184 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 30, 10
# 185 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
# 186 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEVON_GOODS_STOLEN
# 187 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 2
# 188 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTURF_TUNNEL_STATE, 2
# 189 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE116_STATE, 1
# 190 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_116_MR_BRINEY
# 191 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_PEEKO
# 192 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_AQUA_GRUNT
# 193 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_BRINEYS_HOUSE_MR_BRINEY
# 194 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_BRINEYS_HOUSE_PEEKO
# 195 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 196 "data/maps/RustboroCity/scripts.pory"
	end
# 197 "data/maps/RustboroCity/scripts.pory"

# 198 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 199 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ShadyCharacterTookOff::
# 200 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel, MSGBOX_DEFAULT
# 201 "data/maps/RustboroCity/scripts.pory"
	return
# 202 "data/maps/RustboroCity/scripts.pory"

# 203 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 204 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_YouGotItThankYou::
# 205 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouGotItThankYou, MSGBOX_DEFAULT
# 206 "data/maps/RustboroCity/scripts.pory"
	return
# 207 "data/maps/RustboroCity/scripts.pory"

# 208 "data/maps/RustboroCity/scripts.pory"
@ Unknown, unused employee movements.
# 209 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachUp::
# 210 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachUp
# 211 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 212 "data/maps/RustboroCity/scripts.pory"
	return
# 213 "data/maps/RustboroCity/scripts.pory"

# 214 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 215 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachLeft::
# 216 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachLeft
# 217 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 218 "data/maps/RustboroCity/scripts.pory"
	return
# 219 "data/maps/RustboroCity/scripts.pory"

# 220 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 221 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachRight::
# 222 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachRight
# 223 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 224 "data/maps/RustboroCity/scripts.pory"
	return
# 225 "data/maps/RustboroCity/scripts.pory"

# 226 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 227 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachDown::
# 228 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachDown
# 229 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 230 "data/maps/RustboroCity/scripts.pory"
	return
# 231 "data/maps/RustboroCity/scripts.pory"

# 232 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 233 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerFar::
# 234 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerFar
# 235 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 236 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 237 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 238 "data/maps/RustboroCity/scripts.pory"
	return
# 239 "data/maps/RustboroCity/scripts.pory"

# 240 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 241 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_GruntEscapeExtended:
# 242 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 243 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 244 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 245 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 246 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 247 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 248 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 249 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 250 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 251 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 252 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 253 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 254 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 255 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 256 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 257 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 258 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 259 "data/maps/RustboroCity/scripts.pory"
	step_end
# 260 "data/maps/RustboroCity/scripts.pory"

# 261 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_GruntEscape:
# 262 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 263 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 264 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 265 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 266 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 267 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 268 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 269 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 270 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 271 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 272 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 273 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 274 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 275 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 276 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 277 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 278 "data/maps/RustboroCity/scripts.pory"
	step_end
# 279 "data/maps/RustboroCity/scripts.pory"

# 280 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeChaseGrunt1:
# 281 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 282 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 283 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 284 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 285 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 286 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 287 "data/maps/RustboroCity/scripts.pory"
	walk_in_place_faster_up
# 288 "data/maps/RustboroCity/scripts.pory"
	step_end
# 289 "data/maps/RustboroCity/scripts.pory"

# 290 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeChaseGrunt2:
# 291 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 292 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 293 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 294 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 295 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 296 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 297 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 298 "data/maps/RustboroCity/scripts.pory"
	step_end
# 299 "data/maps/RustboroCity/scripts.pory"

# 300 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 301 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachUp:
# 302 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 303 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 304 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 305 "data/maps/RustboroCity/scripts.pory"
	step_end
# 306 "data/maps/RustboroCity/scripts.pory"

# 307 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 308 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachLeft:
# 309 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 310 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 311 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 312 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 313 "data/maps/RustboroCity/scripts.pory"
	step_end
# 314 "data/maps/RustboroCity/scripts.pory"

# 315 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 316 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachRight:
# 317 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 318 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 319 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 320 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 321 "data/maps/RustboroCity/scripts.pory"
	step_end
# 322 "data/maps/RustboroCity/scripts.pory"

# 323 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 324 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachDown:
# 325 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 326 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 327 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 328 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 329 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 330 "data/maps/RustboroCity/scripts.pory"
	step_end
# 331 "data/maps/RustboroCity/scripts.pory"

# 332 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 333 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachPlayerFar:
# 334 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 335 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 336 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 337 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 338 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 339 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 340 "data/maps/RustboroCity/scripts.pory"
	walk_in_place_faster_down
# 341 "data/maps/RustboroCity/scripts.pory"
	step_end
# 342 "data/maps/RustboroCity/scripts.pory"

# 343 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonEmployee1::
# 344 "data/maps/RustboroCity/scripts.pory"
	lock
# 345 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 346 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_RECOVERED_DEVON_GOODS, RustboroCity_EventScript_ReturnGoodsSpokeToEmployee
# 347 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel, MSGBOX_DEFAULT
# 348 "data/maps/RustboroCity/scripts.pory"
	release
# 349 "data/maps/RustboroCity/scripts.pory"
	end
# 350 "data/maps/RustboroCity/scripts.pory"

# 351 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsSpokeToEmployee::
# 352 "data/maps/RustboroCity/scripts.pory"
	waitse
# 353 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 4
# 354 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 355 "data/maps/RustboroCity/scripts.pory"
	end
# 356 "data/maps/RustboroCity/scripts.pory"

# 357 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger0::
# 358 "data/maps/RustboroCity/scripts.pory"
	lockall
# 359 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 0
# 360 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 361 "data/maps/RustboroCity/scripts.pory"
	end
# 362 "data/maps/RustboroCity/scripts.pory"

# 363 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger1::
# 364 "data/maps/RustboroCity/scripts.pory"
	lockall
# 365 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 366 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 367 "data/maps/RustboroCity/scripts.pory"
	end
# 368 "data/maps/RustboroCity/scripts.pory"

# 369 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger2::
# 370 "data/maps/RustboroCity/scripts.pory"
	lockall
# 371 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 2
# 372 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 373 "data/maps/RustboroCity/scripts.pory"
	end
# 374 "data/maps/RustboroCity/scripts.pory"

# 375 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger3::
# 376 "data/maps/RustboroCity/scripts.pory"
	lockall
# 377 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 3
# 378 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 379 "data/maps/RustboroCity/scripts.pory"
	end
# 380 "data/maps/RustboroCity/scripts.pory"

# 381 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeAskToGetGoods::
# 382 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, RustboroCity_EventScript_EmployeeFacePlayerUp1
# 383 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, RustboroCity_EventScript_EmployeeFacePlayerLeft1
# 384 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, RustboroCity_EventScript_EmployeeFacePlayerDown1
# 385 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 3, RustboroCity_EventScript_EmployeeApproachPlayerDown1
# 386 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_INTERACTED_WITH_DEVON_EMPLOYEE_GOODS_STOLEN
# 387 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 3
# 388 "data/maps/RustboroCity/scripts.pory"
	copyobjectxytoperm LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 389 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HelpMeIWasRobbed, MSGBOX_DEFAULT
# 390 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 391 "data/maps/RustboroCity/scripts.pory"
	end
# 392 "data/maps/RustboroCity/scripts.pory"

# 393 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerUp1::
# 394 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 395 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 396 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 397 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 398 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 399 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 400 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 401 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 402 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 403 "data/maps/RustboroCity/scripts.pory"
	return
# 404 "data/maps/RustboroCity/scripts.pory"

# 405 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerLeft1::
# 406 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterLeft
# 407 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 408 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 409 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 410 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 411 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 412 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 413 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 414 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 415 "data/maps/RustboroCity/scripts.pory"
	return
# 416 "data/maps/RustboroCity/scripts.pory"

# 417 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerDown1::
# 418 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 419 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 420 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 421 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 422 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 423 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 424 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 425 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 426 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 427 "data/maps/RustboroCity/scripts.pory"
	return
# 428 "data/maps/RustboroCity/scripts.pory"

# 429 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerDown1::
# 430 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 431 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 432 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 433 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 434 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 435 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 436 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 437 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerDown
# 438 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 439 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 440 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 441 "data/maps/RustboroCity/scripts.pory"
	return
# 442 "data/maps/RustboroCity/scripts.pory"

# 443 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachPlayerDown:
# 444 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 445 "data/maps/RustboroCity/scripts.pory"
	step_end
# 446 "data/maps/RustboroCity/scripts.pory"

# 447 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger0::
# 448 "data/maps/RustboroCity/scripts.pory"
	lockall
# 449 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 0
# 450 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 451 "data/maps/RustboroCity/scripts.pory"
	end
# 452 "data/maps/RustboroCity/scripts.pory"

# 453 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger1::
# 454 "data/maps/RustboroCity/scripts.pory"
	lockall
# 455 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 456 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 457 "data/maps/RustboroCity/scripts.pory"
	end
# 458 "data/maps/RustboroCity/scripts.pory"

# 459 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger2::
# 460 "data/maps/RustboroCity/scripts.pory"
	lockall
# 461 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 2
# 462 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 463 "data/maps/RustboroCity/scripts.pory"
	end
# 464 "data/maps/RustboroCity/scripts.pory"

# 465 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger3::
# 466 "data/maps/RustboroCity/scripts.pory"
	lockall
# 467 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 3
# 468 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 469 "data/maps/RustboroCity/scripts.pory"
	end
# 470 "data/maps/RustboroCity/scripts.pory"

# 471 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoods::
# 472 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, RustboroCity_EventScript_EmployeeFacePlayerUp2
# 473 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, RustboroCity_EventScript_EmployeeFacePlayerLeft2
# 474 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, RustboroCity_EventScript_EmployeeFacePlayerDown2
# 475 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 3, RustboroCity_EventScript_EmployeeApproachPlayerDown2
# 476 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 4, RustboroCity_EventScript_EmployeeFacePlayerRight
# 477 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouGotItThankYou, MSGBOX_DEFAULT
# 478 "data/maps/RustboroCity/scripts.pory"
	giveitem ITEM_ABILITY_CAPSULE
# 479 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, RustboroCity_EventScript_BagFull
# 480 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 481 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 482 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_RETURNED_DEVON_GOODS
# 483 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
# 484 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 5
# 485 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 486 "data/maps/RustboroCity/scripts.pory"
	warp MAP_RUSTBORO_CITY_DEVON_CORP_3F, 2, 2
# 487 "data/maps/RustboroCity/scripts.pory"
	waitstate
# 488 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 489 "data/maps/RustboroCity/scripts.pory"
	end
# 490 "data/maps/RustboroCity/scripts.pory"

# 491 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BagFull::
# 492 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YoureLoadedWithItems, MSGBOX_DEFAULT
# 493 "data/maps/RustboroCity/scripts.pory"
	return
# 494 "data/maps/RustboroCity/scripts.pory"

# 495 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerUp2::
# 496 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 497 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 498 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 499 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 500 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 501 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 502 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 503 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 504 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 505 "data/maps/RustboroCity/scripts.pory"
	return
# 506 "data/maps/RustboroCity/scripts.pory"

# 507 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerLeft2::
# 508 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterRight
# 509 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 510 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 511 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 512 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 513 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 514 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 515 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 516 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 517 "data/maps/RustboroCity/scripts.pory"
	return
# 518 "data/maps/RustboroCity/scripts.pory"

# 519 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerDown2::
# 520 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 521 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 522 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 523 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 524 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 525 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 526 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 527 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 528 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 529 "data/maps/RustboroCity/scripts.pory"
	return
# 530 "data/maps/RustboroCity/scripts.pory"

# 531 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerDown2::
# 532 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 533 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 534 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 535 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 536 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 537 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 538 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 539 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerDown
# 540 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 541 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 542 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 543 "data/maps/RustboroCity/scripts.pory"
	return
# 544 "data/maps/RustboroCity/scripts.pory"

# 545 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerRight::
# 546 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterLeft
# 547 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 548 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 549 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 550 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 551 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 552 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 553 "data/maps/RustboroCity/scripts.pory"
	return
# 554 "data/maps/RustboroCity/scripts.pory"

# 555 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Rival::
# 556 "data/maps/RustboroCity/scripts.pory"
    lockall
# 557 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalAfterBattle
# 558 "data/maps/RustboroCity/scripts.pory"
    goto_if_unset FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalFirstMeeting
# 559 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 560 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_FacePlayer
# 561 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 562 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 563 "data/maps/RustboroCity/scripts.pory"

# 564 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalFirstMeeting::
# 565 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 566 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_FacePlayer
# 567 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 568 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_MET_RIVAL_RUSTBORO
# 569 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 570 "data/maps/RustboroCity/scripts.pory"

# 571 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalAfterBattle::
# 572 "data/maps/RustboroCity/scripts.pory"
    checkplayergender
# 573 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_MayBrineyHint
# 574 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_BrendanBrineyHint
# 575 "data/maps/RustboroCity/scripts.pory"
    end
# 576 "data/maps/RustboroCity/scripts.pory"

# 577 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_GiveExpShareAfterBattle::
# 578 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL, RustboroCity_EventScript_AlreadyGotExpShare
# 579 "data/maps/RustboroCity/scripts.pory"
    giveitem ITEM_EXP_SHARE
# 580 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL
# 581 "data/maps/RustboroCity/scripts.pory"
    return
# 582 "data/maps/RustboroCity/scripts.pory"

# 583 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_AlreadyGotExpShare::
# 584 "data/maps/RustboroCity/scripts.pory"
    return
# 585 "data/maps/RustboroCity/scripts.pory"

# 586 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayRivalMusic::
# 587 "data/maps/RustboroCity/scripts.pory"
	checkplayergender
# 588 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_PlayMayMusic
# 589 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_PlayBrendanMusic
# 590 "data/maps/RustboroCity/scripts.pory"
	return
# 591 "data/maps/RustboroCity/scripts.pory"

# 592 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayMayMusic::
# 593 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 594 "data/maps/RustboroCity/scripts.pory"
	return
# 595 "data/maps/RustboroCity/scripts.pory"

# 596 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayBrendanMusic::
# 597 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 598 "data/maps/RustboroCity/scripts.pory"
	return
# 599 "data/maps/RustboroCity/scripts.pory"

# 600 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger0::
# 601 "data/maps/RustboroCity/scripts.pory"
    lockall
# 602 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 603 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 604 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 605 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 606 "data/maps/RustboroCity/scripts.pory"
    playse SE_PIN
# 607 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 608 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 609 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 610 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 611 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer0
# 612 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 613 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 614 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 615 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 616 "data/maps/RustboroCity/scripts.pory"

# 617 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger1::
# 618 "data/maps/RustboroCity/scripts.pory"
	lockall
# 619 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 620 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 621 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 622 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 623 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 624 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 625 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 626 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 627 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 628 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer1
# 629 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 630 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 631 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 632 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 633 "data/maps/RustboroCity/scripts.pory"

# 634 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger2::
# 635 "data/maps/RustboroCity/scripts.pory"
	lockall
# 636 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 637 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 638 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 639 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 640 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 641 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 642 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 643 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 644 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 645 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer2
# 646 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 647 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 648 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 649 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 650 "data/maps/RustboroCity/scripts.pory"

# 651 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger3::
# 652 "data/maps/RustboroCity/scripts.pory"
	lockall
# 653 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 654 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 655 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 656 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 657 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 658 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 659 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 660 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 661 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 662 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer3
# 663 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 664 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 665 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 666 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 667 "data/maps/RustboroCity/scripts.pory"

# 668 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger4::
# 669 "data/maps/RustboroCity/scripts.pory"
	lockall
# 670 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 671 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 672 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 673 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 674 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 675 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 676 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 677 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 678 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 679 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer4
# 680 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 681 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 682 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 683 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 684 "data/maps/RustboroCity/scripts.pory"

# 685 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger5::
# 686 "data/maps/RustboroCity/scripts.pory"
	lockall
# 687 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 688 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 689 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 690 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 691 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 692 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 693 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 694 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 695 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 696 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer5
# 697 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 698 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 699 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 700 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 701 "data/maps/RustboroCity/scripts.pory"

# 702 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger6::
# 703 "data/maps/RustboroCity/scripts.pory"
	lockall
# 704 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 705 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 706 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 707 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 708 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 709 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 710 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 711 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 712 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 713 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer6
# 714 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 715 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 716 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 717 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 718 "data/maps/RustboroCity/scripts.pory"

# 719 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger7::
# 720 "data/maps/RustboroCity/scripts.pory"
	lockall
# 721 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 722 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 723 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 724 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 725 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 726 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 727 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 728 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 729 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 730 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer7
# 731 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 732 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 733 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 734 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 735 "data/maps/RustboroCity/scripts.pory"

# 736 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalEncounter::
# 737 "data/maps/RustboroCity/scripts.pory"
	checkplayergender
# 738 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_MayEncounter
# 739 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_BrendanEncounter
# 740 "data/maps/RustboroCity/scripts.pory"
	end
# 741 "data/maps/RustboroCity/scripts.pory"

# 742 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BlockPlayer::
# 743 "data/maps/RustboroCity/scripts.pory"
    lockall
# 744 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_NeedToTalkToRival, MSGBOX_DEFAULT
# 745 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 746 "data/maps/RustboroCity/scripts.pory"
    end
# 747 "data/maps/RustboroCity/scripts.pory"

# 748 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTriggerAfter::
# 749 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 750 "data/maps/RustboroCity/scripts.pory"
    end	
# 751 "data/maps/RustboroCity/scripts.pory"

# 752 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayEncounter::
# 753 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_MayBrineyHint
# 754 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_MayAskToBattle
# 755 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_MET_RIVAL_RUSTBORO
# 756 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayHiLetsRegister, MSGBOX_DEFAULT
# 757 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 758 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 759 "data/maps/RustboroCity/scripts.pory"
	playfanfare MUS_REGISTER_MATCH_CALL
# 760 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_RegisteredMay, MSGBOX_DEFAULT
# 761 "data/maps/RustboroCity/scripts.pory"
	waitfanfare
# 762 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 763 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 764 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 765 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 766 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 767 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8008, 0
# 768 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayPassedBrineyWantToBattle, MSGBOX_YESNO
# 769 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleMay
# 770 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayOhHaventRaisedPokemonEnough, MSGBOX_DEFAULT
# 771 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_RestoreBgm
# 772 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 773 "data/maps/RustboroCity/scripts.pory"
	end
# 774 "data/maps/RustboroCity/scripts.pory"

# 775 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayAskToBattle::
# 776 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8008, 1
# 777 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayWantToBattle, MSGBOX_YESNO
# 778 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleMay
# 779 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayOhHaventRaisedPokemonEnough, MSGBOX_DEFAULT
# 780 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 781 "data/maps/RustboroCity/scripts.pory"
	end
# 782 "data/maps/RustboroCity/scripts.pory"

# 783 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMay::
# 784 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayImNotGoingToLose, MSGBOX_DEFAULT
# 785 "data/maps/RustboroCity/scripts.pory"
	switch VAR_STARTER_MON
# 786 "data/maps/RustboroCity/scripts.pory"
	case 0, RustboroCity_EventScript_BattleMayTreecko
# 787 "data/maps/RustboroCity/scripts.pory"
	case 1, RustboroCity_EventScript_BattleMayTorchic
# 788 "data/maps/RustboroCity/scripts.pory"
	case 2, RustboroCity_EventScript_BattleMayMudkip
# 789 "data/maps/RustboroCity/scripts.pory"
	end
# 790 "data/maps/RustboroCity/scripts.pory"

# 791 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayBrineyHint::
# 792 "data/maps/RustboroCity/scripts.pory"
    lock
# 793 "data/maps/RustboroCity/scripts.pory"
    faceplayer
# 794 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_MayMrBrineyHint, MSGBOX_DEFAULT
# 795 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_0x8008, 0, RustboroCity_EventScript_RestoreBgm
# 796 "data/maps/RustboroCity/scripts.pory"
    release
# 797 "data/maps/RustboroCity/scripts.pory"
    end
# 798 "data/maps/RustboroCity/scripts.pory"

# 799 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RestoreBgm::
# 800 "data/maps/RustboroCity/scripts.pory"
	savebgm MUS_DUMMY
# 801 "data/maps/RustboroCity/scripts.pory"
	fadedefaultbgm
# 802 "data/maps/RustboroCity/scripts.pory"
	return
# 803 "data/maps/RustboroCity/scripts.pory"

# 804 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayTreecko::
# 805 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TREECKO, RustboroCity_Text_MayDefeat
# 806 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 807 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 808 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 809 "data/maps/RustboroCity/scripts.pory"
	end
# 810 "data/maps/RustboroCity/scripts.pory"

# 811 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayTorchic::
# 812 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TORCHIC, RustboroCity_Text_MayDefeat
# 813 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 814 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 815 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 816 "data/maps/RustboroCity/scripts.pory"
	end
# 817 "data/maps/RustboroCity/scripts.pory"

# 818 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayMudkip::
# 819 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_MUDKIP, RustboroCity_Text_MayDefeat
# 820 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 821 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 822 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 823 "data/maps/RustboroCity/scripts.pory"
	end
# 824 "data/maps/RustboroCity/scripts.pory"

# 825 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanEncounter::
# 826 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_BrendanBrineyHint
# 827 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_BrendanAskToBattle
# 828 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_MET_RIVAL_RUSTBORO
# 829 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanHiLetsRegister, MSGBOX_DEFAULT
# 830 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 831 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 832 "data/maps/RustboroCity/scripts.pory"
	playfanfare MUS_REGISTER_MATCH_CALL
# 833 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_RegisteredBrendan, MSGBOX_DEFAULT
# 834 "data/maps/RustboroCity/scripts.pory"
	waitfanfare
# 835 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 836 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 837 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 838 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 839 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 840 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanPassedBrineyWantToBattle, MSGBOX_YESNO
# 841 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleBrendan
# 842 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanNoConfidenceInPokemon, MSGBOX_DEFAULT
# 843 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_RestoreBgm
# 844 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 845 "data/maps/RustboroCity/scripts.pory"
	end
# 846 "data/maps/RustboroCity/scripts.pory"

# 847 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanAskToBattle::
# 848 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanWantToBattle, MSGBOX_YESNO
# 849 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleBrendan
# 850 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanNoConfidenceInPokemon, MSGBOX_DEFAULT
# 851 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 852 "data/maps/RustboroCity/scripts.pory"
	end
# 853 "data/maps/RustboroCity/scripts.pory"

# 854 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendan::
# 855 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanIWontGoEasy, MSGBOX_DEFAULT
# 856 "data/maps/RustboroCity/scripts.pory"
	switch VAR_STARTER_MON
# 857 "data/maps/RustboroCity/scripts.pory"
	case 0, RustboroCity_EventScript_BattleBrendanTreecko
# 858 "data/maps/RustboroCity/scripts.pory"
	case 1, RustboroCity_EventScript_BattleBrendanTorchic
# 859 "data/maps/RustboroCity/scripts.pory"
	case 2, RustboroCity_EventScript_BattleBrendanMudkip
# 860 "data/maps/RustboroCity/scripts.pory"
	end
# 861 "data/maps/RustboroCity/scripts.pory"

# 862 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanBrineyHint::
# 863 "data/maps/RustboroCity/scripts.pory"
    lock
# 864 "data/maps/RustboroCity/scripts.pory"
    faceplayer
# 865 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_BrendanMrBrineyHint, MSGBOX_DEFAULT
# 866 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_0x8008, 0, RustboroCity_EventScript_RestoreBgm
# 867 "data/maps/RustboroCity/scripts.pory"
    release
# 868 "data/maps/RustboroCity/scripts.pory"
    end
# 869 "data/maps/RustboroCity/scripts.pory"

# 870 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanTreecko::
# 871 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TREECKO, RustboroCity_Text_BrendanDefeat
# 872 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 873 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 874 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 875 "data/maps/RustboroCity/scripts.pory"
	end
# 876 "data/maps/RustboroCity/scripts.pory"

# 877 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanTorchic::
# 878 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TORCHIC, RustboroCity_Text_BrendanDefeat
# 879 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 880 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 881 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 882 "data/maps/RustboroCity/scripts.pory"
	end
# 883 "data/maps/RustboroCity/scripts.pory"

# 884 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanMudkip::
# 885 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_MUDKIP, RustboroCity_Text_BrendanDefeat
# 886 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 887 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 888 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 889 "data/maps/RustboroCity/scripts.pory"
	end
# 890 "data/maps/RustboroCity/scripts.pory"

# 891 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer0:
# 892 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 893 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 894 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 895 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 896 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 897 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 898 "data/maps/RustboroCity/scripts.pory"
	step_end
# 899 "data/maps/RustboroCity/scripts.pory"

# 900 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer1:
# 901 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 902 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 903 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 904 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 905 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 906 "data/maps/RustboroCity/scripts.pory"
	step_end
# 907 "data/maps/RustboroCity/scripts.pory"

# 908 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer2:
# 909 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 910 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 911 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 912 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 913 "data/maps/RustboroCity/scripts.pory"
	step_end
# 914 "data/maps/RustboroCity/scripts.pory"

# 915 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer3:
# 916 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 917 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 918 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 919 "data/maps/RustboroCity/scripts.pory"
	step_end
# 920 "data/maps/RustboroCity/scripts.pory"

# 921 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer4:
# 922 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 923 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 924 "data/maps/RustboroCity/scripts.pory"
	step_end
# 925 "data/maps/RustboroCity/scripts.pory"

# 926 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer5:
# 927 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 928 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 929 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 930 "data/maps/RustboroCity/scripts.pory"
	step_end
# 931 "data/maps/RustboroCity/scripts.pory"

# 932 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer6:
# 933 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 934 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 935 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 936 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 937 "data/maps/RustboroCity/scripts.pory"
	step_end
# 938 "data/maps/RustboroCity/scripts.pory"

# 939 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer7:
# 940 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 941 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 942 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 943 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 944 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 945 "data/maps/RustboroCity/scripts.pory"
	step_end
# 946 "data/maps/RustboroCity/scripts.pory"

# 947 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy1::
# 948 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouCanHave2On2Battle, MSGBOX_NPC
# 949 "data/maps/RustboroCity/scripts.pory"
	end
# 950 "data/maps/RustboroCity/scripts.pory"

# 951 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Devonearthquake::
# 952 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_Devonearthquake, MSGBOX_NPC
# 953 "data/maps/RustboroCity/scripts.pory"
	end
# 954 "data/maps/RustboroCity/scripts.pory"

# 955 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WeShortenItToDevon:
# 956 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON CORPORATION…\n"
# 957 "data/maps/RustboroCity/scripts.pory"
	.string "We all just shorten it to DEVON.\p"
# 958 "data/maps/RustboroCity/scripts.pory"
	.string "That company makes all sorts of\n"
# 959 "data/maps/RustboroCity/scripts.pory"
	.string "convenient products.$"
# 960 "data/maps/RustboroCity/scripts.pory"

# 961 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_SneakyLookingManWentAroundCorner:
# 962 "data/maps/RustboroCity/scripts.pory"
	.string "Hm? A sneaky-looking man?\p"
# 963 "data/maps/RustboroCity/scripts.pory"
	.string "Come to think of it, yes, a shady-\n"
# 964 "data/maps/RustboroCity/scripts.pory"
	.string "looking guy went around the corner.$"
# 965 "data/maps/RustboroCity/scripts.pory"

# 966 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HaveYouChallengedGym:
# 967 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO has always had frequent\n"
# 968 "data/maps/RustboroCity/scripts.pory"
	.string "earthquakes, but they've gotten\l"
# 969 "data/maps/RustboroCity/scripts.pory"
	.string "more intense lately.\p"
# 970 "data/maps/RustboroCity/scripts.pory"
	.string "We're barely keeping up with the\n"
# 971 "data/maps/RustboroCity/scripts.pory"
	.string "damage as it is!$"
# 972 "data/maps/RustboroCity/scripts.pory"

# 973 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HeyThatsRustborosGymBadge:
# 974 "data/maps/RustboroCity/scripts.pory"
.string "Hah! You want the RUSTBORO GYM BADGE?\p"
# 975 "data/maps/RustboroCity/scripts.pory"
.string "You'll have to face TERRA!\p"
# 976 "data/maps/RustboroCity/scripts.pory"
.string "She's tough! And a formidable\n"
# 977 "data/maps/RustboroCity/scripts.pory"
.string "climber! Look at you, with those\l"
# 978 "data/maps/RustboroCity/scripts.pory"
.string "weird clothes, all scrawny, and those\l"
# 979 "data/maps/RustboroCity/scripts.pory"
.string "dark circles under your eyes...\p"
# 980 "data/maps/RustboroCity/scripts.pory"
.string "I'm not sure you stand a chance...\p"
# 981 "data/maps/RustboroCity/scripts.pory"
.string "I got mine after like 20 attempts,\n"
# 982 "data/maps/RustboroCity/scripts.pory"
.string "and I think TERRA went easy on me\l"
# 983 "data/maps/RustboroCity/scripts.pory"
.string "'cause we're climbing buddies!\p"
# 984 "data/maps/RustboroCity/scripts.pory"
.string "Good luck! HAHAHAH!$"
# 985 "data/maps/RustboroCity/scripts.pory"

# 986 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YoureNewAroundHere:
# 987 "data/maps/RustboroCity/scripts.pory"
.string "Oh? Who might you be?\n"
# 988 "data/maps/RustboroCity/scripts.pory"
.string "You're a new face around these parts.\p"
# 989 "data/maps/RustboroCity/scripts.pory"
.string "With those weird clothes of yours,\n"
# 990 "data/maps/RustboroCity/scripts.pory"
.string "they won't accept you at the school!\l"
# 991 "data/maps/RustboroCity/scripts.pory"
.string "Where's your uniform?$"
# 992 "data/maps/RustboroCity/scripts.pory"

# 993 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_GymLeaderIsntEasyWithFire:
# 994 "data/maps/RustboroCity/scripts.pory"
    .string "You know TERRA, the GYM LEADER?\n"
# 995 "data/maps/RustboroCity/scripts.pory"
    .string "Amazing rock climber! People say she\l"
# 996 "data/maps/RustboroCity/scripts.pory"
    .string "climbed Mt. Chimney with no equipment.\p"
# 997 "data/maps/RustboroCity/scripts.pory"
    .string "I went to meet her just to ask for an\n"
# 998 "data/maps/RustboroCity/scripts.pory"
    .string "autograph, but she challenged me to a\l"
# 999 "data/maps/RustboroCity/scripts.pory"
    .string "battle instead...\p"
# 1000 "data/maps/RustboroCity/scripts.pory"
    .string "I got beaten really badly...$"
# 1001 "data/maps/RustboroCity/scripts.pory"

# 1002 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MrBrineyWalksInTheTunnel:
# 1003 "data/maps/RustboroCity/scripts.pory"
	.string "The old sailor MR. BRINEY lives in\n"
# 1004 "data/maps/RustboroCity/scripts.pory"
	.string "a cottage by the sea.\p"
# 1005 "data/maps/RustboroCity/scripts.pory"
	.string "He goes for walks in the tunnel every\n"
# 1006 "data/maps/RustboroCity/scripts.pory"
	.string "so often.$"
# 1007 "data/maps/RustboroCity/scripts.pory"

# 1008 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MrBrineyLovesPeeko:
# 1009 "data/maps/RustboroCity/scripts.pory"
	.string "The old sailor MR. BRINEY lives in\n"
# 1010 "data/maps/RustboroCity/scripts.pory"
	.string "a cottage by the sea.\p"
# 1011 "data/maps/RustboroCity/scripts.pory"
	.string "He said he was going shopping in\n"
# 1012 "data/maps/RustboroCity/scripts.pory"
	.string "SLATEPORT for his pet, NAMI.\p"
# 1013 "data/maps/RustboroCity/scripts.pory"
	.string "That old sea dog, he must really love\n"
# 1014 "data/maps/RustboroCity/scripts.pory"
	.string "that NAMI.$"
# 1015 "data/maps/RustboroCity/scripts.pory"

# 1016 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WowYouHavePokemon:
# 1017 "data/maps/RustboroCity/scripts.pory"
	.string "Wow, you have POKéMON with you, too.\p"
# 1018 "data/maps/RustboroCity/scripts.pory"
	.string "When I get bigger, I'm going to go\n"
# 1019 "data/maps/RustboroCity/scripts.pory"
	.string "places with POKéMON, too.$"
# 1020 "data/maps/RustboroCity/scripts.pory"

# 1021 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CatchRarePokemonIfIGoToSchool:
# 1022 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON TRAINER'S SCHOOL!\p"
# 1023 "data/maps/RustboroCity/scripts.pory"
	.string "If I go to this school, will I be able\n"
# 1024 "data/maps/RustboroCity/scripts.pory"
	.string "to catch rare POKéMON easily?$"
# 1025 "data/maps/RustboroCity/scripts.pory"

# 1026 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PokemonCanChangeLookFromExp:
# 1027 "data/maps/RustboroCity/scripts.pory"
    .string "RUSTBORO CITY always feels so alive.\n"
# 1028 "data/maps/RustboroCity/scripts.pory"
    .string "The streets are full of students,\l"
# 1029 "data/maps/RustboroCity/scripts.pory"
    .string "workers, and travelers passing through.\p"
# 1030 "data/maps/RustboroCity/scripts.pory"
    .string "Every corner has someone tinkering with\n"
# 1031 "data/maps/RustboroCity/scripts.pory"
    .string "a machine or studying something new.\l"
# 1032 "data/maps/RustboroCity/scripts.pory"
    .string "I wonder what discoveries will come out\l"
# 1033 "data/maps/RustboroCity/scripts.pory"
    .string "of this place next.$"
# 1034 "data/maps/RustboroCity/scripts.pory"

# 1035 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PokemonChangeShape:
# 1036 "data/maps/RustboroCity/scripts.pory"
    .string "I've heard there's a cave\n"
# 1037 "data/maps/RustboroCity/scripts.pory"
    .string "north of here, past ROUTE 116.\p"
# 1038 "data/maps/RustboroCity/scripts.pory"
    .string "Explorers say echoes come from the\n"
# 1039 "data/maps/RustboroCity/scripts.pory"
    .string "deep tunnels… like something hidden\l"
# 1040 "data/maps/RustboroCity/scripts.pory"
    .string "is shifting around in the dark.$"
# 1041 "data/maps/RustboroCity/scripts.pory"

# 1042 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TradePokemonGrowFast:
# 1043 "data/maps/RustboroCity/scripts.pory"
    .string "Hmph… Those climbers around Rustboro\n"
# 1044 "data/maps/RustboroCity/scripts.pory"
    .string "think they're so tough, climbing all\l"
# 1045 "data/maps/RustboroCity/scripts.pory"
    .string "day and bragging about their ROCK\l"
# 1046 "data/maps/RustboroCity/scripts.pory"
	.string "Pokémon.\p"
# 1047 "data/maps/RustboroCity/scripts.pory"
    .string "I can't stand that rowdy bunch,\n"
# 1048 "data/maps/RustboroCity/scripts.pory"
	.string "so I train WATER-types just to wash\l"
# 1049 "data/maps/RustboroCity/scripts.pory"
	.string "them off their precious mountains.$"
# 1050 "data/maps/RustboroCity/scripts.pory"

# 1051 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_OutOfTheWay:
# 1052 "data/maps/RustboroCity/scripts.pory"
	.string "Get out!\n"
# 1053 "data/maps/RustboroCity/scripts.pory"
	.string "Out of the way!$"
# 1054 "data/maps/RustboroCity/scripts.pory"

# 1055 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WaitDontTakeMyGoods:
# 1056 "data/maps/RustboroCity/scripts.pory"
	.string "Wait! Pleeeaaase!\p"
# 1057 "data/maps/RustboroCity/scripts.pory"
	.string "Don't take my GOODS!$"
# 1058 "data/maps/RustboroCity/scripts.pory"

# 1059 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HelpMeIWasRobbed:
# 1060 "data/maps/RustboroCity/scripts.pory"
	.string "Oh, it's you!\p"
# 1061 "data/maps/RustboroCity/scripts.pory"
	.string "You're that fantastic TRAINER who\n"
# 1062 "data/maps/RustboroCity/scripts.pory"
	.string "helped me in PETALBURG WOODS!\p"
# 1063 "data/maps/RustboroCity/scripts.pory"
	.string "Help me! I was robbed by TEAM AQUA!\n"
# 1064 "data/maps/RustboroCity/scripts.pory"
	.string "I have to get the DEVON GOODS back!\p"
# 1065 "data/maps/RustboroCity/scripts.pory"
	.string "If I don't…\n"
# 1066 "data/maps/RustboroCity/scripts.pory"
	.string "I'm going to be in serious trouble.$"
# 1067 "data/maps/RustboroCity/scripts.pory"

# 1068 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel:
# 1069 "data/maps/RustboroCity/scripts.pory"
	.string "That shady character, I think he took\n"
# 1070 "data/maps/RustboroCity/scripts.pory"
	.string "off towards the tunnel over there.$"
# 1071 "data/maps/RustboroCity/scripts.pory"

# 1072 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YouGotItThankYou:
# 1073 "data/maps/RustboroCity/scripts.pory"
	.string "Oh! How did it go?\n"
# 1074 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON GOODS?\p"
# 1075 "data/maps/RustboroCity/scripts.pory"
	.string "You did!\n"
# 1076 "data/maps/RustboroCity/scripts.pory"
	.string "You got them back!\p"
# 1077 "data/maps/RustboroCity/scripts.pory"
	.string "You really are a great TRAINER!\p"
# 1078 "data/maps/RustboroCity/scripts.pory"
	.string "I know! As my thanks, I'll give you\n"
# 1079 "data/maps/RustboroCity/scripts.pory"
	.string "this ABILITY CAPSULE! It's DEVON's\l"
# 1080 "data/maps/RustboroCity/scripts.pory"
	.string "latest breakthrough.\p"
# 1081 "data/maps/RustboroCity/scripts.pory"
	.string "With it, you can switch a\n"
# 1082 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON's abilities!$"
# 1083 "data/maps/RustboroCity/scripts.pory"

# 1084 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YoureLoadedWithItems:
# 1085 "data/maps/RustboroCity/scripts.pory"
	.string "You're loaded with items.\n"
# 1086 "data/maps/RustboroCity/scripts.pory"
	.string "I can't give you this...$"
# 1087 "data/maps/RustboroCity/scripts.pory"

# 1088 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PleaseComeWithMe:
# 1089 "data/maps/RustboroCity/scripts.pory"
	.string "Excuse me, please!\n"
# 1090 "data/maps/RustboroCity/scripts.pory"
	.string "Please come with me!$"
# 1091 "data/maps/RustboroCity/scripts.pory"

# 1092 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayHiLetsRegister:
# 1093 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, hi, {PLAYER}{KUN}!\p"
# 1094 "data/maps/RustboroCity/scripts.pory"
	.string "Good thing I found you!\n"
# 1095 "data/maps/RustboroCity/scripts.pory"
	.string "CALENDULA gave me this and\l"
# 1096 "data/maps/RustboroCity/scripts.pory"
	.string "asked me to deliver it to you!\p"
# 1097 "data/maps/RustboroCity/scripts.pory"
	.string "It's an EXP. SHARE!\p"
# 1098 "data/maps/RustboroCity/scripts.pory"
	.string "It makes all POKéMON in your party\n"
# 1099 "data/maps/RustboroCity/scripts.pory"
	.string "gain experience from battles!\p"
# 1100 "data/maps/RustboroCity/scripts.pory"
	.string "Anyway, another thing…\p"
# 1101 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1102 "data/maps/RustboroCity/scripts.pory"

# 1103 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_RegisteredMay:
# 1104 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1105 "data/maps/RustboroCity/scripts.pory"
	
# 1106 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayPassedBrineyWantToBattle:
# 1107 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, by the way, I passed\n"
# 1108 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY in PETALBURG WOODS.\p"
# 1109 "data/maps/RustboroCity/scripts.pory"
	.string "I guess he's on his way home to his\n"
# 1110 "data/maps/RustboroCity/scripts.pory"
	.string "cottage by the sea.\p"
# 1111 "data/maps/RustboroCity/scripts.pory"
	.string "How's your POKéDEX coming along,\n"
# 1112 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}? Mine's looking pretty decent!\p"
# 1113 "data/maps/RustboroCity/scripts.pory"
	.string "So…\n"
# 1114 "data/maps/RustboroCity/scripts.pory"
	.string "How about a little battle?$"
# 1115 "data/maps/RustboroCity/scripts.pory"

# 1116 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayOhHaventRaisedPokemonEnough:
# 1117 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, what's the matter?\p"
# 1118 "data/maps/RustboroCity/scripts.pory"
	.string "Haven't you caught or raised your\n"
# 1119 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON very much?\p"
# 1120 "data/maps/RustboroCity/scripts.pory"
	.string "That's not very good for a TRAINER!$"
# 1121 "data/maps/RustboroCity/scripts.pory"

# 1122 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayWantToBattle:
# 1123 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: So, what do you think?\n"
# 1124 "data/maps/RustboroCity/scripts.pory"
	.string "How about a little battle here?$"
# 1125 "data/maps/RustboroCity/scripts.pory"

# 1126 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayImNotGoingToLose:
# 1127 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: You just became a TRAINER,\n"
# 1128 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}. I'm not going to lose!$"
# 1129 "data/maps/RustboroCity/scripts.pory"

# 1130 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayDefeat:
# 1131 "data/maps/RustboroCity/scripts.pory"
	.string "Yikes!\n"
# 1132 "data/maps/RustboroCity/scripts.pory"
	.string "You're better than I expected!$"
# 1133 "data/maps/RustboroCity/scripts.pory"

# 1134 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayMrBrineyHint:
# 1135 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, by the way, MR. BRINEY, who\n"
# 1136 "data/maps/RustboroCity/scripts.pory"
	.string "I just passed…\p"
# 1137 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}, you just moved here so you\n"
# 1138 "data/maps/RustboroCity/scripts.pory"
	.string "might not know this, but MR. BRINEY\l"
# 1139 "data/maps/RustboroCity/scripts.pory"
	.string "was once a revered seafarer.$"
# 1140 "data/maps/RustboroCity/scripts.pory"

# 1141 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanHiLetsRegister:
# 1142 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: Oh, hey, {PLAYER}!\p"
# 1143 "data/maps/RustboroCity/scripts.pory"
	.string "Lucky I ran into you!\n"
# 1144 "data/maps/RustboroCity/scripts.pory"
	.string "CALENDULA gave me something and\l"
# 1145 "data/maps/RustboroCity/scripts.pory"
	.string "told me to give it to you!\p"
# 1146 "data/maps/RustboroCity/scripts.pory"
	.string "It's an EXP. SHARE!\p"
# 1147 "data/maps/RustboroCity/scripts.pory"
	.string "When you use it, all POKéMON in\n"
# 1148 "data/maps/RustboroCity/scripts.pory"
	.string "your party will gain experience!\p"
# 1149 "data/maps/RustboroCity/scripts.pory"
	.string "Oh, and one more thing…\p"
# 1150 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1151 "data/maps/RustboroCity/scripts.pory"

# 1152 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_RegisteredBrendan:
# 1153 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1154 "data/maps/RustboroCity/scripts.pory"

# 1155 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanPassedBrineyWantToBattle:
# 1156 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: By the way, {PLAYER}, I walked\n"
# 1157 "data/maps/RustboroCity/scripts.pory"
	.string "by MR. BRINEY in PETALBURG WOODS.\p"
# 1158 "data/maps/RustboroCity/scripts.pory"
	.string "I bet he was on his way home to his\n"
# 1159 "data/maps/RustboroCity/scripts.pory"
	.string "cottage by the sea.\p"
# 1160 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, how's your POKéDEX?\n"
# 1161 "data/maps/RustboroCity/scripts.pory"
	.string "Have you filled in any pages yet?\p"
# 1162 "data/maps/RustboroCity/scripts.pory"
	.string "Mine rules.\p"
# 1163 "data/maps/RustboroCity/scripts.pory"
	.string "Want to have a battle to test how\n"
# 1164 "data/maps/RustboroCity/scripts.pory"
	.string "far you've progressed?$"
# 1165 "data/maps/RustboroCity/scripts.pory"

# 1166 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanNoConfidenceInPokemon:
# 1167 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: What's the matter? Don't have\n"
# 1168 "data/maps/RustboroCity/scripts.pory"
	.string "any confidence in your POKéMON?$"
# 1169 "data/maps/RustboroCity/scripts.pory"

# 1170 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanWantToBattle:
# 1171 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: What's up?\n"
# 1172 "data/maps/RustboroCity/scripts.pory"
	.string "Want to have a battle with me?$"
# 1173 "data/maps/RustboroCity/scripts.pory"

# 1174 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanIWontGoEasy:
# 1175 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: I know you just became\n"
# 1176 "data/maps/RustboroCity/scripts.pory"
	.string "a TRAINER, but I won't go easy!$"
# 1177 "data/maps/RustboroCity/scripts.pory"

# 1178 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanDefeat:
# 1179 "data/maps/RustboroCity/scripts.pory"
	.string "Hmm…\n"
# 1180 "data/maps/RustboroCity/scripts.pory"
	.string "You're pretty good.$"
# 1181 "data/maps/RustboroCity/scripts.pory"

# 1182 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanMrBrineyHint:
# 1183 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: By the way, you know\n"
# 1184 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY? The guy I just passed?\p"
# 1185 "data/maps/RustboroCity/scripts.pory"
	.string "I bet you didn't know this, since you\n"
# 1186 "data/maps/RustboroCity/scripts.pory"
	.string "just moved here, {PLAYER}, but\l"
# 1187 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY was once a great sailor.$"
# 1188 "data/maps/RustboroCity/scripts.pory"

# 1189 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TunnelNearingCompletion:
# 1190 "data/maps/RustboroCity/scripts.pory"
	.string "“Timesaving tunnel nearing\n"
# 1191 "data/maps/RustboroCity/scripts.pory"
	.string "completion!”\p"
# 1192 "data/maps/RustboroCity/scripts.pory"
	.string "…Is what it says on the sign, but\n"
# 1193 "data/maps/RustboroCity/scripts.pory"
	.string "there's also a big “X” splashed\l"
# 1194 "data/maps/RustboroCity/scripts.pory"
	.string "across it in red paint…$"
# 1195 "data/maps/RustboroCity/scripts.pory"

# 1196 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevonCorpSign:
# 1197 "data/maps/RustboroCity/scripts.pory"
	.string "DEVON CORPORATION\p"
# 1198 "data/maps/RustboroCity/scripts.pory"
	.string "“For all your living needs, we make\n"
# 1199 "data/maps/RustboroCity/scripts.pory"
	.string "it all.”$"
# 1200 "data/maps/RustboroCity/scripts.pory"

# 1201 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_GymSign:
# 1202 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO CITY POKéMON GYM\n"
# 1203 "data/maps/RustboroCity/scripts.pory"
	.string "LEADER: ROXANNE\p"
# 1204 "data/maps/RustboroCity/scripts.pory"
	.string "“The ROCK-loving honors student!”$"
# 1205 "data/maps/RustboroCity/scripts.pory"

# 1206 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevonCorpBranchOfficeSign:
# 1207 "data/maps/RustboroCity/scripts.pory"
	.string "DEVON CORP. BRANCH OFFICE\p"
# 1208 "data/maps/RustboroCity/scripts.pory"
	.string "“Access limited to DEVON employees\n"
# 1209 "data/maps/RustboroCity/scripts.pory"
	.string "and authorized personnel.”$"
# 1210 "data/maps/RustboroCity/scripts.pory"

# 1211 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CitySign:
# 1212 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO CITY\p"
# 1213 "data/maps/RustboroCity/scripts.pory"
	.string "“The city probing the integration of\n"
# 1214 "data/maps/RustboroCity/scripts.pory"
	.string "nature and science.”$"
# 1215 "data/maps/RustboroCity/scripts.pory"

# 1216 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TrainersSchoolSign:
# 1217 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON TRAINER'S SCHOOL\p"
# 1218 "data/maps/RustboroCity/scripts.pory"
	.string "“We'll teach you anything about\n"
# 1219 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON!”$"
# 1220 "data/maps/RustboroCity/scripts.pory"

# 1221 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CuttersHouse:
# 1222 "data/maps/RustboroCity/scripts.pory"
	.string "CUTTER'S HOUSE$"
# 1223 "data/maps/RustboroCity/scripts.pory"

# 1224 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevelopedNewPokenavFeature:
# 1225 "data/maps/RustboroCity/scripts.pory"
	.string "I've been developing an added feature\n"
# 1226 "data/maps/RustboroCity/scripts.pory"
	.string "for the POKéNAV…\p"
# 1227 "data/maps/RustboroCity/scripts.pory"
	.string "And it turned out great!\p"
# 1228 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, may I see that POKéNAV?\n"
# 1229 "data/maps/RustboroCity/scripts.pory"
	.string "The one our PRESIDENT gave you?$"
# 1230 "data/maps/RustboroCity/scripts.pory"

# 1231 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_AddedMatchCallPleaseCallMrStone:
# 1232 "data/maps/RustboroCity/scripts.pory"
	.string "There you go, {PLAYER}!\p"
# 1233 "data/maps/RustboroCity/scripts.pory"
	.string "I added a new feature named\n"
# 1234 "data/maps/RustboroCity/scripts.pory"
	.string "MATCH CALL to your POKéNAV.\p"
# 1235 "data/maps/RustboroCity/scripts.pory"
	.string "Using the MATCH CALL feature,\n"
# 1236 "data/maps/RustboroCity/scripts.pory"
	.string "you can chat with people who have\l"
# 1237 "data/maps/RustboroCity/scripts.pory"
	.string "been registered in your POKéNAV.\p"
# 1238 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, our PRESIDENT STONE should\n"
# 1239 "data/maps/RustboroCity/scripts.pory"
	.string "be registered in your POKéNAV.\p"
# 1240 "data/maps/RustboroCity/scripts.pory"
	.string "Test it out.\n"
# 1241 "data/maps/RustboroCity/scripts.pory"
	.string "Please give our PRESIDENT a call.$"
# 1242 "data/maps/RustboroCity/scripts.pory"

# 1243 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PleaseSelectPokenav:
# 1244 "data/maps/RustboroCity/scripts.pory"
	.string "Please select the POKéNAV.$"
# 1245 "data/maps/RustboroCity/scripts.pory"

# 1246 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_IdBetterGetBackToWork:
# 1247 "data/maps/RustboroCity/scripts.pory"
	.string "Okay, I'd better get back to work.\n"
# 1248 "data/maps/RustboroCity/scripts.pory"
	.string "Please take care, {PLAYER}!$"
# 1249 "data/maps/RustboroCity/scripts.pory"

# 1250 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YouCanHave2On2Battle:
# 1251 "data/maps/RustboroCity/scripts.pory"
	.string "Did you know this?\p"
# 1252 "data/maps/RustboroCity/scripts.pory"
	.string "You can have a 2-on-2 battle even\n"
# 1253 "data/maps/RustboroCity/scripts.pory"
	.string "if you're not with another TRAINER.\p"
# 1254 "data/maps/RustboroCity/scripts.pory"
	.string "If you catch the eyes of two TRAINERS\n"
# 1255 "data/maps/RustboroCity/scripts.pory"
	.string "when you have two or more POKéMON,\l"
# 1256 "data/maps/RustboroCity/scripts.pory"
	.string "they'll both challenge you.\p"
# 1257 "data/maps/RustboroCity/scripts.pory"
	.string "Don't you think it'd be cool if you\n"
# 1258 "data/maps/RustboroCity/scripts.pory"
	.string "could beat two TRAINERS by yourself?$"
# 1259 "data/maps/RustboroCity/scripts.pory"

# 1260 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_NeedToTalkToRival:
# 1261 "data/maps/RustboroCity/scripts.pory"
    .string "Hey! Wait up!\p"
# 1262 "data/maps/RustboroCity/scripts.pory"
    .string "Don't you want to talk to\n"
# 1263 "data/maps/RustboroCity/scripts.pory"
    .string "your rival first?$"
# 1264 "data/maps/RustboroCity/scripts.pory"

# 1265 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_Devonearthquake:
# 1266 "data/maps/RustboroCity/scripts.pory"
	.string "The earthquakes have been going\n"
# 1267 "data/maps/RustboroCity/scripts.pory"
	.string "on for years, but with each one,\l"
# 1268 "data/maps/RustboroCity/scripts.pory"
	.string "the land cracks open more and more.\p"
# 1269 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON building may even end\n"
# 1270 "data/maps/RustboroCity/scripts.pory"
	.string "up falling into the sea soon!$"
