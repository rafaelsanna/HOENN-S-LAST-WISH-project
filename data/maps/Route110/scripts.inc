# 1 "data/maps/Route110/scripts.pory"

# 2 "data/maps/Route110/scripts.pory"
Route110_MapScripts::
# 3 "data/maps/Route110/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, Route110_OnResume
# 4 "data/maps/Route110/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route110_OnTransition
# 5 "data/maps/Route110/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route110_OnFrame
# 6 "data/maps/Route110/scripts.pory"
	.byte 0
# 7 "data/maps/Route110/scripts.pory"

# 8 "data/maps/Route110/scripts.pory"
Route110_OnResume:
# 9 "data/maps/Route110/scripts.pory"
	special UpdateCyclingRoadState
# 10 "data/maps/Route110/scripts.pory"
	end
# 11 "data/maps/Route110/scripts.pory"

# 12 "data/maps/Route110/scripts.pory"
Route110_OnTransition:
# 13 "data/maps/Route110/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 14 "data/maps/Route110/scripts.pory"
	call Common_EventScript_SetupRivalOnBikeGfxId
# 15 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_CYCLING_CHALLENGE_STATE, 1, Route110_EventScript_SaveCyclingMusic
# 16 "data/maps/Route110/scripts.pory"
	end
# 17 "data/maps/Route110/scripts.pory"

# 18 "data/maps/Route110/scripts.pory"
Route110_EventScript_SaveCyclingMusic::
# 19 "data/maps/Route110/scripts.pory"
	savebgm MUS_CYCLING
# 20 "data/maps/Route110/scripts.pory"
	return
# 21 "data/maps/Route110/scripts.pory"

# 22 "data/maps/Route110/scripts.pory"
Route110_OnFrame:
# 23 "data/maps/Route110/scripts.pory"
	map_script_2 VAR_CYCLING_CHALLENGE_STATE, 1, Route110_EventScript_BeginCylcingRoadChallenge
# 24 "data/maps/Route110/scripts.pory"
	.2byte 0
# 25 "data/maps/Route110/scripts.pory"

# 26 "data/maps/Route110/scripts.pory"
Route110_EventScript_BeginCylcingRoadChallenge::
# 27 "data/maps/Route110/scripts.pory"
	special Special_BeginCyclingRoadChallenge
# 28 "data/maps/Route110/scripts.pory"
	setvar VAR_CYCLING_CHALLENGE_STATE, 2
# 29 "data/maps/Route110/scripts.pory"
	return
# 30 "data/maps/Route110/scripts.pory"

# 31 "data/maps/Route110/scripts.pory"
Route110_EventScript_AquaGrunt1::
# 32 "data/maps/Route110/scripts.pory"
	lock
# 33 "data/maps/Route110/scripts.pory"
	faceplayer
# 34 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_WeCantTalkAboutAquaActivities, MSGBOX_DEFAULT
# 35 "data/maps/Route110/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 36 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 37 "data/maps/Route110/scripts.pory"
	release
# 38 "data/maps/Route110/scripts.pory"
	end
# 39 "data/maps/Route110/scripts.pory"

# 40 "data/maps/Route110/scripts.pory"
Route110_EventScript_AquaGrunt2::
# 41 "data/maps/Route110/scripts.pory"
	lock
# 42 "data/maps/Route110/scripts.pory"
	faceplayer
# 43 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_KickUpARuckus, MSGBOX_DEFAULT
# 44 "data/maps/Route110/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 45 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 46 "data/maps/Route110/scripts.pory"
	release
# 47 "data/maps/Route110/scripts.pory"
	end
# 48 "data/maps/Route110/scripts.pory"

# 49 "data/maps/Route110/scripts.pory"
Route110_EventScript_AquaGrunt3::
# 50 "data/maps/Route110/scripts.pory"
	lock
# 51 "data/maps/Route110/scripts.pory"
	faceplayer
# 52 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_MyFirstJobInAqua, MSGBOX_DEFAULT
# 53 "data/maps/Route110/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 54 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 55 "data/maps/Route110/scripts.pory"
	release
# 56 "data/maps/Route110/scripts.pory"
	end
# 57 "data/maps/Route110/scripts.pory"

# 58 "data/maps/Route110/scripts.pory"
Route110_EventScript_AquaGrunt4::
# 59 "data/maps/Route110/scripts.pory"
	lock
# 60 "data/maps/Route110/scripts.pory"
	faceplayer
# 61 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AquaActionsBringSmiles, MSGBOX_DEFAULT
# 62 "data/maps/Route110/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 63 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 64 "data/maps/Route110/scripts.pory"
	release
# 65 "data/maps/Route110/scripts.pory"
	end
# 66 "data/maps/Route110/scripts.pory"

# 67 "data/maps/Route110/scripts.pory"
Route110_EventScript_Boy1::
# 68 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_RideBikeAtFullSpeed, MSGBOX_NPC
# 69 "data/maps/Route110/scripts.pory"
	end
# 70 "data/maps/Route110/scripts.pory"

# 71 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingGirl1::
# 72 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_HairStreamsBehindMe, MSGBOX_NPC
# 73 "data/maps/Route110/scripts.pory"
	end
# 74 "data/maps/Route110/scripts.pory"

# 75 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingGuy1::
# 76 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_YouGotBikeFromRydel, MSGBOX_NPC
# 77 "data/maps/Route110/scripts.pory"
	end
# 78 "data/maps/Route110/scripts.pory"

# 79 "data/maps/Route110/scripts.pory"
Route110_EventScript_OldMan::
# 80 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_TwoRoads, MSGBOX_NPC
# 81 "data/maps/Route110/scripts.pory"
	end
# 82 "data/maps/Route110/scripts.pory"

# 83 "data/maps/Route110/scripts.pory"
Route110_EventScript_OldWoman::
# 84 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_WalkOnTheLowRoad, MSGBOX_NPC
# 85 "data/maps/Route110/scripts.pory"
	end
# 86 "data/maps/Route110/scripts.pory"

# 87 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingGuy2::
# 88 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BikeTechniques, MSGBOX_NPC
# 89 "data/maps/Route110/scripts.pory"
	end
# 90 "data/maps/Route110/scripts.pory"

# 91 "data/maps/Route110/scripts.pory"
Route110_EventScript_Boy2::
# 92 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_WhichShouldIChoose, MSGBOX_NPC
# 93 "data/maps/Route110/scripts.pory"
	end
# 94 "data/maps/Route110/scripts.pory"

# 95 "data/maps/Route110/scripts.pory"
Route110_EventScript_SlateportCitySign::
# 96 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_SlateportCitySign, MSGBOX_SIGN
# 97 "data/maps/Route110/scripts.pory"
	end
# 98 "data/maps/Route110/scripts.pory"

# 99 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingRoadSign::
# 100 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_CyclingRoadSign, MSGBOX_SIGN
# 101 "data/maps/Route110/scripts.pory"
	end
# 102 "data/maps/Route110/scripts.pory"

# 103 "data/maps/Route110/scripts.pory"
Route110_EventScript_VandalizedSign::
# 104 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AquaWasHere, MSGBOX_SIGN
# 105 "data/maps/Route110/scripts.pory"
	end
# 106 "data/maps/Route110/scripts.pory"

# 107 "data/maps/Route110/scripts.pory"
Route110_EventScript_Route103Sign::
# 108 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_Route103Sign, MSGBOX_SIGN
# 109 "data/maps/Route110/scripts.pory"
	end
# 110 "data/maps/Route110/scripts.pory"

# 111 "data/maps/Route110/scripts.pory"
Route110_EventScript_SeasideParkingSign::
# 112 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_SeasideParkingSign, MSGBOX_SIGN
# 113 "data/maps/Route110/scripts.pory"
	end
# 114 "data/maps/Route110/scripts.pory"

# 115 "data/maps/Route110/scripts.pory"
Route110_EventScript_MauvilleCitySign::
# 116 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_MauvilleCitySign, MSGBOX_SIGN
# 117 "data/maps/Route110/scripts.pory"
	end
# 118 "data/maps/Route110/scripts.pory"

# 119 "data/maps/Route110/scripts.pory"
Route110_EventScript_TrainerTipsPrlzSleep::
# 120 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_TrainerTipsPrlzSleep, MSGBOX_SIGN
# 121 "data/maps/Route110/scripts.pory"
	end
# 122 "data/maps/Route110/scripts.pory"

# 123 "data/maps/Route110/scripts.pory"
Route110_EventScript_TrainerTipsRegisterItems::
# 124 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_TrainerTipsRegisterItems, MSGBOX_SIGN
# 125 "data/maps/Route110/scripts.pory"
	end
# 126 "data/maps/Route110/scripts.pory"

# 127 "data/maps/Route110/scripts.pory"
Route110_EventScript_TrickHouseSign::
# 128 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_TrickHouseSign, MSGBOX_SIGN
# 129 "data/maps/Route110/scripts.pory"
	end
# 130 "data/maps/Route110/scripts.pory"

