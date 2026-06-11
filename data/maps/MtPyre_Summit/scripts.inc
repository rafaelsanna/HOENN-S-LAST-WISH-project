# 1 "data/maps/MtPyre_Summit/scripts.pory"

# 2 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Relic::
# 3 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 4 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_RelicRetry, MSGBOX_DEFAULT
# 5 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 6 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 7 "data/maps/MtPyre_Summit/scripts.pory"
	clearflag FLAG_LOST_NIGHTMARE_BATTLE
# 8 "data/maps/MtPyre_Summit/scripts.pory"
	special HealPlayerParty
# 9 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 10 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 11 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 12 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 13 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 14 "data/maps/MtPyre_Summit/scripts.pory"
	call NightmareRealm1_WarpIn
# 15 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 16 "data/maps/MtPyre_Summit/scripts.pory"

# 17 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_RelicRetry:
# 18 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The boundary still trembles\p"
# 19 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift is not yet sealed.\p"
# 20 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Your team has been restored.\n"
# 21 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Go back. Try again.$"
# 22 "data/maps/MtPyre_Summit/scripts.pory"

# 23 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_MapScripts::
# 24 "data/maps/MtPyre_Summit/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Summit_OnTransition
# 25 "data/maps/MtPyre_Summit/scripts.pory"
	.byte 0
# 26 "data/maps/MtPyre_Summit/scripts.pory"

# 27 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_OnTransition:
# 28 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_SetArchieMaxiePositions
# 29 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 30 "data/maps/MtPyre_Summit/scripts.pory"

# 31 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_SetArchieMaxiePositions::
# 32 "data/maps/MtPyre_Summit/scripts.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_MAXIE, 23, 6
# 33 "data/maps/MtPyre_Summit/scripts.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_ARCHIE, 22, 6
# 34 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 35 "data/maps/MtPyre_Summit/scripts.pory"

# 36 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger0::
# 37 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 38 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 39 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 40 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 41 "data/maps/MtPyre_Summit/scripts.pory"

# 42 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger1::
# 43 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 44 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 45 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 46 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 47 "data/maps/MtPyre_Summit/scripts.pory"

# 48 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger2::
# 49 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 50 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 51 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 52 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 53 "data/maps/MtPyre_Summit/scripts.pory"

# 54 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaExits::
# 55 "data/maps/MtPyre_Summit/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 56 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 57 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 58 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterDown
# 59 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 60 "data/maps/MtPyre_Summit/scripts.pory"
	delay 50
# 61 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieFacePlayer0
# 62 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieFacePlayer1
# 63 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieFacePlayer2
# 64 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo, MSGBOX_DEFAULT
# 65 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 66 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 67 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 68 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_1
# 69 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_2
# 70 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_3
# 71 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_4
# 72 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_ARCHIE
# 73 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
# 74 "data/maps/MtPyre_Summit/scripts.pory"
	fadedefaultbgm
# 75 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 76 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 77 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 1
# 78 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_OldLadyApproachPlayer0
# 79 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_OldLadyApproachPlayer1
# 80 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_OldLadyApproachPlayer2
# 81 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis, MSGBOX_DEFAULT
# 82 "data/maps/MtPyre_Summit/scripts.pory"
	giveitem ITEM_MAGMA_EMBLEM
# 83 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RECEIVED_RED_OR_BLUE_ORB
# 84 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_JAGGED_PASS_MAGMA_GUARD
# 85 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 86 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 87 "data/maps/MtPyre_Summit/scripts.pory"

# 88 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 89 "data/maps/MtPyre_Summit/scripts.pory"
@ STATUE SCENE: old lady walks to Jirachi statue, old man walks to Celebi
# 90 "data/maps/MtPyre_Summit/scripts.pory"
@ statue. Both interact (exclamation mark), then old lady recounts the
# 91 "data/maps/MtPyre_Summit/scripts.pory"
@ legend of the chosen one. Runs in parallel with waitmovement 0.
# 92 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 93 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyToJirachi
# 94 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, MtPyre_Summit_Movement_OldManToCelebi
# 95 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 96 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 97 "data/maps/MtPyre_Summit/scripts.pory"

# 98 "data/maps/MtPyre_Summit/scripts.pory"
@ Both react to the statues simultaneously
# 99 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 100 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_ExclamationMark
# 101 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_ExclamationMark
# 102 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 103 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 104 "data/maps/MtPyre_Summit/scripts.pory"

