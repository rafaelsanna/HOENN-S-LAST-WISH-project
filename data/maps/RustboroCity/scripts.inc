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
	@ MAR's object is tied to FLAG_HIDE_MAR_RUST_VISIBILITY in map.json.
# 11 "data/maps/RustboroCity/scripts.pory"
	@ Force it set on every map load so he's hidden by default; the
# 12 "data/maps/RustboroCity/scripts.pory"
	@ trigger clears it only for the duration of his cutscene.
# 13 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_MAR_RUST_VISIBILITY
# 14 "data/maps/RustboroCity/scripts.pory"
	end
# 15 "data/maps/RustboroCity/scripts.pory"

# 16 "data/maps/RustboroCity/scripts.pory"
RustboroCity_OnFrame:
# 17 "data/maps/RustboroCity/scripts.pory"
	.2byte 0
# 18 "data/maps/RustboroCity/scripts.pory"

# 19 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_FatMan::
# 20 "data/maps/RustboroCity/scripts.pory"
	lock
# 21 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 22 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEVON_GOODS_STOLEN, RustboroCity_EventScript_FatManSawGrunt
# 23 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WeShortenItToDevon, MSGBOX_DEFAULT
# 24 "data/maps/RustboroCity/scripts.pory"
	release
# 25 "data/maps/RustboroCity/scripts.pory"
	end
# 26 "data/maps/RustboroCity/scripts.pory"

# 27 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_FatManSawGrunt::
# 28 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_SneakyLookingManWentAroundCorner, MSGBOX_DEFAULT
# 29 "data/maps/RustboroCity/scripts.pory"
	release
# 30 "data/maps/RustboroCity/scripts.pory"
	end
# 31 "data/maps/RustboroCity/scripts.pory"

# 32 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonEmployee2::
# 33 "data/maps/RustboroCity/scripts.pory"
	lock
# 34 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 35 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YoureNewAroundHere, MSGBOX_DEFAULT
# 36 "data/maps/RustboroCity/scripts.pory"
	release
# 37 "data/maps/RustboroCity/scripts.pory"
	end
# 38 "data/maps/RustboroCity/scripts.pory"

# 39 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Woman::
# 40 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_GymLeaderIsntEasyWithFire, MSGBOX_NPC
# 41 "data/maps/RustboroCity/scripts.pory"
	end
# 42 "data/maps/RustboroCity/scripts.pory"

# 43 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man1::
# 44 "data/maps/RustboroCity/scripts.pory"
	lock
# 45 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 46 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_EventScript_Man1HaveBadge
# 47 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HaveYouChallengedGym, MSGBOX_DEFAULT
# 48 "data/maps/RustboroCity/scripts.pory"
	release
# 49 "data/maps/RustboroCity/scripts.pory"
	end
# 50 "data/maps/RustboroCity/scripts.pory"

# 51 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man1HaveBadge::
# 52 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HeyThatsRustborosGymBadge, MSGBOX_DEFAULT
# 53 "data/maps/RustboroCity/scripts.pory"
	release
# 54 "data/maps/RustboroCity/scripts.pory"
	end
# 55 "data/maps/RustboroCity/scripts.pory"

# 56 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy2::
# 57 "data/maps/RustboroCity/scripts.pory"
	lock
# 58 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 59 "data/maps/RustboroCity/scripts.pory"
	goto_if_set DN_FLAG_DEXNAV_GET, RustboroCity_EventScript_Boy2BrineyLeftTunnel
# 60 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MrBrineyWalksInTheTunnel, MSGBOX_DEFAULT
# 61 "data/maps/RustboroCity/scripts.pory"
	release
# 62 "data/maps/RustboroCity/scripts.pory"
	end
# 63 "data/maps/RustboroCity/scripts.pory"

# 64 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy2BrineyLeftTunnel::
# 65 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MrBrineyLovesPeeko, MSGBOX_DEFAULT
# 66 "data/maps/RustboroCity/scripts.pory"
	release
# 67 "data/maps/RustboroCity/scripts.pory"
	end
# 68 "data/maps/RustboroCity/scripts.pory"

# 69 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Twin::
# 70 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WowYouHavePokemon, MSGBOX_NPC
# 71 "data/maps/RustboroCity/scripts.pory"
	end
# 72 "data/maps/RustboroCity/scripts.pory"

# 73 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_NinjaBoy::
# 74 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CatchRarePokemonIfIGoToSchool, MSGBOX_SIGN
# 75 "data/maps/RustboroCity/scripts.pory"
	end
# 76 "data/maps/RustboroCity/scripts.pory"

# 77 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_TunnelSign::
# 78 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TunnelNearingCompletion, MSGBOX_SIGN
# 79 "data/maps/RustboroCity/scripts.pory"
	end
# 80 "data/maps/RustboroCity/scripts.pory"

# 81 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonCorpSign::
# 82 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_DevonCorpSign, MSGBOX_SIGN
# 83 "data/maps/RustboroCity/scripts.pory"
	end
# 84 "data/maps/RustboroCity/scripts.pory"

# 85 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_GymSign::
# 86 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_GymSign, MSGBOX_SIGN
# 87 "data/maps/RustboroCity/scripts.pory"
	end
# 88 "data/maps/RustboroCity/scripts.pory"

# 89 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 90 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonCorpBranchOfficeSign::
# 91 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_DevonCorpBranchOfficeSign, MSGBOX_SIGN
# 92 "data/maps/RustboroCity/scripts.pory"
	end
# 93 "data/maps/RustboroCity/scripts.pory"

# 94 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_CitySign::
# 95 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CitySign, MSGBOX_SIGN
# 96 "data/maps/RustboroCity/scripts.pory"
	end
# 97 "data/maps/RustboroCity/scripts.pory"

# 98 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_TrainersSchoolSign::
# 99 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TrainersSchoolSign, MSGBOX_SIGN
# 100 "data/maps/RustboroCity/scripts.pory"
	end
# 101 "data/maps/RustboroCity/scripts.pory"

# 102 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_CuttersHouseSign::
# 103 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_CuttersHouse, MSGBOX_SIGN
# 104 "data/maps/RustboroCity/scripts.pory"
	end
# 105 "data/maps/RustboroCity/scripts.pory"

# 106 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LittleBoy::
# 107 "data/maps/RustboroCity/scripts.pory"
	lock
# 108 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 109 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PokemonCanChangeLookFromExp, MSGBOX_DEFAULT
# 110 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LITTLE_BOY, Common_Movement_FaceOriginalDirection
# 111 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 112 "data/maps/RustboroCity/scripts.pory"
	release
# 113 "data/maps/RustboroCity/scripts.pory"
	end
# 114 "data/maps/RustboroCity/scripts.pory"

# 115 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_LittleGirl::
# 116 "data/maps/RustboroCity/scripts.pory"
	lock
# 117 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 118 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PokemonChangeShape, MSGBOX_DEFAULT
# 119 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_LITTLE_GIRL, Common_Movement_FaceOriginalDirection
# 120 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 121 "data/maps/RustboroCity/scripts.pory"
	release
# 122 "data/maps/RustboroCity/scripts.pory"
	end
# 123 "data/maps/RustboroCity/scripts.pory"

# 124 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Man2::
# 125 "data/maps/RustboroCity/scripts.pory"
	lock
# 126 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 127 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_TradePokemonGrowFast, MSGBOX_DEFAULT
# 128 "data/maps/RustboroCity/scripts.pory"
	release
# 129 "data/maps/RustboroCity/scripts.pory"
	end
# 130 "data/maps/RustboroCity/scripts.pory"

# 131 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger0::
# 132 "data/maps/RustboroCity/scripts.pory"
	lockall
# 133 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 134 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 135 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 0
# 136 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 137 "data/maps/RustboroCity/scripts.pory"
	end
# 138 "data/maps/RustboroCity/scripts.pory"

# 139 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger1::
# 140 "data/maps/RustboroCity/scripts.pory"
	lockall
# 141 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 142 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 143 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 1
# 144 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 145 "data/maps/RustboroCity/scripts.pory"
	end
# 146 "data/maps/RustboroCity/scripts.pory"

# 147 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger2::
# 148 "data/maps/RustboroCity/scripts.pory"
	lockall
# 149 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 150 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 151 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 2
# 152 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 153 "data/maps/RustboroCity/scripts.pory"
	end
# 154 "data/maps/RustboroCity/scripts.pory"

# 155 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger3::
# 156 "data/maps/RustboroCity/scripts.pory"
	lockall
# 157 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 158 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 159 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 3
# 160 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 161 "data/maps/RustboroCity/scripts.pory"
	end
# 162 "data/maps/RustboroCity/scripts.pory"

# 163 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsTrigger4::
# 164 "data/maps/RustboroCity/scripts.pory"
	lockall
# 165 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 14, 21
# 166 "data/maps/RustboroCity/scripts.pory"
	setobjectmovementtype LOCALID_RUSTBORO_DEVON_EMPLOYEE, MOVEMENT_TYPE_FACE_RIGHT
# 167 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8004, 4
# 168 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_StolenGoodsScene
# 169 "data/maps/RustboroCity/scripts.pory"
	end
# 170 "data/maps/RustboroCity/scripts.pory"

# 171 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_StolenGoodsScene::
# 172 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_OutOfTheWay, MSGBOX_DEFAULT
# 173 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 174 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 175 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_GRUNT
# 176 "data/maps/RustboroCity/scripts.pory"
	addobject LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 177 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_GRUNT, RustboroCity_Movement_GruntEscape
# 178 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 179 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_GRUNT
# 180 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeChaseGrunt1
# 181 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 182 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_WaitDontTakeMyGoods, MSGBOX_DEFAULT
# 183 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 184 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeChaseGrunt2
# 185 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 186 "data/maps/RustboroCity/scripts.pory"
	fadedefaultbgm
# 187 "data/maps/RustboroCity/scripts.pory"
	removeobject LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 188 "data/maps/RustboroCity/scripts.pory"
	setobjectxyperm LOCALID_RUSTBORO_DEVON_EMPLOYEE, 30, 10
