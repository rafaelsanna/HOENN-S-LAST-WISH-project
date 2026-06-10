# 1 "data/maps/MtPyre_Summit/scripts.pory"

# 2 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Relic::
# 3 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 4 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 5 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_RelicRetry, MSGBOX_DEFAULT
# 6 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 7 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 8 "data/maps/MtPyre_Summit/scripts.pory"
	clearflag FLAG_LOST_NIGHTMARE_BATTLE
# 9 "data/maps/MtPyre_Summit/scripts.pory"
	special HealPlayerParty
# 10 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 11 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 12 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 13 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 14 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 15 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 16 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 17 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 18 "data/maps/MtPyre_Summit/scripts.pory"
	call NightmareRealm1_WarpIn
# 19 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 20 "data/maps/MtPyre_Summit/scripts.pory"

# 21 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_RelicRetry:
# 22 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The boundary still trembles\p"
# 23 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift is not yet sealed.\p"
# 24 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Your team has been restored.\n"
# 25 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Go back. Try again.$"
# 26 "data/maps/MtPyre_Summit/scripts.pory"

# 27 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_MapScripts::
# 28 "data/maps/MtPyre_Summit/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Summit_OnTransition
# 29 "data/maps/MtPyre_Summit/scripts.pory"
	.byte 0
# 30 "data/maps/MtPyre_Summit/scripts.pory"

# 31 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_OnTransition:
# 32 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_SetArchieMaxiePositions
# 33 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 34 "data/maps/MtPyre_Summit/scripts.pory"

# 35 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_SetArchieMaxiePositions::
# 36 "data/maps/MtPyre_Summit/scripts.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_MAXIE, 23, 6
# 37 "data/maps/MtPyre_Summit/scripts.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_ARCHIE, 22, 6
# 38 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 39 "data/maps/MtPyre_Summit/scripts.pory"

# 40 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger0::
# 41 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 42 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 43 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 44 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 45 "data/maps/MtPyre_Summit/scripts.pory"

# 46 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger1::
# 47 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 48 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 49 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 50 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 51 "data/maps/MtPyre_Summit/scripts.pory"

# 52 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger2::
# 53 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 54 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 55 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 56 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 57 "data/maps/MtPyre_Summit/scripts.pory"

# 58 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_TeamAquaExits::
# 59 "data/maps/MtPyre_Summit/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 60 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 61 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 62 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterDown
# 63 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 64 "data/maps/MtPyre_Summit/scripts.pory"
	delay 50
# 65 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieFacePlayer0
# 66 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieFacePlayer1
# 67 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieFacePlayer2
# 68 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo, MSGBOX_DEFAULT
# 69 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 70 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 71 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 72 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_1
# 73 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_2
# 74 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_3
# 75 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_4
# 76 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_ARCHIE
# 77 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
# 78 "data/maps/MtPyre_Summit/scripts.pory"
	fadedefaultbgm
# 79 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 80 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 81 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 1
# 82 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_OldLadyApproachPlayer0
# 83 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_OldLadyApproachPlayer1
# 84 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_OldLadyApproachPlayer2
# 85 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis, MSGBOX_DEFAULT
# 86 "data/maps/MtPyre_Summit/scripts.pory"
	giveitem ITEM_MAGMA_EMBLEM
# 87 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RECEIVED_RED_OR_BLUE_ORB
# 88 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_JAGGED_PASS_MAGMA_GUARD
# 89 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 90 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 91 "data/maps/MtPyre_Summit/scripts.pory"

# 92 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 93 "data/maps/MtPyre_Summit/scripts.pory"
@ STATUE SCENE: old lady walks to Jirachi statue, old man walks to Celebi
# 94 "data/maps/MtPyre_Summit/scripts.pory"
@ statue. Both interact (exclamation mark), then old lady recounts the
# 95 "data/maps/MtPyre_Summit/scripts.pory"
@ legend of the chosen one. Runs in parallel with waitmovement 0.
# 96 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 97 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyToJirachi
# 98 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, MtPyre_Summit_Movement_OldManToCelebi
# 99 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 100 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 101 "data/maps/MtPyre_Summit/scripts.pory"

# 102 "data/maps/MtPyre_Summit/scripts.pory"
@ Both react to the statues simultaneously
# 103 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 104 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_ExclamationMark
# 105 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_ExclamationMark
# 106 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 107 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 108 "data/maps/MtPyre_Summit/scripts.pory"