# 105 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady turns to face the statue and speaks the legend
# 106 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_WalkInPlaceFasterUp
# 107 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 108 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendOfTheChosen, MSGBOX_DEFAULT
# 109 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 110 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 111 "data/maps/MtPyre_Summit/scripts.pory"

# 112 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_WalkInPlaceFasterUp
# 113 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 114 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendContinued, MSGBOX_DEFAULT
# 115 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 116 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 117 "data/maps/MtPyre_Summit/scripts.pory"

# 118 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 119 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player to walk 3 tiles forward (north) toward the warp spot.
# 120 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 121 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 122 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 123 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 124 "data/maps/MtPyre_Summit/scripts.pory"

# 125 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 126 "data/maps/MtPyre_Summit/scripts.pory"
@ Camera pan: detach camera, pan up 25 tiles, then flash-fade and launch
# 127 "data/maps/MtPyre_Summit/scripts.pory"
@ the C cutscene. fadescreenspeed with speed 8 = fast flash transition.
# 128 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 129 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 130 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 131 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 132 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 133 "data/maps/MtPyre_Summit/scripts.pory"

# 134 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 135 "data/maps/MtPyre_Summit/scripts.pory"
	special RemoveCameraObject
# 136 "data/maps/MtPyre_Summit/scripts.pory"
	special StartTimeWarpScene
# 137 "data/maps/MtPyre_Summit/scripts.pory"

# 138 "data/maps/MtPyre_Summit/scripts.pory"
@ The C cutscene restores the overworld — do NOT call releaseall here.
# 139 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 140 "data/maps/MtPyre_Summit/scripts.pory"

# 141 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady walks from player-meeting position up to the Jirachi statue
# 142 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyToJirachi:
# 143 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 144 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 145 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right	
# 146 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 147 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 148 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 149 "data/maps/MtPyre_Summit/scripts.pory"

# 150 "data/maps/MtPyre_Summit/scripts.pory"
@ Old man walks from his position to the Celebi statue
# 151 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldManToCelebi:
# 152 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 153 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 154 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 155 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 156 "data/maps/MtPyre_Summit/scripts.pory"

# 157 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player 3 tiles north toward the warp trigger spot
# 158 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWalkForward:
# 159 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 160 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 161 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 162 "data/maps/MtPyre_Summit/scripts.pory"

# 163 "data/maps/MtPyre_Summit/scripts.pory"
@ 25 walk_fast_up steps = 25 tiles upward camera pan
# 164 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_CameraPanUp:
# 165 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 166 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 167 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 168 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 169 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 170 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 171 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 172 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 173 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 174 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 175 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 176 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 177 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 178 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 179 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 180 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 181 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 182 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 183 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 184 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 185 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 186 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 187 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 188 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 189 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 190 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 191 "data/maps/MtPyre_Summit/scripts.pory"

# 192 "data/maps/MtPyre_Summit/scripts.pory"

# 193 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 194 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 195 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 196 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 197 "data/maps/MtPyre_Summit/scripts.pory"

# 198 "data/maps/MtPyre_Summit/scripts.pory"
@ Archie is already facing player
# 199 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 200 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 201 "data/maps/MtPyre_Summit/scripts.pory"

# 202 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 203 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 204 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 205 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 206 "data/maps/MtPyre_Summit/scripts.pory"

# 207 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 208 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 209 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 210 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 211 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 212 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 213 "data/maps/MtPyre_Summit/scripts.pory"

# 214 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 215 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 216 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 217 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 218 "data/maps/MtPyre_Summit/scripts.pory"

# 219 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 220 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 221 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 222 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 223 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 224 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 225 "data/maps/MtPyre_Summit/scripts.pory"

# 226 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 227 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 228 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 229 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 230 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 231 "data/maps/MtPyre_Summit/scripts.pory"

# 232 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 233 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 234 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 235 "data/maps/MtPyre_Summit/scripts.pory"

# 236 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 237 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 238 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 239 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 240 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 241 "data/maps/MtPyre_Summit/scripts.pory"

# 242 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 243 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 244 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 245 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 246 "data/maps/MtPyre_Summit/scripts.pory"

# 247 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 248 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 249 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 250 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 251 "data/maps/MtPyre_Summit/scripts.pory"

# 252 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldMan::
# 253 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 254 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 255 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 256 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 257 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 258 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 259 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 260 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 261 "data/maps/MtPyre_Summit/scripts.pory"