# 131 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingRoadResultsSign::
# 132 "data/maps/Route110/scripts.pory"
	lockall
# 133 "data/maps/Route110/scripts.pory"
	specialvar VAR_RESULT, GetRecordedCyclingRoadResults
# 134 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route110_EventScript_NoRecordSet
# 135 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BestRecord, MSGBOX_DEFAULT
# 136 "data/maps/Route110/scripts.pory"
	releaseall
# 137 "data/maps/Route110/scripts.pory"
	end
# 138 "data/maps/Route110/scripts.pory"

# 139 "data/maps/Route110/scripts.pory"
Route110_EventScript_NoRecordSet::
# 140 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ThereIsNoRecord, MSGBOX_DEFAULT
# 141 "data/maps/Route110/scripts.pory"
	releaseall
# 142 "data/maps/Route110/scripts.pory"
	end
# 143 "data/maps/Route110/scripts.pory"

# 144 "data/maps/Route110/scripts.pory"
Route110_EventScript_ChallengeGuy::
# 145 "data/maps/Route110/scripts.pory"
	lock
# 146 "data/maps/Route110/scripts.pory"
	faceplayer
# 147 "data/maps/Route110/scripts.pory"
	specialvar VAR_RESULT, GetPlayerAvatarBike
# 148 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, 1, Route110_EventScript_PlayerRidingAcroBike
# 149 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_CYCLING_CHALLENGE_STATE, 0, Route110_EventScript_PlayerNotRidingBike
# 150 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AlwaysAimHigher, MSGBOX_DEFAULT
# 151 "data/maps/Route110/scripts.pory"
	release
# 152 "data/maps/Route110/scripts.pory"
	end
# 153 "data/maps/Route110/scripts.pory"

# 154 "data/maps/Route110/scripts.pory"
Route110_EventScript_PlayerNotRidingBike::
# 155 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_RatedForNumberOfCollisions, MSGBOX_DEFAULT
# 156 "data/maps/Route110/scripts.pory"
	release
# 157 "data/maps/Route110/scripts.pory"
	end
# 158 "data/maps/Route110/scripts.pory"

# 159 "data/maps/Route110/scripts.pory"
Route110_EventScript_PlayerRidingAcroBike::
# 160 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AcroBikesDoNotQualify, MSGBOX_DEFAULT
# 161 "data/maps/Route110/scripts.pory"
	release
# 162 "data/maps/Route110/scripts.pory"
	end
# 163 "data/maps/Route110/scripts.pory"

# 164 "data/maps/Route110/scripts.pory"
Route110_EventScript_Edward::
# 165 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_EDWARD, Route110_Text_EdwardIntro, Route110_Text_EdwardDefeated
# 166 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_EdwardPostBattle, MSGBOX_AUTOCLOSE
# 167 "data/maps/Route110/scripts.pory"
	end
# 168 "data/maps/Route110/scripts.pory"

# 169 "data/maps/Route110/scripts.pory"
Route110_EventScript_Jaclyn::
# 170 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_JACLYN, Route110_Text_JaclynIntro, Route110_Text_JaclynDefeated
# 171 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_JaclynPostBattle, MSGBOX_AUTOCLOSE
# 172 "data/maps/Route110/scripts.pory"
	end
# 173 "data/maps/Route110/scripts.pory"

# 174 "data/maps/Route110/scripts.pory"
Route110_EventScript_Edwin::
# 175 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_EDWIN_1, Route110_Text_EdwinIntro, Route110_Text_EdwinDefeated, Route110_EventScript_EdwinRegisterMatchCallAfterBattle
# 176 "data/maps/Route110/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 177 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route110_EventScript_EdwinRematch
# 178 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_EdwinPostBattle, MSGBOX_DEFAULT
# 179 "data/maps/Route110/scripts.pory"
	release
# 180 "data/maps/Route110/scripts.pory"
	end
# 181 "data/maps/Route110/scripts.pory"

# 182 "data/maps/Route110/scripts.pory"
Route110_EventScript_EdwinRegisterMatchCallAfterBattle::
# 183 "data/maps/Route110/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 184 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 185 "data/maps/Route110/scripts.pory"
	release
# 186 "data/maps/Route110/scripts.pory"
	end
# 187 "data/maps/Route110/scripts.pory"

# 188 "data/maps/Route110/scripts.pory"
Route110_EventScript_EdwinRematch::
# 189 "data/maps/Route110/scripts.pory"
	trainerbattle_rematch TRAINER_EDWIN_1, Route110_Text_EdwinRematchIntro, Route110_Text_EdwinRematchDefeated
# 190 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_EdwinRematchPostBattle, MSGBOX_AUTOCLOSE
# 191 "data/maps/Route110/scripts.pory"
	end
# 192 "data/maps/Route110/scripts.pory"

# 193 "data/maps/Route110/scripts.pory"
Route110_EventScript_Dale::
# 194 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_DALE, Route110_Text_DaleIntro, Route110_Text_DaleDefeated
# 195 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_DalePostBattle, MSGBOX_AUTOCLOSE
# 196 "data/maps/Route110/scripts.pory"
	end
# 197 "data/maps/Route110/scripts.pory"

# 198 "data/maps/Route110/scripts.pory"
Route110_EventScript_Jacob::
# 199 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_JACOB, Route110_Text_JacobIntro, Route110_Text_JacobDefeated
# 200 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_JacobPostBattle, MSGBOX_AUTOCLOSE
# 201 "data/maps/Route110/scripts.pory"
	end
# 202 "data/maps/Route110/scripts.pory"

# 203 "data/maps/Route110/scripts.pory"
Route110_EventScript_Anthony::
# 204 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_ANTHONY, Route110_Text_AnthonyIntro, Route110_Text_AnthonyDefeated
# 205 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AnthonyPostBattle, MSGBOX_AUTOCLOSE
# 206 "data/maps/Route110/scripts.pory"
	end
# 207 "data/maps/Route110/scripts.pory"

# 208 "data/maps/Route110/scripts.pory"
Route110_EventScript_Benjamin::
# 209 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_BENJAMIN_1, Route110_Text_BenjaminIntro, Route110_Text_BenjaminDefeated, Route110_EventScript_BenjaminRegisterMatchCallAfterBattle
# 210 "data/maps/Route110/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 211 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route110_EventScript_BenjaminRematch
# 212 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BenjaminPostBattle, MSGBOX_DEFAULT
# 213 "data/maps/Route110/scripts.pory"
	release
# 214 "data/maps/Route110/scripts.pory"
	end
# 215 "data/maps/Route110/scripts.pory"

# 216 "data/maps/Route110/scripts.pory"
Route110_EventScript_BenjaminRegisterMatchCallAfterBattle::
# 217 "data/maps/Route110/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 218 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 219 "data/maps/Route110/scripts.pory"
	release
# 220 "data/maps/Route110/scripts.pory"
	end
# 221 "data/maps/Route110/scripts.pory"

# 222 "data/maps/Route110/scripts.pory"
Route110_EventScript_BenjaminRematch::
# 223 "data/maps/Route110/scripts.pory"
	trainerbattle_rematch TRAINER_BENJAMIN_1, Route110_Text_BenjaminRematchIntro, Route110_Text_BenjaminRematchDefeated
# 224 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BenjaminRematchPostBattle, MSGBOX_AUTOCLOSE
# 225 "data/maps/Route110/scripts.pory"
	end
# 226 "data/maps/Route110/scripts.pory"

# 227 "data/maps/Route110/scripts.pory"
Route110_EventScript_Jasmine::
# 228 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_JASMINE, Route110_Text_JasmineIntro, Route110_Text_JasmineDefeated
# 229 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_JasminePostBattle, MSGBOX_AUTOCLOSE
# 230 "data/maps/Route110/scripts.pory"
	end
# 231 "data/maps/Route110/scripts.pory"

# 232 "data/maps/Route110/scripts.pory"
Route110_EventScript_Abigail::
# 233 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_ABIGAIL_1, Route110_Text_AbigailIntro, Route110_Text_AbigailDefeated, Route110_EventScript_AbigailRegisterMatchCallAfterBattle
# 234 "data/maps/Route110/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 235 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route110_EventScript_AbigailRematch
# 236 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AbigailPostBattle, MSGBOX_DEFAULT
# 237 "data/maps/Route110/scripts.pory"
	release
# 238 "data/maps/Route110/scripts.pory"
	end
# 239 "data/maps/Route110/scripts.pory"

# 240 "data/maps/Route110/scripts.pory"
Route110_EventScript_AbigailRegisterMatchCallAfterBattle::
# 241 "data/maps/Route110/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 242 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 243 "data/maps/Route110/scripts.pory"
	release
# 244 "data/maps/Route110/scripts.pory"
	end
# 245 "data/maps/Route110/scripts.pory"

# 246 "data/maps/Route110/scripts.pory"
Route110_EventScript_AbigailRematch::
# 247 "data/maps/Route110/scripts.pory"
	trainerbattle_rematch TRAINER_ABIGAIL_1, Route110_Text_AbigailRematchIntro, Route110_Text_AbigailRematchDefeated
