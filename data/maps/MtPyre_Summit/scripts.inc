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

# 172 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 173 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 174 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 175 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 176 "data/maps/MtPyre_Summit/scripts.pory"

# 177 "data/maps/MtPyre_Summit/scripts.pory"
@ Archie is already facing player
# 178 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 179 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 180 "data/maps/MtPyre_Summit/scripts.pory"

# 181 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 182 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 183 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 184 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 185 "data/maps/MtPyre_Summit/scripts.pory"

# 186 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 187 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 188 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 189 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 190 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 191 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 192 "data/maps/MtPyre_Summit/scripts.pory"

# 193 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 194 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 195 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 196 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 197 "data/maps/MtPyre_Summit/scripts.pory"

# 198 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 199 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 200 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 201 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 202 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 203 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 204 "data/maps/MtPyre_Summit/scripts.pory"

# 205 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 206 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 207 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 208 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 209 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 210 "data/maps/MtPyre_Summit/scripts.pory"

# 211 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 212 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 213 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 214 "data/maps/MtPyre_Summit/scripts.pory"

# 215 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 216 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 217 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 218 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 219 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 220 "data/maps/MtPyre_Summit/scripts.pory"

# 221 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 222 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 223 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 224 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 225 "data/maps/MtPyre_Summit/scripts.pory"

# 226 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 227 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 228 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 229 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 230 "data/maps/MtPyre_Summit/scripts.pory"

# 231 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldMan::
# 232 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 233 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 234 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 235 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 236 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 237 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 238 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 239 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 240 "data/maps/MtPyre_Summit/scripts.pory"

# 241 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 242 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 243 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 244 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 245 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 246 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 247 "data/maps/MtPyre_Summit/scripts.pory"

# 248 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManTale::
# 249 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 250 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 251 "data/maps/MtPyre_Summit/scripts.pory"

# 252 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 253 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 254 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 255 "data/maps/MtPyre_Summit/scripts.pory"

# 256 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 257 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 258 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 259 "data/maps/MtPyre_Summit/scripts.pory"

# 260 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLady::
# 261 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 262 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 263 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 264 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 265 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 266 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 267 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 268 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 269 "data/maps/MtPyre_Summit/scripts.pory"

# 270 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 271 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 272 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 273 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 274 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 275 "data/maps/MtPyre_Summit/scripts.pory"

# 276 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 277 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 278 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 279 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 280 "data/maps/MtPyre_Summit/scripts.pory"

# 281 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 282 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 283 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 284 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 285 "data/maps/MtPyre_Summit/scripts.pory"

# 286 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 287 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 288 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 289 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 290 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 291 "data/maps/MtPyre_Summit/scripts.pory"

# 292 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 293 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 294 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 295 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 296 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 297 "data/maps/MtPyre_Summit/scripts.pory"

# 298 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 299 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 300 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 301 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 302 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 303 "data/maps/MtPyre_Summit/scripts.pory"

# 304 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 305 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 306 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 307 "data/maps/MtPyre_Summit/scripts.pory"
	delay 60
# 308 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 309 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 310 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 311 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 312 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 313 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 314 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 315 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 316 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 317 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 318 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 319 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 320 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 321 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 322 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 323 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 324 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 325 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 326 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 327 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 328 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 329 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 330 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 331 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 332 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 333 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 334 "data/maps/MtPyre_Summit/scripts.pory"

# 335 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 336 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 337 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 338 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 339 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 340 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 341 "data/maps/MtPyre_Summit/scripts.pory"

# 342 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 343 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 344 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 345 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 346 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 347 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 348 "data/maps/MtPyre_Summit/scripts.pory"

# 349 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 350 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 351 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 352 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 353 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 354 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 355 "data/maps/MtPyre_Summit/scripts.pory"

# 356 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 357 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 358 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 359 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 360 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 361 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 362 "data/maps/MtPyre_Summit/scripts.pory"

# 363 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 364 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 365 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 366 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 367 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 368 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 369 "data/maps/MtPyre_Summit/scripts.pory"

# 370 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 371 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 372 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 373 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 374 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 375 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 376 "data/maps/MtPyre_Summit/scripts.pory"

# 377 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 378 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 379 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 380 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 381 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 382 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 383 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 384 "data/maps/MtPyre_Summit/scripts.pory"

# 385 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 386 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 387 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 388 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 389 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 390 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 391 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 392 "data/maps/MtPyre_Summit/scripts.pory"

# 393 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 394 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 395 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 396 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 397 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 398 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 399 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 400 "data/maps/MtPyre_Summit/scripts.pory"

# 401 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 402 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 403 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 404 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 405 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 406 "data/maps/MtPyre_Summit/scripts.pory"

# 407 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 408 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 409 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 410 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 411 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 412 "data/maps/MtPyre_Summit/scripts.pory"