# 262 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 263 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 264 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 265 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 266 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 267 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 268 "data/maps/MtPyre_Summit/scripts.pory"

# 269 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManTale::
# 270 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 271 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 272 "data/maps/MtPyre_Summit/scripts.pory"

# 273 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 274 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 275 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 276 "data/maps/MtPyre_Summit/scripts.pory"

# 277 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 278 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 279 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 280 "data/maps/MtPyre_Summit/scripts.pory"

# 281 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLady::
# 282 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 283 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 284 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 285 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 286 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 287 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 288 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 289 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 290 "data/maps/MtPyre_Summit/scripts.pory"

# 291 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 292 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 293 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 294 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 295 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 296 "data/maps/MtPyre_Summit/scripts.pory"

# 297 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 298 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 299 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 300 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 301 "data/maps/MtPyre_Summit/scripts.pory"

# 302 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 303 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 304 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 305 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 306 "data/maps/MtPyre_Summit/scripts.pory"

# 307 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 308 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 309 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 310 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 311 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 312 "data/maps/MtPyre_Summit/scripts.pory"

# 313 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 314 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 315 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 316 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 317 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 318 "data/maps/MtPyre_Summit/scripts.pory"

# 319 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 320 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 321 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 322 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 323 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 324 "data/maps/MtPyre_Summit/scripts.pory"

# 325 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 326 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 327 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 328 "data/maps/MtPyre_Summit/scripts.pory"
	delay 60
# 329 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 330 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 331 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 332 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 333 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 334 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 335 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 336 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 337 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 338 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 339 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 340 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 341 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 342 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 343 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 344 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 345 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 346 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 347 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 348 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 349 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 350 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 351 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 352 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 353 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 354 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 355 "data/maps/MtPyre_Summit/scripts.pory"

# 356 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 357 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 358 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 359 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 360 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 361 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 362 "data/maps/MtPyre_Summit/scripts.pory"

# 363 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 364 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 365 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 366 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 367 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 368 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 369 "data/maps/MtPyre_Summit/scripts.pory"

# 370 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 371 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 372 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 373 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 374 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 375 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 376 "data/maps/MtPyre_Summit/scripts.pory"

# 377 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 378 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 379 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 380 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 381 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 382 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 383 "data/maps/MtPyre_Summit/scripts.pory"

# 384 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 385 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 386 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 387 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 388 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 389 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 390 "data/maps/MtPyre_Summit/scripts.pory"

# 391 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 392 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 393 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 394 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 395 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 396 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 397 "data/maps/MtPyre_Summit/scripts.pory"

# 398 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 399 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 400 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 401 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 402 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 403 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 404 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 405 "data/maps/MtPyre_Summit/scripts.pory"

# 406 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 407 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 408 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 409 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 410 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 411 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 412 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 413 "data/maps/MtPyre_Summit/scripts.pory"

# 414 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 415 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 416 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 417 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 418 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 419 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 420 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 421 "data/maps/MtPyre_Summit/scripts.pory"

# 422 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 423 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 424 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 425 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 426 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 427 "data/maps/MtPyre_Summit/scripts.pory"

# 428 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 429 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 430 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 431 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 432 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 433 "data/maps/MtPyre_Summit/scripts.pory"

# 434 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieExit:
# 435 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 436 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 437 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 438 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 439 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 440 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 441 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 442 "data/maps/MtPyre_Summit/scripts.pory"

# 443 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieExit:
# 444 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 445 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 446 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 447 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 448 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 449 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 450 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 451 "data/maps/MtPyre_Summit/scripts.pory"

# 452 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 453 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 454 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 455 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 456 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 457 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 458 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 459 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 460 "data/maps/MtPyre_Summit/scripts.pory"

# 461 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 462 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 463 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 464 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 465 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 466 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 467 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 468 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 469 "data/maps/MtPyre_Summit/scripts.pory"

# 470 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 471 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 472 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 473 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 474 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 475 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 476 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 477 "data/maps/MtPyre_Summit/scripts.pory"

# 478 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 479 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 480 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 481 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 482 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 483 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 484 "data/maps/MtPyre_Summit/scripts.pory"

# 485 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 486 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 487 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 488 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 489 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 490 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 491 "data/maps/MtPyre_Summit/scripts.pory"

# 492 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 493 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 494 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 495 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 496 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 497 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 498 "data/maps/MtPyre_Summit/scripts.pory"

# 499 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 500 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 501 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_up
# 502 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 503 "data/maps/MtPyre_Summit/scripts.pory"

