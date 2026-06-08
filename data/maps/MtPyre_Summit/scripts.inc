# 1 "data/maps/MtPyre_Summit/scripts.pory"

# 2 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_MapScripts::
# 3 "data/maps/MtPyre_Summit/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Summit_OnTransition
# 4 "data/maps/MtPyre_Summit/scripts.pory"
	.byte 0
# 5 "data/maps/MtPyre_Summit/scripts.pory"

# 6 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_OnTransition:
# 7 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_SetArchieMaxiePositions
# 8 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 9 "data/maps/MtPyre_Summit/scripts.pory"

# 10 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_SetArchieMaxiePositions::
# 11 "data/maps/MtPyre_Summit/scripts.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_MAXIE, 23, 6
# 12 "data/maps/MtPyre_Summit/scripts.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_ARCHIE, 22, 6
# 13 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 14 "data/maps/MtPyre_Summit/scripts.pory"

# 15 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger0::
# 16 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 17 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 18 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 19 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 20 "data/maps/MtPyre_Summit/scripts.pory"

# 21 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger1::
# 22 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 23 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 24 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 25 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 26 "data/maps/MtPyre_Summit/scripts.pory"

# 27 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger2::
# 28 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 29 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 30 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 31 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 32 "data/maps/MtPyre_Summit/scripts.pory"

# 33 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaExits::
# 34 "data/maps/MtPyre_Summit/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 35 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 36 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 37 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterDown
# 38 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 39 "data/maps/MtPyre_Summit/scripts.pory"
	delay 50
# 40 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieFacePlayer0
# 41 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieFacePlayer1
# 42 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieFacePlayer2
# 43 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo, MSGBOX_DEFAULT
# 44 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 45 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 46 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 47 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_1
# 48 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_2
# 49 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_3
# 50 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_4
# 51 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_ARCHIE
# 52 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
# 53 "data/maps/MtPyre_Summit/scripts.pory"
	fadedefaultbgm
# 54 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 55 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 56 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 1
# 57 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_OldLadyApproachPlayer0
# 58 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_OldLadyApproachPlayer1
# 59 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_OldLadyApproachPlayer2
# 60 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis, MSGBOX_DEFAULT
# 61 "data/maps/MtPyre_Summit/scripts.pory"
	giveitem ITEM_MAGMA_EMBLEM
# 62 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RECEIVED_RED_OR_BLUE_ORB
# 63 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_JAGGED_PASS_MAGMA_GUARD
# 64 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 65 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 66 "data/maps/MtPyre_Summit/scripts.pory"

# 67 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 68 "data/maps/MtPyre_Summit/scripts.pory"
	@ STATUE SCENE: old lady walks to Jirachi statue, old man walks to Celebi
# 69 "data/maps/MtPyre_Summit/scripts.pory"
	@ statue. Both interact (exclamation mark), then old lady recounts the
# 70 "data/maps/MtPyre_Summit/scripts.pory"
	@ legend of the chosen one. Runs in parallel with waitmovement 0.
# 71 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 72 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyToJirachi
# 73 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, MtPyre_Summit_Movement_OldManToCelebi
# 74 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 75 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 76 "data/maps/MtPyre_Summit/scripts.pory"

# 77 "data/maps/MtPyre_Summit/scripts.pory"
	@ Both react to the statues simultaneously
# 78 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 79 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_ExclamationMark
# 80 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_ExclamationMark
# 81 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 82 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 83 "data/maps/MtPyre_Summit/scripts.pory"

# 84 "data/maps/MtPyre_Summit/scripts.pory"
	@ Old lady turns to face the statue and speaks the legend
# 85 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_WalkInPlaceFasterUp
# 86 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 87 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendOfTheChosen, MSGBOX_DEFAULT
# 88 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 89 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 90 "data/maps/MtPyre_Summit/scripts.pory"

# 91 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_WalkInPlaceFasterUp
# 92 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 93 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendContinued, MSGBOX_DEFAULT
# 94 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 95 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 96 "data/maps/MtPyre_Summit/scripts.pory"

