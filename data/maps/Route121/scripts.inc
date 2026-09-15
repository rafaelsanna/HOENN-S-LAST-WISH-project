# 1 "data/maps/Route121/scripts.pory"

# 2 "data/maps/Route121/scripts.pory"
Route121_MapScripts::
# 3 "data/maps/Route121/scripts.pory"
	.byte 0
# 4 "data/maps/Route121/scripts.pory"

# 5 "data/maps/Route121/scripts.pory"
Route121_EventScript_Woman::
# 6 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_AheadLoomsMtPyre, MSGBOX_NPC
# 7 "data/maps/Route121/scripts.pory"
	end
# 8 "data/maps/Route121/scripts.pory"

# 9 "data/maps/Route121/scripts.pory"
Route121_EventScript_MtPyrePierSign::
# 10 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_MtPyrePierSign, MSGBOX_SIGN
# 11 "data/maps/Route121/scripts.pory"
	end
# 12 "data/maps/Route121/scripts.pory"

# 13 "data/maps/Route121/scripts.pory"
Route121_EventScript_SafariZoneSign::
# 14 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_SafariZoneSign, MSGBOX_SIGN
# 15 "data/maps/Route121/scripts.pory"
	end
# 16 "data/maps/Route121/scripts.pory"

# 17 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGruntsMoveOut::
# 18 "data/maps/Route121/scripts.pory"
	goto_if_unset FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE, Route121_EventScript_AquaGruntsTriggerInactive
# 19 "data/maps/Route121/scripts.pory"
	lockall
# 20 "data/maps/Route121/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 21 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_2, Common_Movement_WalkInPlaceRight
# 22 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 23 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_OkayMoveOutToMtPyre, MSGBOX_DEFAULT
# 24 "data/maps/Route121/scripts.pory"
	closemessage
# 25 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_1, Route121_Movement_Grunt1Exit
# 26 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_2, Route121_Movement_Grunt2Exit
# 27 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_3, Route121_Movement_Grunt3Exit
# 28 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_4, Route121_Movement_Grunt4Exit
# 29 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 30 "data/maps/Route121/scripts.pory"
	fadedefaultbgm
# 31 "data/maps/Route121/scripts.pory"
	removeobject LOCALID_ROUTE121_GRUNT_1
# 32 "data/maps/Route121/scripts.pory"
	removeobject LOCALID_ROUTE121_GRUNT_2
# 33 "data/maps/Route121/scripts.pory"
	removeobject LOCALID_ROUTE121_GRUNT_3
# 34 "data/maps/Route121/scripts.pory"
	removeobject LOCALID_ROUTE121_GRUNT_4
# 35 "data/maps/Route121/scripts.pory"
	setflag FLAG_HIDE_ROUTE_121_TEAM_AQUA_GRUNTS
# 36 "data/maps/Route121/scripts.pory"
	setvar VAR_ROUTE121_STATE, 1
# 37 "data/maps/Route121/scripts.pory"
	releaseall
# 38 "data/maps/Route121/scripts.pory"
	end
# 39 "data/maps/Route121/scripts.pory"

# 40 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGruntsTriggerInactive::
# 41 "data/maps/Route121/scripts.pory"
	end
# 42 "data/maps/Route121/scripts.pory"

# 43 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGruntWaiting::
# 44 "data/maps/Route121/scripts.pory"
	goto_if_set FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE, Route121_EventScript_AquaGruntAfterShippingHQ
# 45 "data/maps/Route121/scripts.pory"
	lock
# 46 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_AquaGruntsWaiting, MSGBOX_DEFAULT
# 47 "data/maps/Route121/scripts.pory"
	closemessage
# 48 "data/maps/Route121/scripts.pory"
	playse SE_PIN
# 49 "data/maps/Route121/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 50 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 51 "data/maps/Route121/scripts.pory"
	delay 20
# 52 "data/maps/Route121/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 53 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 54 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_AquaGruntsNervous, MSGBOX_DEFAULT
# 55 "data/maps/Route121/scripts.pory"
	closemessage
# 56 "data/maps/Route121/scripts.pory"
	call_if_eq VAR_LAST_TALKED, LOCALID_ROUTE121_GRUNT_1, Route121_EventScript_AquaGrunt1FaceOriginalDirection