# 248 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AbigailRematchPostBattle, MSGBOX_AUTOCLOSE
# 249 "data/maps/Route110/scripts.pory"
	end
# 250 "data/maps/Route110/scripts.pory"

# 251 "data/maps/Route110/scripts.pory"
Route110_EventScript_Isabel::
# 252 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_ISABEL_1, Route110_Text_IsabelIntro, Route110_Text_IsabelDefeated, Route110_EventScript_IsabelRegisterMatchCallAfterBattle
# 253 "data/maps/Route110/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 254 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route110_EventScript_IsabelRematch
# 255 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_IsabelPostBattle, MSGBOX_DEFAULT
# 256 "data/maps/Route110/scripts.pory"
	release
# 257 "data/maps/Route110/scripts.pory"
	end
# 258 "data/maps/Route110/scripts.pory"

# 259 "data/maps/Route110/scripts.pory"
Route110_EventScript_IsabelRegisterMatchCallAfterBattle::
# 260 "data/maps/Route110/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 261 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 262 "data/maps/Route110/scripts.pory"
	release
# 263 "data/maps/Route110/scripts.pory"
	end
# 264 "data/maps/Route110/scripts.pory"

# 265 "data/maps/Route110/scripts.pory"
Route110_EventScript_IsabelRematch::
# 266 "data/maps/Route110/scripts.pory"
	trainerbattle_rematch TRAINER_ISABEL_1, Route110_Text_IsabelRematchIntro, Route110_Text_IsabelRematchDefeated
# 267 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_IsabelRematchPostBattle, MSGBOX_AUTOCLOSE
# 268 "data/maps/Route110/scripts.pory"
	end
# 269 "data/maps/Route110/scripts.pory"

# 270 "data/maps/Route110/scripts.pory"
Route110_EventScript_Timmy::
# 271 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_TIMMY, Route110_Text_TimmyIntro, Route110_Text_TimmyDefeated
# 272 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_TimmyPostBattle, MSGBOX_AUTOCLOSE
# 273 "data/maps/Route110/scripts.pory"
	end
# 274 "data/maps/Route110/scripts.pory"

# 275 "data/maps/Route110/scripts.pory"
Route110_EventScript_Unused::
# 276 "data/maps/Route110/scripts.pory"
	end
# 277 "data/maps/Route110/scripts.pory"

# 278 "data/maps/Route110/scripts.pory"
Route110_EventScript_Kaleb::
# 279 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_KALEB, Route110_Text_KalebIntro, Route110_Text_KalebDefeated
# 280 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_KalebPostBattle, MSGBOX_AUTOCLOSE
# 281 "data/maps/Route110/scripts.pory"
	end
# 282 "data/maps/Route110/scripts.pory"

# 283 "data/maps/Route110/scripts.pory"
Route110_EventScript_Joseph::
# 284 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_JOSEPH, Route110_Text_JosephIntro, Route110_Text_JosephDefeated
# 285 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_JosephPostBattle, MSGBOX_AUTOCLOSE
# 286 "data/maps/Route110/scripts.pory"
	end
# 287 "data/maps/Route110/scripts.pory"

# 288 "data/maps/Route110/scripts.pory"
Route110_EventScript_Alyssa::
# 289 "data/maps/Route110/scripts.pory"
	trainerbattle_single TRAINER_ALYSSA, Route110_Text_AlyssaIntro, Route110_Text_AlyssaDefeated
# 290 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_AlyssaPostBattle, MSGBOX_AUTOCLOSE
# 291 "data/maps/Route110/scripts.pory"
	end
# 292 "data/maps/Route110/scripts.pory"

# 293 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingChallengeEnd::
# 294 "data/maps/Route110/scripts.pory"
	lockall
# 295 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_CHALLENGE_BIKER, Common_Movement_WalkInPlaceFasterRight
# 296 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 297 "data/maps/Route110/scripts.pory"
	call Route110_EventScript_CyclingChallengeResults
# 298 "data/maps/Route110/scripts.pory"
	releaseall
# 299 "data/maps/Route110/scripts.pory"
	end
# 300 "data/maps/Route110/scripts.pory"

# 301 "data/maps/Route110/scripts.pory"
Route110_EventScript_CyclingChallengeResults::
# 302 "data/maps/Route110/scripts.pory"
	special FinishCyclingRoadChallenge
# 303 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_CyclingChallengeResultSummary, MSGBOX_DEFAULT
# 304 "data/maps/Route110/scripts.pory"
	switch VAR_RESULT
# 305 "data/maps/Route110/scripts.pory"
	case 10, Route110_EventScript_ChallengeReactionBest
# 306 "data/maps/Route110/scripts.pory"
	case 9, Route110_EventScript_ChallengeReactionGood
# 307 "data/maps/Route110/scripts.pory"
	case 8, Route110_EventScript_ChallengeReactionGood
# 308 "data/maps/Route110/scripts.pory"
	case 7, Route110_EventScript_ChallengeReactionGood
# 309 "data/maps/Route110/scripts.pory"
	case 6, Route110_EventScript_ChallengeReactionOk
# 310 "data/maps/Route110/scripts.pory"
	case 5, Route110_EventScript_ChallengeReactionOk
# 311 "data/maps/Route110/scripts.pory"
	case 4, Route110_EventScript_ChallengeReactionOk
# 312 "data/maps/Route110/scripts.pory"
	case 3, Route110_EventScript_ChallengeReactionBad
# 313 "data/maps/Route110/scripts.pory"
	case 2, Route110_EventScript_ChallengeReactionBad
# 314 "data/maps/Route110/scripts.pory"
	case 1, Route110_EventScript_ChallengeReactionBad
# 315 "data/maps/Route110/scripts.pory"
	case 0, Route110_EventScript_ChallengeReactionWorst
# 316 "data/maps/Route110/scripts.pory"
	end
# 317 "data/maps/Route110/scripts.pory"

# 318 "data/maps/Route110/scripts.pory"
Route110_EventScript_ChallengeReactionBest::
# 319 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ChallengeReactionBest, MSGBOX_DEFAULT
# 320 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_EndChallenge
# 321 "data/maps/Route110/scripts.pory"
	end
# 322 "data/maps/Route110/scripts.pory"

# 323 "data/maps/Route110/scripts.pory"
Route110_EventScript_ChallengeReactionGood::
# 324 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ChallengeReactionGood, MSGBOX_DEFAULT
# 325 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_EndChallenge
# 326 "data/maps/Route110/scripts.pory"
	end
# 327 "data/maps/Route110/scripts.pory"

# 328 "data/maps/Route110/scripts.pory"
Route110_EventScript_ChallengeReactionOk::
# 329 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ChallengeReactionOk, MSGBOX_DEFAULT
# 330 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_EndChallenge
# 331 "data/maps/Route110/scripts.pory"
	end
# 332 "data/maps/Route110/scripts.pory"

# 333 "data/maps/Route110/scripts.pory"
Route110_EventScript_ChallengeReactionBad::
# 334 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ChallengeReactionBad, MSGBOX_DEFAULT
# 335 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_EndChallenge
# 336 "data/maps/Route110/scripts.pory"
	end
# 337 "data/maps/Route110/scripts.pory"

# 338 "data/maps/Route110/scripts.pory"
Route110_EventScript_ChallengeReactionWorst::
# 339 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ChallengeReactionWorst, MSGBOX_DEFAULT
# 340 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_EndChallenge
# 341 "data/maps/Route110/scripts.pory"
	end
# 342 "data/maps/Route110/scripts.pory"

# 343 "data/maps/Route110/scripts.pory"
Route110_EventScript_EndChallenge::
# 344 "data/maps/Route110/scripts.pory"
	setvar VAR_CYCLING_CHALLENGE_STATE, 3
# 345 "data/maps/Route110/scripts.pory"
	savebgm MUS_DUMMY
# 346 "data/maps/Route110/scripts.pory"
	fadedefaultbgm
# 347 "data/maps/Route110/scripts.pory"
	return
# 348 "data/maps/Route110/scripts.pory"

# 349 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalTrigger1::
# 350 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 1
# 351 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_RivalScene
# 352 "data/maps/Route110/scripts.pory"
	end
# 353 "data/maps/Route110/scripts.pory"

# 354 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalTrigger2::
# 355 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 2
# 356 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_RivalScene
# 357 "data/maps/Route110/scripts.pory"
	end
# 358 "data/maps/Route110/scripts.pory"

# 359 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalTrigger3::
# 360 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 3
# 361 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_RivalScene
# 362 "data/maps/Route110/scripts.pory"
	end
# 363 "data/maps/Route110/scripts.pory"

# 364 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalScene::
# 365 "data/maps/Route110/scripts.pory"
	lockall
# 366 "data/maps/Route110/scripts.pory"
	checkplayergender
# 367 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_RESULT, MALE, Route110_EventScript_PlayMayMusic
# 368 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, Route110_EventScript_PlayBrendanMusic
# 369 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 370 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 371 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL, Common_Movement_ExclamationMark
# 372 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 373 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL, Common_Movement_Delay48
# 374 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 375 "data/maps/Route110/scripts.pory"
	delay 30
