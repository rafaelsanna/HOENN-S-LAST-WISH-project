# 1 "data/maps/SlateportCity/scripts.pory"

# 2 "data/maps/SlateportCity/scripts.pory"
SlateportCity_MapScripts::
# 3 "data/maps/SlateportCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SlateportCity_OnTransition
# 4 "data/maps/SlateportCity/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SlateportCity_OnFrame
# 5 "data/maps/SlateportCity/scripts.pory"
	.byte 0
# 6 "data/maps/SlateportCity/scripts.pory"

# 7 "data/maps/SlateportCity/scripts.pory"
SlateportCity_OnTransition:
# 8 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_SLATEPORT_MUSEUM_1F_STATE, 0
# 9 "data/maps/SlateportCity/scripts.pory"
	call SlateportCity_EventScript_EnterSlateport
# 10 "data/maps/SlateportCity/scripts.pory"
	call SlateportCity_EventScript_UpdateLukaCargo
# 11 "data/maps/SlateportCity/scripts.pory"
	call SlateportCity_EventScript_UpdateCargoShipReturn
# 12 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_MovePeopleForSternInterview
# 13 "data/maps/SlateportCity/scripts.pory"
	///// call_if_eq VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 1, SlateportCity_EventScript_SetReadyForScottScene /// remove scott 
# 14 "data/maps/SlateportCity/scripts.pory"
	end
# 15 "data/maps/SlateportCity/scripts.pory"

# 16 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_EnterSlateport::
# 17 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_VISITED_SLATEPORT_CITY
# 18 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_CONTEST_HALL_STATE, 0
# 19 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_CONTEST_REPORTER
# 20 "data/maps/SlateportCity/scripts.pory"
	return
# 21 "data/maps/SlateportCity/scripts.pory"

# 22 "data/maps/SlateportCity/scripts.pory"
@ Keep the Slateport Luka object synchronized for both new and existing saves.
# 23 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_UpdateLukaCargo::
# 24 "data/maps/SlateportCity/scripts.pory"
	goto_if_unset FLAG_AQUA_GRUNTS_PETALBURG_DONE, SlateportCity_EventScript_HideLukaCargo
# 25 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_LUKA_CARGO_SHIP_ENCOUNTERED, SlateportCity_EventScript_HideLukaCargo
# 26 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_LUKA_CARGO
# 27 "data/maps/SlateportCity/scripts.pory"
	return
# 28 "data/maps/SlateportCity/scripts.pory"

# 29 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_HideLukaCargo::
# 30 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_LUKA_CARGO
# 31 "data/maps/SlateportCity/scripts.pory"
	return
# 32 "data/maps/SlateportCity/scripts.pory"

# 33 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_UpdateCargoShipReturn::
# 34 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_CARGO_SHIP_EVENT_COMPLETE, SlateportCity_EventScript_HideCargoShipReturn
# 35 "data/maps/SlateportCity/scripts.pory"
	goto_if_unset FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, SlateportCity_EventScript_HideCargoShipReturn
# 36 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 37 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_LUKA_CARGO_RETURN
# 38 "data/maps/SlateportCity/scripts.pory"
	return
# 39 "data/maps/SlateportCity/scripts.pory"

# 40 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_HideCargoShipReturn::
# 41 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_TEMP_2, 0
# 42 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_LUKA_CARGO_RETURN
# 43 "data/maps/SlateportCity/scripts.pory"
	return
# 44 "data/maps/SlateportCity/scripts.pory"

# 45 "data/maps/SlateportCity/scripts.pory"
SlateportCity_OnFrame:
# 46 "data/maps/SlateportCity/scripts.pory"
	map_script_2 VAR_TEMP_2, 1, SlateportCity_EventScript_CargoShipReturn
# 47 "data/maps/SlateportCity/scripts.pory"
	/////////// map_script_2 VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 1, SlateportCity_EventScript_ScottScene //// remove scott
# 48 "data/maps/SlateportCity/scripts.pory"
	.2byte 0
# 49 "data/maps/SlateportCity/scripts.pory"

# 50 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_CargoShipReturn::
# 51 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_TEMP_2, 0
# 52 "data/maps/SlateportCity/scripts.pory"
	lockall
# 53 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_LUKA_CARGO_RETURN, Common_Movement_FaceLeft
# 54 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 55 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 56 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_LukaCargoShipReturn, MSGBOX_DEFAULT
# 57 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 58 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_LUKA_CARGO_RETURN, SlateportCity_Movement_LukaCargoReturnExit
# 59 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 60 "data/maps/SlateportCity/scripts.pory"
	removeobject LOCALID_SLATEPORT_LUKA_CARGO_RETURN
# 61 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_LUKA_CARGO_RETURN
# 62 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_CARGO_SHIP_EVENT_COMPLETE
# 63 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 64 "data/maps/SlateportCity/scripts.pory"
	end
# 65 "data/maps/SlateportCity/scripts.pory"

# 66 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargo::
# 67 "data/maps/SlateportCity/scripts.pory"
	lock
# 68 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 69 "data/maps/SlateportCity/scripts.pory"
	goto_if_unset FLAG_LUKA_SLATEPORT_CARGO_INTRO, SlateportCity_EventScript_LukaCargoFirstTalk
# 70 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_LukaCargoRepeat, MSGBOX_DEFAULT
# 71 "data/maps/SlateportCity/scripts.pory"
	release
# 72 "data/maps/SlateportCity/scripts.pory"
	end
# 73 "data/maps/SlateportCity/scripts.pory"

# 74 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoFirstTalk::
# 75 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_LukaCargoIntro, MSGBOX_DEFAULT
# 76 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_LUKA_SLATEPORT_CARGO_INTRO
# 77 "data/maps/SlateportCity/scripts.pory"
	release
# 78 "data/maps/SlateportCity/scripts.pory"
	end
# 79 "data/maps/SlateportCity/scripts.pory"

# 80 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoTrigger::
# 81 "data/maps/SlateportCity/scripts.pory"
	goto_if_unset FLAG_AQUA_GRUNTS_PETALBURG_DONE, SlateportCity_EventScript_LukaCargoTriggerDone
# 82 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_LUKA_SLATEPORT_CARGO_INTRO, SlateportCity_EventScript_LukaCargoTriggerDone
# 83 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_LUKA_CARGO_SHIP_ENCOUNTERED, SlateportCity_EventScript_LukaCargoTriggerDone
# 84 "data/maps/SlateportCity/scripts.pory"
	lockall
# 85 "data/maps/SlateportCity/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 86 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_0x8004, 37, SlateportCity_EventScript_LukaCargoPath37
# 87 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_0x8004, 39, SlateportCity_EventScript_LukaCargoPath39
# 88 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_0x8004, 40, SlateportCity_EventScript_LukaCargoPath40
# 89 "data/maps/SlateportCity/scripts.pory"

# 90 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoPath38:
# 91 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_LUKA_CARGO, SlateportCity_Movement_LukaCargoToPlayer38
# 92 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_LukaCargoStartDialogue
# 93 "data/maps/SlateportCity/scripts.pory"

# 94 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoPath37:
# 95 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_LUKA_CARGO, SlateportCity_Movement_LukaCargoToPlayer37
# 96 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_LukaCargoStartDialogue
# 97 "data/maps/SlateportCity/scripts.pory"

# 98 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoPath39:
# 99 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_LUKA_CARGO, SlateportCity_Movement_LukaCargoToPlayer39
# 100 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_LukaCargoStartDialogue
# 101 "data/maps/SlateportCity/scripts.pory"

# 102 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoPath40:
# 103 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_LUKA_CARGO, SlateportCity_Movement_LukaCargoToPlayer40
# 104 "data/maps/SlateportCity/scripts.pory"

# 105 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoStartDialogue:
# 106 "data/maps/SlateportCity/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 107 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 108 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_LukaCargoIntro, MSGBOX_DEFAULT
# 109 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_LUKA_SLATEPORT_CARGO_INTRO
# 110 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 111 "data/maps/SlateportCity/scripts.pory"
	end
# 112 "data/maps/SlateportCity/scripts.pory"

# 113 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_LukaCargoTriggerDone::
# 114 "data/maps/SlateportCity/scripts.pory"
	end
# 115 "data/maps/SlateportCity/scripts.pory"

# 116 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_LukaCargoToPlayer37:
# 117 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 118 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 119 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 120 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 121 "data/maps/SlateportCity/scripts.pory"
	step_end
# 122 "data/maps/SlateportCity/scripts.pory"

# 123 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_LukaCargoToPlayer38:
# 124 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 125 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 126 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 127 "data/maps/SlateportCity/scripts.pory"
	step_end
# 128 "data/maps/SlateportCity/scripts.pory"

# 129 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_LukaCargoToPlayer39:
# 130 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 131 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 132 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 133 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 134 "data/maps/SlateportCity/scripts.pory"
	step_end
# 135 "data/maps/SlateportCity/scripts.pory"

# 136 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_LukaCargoToPlayer40:
# 137 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 138 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 139 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 140 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 141 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 142 "data/maps/SlateportCity/scripts.pory"
	step_end
# 143 "data/maps/SlateportCity/scripts.pory"

# 144 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_LukaCargoReturnExit:
# 145 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 146 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 147 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 148 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 149 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 150 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 151 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 152 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 153 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 154 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 155 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 156 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 157 "data/maps/SlateportCity/scripts.pory"
	step_end
# 158 "data/maps/SlateportCity/scripts.pory"

# 159 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_MovePeopleForSternInterview::
# 160 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_CAPT_STERN, 28, 13
# 161 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_OLD_WOMAN, 25, 13
# 162 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_RICH_BOY, 25, 14
# 163 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_COOK, 27, 16
# 164 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_GIRL, 28, 16
# 165 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_FAT_MAN, 29, 16
# 166 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_MAN_1, 31, 14
# 167 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_CAPT_STERN, MOVEMENT_TYPE_FACE_DOWN
# 168 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_OLD_WOMAN, MOVEMENT_TYPE_FACE_DOWN_AND_RIGHT
# 169 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_RICH_BOY, MOVEMENT_TYPE_FACE_UP_AND_RIGHT
# 170 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_COOK, MOVEMENT_TYPE_FACE_UP
# 171 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_GIRL, MOVEMENT_TYPE_FACE_UP
# 172 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_FAT_MAN, MOVEMENT_TYPE_FACE_UP
# 173 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_MAN_1, MOVEMENT_TYPE_FACE_LEFT
# 174 "data/maps/SlateportCity/scripts.pory"
	return
# 175 "data/maps/SlateportCity/scripts.pory"

# 176 "data/maps/SlateportCity/scripts.pory"
/////SlateportCity_EventScript_SetReadyForScottScene:: /// remove scott 
# 177 "data/maps/SlateportCity/scripts.pory"
	/////setflag FLAG_HIDE_MAP_NAME_POPUP
# 178 "data/maps/SlateportCity/scripts.pory"
	/////getplayerxy VAR_0x8004, VAR_0x8005
# 179 "data/maps/SlateportCity/scripts.pory"
	/////goto_if_eq VAR_0x8004, 30, SlateportCity_EventScript_MoveScottLeft
# 180 "data/maps/SlateportCity/scripts.pory"
	////setobjectxyperm LOCALID_SLATEPORT_SCOTT, 23, 27
# 181 "data/maps/SlateportCity/scripts.pory"
	////setobjectmovementtype LOCALID_SLATEPORT_SCOTT, MOVEMENT_TYPE_FACE_RIGHT
# 182 "data/maps/SlateportCity/scripts.pory"
	////return
# 183 "data/maps/SlateportCity/scripts.pory"

# 184 "data/maps/SlateportCity/scripts.pory"
////SlateportCity_EventScript_MoveScottLeft:: /// remove scott 
# 185 "data/maps/SlateportCity/scripts.pory"
	////setobjectxyperm LOCALID_SLATEPORT_SCOTT, 22, 27
# 186 "data/maps/SlateportCity/scripts.pory"
	////setobjectmovementtype LOCALID_SLATEPORT_SCOTT, MOVEMENT_TYPE_FACE_RIGHT
# 187 "data/maps/SlateportCity/scripts.pory"
	////return
# 188 "data/maps/SlateportCity/scripts.pory"

# 189 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ScottScene::
# 190 "data/maps/SlateportCity/scripts.pory"
	lockall
# 191 "data/maps/SlateportCity/scripts.pory"
	addobject LOCALID_SLATEPORT_SCOTT
# 192 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Movement_PlayerFaceScott
# 193 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_SCOTT, SlateportCity_Movement_ScottApproachPlayer
# 194 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 195 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_YouDroveTeamAquaAway, MSGBOX_DEFAULT
# 196 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 197 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_SCOTT, Common_Movement_WalkInPlaceFasterLeft
# 198 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 199 "data/maps/SlateportCity/scripts.pory"
	delay 60
# 200 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_MaybeThisTrainer, MSGBOX_DEFAULT
# 201 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_SCOTT, Common_Movement_WalkInPlaceFasterRight
# 202 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 203 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed msgbox SlateportCity_Text_LetsRegisterEachOther, MSGBOX_DEFAULT
# 204 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed closemessage
# 205 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed delay 30
# 206 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 207 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed msgbox SlateportCity_Text_RegisteredScott, MSGBOX_DEFAULT
# 208 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed waitfanfare
# 209 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed closemessage
# 210 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed delay 30
# 211 "data/maps/SlateportCity/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_SCOTT_MATCH_CALL
# 212 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_KeepEyeOnTrainersBeSeeingYou, MSGBOX_DEFAULT
# 213 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 214 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_SCOTT, SlateportCity_Movement_ScottExit
# 215 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 216 "data/maps/SlateportCity/scripts.pory"
	removeobject LOCALID_SLATEPORT_SCOTT