# 109 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady turns to face the statue and speaks the legend
# 110 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_WalkInPlaceFasterUp
# 111 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 112 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendOfTheChosen, MSGBOX_DEFAULT
# 113 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 114 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 115 "data/maps/MtPyre_Summit/scripts.pory"

# 116 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_WalkInPlaceFasterUp
# 117 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 118 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendContinued, MSGBOX_DEFAULT
# 119 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 120 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 121 "data/maps/MtPyre_Summit/scripts.pory"

# 122 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 123 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player to walk 3 tiles forward (north) toward the warp spot.
# 124 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 125 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 126 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 127 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 128 "data/maps/MtPyre_Summit/scripts.pory"

# 129 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 130 "data/maps/MtPyre_Summit/scripts.pory"
@ Camera pan: detach camera, pan up 25 tiles, then flash-fade and launch
# 131 "data/maps/MtPyre_Summit/scripts.pory"
@ the C cutscene. fadescreenspeed with speed 8 = fast flash transition.
# 132 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 133 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 134 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 135 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 136 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 137 "data/maps/MtPyre_Summit/scripts.pory"

# 138 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 139 "data/maps/MtPyre_Summit/scripts.pory"
	special RemoveCameraObject
# 140 "data/maps/MtPyre_Summit/scripts.pory"
	special StartTimeWarpScene
# 141 "data/maps/MtPyre_Summit/scripts.pory"

# 142 "data/maps/MtPyre_Summit/scripts.pory"
@ The C cutscene restores the overworld — do NOT call releaseall here.
# 143 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 144 "data/maps/MtPyre_Summit/scripts.pory"

# 145 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady walks from player-meeting position up to the Jirachi statue
# 146 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyToJirachi:
# 147 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 148 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 149 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right	
# 150 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 151 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 152 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 153 "data/maps/MtPyre_Summit/scripts.pory"

# 154 "data/maps/MtPyre_Summit/scripts.pory"
@ Old man walks from his position to the Celebi statue
# 155 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldManToCelebi:
# 156 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 157 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 158 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 159 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 160 "data/maps/MtPyre_Summit/scripts.pory"

# 161 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player 3 tiles north toward the warp trigger spot
# 162 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWalkForward:
# 163 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 164 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 165 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 166 "data/maps/MtPyre_Summit/scripts.pory"

# 167 "data/maps/MtPyre_Summit/scripts.pory"
@ 25 walk_fast_up steps = 25 tiles upward camera pan
# 168 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_CameraPanUp:
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
	walk_fast_up
# 191 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 192 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 193 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 194 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 195 "data/maps/MtPyre_Summit/scripts.pory"

# 196 "data/maps/MtPyre_Summit/scripts.pory"

# 197 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 198 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 199 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 200 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 201 "data/maps/MtPyre_Summit/scripts.pory"

# 202 "data/maps/MtPyre_Summit/scripts.pory"
@ Archie is already facing player
# 203 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 204 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 205 "data/maps/MtPyre_Summit/scripts.pory"

# 206 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 207 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 208 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 209 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 210 "data/maps/MtPyre_Summit/scripts.pory"

# 211 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 212 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 213 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 214 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 215 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 216 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 217 "data/maps/MtPyre_Summit/scripts.pory"

# 218 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 219 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 220 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 221 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 222 "data/maps/MtPyre_Summit/scripts.pory"

# 223 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 224 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 225 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 226 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 227 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 228 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 229 "data/maps/MtPyre_Summit/scripts.pory"

# 230 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 231 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 232 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 233 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 234 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 235 "data/maps/MtPyre_Summit/scripts.pory"

# 236 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 237 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 238 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 239 "data/maps/MtPyre_Summit/scripts.pory"

# 240 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 241 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 242 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 243 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 244 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 245 "data/maps/MtPyre_Summit/scripts.pory"

# 246 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 247 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 248 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 249 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 250 "data/maps/MtPyre_Summit/scripts.pory"

# 251 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 252 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 253 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 254 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 255 "data/maps/MtPyre_Summit/scripts.pory"

# 256 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldMan::
# 257 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 258 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 259 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 260 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 261 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 262 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 263 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 264 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 265 "data/maps/MtPyre_Summit/scripts.pory"

# 266 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 267 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 268 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 269 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 270 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 271 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 272 "data/maps/MtPyre_Summit/scripts.pory"