# 189 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
# 190 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEVON_GOODS_STOLEN
# 191 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 2
# 192 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTURF_TUNNEL_STATE, 2
# 193 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE116_STATE, 1
# 194 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_116_MR_BRINEY
# 195 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_PEEKO
# 196 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_AQUA_GRUNT
# 197 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_BRINEYS_HOUSE_MR_BRINEY
# 198 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_BRINEYS_HOUSE_PEEKO
# 199 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 200 "data/maps/RustboroCity/scripts.pory"
	end
# 201 "data/maps/RustboroCity/scripts.pory"

# 202 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 203 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ShadyCharacterTookOff::
# 204 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel, MSGBOX_DEFAULT
# 205 "data/maps/RustboroCity/scripts.pory"
	return
# 206 "data/maps/RustboroCity/scripts.pory"

# 207 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 208 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_YouGotItThankYou::
# 209 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouGotItThankYou, MSGBOX_DEFAULT
# 210 "data/maps/RustboroCity/scripts.pory"
	return
# 211 "data/maps/RustboroCity/scripts.pory"

# 212 "data/maps/RustboroCity/scripts.pory"
@ Unknown, unused employee movements.
# 213 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachUp::
# 214 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachUp
# 215 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 216 "data/maps/RustboroCity/scripts.pory"
	return
# 217 "data/maps/RustboroCity/scripts.pory"

# 218 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 219 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachLeft::
# 220 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachLeft
# 221 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 222 "data/maps/RustboroCity/scripts.pory"
	return
# 223 "data/maps/RustboroCity/scripts.pory"

# 224 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 225 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachRight::
# 226 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachRight
# 227 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 228 "data/maps/RustboroCity/scripts.pory"
	return
# 229 "data/maps/RustboroCity/scripts.pory"

# 230 "data/maps/RustboroCity/scripts.pory"
@ Unused, see above
# 231 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachDown::
# 232 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachDown
# 233 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 234 "data/maps/RustboroCity/scripts.pory"
	return
# 235 "data/maps/RustboroCity/scripts.pory"

# 236 "data/maps/RustboroCity/scripts.pory"
@ Unused
# 237 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerFar::
# 238 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerFar
# 239 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 240 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 241 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 242 "data/maps/RustboroCity/scripts.pory"
	return
# 243 "data/maps/RustboroCity/scripts.pory"

# 244 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 245 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_GruntEscapeExtended:
# 246 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 247 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 248 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 249 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 250 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 251 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
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
	walk_fast_up
# 260 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 261 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 262 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 263 "data/maps/RustboroCity/scripts.pory"
	step_end
# 264 "data/maps/RustboroCity/scripts.pory"

# 265 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_GruntEscape:
# 266 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 267 "data/maps/RustboroCity/scripts.pory"
	walk_faster_right
# 268 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 269 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 270 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 271 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
# 272 "data/maps/RustboroCity/scripts.pory"
	walk_fast_right
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
	walk_fast_up
# 279 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 280 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 281 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 282 "data/maps/RustboroCity/scripts.pory"
	step_end
# 283 "data/maps/RustboroCity/scripts.pory"

# 284 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeChaseGrunt1:
# 285 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 286 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 287 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 288 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 289 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 290 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 291 "data/maps/RustboroCity/scripts.pory"
	walk_in_place_faster_up
# 292 "data/maps/RustboroCity/scripts.pory"
	step_end
# 293 "data/maps/RustboroCity/scripts.pory"

# 294 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeChaseGrunt2:
# 295 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 296 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 297 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 298 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 299 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 300 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 301 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 302 "data/maps/RustboroCity/scripts.pory"
	step_end
# 303 "data/maps/RustboroCity/scripts.pory"

# 304 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 305 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachUp:
# 306 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 307 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 308 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 309 "data/maps/RustboroCity/scripts.pory"
	step_end
# 310 "data/maps/RustboroCity/scripts.pory"

# 311 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 312 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachLeft:
# 313 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 314 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 315 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 316 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 317 "data/maps/RustboroCity/scripts.pory"
	step_end
# 318 "data/maps/RustboroCity/scripts.pory"

# 319 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 320 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachRight:
# 321 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 322 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 323 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 324 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 325 "data/maps/RustboroCity/scripts.pory"
	step_end
# 326 "data/maps/RustboroCity/scripts.pory"

# 327 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 328 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachDown:
# 329 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 330 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 331 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 332 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 333 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 334 "data/maps/RustboroCity/scripts.pory"
	step_end
# 335 "data/maps/RustboroCity/scripts.pory"

# 336 "data/maps/RustboroCity/scripts.pory"
@ Functionally unused
# 337 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachPlayerFar:
# 338 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 339 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 340 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 341 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 342 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 343 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 344 "data/maps/RustboroCity/scripts.pory"
	walk_in_place_faster_down
# 345 "data/maps/RustboroCity/scripts.pory"
	step_end
# 346 "data/maps/RustboroCity/scripts.pory"

# 347 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_DevonEmployee1::
# 348 "data/maps/RustboroCity/scripts.pory"
	lock
# 349 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 350 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_RECOVERED_DEVON_GOODS, RustboroCity_EventScript_ReturnGoodsSpokeToEmployee
# 351 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel, MSGBOX_DEFAULT
# 352 "data/maps/RustboroCity/scripts.pory"
	release
# 353 "data/maps/RustboroCity/scripts.pory"
	end
# 354 "data/maps/RustboroCity/scripts.pory"

# 355 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsSpokeToEmployee::
# 356 "data/maps/RustboroCity/scripts.pory"
	waitse
# 357 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 4
# 358 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 359 "data/maps/RustboroCity/scripts.pory"
	end
# 360 "data/maps/RustboroCity/scripts.pory"

# 361 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger0::
# 362 "data/maps/RustboroCity/scripts.pory"
	lockall
# 363 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 0
# 364 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 365 "data/maps/RustboroCity/scripts.pory"
	end
# 366 "data/maps/RustboroCity/scripts.pory"

# 367 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger1::
# 368 "data/maps/RustboroCity/scripts.pory"
	lockall
# 369 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 370 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 371 "data/maps/RustboroCity/scripts.pory"
	end
# 372 "data/maps/RustboroCity/scripts.pory"

# 373 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger2::
# 374 "data/maps/RustboroCity/scripts.pory"
	lockall
# 375 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 2
# 376 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 377 "data/maps/RustboroCity/scripts.pory"
	end
# 378 "data/maps/RustboroCity/scripts.pory"

# 379 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_HelpGetGoodsTrigger3::
# 380 "data/maps/RustboroCity/scripts.pory"
	lockall
# 381 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 3
# 382 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_EmployeeAskToGetGoods
# 383 "data/maps/RustboroCity/scripts.pory"
	end
# 384 "data/maps/RustboroCity/scripts.pory"

# 385 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeAskToGetGoods::
# 386 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, RustboroCity_EventScript_EmployeeFacePlayerUp1
# 387 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, RustboroCity_EventScript_EmployeeFacePlayerLeft1
# 388 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, RustboroCity_EventScript_EmployeeFacePlayerDown1
# 389 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 3, RustboroCity_EventScript_EmployeeApproachPlayerDown1
# 390 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_INTERACTED_WITH_DEVON_EMPLOYEE_GOODS_STOLEN
# 391 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 3
# 392 "data/maps/RustboroCity/scripts.pory"
	copyobjectxytoperm LOCALID_RUSTBORO_DEVON_EMPLOYEE
# 393 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_HelpMeIWasRobbed, MSGBOX_DEFAULT
# 394 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 395 "data/maps/RustboroCity/scripts.pory"
	end
# 396 "data/maps/RustboroCity/scripts.pory"

# 397 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerUp1::
# 398 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 399 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 400 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 401 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 402 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 403 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 404 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 405 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 406 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 407 "data/maps/RustboroCity/scripts.pory"
	return
# 408 "data/maps/RustboroCity/scripts.pory"

# 409 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerLeft1::
# 410 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterLeft
# 411 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 412 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 413 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 414 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 415 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 416 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 417 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 418 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 419 "data/maps/RustboroCity/scripts.pory"
	return
# 420 "data/maps/RustboroCity/scripts.pory"

# 421 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerDown1::
# 422 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 423 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 424 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 425 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 426 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 427 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 428 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 429 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 430 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 431 "data/maps/RustboroCity/scripts.pory"
	return
# 432 "data/maps/RustboroCity/scripts.pory"

# 433 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerDown1::
# 434 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 435 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 436 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 437 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 438 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 439 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 440 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 441 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerDown
# 442 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 443 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 444 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 445 "data/maps/RustboroCity/scripts.pory"
	return
# 446 "data/maps/RustboroCity/scripts.pory"

# 447 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_EmployeeApproachPlayerDown:
# 448 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 449 "data/maps/RustboroCity/scripts.pory"
	step_end
# 450 "data/maps/RustboroCity/scripts.pory"

# 451 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger0::
# 452 "data/maps/RustboroCity/scripts.pory"
	lockall
# 453 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 0
# 454 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 455 "data/maps/RustboroCity/scripts.pory"
	end
# 456 "data/maps/RustboroCity/scripts.pory"

# 457 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger1::
# 458 "data/maps/RustboroCity/scripts.pory"
	lockall
# 459 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 460 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 461 "data/maps/RustboroCity/scripts.pory"
	end
# 462 "data/maps/RustboroCity/scripts.pory"

# 463 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger2::
# 464 "data/maps/RustboroCity/scripts.pory"
	lockall
# 465 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 2
# 466 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 467 "data/maps/RustboroCity/scripts.pory"
	end
# 468 "data/maps/RustboroCity/scripts.pory"

# 469 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoodsTrigger3::
# 470 "data/maps/RustboroCity/scripts.pory"
	lockall
# 471 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_TEMP_1, 3
# 472 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_ReturnGoods
# 473 "data/maps/RustboroCity/scripts.pory"
	end