# 217 "data/maps/SlateportCity/scripts.pory"
	setobjectxyperm LOCALID_SLATEPORT_SCOTT, 10, 12
# 218 "data/maps/SlateportCity/scripts.pory"
	setobjectmovementtype LOCALID_SLATEPORT_SCOTT, MOVEMENT_TYPE_FACE_DOWN
# 219 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 220 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 2
# 221 "data/maps/SlateportCity/scripts.pory"
	addvar VAR_SCOTT_STATE, 1
# 222 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 223 "data/maps/SlateportCity/scripts.pory"
	end
# 224 "data/maps/SlateportCity/scripts.pory"

# 225 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_PlayerFaceScott:
# 226 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 227 "data/maps/SlateportCity/scripts.pory"
	delay_8
# 228 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_left
# 229 "data/maps/SlateportCity/scripts.pory"
	step_end
# 230 "data/maps/SlateportCity/scripts.pory"

# 231 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_ScottApproachPlayer:
# 232 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 233 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 234 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 235 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 236 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 237 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 238 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 239 "data/maps/SlateportCity/scripts.pory"
	step_end
# 240 "data/maps/SlateportCity/scripts.pory"

# 241 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_ScottExit:
# 242 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 243 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 244 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 245 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 246 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 247 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 248 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 249 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 250 "data/maps/SlateportCity/scripts.pory"
	step_end
# 251 "data/maps/SlateportCity/scripts.pory"

# 252 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_EnergyGuru::
# 253 "data/maps/SlateportCity/scripts.pory"
	lock
# 254 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 255 "data/maps/SlateportCity/scripts.pory"
	message SlateportCity_Text_EnergyGuruSellWhatYouNeed
# 256 "data/maps/SlateportCity/scripts.pory"
	waitmessage
# 257 "data/maps/SlateportCity/scripts.pory"
	pokemart SlateportCity_Pokemart_EnergyGuru
# 258 "data/maps/SlateportCity/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 259 "data/maps/SlateportCity/scripts.pory"
	release
# 260 "data/maps/SlateportCity/scripts.pory"
	end
# 261 "data/maps/SlateportCity/scripts.pory"

# 262 "data/maps/SlateportCity/scripts.pory"
	.align 2
# 263 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Pokemart_EnergyGuru:
# 264 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_EVERSTONE
# 265 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_FIRE_STONE
# 266 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_WATER_STONE
# 267 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_THUNDER_STONE
# 268 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_LEAF_STONE
# 269 "data/maps/SlateportCity/scripts.pory"
	pokemartlistend
# 270 "data/maps/SlateportCity/scripts.pory"

# 271 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_EffortRibbonWoman::
# 272 "data/maps/SlateportCity/scripts.pory"
	lock
# 273 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 274 "data/maps/SlateportCity/scripts.pory"
	bufferleadmonspeciesname STR_VAR_1
# 275 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_OhYourPokemon, MSGBOX_DEFAULT
# 276 "data/maps/SlateportCity/scripts.pory"
	specialvar VAR_RESULT, LeadMonHasEffortRibbon
# 277 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, SlateportCity_EventScript_MonHasEffortRibbon
# 278 "data/maps/SlateportCity/scripts.pory"
	specialvar VAR_RESULT, Special_AreLeadMonEVsMaxedOut
# 279 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, SlateportCity_EventScript_MonEVsNotMaxed
# 280 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_PleaseGiveItThisEffortRibbon, MSGBOX_DEFAULT
# 281 "data/maps/SlateportCity/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 282 "data/maps/SlateportCity/scripts.pory"
	message SlateportCity_Text_ReceivedEffortRibbon
# 283 "data/maps/SlateportCity/scripts.pory"
	waitfanfare
# 284 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_PutEffortRibbonOnMon, MSGBOX_DEFAULT
# 285 "data/maps/SlateportCity/scripts.pory"
	special GiveLeadMonEffortRibbon
# 286 "data/maps/SlateportCity/scripts.pory"
	release
# 287 "data/maps/SlateportCity/scripts.pory"
	end
# 288 "data/maps/SlateportCity/scripts.pory"

# 289 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_MonEVsNotMaxed::
# 290 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_GoForItLittleHarder, MSGBOX_DEFAULT
# 291 "data/maps/SlateportCity/scripts.pory"
	release
# 292 "data/maps/SlateportCity/scripts.pory"
	end
# 293 "data/maps/SlateportCity/scripts.pory"

# 294 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_MonHasEffortRibbon::
# 295 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_EffortRibbonLooksGoodOnIt, MSGBOX_DEFAULT
# 296 "data/maps/SlateportCity/scripts.pory"
	release
# 297 "data/maps/SlateportCity/scripts.pory"
	end
# 298 "data/maps/SlateportCity/scripts.pory"

# 299 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Cook::
# 300 "data/maps/SlateportCity/scripts.pory"
	lock
# 301 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 302 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_CookSternInterview
# 303 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SeaweedFullOfLife, MSGBOX_DEFAULT
# 304 "data/maps/SlateportCity/scripts.pory"
	release
# 305 "data/maps/SlateportCity/scripts.pory"
	end
# 306 "data/maps/SlateportCity/scripts.pory"

# 307 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_CookSternInterview::
# 308 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_CaptainComeBackWithBigFish, MSGBOX_DEFAULT
# 309 "data/maps/SlateportCity/scripts.pory"
	release
# 310 "data/maps/SlateportCity/scripts.pory"
	end
# 311 "data/maps/SlateportCity/scripts.pory"

# 312 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_OldWoman::
# 313 "data/maps/SlateportCity/scripts.pory"
	lock
# 314 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 315 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_OldWomanSternInterview
# 316 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_HowTownIsBornAndGrows, MSGBOX_DEFAULT
# 317 "data/maps/SlateportCity/scripts.pory"
	release
# 318 "data/maps/SlateportCity/scripts.pory"
	end
# 319 "data/maps/SlateportCity/scripts.pory"

# 320 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_OldWomanSternInterview::
# 321 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_CaptSternBeingInterviewed, MSGBOX_DEFAULT
# 322 "data/maps/SlateportCity/scripts.pory"
	release
# 323 "data/maps/SlateportCity/scripts.pory"
	end
# 324 "data/maps/SlateportCity/scripts.pory"

# 325 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Girl::
# 326 "data/maps/SlateportCity/scripts.pory"
	lock
# 327 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 328 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_GirlSternInterview
# 329 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_RECEIVED_SECRET_POWER, SlateportCity_EventScript_GirlSecretBase
# 330 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SlateportWonderfulPlace, MSGBOX_DEFAULT
# 331 "data/maps/SlateportCity/scripts.pory"
	release
# 332 "data/maps/SlateportCity/scripts.pory"
	end
# 333 "data/maps/SlateportCity/scripts.pory"

# 334 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_GirlSternInterview::
# 335 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_InterviewerSoCool, MSGBOX_DEFAULT
# 336 "data/maps/SlateportCity/scripts.pory"
	release
# 337 "data/maps/SlateportCity/scripts.pory"
	end
# 338 "data/maps/SlateportCity/scripts.pory"

# 339 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_GirlSecretBase::
# 340 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BuyBricksSoDecorWontGetDirty, MSGBOX_DEFAULT
# 341 "data/maps/SlateportCity/scripts.pory"
	release
# 342 "data/maps/SlateportCity/scripts.pory"
	end
# 343 "data/maps/SlateportCity/scripts.pory"

# 344 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_RichBoy::
# 345 "data/maps/SlateportCity/scripts.pory"
	lock
# 346 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 347 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_RichBoySternInterview
# 348 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_GoingToCompeteInBattleTent, MSGBOX_DEFAULT
# 349 "data/maps/SlateportCity/scripts.pory"
	release
# 350 "data/maps/SlateportCity/scripts.pory"
	end
# 351 "data/maps/SlateportCity/scripts.pory"

# 352 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_RichBoySternInterview::
# 353 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternSaysDiscoveredSomething, MSGBOX_DEFAULT
# 354 "data/maps/SlateportCity/scripts.pory"
	release
# 355 "data/maps/SlateportCity/scripts.pory"
	end
# 356 "data/maps/SlateportCity/scripts.pory"

# 357 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_FatMan::
# 358 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_FatManSternInterview
# 359 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BushedHikingFromMauville, MSGBOX_NPC
# 360 "data/maps/SlateportCity/scripts.pory"
	end
# 361 "data/maps/SlateportCity/scripts.pory"

# 362 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_FatManSternInterview::
# 363 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_AmIOnTV, MSGBOX_SIGN
# 364 "data/maps/SlateportCity/scripts.pory"
	end
# 365 "data/maps/SlateportCity/scripts.pory"

# 366 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Man1::
# 367 "data/maps/SlateportCity/scripts.pory"
	lock
# 368 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 369 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_Man1SternInterview
# 370 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_EveryoneCallsHimCaptStern, MSGBOX_DEFAULT
# 371 "data/maps/SlateportCity/scripts.pory"
	release
# 372 "data/maps/SlateportCity/scripts.pory"
	end
# 373 "data/maps/SlateportCity/scripts.pory"

# 374 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Man1SternInterview::
# 375 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_CaptainsACelebrity, MSGBOX_DEFAULT
# 376 "data/maps/SlateportCity/scripts.pory"
	release
# 377 "data/maps/SlateportCity/scripts.pory"
	end
# 378 "data/maps/SlateportCity/scripts.pory"

# 379 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Woman1::
# 380 "data/maps/SlateportCity/scripts.pory"
	lock
# 381 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 382 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_DOCK_REJECTED_DEVON_GOODS, SlateportCity_EventScript_Woman1AquaGone
# 383 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_WhatsLongLineOverThere, MSGBOX_DEFAULT
# 384 "data/maps/SlateportCity/scripts.pory"
	release
# 385 "data/maps/SlateportCity/scripts.pory"
	end
# 386 "data/maps/SlateportCity/scripts.pory"

# 387 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Woman1AquaGone::
# 388 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_VisitedMuseumOften, MSGBOX_DEFAULT
# 389 "data/maps/SlateportCity/scripts.pory"
	release
# 390 "data/maps/SlateportCity/scripts.pory"
	end
# 391 "data/maps/SlateportCity/scripts.pory"

# 392 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_BattleTentSign::
# 393 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BattleTentSign, MSGBOX_SIGN
# 394 "data/maps/SlateportCity/scripts.pory"
	end
# 395 "data/maps/SlateportCity/scripts.pory"

# 396 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_SternsShipyardSign::
# 397 "data/maps/SlateportCity/scripts.pory"
	lockall
# 398 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, SlateportCity_EventScript_SternsShipyardFerryComplete
# 399 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, SlateportCity_EventScript_SternsShipyardNearsCompletion
# 400 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternsShipyardWantedSign, MSGBOX_DEFAULT
# 401 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 402 "data/maps/SlateportCity/scripts.pory"
	end
# 403 "data/maps/SlateportCity/scripts.pory"

# 404 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_SternsShipyardNearsCompletion::
# 405 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternsShipyardNearsCompletion, MSGBOX_DEFAULT
# 406 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 407 "data/maps/SlateportCity/scripts.pory"
	end
# 408 "data/maps/SlateportCity/scripts.pory"

# 409 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_SternsShipyardFerryComplete::
# 410 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternsShipyardFerryComplete, MSGBOX_DEFAULT
# 411 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 412 "data/maps/SlateportCity/scripts.pory"
	end
# 413 "data/maps/SlateportCity/scripts.pory"

# 414 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_PokemonFanClubSign::
# 415 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_PokemonFanClubSign, MSGBOX_SIGN
# 416 "data/maps/SlateportCity/scripts.pory"
	end
# 417 "data/maps/SlateportCity/scripts.pory"

# 418 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_OceanicMuseumSign::
# 419 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_OceanicMuseumSign, MSGBOX_SIGN
# 420 "data/maps/SlateportCity/scripts.pory"
	end
# 421 "data/maps/SlateportCity/scripts.pory"

# 422 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_CitySign::
# 423 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_CitySign, MSGBOX_SIGN
# 424 "data/maps/SlateportCity/scripts.pory"
	end
# 425 "data/maps/SlateportCity/scripts.pory"

# 426 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_MarketSign::
# 427 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_MarketSign, MSGBOX_SIGN
# 428 "data/maps/SlateportCity/scripts.pory"
	end
# 429 "data/maps/SlateportCity/scripts.pory"

# 430 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_HarborSign::
# 431 "data/maps/SlateportCity/scripts.pory"
	lockall
# 432 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, SlateportCity_EventScript_HarborSignFerryComplete
# 433 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_HarborFerryUnderConstruction, MSGBOX_DEFAULT
# 434 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 435 "data/maps/SlateportCity/scripts.pory"
	end
# 436 "data/maps/SlateportCity/scripts.pory"

# 437 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_HarborSignFerryComplete::
# 438 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_HarborSign, MSGBOX_DEFAULT
# 439 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 440 "data/maps/SlateportCity/scripts.pory"
	end