# 273 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManTale::
# 274 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 275 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 276 "data/maps/MtPyre_Summit/scripts.pory"

# 277 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 278 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 279 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 280 "data/maps/MtPyre_Summit/scripts.pory"

# 281 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 282 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 283 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 284 "data/maps/MtPyre_Summit/scripts.pory"

# 285 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLady::
# 286 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 287 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 288 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 289 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 290 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 291 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 292 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 293 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 294 "data/maps/MtPyre_Summit/scripts.pory"

# 295 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 296 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 297 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 298 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 299 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 300 "data/maps/MtPyre_Summit/scripts.pory"

# 301 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 302 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 303 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 304 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 305 "data/maps/MtPyre_Summit/scripts.pory"

# 306 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 307 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 308 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 309 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 310 "data/maps/MtPyre_Summit/scripts.pory"

# 311 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 312 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 313 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 314 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 315 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 316 "data/maps/MtPyre_Summit/scripts.pory"

# 317 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 318 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 319 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 320 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 321 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 322 "data/maps/MtPyre_Summit/scripts.pory"

# 323 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 324 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 325 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 326 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 327 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 328 "data/maps/MtPyre_Summit/scripts.pory"

# 329 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 330 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 331 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 332 "data/maps/MtPyre_Summit/scripts.pory"
	delay 60
# 333 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 334 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 335 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 336 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 337 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 338 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 339 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 340 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 341 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 342 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 343 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 344 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 345 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 346 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 347 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 348 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 349 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 350 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 351 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 352 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 353 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 354 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 355 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 356 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 357 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 358 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 359 "data/maps/MtPyre_Summit/scripts.pory"

# 360 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 361 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 362 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 363 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 364 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 365 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 366 "data/maps/MtPyre_Summit/scripts.pory"

# 367 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 368 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 369 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 370 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 371 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 372 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 373 "data/maps/MtPyre_Summit/scripts.pory"

# 374 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 375 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 376 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 377 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 378 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 379 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 380 "data/maps/MtPyre_Summit/scripts.pory"

# 381 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 382 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 383 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 384 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 385 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 386 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 387 "data/maps/MtPyre_Summit/scripts.pory"

# 388 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 389 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 390 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 391 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 392 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 393 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 394 "data/maps/MtPyre_Summit/scripts.pory"

# 395 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 396 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 397 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 398 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 399 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 400 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 401 "data/maps/MtPyre_Summit/scripts.pory"

# 402 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 403 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 404 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 405 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 406 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 407 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 408 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 409 "data/maps/MtPyre_Summit/scripts.pory"

# 410 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 411 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 412 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 413 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 414 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 415 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 416 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 417 "data/maps/MtPyre_Summit/scripts.pory"

# 418 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 419 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 420 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 421 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 422 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 423 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 424 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 425 "data/maps/MtPyre_Summit/scripts.pory"

# 426 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 427 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 428 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 429 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 430 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 431 "data/maps/MtPyre_Summit/scripts.pory"

# 432 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 433 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 434 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 435 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 436 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 437 "data/maps/MtPyre_Summit/scripts.pory"

# 438 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieExit:
# 439 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 440 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 441 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 442 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 443 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 444 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 445 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 446 "data/maps/MtPyre_Summit/scripts.pory"

# 447 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieExit:
# 448 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 449 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 450 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 451 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 452 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 453 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 454 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 455 "data/maps/MtPyre_Summit/scripts.pory"

# 456 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 457 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 458 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 459 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 460 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 461 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 462 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 463 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 464 "data/maps/MtPyre_Summit/scripts.pory"

# 465 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 466 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 467 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 468 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 469 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 470 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 471 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 472 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 473 "data/maps/MtPyre_Summit/scripts.pory"

# 474 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 475 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 476 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 477 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 478 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 479 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 480 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 481 "data/maps/MtPyre_Summit/scripts.pory"

# 482 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 483 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 484 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 485 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 486 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 487 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 488 "data/maps/MtPyre_Summit/scripts.pory"

# 489 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 490 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 491 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 492 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 493 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 494 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 495 "data/maps/MtPyre_Summit/scripts.pory"

# 496 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 497 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 498 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 499 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 500 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 501 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 502 "data/maps/MtPyre_Summit/scripts.pory"

# 503 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 504 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 505 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_up
# 506 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 507 "data/maps/MtPyre_Summit/scripts.pory"

# 508 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 509 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 510 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 511 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 512 "data/maps/MtPyre_Summit/scripts.pory"