# 474 "data/maps/RustboroCity/scripts.pory"

# 475 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ReturnGoods::
# 476 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, RustboroCity_EventScript_EmployeeFacePlayerUp2
# 477 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, RustboroCity_EventScript_EmployeeFacePlayerLeft2
# 478 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, RustboroCity_EventScript_EmployeeFacePlayerDown2
# 479 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 3, RustboroCity_EventScript_EmployeeApproachPlayerDown2
# 480 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_TEMP_1, 4, RustboroCity_EventScript_EmployeeFacePlayerRight
# 481 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouGotItThankYou, MSGBOX_DEFAULT
# 482 "data/maps/RustboroCity/scripts.pory"
	giveitem ITEM_ABILITY_CAPSULE
# 483 "data/maps/RustboroCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, RustboroCity_EventScript_BagFull
# 484 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 485 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 486 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_RETURNED_DEVON_GOODS
# 487 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_DEVON_EMPLOYEE_1
# 488 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 5
# 489 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 490 "data/maps/RustboroCity/scripts.pory"
	warp MAP_RUSTBORO_CITY_DEVON_CORP_3F, 2, 2
# 491 "data/maps/RustboroCity/scripts.pory"
	waitstate
# 492 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 493 "data/maps/RustboroCity/scripts.pory"
	end
# 494 "data/maps/RustboroCity/scripts.pory"

# 495 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BagFull::
# 496 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YoureLoadedWithItems, MSGBOX_DEFAULT
# 497 "data/maps/RustboroCity/scripts.pory"
	return
# 498 "data/maps/RustboroCity/scripts.pory"

# 499 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerUp2::
# 500 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 501 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 502 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 503 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 504 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 505 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 506 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 507 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 508 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 509 "data/maps/RustboroCity/scripts.pory"
	return
# 510 "data/maps/RustboroCity/scripts.pory"

# 511 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerLeft2::
# 512 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterRight
# 513 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 514 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 515 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 516 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 517 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 518 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 519 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 520 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 521 "data/maps/RustboroCity/scripts.pory"
	return
# 522 "data/maps/RustboroCity/scripts.pory"

# 523 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerDown2::
# 524 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 525 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 526 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 527 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 528 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 529 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 530 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 531 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 532 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 533 "data/maps/RustboroCity/scripts.pory"
	return
# 534 "data/maps/RustboroCity/scripts.pory"

# 535 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeApproachPlayerDown2::
# 536 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterDown
# 537 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 538 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 539 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 540 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 541 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 542 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 543 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, RustboroCity_Movement_EmployeeApproachPlayerDown
# 544 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 545 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 546 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 547 "data/maps/RustboroCity/scripts.pory"
	return
# 548 "data/maps/RustboroCity/scripts.pory"

# 549 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_EmployeeFacePlayerRight::
# 550 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterLeft
# 551 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 552 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 553 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_ExclamationMark
# 554 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 555 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_DEVON_EMPLOYEE, Common_Movement_Delay48
# 556 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 557 "data/maps/RustboroCity/scripts.pory"
	return
# 558 "data/maps/RustboroCity/scripts.pory"

# 559 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Rival::
# 560 "data/maps/RustboroCity/scripts.pory"
    lockall
# 561 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalAfterBattle
# 562 "data/maps/RustboroCity/scripts.pory"
    goto_if_unset FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalFirstMeeting
# 563 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 564 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_FacePlayer
# 565 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 566 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 567 "data/maps/RustboroCity/scripts.pory"

# 568 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalFirstMeeting::
# 569 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 570 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_FacePlayer
# 571 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 572 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_MET_RIVAL_RUSTBORO
# 573 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 574 "data/maps/RustboroCity/scripts.pory"

# 575 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalAfterBattle::
# 576 "data/maps/RustboroCity/scripts.pory"
    checkplayergender
# 577 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_MayBrineyHint
# 578 "data/maps/RustboroCity/scripts.pory"
    goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_BrendanBrineyHint
# 579 "data/maps/RustboroCity/scripts.pory"
    end
# 580 "data/maps/RustboroCity/scripts.pory"

# 581 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_GiveExpShareAfterBattle::
# 582 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL, RustboroCity_EventScript_AlreadyGotExpShare
# 583 "data/maps/RustboroCity/scripts.pory"
    giveitem ITEM_EXP_SHARE
# 584 "data/maps/RustboroCity/scripts.pory"
    setflag FLAG_RECEIVED_EXP_SHARE_FROM_RIVAL
# 585 "data/maps/RustboroCity/scripts.pory"
    return
# 586 "data/maps/RustboroCity/scripts.pory"

# 587 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_AlreadyGotExpShare::
# 588 "data/maps/RustboroCity/scripts.pory"
    return
# 589 "data/maps/RustboroCity/scripts.pory"

# 590 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayRivalMusic::
# 591 "data/maps/RustboroCity/scripts.pory"
	checkplayergender
# 592 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_PlayMayMusic
# 593 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_PlayBrendanMusic
# 594 "data/maps/RustboroCity/scripts.pory"
	return
# 595 "data/maps/RustboroCity/scripts.pory"

# 596 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayMayMusic::
# 597 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 598 "data/maps/RustboroCity/scripts.pory"
	return
# 599 "data/maps/RustboroCity/scripts.pory"

# 600 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_PlayBrendanMusic::
# 601 "data/maps/RustboroCity/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 602 "data/maps/RustboroCity/scripts.pory"
	return
# 603 "data/maps/RustboroCity/scripts.pory"

# 604 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger0::
# 605 "data/maps/RustboroCity/scripts.pory"
    lockall
# 606 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 607 "data/maps/RustboroCity/scripts.pory"
    call RustboroCity_EventScript_PlayRivalMusic
# 608 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 609 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 610 "data/maps/RustboroCity/scripts.pory"
    playse SE_PIN
# 611 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 612 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 613 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 614 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 615 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer0
# 616 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 617 "data/maps/RustboroCity/scripts.pory"
    applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 618 "data/maps/RustboroCity/scripts.pory"
    waitmovement 0
# 619 "data/maps/RustboroCity/scripts.pory"
    goto RustboroCity_EventScript_RivalEncounter
# 620 "data/maps/RustboroCity/scripts.pory"

# 621 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger1::
# 622 "data/maps/RustboroCity/scripts.pory"
	lockall
# 623 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 624 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 625 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 626 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 627 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 628 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 629 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 630 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 631 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 632 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer1
# 633 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 634 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 635 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 636 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 637 "data/maps/RustboroCity/scripts.pory"

# 638 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger2::
# 639 "data/maps/RustboroCity/scripts.pory"
	lockall
# 640 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 641 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 642 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 643 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 644 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 645 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 646 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 647 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 648 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 649 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer2
# 650 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 651 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 652 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 653 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 654 "data/maps/RustboroCity/scripts.pory"

# 655 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger3::
# 656 "data/maps/RustboroCity/scripts.pory"
	lockall
# 657 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 658 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 659 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 660 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 661 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 662 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 663 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 664 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 665 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 666 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer3
# 667 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 668 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 669 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 670 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 671 "data/maps/RustboroCity/scripts.pory"

# 672 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger4::
# 673 "data/maps/RustboroCity/scripts.pory"
	lockall
# 674 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 675 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 676 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 677 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 678 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 679 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 680 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 681 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 682 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 683 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer4
# 684 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 685 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 686 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 687 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 688 "data/maps/RustboroCity/scripts.pory"

# 689 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger5::
# 690 "data/maps/RustboroCity/scripts.pory"
	lockall
# 691 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 692 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 693 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 694 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 695 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 696 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 697 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 698 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 699 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 700 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer5
# 701 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 702 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 703 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 704 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 705 "data/maps/RustboroCity/scripts.pory"

# 706 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger6::
# 707 "data/maps/RustboroCity/scripts.pory"
	lockall
# 708 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 709 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 710 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 711 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 712 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 713 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 714 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 715 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 716 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 717 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer6
# 718 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 719 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 720 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 721 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 722 "data/maps/RustboroCity/scripts.pory"

# 723 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTrigger7::
# 724 "data/maps/RustboroCity/scripts.pory"
	lockall
# 725 "data/maps/RustboroCity/scripts.pory"
    goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_RivalTriggerAfter
# 726 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_PlayRivalMusic
# 727 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 728 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 729 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 730 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_ExclamationMark
# 731 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 732 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, Common_Movement_Delay48
# 733 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 734 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_RUSTBORO_RIVAL, RustboroCity_Movement_RivalApproachPlayer7
# 735 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 736 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 737 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 738 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_RivalEncounter
# 739 "data/maps/RustboroCity/scripts.pory"

# 740 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalEncounter::
# 741 "data/maps/RustboroCity/scripts.pory"
	checkplayergender
# 742 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RustboroCity_EventScript_MayEncounter
# 743 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RustboroCity_EventScript_BrendanEncounter
# 744 "data/maps/RustboroCity/scripts.pory"
	end
# 745 "data/maps/RustboroCity/scripts.pory"

# 746 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BlockPlayer::
# 747 "data/maps/RustboroCity/scripts.pory"
    lockall
# 748 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_NeedToTalkToRival, MSGBOX_DEFAULT
# 749 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 750 "data/maps/RustboroCity/scripts.pory"
    end
# 751 "data/maps/RustboroCity/scripts.pory"

# 752 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RivalTriggerAfter::
# 753 "data/maps/RustboroCity/scripts.pory"
    releaseall
# 754 "data/maps/RustboroCity/scripts.pory"
    end	
# 755 "data/maps/RustboroCity/scripts.pory"

# 756 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayEncounter::
# 757 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_MayBrineyHint
# 758 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_MayAskToBattle
# 759 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_MET_RIVAL_RUSTBORO
# 760 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 761 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayHiLetsRegister, MSGBOX_DEFAULT
# 762 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 763 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 764 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 765 "data/maps/RustboroCity/scripts.pory"
	playfanfare MUS_REGISTER_MATCH_CALL