# 57 "data/maps/Route121/scripts.pory"
	call_if_eq VAR_LAST_TALKED, LOCALID_ROUTE121_GRUNT_2, Route121_EventScript_AquaGrunt2FaceOriginalDirection
# 58 "data/maps/Route121/scripts.pory"
	call_if_eq VAR_LAST_TALKED, LOCALID_ROUTE121_GRUNT_3, Route121_EventScript_AquaGrunt3FaceOriginalDirection
# 59 "data/maps/Route121/scripts.pory"
	call_if_eq VAR_LAST_TALKED, LOCALID_ROUTE121_GRUNT_4, Route121_EventScript_AquaGrunt4FaceOriginalDirection
# 60 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 61 "data/maps/Route121/scripts.pory"
	release
# 62 "data/maps/Route121/scripts.pory"
	end
# 63 "data/maps/Route121/scripts.pory"

# 64 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGruntAfterShippingHQ::
# 65 "data/maps/Route121/scripts.pory"
	end
# 66 "data/maps/Route121/scripts.pory"

# 67 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGrunt1FaceOriginalDirection::
# 68 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_1, Route121_Movement_Grunt1FaceUp
# 69 "data/maps/Route121/scripts.pory"
	return
# 70 "data/maps/Route121/scripts.pory"

# 71 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGrunt2FaceOriginalDirection::
# 72 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_2, Route121_Movement_Grunt2FaceRight
# 73 "data/maps/Route121/scripts.pory"
	return
# 74 "data/maps/Route121/scripts.pory"

# 75 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGrunt3FaceOriginalDirection::
# 76 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_3, Route121_Movement_Grunt3FaceLeft
# 77 "data/maps/Route121/scripts.pory"
	return
# 78 "data/maps/Route121/scripts.pory"

# 79 "data/maps/Route121/scripts.pory"
Route121_EventScript_AquaGrunt4FaceOriginalDirection::
# 80 "data/maps/Route121/scripts.pory"
	applymovement LOCALID_ROUTE121_GRUNT_4, Route121_Movement_Grunt4FaceDown
# 81 "data/maps/Route121/scripts.pory"
	return
# 82 "data/maps/Route121/scripts.pory"

# 83 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt1Exit:
# 84 "data/maps/Route121/scripts.pory"
	walk_down
# 85 "data/maps/Route121/scripts.pory"
	walk_down
# 86 "data/maps/Route121/scripts.pory"
	walk_down
# 87 "data/maps/Route121/scripts.pory"
	walk_down
# 88 "data/maps/Route121/scripts.pory"
	walk_down
# 89 "data/maps/Route121/scripts.pory"
	walk_down
# 90 "data/maps/Route121/scripts.pory"
	walk_down
# 91 "data/maps/Route121/scripts.pory"
	walk_down
# 92 "data/maps/Route121/scripts.pory"
	step_end
# 93 "data/maps/Route121/scripts.pory"

# 94 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt2Exit:
# 95 "data/maps/Route121/scripts.pory"
	walk_down
# 96 "data/maps/Route121/scripts.pory"
	walk_down
# 97 "data/maps/Route121/scripts.pory"
	walk_down
# 98 "data/maps/Route121/scripts.pory"
	walk_down
# 99 "data/maps/Route121/scripts.pory"
	walk_down
# 100 "data/maps/Route121/scripts.pory"
	walk_down
# 101 "data/maps/Route121/scripts.pory"
	walk_down
# 102 "data/maps/Route121/scripts.pory"
	walk_down
# 103 "data/maps/Route121/scripts.pory"
	step_end
# 104 "data/maps/Route121/scripts.pory"

# 105 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt3Exit:
# 106 "data/maps/Route121/scripts.pory"
	walk_down
# 107 "data/maps/Route121/scripts.pory"
	walk_down
# 108 "data/maps/Route121/scripts.pory"
	walk_down
# 109 "data/maps/Route121/scripts.pory"
	walk_down
# 110 "data/maps/Route121/scripts.pory"
	walk_down
# 111 "data/maps/Route121/scripts.pory"
	walk_down
# 112 "data/maps/Route121/scripts.pory"
	walk_down
# 113 "data/maps/Route121/scripts.pory"
	walk_down
# 114 "data/maps/Route121/scripts.pory"
	step_end
# 115 "data/maps/Route121/scripts.pory"