# 376 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 1, Route110_EventScript_RivalApproachPlayer1
# 377 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 2, Route110_EventScript_RivalApproachPlayer2
# 378 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 3, Route110_EventScript_RivalApproachPlayer3
# 379 "data/maps/Route110/scripts.pory"
	checkplayergender
# 380 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, Route110_EventScript_MayBattle
# 381 "data/maps/Route110/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, Route110_EventScript_BrendanBattle
# 382 "data/maps/Route110/scripts.pory"
	releaseall
# 383 "data/maps/Route110/scripts.pory"
	end
# 384 "data/maps/Route110/scripts.pory"

# 385 "data/maps/Route110/scripts.pory"
Route110_EventScript_PlayMayMusic::
# 386 "data/maps/Route110/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 387 "data/maps/Route110/scripts.pory"
	return
# 388 "data/maps/Route110/scripts.pory"

# 389 "data/maps/Route110/scripts.pory"
Route110_EventScript_PlayBrendanMusic::
# 390 "data/maps/Route110/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 391 "data/maps/Route110/scripts.pory"
	return
# 392 "data/maps/Route110/scripts.pory"

# 393 "data/maps/Route110/scripts.pory"
Route110_EventScript_MayBattle::
# 394 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_MayLetsBattle, MSGBOX_DEFAULT
# 395 "data/maps/Route110/scripts.pory"
	switch VAR_STARTER_MON
# 396 "data/maps/Route110/scripts.pory"
	case 0, Route110_EventScript_MayBattleTreecko
# 397 "data/maps/Route110/scripts.pory"
	case 1, Route110_EventScript_MayBattleTorchic
# 398 "data/maps/Route110/scripts.pory"
	case 2, Route110_EventScript_MayBattleMudkip
# 399 "data/maps/Route110/scripts.pory"
	end
# 400 "data/maps/Route110/scripts.pory"

# 401 "data/maps/Route110/scripts.pory"
Route110_EventScript_MayBattleTreecko::
# 402 "data/maps/Route110/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_110_TREECKO, Route110_Text_MayDefeated
# 403 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_MayDefeated
# 404 "data/maps/Route110/scripts.pory"
	end
# 405 "data/maps/Route110/scripts.pory"

# 406 "data/maps/Route110/scripts.pory"
Route110_EventScript_MayBattleTorchic::
# 407 "data/maps/Route110/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_110_TORCHIC, Route110_Text_MayDefeated
# 408 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_MayDefeated
# 409 "data/maps/Route110/scripts.pory"
	end
# 410 "data/maps/Route110/scripts.pory"

# 411 "data/maps/Route110/scripts.pory"
Route110_EventScript_MayBattleMudkip::
# 412 "data/maps/Route110/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_ROUTE_110_MUDKIP, Route110_Text_MayDefeated
# 413 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_MayDefeated
# 414 "data/maps/Route110/scripts.pory"
	end
# 415 "data/maps/Route110/scripts.pory"

# 416 "data/maps/Route110/scripts.pory"
Route110_EventScript_MayDefeated::
# 417 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_MayTakeThis, MSGBOX_DEFAULT
# 418 "data/maps/Route110/scripts.pory"
	call Route110_EventScript_GiveItemfinder
# 419 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_MayExplainItemfinder, MSGBOX_DEFAULT
# 420 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_RivalExit
# 421 "data/maps/Route110/scripts.pory"
	end
# 422 "data/maps/Route110/scripts.pory"

# 423 "data/maps/Route110/scripts.pory"
Route110_EventScript_BrendanBattle::
# 424 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BrendanLetsBattle, MSGBOX_DEFAULT
# 425 "data/maps/Route110/scripts.pory"
	switch VAR_STARTER_MON
# 426 "data/maps/Route110/scripts.pory"
	case 0, Route110_EventScript_BrendanBattleTreecko
# 427 "data/maps/Route110/scripts.pory"
	case 1, Route110_EventScript_BrendanBattleTorchic
# 428 "data/maps/Route110/scripts.pory"
	case 2, Route110_EventScript_BrendanBattleMudkip
# 429 "data/maps/Route110/scripts.pory"
	end
# 430 "data/maps/Route110/scripts.pory"

# 431 "data/maps/Route110/scripts.pory"
Route110_EventScript_BrendanBattleTreecko::
# 432 "data/maps/Route110/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_110_TREECKO, Route110_Text_BrendanDefeated
# 433 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BrendanDefeated
# 434 "data/maps/Route110/scripts.pory"
	end
# 435 "data/maps/Route110/scripts.pory"

# 436 "data/maps/Route110/scripts.pory"
Route110_EventScript_BrendanBattleTorchic::
# 437 "data/maps/Route110/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_110_TORCHIC, Route110_Text_BrendanDefeated
# 438 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BrendanDefeated
# 439 "data/maps/Route110/scripts.pory"
	end
# 440 "data/maps/Route110/scripts.pory"

# 441 "data/maps/Route110/scripts.pory"
Route110_EventScript_BrendanBattleMudkip::
# 442 "data/maps/Route110/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_ROUTE_110_MUDKIP, Route110_Text_BrendanDefeated
# 443 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BrendanDefeated
# 444 "data/maps/Route110/scripts.pory"
	end
# 445 "data/maps/Route110/scripts.pory"

# 446 "data/maps/Route110/scripts.pory"
Route110_EventScript_BrendanDefeated::
# 447 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BrendanTakeThis, MSGBOX_DEFAULT
# 448 "data/maps/Route110/scripts.pory"
	call Route110_EventScript_GiveItemfinder
# 449 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_BrendanExplainItemfinder, MSGBOX_DEFAULT
# 450 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_RivalExit
# 451 "data/maps/Route110/scripts.pory"
	end
# 452 "data/maps/Route110/scripts.pory"

# 453 "data/maps/Route110/scripts.pory"
Route110_EventScript_GiveItemfinder::
# 454 "data/maps/Route110/scripts.pory"
	giveitem ITEM_DOWSING_MACHINE
# 455 "data/maps/Route110/scripts.pory"
	return
# 456 "data/maps/Route110/scripts.pory"

# 457 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalExit::
# 458 "data/maps/Route110/scripts.pory"
	closemessage
# 459 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 1, Route110_EventScript_MoveRival1
# 460 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 2, Route110_EventScript_MoveRival2
# 461 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 3, Route110_EventScript_MoveRival3
# 462 "data/maps/Route110/scripts.pory"
	setobjectmovementtype LOCALID_ROUTE110_RIVAL, MOVEMENT_TYPE_FACE_RIGHT
# 463 "data/maps/Route110/scripts.pory"
	setobjectmovementtype LOCALID_ROUTE110_RIVAL_ON_BIKE, MOVEMENT_TYPE_FACE_RIGHT
# 464 "data/maps/Route110/scripts.pory"
	removeobject LOCALID_ROUTE110_RIVAL
# 465 "data/maps/Route110/scripts.pory"
	addobject LOCALID_ROUTE110_RIVAL_ON_BIKE
# 466 "data/maps/Route110/scripts.pory"
	delay 45
# 467 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 1, Route110_EventScript_RivalExit1
# 468 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 2, Route110_EventScript_RivalExit2
# 469 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 3, Route110_EventScript_RivalExit3
# 470 "data/maps/Route110/scripts.pory"
	removeobject LOCALID_ROUTE110_RIVAL_ON_BIKE
# 471 "data/maps/Route110/scripts.pory"
	setvar VAR_ROUTE110_STATE, 1
# 472 "data/maps/Route110/scripts.pory"
	savebgm MUS_DUMMY
# 473 "data/maps/Route110/scripts.pory"
	fadedefaultbgm
# 474 "data/maps/Route110/scripts.pory"
	releaseall
# 475 "data/maps/Route110/scripts.pory"
	end
# 476 "data/maps/Route110/scripts.pory"

# 477 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalApproachPlayer1::
# 478 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL, Route110_Movement_RivalApproachPlayer1
# 479 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 480 "data/maps/Route110/scripts.pory"
	return
# 481 "data/maps/Route110/scripts.pory"

# 482 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalApproachPlayer2::
# 483 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL, Route110_Movement_RivalApproachPlayer2
# 484 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 485 "data/maps/Route110/scripts.pory"
	return
# 486 "data/maps/Route110/scripts.pory"

# 487 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalApproachPlayer3::
# 488 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL, Route110_Movement_RivalApproachPlayer3
# 489 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 490 "data/maps/Route110/scripts.pory"
	return
# 491 "data/maps/Route110/scripts.pory"

# 492 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalExit1::
# 493 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL_ON_BIKE, Route110_Movement_RivalExit1
# 494 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 495 "data/maps/Route110/scripts.pory"
	return
# 496 "data/maps/Route110/scripts.pory"

# 497 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalExit2::
# 498 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL_ON_BIKE, Route110_Movement_RivalExit2
# 499 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 500 "data/maps/Route110/scripts.pory"
	return