# 441 "data/maps/SlateportCity/scripts.pory"

# 442 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_NameRatersHouseSign::
# 443 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_NameRatersHouseSign, MSGBOX_SIGN
# 444 "data/maps/SlateportCity/scripts.pory"
	end
# 445 "data/maps/SlateportCity/scripts.pory"

# 446 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Maniac::
# 447 "data/maps/SlateportCity/scripts.pory"
	lock
# 448 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 449 "data/maps/SlateportCity/scripts.pory"
	call_if_eq VAR_SLATEPORT_CITY_STATE, 1, SlateportCity_EventScript_ManiacSternInterview
# 450 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_GetNameRaterToHelpYou, MSGBOX_DEFAULT
# 451 "data/maps/SlateportCity/scripts.pory"
	release
# 452 "data/maps/SlateportCity/scripts.pory"
	end
# 453 "data/maps/SlateportCity/scripts.pory"

# 454 "data/maps/SlateportCity/scripts.pory"
@ Unclear if the text here was meant to be different, but its not
# 455 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ManiacSternInterview::
# 456 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_GetNameRaterToHelpYou, MSGBOX_DEFAULT
# 457 "data/maps/SlateportCity/scripts.pory"
	release
# 458 "data/maps/SlateportCity/scripts.pory"
	end
# 459 "data/maps/SlateportCity/scripts.pory"

# 460 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Woman2::
# 461 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_CantChangeTradeMonName, MSGBOX_NPC
# 462 "data/maps/SlateportCity/scripts.pory"
	end
# 463 "data/maps/SlateportCity/scripts.pory"

# 464 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Sailor1::
# 465 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SeaIsSoWet, MSGBOX_NPC
# 466 "data/maps/SlateportCity/scripts.pory"
	end
# 467 "data/maps/SlateportCity/scripts.pory"

# 468 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Sailor2::
# 469 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SinkOldBoats, MSGBOX_NPC
# 470 "data/maps/SlateportCity/scripts.pory"
	end
# 471 "data/maps/SlateportCity/scripts.pory"

# 472 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_PokefanF::
# 473 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BuyTooMuch, MSGBOX_NPC
# 474 "data/maps/SlateportCity/scripts.pory"
	end
# 475 "data/maps/SlateportCity/scripts.pory"

# 476 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Man2::
# 477 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BattleTentBuiltRecently, MSGBOX_NPC
# 478 "data/maps/SlateportCity/scripts.pory"
	end
# 479 "data/maps/SlateportCity/scripts.pory"

# 480 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt1::
# 481 "data/maps/SlateportCity/scripts.pory"
	lock
# 482 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 483 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_QuitPushing, MSGBOX_DEFAULT
# 484 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 485 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_1, Common_Movement_FaceOriginalDirection
# 486 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 487 "data/maps/SlateportCity/scripts.pory"
	release
# 488 "data/maps/SlateportCity/scripts.pory"
	end
# 489 "data/maps/SlateportCity/scripts.pory"

# 490 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt2::
# 491 "data/maps/SlateportCity/scripts.pory"
	lock
# 492 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 493 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_AquaHasPolicy, MSGBOX_DEFAULT
# 494 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 495 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_2, Common_Movement_FaceOriginalDirection
# 496 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 497 "data/maps/SlateportCity/scripts.pory"
	release
# 498 "data/maps/SlateportCity/scripts.pory"
	end
# 499 "data/maps/SlateportCity/scripts.pory"

# 500 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt3::
# 501 "data/maps/SlateportCity/scripts.pory"
	lock
# 502 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 503 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BossIsBrilliant, MSGBOX_DEFAULT
# 504 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 505 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_3, Common_Movement_FaceOriginalDirection
# 506 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 507 "data/maps/SlateportCity/scripts.pory"
	release
# 508 "data/maps/SlateportCity/scripts.pory"
	end
# 509 "data/maps/SlateportCity/scripts.pory"

# 510 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt4::
# 511 "data/maps/SlateportCity/scripts.pory"
	lock
# 512 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 513 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_WhatsNewSchemeIWonder, MSGBOX_DEFAULT
# 514 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 515 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_4, Common_Movement_FaceOriginalDirection
# 516 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 517 "data/maps/SlateportCity/scripts.pory"
	release
# 518 "data/maps/SlateportCity/scripts.pory"
	end
# 519 "data/maps/SlateportCity/scripts.pory"

# 520 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt5::
# 521 "data/maps/SlateportCity/scripts.pory"
	lock
# 522 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 523 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ShouldTakeItAll, MSGBOX_DEFAULT
# 524 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 525 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_5, Common_Movement_FaceOriginalDirection
# 526 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 527 "data/maps/SlateportCity/scripts.pory"
	release
# 528 "data/maps/SlateportCity/scripts.pory"
	end
# 529 "data/maps/SlateportCity/scripts.pory"

# 530 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt6::
# 531 "data/maps/SlateportCity/scripts.pory"
	lock
# 532 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 533 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_DontButtIn, MSGBOX_DEFAULT
# 534 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 535 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_6, Common_Movement_FaceOriginalDirection
# 536 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 537 "data/maps/SlateportCity/scripts.pory"
	release
# 538 "data/maps/SlateportCity/scripts.pory"
	end
# 539 "data/maps/SlateportCity/scripts.pory"

# 540 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt7::
# 541 "data/maps/SlateportCity/scripts.pory"
	lock
# 542 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 543 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_RemindsMeOfLongLineForGames, MSGBOX_DEFAULT
# 544 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 545 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_7, Common_Movement_FaceOriginalDirection
# 546 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 547 "data/maps/SlateportCity/scripts.pory"
	release
# 548 "data/maps/SlateportCity/scripts.pory"
	end
# 549 "data/maps/SlateportCity/scripts.pory"

# 550 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt8::
# 551 "data/maps/SlateportCity/scripts.pory"
	lock
# 552 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 553 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_WhyAreWeLiningUp, MSGBOX_DEFAULT
# 554 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 555 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_8, Common_Movement_FaceOriginalDirection
# 556 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 557 "data/maps/SlateportCity/scripts.pory"
	release
# 558 "data/maps/SlateportCity/scripts.pory"
	end
# 559 "data/maps/SlateportCity/scripts.pory"

# 560 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt9::
# 561 "data/maps/SlateportCity/scripts.pory"
	lock
# 562 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 563 "data/maps/SlateportCity/scripts.pory"
	playse SE_PIN
# 564 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_ExclamationMark
# 565 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 566 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_Delay48
# 567 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 568 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_WhatDoYouWant, MSGBOX_DEFAULT
# 569 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 570 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_FaceOriginalDirection
# 571 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 572 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, SlateportCity_Movement_DelayAquaGrunt
# 573 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 574 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_FacePlayer
# 575 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 576 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_IllReadSignForYou, MSGBOX_DEFAULT
# 577 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 578 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_FaceOriginalDirection
# 579 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 580 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, SlateportCity_Movement_DelayAquaGrunt
# 581 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 582 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SaysSomethingLikeSeaIsEndless, MSGBOX_DEFAULT
# 583 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 584 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_FacePlayer
# 585 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 586 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, SlateportCity_Movement_DelayAquaGrunt
# 587 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 588 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_9, Common_Movement_FaceOriginalDirection
# 589 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 590 "data/maps/SlateportCity/scripts.pory"
	release
# 591 "data/maps/SlateportCity/scripts.pory"
	end
# 592 "data/maps/SlateportCity/scripts.pory"

# 593 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_DelayAquaGrunt:
# 594 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 595 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 596 "data/maps/SlateportCity/scripts.pory"
	step_end
# 597 "data/maps/SlateportCity/scripts.pory"

# 598 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt10::
# 599 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ShouldveBroughtMyGameBoy, MSGBOX_SIGN
# 600 "data/maps/SlateportCity/scripts.pory"
	end
# 601 "data/maps/SlateportCity/scripts.pory"

# 602 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_AquaGrunt11::
# 603 "data/maps/SlateportCity/scripts.pory"
	lock
# 604 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 605 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_HotSpringsAfterOperation, MSGBOX_DEFAULT
# 606 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 607 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GRUNT_11, Common_Movement_FaceOriginalDirection
# 608 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 609 "data/maps/SlateportCity/scripts.pory"
	release
# 610 "data/maps/SlateportCity/scripts.pory"
	end
# 611 "data/maps/SlateportCity/scripts.pory"

# 612 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_DollClerk::
# 613 "data/maps/SlateportCity/scripts.pory"
	lock
# 614 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 615 "data/maps/SlateportCity/scripts.pory"
	message gText_HowMayIServeYou
# 616 "data/maps/SlateportCity/scripts.pory"
	waitmessage
# 617 "data/maps/SlateportCity/scripts.pory"
	pokemartdecoration SlateportCity_PokemartDecor_Dolls
# 618 "data/maps/SlateportCity/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 619 "data/maps/SlateportCity/scripts.pory"
	release
# 620 "data/maps/SlateportCity/scripts.pory"
	end
# 621 "data/maps/SlateportCity/scripts.pory"

# 622 "data/maps/SlateportCity/scripts.pory"
	.align 2
# 623 "data/maps/SlateportCity/scripts.pory"
SlateportCity_PokemartDecor_Dolls:
# 624 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_AZURILL_DOLL
# 625 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_MARILL_DOLL
# 626 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_SKITTY_DOLL
# 627 "data/maps/SlateportCity/scripts.pory"
	pokemartlistend
# 628 "data/maps/SlateportCity/scripts.pory"

# 629 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ComeBackWithSecretPower::
# 630 "data/maps/SlateportCity/scripts.pory"
	msgbox gText_ComeBackWithSecretPower, MSGBOX_DEFAULT
# 631 "data/maps/SlateportCity/scripts.pory"
	release
# 632 "data/maps/SlateportCity/scripts.pory"
	end
# 633 "data/maps/SlateportCity/scripts.pory"

# 634 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_DecorClerk::
# 635 "data/maps/SlateportCity/scripts.pory"
	lock
# 636 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 637 "data/maps/SlateportCity/scripts.pory"
	goto_if_unset FLAG_RECEIVED_SECRET_POWER, SlateportCity_EventScript_ComeBackWithSecretPower
# 638 "data/maps/SlateportCity/scripts.pory"
	message gText_HowMayIServeYou
# 639 "data/maps/SlateportCity/scripts.pory"
	waitmessage
# 640 "data/maps/SlateportCity/scripts.pory"
	pokemartdecoration SlateportCity_PokemartDecor
# 641 "data/maps/SlateportCity/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 642 "data/maps/SlateportCity/scripts.pory"
	release
# 643 "data/maps/SlateportCity/scripts.pory"
	end
# 644 "data/maps/SlateportCity/scripts.pory"

# 645 "data/maps/SlateportCity/scripts.pory"
	.align 2
# 646 "data/maps/SlateportCity/scripts.pory"
SlateportCity_PokemartDecor:
# 647 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_RED_BRICK
# 648 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_BLUE_BRICK
# 649 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_YELLOW_BRICK
# 650 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_RED_BALLOON
# 651 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_BLUE_BALLOON
# 652 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_YELLOW_BALLOON
# 653 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_C_LOW_NOTE_MAT
# 654 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_D_NOTE_MAT
# 655 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_E_NOTE_MAT
# 656 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_F_NOTE_MAT
# 657 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_G_NOTE_MAT
# 658 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_A_NOTE_MAT
# 659 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_B_NOTE_MAT
# 660 "data/maps/SlateportCity/scripts.pory"
	.2byte DECOR_C_HIGH_NOTE_MAT
# 661 "data/maps/SlateportCity/scripts.pory"
	pokemartlistend
# 662 "data/maps/SlateportCity/scripts.pory"

# 663 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_PowerTMClerk::
# 664 "data/maps/SlateportCity/scripts.pory"
	lock
# 665 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 666 "data/maps/SlateportCity/scripts.pory"
	message gText_HowMayIServeYou
# 667 "data/maps/SlateportCity/scripts.pory"
	waitmessage
# 668 "data/maps/SlateportCity/scripts.pory"
	pokemart SlateportCity_Pokemart_PowerTMs
# 669 "data/maps/SlateportCity/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 670 "data/maps/SlateportCity/scripts.pory"
	release
# 671 "data/maps/SlateportCity/scripts.pory"
	end
# 672 "data/maps/SlateportCity/scripts.pory"

# 673 "data/maps/SlateportCity/scripts.pory"
	.align 2
# 674 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Pokemart_PowerTMs:
# 675 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_TM_HIDDEN_POWER
# 676 "data/maps/SlateportCity/scripts.pory"
	.2byte ITEM_TM_SECRET_POWER
# 677 "data/maps/SlateportCity/scripts.pory"
	pokemartlistend
# 678 "data/maps/SlateportCity/scripts.pory"

# 679 "data/maps/SlateportCity/scripts.pory"
@ Scene with Capt Sterns interview and Team Aqua announcing plans to steal Submarine
# 680 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_CaptStern::
# 681 "data/maps/SlateportCity/scripts.pory"
	lockall
# 682 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternMoveAheadWithExploration, MSGBOX_DEFAULT
# 683 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_GabbyWonderfulThanksForInterview, MSGBOX_DEFAULT
# 684 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 685 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GABBY, Common_Movement_WalkInPlaceFasterRight
# 686 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 687 "data/maps/SlateportCity/scripts.pory"
	delay 10