# 504 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 505 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 506 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 507 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 508 "data/maps/MtPyre_Summit/scripts.pory"

# 509 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 510 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 511 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 512 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 513 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 514 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 515 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 516 "data/maps/MtPyre_Summit/scripts.pory"

# 517 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 518 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 519 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 520 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 521 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 522 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 523 "data/maps/MtPyre_Summit/scripts.pory"

# 524 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 525 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 526 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 527 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 528 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 529 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 530 "data/maps/MtPyre_Summit/scripts.pory"

# 531 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt1::
# 532 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 533 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 534 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 535 "data/maps/MtPyre_Summit/scripts.pory"

# 536 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt2::
# 537 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 538 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 539 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 540 "data/maps/MtPyre_Summit/scripts.pory"

# 541 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt3::
# 542 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 543 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 544 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 545 "data/maps/MtPyre_Summit/scripts.pory"

# 546 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt4::
# 547 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 548 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 549 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 550 "data/maps/MtPyre_Summit/scripts.pory"

# 551 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 552 "data/maps/MtPyre_Summit/scripts.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 553 "data/maps/MtPyre_Summit/scripts.pory"
	.string "here ahead of us!\p"
# 554 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We can't fall behind!$"
# 555 "data/maps/MtPyre_Summit/scripts.pory"

# 556 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 557 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I thought you were one of the MAGMAS\n"
# 558 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who happened to come back…$"
# 559 "data/maps/MtPyre_Summit/scripts.pory"

# 560 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 561 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Yeah, so you are strong…\n"
# 562 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But there're a lot of us!$"
# 563 "data/maps/MtPyre_Summit/scripts.pory"

# 564 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 565 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Hah!\n"
# 566 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Too bad for you!\p"
# 567 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you came earlier, you only would've\n"
# 568 "data/maps/MtPyre_Summit/scripts.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 569 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But since you arrived now, you have\n"
# 570 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to take on us toughies!$"
# 571 "data/maps/MtPyre_Summit/scripts.pory"

# 572 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 573 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Urgh… I should've let you take on\n"
# 574 "data/maps/MtPyre_Summit/scripts.pory"
	.string "TEAM MAGMA first…$"
# 575 "data/maps/MtPyre_Summit/scripts.pory"

# 576 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 577 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't know anything!\n"
# 578 "data/maps/MtPyre_Summit/scripts.pory"
	.string "So why are you messing with us?$"
# 579 "data/maps/MtPyre_Summit/scripts.pory"

# 580 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 581 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You…\n"
# 582 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 583 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't belong to either TEAM,\n"
# 584 "data/maps/MtPyre_Summit/scripts.pory"
	.string "so why would you be here?$"
# 585 "data/maps/MtPyre_Summit/scripts.pory"

# 586 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 587 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you're going to mess with anyone,\n"
# 588 "data/maps/MtPyre_Summit/scripts.pory"
	.string "let it be TEAM MAGMA…$"
# 589 "data/maps/MtPyre_Summit/scripts.pory"

# 590 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 591 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Heh, it doesn't matter!\n"
# 592 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We bought ourselves some time!\p"
# 593 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BOSS should have snatched what\n"
# 594 "data/maps/MtPyre_Summit/scripts.pory"
	.string "he was after!$"
# 595 "data/maps/MtPyre_Summit/scripts.pory"

# 596 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 597 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, I know!\n"
# 598 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 599 "data/maps/MtPyre_Summit/scripts.pory"
	.string "but they wouldn't have you!\p"
# 600 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, don't think that we'll let you\n"
# 601 "data/maps/MtPyre_Summit/scripts.pory"
	.string "join our TEAM AQUA!$"
# 602 "data/maps/MtPyre_Summit/scripts.pory"

# 603 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 604 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you want to join TEAM AQUA that\n"
# 605 "data/maps/MtPyre_Summit/scripts.pory"
	.string "badly, we can consider it…$"
# 606 "data/maps/MtPyre_Summit/scripts.pory"

# 607 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 608 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We have a great combination going\n"
# 609 "data/maps/MtPyre_Summit/scripts.pory"
	.string "with us members and our leader.$"
# 610 "data/maps/MtPyre_Summit/scripts.pory"

# 611 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 612 "data/maps/MtPyre_Summit/scripts.pory"
	.string "ARCHIE: TEAM MAGMA's MAXIE got ahead\n"