# 116 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt4Exit:
# 117 "data/maps/Route121/scripts.pory"
	walk_down
# 118 "data/maps/Route121/scripts.pory"
	walk_down
# 119 "data/maps/Route121/scripts.pory"
	walk_down
# 120 "data/maps/Route121/scripts.pory"
	walk_down
# 121 "data/maps/Route121/scripts.pory"
	walk_down
# 122 "data/maps/Route121/scripts.pory"
	walk_down
# 123 "data/maps/Route121/scripts.pory"
	walk_down
# 124 "data/maps/Route121/scripts.pory"
	walk_down
# 125 "data/maps/Route121/scripts.pory"
	step_end
# 126 "data/maps/Route121/scripts.pory"

# 127 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt1FaceUp:
# 128 "data/maps/Route121/scripts.pory"
	face_up
# 129 "data/maps/Route121/scripts.pory"
	step_end
# 130 "data/maps/Route121/scripts.pory"

# 131 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt2FaceRight:
# 132 "data/maps/Route121/scripts.pory"
	face_right
# 133 "data/maps/Route121/scripts.pory"
	step_end
# 134 "data/maps/Route121/scripts.pory"

# 135 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt3FaceLeft:
# 136 "data/maps/Route121/scripts.pory"
	face_left
# 137 "data/maps/Route121/scripts.pory"
	step_end
# 138 "data/maps/Route121/scripts.pory"

# 139 "data/maps/Route121/scripts.pory"
Route121_Movement_Grunt4FaceDown:
# 140 "data/maps/Route121/scripts.pory"
	face_down
# 141 "data/maps/Route121/scripts.pory"
	step_end
# 142 "data/maps/Route121/scripts.pory"

# 143 "data/maps/Route121/scripts.pory"
Route121_EventScript_Vanessa::
# 144 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_VANESSA, Route121_Text_VanessaIntro, Route121_Text_VanessaDefeat
# 145 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_VanessaPostBattle, MSGBOX_AUTOCLOSE
# 146 "data/maps/Route121/scripts.pory"
	end
# 147 "data/maps/Route121/scripts.pory"

# 148 "data/maps/Route121/scripts.pory"
Route121_EventScript_Walter::
# 149 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_WALTER_1, Route121_Text_WalterIntro, Route121_Text_WalterDefeat, Route121_EventScript_RegisterWalter
# 150 "data/maps/Route121/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 151 "data/maps/Route121/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route121_EventScript_RematchWalter
# 152 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_WalterPostBattle, MSGBOX_DEFAULT
# 153 "data/maps/Route121/scripts.pory"
	release
# 154 "data/maps/Route121/scripts.pory"
	end
# 155 "data/maps/Route121/scripts.pory"

# 156 "data/maps/Route121/scripts.pory"
Route121_EventScript_RegisterWalter::
# 157 "data/maps/Route121/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 158 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 159 "data/maps/Route121/scripts.pory"
	@ PokéNav removed msgbox Route121_Text_WalterRegister, MSGBOX_DEFAULT
# 160 "data/maps/Route121/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_WALTER_1
# 161 "data/maps/Route121/scripts.pory"
	release
# 162 "data/maps/Route121/scripts.pory"
	end
# 163 "data/maps/Route121/scripts.pory"

# 164 "data/maps/Route121/scripts.pory"
Route121_EventScript_RematchWalter::
# 165 "data/maps/Route121/scripts.pory"
	trainerbattle_rematch TRAINER_WALTER_1, Route121_Text_WalterRematchIntro, Route121_Text_WalterRematchDefeat
# 166 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_WalterPostRematch, MSGBOX_AUTOCLOSE
# 167 "data/maps/Route121/scripts.pory"
	end
# 168 "data/maps/Route121/scripts.pory"

# 169 "data/maps/Route121/scripts.pory"
Route121_EventScript_Tammy::
# 170 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_TAMMY, Route121_Text_TammyIntro, Route121_Text_TammyDefeat
# 171 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_TammyPostBattle, MSGBOX_AUTOCLOSE
# 172 "data/maps/Route121/scripts.pory"
	end
# 173 "data/maps/Route121/scripts.pory"

# 174 "data/maps/Route121/scripts.pory"
Route121_EventScript_Kate::
# 175 "data/maps/Route121/scripts.pory"
	trainerbattle_double TRAINER_KATE_AND_JOY, Route121_Text_KateIntro, Route121_Text_KateDefeat, Route121_Text_KateNotEnoughMons