# 513 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 514 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 515 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 516 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 517 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 518 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 519 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 520 "data/maps/MtPyre_Summit/scripts.pory"

# 521 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 522 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 523 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 524 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 525 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 526 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 527 "data/maps/MtPyre_Summit/scripts.pory"

# 528 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 529 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 530 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 531 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 532 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 533 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 534 "data/maps/MtPyre_Summit/scripts.pory"

# 535 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt1::
# 536 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 537 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 538 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 539 "data/maps/MtPyre_Summit/scripts.pory"

# 540 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt2::
# 541 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 542 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 543 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 544 "data/maps/MtPyre_Summit/scripts.pory"

# 545 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt3::
# 546 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 547 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 548 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 549 "data/maps/MtPyre_Summit/scripts.pory"

# 550 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt4::
# 551 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 552 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 553 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 554 "data/maps/MtPyre_Summit/scripts.pory"

# 555 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 556 "data/maps/MtPyre_Summit/scripts.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 557 "data/maps/MtPyre_Summit/scripts.pory"
	.string "here ahead of us!\p"
# 558 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We can't fall behind!$"
# 559 "data/maps/MtPyre_Summit/scripts.pory"

# 560 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 561 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I thought you were one of the MAGMAS\n"
# 562 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who happened to come back…$"
# 563 "data/maps/MtPyre_Summit/scripts.pory"

# 564 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 565 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Yeah, so you are strong…\n"
# 566 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But there're a lot of us!$"
# 567 "data/maps/MtPyre_Summit/scripts.pory"

# 568 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 569 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Hah!\n"
# 570 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Too bad for you!\p"
# 571 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you came earlier, you only would've\n"
# 572 "data/maps/MtPyre_Summit/scripts.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 573 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But since you arrived now, you have\n"
# 574 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to take on us toughies!$"
# 575 "data/maps/MtPyre_Summit/scripts.pory"

# 576 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 577 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Urgh… I should've let you take on\n"
# 578 "data/maps/MtPyre_Summit/scripts.pory"
	.string "TEAM MAGMA first…$"
# 579 "data/maps/MtPyre_Summit/scripts.pory"

# 580 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 581 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't know anything!\n"
# 582 "data/maps/MtPyre_Summit/scripts.pory"
	.string "So why are you messing with us?$"
# 583 "data/maps/MtPyre_Summit/scripts.pory"

# 584 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 585 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You…\n"
# 586 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 587 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't belong to either TEAM,\n"
# 588 "data/maps/MtPyre_Summit/scripts.pory"
	.string "so why would you be here?$"
# 589 "data/maps/MtPyre_Summit/scripts.pory"

# 590 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 591 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you're going to mess with anyone,\n"
# 592 "data/maps/MtPyre_Summit/scripts.pory"
	.string "let it be TEAM MAGMA…$"
# 593 "data/maps/MtPyre_Summit/scripts.pory"

# 594 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 595 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Heh, it doesn't matter!\n"
# 596 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We bought ourselves some time!\p"
# 597 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BOSS should have snatched what\n"
# 598 "data/maps/MtPyre_Summit/scripts.pory"
	.string "he was after!$"
# 599 "data/maps/MtPyre_Summit/scripts.pory"

# 600 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 601 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, I know!\n"
# 602 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 603 "data/maps/MtPyre_Summit/scripts.pory"
	.string "but they wouldn't have you!\p"
# 604 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, don't think that we'll let you\n"
# 605 "data/maps/MtPyre_Summit/scripts.pory"
	.string "join our TEAM AQUA!$"
# 606 "data/maps/MtPyre_Summit/scripts.pory"

# 607 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 608 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you want to join TEAM AQUA that\n"
# 609 "data/maps/MtPyre_Summit/scripts.pory"
	.string "badly, we can consider it…$"
# 610 "data/maps/MtPyre_Summit/scripts.pory"

# 611 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 612 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We have a great combination going\n"
# 613 "data/maps/MtPyre_Summit/scripts.pory"
	.string "with us members and our leader.$"
# 614 "data/maps/MtPyre_Summit/scripts.pory"

# 615 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 616 "data/maps/MtPyre_Summit/scripts.pory"
	.string "ARCHIE: TEAM MAGMA's MAXIE got ahead\n"