# 97 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 98 "data/maps/MtPyre_Summit/scripts.pory"
	@ Force player to walk 3 tiles forward (north) toward the warp spot.
# 99 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 100 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 101 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 102 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 103 "data/maps/MtPyre_Summit/scripts.pory"

# 104 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 105 "data/maps/MtPyre_Summit/scripts.pory"
	@ Camera pan: detach camera, pan up 25 tiles, then flash-fade and launch
# 106 "data/maps/MtPyre_Summit/scripts.pory"
	@ the C cutscene. fadescreenspeed with speed 8 = fast flash transition.
# 107 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 108 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 109 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 110 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 111 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 112 "data/maps/MtPyre_Summit/scripts.pory"

# 113 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 114 "data/maps/MtPyre_Summit/scripts.pory"
	special RemoveCameraObject
# 115 "data/maps/MtPyre_Summit/scripts.pory"
	special StartTimeWarpScene
# 116 "data/maps/MtPyre_Summit/scripts.pory"

# 117 "data/maps/MtPyre_Summit/scripts.pory"
	@ The C cutscene restores the overworld — do NOT call releaseall here.
# 118 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 119 "data/maps/MtPyre_Summit/scripts.pory"

# 120 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady walks from player-meeting position up to the Jirachi statue
# 121 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyToJirachi:
# 122 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 123 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 124 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right	
# 125 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 126 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 127 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 128 "data/maps/MtPyre_Summit/scripts.pory"

# 129 "data/maps/MtPyre_Summit/scripts.pory"
@ Old man walks from his position to the Celebi statue
# 130 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldManToCelebi:
# 131 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 132 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 133 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 134 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 135 "data/maps/MtPyre_Summit/scripts.pory"

# 136 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player 3 tiles north toward the warp trigger spot
# 137 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWalkForward:
# 138 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 139 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 140 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 141 "data/maps/MtPyre_Summit/scripts.pory"

# 142 "data/maps/MtPyre_Summit/scripts.pory"
@ 25 walk_fast_up steps = 25 tiles upward camera pan
# 143 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_CameraPanUp:
# 144 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 145 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 146 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 147 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 148 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 149 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 150 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 151 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 152 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 153 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 154 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 155 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 156 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 157 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 158 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 159 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 160 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 161 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 162 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 163 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 164 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 165 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 166 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 167 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 168 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 169 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 170 "data/maps/MtPyre_Summit/scripts.pory"

# 171 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 172 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 173 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 174 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 175 "data/maps/MtPyre_Summit/scripts.pory"

# 176 "data/maps/MtPyre_Summit/scripts.pory"
@ Archie is already facing player
# 177 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 178 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 179 "data/maps/MtPyre_Summit/scripts.pory"

# 180 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 181 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 182 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 183 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 184 "data/maps/MtPyre_Summit/scripts.pory"

# 185 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 186 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 187 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 188 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 189 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 190 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 191 "data/maps/MtPyre_Summit/scripts.pory"

# 192 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 193 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 194 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 195 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 196 "data/maps/MtPyre_Summit/scripts.pory"

# 197 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 198 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 199 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 200 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 201 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 202 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 203 "data/maps/MtPyre_Summit/scripts.pory"

# 204 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 205 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 206 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 207 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 208 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 209 "data/maps/MtPyre_Summit/scripts.pory"

# 210 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 211 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 212 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 213 "data/maps/MtPyre_Summit/scripts.pory"

# 214 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 215 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 216 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 217 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 218 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 219 "data/maps/MtPyre_Summit/scripts.pory"

# 220 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 221 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 222 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 223 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 224 "data/maps/MtPyre_Summit/scripts.pory"

# 225 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 226 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 227 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 228 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 229 "data/maps/MtPyre_Summit/scripts.pory"

# 230 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldMan::
# 231 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 232 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 233 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 234 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 235 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 236 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 237 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 238 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 239 "data/maps/MtPyre_Summit/scripts.pory"

# 240 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 241 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 242 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 243 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 244 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 245 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 246 "data/maps/MtPyre_Summit/scripts.pory"