# 501 "data/maps/Route110/scripts.pory"

# 502 "data/maps/Route110/scripts.pory"
Route110_EventScript_RivalExit3::
# 503 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_RIVAL_ON_BIKE, Route110_Movement_RivalExit3
# 504 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 505 "data/maps/Route110/scripts.pory"
	return
# 506 "data/maps/Route110/scripts.pory"

# 507 "data/maps/Route110/scripts.pory"
Route110_EventScript_MoveRival1::
# 508 "data/maps/Route110/scripts.pory"
	setobjectxyperm LOCALID_ROUTE110_RIVAL_ON_BIKE, 33, 55
# 509 "data/maps/Route110/scripts.pory"
	return
# 510 "data/maps/Route110/scripts.pory"

# 511 "data/maps/Route110/scripts.pory"
Route110_EventScript_MoveRival2::
# 512 "data/maps/Route110/scripts.pory"
	setobjectxyperm LOCALID_ROUTE110_RIVAL_ON_BIKE, 34, 55
# 513 "data/maps/Route110/scripts.pory"
	return
# 514 "data/maps/Route110/scripts.pory"

# 515 "data/maps/Route110/scripts.pory"
Route110_EventScript_MoveRival3::
# 516 "data/maps/Route110/scripts.pory"
	setobjectxyperm LOCALID_ROUTE110_RIVAL_ON_BIKE, 35, 55
# 517 "data/maps/Route110/scripts.pory"
	return
# 518 "data/maps/Route110/scripts.pory"

# 519 "data/maps/Route110/scripts.pory"
Route110_Movement_RivalApproachPlayer1:
# 520 "data/maps/Route110/scripts.pory"
	walk_down
# 521 "data/maps/Route110/scripts.pory"
	walk_left
# 522 "data/maps/Route110/scripts.pory"
	walk_in_place_faster_down
# 523 "data/maps/Route110/scripts.pory"
	step_end
# 524 "data/maps/Route110/scripts.pory"

# 525 "data/maps/Route110/scripts.pory"
Route110_Movement_RivalApproachPlayer2:
# 526 "data/maps/Route110/scripts.pory"
	walk_down
# 527 "data/maps/Route110/scripts.pory"
	step_end
# 528 "data/maps/Route110/scripts.pory"

# 529 "data/maps/Route110/scripts.pory"
Route110_Movement_RivalApproachPlayer3:
# 530 "data/maps/Route110/scripts.pory"
	walk_down
# 531 "data/maps/Route110/scripts.pory"
	walk_right
# 532 "data/maps/Route110/scripts.pory"
	walk_in_place_faster_down
# 533 "data/maps/Route110/scripts.pory"
	step_end
# 534 "data/maps/Route110/scripts.pory"

# 535 "data/maps/Route110/scripts.pory"
Route110_Movement_RivalExit1:
# 536 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 537 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 538 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 539 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 540 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 541 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 542 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 543 "data/maps/Route110/scripts.pory"
	step_end
# 544 "data/maps/Route110/scripts.pory"

# 545 "data/maps/Route110/scripts.pory"
Route110_Movement_RivalExit2:
# 546 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 547 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 548 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 549 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 550 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 551 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 552 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 553 "data/maps/Route110/scripts.pory"
	walk_fast_down
# 554 "data/maps/Route110/scripts.pory"
	step_end
# 555 "data/maps/Route110/scripts.pory"

# 556 "data/maps/Route110/scripts.pory"
Route110_Movement_RivalExit3:
# 557 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 558 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 559 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 560 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 561 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 562 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 563 "data/maps/Route110/scripts.pory"
	walk_fast_up
# 564 "data/maps/Route110/scripts.pory"
	step_end
# 565 "data/maps/Route110/scripts.pory"

# 566 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchScene1::
# 567 "data/maps/Route110/scripts.pory"
	lockall
# 568 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 1
# 569 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BirchScene
# 570 "data/maps/Route110/scripts.pory"

# 571 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchScene2::
# 572 "data/maps/Route110/scripts.pory"
	lockall
# 573 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 2
# 574 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BirchScene
# 575 "data/maps/Route110/scripts.pory"

# 576 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchScene3::
# 577 "data/maps/Route110/scripts.pory"
	lockall
# 578 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 3
# 579 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BirchScene
# 580 "data/maps/Route110/scripts.pory"

# 581 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchScene4::
# 582 "data/maps/Route110/scripts.pory"
	lockall
# 583 "data/maps/Route110/scripts.pory"
	setvar VAR_0x8008, 4
# 584 "data/maps/Route110/scripts.pory"
	goto Route110_EventScript_BirchScene
# 585 "data/maps/Route110/scripts.pory"

# 586 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchScene::
# 587 "data/maps/Route110/scripts.pory"
	addobject LOCALID_ROUTE110_BIRCH
# 588 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchEntrance
# 589 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 590 "data/maps/Route110/scripts.pory"
	playse SE_PIN
# 591 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Common_Movement_ExclamationMark
# 592 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 593 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Common_Movement_Delay48
# 594 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 595 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 1, Route110_EventScript_BirchApproachPlayer1
# 596 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 2, Route110_EventScript_BirchApproachPlayer2
# 597 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 3, Route110_EventScript_BirchApproachPlayer3
# 598 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 4, Route110_EventScript_BirchApproachPlayer4
# 599 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_ImagineSeeingYouHere, MSGBOX_DEFAULT
# 600 "data/maps/Route110/scripts.pory"
	closemessage
# 601 "data/maps/Route110/scripts.pory"
	delay 20
# 602 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Common_Movement_WalkInPlaceFasterLeft
# 603 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 604 "data/maps/Route110/scripts.pory"
	delay 10
# 605 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Common_Movement_WalkInPlaceFasterRight
# 606 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 607 "data/maps/Route110/scripts.pory"
	delay 20
# 608 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Common_Movement_WalkInPlaceFasterDown
# 609 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 610 "data/maps/Route110/scripts.pory"
	delay 30
# 611 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_HeardYouInstallMatchCall, MSGBOX_DEFAULT
# 612 "data/maps/Route110/scripts.pory"
	closemessage
# 613 "data/maps/Route110/scripts.pory"
	delay 30
# 614 "data/maps/Route110/scripts.pory"
	/////playfanfare MUS_REGISTER_MATCH_CALL
# 615 "data/maps/Route110/scripts.pory"
	/////msgbox Route110_Text_RegisteredBirchInPokenav, MSGBOX_DEFAULT
# 616 "data/maps/Route110/scripts.pory"
	waitfanfare
# 617 "data/maps/Route110/scripts.pory"
	closemessage
# 618 "data/maps/Route110/scripts.pory"
	delay 30
# 619 "data/maps/Route110/scripts.pory"
	setflag FLAG_ENABLE_PROF_BIRCH_MATCH_CALL
# 620 "data/maps/Route110/scripts.pory"
	msgbox Route110_Text_KeepAnEyeOutForRival, MSGBOX_DEFAULT
# 621 "data/maps/Route110/scripts.pory"
	closemessage
# 622 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 1, Route110_EventScript_BirchExit1
# 623 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 2, Route110_EventScript_BirchExit2
# 624 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 3, Route110_EventScript_BirchExit3
# 625 "data/maps/Route110/scripts.pory"
	call_if_eq VAR_0x8008, 4, Route110_EventScript_BirchExit4
# 626 "data/maps/Route110/scripts.pory"
	removeobject LOCALID_ROUTE110_BIRCH
# 627 "data/maps/Route110/scripts.pory"
	setvar VAR_REGISTER_BIRCH_STATE, 2
# 628 "data/maps/Route110/scripts.pory"
	releaseall
# 629 "data/maps/Route110/scripts.pory"
	end
# 630 "data/maps/Route110/scripts.pory"

# 631 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchApproachPlayer1::
# 632 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchApproachPlayer1
# 633 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 634 "data/maps/Route110/scripts.pory"
	return
# 635 "data/maps/Route110/scripts.pory"

# 636 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchApproachPlayer2::
# 637 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchApproachPlayer2
# 638 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 639 "data/maps/Route110/scripts.pory"
	return
# 640 "data/maps/Route110/scripts.pory"

# 641 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchApproachPlayer3::
# 642 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchApproachPlayer3
# 643 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 644 "data/maps/Route110/scripts.pory"
	return
# 645 "data/maps/Route110/scripts.pory"

# 646 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchApproachPlayer4::
# 647 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchApproachPlayer4
# 648 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 649 "data/maps/Route110/scripts.pory"
	return
# 650 "data/maps/Route110/scripts.pory"

# 651 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchExit1::
# 652 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchExit1
# 653 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 654 "data/maps/Route110/scripts.pory"
	return
# 655 "data/maps/Route110/scripts.pory"

# 656 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchExit2::
# 657 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchExit2
# 658 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 659 "data/maps/Route110/scripts.pory"
	return
# 660 "data/maps/Route110/scripts.pory"

# 661 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchExit3::
# 662 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchExit3
# 663 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 664 "data/maps/Route110/scripts.pory"
	return