# 688 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_TY, Common_Movement_WalkInPlaceFasterDown
# 689 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 690 "data/maps/SlateportCity/scripts.pory"
	delay 25
# 691 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, SlateportCity_Movement_SternWatchGabbyAndTyExit
# 692 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Movement_PlayerFaceStern
# 693 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_GABBY, SlateportCity_Movement_GabbyExit
# 694 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_TY, SlateportCity_Movement_TyExit
# 695 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 696 "data/maps/SlateportCity/scripts.pory"
	removeobject LOCALID_SLATEPORT_GABBY
# 697 "data/maps/SlateportCity/scripts.pory"
	removeobject LOCALID_SLATEPORT_TY
# 698 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternWhewFirstInterview, MSGBOX_DEFAULT
# 699 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, Common_Movement_WalkInPlaceFasterUp
# 700 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 701 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_OhPlayerWeMadeDiscovery, MSGBOX_DEFAULT
# 702 "data/maps/SlateportCity/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 703 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_AquaWillAssumeControlOfSubmarine, MSGBOX_DEFAULT
# 704 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_COOK, Common_Movement_WalkInPlaceFasterLeft
# 705 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_FAT_MAN, Common_Movement_WalkInPlaceFasterLeft
# 706 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_OLD_WOMAN, SlateportCity_Movement_OldWomanConcern
# 707 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_RICH_BOY, Common_Movement_QuestionMark
# 708 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_MAN_1, SlateportCity_Movement_ManConcern
# 709 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 710 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, Common_Movement_WalkInPlaceFasterDown
# 711 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 712 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SternWhatWasAllThat, MSGBOX_DEFAULT
# 713 "data/maps/SlateportCity/scripts.pory"
	playse SE_PIN
# 714 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, Common_Movement_ExclamationMark
# 715 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 716 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, Common_Movement_Delay48
# 717 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 718 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, Common_Movement_WalkInPlaceFasterUp
# 719 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 720 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_FromHarborTryingToTakeSub, MSGBOX_DEFAULT
# 721 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 722 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 723 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_CAPT_STERN, SlateportCity_Movement_SternEnterHarbor
# 724 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Movement_PlayerEnterHarbor
# 725 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 726 "data/maps/SlateportCity/scripts.pory"
	removeobject LOCALID_SLATEPORT_CAPT_STERN
# 727 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_CAPTAIN_STERN
# 728 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_SUBMARINE_SHADOW
# 729 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_AQUA_GRUNT
# 730 "data/maps/SlateportCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_ARCHIE
# 731 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_SLATEPORT_CITY_STATE, 2
# 732 "data/maps/SlateportCity/scripts.pory"
	warp MAP_SLATEPORT_CITY_HARBOR, 11, 14
# 733 "data/maps/SlateportCity/scripts.pory"
	waitstate
# 734 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 735 "data/maps/SlateportCity/scripts.pory"
	end
# 736 "data/maps/SlateportCity/scripts.pory"

# 737 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_OldWomanConcern:
# 738 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 739 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 740 "data/maps/SlateportCity/scripts.pory"
	emote_question_mark
# 741 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_right
# 742 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 743 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 744 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_left
# 745 "data/maps/SlateportCity/scripts.pory"
	step_end
# 746 "data/maps/SlateportCity/scripts.pory"

# 747 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_ManConcern:
# 748 "data/maps/SlateportCity/scripts.pory"
	emote_question_mark
# 749 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_up
# 750 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 751 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_down
# 752 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 753 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 754 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_left
# 755 "data/maps/SlateportCity/scripts.pory"
	step_end
# 756 "data/maps/SlateportCity/scripts.pory"

# 757 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_GabbyExit:
# 758 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 759 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 760 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 761 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 762 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 763 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 764 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 765 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 766 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 767 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 768 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 769 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 770 "data/maps/SlateportCity/scripts.pory"
	step_end
# 771 "data/maps/SlateportCity/scripts.pory"

# 772 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_TyExit:
# 773 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 774 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 775 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 776 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 777 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 778 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 779 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 780 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 781 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 782 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 783 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 784 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 785 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 786 "data/maps/SlateportCity/scripts.pory"
	step_end
# 787 "data/maps/SlateportCity/scripts.pory"

# 788 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_Unused:
# 789 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 790 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_up
# 791 "data/maps/SlateportCity/scripts.pory"
	step_end
# 792 "data/maps/SlateportCity/scripts.pory"

# 793 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_SternEnterHarbor:
# 794 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 795 "data/maps/SlateportCity/scripts.pory"
	walk_up
# 796 "data/maps/SlateportCity/scripts.pory"
	walk_up
# 797 "data/maps/SlateportCity/scripts.pory"
	set_invisible
# 798 "data/maps/SlateportCity/scripts.pory"
	step_end
# 799 "data/maps/SlateportCity/scripts.pory"

# 800 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_SternWatchGabbyAndTyExit:
# 801 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 802 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 803 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 804 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 805 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 806 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 807 "data/maps/SlateportCity/scripts.pory"
	walk_left
# 808 "data/maps/SlateportCity/scripts.pory"
	step_end
# 809 "data/maps/SlateportCity/scripts.pory"

# 810 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_PlayerEnterHarbor:
# 811 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_right
# 812 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 813 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 814 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 815 "data/maps/SlateportCity/scripts.pory"
	walk_up
# 816 "data/maps/SlateportCity/scripts.pory"
	step_end
# 817 "data/maps/SlateportCity/scripts.pory"

# 818 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_PlayerFaceStern:
# 819 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 820 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 821 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 822 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 823 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 824 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 825 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 826 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_down
# 827 "data/maps/SlateportCity/scripts.pory"
	step_end
# 828 "data/maps/SlateportCity/scripts.pory"

# 829 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Ty::
# 830 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BigSmileForCamera, MSGBOX_SIGN
# 831 "data/maps/SlateportCity/scripts.pory"
	end
# 832 "data/maps/SlateportCity/scripts.pory"

# 833 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Gabby::
# 834 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_MostInvaluableExperience, MSGBOX_SIGN
# 835 "data/maps/SlateportCity/scripts.pory"
	end
# 836 "data/maps/SlateportCity/scripts.pory"

# 837 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Man3::
# 838 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_WonderIfLighthouseStartlesPokemon, MSGBOX_NPC
# 839 "data/maps/SlateportCity/scripts.pory"
	end
# 840 "data/maps/SlateportCity/scripts.pory"

# 841 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_BerryPowderClerk::
# 842 "data/maps/SlateportCity/scripts.pory"
	lock
# 843 "data/maps/SlateportCity/scripts.pory"
	faceplayer
# 844 "data/maps/SlateportCity/scripts.pory"
	goto_if_set FLAG_RECEIVED_POWDER_JAR, SlateportCity_EventScript_ReceivedPowderJar
# 845 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ExplainBerries, MSGBOX_DEFAULT
# 846 "data/maps/SlateportCity/scripts.pory"
	giveitem ITEM_POWDER_JAR
# 847 "data/maps/SlateportCity/scripts.pory"
	setflag FLAG_RECEIVED_POWDER_JAR
# 848 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ExplainBerryPowder, MSGBOX_DEFAULT
# 849 "data/maps/SlateportCity/scripts.pory"
	release
# 850 "data/maps/SlateportCity/scripts.pory"
	end
# 851 "data/maps/SlateportCity/scripts.pory"

# 852 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ReceivedPowderJar::
# 853 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8004, 1
# 854 "data/maps/SlateportCity/scripts.pory"
	specialvar VAR_RESULT, HasEnoughBerryPowder
# 855 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, SlateportCity_EventScript_ExplainBerryPowder
# 856 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_BroughtMeSomeBerryPowder, MSGBOX_DEFAULT
# 857 "data/maps/SlateportCity/scripts.pory"
	special DisplayBerryPowderVendorMenu
# 858 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_ChooseBerryPowderItem
# 859 "data/maps/SlateportCity/scripts.pory"
	end
# 860 "data/maps/SlateportCity/scripts.pory"

# 861 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ExplainBerryPowder::
# 862 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ExplainBerryPowder, MSGBOX_DEFAULT
# 863 "data/maps/SlateportCity/scripts.pory"
	release
# 864 "data/maps/SlateportCity/scripts.pory"
	end
# 865 "data/maps/SlateportCity/scripts.pory"

# 866 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ChooseBerryPowderItem::
# 867 "data/maps/SlateportCity/scripts.pory"
	message SlateportCity_Text_ExchangeWhatWithIt
# 868 "data/maps/SlateportCity/scripts.pory"
	waitmessage
# 869 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_BERRY_POWDER_VENDOR
# 870 "data/maps/SlateportCity/scripts.pory"
	special ShowScrollableMultichoice
# 871 "data/maps/SlateportCity/scripts.pory"
	waitstate
# 872 "data/maps/SlateportCity/scripts.pory"
	switch VAR_RESULT
# 873 "data/maps/SlateportCity/scripts.pory"
	case 0, SlateportCity_EventScript_EnergyPowder
# 874 "data/maps/SlateportCity/scripts.pory"
	case 1, SlateportCity_EventScript_EnergyRoot
# 875 "data/maps/SlateportCity/scripts.pory"
	case 2, SlateportCity_EventScript_HealPowder
# 876 "data/maps/SlateportCity/scripts.pory"
	case 3, SlateportCity_EventScript_RevivalHerb
# 877 "data/maps/SlateportCity/scripts.pory"
	case 4, SlateportCity_EventScript_Protein
# 878 "data/maps/SlateportCity/scripts.pory"
	case 5, SlateportCity_EventScript_Iron
# 879 "data/maps/SlateportCity/scripts.pory"
	case 6, SlateportCity_EventScript_Carbos
# 880 "data/maps/SlateportCity/scripts.pory"
	case 7, SlateportCity_EventScript_Calcium
# 881 "data/maps/SlateportCity/scripts.pory"
	case 8, SlateportCity_EventScript_Zinc
# 882 "data/maps/SlateportCity/scripts.pory"
	case 9, SlateportCity_EventScript_HPUp
# 883 "data/maps/SlateportCity/scripts.pory"
	case 10, SlateportCity_EventScript_PPUp
# 884 "data/maps/SlateportCity/scripts.pory"
	case 11, SlateportCity_EventScript_CancelPowderItemSelect
# 885 "data/maps/SlateportCity/scripts.pory"
	case MULTI_B_PRESSED, SlateportCity_EventScript_CancelPowderItemSelect
# 886 "data/maps/SlateportCity/scripts.pory"
	end
# 887 "data/maps/SlateportCity/scripts.pory"

# 888 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_EnergyPowder::
# 889 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_ENERGY_POWDER
# 890 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_ENERGY_POWDER
# 891 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 50
# 892 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 893 "data/maps/SlateportCity/scripts.pory"
	end
# 894 "data/maps/SlateportCity/scripts.pory"

# 895 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_EnergyRoot::
# 896 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_ENERGY_ROOT
# 897 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_ENERGY_ROOT
# 898 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 80
# 899 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 900 "data/maps/SlateportCity/scripts.pory"
	end
# 901 "data/maps/SlateportCity/scripts.pory"

# 902 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_HealPowder::
# 903 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_HEAL_POWDER
# 904 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_HEAL_POWDER
# 905 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 50
# 906 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 907 "data/maps/SlateportCity/scripts.pory"
	end
# 908 "data/maps/SlateportCity/scripts.pory"

# 909 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_RevivalHerb::
# 910 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_REVIVAL_HERB
# 911 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_REVIVAL_HERB
# 912 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 300
# 913 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 914 "data/maps/SlateportCity/scripts.pory"
	end
# 915 "data/maps/SlateportCity/scripts.pory"

# 916 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Protein::
# 917 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_PROTEIN
# 918 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_PROTEIN
# 919 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 1000
# 920 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 921 "data/maps/SlateportCity/scripts.pory"
	end
# 922 "data/maps/SlateportCity/scripts.pory"

# 923 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Iron::
# 924 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_IRON
# 925 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_IRON
# 926 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 1000
# 927 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 928 "data/maps/SlateportCity/scripts.pory"
	end
# 929 "data/maps/SlateportCity/scripts.pory"

# 930 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Carbos::
# 931 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_CARBOS
# 932 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_CARBOS
# 933 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 1000
# 934 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 935 "data/maps/SlateportCity/scripts.pory"
	end
# 936 "data/maps/SlateportCity/scripts.pory"

# 937 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Calcium::
# 938 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_CALCIUM
# 939 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_CALCIUM
# 940 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 1000
# 941 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 942 "data/maps/SlateportCity/scripts.pory"
	end
# 943 "data/maps/SlateportCity/scripts.pory"

# 944 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Zinc::
# 945 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_ZINC
# 946 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_ZINC
# 947 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 1000
# 948 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 949 "data/maps/SlateportCity/scripts.pory"
	end
# 950 "data/maps/SlateportCity/scripts.pory"

# 951 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_HPUp::
# 952 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_HP_UP
# 953 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_HP_UP
# 954 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 1000
# 955 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 956 "data/maps/SlateportCity/scripts.pory"
	end
# 957 "data/maps/SlateportCity/scripts.pory"

# 958 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_PPUp::
# 959 "data/maps/SlateportCity/scripts.pory"
	bufferitemname STR_VAR_1, ITEM_PP_UP