# 247 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManTale::
# 248 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 249 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 250 "data/maps/MtPyre_Summit/scripts.pory"

# 251 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 252 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 253 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 254 "data/maps/MtPyre_Summit/scripts.pory"

# 255 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 256 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 257 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 258 "data/maps/MtPyre_Summit/scripts.pory"

# 259 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLady::
# 260 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 261 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 262 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 263 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 264 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 265 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 266 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 267 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 268 "data/maps/MtPyre_Summit/scripts.pory"

# 269 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 270 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 271 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 272 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 273 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 274 "data/maps/MtPyre_Summit/scripts.pory"

# 275 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 276 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 277 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 278 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 279 "data/maps/MtPyre_Summit/scripts.pory"

# 280 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 281 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 282 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 283 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 284 "data/maps/MtPyre_Summit/scripts.pory"

# 285 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 286 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 287 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 288 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 289 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 290 "data/maps/MtPyre_Summit/scripts.pory"

# 291 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 292 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 293 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 294 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 295 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 296 "data/maps/MtPyre_Summit/scripts.pory"

# 297 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 298 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 299 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 300 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 301 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 302 "data/maps/MtPyre_Summit/scripts.pory"

# 303 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 304 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 305 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 306 "data/maps/MtPyre_Summit/scripts.pory"
	delay 60
# 307 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 308 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 309 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 310 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 311 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 312 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 313 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 314 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 315 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 316 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 317 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 318 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 319 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 320 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 321 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 322 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 323 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 324 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 325 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 326 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 327 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 328 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 329 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 330 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 331 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 332 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 333 "data/maps/MtPyre_Summit/scripts.pory"

# 334 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 335 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 336 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 337 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 338 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 339 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 340 "data/maps/MtPyre_Summit/scripts.pory"

# 341 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 342 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 343 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 344 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 345 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 346 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 347 "data/maps/MtPyre_Summit/scripts.pory"

# 348 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 349 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 350 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 351 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 352 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 353 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 354 "data/maps/MtPyre_Summit/scripts.pory"

# 355 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 356 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 357 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 358 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 359 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 360 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 361 "data/maps/MtPyre_Summit/scripts.pory"

# 362 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 363 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 364 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 365 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 366 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 367 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 368 "data/maps/MtPyre_Summit/scripts.pory"

# 369 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 370 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 371 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 372 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 373 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 374 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 375 "data/maps/MtPyre_Summit/scripts.pory"

# 376 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 377 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 378 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 379 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 380 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 381 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 382 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 383 "data/maps/MtPyre_Summit/scripts.pory"

# 384 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 385 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 386 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 387 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 388 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 389 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 390 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 391 "data/maps/MtPyre_Summit/scripts.pory"

# 392 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 393 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 394 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 395 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 396 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 397 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 398 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 399 "data/maps/MtPyre_Summit/scripts.pory"

# 400 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 401 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 402 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 403 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 404 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 405 "data/maps/MtPyre_Summit/scripts.pory"

# 406 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 407 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 408 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 409 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 410 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 411 "data/maps/MtPyre_Summit/scripts.pory"

# 412 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieExit:
# 413 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 414 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 415 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 416 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 417 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 418 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 419 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 420 "data/maps/MtPyre_Summit/scripts.pory"

# 421 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieExit:
# 422 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 423 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 424 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 425 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 426 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 427 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 428 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 429 "data/maps/MtPyre_Summit/scripts.pory"

# 430 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 431 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 432 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 433 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 434 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 435 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 436 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 437 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 438 "data/maps/MtPyre_Summit/scripts.pory"

# 439 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 440 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 441 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 442 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 443 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 444 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 445 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 446 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 447 "data/maps/MtPyre_Summit/scripts.pory"

# 448 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 449 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 450 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 451 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 452 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 453 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 454 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 455 "data/maps/MtPyre_Summit/scripts.pory"

# 456 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 457 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 458 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 459 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 460 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 461 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 462 "data/maps/MtPyre_Summit/scripts.pory"