# 665 "data/maps/Route110/scripts.pory"

# 666 "data/maps/Route110/scripts.pory"
Route110_EventScript_BirchExit4::
# 667 "data/maps/Route110/scripts.pory"
	applymovement LOCALID_ROUTE110_BIRCH, Route110_Movement_BirchExit4
# 668 "data/maps/Route110/scripts.pory"
	waitmovement 0
# 669 "data/maps/Route110/scripts.pory"
	return
# 670 "data/maps/Route110/scripts.pory"

# 671 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchEntrance:
# 672 "data/maps/Route110/scripts.pory"
	walk_down
# 673 "data/maps/Route110/scripts.pory"
	walk_down
# 674 "data/maps/Route110/scripts.pory"
	walk_down
# 675 "data/maps/Route110/scripts.pory"
	step_end
# 676 "data/maps/Route110/scripts.pory"

# 677 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchApproachPlayer1:
# 678 "data/maps/Route110/scripts.pory"
	walk_down
# 679 "data/maps/Route110/scripts.pory"
	walk_left
# 680 "data/maps/Route110/scripts.pory"
	walk_left
# 681 "data/maps/Route110/scripts.pory"
	walk_down
# 682 "data/maps/Route110/scripts.pory"
	step_end
# 683 "data/maps/Route110/scripts.pory"

# 684 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchApproachPlayer2:
# 685 "data/maps/Route110/scripts.pory"
	walk_down
# 686 "data/maps/Route110/scripts.pory"
	walk_left
# 687 "data/maps/Route110/scripts.pory"
	walk_down
# 688 "data/maps/Route110/scripts.pory"
	step_end
# 689 "data/maps/Route110/scripts.pory"

# 690 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchApproachPlayer3:
# 691 "data/maps/Route110/scripts.pory"
	walk_down
# 692 "data/maps/Route110/scripts.pory"
	walk_down
# 693 "data/maps/Route110/scripts.pory"
	step_end
# 694 "data/maps/Route110/scripts.pory"

# 695 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchApproachPlayer4:
# 696 "data/maps/Route110/scripts.pory"
	walk_down
# 697 "data/maps/Route110/scripts.pory"
	walk_right
# 698 "data/maps/Route110/scripts.pory"
	walk_down
# 699 "data/maps/Route110/scripts.pory"
	step_end
# 700 "data/maps/Route110/scripts.pory"

# 701 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchExit1:
# 702 "data/maps/Route110/scripts.pory"
	walk_up
# 703 "data/maps/Route110/scripts.pory"
	walk_up
# 704 "data/maps/Route110/scripts.pory"
	walk_right
# 705 "data/maps/Route110/scripts.pory"
	walk_up
# 706 "data/maps/Route110/scripts.pory"
	walk_up
# 707 "data/maps/Route110/scripts.pory"
	walk_up
# 708 "data/maps/Route110/scripts.pory"
	step_end
# 709 "data/maps/Route110/scripts.pory"

# 710 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchExit2:
# 711 "data/maps/Route110/scripts.pory"
	walk_up
# 712 "data/maps/Route110/scripts.pory"
	walk_up
# 713 "data/maps/Route110/scripts.pory"
	walk_up
# 714 "data/maps/Route110/scripts.pory"
	walk_up
# 715 "data/maps/Route110/scripts.pory"
	walk_up
# 716 "data/maps/Route110/scripts.pory"
	step_end
# 717 "data/maps/Route110/scripts.pory"

# 718 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchExit3:
# 719 "data/maps/Route110/scripts.pory"
	walk_up
# 720 "data/maps/Route110/scripts.pory"
	walk_up
# 721 "data/maps/Route110/scripts.pory"
	walk_up
# 722 "data/maps/Route110/scripts.pory"
	walk_up
# 723 "data/maps/Route110/scripts.pory"
	walk_up
# 724 "data/maps/Route110/scripts.pory"
	step_end
# 725 "data/maps/Route110/scripts.pory"

# 726 "data/maps/Route110/scripts.pory"
Route110_Movement_BirchExit4:
# 727 "data/maps/Route110/scripts.pory"
	walk_up
# 728 "data/maps/Route110/scripts.pory"
	walk_up
# 729 "data/maps/Route110/scripts.pory"
	walk_up
# 730 "data/maps/Route110/scripts.pory"
	walk_up
# 731 "data/maps/Route110/scripts.pory"
	walk_up
# 732 "data/maps/Route110/scripts.pory"
	step_end
# 733 "data/maps/Route110/scripts.pory"

# 734 "data/maps/Route110/scripts.pory"
Route110_Text_WeCantTalkAboutAquaActivities:
# 735 "data/maps/Route110/scripts.pory"
	.string "TEAM AQUA's activities…\n"
# 736 "data/maps/Route110/scripts.pory"
	.string "We can't talk about them yet.$"
# 737 "data/maps/Route110/scripts.pory"

# 738 "data/maps/Route110/scripts.pory"
Route110_Text_KickUpARuckus:
# 739 "data/maps/Route110/scripts.pory"
	.string "I want to get going to SLATEPORT and\n"
# 740 "data/maps/Route110/scripts.pory"
	.string "kick up a ruckus!$"
# 741 "data/maps/Route110/scripts.pory"

# 742 "data/maps/Route110/scripts.pory"
Route110_Text_MyFirstJobInAqua:
# 743 "data/maps/Route110/scripts.pory"
	.string "This is my first job after joining\n"
# 744 "data/maps/Route110/scripts.pory"
	.string "TEAM AQUA. It's a little scary.$"
# 745 "data/maps/Route110/scripts.pory"

# 746 "data/maps/Route110/scripts.pory"
Route110_Text_AquaActionsBringSmiles:
# 747 "data/maps/Route110/scripts.pory"
	.string "TEAM AQUA's actions should bring\n"
# 748 "data/maps/Route110/scripts.pory"
	.string "smiles to people's faces!$"
# 749 "data/maps/Route110/scripts.pory"

# 750 "data/maps/Route110/scripts.pory"
Route110_Text_MayLetsBattle:
# 751 "data/maps/Route110/scripts.pory"
	.string "ZINNIA: Hi, {PLAYER}{KUN}, long time no see!\p"
# 752 "data/maps/Route110/scripts.pory"
	.string "While I was searching for other\n"
# 753 "data/maps/Route110/scripts.pory"
	.string "POKéMON, my POKéMON grew stronger.\p"
# 754 "data/maps/Route110/scripts.pory"
	.string "So…\n"
# 755 "data/maps/Route110/scripts.pory"
	.string "How about a little battle?$"
# 756 "data/maps/Route110/scripts.pory"

# 757 "data/maps/Route110/scripts.pory"
Route110_Text_MayDefeated:
# 758 "data/maps/Route110/scripts.pory"
	.string "Yikes!\n"
# 759 "data/maps/Route110/scripts.pory"
	.string "You're better than I expected!$"
# 760 "data/maps/Route110/scripts.pory"

# 761 "data/maps/Route110/scripts.pory"
Route110_Text_MayTakeThis:
# 762 "data/maps/Route110/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}, you've been busy\n"
# 763 "data/maps/Route110/scripts.pory"
	.string "training, too, haven't you?\p"
# 764 "data/maps/Route110/scripts.pory"
	.string "I think you deserve a reward!\n"
# 765 "data/maps/Route110/scripts.pory"
	.string "This is from me!$"
# 766 "data/maps/Route110/scripts.pory"

# 767 "data/maps/Route110/scripts.pory"
Route110_Text_MayExplainItemfinder:
# 768 "data/maps/Route110/scripts.pory"
	.string "ZINNIA: That's an ITEMFINDER.\p"
# 769 "data/maps/Route110/scripts.pory"
	.string "Try it out. If there is an item that's\n"
# 770 "data/maps/Route110/scripts.pory"
	.string "not visible, it emits a sound.\p"
# 771 "data/maps/Route110/scripts.pory"
	.string "Okay, {PLAYER}{KUN}, let's meet again!\p"
# 772 "data/maps/Route110/scripts.pory"
	.string "I know it's a little silly coming from\n"
# 773 "data/maps/Route110/scripts.pory"
	.string "me, but I think you should train a lot\l"
# 774 "data/maps/Route110/scripts.pory"
	.string "harder for the next time.$"
# 775 "data/maps/Route110/scripts.pory"

# 776 "data/maps/Route110/scripts.pory"
Route110_Text_BrendanLetsBattle:
# 777 "data/maps/Route110/scripts.pory"
	.string "ZENNO: Hey, {PLAYER}.\n"
# 778 "data/maps/Route110/scripts.pory"
	.string "So this is where you were.\l"
# 779 "data/maps/Route110/scripts.pory"
	.string "How's it going?\p"
# 780 "data/maps/Route110/scripts.pory"
	.string "Have you been raising your POKéMON?\n"
# 781 "data/maps/Route110/scripts.pory"
	.string "I'll check for you.$"
# 782 "data/maps/Route110/scripts.pory"