# 960 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8008, ITEM_PP_UP
# 961 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_0x8009, 3000
# 962 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_TryBuyBerryPowderItem
# 963 "data/maps/SlateportCity/scripts.pory"
	end
# 964 "data/maps/SlateportCity/scripts.pory"

# 965 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_CancelPowderItemSelect::
# 966 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ComeBackToTradeBerryPowder, MSGBOX_DEFAULT
# 967 "data/maps/SlateportCity/scripts.pory"
	special RemoveBerryPowderVendorMenu
# 968 "data/maps/SlateportCity/scripts.pory"
	release
# 969 "data/maps/SlateportCity/scripts.pory"
	end
# 970 "data/maps/SlateportCity/scripts.pory"

# 971 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_TryBuyBerryPowderItem::
# 972 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_ExchangeBerryPowderForItem, MSGBOX_YESNO
# 973 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, SlateportCity_EventScript_ChooseBerryPowderItem
# 974 "data/maps/SlateportCity/scripts.pory"
	copyvar VAR_0x8004, VAR_0x8009
# 975 "data/maps/SlateportCity/scripts.pory"
	specialvar VAR_RESULT, HasEnoughBerryPowder
# 976 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, SlateportCity_EventScript_NotEnoughBerryPowder
# 977 "data/maps/SlateportCity/scripts.pory"
	giveitem VAR_0x8008
# 978 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, SlateportCity_EventScript_NoRoomForBerryPowderItem
# 979 "data/maps/SlateportCity/scripts.pory"
	copyvar VAR_0x8004, VAR_0x8009
# 980 "data/maps/SlateportCity/scripts.pory"
	special TakeBerryPowder
# 981 "data/maps/SlateportCity/scripts.pory"
	special PrintPlayerBerryPowderAmount
# 982 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_FineBerryPowderTradeSomethingElse, MSGBOX_YESNO
# 983 "data/maps/SlateportCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, SlateportCity_EventScript_ChooseBerryPowderItem
# 984 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_WhenYouGetMoreBringItToMe, MSGBOX_DEFAULT
# 985 "data/maps/SlateportCity/scripts.pory"
	special RemoveBerryPowderVendorMenu
# 986 "data/maps/SlateportCity/scripts.pory"
	release
# 987 "data/maps/SlateportCity/scripts.pory"
	end
# 988 "data/maps/SlateportCity/scripts.pory"

# 989 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_NoRoomForBerryPowderItem::
# 990 "data/maps/SlateportCity/scripts.pory"
	msgbox gText_TheBagIsFull, MSGBOX_DEFAULT
# 991 "data/maps/SlateportCity/scripts.pory"
	special RemoveBerryPowderVendorMenu
# 992 "data/maps/SlateportCity/scripts.pory"
	release
# 993 "data/maps/SlateportCity/scripts.pory"
	end
# 994 "data/maps/SlateportCity/scripts.pory"

# 995 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_NotEnoughBerryPowder::
# 996 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_DontHaveEnoughBerryPowder, MSGBOX_DEFAULT
# 997 "data/maps/SlateportCity/scripts.pory"
	goto SlateportCity_EventScript_ChooseBerryPowderItem
# 998 "data/maps/SlateportCity/scripts.pory"
	end
# 999 "data/maps/SlateportCity/scripts.pory"

# 1000 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_ScottBattleTentScene::
# 1001 "data/maps/SlateportCity/scripts.pory"
	lockall
# 1002 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 1003 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 1004 "data/maps/SlateportCity/scripts.pory"
	opendoor 10, 12
# 1005 "data/maps/SlateportCity/scripts.pory"
	waitdooranim
# 1006 "data/maps/SlateportCity/scripts.pory"
	addobject LOCALID_SLATEPORT_SCOTT
# 1007 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Movement_PushPlayerDown
# 1008 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_SCOTT, SlateportCity_Movement_ScottExitBattleTent
# 1009 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 1010 "data/maps/SlateportCity/scripts.pory"
	closedoor 10, 12
# 1011 "data/maps/SlateportCity/scripts.pory"
	waitdooranim
# 1012 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_TakingBattleTentChallenge, MSGBOX_DEFAULT
# 1013 "data/maps/SlateportCity/scripts.pory"
	closemessage
# 1014 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_Movement_PlayerWatchScottExit
# 1015 "data/maps/SlateportCity/scripts.pory"
	applymovement LOCALID_SLATEPORT_SCOTT, SlateportCity_Movement_ScottExitAfterBattleTent
# 1016 "data/maps/SlateportCity/scripts.pory"
	waitmovement 0
# 1017 "data/maps/SlateportCity/scripts.pory"
	removeobject LOCALID_SLATEPORT_SCOTT
# 1018 "data/maps/SlateportCity/scripts.pory"
	addvar VAR_SCOTT_STATE, 1
# 1019 "data/maps/SlateportCity/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 3
# 1020 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 1021 "data/maps/SlateportCity/scripts.pory"
	end
# 1022 "data/maps/SlateportCity/scripts.pory"

# 1023 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_PushPlayerDown:
# 1024 "data/maps/SlateportCity/scripts.pory"
	lock_facing_direction
# 1025 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 1026 "data/maps/SlateportCity/scripts.pory"
	unlock_facing_direction
# 1027 "data/maps/SlateportCity/scripts.pory"
	step_end
# 1028 "data/maps/SlateportCity/scripts.pory"

# 1029 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_PlayerWatchScottExit:
# 1030 "data/maps/SlateportCity/scripts.pory"
	delay_16
# 1031 "data/maps/SlateportCity/scripts.pory"
	walk_in_place_faster_right
# 1032 "data/maps/SlateportCity/scripts.pory"
	step_end
# 1033 "data/maps/SlateportCity/scripts.pory"

# 1034 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_ScottExitBattleTent:
# 1035 "data/maps/SlateportCity/scripts.pory"
	delay_8
# 1036 "data/maps/SlateportCity/scripts.pory"
	walk_down
# 1037 "data/maps/SlateportCity/scripts.pory"
	step_end
# 1038 "data/maps/SlateportCity/scripts.pory"

# 1039 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Movement_ScottExitAfterBattleTent:
# 1040 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1041 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1042 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1043 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1044 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1045 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1046 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1047 "data/maps/SlateportCity/scripts.pory"
	walk_right
# 1048 "data/maps/SlateportCity/scripts.pory"
	step_end
# 1049 "data/maps/SlateportCity/scripts.pory"

# 1050 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_BerryCrushRankingsSign::
# 1051 "data/maps/SlateportCity/scripts.pory"
	lockall
# 1052 "data/maps/SlateportCity/scripts.pory"
	special ShowBerryCrushRankings
# 1053 "data/maps/SlateportCity/scripts.pory"
	waitstate
# 1054 "data/maps/SlateportCity/scripts.pory"
	releaseall
# 1055 "data/maps/SlateportCity/scripts.pory"
	end
# 1056 "data/maps/SlateportCity/scripts.pory"

# 1057 "data/maps/SlateportCity/scripts.pory"
SlateportCity_EventScript_Newfisherman::
# 1058 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_Newfisherman, MSGBOX_DEFAULT
# 1059 "data/maps/SlateportCity/scripts.pory"
	release
# 1060 "data/maps/SlateportCity/scripts.pory"
	end
# 1061 "data/maps/SlateportCity/scripts.pory"

# 1062 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_EnergyGuruSellWhatYouNeed:
# 1063 "data/maps/SlateportCity/scripts.pory"
	.string "I'm the STONE GURU! I'll go for it and\n"
# 1064 "data/maps/SlateportCity/scripts.pory"
	.string "sell you what you need!$"
# 1065 "data/maps/SlateportCity/scripts.pory"

# 1066 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_OhYourPokemon:
# 1067 "data/maps/SlateportCity/scripts.pory"
	.string "Oh?\n"
# 1068 "data/maps/SlateportCity/scripts.pory"
	.string "Your {STR_VAR_1}…$"
# 1069 "data/maps/SlateportCity/scripts.pory"

# 1070 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_PleaseGiveItThisEffortRibbon:
# 1071 "data/maps/SlateportCity/scripts.pory"
	.string "Went for it stupendously!\p"
# 1072 "data/maps/SlateportCity/scripts.pory"
	.string "As its reward, please give it this\n"
# 1073 "data/maps/SlateportCity/scripts.pory"
	.string "EFFORT RIBBON.$"
# 1074 "data/maps/SlateportCity/scripts.pory"

# 1075 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ReceivedEffortRibbon:
# 1076 "data/maps/SlateportCity/scripts.pory"
	.string "{PLAYER} received the EFFORT RIBBON.$"
# 1077 "data/maps/SlateportCity/scripts.pory"

# 1078 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_PutEffortRibbonOnMon:
# 1079 "data/maps/SlateportCity/scripts.pory"
	.string "{PLAYER} put the EFFORT RIBBON\n"
# 1080 "data/maps/SlateportCity/scripts.pory"
	.string "on {STR_VAR_1}.$"
# 1081 "data/maps/SlateportCity/scripts.pory"

# 1082 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_GoForItLittleHarder:
# 1083 "data/maps/SlateportCity/scripts.pory"
	.string "You have to go for it a little harder.\p"
# 1084 "data/maps/SlateportCity/scripts.pory"
	.string "If you do, I'll give your POKéMON\n"
# 1085 "data/maps/SlateportCity/scripts.pory"
	.string "something nice.$"
# 1086 "data/maps/SlateportCity/scripts.pory"

# 1087 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_EffortRibbonLooksGoodOnIt:
# 1088 "data/maps/SlateportCity/scripts.pory"
	.string "Oh! Your {STR_VAR_1}, that EFFORT\n"
# 1089 "data/maps/SlateportCity/scripts.pory"
	.string "RIBBON looks good on it!$"
# 1090 "data/maps/SlateportCity/scripts.pory"

# 1091 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_WonderIfLighthouseStartlesPokemon:
# 1092 "data/maps/SlateportCity/scripts.pory"
	.string "The light of the lighthouse reaches\n"
# 1093 "data/maps/SlateportCity/scripts.pory"
	.string "dozens of miles away.\p"
# 1094 "data/maps/SlateportCity/scripts.pory"
	.string "I wonder if it doesn't startle POKéMON\n"
# 1095 "data/maps/SlateportCity/scripts.pory"
	.string "in the sea.$"
# 1096 "data/maps/SlateportCity/scripts.pory"

# 1097 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SeaweedFullOfLife:
# 1098 "data/maps/SlateportCity/scripts.pory"
	.string "Ooh, look at this!\p"
# 1099 "data/maps/SlateportCity/scripts.pory"
	.string "The seaweed you can get around these\n"
# 1100 "data/maps/SlateportCity/scripts.pory"
	.string "parts is fresh and full of life.\p"
# 1101 "data/maps/SlateportCity/scripts.pory"
	.string "Why, it looks like it can even rear up\n"
# 1102 "data/maps/SlateportCity/scripts.pory"
	.string "and attack!$"
# 1103 "data/maps/SlateportCity/scripts.pory"

# 1104 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_HowTownIsBornAndGrows:
# 1105 "data/maps/SlateportCity/scripts.pory"
	.string "Where the water is clean, the fruits\n"
# 1106 "data/maps/SlateportCity/scripts.pory"
	.string "of bountiful harvest gather.\p"
# 1107 "data/maps/SlateportCity/scripts.pory"
	.string "And where people gather, a market\n"
# 1108 "data/maps/SlateportCity/scripts.pory"
	.string "soon starts.\p"
# 1109 "data/maps/SlateportCity/scripts.pory"
	.string "That is how a town is born and grows.$"
# 1110 "data/maps/SlateportCity/scripts.pory"

# 1111 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SlateportWonderfulPlace:
# 1112 "data/maps/SlateportCity/scripts.pory"
	.string "Shopping where you can breathe the\n"
# 1113 "data/maps/SlateportCity/scripts.pory"
	.string "scent of the ocean…\p"
# 1114 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT is such a wonderful place!$"
# 1115 "data/maps/SlateportCity/scripts.pory"

# 1116 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BuyBricksSoDecorWontGetDirty:
# 1117 "data/maps/SlateportCity/scripts.pory"
	.string "If you put DOLLS or CUSHIONS on\n"
# 1118 "data/maps/SlateportCity/scripts.pory"
	.string "the floor, they'll get dirty.\p"
# 1119 "data/maps/SlateportCity/scripts.pory"
	.string "I'm going to buy some BRICKS so my\n"
# 1120 "data/maps/SlateportCity/scripts.pory"
	.string "DOLLS and CUSHIONS won't get dirty\l"
# 1121 "data/maps/SlateportCity/scripts.pory"
	.string "when I leave them out.$"
# 1122 "data/maps/SlateportCity/scripts.pory"

# 1123 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_GoingToCompeteInBattleTent:
# 1124 "data/maps/SlateportCity/scripts.pory"
	.string "Wroooar! I'm going to compete in\n"
# 1125 "data/maps/SlateportCity/scripts.pory"
	.string "the BATTLE TENT, too!\p"
# 1126 "data/maps/SlateportCity/scripts.pory"
	.string "But before that, I need to catch\n"
# 1127 "data/maps/SlateportCity/scripts.pory"
	.string "some POKéMON!$"
# 1128 "data/maps/SlateportCity/scripts.pory"