# 766 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_RegisteredMay, MSGBOX_DEFAULT
# 767 "data/maps/RustboroCity/scripts.pory"
	waitfanfare
# 768 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 769 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 770 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 771 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 772 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 773 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8008, 0
# 774 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 775 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayPassedBrineyWantToBattle, MSGBOX_YESNO
# 776 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 777 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleMay
# 778 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 779 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayOhHaventRaisedPokemonEnough, MSGBOX_DEFAULT
# 780 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 781 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_RestoreBgm
# 782 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 783 "data/maps/RustboroCity/scripts.pory"
	end
# 784 "data/maps/RustboroCity/scripts.pory"

# 785 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayAskToBattle::
# 786 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_0x8008, 1
# 787 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 788 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayWantToBattle, MSGBOX_YESNO
# 789 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 790 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleMay
# 791 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 792 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayOhHaventRaisedPokemonEnough, MSGBOX_DEFAULT
# 793 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 794 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 795 "data/maps/RustboroCity/scripts.pory"
	end
# 796 "data/maps/RustboroCity/scripts.pory"

# 797 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMay::
# 798 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 799 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MayImNotGoingToLose, MSGBOX_DEFAULT
# 800 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 801 "data/maps/RustboroCity/scripts.pory"
	switch VAR_STARTER_MON
# 802 "data/maps/RustboroCity/scripts.pory"
	case 0, RustboroCity_EventScript_BattleMayTreecko
# 803 "data/maps/RustboroCity/scripts.pory"
	case 1, RustboroCity_EventScript_BattleMayTorchic
# 804 "data/maps/RustboroCity/scripts.pory"
	case 2, RustboroCity_EventScript_BattleMayMudkip
# 805 "data/maps/RustboroCity/scripts.pory"
	end
# 806 "data/maps/RustboroCity/scripts.pory"

# 807 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_MayBrineyHint::
# 808 "data/maps/RustboroCity/scripts.pory"
    lock
# 809 "data/maps/RustboroCity/scripts.pory"
    faceplayer
# 810 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 811 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_MayMrBrineyHint, MSGBOX_DEFAULT
# 812 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 813 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_0x8008, 0, RustboroCity_EventScript_RestoreBgm
# 814 "data/maps/RustboroCity/scripts.pory"
    release
# 815 "data/maps/RustboroCity/scripts.pory"
    end
# 816 "data/maps/RustboroCity/scripts.pory"

# 817 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_RestoreBgm::
# 818 "data/maps/RustboroCity/scripts.pory"
	savebgm MUS_DUMMY
# 819 "data/maps/RustboroCity/scripts.pory"
	fadedefaultbgm
# 820 "data/maps/RustboroCity/scripts.pory"
	return
# 821 "data/maps/RustboroCity/scripts.pory"

# 822 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayTreecko::
# 823 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TREECKO, RustboroCity_Text_MayDefeat
# 824 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 825 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 826 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 827 "data/maps/RustboroCity/scripts.pory"
	end
# 828 "data/maps/RustboroCity/scripts.pory"

# 829 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayTorchic::
# 830 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_TORCHIC, RustboroCity_Text_MayDefeat
# 831 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 832 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 833 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 834 "data/maps/RustboroCity/scripts.pory"
	end
# 835 "data/maps/RustboroCity/scripts.pory"

# 836 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleMayMudkip::
# 837 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_RUSTBORO_MUDKIP, RustboroCity_Text_MayDefeat
# 838 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 839 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 840 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_MayBrineyHint
# 841 "data/maps/RustboroCity/scripts.pory"
	end
# 842 "data/maps/RustboroCity/scripts.pory"

# 843 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanEncounter::
# 844 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_RIVAL_RUSTBORO, RustboroCity_EventScript_BrendanBrineyHint
# 845 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_RUSTBORO, RustboroCity_EventScript_BrendanAskToBattle
# 846 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_MET_RIVAL_RUSTBORO
# 847 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 848 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanHiLetsRegister, MSGBOX_DEFAULT
# 849 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 850 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 851 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 852 "data/maps/RustboroCity/scripts.pory"
	playfanfare MUS_REGISTER_MATCH_CALL
# 853 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_RegisteredBrendan, MSGBOX_DEFAULT
# 854 "data/maps/RustboroCity/scripts.pory"
	waitfanfare
# 855 "data/maps/RustboroCity/scripts.pory"
	closemessage
# 856 "data/maps/RustboroCity/scripts.pory"
	delay 30
# 857 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_ENABLE_RIVAL_MATCH_CALL
# 858 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 8
# 859 "data/maps/RustboroCity/scripts.pory"
	setvar VAR_ROUTE104_STATE, 2
# 860 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 861 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanPassedBrineyWantToBattle, MSGBOX_YESNO
# 862 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 863 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleBrendan
# 864 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 865 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanNoConfidenceInPokemon, MSGBOX_DEFAULT
# 866 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 867 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_RestoreBgm
# 868 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 869 "data/maps/RustboroCity/scripts.pory"
	end
# 870 "data/maps/RustboroCity/scripts.pory"

# 871 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanAskToBattle::
# 872 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 873 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanWantToBattle, MSGBOX_YESNO
# 874 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 875 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_EventScript_BattleBrendan
# 876 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 877 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanNoConfidenceInPokemon, MSGBOX_DEFAULT
# 878 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 879 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 880 "data/maps/RustboroCity/scripts.pory"
	end
# 881 "data/maps/RustboroCity/scripts.pory"

# 882 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendan::
# 883 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 884 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_BrendanIWontGoEasy, MSGBOX_DEFAULT
# 885 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 886 "data/maps/RustboroCity/scripts.pory"
	switch VAR_STARTER_MON
# 887 "data/maps/RustboroCity/scripts.pory"
	case 0, RustboroCity_EventScript_BattleBrendanTreecko
# 888 "data/maps/RustboroCity/scripts.pory"
	case 1, RustboroCity_EventScript_BattleBrendanTorchic
# 889 "data/maps/RustboroCity/scripts.pory"
	case 2, RustboroCity_EventScript_BattleBrendanMudkip
# 890 "data/maps/RustboroCity/scripts.pory"
	end
# 891 "data/maps/RustboroCity/scripts.pory"

# 892 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BrendanBrineyHint::
# 893 "data/maps/RustboroCity/scripts.pory"
    lock
# 894 "data/maps/RustboroCity/scripts.pory"
    faceplayer
# 895 "data/maps/RustboroCity/scripts.pory"
    createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 896 "data/maps/RustboroCity/scripts.pory"
    msgbox RustboroCity_Text_BrendanMrBrineyHint, MSGBOX_DEFAULT
# 897 "data/maps/RustboroCity/scripts.pory"
    removefieldmugshot
# 898 "data/maps/RustboroCity/scripts.pory"
    call_if_eq VAR_0x8008, 0, RustboroCity_EventScript_RestoreBgm
# 899 "data/maps/RustboroCity/scripts.pory"
    release
# 900 "data/maps/RustboroCity/scripts.pory"
    end
# 901 "data/maps/RustboroCity/scripts.pory"

# 902 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanTreecko::
# 903 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TREECKO, RustboroCity_Text_BrendanDefeat
# 904 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 905 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 906 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 907 "data/maps/RustboroCity/scripts.pory"
	end
# 908 "data/maps/RustboroCity/scripts.pory"

# 909 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanTorchic::
# 910 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_TORCHIC, RustboroCity_Text_BrendanDefeat
# 911 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 912 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 913 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 914 "data/maps/RustboroCity/scripts.pory"
	end
# 915 "data/maps/RustboroCity/scripts.pory"

# 916 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_BattleBrendanMudkip::
# 917 "data/maps/RustboroCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_RUSTBORO_MUDKIP, RustboroCity_Text_BrendanDefeat
# 918 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_DEFEATED_RIVAL_RUSTBORO
# 919 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_GiveExpShareAfterBattle
# 920 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_BrendanBrineyHint
# 921 "data/maps/RustboroCity/scripts.pory"
	end
# 922 "data/maps/RustboroCity/scripts.pory"

# 923 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer0:
# 924 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 925 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 926 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 927 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 928 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 929 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 930 "data/maps/RustboroCity/scripts.pory"
	step_end
# 931 "data/maps/RustboroCity/scripts.pory"

# 932 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer1:
# 933 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 934 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 935 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 936 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 937 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 938 "data/maps/RustboroCity/scripts.pory"
	step_end
# 939 "data/maps/RustboroCity/scripts.pory"

# 940 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer2:
# 941 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 942 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 943 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 944 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 945 "data/maps/RustboroCity/scripts.pory"
	step_end
# 946 "data/maps/RustboroCity/scripts.pory"

# 947 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer3:
# 948 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 949 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 950 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 951 "data/maps/RustboroCity/scripts.pory"
	step_end
# 952 "data/maps/RustboroCity/scripts.pory"

# 953 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer4:
# 954 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 955 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 956 "data/maps/RustboroCity/scripts.pory"
	step_end
# 957 "data/maps/RustboroCity/scripts.pory"

# 958 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer5:
# 959 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 960 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 961 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 962 "data/maps/RustboroCity/scripts.pory"
	step_end
# 963 "data/maps/RustboroCity/scripts.pory"

# 964 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer6:
# 965 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 966 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 967 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 968 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 969 "data/maps/RustboroCity/scripts.pory"
	step_end
# 970 "data/maps/RustboroCity/scripts.pory"

# 971 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_RivalApproachPlayer7:
# 972 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 973 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 974 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 975 "data/maps/RustboroCity/scripts.pory"
	walk_right
# 976 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 977 "data/maps/RustboroCity/scripts.pory"
	step_end
# 978 "data/maps/RustboroCity/scripts.pory"

# 979 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Boy1::
# 980 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_YouCanHave2On2Battle, MSGBOX_NPC
# 981 "data/maps/RustboroCity/scripts.pory"
	end