# 413 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieExit:
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
	walk_down
# 420 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 421 "data/maps/MtPyre_Summit/scripts.pory"

# 422 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieExit:
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
	walk_down
# 429 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 430 "data/maps/MtPyre_Summit/scripts.pory"

# 431 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 432 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 433 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 434 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 435 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 436 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 437 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 438 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 439 "data/maps/MtPyre_Summit/scripts.pory"

# 440 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 441 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 442 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 443 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 444 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 445 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 446 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 447 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 448 "data/maps/MtPyre_Summit/scripts.pory"

# 449 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 450 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 451 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 452 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 453 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 454 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 455 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 456 "data/maps/MtPyre_Summit/scripts.pory"

# 457 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 458 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 459 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 460 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 461 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 462 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 463 "data/maps/MtPyre_Summit/scripts.pory"

# 464 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 465 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 466 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 467 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 468 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 469 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 470 "data/maps/MtPyre_Summit/scripts.pory"

# 471 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 472 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 473 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 474 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 475 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 476 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 477 "data/maps/MtPyre_Summit/scripts.pory"

# 478 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 479 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 480 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_up
# 481 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 482 "data/maps/MtPyre_Summit/scripts.pory"

# 483 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 484 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 485 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 486 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 487 "data/maps/MtPyre_Summit/scripts.pory"

# 488 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 489 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 490 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 491 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 492 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 493 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 494 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 495 "data/maps/MtPyre_Summit/scripts.pory"

# 496 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 497 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 498 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 499 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 500 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 501 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 502 "data/maps/MtPyre_Summit/scripts.pory"

# 503 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 504 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 505 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 506 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 507 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 508 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 509 "data/maps/MtPyre_Summit/scripts.pory"

# 510 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt1::
# 511 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 512 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 513 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 514 "data/maps/MtPyre_Summit/scripts.pory"

# 515 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt2::
# 516 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 517 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 518 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 519 "data/maps/MtPyre_Summit/scripts.pory"

# 520 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt3::
# 521 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 522 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 523 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 524 "data/maps/MtPyre_Summit/scripts.pory"

# 525 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt4::
# 526 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 527 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 528 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 529 "data/maps/MtPyre_Summit/scripts.pory"

# 530 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 531 "data/maps/MtPyre_Summit/scripts.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 532 "data/maps/MtPyre_Summit/scripts.pory"
	.string "here ahead of us!\p"
# 533 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We can't fall behind!$"
# 534 "data/maps/MtPyre_Summit/scripts.pory"

# 535 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 536 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I thought you were one of the MAGMAS\n"
# 537 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who happened to come back…$"
# 538 "data/maps/MtPyre_Summit/scripts.pory"

# 539 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 540 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Yeah, so you are strong…\n"
# 541 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But there're a lot of us!$"
# 542 "data/maps/MtPyre_Summit/scripts.pory"

# 543 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 544 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Hah!\n"
# 545 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Too bad for you!\p"
# 546 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you came earlier, you only would've\n"
# 547 "data/maps/MtPyre_Summit/scripts.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 548 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But since you arrived now, you have\n"
# 549 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to take on us toughies!$"
# 550 "data/maps/MtPyre_Summit/scripts.pory"

# 551 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 552 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Urgh… I should've let you take on\n"
# 553 "data/maps/MtPyre_Summit/scripts.pory"
	.string "TEAM MAGMA first…$"
# 554 "data/maps/MtPyre_Summit/scripts.pory"

# 555 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 556 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't know anything!\n"
# 557 "data/maps/MtPyre_Summit/scripts.pory"
	.string "So why are you messing with us?$"
# 558 "data/maps/MtPyre_Summit/scripts.pory"

# 559 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 560 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You…\n"
# 561 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 562 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't belong to either TEAM,\n"
# 563 "data/maps/MtPyre_Summit/scripts.pory"
	.string "so why would you be here?$"
# 564 "data/maps/MtPyre_Summit/scripts.pory"

# 565 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 566 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you're going to mess with anyone,\n"
# 567 "data/maps/MtPyre_Summit/scripts.pory"
	.string "let it be TEAM MAGMA…$"
# 568 "data/maps/MtPyre_Summit/scripts.pory"

# 569 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 570 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Heh, it doesn't matter!\n"
# 571 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We bought ourselves some time!\p"
# 572 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BOSS should have snatched what\n"
# 573 "data/maps/MtPyre_Summit/scripts.pory"
	.string "he was after!$"
# 574 "data/maps/MtPyre_Summit/scripts.pory"

# 575 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 576 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, I know!\n"
# 577 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 578 "data/maps/MtPyre_Summit/scripts.pory"
	.string "but they wouldn't have you!\p"