# 1129 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BushedHikingFromMauville:
# 1130 "data/maps/SlateportCity/scripts.pory"
.string "Whew… I'm worn out…\p"
# 1131 "data/maps/SlateportCity/scripts.pory"
.string "I came here from MAUVILLE CITY, but\n"
# 1132 "data/maps/SlateportCity/scripts.pory"
.string "something feels different lately.\p"
# 1133 "data/maps/SlateportCity/scripts.pory"
.string "The tide’s been acting strange…\n"
# 1134 "data/maps/SlateportCity/scripts.pory"
.string "Some days the waves rise out of nowhere,\l"
# 1135 "data/maps/SlateportCity/scripts.pory"
.string "crashing harder than they should.\p"
# 1136 "data/maps/SlateportCity/scripts.pory"
.string "The sea feels unpredictable now… almost\n"
# 1137 "data/maps/SlateportCity/scripts.pory"
.string "dangerous.\p"
# 1138 "data/maps/SlateportCity/scripts.pory"
.string "Better be careful near the shore.$"
# 1139 "data/maps/SlateportCity/scripts.pory"

# 1140 "data/maps/SlateportCity/scripts.pory"

# 1141 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_EveryoneCallsHimCaptStern:
# 1142 "data/maps/SlateportCity/scripts.pory"
	.string "STERN, the fellow who built the\n"
# 1143 "data/maps/SlateportCity/scripts.pory"
	.string "MUSEUM, also happens to be the leader\l"
# 1144 "data/maps/SlateportCity/scripts.pory"
	.string "of an undersea exploration team.\p"
# 1145 "data/maps/SlateportCity/scripts.pory"
	.string "So, everyone calls him CAPT. STERN.$"
# 1146 "data/maps/SlateportCity/scripts.pory"

# 1147 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_WhatsLongLineOverThere:
# 1148 "data/maps/SlateportCity/scripts.pory"
	.string "What is that over there?\n"
# 1149 "data/maps/SlateportCity/scripts.pory"
	.string "That long line…$"
# 1150 "data/maps/SlateportCity/scripts.pory"

# 1151 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_VisitedMuseumOften:
# 1152 "data/maps/SlateportCity/scripts.pory"
.string "I came to the MUSEUM hoping to find\n"
# 1153 "data/maps/SlateportCity/scripts.pory"
.string "something about that strange meteor\l"
# 1154 "data/maps/SlateportCity/scripts.pory"
.string "that flashed across the sky.\p"
# 1155 "data/maps/SlateportCity/scripts.pory"
.string "But there was nothing… no records,\n"
# 1156 "data/maps/SlateportCity/scripts.pory"
.string "no theories, not even a mention.\p"
# 1157 "data/maps/SlateportCity/scripts.pory"
.string "Amazing how many mysteries are still\n"
# 1158 "data/maps/SlateportCity/scripts.pory"
.string "waiting to be uncovered.$"
# 1159 "data/maps/SlateportCity/scripts.pory"

# 1160 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_QuitPushing:
# 1161 "data/maps/SlateportCity/scripts.pory"
	.string "Hey, there! Quit pushing!\n"
# 1162 "data/maps/SlateportCity/scripts.pory"
	.string "This is the line, can't you see?$"
# 1163 "data/maps/SlateportCity/scripts.pory"

# 1164 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_AquaHasPolicy:
# 1165 "data/maps/SlateportCity/scripts.pory"
	.string "TEAM AQUA has a policy of\n"
# 1166 "data/maps/SlateportCity/scripts.pory"
	.string "assembling and dispersing at\l"
# 1167 "data/maps/SlateportCity/scripts.pory"
	.string "the operation site.$"
# 1168 "data/maps/SlateportCity/scripts.pory"

# 1169 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BossIsBrilliant:
# 1170 "data/maps/SlateportCity/scripts.pory"
.string "Hey, kid!\n"
# 1171 "data/maps/SlateportCity/scripts.pory"
.string "What are you looking at?\p"
# 1172 "data/maps/SlateportCity/scripts.pory"
.string "With that goofy look on your face,\n"
# 1173 "data/maps/SlateportCity/scripts.pory"
.string "wierd cloths, you'd better beat it.\p"
# 1174 "data/maps/SlateportCity/scripts.pory"
.string "Mind your own business unless you\n"
# 1175 "data/maps/SlateportCity/scripts.pory"
.string "want some trouble!$"
# 1176 "data/maps/SlateportCity/scripts.pory"

# 1177 "data/maps/SlateportCity/scripts.pory"

# 1178 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_WhatsNewSchemeIWonder:
# 1179 "data/maps/SlateportCity/scripts.pory"
.string "Huh? You lookin' to join TEAM AQUA\n"
# 1180 "data/maps/SlateportCity/scripts.pory"
.string "or somethin'?\p"
# 1181 "data/maps/SlateportCity/scripts.pory"
.string "Please… with that goofy face?\n"
# 1182 "data/maps/SlateportCity/scripts.pory"
.string "You wouldn't last a minute.\p"
# 1183 "data/maps/SlateportCity/scripts.pory"
.string "Do yourself a favor and scram\n"
# 1184 "data/maps/SlateportCity/scripts.pory"
.string "before you get in trouble.$"
# 1185 "data/maps/SlateportCity/scripts.pory"

# 1186 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ShouldTakeItAll:
# 1187 "data/maps/SlateportCity/scripts.pory"
.string "Heh… the AQUA revolution is\n"
# 1188 "data/maps/SlateportCity/scripts.pory"
.string "comin', kid.\p"
# 1189 "data/maps/SlateportCity/scripts.pory"
.string "You're either with us when it hits,\n"
# 1190 "data/maps/SlateportCity/scripts.pory"
.string "or you're gonna get swept under.\p"
# 1191 "data/maps/SlateportCity/scripts.pory"
.string "If I were you, I'd start learnin'\n"
# 1192 "data/maps/SlateportCity/scripts.pory"
.string "about the cause…\p"
# 1193 "data/maps/SlateportCity/scripts.pory"
.string "Break the system, y'know?\n"
# 1194 "data/maps/SlateportCity/scripts.pory"
.string "It's the only way forward.$"
# 1195 "data/maps/SlateportCity/scripts.pory"

# 1196 "data/maps/SlateportCity/scripts.pory"

# 1197 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_DontButtIn:
# 1198 "data/maps/SlateportCity/scripts.pory"
	.string "Hey, you there!\n"
# 1199 "data/maps/SlateportCity/scripts.pory"
	.string "Don't butt in!$"
# 1200 "data/maps/SlateportCity/scripts.pory"

# 1201 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_RemindsMeOfLongLineForGames:
# 1202 "data/maps/SlateportCity/scripts.pory"
	.string "A long line, huh?\p"
# 1203 "data/maps/SlateportCity/scripts.pory"
	.string "It reminds me of the times I lined up to\n"
# 1204 "data/maps/SlateportCity/scripts.pory"
	.string "buy smash-hit games…$"
# 1205 "data/maps/SlateportCity/scripts.pory"

# 1206 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_WhyAreWeLiningUp:
# 1207 "data/maps/SlateportCity/scripts.pory"
	.string "Why are we even lining up and paying?\n"
# 1208 "data/maps/SlateportCity/scripts.pory"
	.string "We should just march in!$"
# 1209 "data/maps/SlateportCity/scripts.pory"

# 1210 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_WhatDoYouWant:
# 1211 "data/maps/SlateportCity/scripts.pory"
	.string "What?\n"
# 1212 "data/maps/SlateportCity/scripts.pory"
	.string "What do you want?$"
# 1213 "data/maps/SlateportCity/scripts.pory"

# 1214 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_IllReadSignForYou:
# 1215 "data/maps/SlateportCity/scripts.pory"
	.string "You want to read this sign?\n"
# 1216 "data/maps/SlateportCity/scripts.pory"
	.string "I'll read it for you!$"
# 1217 "data/maps/SlateportCity/scripts.pory"

# 1218 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SaysSomethingLikeSeaIsEndless:
# 1219 "data/maps/SlateportCity/scripts.pory"
	.string "Let's see…\p"
# 1220 "data/maps/SlateportCity/scripts.pory"
	.string "Um… I think it says something like\n"
# 1221 "data/maps/SlateportCity/scripts.pory"
	.string "“the life in the sea is endless.”\p"
# 1222 "data/maps/SlateportCity/scripts.pory"
	.string "Yup, I'm pretty sure that's what\n"
# 1223 "data/maps/SlateportCity/scripts.pory"
	.string "it says.$"
# 1224 "data/maps/SlateportCity/scripts.pory"

# 1225 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ShouldveBroughtMyGameBoy:
# 1226 "data/maps/SlateportCity/scripts.pory"
.string "Grumble…\p"
# 1227 "data/maps/SlateportCity/scripts.pory"
.string "Man, bein' here is wild.\n"
# 1228 "data/maps/SlateportCity/scripts.pory"
.string "You’ll see, TEAM AQUA's gonna\l"
# 1229 "data/maps/SlateportCity/scripts.pory"
.string "change the whole region.\p"
# 1230 "data/maps/SlateportCity/scripts.pory"
.string "Nothing's gonna stay the same…\n"
# 1231 "data/maps/SlateportCity/scripts.pory"
.string "and that's the fun of it!$"
# 1232 "data/maps/SlateportCity/scripts.pory"

# 1233 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_HotSpringsAfterOperation:
# 1234 "data/maps/SlateportCity/scripts.pory"
	.string "When this operation's over, I'll take\n"
# 1235 "data/maps/SlateportCity/scripts.pory"
	.string "you to a hot spring spa!\p"
# 1236 "data/maps/SlateportCity/scripts.pory"
	.string "That's what our leader said.\n"
# 1237 "data/maps/SlateportCity/scripts.pory"
	.string "I can't wait!$"
# 1238 "data/maps/SlateportCity/scripts.pory"

# 1239 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SeaIsSoWet:
# 1240 "data/maps/SlateportCity/scripts.pory"
	.string "The sea is just so vast…\p"
# 1241 "data/maps/SlateportCity/scripts.pory"
	.string "Could the sea have been made by\n"
# 1242 "data/maps/SlateportCity/scripts.pory"
	.string "the tears shed by POKéMON?$"
# 1243 "data/maps/SlateportCity/scripts.pory"

# 1244 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SinkOldBoats:
# 1245 "data/maps/SlateportCity/scripts.pory"
.string "Do you know what they do with old\n"
# 1246 "data/maps/SlateportCity/scripts.pory"
.string "ships that get too creaky to sail?\p"
# 1247 "data/maps/SlateportCity/scripts.pory"
.string "They sink them so they become new\n"
# 1248 "data/maps/SlateportCity/scripts.pory"
.string "habitats for POKéMON.\p"
# 1249 "data/maps/SlateportCity/scripts.pory"
.string "The sea's been wild lately… furious,\n"
# 1250 "data/maps/SlateportCity/scripts.pory"
.string "almost like some great power is\l"
# 1251 "data/maps/SlateportCity/scripts.pory"
.string "stirring beneath the waves.$"
# 1252 "data/maps/SlateportCity/scripts.pory"

# 1253 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BuyTooMuch:
# 1254 "data/maps/SlateportCity/scripts.pory"
	.string "Whenever I visit here, I get carried\n"
# 1255 "data/maps/SlateportCity/scripts.pory"
	.string "away and buy too much.$"
# 1256 "data/maps/SlateportCity/scripts.pory"

# 1257 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_GetNameRaterToHelpYou:
# 1258 "data/maps/SlateportCity/scripts.pory"
.string "Dude, port towns are awesome.\n"
# 1259 "data/maps/SlateportCity/scripts.pory"
.string "People from all over come through.\p"
# 1260 "data/maps/SlateportCity/scripts.pory"
.string "There's always something new to\n"
# 1261 "data/maps/SlateportCity/scripts.pory"
.string "see and do.\p"
# 1262 "data/maps/SlateportCity/scripts.pory"
.string "But watch yourself… shady types show\n"
# 1263 "data/maps/SlateportCity/scripts.pory"
.string "up here too.\p"
# 1264 "data/maps/SlateportCity/scripts.pory"
.string "Keep your guard up!$"
# 1265 "data/maps/SlateportCity/scripts.pory"

# 1266 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_CantChangeTradeMonName:
# 1267 "data/maps/SlateportCity/scripts.pory"
.string "Whoa, you beat RENTON?\n"
# 1268 "data/maps/SlateportCity/scripts.pory"
.string "No way… He wiped the floor with me!\p"
# 1269 "data/maps/SlateportCity/scripts.pory"
.string "Guess you're tougher than you look.\n"
# 1270 "data/maps/SlateportCity/scripts.pory"
.string "Haha! Maybe you can teach me a few\l"
# 1271 "data/maps/SlateportCity/scripts.pory"
.string "tricks sometime!$"
# 1272 "data/maps/SlateportCity/scripts.pory"

# 1273 "data/maps/SlateportCity/scripts.pory"

# 1274 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BattleTentBuiltRecently:
# 1275 "data/maps/SlateportCity/scripts.pory"
	.string "Recently, a BATTLE TENT was built\n"
# 1276 "data/maps/SlateportCity/scripts.pory"
	.string "in SLATEPORT.\p"
# 1277 "data/maps/SlateportCity/scripts.pory"
	.string "GYMS are fun, but the BATTLE TENT's\n"