# 463 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 464 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 465 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 466 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 467 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 468 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 469 "data/maps/MtPyre_Summit/scripts.pory"

# 470 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 471 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 472 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 473 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 474 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 475 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 476 "data/maps/MtPyre_Summit/scripts.pory"

# 477 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 478 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 479 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_up
# 480 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 481 "data/maps/MtPyre_Summit/scripts.pory"

# 482 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 483 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 484 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 485 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 486 "data/maps/MtPyre_Summit/scripts.pory"

# 487 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 488 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 489 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 490 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 491 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 492 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 493 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 494 "data/maps/MtPyre_Summit/scripts.pory"

# 495 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 496 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 497 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 498 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 499 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 500 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 501 "data/maps/MtPyre_Summit/scripts.pory"

# 502 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 503 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 504 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 505 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 506 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 507 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 508 "data/maps/MtPyre_Summit/scripts.pory"

# 509 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt1::
# 510 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 511 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 512 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 513 "data/maps/MtPyre_Summit/scripts.pory"

# 514 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt2::
# 515 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 516 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 517 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 518 "data/maps/MtPyre_Summit/scripts.pory"

# 519 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt3::
# 520 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 521 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 522 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 523 "data/maps/MtPyre_Summit/scripts.pory"

# 524 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt4::
# 525 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 526 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 527 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 528 "data/maps/MtPyre_Summit/scripts.pory"

# 529 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 530 "data/maps/MtPyre_Summit/scripts.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 531 "data/maps/MtPyre_Summit/scripts.pory"
	.string "here ahead of us!\p"
# 532 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We can't fall behind!$"
# 533 "data/maps/MtPyre_Summit/scripts.pory"

# 534 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 535 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I thought you were one of the MAGMAS\n"
# 536 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who happened to come back…$"
# 537 "data/maps/MtPyre_Summit/scripts.pory"

# 538 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 539 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Yeah, so you are strong…\n"
# 540 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But there're a lot of us!$"
# 541 "data/maps/MtPyre_Summit/scripts.pory"

# 542 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 543 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Hah!\n"
# 544 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Too bad for you!\p"
# 545 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you came earlier, you only would've\n"
# 546 "data/maps/MtPyre_Summit/scripts.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 547 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But since you arrived now, you have\n"
# 548 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to take on us toughies!$"
# 549 "data/maps/MtPyre_Summit/scripts.pory"

# 550 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 551 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Urgh… I should've let you take on\n"
# 552 "data/maps/MtPyre_Summit/scripts.pory"
	.string "TEAM MAGMA first…$"
# 553 "data/maps/MtPyre_Summit/scripts.pory"

# 554 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 555 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't know anything!\n"
# 556 "data/maps/MtPyre_Summit/scripts.pory"
	.string "So why are you messing with us?$"
# 557 "data/maps/MtPyre_Summit/scripts.pory"

# 558 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 559 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You…\n"
# 560 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 561 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't belong to either TEAM,\n"
# 562 "data/maps/MtPyre_Summit/scripts.pory"
	.string "so why would you be here?$"
# 563 "data/maps/MtPyre_Summit/scripts.pory"

# 564 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 565 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you're going to mess with anyone,\n"
# 566 "data/maps/MtPyre_Summit/scripts.pory"
	.string "let it be TEAM MAGMA…$"
# 567 "data/maps/MtPyre_Summit/scripts.pory"

# 568 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 569 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Heh, it doesn't matter!\n"
# 570 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We bought ourselves some time!\p"
# 571 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BOSS should have snatched what\n"
# 572 "data/maps/MtPyre_Summit/scripts.pory"
	.string "he was after!$"
# 573 "data/maps/MtPyre_Summit/scripts.pory"

# 574 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 575 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, I know!\n"
# 576 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 577 "data/maps/MtPyre_Summit/scripts.pory"
	.string "but they wouldn't have you!\p"
# 578 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, don't think that we'll let you\n"
# 579 "data/maps/MtPyre_Summit/scripts.pory"
	.string "join our TEAM AQUA!$"
# 580 "data/maps/MtPyre_Summit/scripts.pory"