# 579 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, don't think that we'll let you\n"
# 580 "data/maps/MtPyre_Summit/scripts.pory"
	.string "join our TEAM AQUA!$"
# 581 "data/maps/MtPyre_Summit/scripts.pory"

# 582 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 583 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you want to join TEAM AQUA that\n"
# 584 "data/maps/MtPyre_Summit/scripts.pory"
	.string "badly, we can consider it…$"
# 585 "data/maps/MtPyre_Summit/scripts.pory"

# 586 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 587 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We have a great combination going\n"
# 588 "data/maps/MtPyre_Summit/scripts.pory"
	.string "with us members and our leader.$"
# 589 "data/maps/MtPyre_Summit/scripts.pory"

# 590 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 591 "data/maps/MtPyre_Summit/scripts.pory"
	.string "ARCHIE: TEAM MAGMA's MAXIE got ahead\n"
# 592 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of us, but we also got what we wanted.\p"
# 593 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The RED ORB preserved at MT. PYRE…\n"
# 594 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I, ARCHIE, now have it in my possession!\p"
# 595 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Fufufu… Now we can bring our ultimate\n"
# 596 "data/maps/MtPyre_Summit/scripts.pory"
	.string "objective to fruition!\p"
# 597 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Okay, TEAM!\n"
# 598 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We're pulling out!$"
# 599 "data/maps/MtPyre_Summit/scripts.pory"

# 600 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 601 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, no…\n"
# 602 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This cannot happen…\p"
# 603 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Not only the BLUE ORB, but even\n"
# 604 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB has been taken…\p"
# 605 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 606 "data/maps/MtPyre_Summit/scripts.pory"
	.string "be separated. They belong together.\p"
# 607 "data/maps/MtPyre_Summit/scripts.pory"
	.string "What are those men trying to do with\n"
# 608 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two ORBS?\p"
# 609 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 610 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\p"
# 611 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 612 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and took the BLUE ORB first?\p"
# 613 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, in their haste, they left this\n"
# 614 "data/maps/MtPyre_Summit/scripts.pory"
	.string "behind.\p"
# 615 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I couldn't imagine what exactly it\n"
# 616 "data/maps/MtPyre_Summit/scripts.pory"
	.string "could be.\p"
# 617 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I would like you to have it.\n"
# 618 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps it will be useful in some way.$"
# 619 "data/maps/MtPyre_Summit/scripts.pory"

# 620 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 621 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 622 "data/maps/MtPyre_Summit/scripts.pory"
	.string "those sinister men…\p"
# 623 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They must never be apart…\n"
# 624 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I fear something terrible will happen…$"
# 625 "data/maps/MtPyre_Summit/scripts.pory"

# 626 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 627 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, my goodness…\p"
# 628 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 629 "data/maps/MtPyre_Summit/scripts.pory"
	.string "have been awakened?\p"
# 630 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that the BLUE ORB and\n"
# 631 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB quelled the rage of\l"
# 632 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two POKéMON…\p"
# 633 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is also said that the true owner\n"
# 634 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the ORBS still exists.\p"
# 635 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, no one knows who, or what\n"
# 636 "data/maps/MtPyre_Summit/scripts.pory"
	.string "exactly, the ORBS belong to.\p"
# 637 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It could be a human, or perhaps\n"
# 638 "data/maps/MtPyre_Summit/scripts.pory"
	.string "a POKéMON, but no one knows.$"
# 639 "data/maps/MtPyre_Summit/scripts.pory"

# 640 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 641 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The two men who took the ORBS came\n"
# 642 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to return them on their own.\p"
# 643 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Those men…\n"
# 644 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps they are not so evil after all…$"
# 645 "data/maps/MtPyre_Summit/scripts.pory"

# 646 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 647 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The embodiments of the land, sea,\n"
# 648 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the sky…\p"
# 649 "data/maps/MtPyre_Summit/scripts.pory"
	.string "That is said to be the identities of\n"
# 650 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the super-ancient POKéMON…\p"
# 651 "data/maps/MtPyre_Summit/scripts.pory"
	.string "In the same way that we humans and\n"
# 652 "data/maps/MtPyre_Summit/scripts.pory"
	.string "POKéMON have life, our world, too,\l"
# 653 "data/maps/MtPyre_Summit/scripts.pory"
	.string "is alive…\p"
# 654 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The super-ancient POKéMON have\n"
# 655 "data/maps/MtPyre_Summit/scripts.pory"
	.string "taught us that…$"
# 656 "data/maps/MtPyre_Summit/scripts.pory"

# 657 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 658 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 659 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of POKéMON that have passed on…\p"
# 660 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This is a high place where one can\n"
# 661 "data/maps/MtPyre_Summit/scripts.pory"
	.string "see all of HOENN…\p"