# 982 "data/maps/RustboroCity/scripts.pory"

# 983 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Devonearthquake::
# 984 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_Devonearthquake, MSGBOX_NPC
# 985 "data/maps/RustboroCity/scripts.pory"
	end
# 986 "data/maps/RustboroCity/scripts.pory"

# 987 "data/maps/RustboroCity/scripts.pory"
@ ============================================================
# 988 "data/maps/RustboroCity/scripts.pory"
@ MAR - father of TERRA and RIO, appears once near the Gym door
# 989 "data/maps/RustboroCity/scripts.pory"
@
# 990 "data/maps/RustboroCity/scripts.pory"
@ Visibility: MAR's object (local id 20) is tied to FLAG_HIDE_MAR_RUST_VISIBILITY
# 991 "data/maps/RustboroCity/scripts.pory"
@ in map.json ("flag": "FLAG_HIDE_MAR_RUST_VISIBILITY"). That flag is only
# 992 "data/maps/RustboroCity/scripts.pory"
@ checked when the object is (re)spawned - i.e. on map load - NOT live every
# 993 "data/maps/RustboroCity/scripts.pory"
@ frame. So clearflag/setflag alone do nothing to an object that's already
# 994 "data/maps/RustboroCity/scripts.pory"
@ on screen; showing/hiding him mid-scene needs an explicit addobject/
# 995 "data/maps/RustboroCity/scripts.pory"
@ removeobject, same as LOCALID_RUSTBORO_GRUNT/DEVON_EMPLOYEE do above in
# 996 "data/maps/RustboroCity/scripts.pory"
@ RustboroCity_EventScript_StolenGoodsScene. The flag is still kept in sync
# 997 "data/maps/RustboroCity/scripts.pory"
@ so a normal map (re)load always starts with him hidden.
# 998 "data/maps/RustboroCity/scripts.pory"
@
# 999 "data/maps/RustboroCity/scripts.pory"
@ The trigger uses VAR_UNUSED_0x40BB == 0 (always true, never touched by
# 1000 "data/maps/RustboroCity/scripts.pory"
@ anything else) instead of VAR_RUSTBORO_CITY_STATE - that var is only set
# 1001 "data/maps/RustboroCity/scripts.pory"
@ to 1 by RustboroCity_Gym_EventScript_Victory (scripts_gym.pory), i.e.
# 1002 "data/maps/RustboroCity/scripts.pory"
@ AFTER beating TERRA, which made this scene fire in the wrong order.
# 1003 "data/maps/RustboroCity/scripts.pory"
@
# 1004 "data/maps/RustboroCity/scripts.pory"
@ Guaranteed order (runs once, ever):
# 1005 "data/maps/RustboroCity/scripts.pory"
@   1) Player steps on the trigger (26,20)
# 1006 "data/maps/RustboroCity/scripts.pory"
@   2) FLAG_HIDE_MAR_RUST_VISIBILITY cleared + addobject -> MAR appears
# 1007 "data/maps/RustboroCity/scripts.pory"
@   3) MAR walks up to the player and talks (mugshot)
# 1008 "data/maps/RustboroCity/scripts.pory"
@   4) MAR gives the Charti Berry
# 1009 "data/maps/RustboroCity/scripts.pory"
@   5) Player is pushed up, towards the Gym
# 1010 "data/maps/RustboroCity/scripts.pory"
@   6) MAR walks away, removeobject + FLAG_HIDE_MAR_RUST_VISIBILITY set again
# 1011 "data/maps/RustboroCity/scripts.pory"
@      -> he's actually gone, not just invisible-flagged
# 1012 "data/maps/RustboroCity/scripts.pory"
@   7) FLAG_HIDE_MAR_RUST is set -> this scene never runs again
# 1013 "data/maps/RustboroCity/scripts.pory"
@ ============================================================
# 1014 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ChallangeTerra::
# 1015 "data/maps/RustboroCity/scripts.pory"
	lockall
# 1016 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_RUST, RustboroCity_EventScript_ChallangeTerra_Done
# 1017 "data/maps/RustboroCity/scripts.pory"

# 1018 "data/maps/RustboroCity/scripts.pory"
	@ He was hidden - now he shows up at the Gym door
# 1019 "data/maps/RustboroCity/scripts.pory"
	clearflag FLAG_HIDE_MAR_RUST_VISIBILITY
# 1020 "data/maps/RustboroCity/scripts.pory"
	addobject 20
# 1021 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, Common_Movement_WalkInPlaceFasterDown
# 1022 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1023 "data/maps/RustboroCity/scripts.pory"
	playse SE_PIN
# 1024 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, Common_Movement_ExclamationMark
# 1025 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1026 "data/maps/RustboroCity/scripts.pory"

# 1027 "data/maps/RustboroCity/scripts.pory"
	@ Walks up to the player
# 1028 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, RustboroCity_Movement_MarApproachPlayer
# 1029 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1030 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 1031 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1032 "data/maps/RustboroCity/scripts.pory"

# 1033 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_Mar_Scene
# 1034 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 1035 "data/maps/RustboroCity/scripts.pory"
	end
# 1036 "data/maps/RustboroCity/scripts.pory"

# 1037 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_ChallangeTerra_Done::
# 1038 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 1039 "data/maps/RustboroCity/scripts.pory"
	end
# 1040 "data/maps/RustboroCity/scripts.pory"

# 1041 "data/maps/RustboroCity/scripts.pory"
@ MAR's own object script. In practice this is only reachable
# 1042 "data/maps/RustboroCity/scripts.pory"
@ while FLAG_HIDE_MAR_RUST_VISIBILITY is cleared (i.e. during the cutscene above),
# 1043 "data/maps/RustboroCity/scripts.pory"
@ since outside of it he's hidden by his map.json flag (kept set
# 1044 "data/maps/RustboroCity/scripts.pory"
@ by default in RustboroCity_OnTransition).
# 1045 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar::
# 1046 "data/maps/RustboroCity/scripts.pory"
	lockall
# 1047 "data/maps/RustboroCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_RUST, RustboroCity_EventScript_Mar_Done
# 1048 "data/maps/RustboroCity/scripts.pory"
	faceplayer
# 1049 "data/maps/RustboroCity/scripts.pory"
	call RustboroCity_EventScript_Mar_Scene
# 1050 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_Done::
# 1051 "data/maps/RustboroCity/scripts.pory"
	releaseall
# 1052 "data/maps/RustboroCity/scripts.pory"
	end
# 1053 "data/maps/RustboroCity/scripts.pory"

# 1054 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_Scene::
# 1055 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 1056 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MarIntro, MSGBOX_DEFAULT
# 1057 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1058 "data/maps/RustboroCity/scripts.pory"
	giveitem ITEM_CHARTI_BERRY
# 1059 "data/maps/RustboroCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, RustboroCity_EventScript_Mar_BagFull
# 1060 "data/maps/RustboroCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 1061 "data/maps/RustboroCity/scripts.pory"
	msgbox RustboroCity_Text_MarGiveCharti, MSGBOX_DEFAULT
# 1062 "data/maps/RustboroCity/scripts.pory"
	removefieldmugshot
# 1063 "data/maps/RustboroCity/scripts.pory"
	goto RustboroCity_EventScript_Mar_Leave
# 1064 "data/maps/RustboroCity/scripts.pory"

# 1065 "data/maps/RustboroCity/scripts.pory"
@ Bag full: he still has to leave and the flag still has to be
# 1066 "data/maps/RustboroCity/scripts.pory"
@ set, otherwise the trigger would be stuck forever (softlock).
# 1067 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_BagFull::
# 1068 "data/maps/RustboroCity/scripts.pory"
	msgbox gText_BagIsFull, MSGBOX_DEFAULT
# 1069 "data/maps/RustboroCity/scripts.pory"

# 1070 "data/maps/RustboroCity/scripts.pory"
RustboroCity_EventScript_Mar_Leave::
# 1071 "data/maps/RustboroCity/scripts.pory"
	applymovement LOCALID_PLAYER, RustboroCity_Movement_PlayerContinueToGym
# 1072 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1073 "data/maps/RustboroCity/scripts.pory"
	applymovement 20, RustboroCity_Movement_MarReturnToGym
# 1074 "data/maps/RustboroCity/scripts.pory"
	waitmovement 0
# 1075 "data/maps/RustboroCity/scripts.pory"
	removeobject 20
# 1076 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_MAR_RUST_VISIBILITY
# 1077 "data/maps/RustboroCity/scripts.pory"
	setflag FLAG_HIDE_MAR_RUST
# 1078 "data/maps/RustboroCity/scripts.pory"
	return
# 1079 "data/maps/RustboroCity/scripts.pory"

# 1080 "data/maps/RustboroCity/scripts.pory"
@ ---- Movements (adjust the step count if the real distance differs) ----
# 1081 "data/maps/RustboroCity/scripts.pory"

# 1082 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_MarApproachPlayer:
# 1083 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1084 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1085 "data/maps/RustboroCity/scripts.pory"

# 1086 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_PlayerContinueToGym:
# 1087 "data/maps/RustboroCity/scripts.pory"
	walk_down
# 1088 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1089 "data/maps/RustboroCity/scripts.pory"

# 1090 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Movement_MarReturnToGym:
# 1091 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1092 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1093 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1094 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1095 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1096 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1097 "data/maps/RustboroCity/scripts.pory"
	walk_left
# 1098 "data/maps/RustboroCity/scripts.pory"
	walk_up
# 1099 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1100 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1101 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1102 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1103 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1104 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1105 "data/maps/RustboroCity/scripts.pory"
	walk_fast_up
# 1106 "data/maps/RustboroCity/scripts.pory"
	step_end
# 1107 "data/maps/RustboroCity/scripts.pory"

# 1108 "data/maps/RustboroCity/scripts.pory"
@ ---- Text ----
# 1109 "data/maps/RustboroCity/scripts.pory"

# 1110 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MarIntro:
# 1111 "data/maps/RustboroCity/scripts.pory"
	.string "Whoa there! You're on your way to\n"