# 581 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 582 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you want to join TEAM AQUA that\n"
# 583 "data/maps/MtPyre_Summit/scripts.pory"
	.string "badly, we can consider it…$"
# 584 "data/maps/MtPyre_Summit/scripts.pory"

# 585 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 586 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We have a great combination going\n"
# 587 "data/maps/MtPyre_Summit/scripts.pory"
	.string "with us members and our leader.$"
# 588 "data/maps/MtPyre_Summit/scripts.pory"

# 589 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 590 "data/maps/MtPyre_Summit/scripts.pory"
	.string "ARCHIE: TEAM MAGMA's MAXIE got ahead\n"
# 591 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of us, but we also got what we wanted.\p"
# 592 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The RED ORB preserved at MT. PYRE…\n"
# 593 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I, ARCHIE, now have it in my possession!\p"
# 594 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Fufufu… Now we can bring our ultimate\n"
# 595 "data/maps/MtPyre_Summit/scripts.pory"
	.string "objective to fruition!\p"
# 596 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Okay, TEAM!\n"
# 597 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We're pulling out!$"
# 598 "data/maps/MtPyre_Summit/scripts.pory"

# 599 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 600 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, no…\n"
# 601 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This cannot happen…\p"
# 602 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Not only the BLUE ORB, but even\n"
# 603 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB has been taken…\p"
# 604 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 605 "data/maps/MtPyre_Summit/scripts.pory"
	.string "be separated. They belong together.\p"
# 606 "data/maps/MtPyre_Summit/scripts.pory"
	.string "What are those men trying to do with\n"
# 607 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two ORBS?\p"
# 608 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 609 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\p"
# 610 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 611 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and took the BLUE ORB first?\p"
# 612 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, in their haste, they left this\n"
# 613 "data/maps/MtPyre_Summit/scripts.pory"
	.string "behind.\p"
# 614 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I couldn't imagine what exactly it\n"
# 615 "data/maps/MtPyre_Summit/scripts.pory"
	.string "could be.\p"
# 616 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I would like you to have it.\n"
# 617 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps it will be useful in some way.$"
# 618 "data/maps/MtPyre_Summit/scripts.pory"

# 619 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 620 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 621 "data/maps/MtPyre_Summit/scripts.pory"
	.string "those sinister men…\p"
# 622 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They must never be apart…\n"
# 623 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I fear something terrible will happen…$"
# 624 "data/maps/MtPyre_Summit/scripts.pory"

# 625 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 626 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, my goodness…\p"
# 627 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 628 "data/maps/MtPyre_Summit/scripts.pory"
	.string "have been awakened?\p"
# 629 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that the BLUE ORB and\n"
# 630 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB quelled the rage of\l"
# 631 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two POKéMON…\p"
# 632 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is also said that the true owner\n"
# 633 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the ORBS still exists.\p"
# 634 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, no one knows who, or what\n"
# 635 "data/maps/MtPyre_Summit/scripts.pory"
	.string "exactly, the ORBS belong to.\p"
# 636 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It could be a human, or perhaps\n"
# 637 "data/maps/MtPyre_Summit/scripts.pory"
	.string "a POKéMON, but no one knows.$"
# 638 "data/maps/MtPyre_Summit/scripts.pory"

# 639 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 640 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The two men who took the ORBS came\n"
# 641 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to return them on their own.\p"
# 642 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Those men…\n"
# 643 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps they are not so evil after all…$"
# 644 "data/maps/MtPyre_Summit/scripts.pory"

# 645 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 646 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The embodiments of the land, sea,\n"
# 647 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the sky…\p"
# 648 "data/maps/MtPyre_Summit/scripts.pory"
	.string "That is said to be the identities of\n"
# 649 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the super-ancient POKéMON…\p"
# 650 "data/maps/MtPyre_Summit/scripts.pory"
	.string "In the same way that we humans and\n"
# 651 "data/maps/MtPyre_Summit/scripts.pory"
	.string "POKéMON have life, our world, too,\l"
# 652 "data/maps/MtPyre_Summit/scripts.pory"
	.string "is alive…\p"