# 613 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of us, but we also got what we wanted.\p"
# 614 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The RED ORB preserved at MT. PYRE…\n"
# 615 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I, ARCHIE, now have it in my possession!\p"
# 616 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Fufufu… Now we can bring our ultimate\n"
# 617 "data/maps/MtPyre_Summit/scripts.pory"
	.string "objective to fruition!\p"
# 618 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Okay, TEAM!\n"
# 619 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We're pulling out!$"
# 620 "data/maps/MtPyre_Summit/scripts.pory"

# 621 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 622 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, no…\n"
# 623 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This cannot happen…\p"
# 624 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Not only the BLUE ORB, but even\n"
# 625 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB has been taken…\p"
# 626 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 627 "data/maps/MtPyre_Summit/scripts.pory"
	.string "be separated. They belong together.\p"
# 628 "data/maps/MtPyre_Summit/scripts.pory"
	.string "What are those men trying to do with\n"
# 629 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two ORBS?\p"
# 630 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 631 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\p"
# 632 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 633 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and took the BLUE ORB first?\p"
# 634 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, in their haste, they left this\n"
# 635 "data/maps/MtPyre_Summit/scripts.pory"
	.string "behind.\p"
# 636 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I couldn't imagine what exactly it\n"
# 637 "data/maps/MtPyre_Summit/scripts.pory"
	.string "could be.\p"
# 638 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I would like you to have it.\n"
# 639 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps it will be useful in some way.$"
# 640 "data/maps/MtPyre_Summit/scripts.pory"

# 641 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_NightmareRetry:
# 642 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues still glow…\p"
# 643 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift is not yet sealed.\p"
# 644 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Go back, chosen one.\n"
# 645 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Try again.$"
# 646 "data/maps/MtPyre_Summit/scripts.pory"

# 647 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 648 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 649 "data/maps/MtPyre_Summit/scripts.pory"
	.string "those sinister men…\p"
# 650 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They must never be apart…\n"
# 651 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I fear something terrible will happen…$"
# 652 "data/maps/MtPyre_Summit/scripts.pory"

# 653 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 654 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, my goodness…\p"
# 655 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 656 "data/maps/MtPyre_Summit/scripts.pory"
	.string "have been awakened?\p"
# 657 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that the BLUE ORB and\n"
# 658 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB quelled the rage of\l"
# 659 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two POKéMON…\p"
# 660 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is also said that the true owner\n"
# 661 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the ORBS still exists.\p"
# 662 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, no one knows who, or what\n"
# 663 "data/maps/MtPyre_Summit/scripts.pory"
	.string "exactly, the ORBS belong to.\p"
# 664 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It could be a human, or perhaps\n"
# 665 "data/maps/MtPyre_Summit/scripts.pory"
	.string "a POKéMON, but no one knows.$"
# 666 "data/maps/MtPyre_Summit/scripts.pory"

# 667 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 668 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The two men who took the ORBS came\n"
# 669 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to return them on their own.\p"
# 670 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Those men…\n"
# 671 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps they are not so evil after all…$"
# 672 "data/maps/MtPyre_Summit/scripts.pory"

# 673 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 674 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The embodiments of the land, sea,\n"
# 675 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the sky…\p"
# 676 "data/maps/MtPyre_Summit/scripts.pory"
	.string "That is said to be the identities of\n"
# 677 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the super-ancient POKéMON…\p"
# 678 "data/maps/MtPyre_Summit/scripts.pory"
	.string "In the same way that we humans and\n"
# 679 "data/maps/MtPyre_Summit/scripts.pory"
	.string "POKéMON have life, our world, too,\l"
# 680 "data/maps/MtPyre_Summit/scripts.pory"
	.string "is alive…\p"
# 681 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The super-ancient POKéMON have\n"
# 682 "data/maps/MtPyre_Summit/scripts.pory"
	.string "taught us that…$"
# 683 "data/maps/MtPyre_Summit/scripts.pory"

# 684 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 685 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 686 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of POKéMON that have passed on…\p"
# 687 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This is a high place where one can\n"
# 688 "data/maps/MtPyre_Summit/scripts.pory"
	.string "see all of HOENN…\p"
# 689 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The disembodied spirits of POKéMON\n"
# 690 "data/maps/MtPyre_Summit/scripts.pory"
	.string "must find solace here…\p"
# 691 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Is it coincidence that you are here…\p"
# 692 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Will you hear out my tale? A tale long\n"
# 693 "data/maps/MtPyre_Summit/scripts.pory"
	.string "told in the HOENN region?$"