# 1112 "data/maps/RustboroCity/scripts.pory"
	.string "challenge the GYM LEADER, TERRA,\l"
# 1113 "data/maps/RustboroCity/scripts.pory"
	.string "aren't you?\p"
# 1114 "data/maps/RustboroCity/scripts.pory"
	.string "I'm MAR, her dad!\n"
# 1115 "data/maps/RustboroCity/scripts.pory"
	.string "I'm also RIO's dad, the GYM LEADER\l"
# 1116 "data/maps/RustboroCity/scripts.pory"
	.string "over in Sootopolis... her sibling.\p"
# 1117 "data/maps/RustboroCity/scripts.pory"
	.string "Everybody in my family trains like\n"
# 1118 "data/maps/RustboroCity/scripts.pory"
	.string "an athlete... and trains POKéMON,\l"
# 1119 "data/maps/RustboroCity/scripts.pory"
	.string "too.\p"
# 1120 "data/maps/RustboroCity/scripts.pory"
	.string "I'm a TRAINER myself, but I've been\n"
# 1121 "data/maps/RustboroCity/scripts.pory"
	.string "busy with more important stuff\l"
# 1122 "data/maps/RustboroCity/scripts.pory"
	.string "lately...\p"
# 1123 "data/maps/RustboroCity/scripts.pory"
	.string "HAHAHA, I've said too much already!\n"
# 1124 "data/maps/RustboroCity/scripts.pory"
	.string "Anyway, TERRA's plenty tough.\p"
# 1125 "data/maps/RustboroCity/scripts.pory"
	.string "The last challenger I saw take her\n"
# 1126 "data/maps/RustboroCity/scripts.pory"
	.string "on walked out crying...$"
# 1127 "data/maps/RustboroCity/scripts.pory"

# 1128 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MarGiveCharti:
# 1129 "data/maps/RustboroCity/scripts.pory"
	.string "Here, take this.\n"
# 1130 "data/maps/RustboroCity/scripts.pory"
	.string "Maybe it'll help you take fewer\l"
# 1131 "data/maps/RustboroCity/scripts.pory"
	.string "hits from my daughter!$"
# 1132 "data/maps/RustboroCity/scripts.pory"

# 1133 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WeShortenItToDevon:
# 1134 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON CORPORATION…\n"
# 1135 "data/maps/RustboroCity/scripts.pory"
	.string "We all just shorten it to DEVON.\p"
# 1136 "data/maps/RustboroCity/scripts.pory"
	.string "That company makes all sorts of\n"
# 1137 "data/maps/RustboroCity/scripts.pory"
	.string "convenient products.$"
# 1138 "data/maps/RustboroCity/scripts.pory"

# 1139 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_SneakyLookingManWentAroundCorner:
# 1140 "data/maps/RustboroCity/scripts.pory"
	.string "Hm? A sneaky-looking man?\p"
# 1141 "data/maps/RustboroCity/scripts.pory"
	.string "Come to think of it, yes, a shady-\n"
# 1142 "data/maps/RustboroCity/scripts.pory"
	.string "looking guy went around the corner.$"
# 1143 "data/maps/RustboroCity/scripts.pory"

# 1144 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HaveYouChallengedGym:
# 1145 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO has always had frequent\n"
# 1146 "data/maps/RustboroCity/scripts.pory"
	.string "earthquakes, but they've gotten\l"
# 1147 "data/maps/RustboroCity/scripts.pory"
	.string "more intense lately.\p"
# 1148 "data/maps/RustboroCity/scripts.pory"
	.string "We're barely keeping up with the\n"
# 1149 "data/maps/RustboroCity/scripts.pory"
	.string "damage as it is!$"
# 1150 "data/maps/RustboroCity/scripts.pory"

# 1151 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HeyThatsRustborosGymBadge:
# 1152 "data/maps/RustboroCity/scripts.pory"
.string "Hah! You want the RUSTBORO GYM BADGE?\p"
# 1153 "data/maps/RustboroCity/scripts.pory"
.string "You'll have to face TERRA!\p"
# 1154 "data/maps/RustboroCity/scripts.pory"
.string "She's tough! And a formidable\n"
# 1155 "data/maps/RustboroCity/scripts.pory"
.string "climber! Look at you, with those\l"
# 1156 "data/maps/RustboroCity/scripts.pory"
.string "weird clothes, all scrawny, and those\l"
# 1157 "data/maps/RustboroCity/scripts.pory"
.string "dark circles under your eyes...\p"
# 1158 "data/maps/RustboroCity/scripts.pory"
.string "I'm not sure you stand a chance...\p"
# 1159 "data/maps/RustboroCity/scripts.pory"
.string "I got mine after like 20 attempts,\n"
# 1160 "data/maps/RustboroCity/scripts.pory"
.string "and I think TERRA went easy on me\l"
# 1161 "data/maps/RustboroCity/scripts.pory"
.string "'cause we're climbing buddies!\p"
# 1162 "data/maps/RustboroCity/scripts.pory"
.string "Good luck! HAHAHAH!$"
# 1163 "data/maps/RustboroCity/scripts.pory"

# 1164 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YoureNewAroundHere:
# 1165 "data/maps/RustboroCity/scripts.pory"
.string "Oh? Who might you be?\n"
# 1166 "data/maps/RustboroCity/scripts.pory"
.string "You're a new face around these parts.\p"
# 1167 "data/maps/RustboroCity/scripts.pory"
.string "With those weird clothes of yours,\n"
# 1168 "data/maps/RustboroCity/scripts.pory"
.string "they won't accept you at the school!\l"
# 1169 "data/maps/RustboroCity/scripts.pory"
.string "Where's your uniform?$"
# 1170 "data/maps/RustboroCity/scripts.pory"

# 1171 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_GymLeaderIsntEasyWithFire:
# 1172 "data/maps/RustboroCity/scripts.pory"
    .string "You know TERRA, the GYM LEADER?\n"
# 1173 "data/maps/RustboroCity/scripts.pory"
    .string "Amazing rock climber! People say she\l"
# 1174 "data/maps/RustboroCity/scripts.pory"
    .string "climbed Mt. Chimney with no equipment.\p"
# 1175 "data/maps/RustboroCity/scripts.pory"
    .string "I went to meet her just to ask for an\n"
# 1176 "data/maps/RustboroCity/scripts.pory"
    .string "autograph, but she challenged me to a\l"
# 1177 "data/maps/RustboroCity/scripts.pory"
    .string "battle instead...\p"
# 1178 "data/maps/RustboroCity/scripts.pory"
    .string "I got beaten really badly...$"
# 1179 "data/maps/RustboroCity/scripts.pory"

# 1180 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MrBrineyWalksInTheTunnel:
# 1181 "data/maps/RustboroCity/scripts.pory"
	.string "The old sailor MR. BRINEY lives in\n"
# 1182 "data/maps/RustboroCity/scripts.pory"
	.string "a cottage by the sea.\p"
# 1183 "data/maps/RustboroCity/scripts.pory"
	.string "He goes for walks in the tunnel every\n"
# 1184 "data/maps/RustboroCity/scripts.pory"
	.string "so often.$"
# 1185 "data/maps/RustboroCity/scripts.pory"

# 1186 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MrBrineyLovesPeeko:
# 1187 "data/maps/RustboroCity/scripts.pory"
	.string "The old sailor MR. BRINEY lives in\n"
# 1188 "data/maps/RustboroCity/scripts.pory"
	.string "a cottage by the sea.\p"
# 1189 "data/maps/RustboroCity/scripts.pory"
	.string "He said he was going shopping in\n"
# 1190 "data/maps/RustboroCity/scripts.pory"
	.string "SLATEPORT for his pet, NAMI.\p"
# 1191 "data/maps/RustboroCity/scripts.pory"
	.string "That old sea dog, he must really love\n"
# 1192 "data/maps/RustboroCity/scripts.pory"
	.string "that NAMI.$"
# 1193 "data/maps/RustboroCity/scripts.pory"

# 1194 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WowYouHavePokemon:
# 1195 "data/maps/RustboroCity/scripts.pory"
	.string "Wow, you have POKéMON with you, too.\p"
# 1196 "data/maps/RustboroCity/scripts.pory"
	.string "When I get bigger, I'm going to go\n"
# 1197 "data/maps/RustboroCity/scripts.pory"
	.string "places with POKéMON, too.$"
# 1198 "data/maps/RustboroCity/scripts.pory"

# 1199 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CatchRarePokemonIfIGoToSchool:
# 1200 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON TRAINER'S SCHOOL!\p"
# 1201 "data/maps/RustboroCity/scripts.pory"
	.string "If I go to this school, will I be able\n"
# 1202 "data/maps/RustboroCity/scripts.pory"
	.string "to catch rare POKéMON easily?$"
# 1203 "data/maps/RustboroCity/scripts.pory"

# 1204 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PokemonCanChangeLookFromExp:
# 1205 "data/maps/RustboroCity/scripts.pory"
    .string "RUSTBORO CITY always feels so alive.\n"
# 1206 "data/maps/RustboroCity/scripts.pory"
    .string "The streets are full of students,\l"
# 1207 "data/maps/RustboroCity/scripts.pory"
    .string "workers, and travelers passing through.\p"
# 1208 "data/maps/RustboroCity/scripts.pory"
    .string "Every corner has someone tinkering with\n"
# 1209 "data/maps/RustboroCity/scripts.pory"
    .string "a machine or studying something new.\l"
# 1210 "data/maps/RustboroCity/scripts.pory"
    .string "I wonder what discoveries will come out\l"
# 1211 "data/maps/RustboroCity/scripts.pory"
    .string "of this place next.$"
# 1212 "data/maps/RustboroCity/scripts.pory"

# 1213 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PokemonChangeShape:
# 1214 "data/maps/RustboroCity/scripts.pory"
    .string "I've heard there's a cave\n"
# 1215 "data/maps/RustboroCity/scripts.pory"
    .string "north of here, past ROUTE 116.\p"