# 1278 "data/maps/SlateportCity/scripts.pory"
	.string "awesome in its own way.\p"
# 1279 "data/maps/SlateportCity/scripts.pory"
	.string "You should go find tough POKéMON\n"
# 1280 "data/maps/SlateportCity/scripts.pory"
	.string "for the BATTLE TENT!$"
# 1281 "data/maps/SlateportCity/scripts.pory"

# 1282 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_CaptSternBeingInterviewed:
# 1283 "data/maps/SlateportCity/scripts.pory"
	.string "I was hoping that it was a famous star\n"
# 1284 "data/maps/SlateportCity/scripts.pory"
	.string "so I could get an autograph.\p"
# 1285 "data/maps/SlateportCity/scripts.pory"
	.string "But who's that being interviewed?\n"
# 1286 "data/maps/SlateportCity/scripts.pory"
	.string "Isn't that CAPT. STERN?$"
# 1287 "data/maps/SlateportCity/scripts.pory"

# 1288 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_InterviewerSoCool:
# 1289 "data/maps/SlateportCity/scripts.pory"
	.string "That lady interviewer is so cool\n"
# 1290 "data/maps/SlateportCity/scripts.pory"
	.string "and pretty.\p"
# 1291 "data/maps/SlateportCity/scripts.pory"
	.string "When I grow up, I'm going to be\n"
# 1292 "data/maps/SlateportCity/scripts.pory"
	.string "an international journalist!$"
# 1293 "data/maps/SlateportCity/scripts.pory"

# 1294 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternSaysDiscoveredSomething:
# 1295 "data/maps/SlateportCity/scripts.pory"
	.string "CAPT. STERN says they discovered\n"
# 1296 "data/maps/SlateportCity/scripts.pory"
	.string "something at the bottom of the sea.\p"
# 1297 "data/maps/SlateportCity/scripts.pory"
	.string "I wonder what it is?\n"
# 1298 "data/maps/SlateportCity/scripts.pory"
	.string "What could it be?$"
# 1299 "data/maps/SlateportCity/scripts.pory"

# 1300 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_CaptainComeBackWithBigFish:
# 1301 "data/maps/SlateportCity/scripts.pory"
	.string "What's going on here?\p"
# 1302 "data/maps/SlateportCity/scripts.pory"
	.string "Did the good CAPTAIN come back with\n"
# 1303 "data/maps/SlateportCity/scripts.pory"
	.string "a big fish from the ocean floor?$"
# 1304 "data/maps/SlateportCity/scripts.pory"

# 1305 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_AmIOnTV:
# 1306 "data/maps/SlateportCity/scripts.pory"
	.string "Hey! Are you watching?\n"
# 1307 "data/maps/SlateportCity/scripts.pory"
	.string "Am I on TV?$"
# 1308 "data/maps/SlateportCity/scripts.pory"

# 1309 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_CaptainsACelebrity:
# 1310 "data/maps/SlateportCity/scripts.pory"
	.string "A TV interview! Here!\n"
# 1311 "data/maps/SlateportCity/scripts.pory"
	.string "The CAPTAIN's a celebrity!$"
# 1312 "data/maps/SlateportCity/scripts.pory"

# 1313 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BigSmileForCamera:
# 1314 "data/maps/SlateportCity/scripts.pory"
	.string "TY: Okay, CAPT. STERN, a big smile\n"
# 1315 "data/maps/SlateportCity/scripts.pory"
	.string "for the camera!$"
# 1316 "data/maps/SlateportCity/scripts.pory"

# 1317 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_MostInvaluableExperience:
# 1318 "data/maps/SlateportCity/scripts.pory"
	.string "GABBY: I see, I see. You've had a most\n"
# 1319 "data/maps/SlateportCity/scripts.pory"
	.string "invaluable experience…$"
# 1320 "data/maps/SlateportCity/scripts.pory"

# 1321 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternMoveAheadWithExploration:
# 1322 "data/maps/SlateportCity/scripts.pory"
	.string "CAPT. STERN: Yes, indeed. We intend to\n"
# 1323 "data/maps/SlateportCity/scripts.pory"
	.string "move ahead with our exploration.$"
# 1324 "data/maps/SlateportCity/scripts.pory"

# 1325 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_GabbyWonderfulThanksForInterview:
# 1326 "data/maps/SlateportCity/scripts.pory"
	.string "GABBY: That's wonderful, CAPT. STERN!\n"
# 1327 "data/maps/SlateportCity/scripts.pory"
	.string "Thank you for taking the time from\l"
# 1328 "data/maps/SlateportCity/scripts.pory"
	.string "your busy schedule to talk to us.\p"
# 1329 "data/maps/SlateportCity/scripts.pory"
	.string "We hope we can interview you again\n"
# 1330 "data/maps/SlateportCity/scripts.pory"
	.string "with news of more discoveries!$"
# 1331 "data/maps/SlateportCity/scripts.pory"

# 1332 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternWhewFirstInterview:
# 1333 "data/maps/SlateportCity/scripts.pory"
	.string "CAPT. STERN: Whew…\p"
# 1334 "data/maps/SlateportCity/scripts.pory"
	.string "That was my first time to be filmed for\n"
# 1335 "data/maps/SlateportCity/scripts.pory"
	.string "TV. That was nerve-wracking.$"
# 1336 "data/maps/SlateportCity/scripts.pory"

# 1337 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_OhPlayerWeMadeDiscovery:
# 1338 "data/maps/SlateportCity/scripts.pory"
	.string "Oh! {PLAYER}{KUN}!\n"
# 1339 "data/maps/SlateportCity/scripts.pory"
	.string "You're looking great!\p"
# 1340 "data/maps/SlateportCity/scripts.pory"
	.string "We made a huge discovery on our last\n"
# 1341 "data/maps/SlateportCity/scripts.pory"
	.string "seafloor exploration.\p"
# 1342 "data/maps/SlateportCity/scripts.pory"
	.string "We found an underwater cavern on\n"
# 1343 "data/maps/SlateportCity/scripts.pory"
	.string "ROUTE 128.\p"
# 1344 "data/maps/SlateportCity/scripts.pory"
	.string "We think it's the habitat of a POKéMON\n"
# 1345 "data/maps/SlateportCity/scripts.pory"
	.string "that's said to have been long extinct.$"
# 1346 "data/maps/SlateportCity/scripts.pory"

# 1347 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_AquaWillAssumeControlOfSubmarine:
# 1348 "data/maps/SlateportCity/scripts.pory"
	.string "Fufufu…\n"
# 1349 "data/maps/SlateportCity/scripts.pory"
	.string "CAPT. STERN, I presume.\p"
# 1350 "data/maps/SlateportCity/scripts.pory"
	.string "We of TEAM AQUA will assume\n"
# 1351 "data/maps/SlateportCity/scripts.pory"
	.string "control of your submarine!\p"
# 1352 "data/maps/SlateportCity/scripts.pory"
	.string "Your objections are meaningless!\n"
# 1353 "data/maps/SlateportCity/scripts.pory"
	.string "We expect your total cooperation!\p"
# 1354 "data/maps/SlateportCity/scripts.pory"
	.string "Fufufu…\n"
# 1355 "data/maps/SlateportCity/scripts.pory"
	.string "Just watch and learn what TEAM\l"
# 1356 "data/maps/SlateportCity/scripts.pory"
	.string "AQUA has planned!$"
# 1357 "data/maps/SlateportCity/scripts.pory"

# 1358 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternWhatWasAllThat:
# 1359 "data/maps/SlateportCity/scripts.pory"
	.string "CAPT. STERN: What was that all about?\p"
# 1360 "data/maps/SlateportCity/scripts.pory"
	.string "It sounded like someone using\n"
# 1361 "data/maps/SlateportCity/scripts.pory"
	.string "a megaphone…\p"
# 1362 "data/maps/SlateportCity/scripts.pory"
	.string "Where did it come from?$"
# 1363 "data/maps/SlateportCity/scripts.pory"

# 1364 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_FromHarborTryingToTakeSub:
# 1365 "data/maps/SlateportCity/scripts.pory"
	.string "It's from the HARBOR!\p"
# 1366 "data/maps/SlateportCity/scripts.pory"
	.string "The submarine!\n"
# 1367 "data/maps/SlateportCity/scripts.pory"
	.string "They're trying to take it!$"
# 1368 "data/maps/SlateportCity/scripts.pory"

# 1369 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_PleaseComeWithMe:
# 1370 "data/maps/SlateportCity/scripts.pory"
	.string "{PLAYER}{KUN}!\n"
# 1371 "data/maps/SlateportCity/scripts.pory"
	.string "Please, come with me!$"
# 1372 "data/maps/SlateportCity/scripts.pory"

# 1373 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BattleTentSign:
# 1374 "data/maps/SlateportCity/scripts.pory"
	.string "BATTLE TENT SLATEPORT SITE\n"
# 1375 "data/maps/SlateportCity/scripts.pory"
	.string "“Find it! The ultimate POKéMON!”$"
# 1376 "data/maps/SlateportCity/scripts.pory"

# 1377 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternsShipyardWantedSign:
# 1378 "data/maps/SlateportCity/scripts.pory"
	.string "STERN'S SHIPYARD\p"
# 1379 "data/maps/SlateportCity/scripts.pory"
	.string "“Wanted: A sailor capable of sailing\n"
# 1380 "data/maps/SlateportCity/scripts.pory"
	.string "in all currents.”$"
# 1381 "data/maps/SlateportCity/scripts.pory"

# 1382 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternsShipyardNearsCompletion:
# 1383 "data/maps/SlateportCity/scripts.pory"
	.string "STERN'S SHIPYARD\p"
# 1384 "data/maps/SlateportCity/scripts.pory"
	.string "“The ferry S.S. TIDAL nears\n"
# 1385 "data/maps/SlateportCity/scripts.pory"
	.string "completion for serving the ports of\l"
# 1386 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT and LILYCOVE.”$"
# 1387 "data/maps/SlateportCity/scripts.pory"

# 1388 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SternsShipyardFerryComplete:
# 1389 "data/maps/SlateportCity/scripts.pory"
	.string "STERN'S SHIPYARD\p"
# 1390 "data/maps/SlateportCity/scripts.pory"
	.string "“Boarding of the SLATEPORT-LILYCOVE\n"
# 1391 "data/maps/SlateportCity/scripts.pory"
	.string "ferry S.S. TIDAL is handled at the\l"
# 1392 "data/maps/SlateportCity/scripts.pory"
	.string "HARBOR.”$"
# 1393 "data/maps/SlateportCity/scripts.pory"

# 1394 "data/maps/SlateportCity/scripts.pory"
seabreeze::
# 1395 "data/maps/SlateportCity/scripts.pory"
	msgbox SlateportCity_Text_SeabreezeSign, MSGBOX_SIGN
# 1396 "data/maps/SlateportCity/scripts.pory"
	end
# 1397 "data/maps/SlateportCity/scripts.pory"

# 1398 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_SeabreezeSign:
# 1399 "data/maps/SlateportCity/scripts.pory"
	.string "SEABREEZE SHIPPING\n"
# 1400 "data/maps/SlateportCity/scripts.pory"
	.string "Connecting HOENN to the world.$"
# 1401 "data/maps/SlateportCity/scripts.pory"

# 1402 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_PokemonFanClubSign:
# 1403 "data/maps/SlateportCity/scripts.pory"
	.string "POKéMON FAN CLUB\n"
# 1404 "data/maps/SlateportCity/scripts.pory"
	.string "“Calling all fans of POKéMON!”$"
# 1405 "data/maps/SlateportCity/scripts.pory"

# 1406 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_OceanicMuseumSign:
# 1407 "data/maps/SlateportCity/scripts.pory"
	.string "“The endless sea sustains\n"
# 1408 "data/maps/SlateportCity/scripts.pory"
	.string "all life.”\p"
# 1409 "data/maps/SlateportCity/scripts.pory"
	.string "OCEANIC MUSEUM$"
# 1410 "data/maps/SlateportCity/scripts.pory"

# 1411 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_CitySign:
# 1412 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT CITY\p"
# 1413 "data/maps/SlateportCity/scripts.pory"
	.string "“The port where people and POKéMON\n"
# 1414 "data/maps/SlateportCity/scripts.pory"
	.string "cross paths.”$"
# 1415 "data/maps/SlateportCity/scripts.pory"

# 1416 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_MarketSign:
# 1417 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT MARKET\n"
# 1418 "data/maps/SlateportCity/scripts.pory"
	.string "“Unique items found nowhere else!”$"
# 1419 "data/maps/SlateportCity/scripts.pory"

# 1420 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_HarborFerryUnderConstruction:
# 1421 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT HARBOR\p"
# 1422 "data/maps/SlateportCity/scripts.pory"
	.string "“The ferry S.S. TIDAL is under\n"
# 1423 "data/maps/SlateportCity/scripts.pory"
	.string "construction in the SHIPYARD.\p"
# 1424 "data/maps/SlateportCity/scripts.pory"
	.string "“Service is scheduled to begin\n"
# 1425 "data/maps/SlateportCity/scripts.pory"
	.string "shortly.”$"
# 1426 "data/maps/SlateportCity/scripts.pory"

# 1427 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_HarborSign:
# 1428 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT HARBOR\p"
# 1429 "data/maps/SlateportCity/scripts.pory"
	.string "“Enjoy a delightful cruise on\n"