# 653 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The super-ancient POKéMON have\n"
# 654 "data/maps/MtPyre_Summit/scripts.pory"
	.string "taught us that…$"
# 655 "data/maps/MtPyre_Summit/scripts.pory"

# 656 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 657 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 658 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of POKéMON that have passed on…\p"
# 659 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This is a high place where one can\n"
# 660 "data/maps/MtPyre_Summit/scripts.pory"
	.string "see all of HOENN…\p"
# 661 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The disembodied spirits of POKéMON\n"
# 662 "data/maps/MtPyre_Summit/scripts.pory"
	.string "must find solace here…\p"
# 663 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Is it coincidence that you are here…\p"
# 664 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Will you hear out my tale? A tale long\n"
# 665 "data/maps/MtPyre_Summit/scripts.pory"
	.string "told in the HOENN region?$"
# 666 "data/maps/MtPyre_Summit/scripts.pory"

# 667 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 668 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 669 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 670 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 671 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 672 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 673 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 674 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 675 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 676 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 677 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 678 "data/maps/MtPyre_Summit/scripts.pory"
	.string "infernos and vicious storms.\p"
# 679 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 680 "data/maps/MtPyre_Summit/scripts.pory"
	.string "an end to the calamity.\p"
# 681 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Light poured from the two ORBS and\n"
# 682 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the enraged adversaries.\p"
# 683 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The pair, made docile, dove deep into\n"
# 684 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sea where eventually they\l"
# 685 "data/maps/MtPyre_Summit/scripts.pory"
	.string "disappeared…$"
# 686 "data/maps/MtPyre_Summit/scripts.pory"

# 687 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 688 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I see…\n"
# 689 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, that, too, is fine…$"
# 690 "data/maps/MtPyre_Summit/scripts.pory"

# 691 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_MaxieSilence:
# 692 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAXIE: {PLAYER}…\p"
# 693 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 694 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …$"
# 695 "data/maps/MtPyre_Summit/scripts.pory"

# 696 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 697 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is my role to pass on the legends\n"
# 698 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of HOENN to future generations.\p"
# 699 "data/maps/MtPyre_Summit/scripts.pory"
	.string "And the crisis that just ended in\n"
# 700 "data/maps/MtPyre_Summit/scripts.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 701 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Have you the time to hear the new\n"
# 702 "data/maps/MtPyre_Summit/scripts.pory"
	.string "legend of HOENN?$"
# 703 "data/maps/MtPyre_Summit/scripts.pory"

# 704 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 705 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 706 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 707 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 708 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 709 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 710 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 711 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 712 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 713 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 714 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 715 "data/maps/MtPyre_Summit/scripts.pory"
	.string "fires and vicious storms.\p"
# 716 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It was then that the POKéMON of\n"
# 717 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sky descended from a storm.\p"
# 718 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 719 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 720 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 721 "data/maps/MtPyre_Summit/scripts.pory"
	.string "flew off into the wild blue yonder…$"
# 722 "data/maps/MtPyre_Summit/scripts.pory"

# 723 "data/maps/MtPyre_Summit/scripts.pory"

# 724 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendOfTheChosen:
# 725 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues… JIRACHI and CELEBI…\p"
# 726 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They have begun to glow…\p"
# 727 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The old legend speaks of a chosen one\n"
# 728 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who carries the EMBLEM of power.\p"
# 729 "data/maps/MtPyre_Summit/scripts.pory"
	.string "When the orbs are taken and the world\n"
# 730 "data/maps/MtPyre_Summit/scripts.pory"
	.string "trembles… the chosen one shall come.$"
# 731 "data/maps/MtPyre_Summit/scripts.pory"

# 732 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendContinued:
# 733 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that when the chosen one\n"
# 734 "data/maps/MtPyre_Summit/scripts.pory"
	.string "stands before the sacred stones…\p"
# 735 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the boundary between times shall\n"
# 736 "data/maps/MtPyre_Summit/scripts.pory"
	.string "open, and they shall be called forth\p"
# 737 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to restore what has been broken.$"