# 1216 "data/maps/RustboroCity/scripts.pory"
    .string "Explorers say echoes come from the\n"
# 1217 "data/maps/RustboroCity/scripts.pory"
    .string "deep tunnels… like something hidden\l"
# 1218 "data/maps/RustboroCity/scripts.pory"
    .string "is shifting around in the dark.$"
# 1219 "data/maps/RustboroCity/scripts.pory"

# 1220 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TradePokemonGrowFast:
# 1221 "data/maps/RustboroCity/scripts.pory"
    .string "Hmph… Those climbers around Rustboro\n"
# 1222 "data/maps/RustboroCity/scripts.pory"
    .string "think they're so tough, climbing all\l"
# 1223 "data/maps/RustboroCity/scripts.pory"
    .string "day and bragging about their ROCK\l"
# 1224 "data/maps/RustboroCity/scripts.pory"
	.string "Pokémon.\p"
# 1225 "data/maps/RustboroCity/scripts.pory"
    .string "I can't stand that rowdy bunch,\n"
# 1226 "data/maps/RustboroCity/scripts.pory"
	.string "so I train WATER-types just to wash\l"
# 1227 "data/maps/RustboroCity/scripts.pory"
	.string "them off their precious mountains.$"
# 1228 "data/maps/RustboroCity/scripts.pory"

# 1229 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_OutOfTheWay:
# 1230 "data/maps/RustboroCity/scripts.pory"
	.string "Get out!\n"
# 1231 "data/maps/RustboroCity/scripts.pory"
	.string "Out of the way!$"
# 1232 "data/maps/RustboroCity/scripts.pory"

# 1233 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_WaitDontTakeMyGoods:
# 1234 "data/maps/RustboroCity/scripts.pory"
	.string "Wait! Pleeeaaase!\p"
# 1235 "data/maps/RustboroCity/scripts.pory"
	.string "Don't take my GOODS!$"
# 1236 "data/maps/RustboroCity/scripts.pory"

# 1237 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_HelpMeIWasRobbed:
# 1238 "data/maps/RustboroCity/scripts.pory"
	.string "Oh, it's you!\p"
# 1239 "data/maps/RustboroCity/scripts.pory"
	.string "You're that fantastic TRAINER who\n"
# 1240 "data/maps/RustboroCity/scripts.pory"
	.string "helped me in PETALBURG WOODS!\p"
# 1241 "data/maps/RustboroCity/scripts.pory"
	.string "Help me! I was robbed by TEAM AQUA!\n"
# 1242 "data/maps/RustboroCity/scripts.pory"
	.string "I have to get the DEVON GOODS back!\p"
# 1243 "data/maps/RustboroCity/scripts.pory"
	.string "If I don't…\n"
# 1244 "data/maps/RustboroCity/scripts.pory"
	.string "I'm going to be in serious trouble.$"
# 1245 "data/maps/RustboroCity/scripts.pory"

# 1246 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_ShadyCharacterTookOffTowardsTunnel:
# 1247 "data/maps/RustboroCity/scripts.pory"
	.string "That shady character, I think he took\n"
# 1248 "data/maps/RustboroCity/scripts.pory"
	.string "off towards the tunnel over there.$"
# 1249 "data/maps/RustboroCity/scripts.pory"

# 1250 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YouGotItThankYou:
# 1251 "data/maps/RustboroCity/scripts.pory"
	.string "Oh! How did it go?\n"
# 1252 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON GOODS?\p"
# 1253 "data/maps/RustboroCity/scripts.pory"
	.string "You did!\n"
# 1254 "data/maps/RustboroCity/scripts.pory"
	.string "You got them back!\p"
# 1255 "data/maps/RustboroCity/scripts.pory"
	.string "You really are a great TRAINER!\p"
# 1256 "data/maps/RustboroCity/scripts.pory"
	.string "I know! As my thanks, I'll give you\n"
# 1257 "data/maps/RustboroCity/scripts.pory"
	.string "this ABILITY CAPSULE! It's DEVON's\l"
# 1258 "data/maps/RustboroCity/scripts.pory"
	.string "latest breakthrough.\p"
# 1259 "data/maps/RustboroCity/scripts.pory"
	.string "With it, you can switch a\n"
# 1260 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON's abilities!$"
# 1261 "data/maps/RustboroCity/scripts.pory"

# 1262 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YoureLoadedWithItems:
# 1263 "data/maps/RustboroCity/scripts.pory"
	.string "You're loaded with items.\n"
# 1264 "data/maps/RustboroCity/scripts.pory"
	.string "I can't give you this...$"
# 1265 "data/maps/RustboroCity/scripts.pory"

# 1266 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PleaseComeWithMe:
# 1267 "data/maps/RustboroCity/scripts.pory"
	.string "Excuse me, please!\n"
# 1268 "data/maps/RustboroCity/scripts.pory"
	.string "Please come with me!$"
# 1269 "data/maps/RustboroCity/scripts.pory"

# 1270 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayHiLetsRegister:
# 1271 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, hi, {PLAYER}{KUN}!\p"
# 1272 "data/maps/RustboroCity/scripts.pory"
	.string "Good thing I found you!\n"
# 1273 "data/maps/RustboroCity/scripts.pory"
	.string "CALENDULA gave me this and\l"
# 1274 "data/maps/RustboroCity/scripts.pory"
	.string "asked me to deliver it to you!\p"
# 1275 "data/maps/RustboroCity/scripts.pory"
	.string "It's an EXP. SHARE!\p"
# 1276 "data/maps/RustboroCity/scripts.pory"
	.string "It makes all POKéMON in your party\n"
# 1277 "data/maps/RustboroCity/scripts.pory"
	.string "gain experience from battles!\p"
# 1278 "data/maps/RustboroCity/scripts.pory"
	.string "Anyway, another thing…\p"
# 1279 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1280 "data/maps/RustboroCity/scripts.pory"

# 1281 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_RegisteredMay:
# 1282 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1283 "data/maps/RustboroCity/scripts.pory"
	
# 1284 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayPassedBrineyWantToBattle:
# 1285 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, by the way, I passed\n"
# 1286 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY in PETALBURG WOODS.\p"
# 1287 "data/maps/RustboroCity/scripts.pory"
	.string "I guess he's on his way home to his\n"
# 1288 "data/maps/RustboroCity/scripts.pory"
	.string "cottage by the sea.\p"
# 1289 "data/maps/RustboroCity/scripts.pory"
	.string "How's your POKéDEX coming along,\n"
# 1290 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}? Mine's looking pretty decent!\p"
# 1291 "data/maps/RustboroCity/scripts.pory"
	.string "So…\n"
# 1292 "data/maps/RustboroCity/scripts.pory"
	.string "How about a little battle?$"
# 1293 "data/maps/RustboroCity/scripts.pory"

# 1294 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayOhHaventRaisedPokemonEnough:
# 1295 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, what's the matter?\p"
# 1296 "data/maps/RustboroCity/scripts.pory"
	.string "Haven't you caught or raised your\n"
# 1297 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON very much?\p"
# 1298 "data/maps/RustboroCity/scripts.pory"
	.string "That's not very good for a TRAINER!$"
# 1299 "data/maps/RustboroCity/scripts.pory"

# 1300 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayWantToBattle:
# 1301 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: So, what do you think?\n"
# 1302 "data/maps/RustboroCity/scripts.pory"
	.string "How about a little battle here?$"
# 1303 "data/maps/RustboroCity/scripts.pory"

# 1304 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayImNotGoingToLose:
# 1305 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: You just became a TRAINER,\n"
# 1306 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}. I'm not going to lose!$"
# 1307 "data/maps/RustboroCity/scripts.pory"

# 1308 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayDefeat:
# 1309 "data/maps/RustboroCity/scripts.pory"
	.string "Yikes!\n"
# 1310 "data/maps/RustboroCity/scripts.pory"
	.string "You're better than I expected!$"
# 1311 "data/maps/RustboroCity/scripts.pory"

# 1312 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_MayMrBrineyHint:
# 1313 "data/maps/RustboroCity/scripts.pory"
	.string "ZINNIA: Oh, by the way, MR. BRINEY, who\n"
# 1314 "data/maps/RustboroCity/scripts.pory"
	.string "I just passed…\p"
# 1315 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}{KUN}, you just moved here so you\n"
# 1316 "data/maps/RustboroCity/scripts.pory"
	.string "might not know this, but MR. BRINEY\l"
# 1317 "data/maps/RustboroCity/scripts.pory"
	.string "was once a revered seafarer.$"
# 1318 "data/maps/RustboroCity/scripts.pory"

# 1319 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanHiLetsRegister:
# 1320 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: Oh, hey, {PLAYER}!\p"
# 1321 "data/maps/RustboroCity/scripts.pory"
	.string "Lucky I ran into you!\n"
# 1322 "data/maps/RustboroCity/scripts.pory"
	.string "CALENDULA gave me something and\l"
# 1323 "data/maps/RustboroCity/scripts.pory"
	.string "told me to give it to you!\p"
# 1324 "data/maps/RustboroCity/scripts.pory"
	.string "It's an EXP. SHARE!\p"
# 1325 "data/maps/RustboroCity/scripts.pory"
	.string "When you use it, all POKéMON in\n"
# 1326 "data/maps/RustboroCity/scripts.pory"
	.string "your party will gain experience!\p"
# 1327 "data/maps/RustboroCity/scripts.pory"
	.string "Oh, and one more thing…\p"
# 1328 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1329 "data/maps/RustboroCity/scripts.pory"

# 1330 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_RegisteredBrendan:
# 1331 "data/maps/RustboroCity/scripts.pory"
	.string "… … … … … …$"
# 1332 "data/maps/RustboroCity/scripts.pory"

# 1333 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanPassedBrineyWantToBattle:
# 1334 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: By the way, {PLAYER}, I walked\n"
# 1335 "data/maps/RustboroCity/scripts.pory"
	.string "by MR. BRINEY in PETALBURG WOODS.\p"