# 1430 "data/maps/SlateportCity/scripts.pory"
	.string "the ferry S.S. TIDAL.”$"
# 1431 "data/maps/SlateportCity/scripts.pory"

# 1432 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_NameRatersHouseSign:
# 1433 "data/maps/SlateportCity/scripts.pory"
	.string "NAME RATER'S HOUSE\n"
# 1434 "data/maps/SlateportCity/scripts.pory"
	.string "“POKéMON nicknames rated.”$"
# 1435 "data/maps/SlateportCity/scripts.pory"

# 1436 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ExplainBerries:
# 1437 "data/maps/SlateportCity/scripts.pory"
	.string "If a wild POKéMON gets hurt, it heals\n"
# 1438 "data/maps/SlateportCity/scripts.pory"
	.string "itself by chewing on BERRIES.\p"
# 1439 "data/maps/SlateportCity/scripts.pory"
	.string "Did you know that?\p"
# 1440 "data/maps/SlateportCity/scripts.pory"
	.string "Somebody saw that and got the idea\n"
# 1441 "data/maps/SlateportCity/scripts.pory"
	.string "of making medicine from BERRIES.\p"
# 1442 "data/maps/SlateportCity/scripts.pory"
	.string "Did you know that?\p"
# 1443 "data/maps/SlateportCity/scripts.pory"
	.string "To turn BERRIES into medicine,\n"
# 1444 "data/maps/SlateportCity/scripts.pory"
	.string "they must be crushed into powder.\p"
# 1445 "data/maps/SlateportCity/scripts.pory"
	.string "Did you know that?\p"
# 1446 "data/maps/SlateportCity/scripts.pory"
	.string "You seem to have an interest\n"
# 1447 "data/maps/SlateportCity/scripts.pory"
	.string "in BERRIES!\p"
# 1448 "data/maps/SlateportCity/scripts.pory"
	.string "I've got something good for someone\n"
# 1449 "data/maps/SlateportCity/scripts.pory"
	.string "like you.$"
# 1450 "data/maps/SlateportCity/scripts.pory"

# 1451 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ExplainBerryPowder:
# 1452 "data/maps/SlateportCity/scripts.pory"
	.string "I recently had machines installed at\n"
# 1453 "data/maps/SlateportCity/scripts.pory"
	.string "POKéMON CENTERS for crushing BERRIES.\p"
# 1454 "data/maps/SlateportCity/scripts.pory"
	.string "The BERRY CRUSH machines are at\n"
# 1455 "data/maps/SlateportCity/scripts.pory"
	.string "the DIRECT CORNER upstairs.\p"
# 1456 "data/maps/SlateportCity/scripts.pory"
	.string "Did you know?\p"
# 1457 "data/maps/SlateportCity/scripts.pory"
	.string "Could you make BERRY POWDER for\n"
# 1458 "data/maps/SlateportCity/scripts.pory"
	.string "me using those machines?\p"
# 1459 "data/maps/SlateportCity/scripts.pory"
	.string "I can make you all sorts of medicine\n"
# 1460 "data/maps/SlateportCity/scripts.pory"
	.string "if you bring me lots of BERRY POWDER.$"
# 1461 "data/maps/SlateportCity/scripts.pory"

# 1462 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_BroughtMeSomeBerryPowder:
# 1463 "data/maps/SlateportCity/scripts.pory"
	.string "Have you brought me some\n"
# 1464 "data/maps/SlateportCity/scripts.pory"
	.string "BERRY POWDER?$"
# 1465 "data/maps/SlateportCity/scripts.pory"

# 1466 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ExchangeWhatWithIt:
# 1467 "data/maps/SlateportCity/scripts.pory"
	.string "What would you like to exchange\n"
# 1468 "data/maps/SlateportCity/scripts.pory"
	.string "it with?$"
# 1469 "data/maps/SlateportCity/scripts.pory"

# 1470 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ExchangeBerryPowderForItem:
# 1471 "data/maps/SlateportCity/scripts.pory"
	.string "Okay, you want to exchange your\n"
# 1472 "data/maps/SlateportCity/scripts.pory"
	.string "BERRY POWDER for one {STR_VAR_1}?$"
# 1473 "data/maps/SlateportCity/scripts.pory"

# 1474 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_DontHaveEnoughBerryPowder:
# 1475 "data/maps/SlateportCity/scripts.pory"
	.string "Oh, dear. You don't have enough\n"
# 1476 "data/maps/SlateportCity/scripts.pory"
	.string "BERRY POWDER.$"
# 1477 "data/maps/SlateportCity/scripts.pory"

# 1478 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_FineBerryPowderTradeSomethingElse:
# 1479 "data/maps/SlateportCity/scripts.pory"
	.string "This is fine BERRY POWDER.\n"
# 1480 "data/maps/SlateportCity/scripts.pory"
	.string "It will make excellent medicine.\p"
# 1481 "data/maps/SlateportCity/scripts.pory"
	.string "Would you like to trade more of your\n"
# 1482 "data/maps/SlateportCity/scripts.pory"
	.string "BERRY POWDER for something else?$"
# 1483 "data/maps/SlateportCity/scripts.pory"

# 1484 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_WhenYouGetMoreBringItToMe:
# 1485 "data/maps/SlateportCity/scripts.pory"
	.string "Okay! When you get some more\n"
# 1486 "data/maps/SlateportCity/scripts.pory"
	.string "BERRY POWDER, bring it to me, please!$"
# 1487 "data/maps/SlateportCity/scripts.pory"

# 1488 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_ComeBackToTradeBerryPowder:
# 1489 "data/maps/SlateportCity/scripts.pory"
	.string "Come back if you'd like to trade your\n"
# 1490 "data/maps/SlateportCity/scripts.pory"
	.string "BERRY POWDER for some medicine.\p"
# 1491 "data/maps/SlateportCity/scripts.pory"
	.string "I'm always running a bazaar here.\p"
# 1492 "data/maps/SlateportCity/scripts.pory"
	.string "Did you know?$"
# 1493 "data/maps/SlateportCity/scripts.pory"

# 1494 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_YouDroveTeamAquaAway:
# 1495 "data/maps/SlateportCity/scripts.pory"
	.string "SCOTT: Huh?\n"
# 1496 "data/maps/SlateportCity/scripts.pory"
	.string "I'm sure I met you somewhere before.\p"
# 1497 "data/maps/SlateportCity/scripts.pory"
	.string "Have I introduced myself to you?\n"
# 1498 "data/maps/SlateportCity/scripts.pory"
	.string "If not, my name's SCOTT.\p"
# 1499 "data/maps/SlateportCity/scripts.pory"
	.string "I just saw TEAM AQUA run away from\n"
# 1500 "data/maps/SlateportCity/scripts.pory"
	.string "here like they were stung.\p"
# 1501 "data/maps/SlateportCity/scripts.pory"
	.string "Let me guess--you drove them away?$"
# 1502 "data/maps/SlateportCity/scripts.pory"

# 1503 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_MaybeThisTrainer:
# 1504 "data/maps/SlateportCity/scripts.pory"
	.string "SCOTT: Hmm…\n"
# 1505 "data/maps/SlateportCity/scripts.pory"
	.string "Maybe, just maybe, this TRAINER…$"
# 1506 "data/maps/SlateportCity/scripts.pory"

# 1507 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_LetsRegisterEachOther:
# 1508 "data/maps/SlateportCity/scripts.pory"
	.string "SCOTT: All right! I think you're going\n"
# 1509 "data/maps/SlateportCity/scripts.pory"
	.string "to become a good friend.\p"
# 1510 "data/maps/SlateportCity/scripts.pory"
	.string "So, let's register each other in our\n"
# 1511 "data/maps/SlateportCity/scripts.pory"
	.string "POKéNAVS.\p"
# 1512 "data/maps/SlateportCity/scripts.pory"
	.string "… … … … … …$"
# 1513 "data/maps/SlateportCity/scripts.pory"

# 1514 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_RegisteredScott:
# 1515 "data/maps/SlateportCity/scripts.pory"
	.string "Registered this SCOTT person\n"
# 1516 "data/maps/SlateportCity/scripts.pory"
	.string "in the POKéNAV.$"
# 1517 "data/maps/SlateportCity/scripts.pory"

# 1518 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_KeepEyeOnTrainersBeSeeingYou:
# 1519 "data/maps/SlateportCity/scripts.pory"
	.string "SCOTT: What I'd like to do is tag along\n"
# 1520 "data/maps/SlateportCity/scripts.pory"
	.string "with you, but I do want to keep an eye\l"
# 1521 "data/maps/SlateportCity/scripts.pory"
	.string "on the talents of other people, too.\p"
# 1522 "data/maps/SlateportCity/scripts.pory"
	.string "So, I'll be off to roam other towns\n"
# 1523 "data/maps/SlateportCity/scripts.pory"
	.string "a bit more.\p"
# 1524 "data/maps/SlateportCity/scripts.pory"
	.string "Be seeing you, {PLAYER}{KUN}!$"
# 1525 "data/maps/SlateportCity/scripts.pory"

# 1526 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_TakingBattleTentChallenge:
# 1527 "data/maps/SlateportCity/scripts.pory"
    .string "SCOTT: Oh, hey!\n"
# 1528 "data/maps/SlateportCity/scripts.pory"
    .string "If it isn't {PLAYER}{KUN}!\p"
# 1529 "data/maps/SlateportCity/scripts.pory"
    .string "{PLAYER}{KUN}, let me guess--you're going\n"
# 1530 "data/maps/SlateportCity/scripts.pory"
    .string "to take the BATTLE TENT challenge?\p"
# 1531 "data/maps/SlateportCity/scripts.pory"
    .string "Yeah! That's a good idea!\n"
# 1532 "data/maps/SlateportCity/scripts.pory"
    .string "That's a really great idea!\p"
# 1533 "data/maps/SlateportCity/scripts.pory"
    .string "After all, a tough TRAINER is\n"
# 1534 "data/maps/SlateportCity/scripts.pory"
    .string "the perfect fit for the BATTLE TENT!\p"
# 1535 "data/maps/SlateportCity/scripts.pory"
    .string "Give it your best effort!$"
# 1536 "data/maps/SlateportCity/scripts.pory"

# 1537 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_Newfisherman:
# 1538 "data/maps/SlateportCity/scripts.pory"
    .string "My grandfather used to tell legends\n"
# 1539 "data/maps/SlateportCity/scripts.pory"
    .string "about giant sea monsters hiding\l"
# 1540 "data/maps/SlateportCity/scripts.pory"
    .string "deep in the ocean…\p"
# 1541 "data/maps/SlateportCity/scripts.pory"
    .string "But lately… all I've been finding\n"
# 1542 "data/maps/SlateportCity/scripts.pory"
    .string "is MAGIKARP. And tiny ones at that.$"
# 1543 "data/maps/SlateportCity/scripts.pory"

# 1544 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_LukaCargoIntro:
# 1545 "data/maps/SlateportCity/scripts.pory"
	.string "LUKA: Hey, {PLAYER}! All these AQUA\n"
# 1546 "data/maps/SlateportCity/scripts.pory"
	.string "thugs have been blocking routes and\l"
# 1547 "data/maps/SlateportCity/scripts.pory"
	.string "making it a pain to get around, so I\l"
# 1548 "data/maps/SlateportCity/scripts.pory"
	.string "had to go through SLATEPORT on my\l"
# 1549 "data/maps/SlateportCity/scripts.pory"
	.string "way to FORTREE.\p"
# 1550 "data/maps/SlateportCity/scripts.pory"
	.string "But you know, they're really\n"
# 1551 "data/maps/SlateportCity/scripts.pory"
	.string "suspicious. I get a feeling we can't\l"
# 1552 "data/maps/SlateportCity/scripts.pory"
	.string "leave them be.\p"
# 1553 "data/maps/SlateportCity/scripts.pory"
	.string "I saw a bunch of them loading a\n"
# 1554 "data/maps/SlateportCity/scripts.pory"
	.string "a cargo ship over at the\l"
# 1555 "data/maps/SlateportCity/scripts.pory"
	.string "SLATEPORT dock.$"
# 1556 "data/maps/SlateportCity/scripts.pory"

# 1557 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_LukaCargoRepeat:
# 1558 "data/maps/SlateportCity/scripts.pory"
	.string "LUKA: We should go check out what\n"
# 1559 "data/maps/SlateportCity/scripts.pory"
	.string "those shady AQUA members were doing\l"
# 1560 "data/maps/SlateportCity/scripts.pory"
	.string "at the dock.$"
# 1561 "data/maps/SlateportCity/scripts.pory"

# 1562 "data/maps/SlateportCity/scripts.pory"
SlateportCity_Text_LukaCargoShipReturn:
# 1563 "data/maps/SlateportCity/scripts.pory"
	.string "LUKA: A key for the SEABREEZE SHIPPING\n"
# 1564 "data/maps/SlateportCity/scripts.pory"
	.string "building? That's strange. I didn't think\l"
# 1565 "data/maps/SlateportCity/scripts.pory"
	.string "they had any connection to TEAM AQUA.\p"
# 1566 "data/maps/SlateportCity/scripts.pory"
	.string "I need to go fill CALENDULA in on this.\n"
# 1567 "data/maps/SlateportCity/scripts.pory"
	.string "If you confront them, be careful.$"