# 662 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The disembodied spirits of POKéMON\n"
# 663 "data/maps/MtPyre_Summit/scripts.pory"
	.string "must find solace here…\p"
# 664 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Is it coincidence that you are here…\p"
# 665 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Will you hear out my tale? A tale long\n"
# 666 "data/maps/MtPyre_Summit/scripts.pory"
	.string "told in the HOENN region?$"
# 667 "data/maps/MtPyre_Summit/scripts.pory"

# 668 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 669 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 670 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 671 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 672 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 673 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 674 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 675 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 676 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 677 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 678 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 679 "data/maps/MtPyre_Summit/scripts.pory"
	.string "infernos and vicious storms.\p"
# 680 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 681 "data/maps/MtPyre_Summit/scripts.pory"
	.string "an end to the calamity.\p"
# 682 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Light poured from the two ORBS and\n"
# 683 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the enraged adversaries.\p"
# 684 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The pair, made docile, dove deep into\n"
# 685 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sea where eventually they\l"
# 686 "data/maps/MtPyre_Summit/scripts.pory"
	.string "disappeared…$"
# 687 "data/maps/MtPyre_Summit/scripts.pory"

# 688 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 689 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I see…\n"
# 690 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, that, too, is fine…$"
# 691 "data/maps/MtPyre_Summit/scripts.pory"

# 692 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_MaxieSilence:
# 693 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAXIE: {PLAYER}…\p"
# 694 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 695 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …$"
# 696 "data/maps/MtPyre_Summit/scripts.pory"

# 697 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 698 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is my role to pass on the legends\n"
# 699 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of HOENN to future generations.\p"
# 700 "data/maps/MtPyre_Summit/scripts.pory"
	.string "And the crisis that just ended in\n"
# 701 "data/maps/MtPyre_Summit/scripts.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 702 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Have you the time to hear the new\n"
# 703 "data/maps/MtPyre_Summit/scripts.pory"
	.string "legend of HOENN?$"
# 704 "data/maps/MtPyre_Summit/scripts.pory"

# 705 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 706 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 707 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 708 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 709 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 710 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 711 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 712 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 713 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 714 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 715 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 716 "data/maps/MtPyre_Summit/scripts.pory"
	.string "fires and vicious storms.\p"
# 717 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It was then that the POKéMON of\n"
# 718 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sky descended from a storm.\p"
# 719 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 720 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 721 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 722 "data/maps/MtPyre_Summit/scripts.pory"
	.string "flew off into the wild blue yonder…$"
# 723 "data/maps/MtPyre_Summit/scripts.pory"

# 724 "data/maps/MtPyre_Summit/scripts.pory"

# 725 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendOfTheChosen:
# 726 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues… JIRACHI and CELEBI…\p"
# 727 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They have begun to glow…\p"
# 728 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The old legend speaks of a chosen one\n"
# 729 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who carries the EMBLEM of power.\p"
# 730 "data/maps/MtPyre_Summit/scripts.pory"
	.string "When the orbs are taken and the world\n"
# 731 "data/maps/MtPyre_Summit/scripts.pory"
	.string "trembles… the chosen one shall come.$"
# 732 "data/maps/MtPyre_Summit/scripts.pory"

# 733 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendContinued:
# 734 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that when the chosen one\n"
# 735 "data/maps/MtPyre_Summit/scripts.pory"
	.string "stands before the sacred stones…\p"
# 736 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the boundary between times shall\n"
# 737 "data/maps/MtPyre_Summit/scripts.pory"
	.string "open, and they shall be called forth\p"
# 738 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to restore what has been broken.$"

# 741 "data/maps/MtPyre_Summit/scripts.pory"

# 742 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 743 "data/maps/MtPyre_Summit/scripts.pory"
@ NightmareRealm1_WarpIn
# 744 "data/maps/MtPyre_Summit/scripts.pory"
@ Called by StartTimeWarpScene (C cutscene) via gFieldCallback2 after the
# 745 "data/maps/MtPyre_Summit/scripts.pory"
@ cutscene ends. Screen is still black. Warps player to NIGHTMARE_REALM_1
# 746 "data/maps/MtPyre_Summit/scripts.pory"
@ tile (10,10), waits for map load + fade-in, then releases so the coord
# 747 "data/maps/MtPyre_Summit/scripts.pory"
@ event at that tile fires (NightmareRealm1_Arrival).
# 748 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 749 "data/maps/MtPyre_Summit/scripts.pory"
NightmareRealm1_WarpIn::
# 750 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 751 "data/maps/MtPyre_Summit/scripts.pory"
	warp MAP_NIGHTMARE_REALM_1, 10, 10
# 752 "data/maps/MtPyre_Summit/scripts.pory"
	waitstate
# 753 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 754 "data/maps/MtPyre_Summit/scripts.pory"
	end