# 1336 "data/maps/RustboroCity/scripts.pory"
	.string "I bet he was on his way home to his\n"
# 1337 "data/maps/RustboroCity/scripts.pory"
	.string "cottage by the sea.\p"
# 1338 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, how's your POKéDEX?\n"
# 1339 "data/maps/RustboroCity/scripts.pory"
	.string "Have you filled in any pages yet?\p"
# 1340 "data/maps/RustboroCity/scripts.pory"
	.string "Mine rules.\p"
# 1341 "data/maps/RustboroCity/scripts.pory"
	.string "Want to have a battle to test how\n"
# 1342 "data/maps/RustboroCity/scripts.pory"
	.string "far you've progressed?$"
# 1343 "data/maps/RustboroCity/scripts.pory"

# 1344 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanNoConfidenceInPokemon:
# 1345 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: What's the matter? Don't have\n"
# 1346 "data/maps/RustboroCity/scripts.pory"
	.string "any confidence in your POKéMON?$"
# 1347 "data/maps/RustboroCity/scripts.pory"

# 1348 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanWantToBattle:
# 1349 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: What's up?\n"
# 1350 "data/maps/RustboroCity/scripts.pory"
	.string "Want to have a battle with me?$"
# 1351 "data/maps/RustboroCity/scripts.pory"

# 1352 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanIWontGoEasy:
# 1353 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: I know you just became\n"
# 1354 "data/maps/RustboroCity/scripts.pory"
	.string "a TRAINER, but I won't go easy!$"
# 1355 "data/maps/RustboroCity/scripts.pory"

# 1356 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanDefeat:
# 1357 "data/maps/RustboroCity/scripts.pory"
	.string "Hmm…\n"
# 1358 "data/maps/RustboroCity/scripts.pory"
	.string "You're pretty good.$"
# 1359 "data/maps/RustboroCity/scripts.pory"

# 1360 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_BrendanMrBrineyHint:
# 1361 "data/maps/RustboroCity/scripts.pory"
	.string "ZENNO: By the way, you know\n"
# 1362 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY? The guy I just passed?\p"
# 1363 "data/maps/RustboroCity/scripts.pory"
	.string "I bet you didn't know this, since you\n"
# 1364 "data/maps/RustboroCity/scripts.pory"
	.string "just moved here, {PLAYER}, but\l"
# 1365 "data/maps/RustboroCity/scripts.pory"
	.string "MR. BRINEY was once a great sailor.$"
# 1366 "data/maps/RustboroCity/scripts.pory"

# 1367 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TunnelNearingCompletion:
# 1368 "data/maps/RustboroCity/scripts.pory"
	.string "“Timesaving tunnel nearing\n"
# 1369 "data/maps/RustboroCity/scripts.pory"
	.string "completion!”\p"
# 1370 "data/maps/RustboroCity/scripts.pory"
	.string "…Is what it says on the sign, but\n"
# 1371 "data/maps/RustboroCity/scripts.pory"
	.string "there's also a big “X” splashed\l"
# 1372 "data/maps/RustboroCity/scripts.pory"
	.string "across it in red paint…$"
# 1373 "data/maps/RustboroCity/scripts.pory"

# 1374 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevonCorpSign:
# 1375 "data/maps/RustboroCity/scripts.pory"
	.string "DEVON CORPORATION\p"
# 1376 "data/maps/RustboroCity/scripts.pory"
	.string "“For all your living needs, we make\n"
# 1377 "data/maps/RustboroCity/scripts.pory"
	.string "it all.”$"
# 1378 "data/maps/RustboroCity/scripts.pory"

# 1379 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_GymSign:
# 1380 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO CITY POKéMON GYM\n"
# 1381 "data/maps/RustboroCity/scripts.pory"
	.string "LEADER: ROXANNE\p"
# 1382 "data/maps/RustboroCity/scripts.pory"
	.string "“The ROCK-loving honors student!”$"
# 1383 "data/maps/RustboroCity/scripts.pory"

# 1384 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevonCorpBranchOfficeSign:
# 1385 "data/maps/RustboroCity/scripts.pory"
	.string "DEVON CORP. BRANCH OFFICE\p"
# 1386 "data/maps/RustboroCity/scripts.pory"
	.string "“Access limited to DEVON employees\n"
# 1387 "data/maps/RustboroCity/scripts.pory"
	.string "and authorized personnel.”$"
# 1388 "data/maps/RustboroCity/scripts.pory"

# 1389 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CitySign:
# 1390 "data/maps/RustboroCity/scripts.pory"
	.string "RUSTBORO CITY\p"
# 1391 "data/maps/RustboroCity/scripts.pory"
	.string "“The city probing the integration of\n"
# 1392 "data/maps/RustboroCity/scripts.pory"
	.string "nature and science.”$"
# 1393 "data/maps/RustboroCity/scripts.pory"

# 1394 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_TrainersSchoolSign:
# 1395 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON TRAINER'S SCHOOL\p"
# 1396 "data/maps/RustboroCity/scripts.pory"
	.string "“We'll teach you anything about\n"
# 1397 "data/maps/RustboroCity/scripts.pory"
	.string "POKéMON!”$"
# 1398 "data/maps/RustboroCity/scripts.pory"

# 1399 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_CuttersHouse:
# 1400 "data/maps/RustboroCity/scripts.pory"
	.string "CUTTER'S HOUSE$"
# 1401 "data/maps/RustboroCity/scripts.pory"

# 1402 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_DevelopedNewPokenavFeature:
# 1403 "data/maps/RustboroCity/scripts.pory"
	.string "I've been developing an added feature\n"
# 1404 "data/maps/RustboroCity/scripts.pory"
	.string "for the POKéNAV…\p"
# 1405 "data/maps/RustboroCity/scripts.pory"
	.string "And it turned out great!\p"
# 1406 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, may I see that POKéNAV?\n"
# 1407 "data/maps/RustboroCity/scripts.pory"
	.string "The one our PRESIDENT gave you?$"
# 1408 "data/maps/RustboroCity/scripts.pory"

# 1409 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_AddedMatchCallPleaseCallMrStone:
# 1410 "data/maps/RustboroCity/scripts.pory"
	.string "There you go, {PLAYER}!\p"
# 1411 "data/maps/RustboroCity/scripts.pory"
	.string "I added a new feature named\n"
# 1412 "data/maps/RustboroCity/scripts.pory"
	.string "MATCH CALL to your POKéNAV.\p"
# 1413 "data/maps/RustboroCity/scripts.pory"
	.string "Using the MATCH CALL feature,\n"
# 1414 "data/maps/RustboroCity/scripts.pory"
	.string "you can chat with people who have\l"
# 1415 "data/maps/RustboroCity/scripts.pory"
	.string "been registered in your POKéNAV.\p"
# 1416 "data/maps/RustboroCity/scripts.pory"
	.string "{PLAYER}, our PRESIDENT STONE should\n"
# 1417 "data/maps/RustboroCity/scripts.pory"
	.string "be registered in your POKéNAV.\p"
# 1418 "data/maps/RustboroCity/scripts.pory"
	.string "Test it out.\n"
# 1419 "data/maps/RustboroCity/scripts.pory"
	.string "Please give our PRESIDENT a call.$"
# 1420 "data/maps/RustboroCity/scripts.pory"

# 1421 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_PleaseSelectPokenav:
# 1422 "data/maps/RustboroCity/scripts.pory"
	.string "Please select the POKéNAV.$"
# 1423 "data/maps/RustboroCity/scripts.pory"

# 1424 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_IdBetterGetBackToWork:
# 1425 "data/maps/RustboroCity/scripts.pory"
	.string "Okay, I'd better get back to work.\n"
# 1426 "data/maps/RustboroCity/scripts.pory"
	.string "Please take care, {PLAYER}!$"
# 1427 "data/maps/RustboroCity/scripts.pory"

# 1428 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_YouCanHave2On2Battle:
# 1429 "data/maps/RustboroCity/scripts.pory"
	.string "Did you know this?\p"
# 1430 "data/maps/RustboroCity/scripts.pory"
	.string "You can have a 2-on-2 battle even\n"
# 1431 "data/maps/RustboroCity/scripts.pory"
	.string "if you're not with another TRAINER.\p"
# 1432 "data/maps/RustboroCity/scripts.pory"
	.string "If you catch the eyes of two TRAINERS\n"
# 1433 "data/maps/RustboroCity/scripts.pory"
	.string "when you have two or more POKéMON,\l"
# 1434 "data/maps/RustboroCity/scripts.pory"
	.string "they'll both challenge you.\p"
# 1435 "data/maps/RustboroCity/scripts.pory"
	.string "Don't you think it'd be cool if you\n"
# 1436 "data/maps/RustboroCity/scripts.pory"
	.string "could beat two TRAINERS by yourself?$"
# 1437 "data/maps/RustboroCity/scripts.pory"

# 1438 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_NeedToTalkToRival:
# 1439 "data/maps/RustboroCity/scripts.pory"
    .string "Hey! Wait up!\p"
# 1440 "data/maps/RustboroCity/scripts.pory"
    .string "Don't you want to talk to\n"
# 1441 "data/maps/RustboroCity/scripts.pory"
    .string "your rival first?$"
# 1442 "data/maps/RustboroCity/scripts.pory"

# 1443 "data/maps/RustboroCity/scripts.pory"
RustboroCity_Text_Devonearthquake:
# 1444 "data/maps/RustboroCity/scripts.pory"
	.string "The earthquakes have been going\n"
# 1445 "data/maps/RustboroCity/scripts.pory"
	.string "on for years, but with each one,\l"
# 1446 "data/maps/RustboroCity/scripts.pory"
	.string "the land cracks open more and more.\p"
# 1447 "data/maps/RustboroCity/scripts.pory"
	.string "The DEVON building may even end\n"
# 1448 "data/maps/RustboroCity/scripts.pory"
	.string "up falling into the sea soon!$"