# 694 "data/maps/MtPyre_Summit/scripts.pory"

# 695 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 696 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 697 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 698 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 699 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 700 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 701 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 702 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 703 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 704 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 705 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 706 "data/maps/MtPyre_Summit/scripts.pory"
	.string "infernos and vicious storms.\p"
# 707 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 708 "data/maps/MtPyre_Summit/scripts.pory"
	.string "an end to the calamity.\p"
# 709 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Light poured from the two ORBS and\n"
# 710 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the enraged adversaries.\p"
# 711 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The pair, made docile, dove deep into\n"
# 712 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sea where eventually they\l"
# 713 "data/maps/MtPyre_Summit/scripts.pory"
	.string "disappeared…$"
# 714 "data/maps/MtPyre_Summit/scripts.pory"

# 715 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 716 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I see…\n"
# 717 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, that, too, is fine…$"
# 718 "data/maps/MtPyre_Summit/scripts.pory"

# 719 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_MaxieSilence:
# 720 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAXIE: {PLAYER}…\p"
# 721 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 722 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …$"
# 723 "data/maps/MtPyre_Summit/scripts.pory"

# 724 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 725 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is my role to pass on the legends\n"
# 726 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of HOENN to future generations.\p"
# 727 "data/maps/MtPyre_Summit/scripts.pory"
	.string "And the crisis that just ended in\n"
# 728 "data/maps/MtPyre_Summit/scripts.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 729 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Have you the time to hear the new\n"
# 730 "data/maps/MtPyre_Summit/scripts.pory"
	.string "legend of HOENN?$"
# 731 "data/maps/MtPyre_Summit/scripts.pory"

# 732 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 733 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 734 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 735 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 736 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 737 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 738 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 739 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 740 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 741 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 742 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 743 "data/maps/MtPyre_Summit/scripts.pory"
	.string "fires and vicious storms.\p"
# 744 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It was then that the POKéMON of\n"
# 745 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sky descended from a storm.\p"
# 746 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 747 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 748 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 749 "data/maps/MtPyre_Summit/scripts.pory"
	.string "flew off into the wild blue yonder…$"
# 750 "data/maps/MtPyre_Summit/scripts.pory"

# 751 "data/maps/MtPyre_Summit/scripts.pory"

# 752 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendOfTheChosen:
# 753 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues… JIRACHI and CELEBI…\p"
# 754 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They have begun to glow…\p"
# 755 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The old legend speaks of a chosen one\n"
# 756 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who carries the EMBLEM of power.\p"
# 757 "data/maps/MtPyre_Summit/scripts.pory"
	.string "When the orbs are taken and the world\n"
# 758 "data/maps/MtPyre_Summit/scripts.pory"
	.string "trembles… the chosen one shall come.$"
# 759 "data/maps/MtPyre_Summit/scripts.pory"

# 760 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendContinued:
# 761 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that when the chosen one\n"
# 762 "data/maps/MtPyre_Summit/scripts.pory"
	.string "stands before the sacred stones…\p"
# 763 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the boundary between times shall\n"
# 764 "data/maps/MtPyre_Summit/scripts.pory"
	.string "open, and they shall be called forth\p"
# 765 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to restore what has been broken.$"
# 766 "data/maps/MtPyre_Summit/scripts.pory"

# 767 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 768 "data/maps/MtPyre_Summit/scripts.pory"
@ NightmareRealm1_WarpIn
# 769 "data/maps/MtPyre_Summit/scripts.pory"
@ Called by StartTimeWarpScene (C cutscene) via gFieldCallback2 after the
# 770 "data/maps/MtPyre_Summit/scripts.pory"
@ cutscene ends. Screen is still black. Warps player to NIGHTMARE_REALM_1
# 771 "data/maps/MtPyre_Summit/scripts.pory"
@ tile (10,10), waits for map load + fade-in, then releases so the coord
# 772 "data/maps/MtPyre_Summit/scripts.pory"
@ event at that tile fires (NightmareRealm1_Arrival).
# 773 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 774 "data/maps/MtPyre_Summit/scripts.pory"
NightmareRealm1_WarpIn::
# 775 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 776 "data/maps/MtPyre_Summit/scripts.pory"
	warp MAP_NIGHTMARE_REALM_1, 10, 10
# 777 "data/maps/MtPyre_Summit/scripts.pory"
	waitstate
# 778 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 779 "data/maps/MtPyre_Summit/scripts.pory"
	end