# 176 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_KatePostBattle, MSGBOX_AUTOCLOSE
# 177 "data/maps/Route121/scripts.pory"
	end
# 178 "data/maps/Route121/scripts.pory"

# 179 "data/maps/Route121/scripts.pory"
Route121_EventScript_Joy::
# 180 "data/maps/Route121/scripts.pory"
	trainerbattle_double TRAINER_KATE_AND_JOY, Route121_Text_JoyIntro, Route121_Text_JoyDefeat, Route121_Text_JoyNotEnoughMons
# 181 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_JoyPostBattle, MSGBOX_AUTOCLOSE
# 182 "data/maps/Route121/scripts.pory"
	end
# 183 "data/maps/Route121/scripts.pory"

# 184 "data/maps/Route121/scripts.pory"
Route121_EventScript_Jessica::
# 185 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_JESSICA_1, Route121_Text_JessicaIntro, Route121_Text_JessicaDefeat, Route121_EventScript_RegisterJessica
# 186 "data/maps/Route121/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 187 "data/maps/Route121/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route121_EventScript_RematchJessica
# 188 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_JessicaPostBattle, MSGBOX_DEFAULT
# 189 "data/maps/Route121/scripts.pory"
	release
# 190 "data/maps/Route121/scripts.pory"
	end
# 191 "data/maps/Route121/scripts.pory"

# 192 "data/maps/Route121/scripts.pory"
Route121_EventScript_RegisterJessica::
# 193 "data/maps/Route121/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 194 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 195 "data/maps/Route121/scripts.pory"
	@ PokéNav removed msgbox Route121_Text_JessicaRegister, MSGBOX_DEFAULT
# 196 "data/maps/Route121/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_JESSICA_1
# 197 "data/maps/Route121/scripts.pory"
	release
# 198 "data/maps/Route121/scripts.pory"
	end
# 199 "data/maps/Route121/scripts.pory"

# 200 "data/maps/Route121/scripts.pory"
Route121_EventScript_RematchJessica::
# 201 "data/maps/Route121/scripts.pory"
	trainerbattle_rematch TRAINER_JESSICA_1, Route121_Text_JessicaRematchIntro, Route121_Text_JessicaRematchDefeat
# 202 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_JessicaPostRematch, MSGBOX_AUTOCLOSE
# 203 "data/maps/Route121/scripts.pory"
	end
# 204 "data/maps/Route121/scripts.pory"

# 205 "data/maps/Route121/scripts.pory"
Route121_EventScript_Cale::
# 206 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_CALE, Route121_Text_CaleIntro, Route121_Text_CaleDefeat
# 207 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_CalePostBattle, MSGBOX_AUTOCLOSE
# 208 "data/maps/Route121/scripts.pory"
	end
# 209 "data/maps/Route121/scripts.pory"

# 210 "data/maps/Route121/scripts.pory"
Route121_EventScript_Myles::
# 211 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_MYLES, Route121_Text_MylesIntro, Route121_Text_MylesDefeat
# 212 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_MylesPostBattle, MSGBOX_AUTOCLOSE
# 213 "data/maps/Route121/scripts.pory"
	end
# 214 "data/maps/Route121/scripts.pory"

# 215 "data/maps/Route121/scripts.pory"
Route121_EventScript_Pat::
# 216 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_PAT, Route121_Text_PatIntro, Route121_Text_PatDefeat
# 217 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_PatPostBattle, MSGBOX_AUTOCLOSE
# 218 "data/maps/Route121/scripts.pory"
	end
# 219 "data/maps/Route121/scripts.pory"

# 220 "data/maps/Route121/scripts.pory"
Route121_EventScript_Marcel::
# 221 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_MARCEL, Route121_Text_MarcelIntro, Route121_Text_MarcelDefeat
# 222 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_MarcelPostBattle, MSGBOX_AUTOCLOSE
# 223 "data/maps/Route121/scripts.pory"
	end
# 224 "data/maps/Route121/scripts.pory"

# 225 "data/maps/Route121/scripts.pory"
Route121_EventScript_Cristin::
# 226 "data/maps/Route121/scripts.pory"
	trainerbattle_single TRAINER_CRISTIN_1, Route121_Text_CristinIntro, Route121_Text_CristinDefeat, Route121_EventScript_RegisterCristin