# 783 "data/maps/Route110/scripts.pory"
Route110_Text_BrendanDefeated:
# 784 "data/maps/Route110/scripts.pory"
	.string "Hmm…\n"
# 785 "data/maps/Route110/scripts.pory"
	.string "You're pretty good.$"
# 786 "data/maps/Route110/scripts.pory"

# 787 "data/maps/Route110/scripts.pory"
Route110_Text_BrendanTakeThis:
# 788 "data/maps/Route110/scripts.pory"
	.string "ZENNO: {PLAYER}, you've trained\n"
# 789 "data/maps/Route110/scripts.pory"
	.string "without me noticing…\p"
# 790 "data/maps/Route110/scripts.pory"
	.string "Good enough!\n"
# 791 "data/maps/Route110/scripts.pory"
	.string "Here, take this.$"
# 792 "data/maps/Route110/scripts.pory"

# 793 "data/maps/Route110/scripts.pory"
Route110_Text_BrendanExplainItemfinder:
# 794 "data/maps/Route110/scripts.pory"
	.string "ZENNO: That's an ITEMFINDER.\p"
# 795 "data/maps/Route110/scripts.pory"
	.string "Use it to root around for items that\n"
# 796 "data/maps/Route110/scripts.pory"
	.string "aren't visible.\p"
# 797 "data/maps/Route110/scripts.pory"
	.string "If it senses something, it emits\n"
# 798 "data/maps/Route110/scripts.pory"
	.string "a sound.\p"
# 799 "data/maps/Route110/scripts.pory"
	.string "Anyway, I'm off to look for new\n"
# 800 "data/maps/Route110/scripts.pory"
	.string "POKéMON.$"
# 801 "data/maps/Route110/scripts.pory"

# 802 "data/maps/Route110/scripts.pory"
Route110_Text_RideBikeAtFullSpeed:
# 803 "data/maps/Route110/scripts.pory"
	.string "Wouldn't it be great to ride a BIKE\n"
# 804 "data/maps/Route110/scripts.pory"
	.string "at full speed on CYCLING ROAD?$"
# 805 "data/maps/Route110/scripts.pory"

# 806 "data/maps/Route110/scripts.pory"
Route110_Text_HairStreamsBehindMe:
# 807 "data/maps/Route110/scripts.pory"
	.string "How do you like the way my raven-\n"
# 808 "data/maps/Route110/scripts.pory"
	.string "colored hair streams behind me?\p"
# 809 "data/maps/Route110/scripts.pory"
	.string "I grew my hair out just for that.$"
# 810 "data/maps/Route110/scripts.pory"

# 811 "data/maps/Route110/scripts.pory"
Route110_Text_YouGotBikeFromRydel:
# 812 "data/maps/Route110/scripts.pory"
	.string "Oh, hey, you got that BIKE from RYDEL!\p"
# 813 "data/maps/Route110/scripts.pory"
	.string "Oh, it's glaringly obvious.\n"
# 814 "data/maps/Route110/scripts.pory"
	.string "It says right on your bike…\p"
# 815 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\n"
# 816 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\p"
# 817 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\n"
# 818 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\p"
# 819 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\n"
# 820 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\p"
# 821 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\n"
# 822 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL,\p"
# 823 "data/maps/Route110/scripts.pory"
	.string "RYDEL, RYDEL, RYDEL, RYDEL, RYDEL…\n"
# 824 "data/maps/Route110/scripts.pory"
	.string "That name's everywhere.\p"
# 825 "data/maps/Route110/scripts.pory"
	.string "You should ride it around all over\n"
# 826 "data/maps/Route110/scripts.pory"
	.string "the place--it's good advertising!$"
# 827 "data/maps/Route110/scripts.pory"

# 828 "data/maps/Route110/scripts.pory"
Route110_Text_TwoRoads:
# 829 "data/maps/Route110/scripts.pory"
	.string "The two roads, one above, one below…\p"
# 830 "data/maps/Route110/scripts.pory"
	.string "A road each for people and POKéMON.\n"
# 831 "data/maps/Route110/scripts.pory"
	.string "Perhaps that is right and fair.$"
# 832 "data/maps/Route110/scripts.pory"

# 833 "data/maps/Route110/scripts.pory"
Route110_Text_WalkOnTheLowRoad:
# 834 "data/maps/Route110/scripts.pory"
	.string "I don't have a BIKE, so I'll take\n"
# 835 "data/maps/Route110/scripts.pory"
	.string "a leisurely walk on the low road.$"
# 836 "data/maps/Route110/scripts.pory"

# 837 "data/maps/Route110/scripts.pory"
Route110_Text_BikeTechniques:
# 838 "data/maps/Route110/scripts.pory"
	.string "Learning techniques will make BIKE\n"
# 839 "data/maps/Route110/scripts.pory"
	.string "riding even more fun.\p"
# 840 "data/maps/Route110/scripts.pory"
	.string "There are some places that you can\n"
# 841 "data/maps/Route110/scripts.pory"
	.string "reach only by using a BIKE technique.$"
# 842 "data/maps/Route110/scripts.pory"

# 843 "data/maps/Route110/scripts.pory"
Route110_Text_WhichShouldIChoose:
# 844 "data/maps/Route110/scripts.pory"
	.string "Which should I choose?\p"
# 845 "data/maps/Route110/scripts.pory"
	.string "Make a beeline for MAUVILLE on\n"
# 846 "data/maps/Route110/scripts.pory"
	.string "CYCLING ROAD, or take the low road\l"
# 847 "data/maps/Route110/scripts.pory"
	.string "and look for POKéMON?$"
# 848 "data/maps/Route110/scripts.pory"

# 849 "data/maps/Route110/scripts.pory"
Route110_Text_CyclingChallengeResultSummary:
# 850 "data/maps/Route110/scripts.pory"
	.string "Number of collisions:\n"
# 851 "data/maps/Route110/scripts.pory"
	.string "… … {STR_VAR_1}!\p"
# 852 "data/maps/Route110/scripts.pory"
	.string "Total time:\n"
# 853 "data/maps/Route110/scripts.pory"
	.string "… … {STR_VAR_2}!$"
# 854 "data/maps/Route110/scripts.pory"

# 855 "data/maps/Route110/scripts.pory"
Route110_Text_ChallengeReactionBest:
# 856 "data/maps/Route110/scripts.pory"
	.string "Bravo! Splendid showing!\p"
# 857 "data/maps/Route110/scripts.pory"
	.string "Your love of cycling comes from deep\n"
# 858 "data/maps/Route110/scripts.pory"
	.string "within your heart.\l"
# 859 "data/maps/Route110/scripts.pory"
	.string "You've shaken me to my very soul!$"
# 860 "data/maps/Route110/scripts.pory"

# 861 "data/maps/Route110/scripts.pory"
Route110_Text_ChallengeReactionGood:
# 862 "data/maps/Route110/scripts.pory"
	.string "Your technique is remarkable.\p"
# 863 "data/maps/Route110/scripts.pory"
	.string "I suggest you speed up a bit while\n"
# 864 "data/maps/Route110/scripts.pory"
	.string "still avoiding collisions.$"
# 865 "data/maps/Route110/scripts.pory"

# 866 "data/maps/Route110/scripts.pory"
Route110_Text_ChallengeReactionOk:
# 867 "data/maps/Route110/scripts.pory"
	.string "I would consider you a work in\n"
# 868 "data/maps/Route110/scripts.pory"
	.string "progress.\p"
# 869 "data/maps/Route110/scripts.pory"
	.string "Still, I hope you don't forget the\n"
# 870 "data/maps/Route110/scripts.pory"
	.string "sheer pleasure of cycling.$"
# 871 "data/maps/Route110/scripts.pory"

# 872 "data/maps/Route110/scripts.pory"
Route110_Text_ChallengeReactionBad:
# 873 "data/maps/Route110/scripts.pory"
	.string "My word… Your cycling skills border\n"
# 874 "data/maps/Route110/scripts.pory"
	.string "on terrifying.\p"
# 875 "data/maps/Route110/scripts.pory"
	.string "Most certainly, you need much more\n"
# 876 "data/maps/Route110/scripts.pory"
	.string "practice riding.$"
# 877 "data/maps/Route110/scripts.pory"

# 878 "data/maps/Route110/scripts.pory"
Route110_Text_ChallengeReactionWorst:
# 879 "data/maps/Route110/scripts.pory"
	.string "…I am aghast…\p"
# 880 "data/maps/Route110/scripts.pory"
	.string "You're perhaps not cut out for this\n"
# 881 "data/maps/Route110/scripts.pory"
	.string "unfortunate cycling business.\p"
# 882 "data/maps/Route110/scripts.pory"
	.string "You ought to give serious thought to\n"
# 883 "data/maps/Route110/scripts.pory"
	.string "returning that BIKE to RYDEL.$"
# 884 "data/maps/Route110/scripts.pory"

# 885 "data/maps/Route110/scripts.pory"
Route110_Text_RatedForNumberOfCollisions:
# 886 "data/maps/Route110/scripts.pory"
	.string "This is CYCLING ROAD.\p"