# 617 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of us, but we also got what we wanted.\p"
# 618 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The RED ORB preserved at MT. PYRE…\n"
# 619 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I, ARCHIE, now have it in my possession!\p"
# 620 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Fufufu… Now we can bring our ultimate\n"
# 621 "data/maps/MtPyre_Summit/scripts.pory"
	.string "objective to fruition!\p"
# 622 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Okay, TEAM!\n"
# 623 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We're pulling out!$"
# 624 "data/maps/MtPyre_Summit/scripts.pory"

# 625 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 626 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, no…\n"
# 627 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This cannot happen…\p"
# 628 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Not only the BLUE ORB, but even\n"
# 629 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB has been taken…\p"
# 630 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 631 "data/maps/MtPyre_Summit/scripts.pory"
	.string "be separated. They belong together.\p"
# 632 "data/maps/MtPyre_Summit/scripts.pory"
	.string "What are those men trying to do with\n"
# 633 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two ORBS?\p"
# 634 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 635 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\p"
# 636 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 637 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and took the BLUE ORB first?\p"
# 638 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, in their haste, they left this\n"
# 639 "data/maps/MtPyre_Summit/scripts.pory"
	.string "behind.\p"
# 640 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I couldn't imagine what exactly it\n"
# 641 "data/maps/MtPyre_Summit/scripts.pory"
	.string "could be.\p"
# 642 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I would like you to have it.\n"
# 643 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps it will be useful in some way.$"
# 644 "data/maps/MtPyre_Summit/scripts.pory"

# 645 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_NightmareRetry:
# 646 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues still glow…\p"
# 647 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift is not yet sealed.\p"
# 648 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Go back, chosen one.\n"
# 649 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Try again.$"
# 650 "data/maps/MtPyre_Summit/scripts.pory"

# 651 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 652 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 653 "data/maps/MtPyre_Summit/scripts.pory"
	.string "those sinister men…\p"
# 654 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They must never be apart…\n"
# 655 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I fear something terrible will happen…$"
# 656 "data/maps/MtPyre_Summit/scripts.pory"

# 657 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 658 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, my goodness…\p"
# 659 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 660 "data/maps/MtPyre_Summit/scripts.pory"
	.string "have been awakened?\p"
# 661 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that the BLUE ORB and\n"
# 662 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB quelled the rage of\l"
# 663 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two POKéMON…\p"
# 664 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is also said that the true owner\n"
# 665 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the ORBS still exists.\p"
# 666 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, no one knows who, or what\n"
# 667 "data/maps/MtPyre_Summit/scripts.pory"
	.string "exactly, the ORBS belong to.\p"
# 668 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It could be a human, or perhaps\n"
# 669 "data/maps/MtPyre_Summit/scripts.pory"
	.string "a POKéMON, but no one knows.$"
# 670 "data/maps/MtPyre_Summit/scripts.pory"

# 671 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 672 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The two men who took the ORBS came\n"
# 673 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to return them on their own.\p"
# 674 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Those men…\n"
# 675 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps they are not so evil after all…$"
# 676 "data/maps/MtPyre_Summit/scripts.pory"

# 677 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 678 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The embodiments of the land, sea,\n"
# 679 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the sky…\p"
# 680 "data/maps/MtPyre_Summit/scripts.pory"
	.string "That is said to be the identities of\n"
# 681 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the super-ancient POKéMON…\p"
# 682 "data/maps/MtPyre_Summit/scripts.pory"
	.string "In the same way that we humans and\n"
# 683 "data/maps/MtPyre_Summit/scripts.pory"
	.string "POKéMON have life, our world, too,\l"
# 684 "data/maps/MtPyre_Summit/scripts.pory"
	.string "is alive…\p"
# 685 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The super-ancient POKéMON have\n"
# 686 "data/maps/MtPyre_Summit/scripts.pory"
	.string "taught us that…$"
# 687 "data/maps/MtPyre_Summit/scripts.pory"

# 688 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 689 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 690 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of POKéMON that have passed on…\p"
# 691 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This is a high place where one can\n"
# 692 "data/maps/MtPyre_Summit/scripts.pory"
	.string "see all of HOENN…\p"
# 693 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The disembodied spirits of POKéMON\n"
# 694 "data/maps/MtPyre_Summit/scripts.pory"
	.string "must find solace here…\p"
# 695 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Is it coincidence that you are here…\p"
# 696 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Will you hear out my tale? A tale long\n"
# 697 "data/maps/MtPyre_Summit/scripts.pory"
	.string "told in the HOENN region?$"