# 227 "data/maps/Route121/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 228 "data/maps/Route121/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route121_EventScript_RematchCristin
# 229 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_CristinPostBattle, MSGBOX_DEFAULT
# 230 "data/maps/Route121/scripts.pory"
	release
# 231 "data/maps/Route121/scripts.pory"
	end
# 232 "data/maps/Route121/scripts.pory"

# 233 "data/maps/Route121/scripts.pory"
Route121_EventScript_RegisterCristin::
# 234 "data/maps/Route121/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 235 "data/maps/Route121/scripts.pory"
	waitmovement 0
# 236 "data/maps/Route121/scripts.pory"
	@ PokéNav removed msgbox Route121_Text_CristinRegister, MSGBOX_DEFAULT
# 237 "data/maps/Route121/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_CRISTIN_1
# 238 "data/maps/Route121/scripts.pory"
	release
# 239 "data/maps/Route121/scripts.pory"
	end
# 240 "data/maps/Route121/scripts.pory"

# 241 "data/maps/Route121/scripts.pory"
Route121_EventScript_RematchCristin::
# 242 "data/maps/Route121/scripts.pory"
	trainerbattle_rematch TRAINER_CRISTIN_1, Route121_Text_CristinRematchIntro, Route121_Text_CristinRematchDefeat
# 243 "data/maps/Route121/scripts.pory"
	msgbox Route121_Text_CristinPostRematch, MSGBOX_AUTOCLOSE
# 244 "data/maps/Route121/scripts.pory"
	end
# 245 "data/maps/Route121/scripts.pory"

# 246 "data/maps/Route121/scripts.pory"
Route121_Text_OkayMoveOutToMtPyre:
# 247 "data/maps/Route121/scripts.pory"
	.string "Okay!\n"
# 248 "data/maps/Route121/scripts.pory"
	.string "We're to move out to MT. PYRE!$"
# 249 "data/maps/Route121/scripts.pory"

# 250 "data/maps/Route121/scripts.pory"
Route121_Text_AquaGruntsWaiting:
# 251 "data/maps/Route121/scripts.pory"
	.string "We're still waiting on our people in\n"
# 252 "data/maps/Route121/scripts.pory"
	.string "SLATEPORT at the SEABREEZE SHIPPING\l"
# 253 "data/maps/Route121/scripts.pory"
	.string "HQ to give us the go-ahead.$"
# 254 "data/maps/Route121/scripts.pory"

# 255 "data/maps/Route121/scripts.pory"
Route121_Text_AquaGruntsNervous:
# 256 "data/maps/Route121/scripts.pory"
	.string "Huh?! You heard that?!\p"
# 257 "data/maps/Route121/scripts.pory"
	.string "There's nothing suspicious about the\n"
# 258 "data/maps/Route121/scripts.pory"
	.string "SEABREEZE SHIPPING COMPANY in\l"
# 259 "data/maps/Route121/scripts.pory"
	.string "SLATEPORT! Nothing at all!$"
# 260 "data/maps/Route121/scripts.pory"

# 261 "data/maps/Route121/scripts.pory"
Route121_Text_AheadLoomsMtPyre:
# 262 "data/maps/Route121/scripts.pory"
	.string "Ahead looms MT. PYRE…\p"
# 263 "data/maps/Route121/scripts.pory"
	.string "It is a natural monument to the spirits \n"
# 264 "data/maps/Route121/scripts.pory"
	.string "of departed POKéMON…$"
# 265 "data/maps/Route121/scripts.pory"

# 266 "data/maps/Route121/scripts.pory"
Route121_Text_MtPyrePierSign:
# 267 "data/maps/Route121/scripts.pory"
	.string "MT. PYRE PIER\p"
# 268 "data/maps/Route121/scripts.pory"
	.string "…The sign is old and worn out.\n"
# 269 "data/maps/Route121/scripts.pory"
	.string "The words are barely legible…$"
# 270 "data/maps/Route121/scripts.pory"

# 271 "data/maps/Route121/scripts.pory"
Route121_Text_SafariZoneSign:
# 272 "data/maps/Route121/scripts.pory"
	.string "“Filled with rare POKéMON!”\n"
# 273 "data/maps/Route121/scripts.pory"
	.string "SAFARI ZONE$"