# 887 "data/maps/Route110/scripts.pory"
	.string "If you were to ride from MAUVILLE to\n"
# 888 "data/maps/Route110/scripts.pory"
	.string "SLATEPORT on a MACH BIKE, you would\l"
# 889 "data/maps/Route110/scripts.pory"
	.string "be rated for the number of collisions\l"
# 890 "data/maps/Route110/scripts.pory"
	.string "and your total time.$"
# 891 "data/maps/Route110/scripts.pory"

# 892 "data/maps/Route110/scripts.pory"
Route110_Text_AlwaysAimHigher:
# 893 "data/maps/Route110/scripts.pory"
	.string "Regardless of the results, I count on\n"
# 894 "data/maps/Route110/scripts.pory"
	.string "seeing more challenges from you.\l"
# 895 "data/maps/Route110/scripts.pory"
	.string "Always aim higher!$"
# 896 "data/maps/Route110/scripts.pory"

# 897 "data/maps/Route110/scripts.pory"
Route110_Text_AcroBikesDoNotQualify:
# 898 "data/maps/Route110/scripts.pory"
	.string "On this CYCLING ROAD, those riding\n"
# 899 "data/maps/Route110/scripts.pory"
	.string "MACH BIKES are rated for their number\l"
# 900 "data/maps/Route110/scripts.pory"
	.string "of collisions and their total times.\p"
# 901 "data/maps/Route110/scripts.pory"
	.string "ACRO BIKES do not qualify for rating.\n"
# 902 "data/maps/Route110/scripts.pory"
	.string "They are easy to turn, so it's not fair.$"
# 903 "data/maps/Route110/scripts.pory"

# 904 "data/maps/Route110/scripts.pory"
Route110_Text_SlateportCitySign:
# 905 "data/maps/Route110/scripts.pory"
	.string "ROUTE 110\n"
# 906 "data/maps/Route110/scripts.pory"
	.string "{DOWN_ARROW} SLATEPORT CITY$"
# 907 "data/maps/Route110/scripts.pory"

# 908 "data/maps/Route110/scripts.pory"
Route110_Text_CyclingRoadSign:
# 909 "data/maps/Route110/scripts.pory"
	.string "SEASIDE CYCLING ROAD$"
# 910 "data/maps/Route110/scripts.pory"

# 911 "data/maps/Route110/scripts.pory"
Route110_Text_AquaWasHere:
# 912 "data/maps/Route110/scripts.pory"
	.string "“TEAM AQUA was here!”\p"
# 913 "data/maps/Route110/scripts.pory"
	.string "Someone painted that onto this sign,\n"
# 914 "data/maps/Route110/scripts.pory"
	.string "but then someone else painted over it.\p"
# 915 "data/maps/Route110/scripts.pory"
	.string "“TEAM MAGMA rules!” is what it\n"
# 916 "data/maps/Route110/scripts.pory"
	.string "says now.$"
# 917 "data/maps/Route110/scripts.pory"

# 918 "data/maps/Route110/scripts.pory"
Route110_Text_Route103Sign:
# 919 "data/maps/Route110/scripts.pory"
	.string "ROUTE 110\n"
# 920 "data/maps/Route110/scripts.pory"
	.string "{LEFT_ARROW} ROUTE 103$"
# 921 "data/maps/Route110/scripts.pory"

# 922 "data/maps/Route110/scripts.pory"
Route110_Text_SeasideParkingSign:
# 923 "data/maps/Route110/scripts.pory"
	.string "SEASIDE PARKING$"
# 924 "data/maps/Route110/scripts.pory"

# 925 "data/maps/Route110/scripts.pory"
Route110_Text_MauvilleCitySign:
# 926 "data/maps/Route110/scripts.pory"
	.string "ROUTE 110\n"
# 927 "data/maps/Route110/scripts.pory"
	.string "{UP_ARROW} MAUVILLE CITY$"
# 928 "data/maps/Route110/scripts.pory"

# 929 "data/maps/Route110/scripts.pory"
Route110_Text_TrainerTipsPrlzSleep:
# 930 "data/maps/Route110/scripts.pory"
	.string "TRAINER TIPS\p"
# 931 "data/maps/Route110/scripts.pory"
	.string "The foe can be made helpless by\n"
# 932 "data/maps/Route110/scripts.pory"
	.string "paralyzing it or causing it to sleep.\p"
# 933 "data/maps/Route110/scripts.pory"
	.string "It is an important technique for\n"
# 934 "data/maps/Route110/scripts.pory"
	.string "POKéMON battles.$"
# 935 "data/maps/Route110/scripts.pory"

# 936 "data/maps/Route110/scripts.pory"
Route110_Text_TrainerTipsRegisterItems:
# 937 "data/maps/Route110/scripts.pory"
	.string "TRAINER TIPS\p"
# 938 "data/maps/Route110/scripts.pory"
	.string "The items in the BAG can be reorganized\n"
# 939 "data/maps/Route110/scripts.pory"
	.string "by pressing SELECT.$"
# 940 "data/maps/Route110/scripts.pory"

# 941 "data/maps/Route110/scripts.pory"
Route110_Text_TrickHouseSign:
# 942 "data/maps/Route110/scripts.pory"
	.string "“Three steps {RIGHT_ARROW} and two steps {UP_ARROW}\n"
# 943 "data/maps/Route110/scripts.pory"
	.string "to reach the wondrous TRICK HOUSE.”$"
# 944 "data/maps/Route110/scripts.pory"

# 945 "data/maps/Route110/scripts.pory"
Route110_Text_BestRecord:
# 946 "data/maps/Route110/scripts.pory"
	.string "THE BEST RECORD TO DATE…\p"
# 947 "data/maps/Route110/scripts.pory"
	.string "No. of collisions: {STR_VAR_1}\p"
# 948 "data/maps/Route110/scripts.pory"
	.string "Elapsed time: {STR_VAR_2}$"
# 949 "data/maps/Route110/scripts.pory"

# 950 "data/maps/Route110/scripts.pory"
Route110_Text_ThereIsNoRecord:
# 951 "data/maps/Route110/scripts.pory"
	.string "THE BEST RECORD TO DATE…\p"
# 952 "data/maps/Route110/scripts.pory"
	.string "No one seems to have taken the\n"
# 953 "data/maps/Route110/scripts.pory"
	.string "challenge. There is no record…$"
# 954 "data/maps/Route110/scripts.pory"

# 955 "data/maps/Route110/scripts.pory"
Route110_Text_ImagineSeeingYouHere:
# 956 "data/maps/Route110/scripts.pory"
	.string "PROF. ACACIA: Oh, {PLAYER}{KUN}!\n"
# 957 "data/maps/Route110/scripts.pory"
	.string "Imagine seeing you here!\p"
# 958 "data/maps/Route110/scripts.pory"
	.string "And where might my {RIVAL} be?$"
# 959 "data/maps/Route110/scripts.pory"

# 960 "data/maps/Route110/scripts.pory"
Route110_Text_HeardYouInstallMatchCall:
# 961 "data/maps/Route110/scripts.pory"
	.string "Oh, I see!\n"
# 962 "data/maps/Route110/scripts.pory"
	.string "You two are running separately.\l"
# 963 "data/maps/Route110/scripts.pory"
	.string "Well, that's fine.\p"
# 964 "data/maps/Route110/scripts.pory"
	.string "Oh, yes, I heard that your POKéNAV\n"
# 965 "data/maps/Route110/scripts.pory"
	.string "had the MATCH CALL system installed.\p"
# 966 "data/maps/Route110/scripts.pory"
	.string "Well, then, I should register you in\n"
# 967 "data/maps/Route110/scripts.pory"
	.string "my POKéNAV as well.\p"
# 968 "data/maps/Route110/scripts.pory"
	.string "That way, even when we're apart,\n"
# 969 "data/maps/Route110/scripts.pory"
	.string "I can rate your POKéDEX anytime.\p"
# 970 "data/maps/Route110/scripts.pory"
	.string "… … … … … …$"
# 971 "data/maps/Route110/scripts.pory"

# 972 "data/maps/Route110/scripts.pory"
Route110_Text_RegisteredBirchInPokenav:
# 973 "data/maps/Route110/scripts.pory"
	.string "Registered PROF. ACACIA\n"
# 974 "data/maps/Route110/scripts.pory"
	.string "in the POKéNAV.$"
# 975 "data/maps/Route110/scripts.pory"

# 976 "data/maps/Route110/scripts.pory"
Route110_Text_KeepAnEyeOutForRival:
# 977 "data/maps/Route110/scripts.pory"
	.string "PROF. ACACIA: {PLAYER}{KUN}…\p"
# 978 "data/maps/Route110/scripts.pory"
	.string "Please keep an eye out for my {RIVAL}.\n"
# 979 "data/maps/Route110/scripts.pory"
	.string "… … … … … …\p"
# 980 "data/maps/Route110/scripts.pory"
	.string "Well, I had better get going.\n"
# 981 "data/maps/Route110/scripts.pory"
	.string "See you again, {PLAYER}{KUN}!$"