# 698 "data/maps/MtPyre_Summit/scripts.pory"

# 699 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 700 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 701 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 702 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 703 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 704 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 705 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 706 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 707 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 708 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 709 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 710 "data/maps/MtPyre_Summit/scripts.pory"
	.string "infernos and vicious storms.\p"
# 711 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 712 "data/maps/MtPyre_Summit/scripts.pory"
	.string "an end to the calamity.\p"
# 713 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Light poured from the two ORBS and\n"
# 714 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the enraged adversaries.\p"
# 715 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The pair, made docile, dove deep into\n"
# 716 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sea where eventually they\l"
# 717 "data/maps/MtPyre_Summit/scripts.pory"
	.string "disappeared…$"
# 718 "data/maps/MtPyre_Summit/scripts.pory"

# 719 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 720 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I see…\n"
# 721 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, that, too, is fine…$"
# 722 "data/maps/MtPyre_Summit/scripts.pory"

# 723 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_MaxieSilence:
# 724 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAXIE: {PLAYER}…\p"
# 725 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 726 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …$"
# 727 "data/maps/MtPyre_Summit/scripts.pory"

# 728 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 729 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is my role to pass on the legends\n"
# 730 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of HOENN to future generations.\p"
# 731 "data/maps/MtPyre_Summit/scripts.pory"
	.string "And the crisis that just ended in\n"
# 732 "data/maps/MtPyre_Summit/scripts.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 733 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Have you the time to hear the new\n"
# 734 "data/maps/MtPyre_Summit/scripts.pory"
	.string "legend of HOENN?$"
# 735 "data/maps/MtPyre_Summit/scripts.pory"

# 736 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 737 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 738 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 739 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 740 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 741 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 742 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 743 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 744 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 745 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 746 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 747 "data/maps/MtPyre_Summit/scripts.pory"
	.string "fires and vicious storms.\p"
# 748 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It was then that the POKéMON of\n"
# 749 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sky descended from a storm.\p"
# 750 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 751 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 752 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 753 "data/maps/MtPyre_Summit/scripts.pory"
	.string "flew off into the wild blue yonder…$"
# 754 "data/maps/MtPyre_Summit/scripts.pory"

# 755 "data/maps/MtPyre_Summit/scripts.pory"

# 756 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendOfTheChosen:
# 757 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues… JIRACHI and CELEBI…\p"
# 758 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They have begun to glow…\p"
# 759 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The old legend speaks of a chosen one\n"
# 760 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who carries the EMBLEM of power.\p"
# 761 "data/maps/MtPyre_Summit/scripts.pory"
	.string "When the orbs are taken and the world\n"
# 762 "data/maps/MtPyre_Summit/scripts.pory"
	.string "trembles… the chosen one shall come.$"
# 763 "data/maps/MtPyre_Summit/scripts.pory"

# 764 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendContinued:
# 765 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that when the chosen one\n"
# 766 "data/maps/MtPyre_Summit/scripts.pory"
	.string "stands before the sacred stones…\p"
# 767 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the boundary between times shall\n"
# 768 "data/maps/MtPyre_Summit/scripts.pory"
	.string "open, and they shall be called forth\p"
# 769 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to restore what has been broken.$"
# 770 "data/maps/MtPyre_Summit/scripts.pory"

# 771 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 772 "data/maps/MtPyre_Summit/scripts.pory"
@ NightmareRealm1_WarpIn
# 773 "data/maps/MtPyre_Summit/scripts.pory"
@ Called by StartTimeWarpScene (C cutscene) via gFieldCallback2 after the
# 774 "data/maps/MtPyre_Summit/scripts.pory"
@ cutscene ends. Screen is still black. Warps player to NIGHTMARE_REALM_1
# 775 "data/maps/MtPyre_Summit/scripts.pory"
@ tile (10,10), waits for map load + fade-in, then releases so the coord
# 776 "data/maps/MtPyre_Summit/scripts.pory"
@ event at that tile fires (NightmareRealm1_Arrival).
# 777 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 778 "data/maps/MtPyre_Summit/scripts.pory"
NightmareRealm1_WarpIn::
# 779 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 780 "data/maps/MtPyre_Summit/scripts.pory"
	warp MAP_NIGHTMARE_REALM_1, 10, 10
# 781 "data/maps/MtPyre_Summit/scripts.pory"
	waitstate
# 782 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 783 "data/maps/MtPyre_Summit/scripts.pory"
	end
