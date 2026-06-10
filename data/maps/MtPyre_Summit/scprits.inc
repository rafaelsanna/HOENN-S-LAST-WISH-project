MtPyre_Summit_EventScript_Relic::
# 2 "data/maps/MtPyre_Summit/scprits.pory"
	lock
# 3 "data/maps/MtPyre_Summit/scprits.pory"
	faceplayer
# 4 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_RelicRetry, MSGBOX_DEFAULT
# 5 "data/maps/MtPyre_Summit/scprits.pory"
	closemessage
# 6 "data/maps/MtPyre_Summit/scprits.pory"
	delay 15
# 7 "data/maps/MtPyre_Summit/scprits.pory"
	clearflag FLAG_LOST_NIGHTMARE_BATTLE
# 8 "data/maps/MtPyre_Summit/scprits.pory"
	special HealPlayerParty
# 9 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 10 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 11 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 12 "data/maps/MtPyre_Summit/scprits.pory"
	delay 10
# 13 "data/maps/MtPyre_Summit/scprits.pory"
	special SpawnCameraObject
# 14 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 15 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 16 "data/maps/MtPyre_Summit/scprits.pory"
	delay 10
# 17 "data/maps/MtPyre_Summit/scprits.pory"
	call NightmareRealm1_WarpIn
	end


# 28 "data/maps/MtPyre_Summit/scprits.pory"

# 29 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_MapScripts::
# 30 "data/maps/MtPyre_Summit/scprits.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Summit_OnTransition
# 31 "data/maps/MtPyre_Summit/scprits.pory"
	.byte 0
# 32 "data/maps/MtPyre_Summit/scprits.pory"

# 33 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_OnTransition:
# 34 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_MT_PYRE_STATE, 2, MtPyre_Summit_EventScript_SetArchieMaxiePositions
# 35 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 36 "data/maps/MtPyre_Summit/scprits.pory"

# 37 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_SetArchieMaxiePositions::
# 38 "data/maps/MtPyre_Summit/scprits.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_MAXIE, 23, 6
# 39 "data/maps/MtPyre_Summit/scprits.pory"
	setobjectxyperm LOCALID_MT_PYRE_SUMMIT_ARCHIE, 22, 6
# 40 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 41 "data/maps/MtPyre_Summit/scprits.pory"

# 42 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger0::
# 43 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 44 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_0x8008, 0
# 45 "data/maps/MtPyre_Summit/scprits.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 46 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 47 "data/maps/MtPyre_Summit/scprits.pory"

# 48 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger1::
# 49 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 50 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_0x8008, 1
# 51 "data/maps/MtPyre_Summit/scprits.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 52 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 53 "data/maps/MtPyre_Summit/scprits.pory"

# 54 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_TeamAquaTrigger2::
# 55 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 56 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_0x8008, 2
# 57 "data/maps/MtPyre_Summit/scprits.pory"
	goto MtPyre_Summit_EventScript_TeamAquaExits
# 58 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 59 "data/maps/MtPyre_Summit/scprits.pory"

# 60 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_TeamAquaExits::
# 61 "data/maps/MtPyre_Summit/scprits.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 62 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 63 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 64 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterDown
# 65 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 66 "data/maps/MtPyre_Summit/scprits.pory"
	delay 50
# 67 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieFacePlayer0
# 68 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieFacePlayer1
# 69 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieFacePlayer2
# 70 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo, MSGBOX_DEFAULT
# 71 "data/maps/MtPyre_Summit/scprits.pory"
	closemessage
# 72 "data/maps/MtPyre_Summit/scprits.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 73 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 74 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_1
# 75 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_2
# 76 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_3
# 77 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_GRUNT_4
# 78 "data/maps/MtPyre_Summit/scprits.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_ARCHIE
# 79 "data/maps/MtPyre_Summit/scprits.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_TEAM_AQUA
# 80 "data/maps/MtPyre_Summit/scprits.pory"
	fadedefaultbgm
# 81 "data/maps/MtPyre_Summit/scprits.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 82 "data/maps/MtPyre_Summit/scprits.pory"
	delay 20
# 83 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_MT_PYRE_STATE, 1
# 84 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_OldLadyApproachPlayer0
# 85 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_OldLadyApproachPlayer1
# 86 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_OldLadyApproachPlayer2
# 87 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis, MSGBOX_DEFAULT
# 88 "data/maps/MtPyre_Summit/scprits.pory"
	giveitem ITEM_MAGMA_EMBLEM
# 89 "data/maps/MtPyre_Summit/scprits.pory"
	setflag FLAG_RECEIVED_RED_OR_BLUE_ORB
# 90 "data/maps/MtPyre_Summit/scprits.pory"
	setflag FLAG_HIDE_JAGGED_PASS_MAGMA_GUARD
# 91 "data/maps/MtPyre_Summit/scprits.pory"
	closemessage
# 92 "data/maps/MtPyre_Summit/scprits.pory"
	delay 20
# 93 "data/maps/MtPyre_Summit/scprits.pory"

# 94 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 95 "data/maps/MtPyre_Summit/scprits.pory"
@ STATUE SCENE: old lady walks to Jirachi statue, old man walks to Celebi
# 96 "data/maps/MtPyre_Summit/scprits.pory"
@ statue. Both interact (exclamation mark), then old lady recounts the
# 97 "data/maps/MtPyre_Summit/scprits.pory"
@ legend of the chosen one. Runs in parallel with waitmovement 0.
# 98 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 99 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyToJirachi
# 100 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, MtPyre_Summit_Movement_OldManToCelebi
# 101 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 102 "data/maps/MtPyre_Summit/scprits.pory"
	delay 15
# 103 "data/maps/MtPyre_Summit/scprits.pory"

# 104 "data/maps/MtPyre_Summit/scprits.pory"
@ Both react to the statues simultaneously
# 105 "data/maps/MtPyre_Summit/scprits.pory"
	playse SE_PIN
# 106 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_ExclamationMark
# 107 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_ExclamationMark
# 108 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 109 "data/maps/MtPyre_Summit/scprits.pory"
	delay 20
# 110 "data/maps/MtPyre_Summit/scprits.pory"

# 111 "data/maps/MtPyre_Summit/scprits.pory"
@ Old lady turns to face the statue and speaks the legend
# 112 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_WalkInPlaceFasterUp
# 113 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 114 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_LegendOfTheChosen, MSGBOX_DEFAULT
# 115 "data/maps/MtPyre_Summit/scprits.pory"
	closemessage
# 116 "data/maps/MtPyre_Summit/scprits.pory"
	delay 10
# 117 "data/maps/MtPyre_Summit/scprits.pory"

# 118 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_WalkInPlaceFasterUp
# 119 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 120 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_LegendContinued, MSGBOX_DEFAULT
# 121 "data/maps/MtPyre_Summit/scprits.pory"
	closemessage
# 122 "data/maps/MtPyre_Summit/scprits.pory"
	delay 20
# 123 "data/maps/MtPyre_Summit/scprits.pory"

# 124 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 125 "data/maps/MtPyre_Summit/scprits.pory"
@ Force player to walk 3 tiles forward (north) toward the warp spot.
# 126 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 127 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 128 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 129 "data/maps/MtPyre_Summit/scprits.pory"
	delay 15
# 130 "data/maps/MtPyre_Summit/scprits.pory"

# 131 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 132 "data/maps/MtPyre_Summit/scprits.pory"
@ Camera pan: detach camera, pan up 25 tiles, then flash-fade and launch
# 133 "data/maps/MtPyre_Summit/scprits.pory"
@ the C cutscene. fadescreenspeed with speed 8 = fast flash transition.
# 134 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 135 "data/maps/MtPyre_Summit/scprits.pory"
	special SpawnCameraObject
# 136 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 137 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 138 "data/maps/MtPyre_Summit/scprits.pory"
	delay 10
# 139 "data/maps/MtPyre_Summit/scprits.pory"

# 140 "data/maps/MtPyre_Summit/scprits.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 141 "data/maps/MtPyre_Summit/scprits.pory"
	special RemoveCameraObject
# 142 "data/maps/MtPyre_Summit/scprits.pory"
	special StartTimeWarpScene
# 143 "data/maps/MtPyre_Summit/scprits.pory"

# 144 "data/maps/MtPyre_Summit/scprits.pory"
@ The C cutscene restores the overworld — do NOT call releaseall here.
# 145 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 146 "data/maps/MtPyre_Summit/scprits.pory"

# 147 "data/maps/MtPyre_Summit/scprits.pory"
@ Old lady walks from player-meeting position up to the Jirachi statue
# 148 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_OldLadyToJirachi:
# 149 "data/maps/MtPyre_Summit/scprits.pory"
	walk_right
# 150 "data/maps/MtPyre_Summit/scprits.pory"
	walk_right
# 151 "data/maps/MtPyre_Summit/scprits.pory"
	walk_right	
# 152 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 153 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 154 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 155 "data/maps/MtPyre_Summit/scprits.pory"

# 156 "data/maps/MtPyre_Summit/scprits.pory"
@ Old man walks from his position to the Celebi statue
# 157 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_OldManToCelebi:
# 158 "data/maps/MtPyre_Summit/scprits.pory"
	walk_left
# 159 "data/maps/MtPyre_Summit/scprits.pory"
	walk_left
# 160 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 161 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 162 "data/maps/MtPyre_Summit/scprits.pory"

# 163 "data/maps/MtPyre_Summit/scprits.pory"
@ Force player 3 tiles north toward the warp trigger spot
# 164 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerWalkForward:
# 165 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 166 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 167 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 168 "data/maps/MtPyre_Summit/scprits.pory"

# 169 "data/maps/MtPyre_Summit/scprits.pory"
@ 25 walk_fast_up steps = 25 tiles upward camera pan
# 170 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_CameraPanUp:
# 171 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 172 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 173 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 174 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 175 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 176 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 177 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 178 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 179 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 180 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 181 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 182 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 183 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 184 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 185 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 186 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 187 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 188 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 189 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 190 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 191 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 192 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 193 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 194 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 195 "data/maps/MtPyre_Summit/scprits.pory"
	walk_fast_up
# 196 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 197 "data/maps/MtPyre_Summit/scprits.pory"

# 198 "data/maps/MtPyre_Summit/scprits.pory"

# 199 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 200 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 201 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 202 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 203 "data/maps/MtPyre_Summit/scprits.pory"

# 204 "data/maps/MtPyre_Summit/scprits.pory"
@ Archie is already facing player
# 205 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 206 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 207 "data/maps/MtPyre_Summit/scprits.pory"

# 208 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 209 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 210 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 211 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 212 "data/maps/MtPyre_Summit/scprits.pory"

# 213 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 214 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 215 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 216 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 217 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 218 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 219 "data/maps/MtPyre_Summit/scprits.pory"

# 220 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 221 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 222 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 223 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 224 "data/maps/MtPyre_Summit/scprits.pory"

# 225 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 226 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 227 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 228 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 229 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 230 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 231 "data/maps/MtPyre_Summit/scprits.pory"

# 232 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 233 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 234 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 235 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 236 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 237 "data/maps/MtPyre_Summit/scprits.pory"

# 238 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 239 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 240 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 241 "data/maps/MtPyre_Summit/scprits.pory"

# 242 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 243 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 244 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 245 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_right
# 246 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 247 "data/maps/MtPyre_Summit/scprits.pory"

# 248 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 249 "data/maps/MtPyre_Summit/scprits.pory"
	walk_left
# 250 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_down
# 251 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 252 "data/maps/MtPyre_Summit/scprits.pory"

# 253 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 254 "data/maps/MtPyre_Summit/scprits.pory"
	walk_right
# 255 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_down
# 256 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 257 "data/maps/MtPyre_Summit/scprits.pory"

# 258 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldMan::
# 259 "data/maps/MtPyre_Summit/scprits.pory"
	lock
# 260 "data/maps/MtPyre_Summit/scprits.pory"
	faceplayer
# 261 "data/maps/MtPyre_Summit/scprits.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 262 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 263 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 264 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 265 "data/maps/MtPyre_Summit/scprits.pory"
	release
# 266 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 267 "data/maps/MtPyre_Summit/scprits.pory"

# 268 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 269 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 270 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 271 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 272 "data/maps/MtPyre_Summit/scprits.pory"
	release
# 273 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 274 "data/maps/MtPyre_Summit/scprits.pory"

# 275 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldManTale::
# 276 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 277 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 278 "data/maps/MtPyre_Summit/scprits.pory"

# 279 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 280 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 281 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 282 "data/maps/MtPyre_Summit/scprits.pory"

# 283 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 284 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 285 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 286 "data/maps/MtPyre_Summit/scprits.pory"

# 287 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLady::
# 288 "data/maps/MtPyre_Summit/scprits.pory"
	lock
# 289 "data/maps/MtPyre_Summit/scprits.pory"
	faceplayer
# 290 "data/maps/MtPyre_Summit/scprits.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 291 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 292 "data/maps/MtPyre_Summit/scprits.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 293 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 294 "data/maps/MtPyre_Summit/scprits.pory"
	release
# 295 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 296 "data/maps/MtPyre_Summit/scprits.pory"

# 297 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 298 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 299 "data/maps/MtPyre_Summit/scprits.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 300 "data/maps/MtPyre_Summit/scprits.pory"
	release
# 301 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 302 "data/maps/MtPyre_Summit/scprits.pory"

# 303 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 304 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 305 "data/maps/MtPyre_Summit/scprits.pory"
	release
# 306 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 307 "data/maps/MtPyre_Summit/scprits.pory"

# 308 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 309 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 310 "data/maps/MtPyre_Summit/scprits.pory"
	release
# 311 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 312 "data/maps/MtPyre_Summit/scprits.pory"

# 313 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 314 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 315 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_0x8008, 0
# 316 "data/maps/MtPyre_Summit/scprits.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 317 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 318 "data/maps/MtPyre_Summit/scprits.pory"

# 319 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 320 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 321 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_0x8008, 1
# 322 "data/maps/MtPyre_Summit/scprits.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 323 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 324 "data/maps/MtPyre_Summit/scprits.pory"

# 325 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 326 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 327 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_0x8008, 2
# 328 "data/maps/MtPyre_Summit/scprits.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 329 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 330 "data/maps/MtPyre_Summit/scprits.pory"

# 331 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 332 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 333 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 334 "data/maps/MtPyre_Summit/scprits.pory"
	delay 60
# 335 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 336 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 337 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 338 "data/maps/MtPyre_Summit/scprits.pory"
	playse SE_PIN
# 339 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 340 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 341 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 342 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 343 "data/maps/MtPyre_Summit/scprits.pory"
	delay 30
# 344 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 345 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 346 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 347 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 348 "data/maps/MtPyre_Summit/scprits.pory"
	closemessage
# 349 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 350 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 351 "data/maps/MtPyre_Summit/scprits.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 352 "data/maps/MtPyre_Summit/scprits.pory"
	delay 30
# 353 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 354 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 355 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 356 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 357 "data/maps/MtPyre_Summit/scprits.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 358 "data/maps/MtPyre_Summit/scprits.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 359 "data/maps/MtPyre_Summit/scprits.pory"
	releaseall
# 360 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 361 "data/maps/MtPyre_Summit/scprits.pory"

# 362 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 363 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 364 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 365 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 366 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 367 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 368 "data/maps/MtPyre_Summit/scprits.pory"

# 369 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 370 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 371 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 372 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 373 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 374 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 375 "data/maps/MtPyre_Summit/scprits.pory"

# 376 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 377 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 378 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 379 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 380 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 381 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 382 "data/maps/MtPyre_Summit/scprits.pory"

# 383 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 384 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 385 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 386 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 387 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 388 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 389 "data/maps/MtPyre_Summit/scprits.pory"

# 390 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 391 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 392 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 393 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 394 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 395 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 396 "data/maps/MtPyre_Summit/scprits.pory"

# 397 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 398 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 399 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 400 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 401 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 402 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 403 "data/maps/MtPyre_Summit/scprits.pory"

# 404 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 405 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 406 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 407 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 408 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 409 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 410 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 411 "data/maps/MtPyre_Summit/scprits.pory"

# 412 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 413 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 414 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 415 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 416 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 417 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 418 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 419 "data/maps/MtPyre_Summit/scprits.pory"

# 420 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 421 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 422 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 423 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 424 "data/maps/MtPyre_Summit/scprits.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 425 "data/maps/MtPyre_Summit/scprits.pory"
	waitmovement 0
# 426 "data/maps/MtPyre_Summit/scprits.pory"
	return
# 427 "data/maps/MtPyre_Summit/scprits.pory"

# 428 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 429 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 430 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 431 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_right
# 432 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 433 "data/maps/MtPyre_Summit/scprits.pory"

# 434 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 435 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 436 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 437 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 438 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 439 "data/maps/MtPyre_Summit/scprits.pory"

# 440 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_ArchieExit:
# 441 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 442 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 443 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 444 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 445 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 446 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 447 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 448 "data/maps/MtPyre_Summit/scprits.pory"

# 449 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieExit:
# 450 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 451 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 452 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 453 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 454 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 455 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 456 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 457 "data/maps/MtPyre_Summit/scprits.pory"

# 458 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 459 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 460 "data/maps/MtPyre_Summit/scprits.pory"
	delay_8
# 461 "data/maps/MtPyre_Summit/scprits.pory"
	walk_left
# 462 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_right
# 463 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 464 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_down
# 465 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 466 "data/maps/MtPyre_Summit/scprits.pory"

# 467 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 468 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 469 "data/maps/MtPyre_Summit/scprits.pory"
	delay_8
# 470 "data/maps/MtPyre_Summit/scprits.pory"
	walk_right
# 471 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 472 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 473 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_down
# 474 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 475 "data/maps/MtPyre_Summit/scprits.pory"

# 476 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 477 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 478 "data/maps/MtPyre_Summit/scprits.pory"
	delay_8
# 479 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 480 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 481 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_down
# 482 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 483 "data/maps/MtPyre_Summit/scprits.pory"

# 484 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 485 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 486 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 487 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 488 "data/maps/MtPyre_Summit/scprits.pory"
	walk_left
# 489 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 490 "data/maps/MtPyre_Summit/scprits.pory"

# 491 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 492 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 493 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 494 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 495 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_right
# 496 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 497 "data/maps/MtPyre_Summit/scprits.pory"

# 498 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 499 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 500 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 501 "data/maps/MtPyre_Summit/scprits.pory"
	walk_up
# 502 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_right
# 503 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 504 "data/maps/MtPyre_Summit/scprits.pory"

# 505 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 506 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 507 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_up
# 508 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 509 "data/maps/MtPyre_Summit/scprits.pory"

# 510 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 511 "data/maps/MtPyre_Summit/scprits.pory"
	delay_16
# 512 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_down
# 513 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 514 "data/maps/MtPyre_Summit/scprits.pory"

# 515 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 516 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 517 "data/maps/MtPyre_Summit/scprits.pory"
	walk_right
# 518 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 519 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 520 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 521 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 522 "data/maps/MtPyre_Summit/scprits.pory"

# 523 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 524 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 525 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 526 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 527 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 528 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 529 "data/maps/MtPyre_Summit/scprits.pory"

# 530 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 531 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 532 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 533 "data/maps/MtPyre_Summit/scprits.pory"
	walk_down
# 534 "data/maps/MtPyre_Summit/scprits.pory"
	walk_in_place_faster_left
# 535 "data/maps/MtPyre_Summit/scprits.pory"
	step_end
# 536 "data/maps/MtPyre_Summit/scprits.pory"

# 537 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_Grunt1::
# 538 "data/maps/MtPyre_Summit/scprits.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 539 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 540 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 541 "data/maps/MtPyre_Summit/scprits.pory"

# 542 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_Grunt2::
# 543 "data/maps/MtPyre_Summit/scprits.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 544 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 545 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 546 "data/maps/MtPyre_Summit/scprits.pory"

# 547 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_Grunt3::
# 548 "data/maps/MtPyre_Summit/scprits.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 549 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 550 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 551 "data/maps/MtPyre_Summit/scprits.pory"

# 552 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_EventScript_Grunt4::
# 553 "data/maps/MtPyre_Summit/scprits.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 554 "data/maps/MtPyre_Summit/scprits.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 555 "data/maps/MtPyre_Summit/scprits.pory"
	end
# 556 "data/maps/MtPyre_Summit/scprits.pory"

# 557 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 558 "data/maps/MtPyre_Summit/scprits.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 559 "data/maps/MtPyre_Summit/scprits.pory"
	.string "here ahead of us!\p"
# 560 "data/maps/MtPyre_Summit/scprits.pory"
	.string "We can't fall behind!$"
# 561 "data/maps/MtPyre_Summit/scprits.pory"

# 562 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 563 "data/maps/MtPyre_Summit/scprits.pory"
	.string "I thought you were one of the MAGMAS\n"
# 564 "data/maps/MtPyre_Summit/scprits.pory"
	.string "who happened to come back…$"
# 565 "data/maps/MtPyre_Summit/scprits.pory"

# 566 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 567 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Yeah, so you are strong…\n"
# 568 "data/maps/MtPyre_Summit/scprits.pory"
	.string "But there're a lot of us!$"
# 569 "data/maps/MtPyre_Summit/scprits.pory"

# 570 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 571 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Hah!\n"
# 572 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Too bad for you!\p"
# 573 "data/maps/MtPyre_Summit/scprits.pory"
	.string "If you came earlier, you only would've\n"
# 574 "data/maps/MtPyre_Summit/scprits.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 575 "data/maps/MtPyre_Summit/scprits.pory"
	.string "But since you arrived now, you have\n"
# 576 "data/maps/MtPyre_Summit/scprits.pory"
	.string "to take on us toughies!$"
# 577 "data/maps/MtPyre_Summit/scprits.pory"

# 578 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 579 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Urgh… I should've let you take on\n"
# 580 "data/maps/MtPyre_Summit/scprits.pory"
	.string "TEAM MAGMA first…$"
# 581 "data/maps/MtPyre_Summit/scprits.pory"

# 582 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 583 "data/maps/MtPyre_Summit/scprits.pory"
	.string "You don't know anything!\n"
# 584 "data/maps/MtPyre_Summit/scprits.pory"
	.string "So why are you messing with us?$"
# 585 "data/maps/MtPyre_Summit/scprits.pory"

# 586 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 587 "data/maps/MtPyre_Summit/scprits.pory"
	.string "You…\n"
# 588 "data/maps/MtPyre_Summit/scprits.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 589 "data/maps/MtPyre_Summit/scprits.pory"
	.string "You don't belong to either TEAM,\n"
# 590 "data/maps/MtPyre_Summit/scprits.pory"
	.string "so why would you be here?$"
# 591 "data/maps/MtPyre_Summit/scprits.pory"

# 592 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 593 "data/maps/MtPyre_Summit/scprits.pory"
	.string "If you're going to mess with anyone,\n"
# 594 "data/maps/MtPyre_Summit/scprits.pory"
	.string "let it be TEAM MAGMA…$"
# 595 "data/maps/MtPyre_Summit/scprits.pory"

# 596 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 597 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Heh, it doesn't matter!\n"
# 598 "data/maps/MtPyre_Summit/scprits.pory"
	.string "We bought ourselves some time!\p"
# 599 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The BOSS should have snatched what\n"
# 600 "data/maps/MtPyre_Summit/scprits.pory"
	.string "he was after!$"
# 601 "data/maps/MtPyre_Summit/scprits.pory"

# 602 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 603 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Oh, I know!\n"
# 604 "data/maps/MtPyre_Summit/scprits.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 605 "data/maps/MtPyre_Summit/scprits.pory"
	.string "but they wouldn't have you!\p"
# 606 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Well, don't think that we'll let you\n"
# 607 "data/maps/MtPyre_Summit/scprits.pory"
	.string "join our TEAM AQUA!$"
# 608 "data/maps/MtPyre_Summit/scprits.pory"

# 609 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 610 "data/maps/MtPyre_Summit/scprits.pory"
	.string "If you want to join TEAM AQUA that\n"
# 611 "data/maps/MtPyre_Summit/scprits.pory"
	.string "badly, we can consider it…$"
# 612 "data/maps/MtPyre_Summit/scprits.pory"

# 613 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 614 "data/maps/MtPyre_Summit/scprits.pory"
	.string "We have a great combination going\n"
# 615 "data/maps/MtPyre_Summit/scprits.pory"
	.string "with us members and our leader.$"
# 616 "data/maps/MtPyre_Summit/scprits.pory"

# 617 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 618 "data/maps/MtPyre_Summit/scprits.pory"
	.string "ARCHIE: TEAM MAGMA's MAXIE got ahead\n"
# 619 "data/maps/MtPyre_Summit/scprits.pory"
	.string "of us, but we also got what we wanted.\p"
# 620 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The RED ORB preserved at MT. PYRE…\n"
# 621 "data/maps/MtPyre_Summit/scprits.pory"
	.string "I, ARCHIE, now have it in my possession!\p"
# 622 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Fufufu… Now we can bring our ultimate\n"
# 623 "data/maps/MtPyre_Summit/scprits.pory"
	.string "objective to fruition!\p"
# 624 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Okay, TEAM!\n"
# 625 "data/maps/MtPyre_Summit/scprits.pory"
	.string "We're pulling out!$"
# 626 "data/maps/MtPyre_Summit/scprits.pory"

# 627 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 628 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Oh, no…\n"
# 629 "data/maps/MtPyre_Summit/scprits.pory"
	.string "This cannot happen…\p"
# 630 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Not only the BLUE ORB, but even\n"
# 631 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the RED ORB has been taken…\p"
# 632 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 633 "data/maps/MtPyre_Summit/scprits.pory"
	.string "be separated. They belong together.\p"
# 634 "data/maps/MtPyre_Summit/scprits.pory"
	.string "What are those men trying to do with\n"
# 635 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the two ORBS?\p"
# 636 "data/maps/MtPyre_Summit/scprits.pory"
	.string "… … … … … …\n"
# 637 "data/maps/MtPyre_Summit/scprits.pory"
	.string "… … … … … …\p"
# 638 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 639 "data/maps/MtPyre_Summit/scprits.pory"
	.string "and took the BLUE ORB first?\p"
# 640 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Well, in their haste, they left this\n"
# 641 "data/maps/MtPyre_Summit/scprits.pory"
	.string "behind.\p"
# 642 "data/maps/MtPyre_Summit/scprits.pory"
	.string "I couldn't imagine what exactly it\n"
# 643 "data/maps/MtPyre_Summit/scprits.pory"
	.string "could be.\p"
# 644 "data/maps/MtPyre_Summit/scprits.pory"
	.string "I would like you to have it.\n"
# 645 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Perhaps it will be useful in some way.$"
# 646 "data/maps/MtPyre_Summit/scprits.pory"

# 647 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_NightmareRetry:
# 648 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The statues still glow…\p"
# 649 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The rift is not yet sealed.\p"
# 650 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Go back, chosen one.\n"
# 651 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Try again.$"
# 652 "data/maps/MtPyre_Summit/scprits.pory"

# 653 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 654 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 655 "data/maps/MtPyre_Summit/scprits.pory"
	.string "those sinister men…\p"
# 656 "data/maps/MtPyre_Summit/scprits.pory"
	.string "They must never be apart…\n"
# 657 "data/maps/MtPyre_Summit/scprits.pory"
	.string "I fear something terrible will happen…$"
# 658 "data/maps/MtPyre_Summit/scprits.pory"

# 659 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 660 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Oh, my goodness…\p"
# 661 "data/maps/MtPyre_Summit/scprits.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 662 "data/maps/MtPyre_Summit/scprits.pory"
	.string "have been awakened?\p"
# 663 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It is said that the BLUE ORB and\n"
# 664 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the RED ORB quelled the rage of\l"
# 665 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the two POKéMON…\p"
# 666 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It is also said that the true owner\n"
# 667 "data/maps/MtPyre_Summit/scprits.pory"
	.string "of the ORBS still exists.\p"
# 668 "data/maps/MtPyre_Summit/scprits.pory"
	.string "However, no one knows who, or what\n"
# 669 "data/maps/MtPyre_Summit/scprits.pory"
	.string "exactly, the ORBS belong to.\p"
# 670 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It could be a human, or perhaps\n"
# 671 "data/maps/MtPyre_Summit/scprits.pory"
	.string "a POKéMON, but no one knows.$"
# 672 "data/maps/MtPyre_Summit/scprits.pory"

# 673 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 674 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The two men who took the ORBS came\n"
# 675 "data/maps/MtPyre_Summit/scprits.pory"
	.string "back to return them on their own.\p"
# 676 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Those men…\n"
# 677 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Perhaps they are not so evil after all…$"
# 678 "data/maps/MtPyre_Summit/scprits.pory"

# 679 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 680 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The embodiments of the land, sea,\n"
# 681 "data/maps/MtPyre_Summit/scprits.pory"
	.string "and the sky…\p"
# 682 "data/maps/MtPyre_Summit/scprits.pory"
	.string "That is said to be the identities of\n"
# 683 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the super-ancient POKéMON…\p"
# 684 "data/maps/MtPyre_Summit/scprits.pory"
	.string "In the same way that we humans and\n"
# 685 "data/maps/MtPyre_Summit/scprits.pory"
	.string "POKéMON have life, our world, too,\l"
# 686 "data/maps/MtPyre_Summit/scprits.pory"
	.string "is alive…\p"
# 687 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The super-ancient POKéMON have\n"
# 688 "data/maps/MtPyre_Summit/scprits.pory"
	.string "taught us that…$"
# 689 "data/maps/MtPyre_Summit/scprits.pory"

# 690 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 691 "data/maps/MtPyre_Summit/scprits.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 692 "data/maps/MtPyre_Summit/scprits.pory"
	.string "of POKéMON that have passed on…\p"
# 693 "data/maps/MtPyre_Summit/scprits.pory"
	.string "This is a high place where one can\n"
# 694 "data/maps/MtPyre_Summit/scprits.pory"
	.string "see all of HOENN…\p"
# 695 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The disembodied spirits of POKéMON\n"
# 696 "data/maps/MtPyre_Summit/scprits.pory"
	.string "must find solace here…\p"
# 697 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Is it coincidence that you are here…\p"
# 698 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Will you hear out my tale? A tale long\n"
# 699 "data/maps/MtPyre_Summit/scprits.pory"
	.string "told in the HOENN region?$"
# 700 "data/maps/MtPyre_Summit/scprits.pory"

# 701 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 702 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It happened long, long ago…\p"
# 703 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The world was wracked by a ferocious\n"
# 704 "data/maps/MtPyre_Summit/scprits.pory"
	.string "clash between the POKéMON of the land\l"
# 705 "data/maps/MtPyre_Summit/scprits.pory"
	.string "and the POKéMON of the sea…\p"
# 706 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The POKéMON of the land raised\n"
# 707 "data/maps/MtPyre_Summit/scprits.pory"
	.string "mountains and created continents…\p"
# 708 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The POKéMON of the sea raised huge\n"
# 709 "data/maps/MtPyre_Summit/scprits.pory"
	.string "waves and carved out oceans…\p"
# 710 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Their fierce duel raged without end.\p"
# 711 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The world was engulfed in massive\n"
# 712 "data/maps/MtPyre_Summit/scprits.pory"
	.string "infernos and vicious storms.\p"
# 713 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 714 "data/maps/MtPyre_Summit/scprits.pory"
	.string "an end to the calamity.\p"
# 715 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Light poured from the two ORBS and\n"
# 716 "data/maps/MtPyre_Summit/scprits.pory"
	.string "becalmed the enraged adversaries.\p"
# 717 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The pair, made docile, dove deep into\n"
# 718 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the sea where eventually they\l"
# 719 "data/maps/MtPyre_Summit/scprits.pory"
	.string "disappeared…$"
# 720 "data/maps/MtPyre_Summit/scprits.pory"

# 721 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 722 "data/maps/MtPyre_Summit/scprits.pory"
	.string "I see…\n"
# 723 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Well, that, too, is fine…$"
# 724 "data/maps/MtPyre_Summit/scprits.pory"

# 725 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_MaxieSilence:
# 726 "data/maps/MtPyre_Summit/scprits.pory"
	.string "MAXIE: {PLAYER}…\p"
# 727 "data/maps/MtPyre_Summit/scprits.pory"
	.string "… … … … … …\n"
# 728 "data/maps/MtPyre_Summit/scprits.pory"
	.string "… … … … … …$"
# 729 "data/maps/MtPyre_Summit/scprits.pory"

# 730 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 731 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It is my role to pass on the legends\n"
# 732 "data/maps/MtPyre_Summit/scprits.pory"
	.string "of HOENN to future generations.\p"
# 733 "data/maps/MtPyre_Summit/scprits.pory"
	.string "And the crisis that just ended in\n"
# 734 "data/maps/MtPyre_Summit/scprits.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 735 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Have you the time to hear the new\n"
# 736 "data/maps/MtPyre_Summit/scprits.pory"
	.string "legend of HOENN?$"
# 737 "data/maps/MtPyre_Summit/scprits.pory"

# 738 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 739 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It happened long, long ago…\p"
# 740 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The world was wracked by a ferocious\n"
# 741 "data/maps/MtPyre_Summit/scprits.pory"
	.string "clash between the POKéMON of the land\l"
# 742 "data/maps/MtPyre_Summit/scprits.pory"
	.string "and the POKéMON of the sea…\p"
# 743 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The POKéMON of the land raised\n"
# 744 "data/maps/MtPyre_Summit/scprits.pory"
	.string "mountains and created continents…\p"
# 745 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The POKéMON of the sea raised huge\n"
# 746 "data/maps/MtPyre_Summit/scprits.pory"
	.string "waves and carved out oceans…\p"
# 747 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Their fierce duel raged without end.\p"
# 748 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The world was engulfed in massive\n"
# 749 "data/maps/MtPyre_Summit/scprits.pory"
	.string "fires and vicious storms.\p"
# 750 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It was then that the POKéMON of\n"
# 751 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the sky descended from a storm.\p"
# 752 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 753 "data/maps/MtPyre_Summit/scprits.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 754 "data/maps/MtPyre_Summit/scprits.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 755 "data/maps/MtPyre_Summit/scprits.pory"
	.string "flew off into the wild blue yonder…$"
# 756 "data/maps/MtPyre_Summit/scprits.pory"

# 757 "data/maps/MtPyre_Summit/scprits.pory"

# 758 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_LegendOfTheChosen:
# 759 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The statues… JIRACHI and CELEBI…\p"
# 760 "data/maps/MtPyre_Summit/scprits.pory"
	.string "They have begun to glow…\p"
# 761 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The old legend speaks of a chosen one\n"
# 762 "data/maps/MtPyre_Summit/scprits.pory"
	.string "who carries the EMBLEM of power.\p"
# 763 "data/maps/MtPyre_Summit/scprits.pory"
	.string "When the orbs are taken and the world\n"
# 764 "data/maps/MtPyre_Summit/scprits.pory"
	.string "trembles… the chosen one shall come.$"
# 765 "data/maps/MtPyre_Summit/scprits.pory"

# 766 "data/maps/MtPyre_Summit/scprits.pory"
MtPyre_Summit_Text_LegendContinued:
# 767 "data/maps/MtPyre_Summit/scprits.pory"
	.string "It is said that when the chosen one\n"
# 768 "data/maps/MtPyre_Summit/scprits.pory"
	.string "stands before the sacred stones…\p"
# 769 "data/maps/MtPyre_Summit/scprits.pory"
	.string "the boundary between times shall\n"
# 770 "data/maps/MtPyre_Summit/scprits.pory"
	.string "open, and they shall be called forth\p"
# 771 "data/maps/MtPyre_Summit/scprits.pory"
	.string "to restore what has been broken.$"

# 774 "data/maps/MtPyre_Summit/scprits.pory"

# 775 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 776 "data/maps/MtPyre_Summit/scprits.pory"
@ NightmareRealm1_WarpIn
# 777 "data/maps/MtPyre_Summit/scprits.pory"
@ Called by StartTimeWarpScene (C cutscene) via gFieldCallback2 after the
# 778 "data/maps/MtPyre_Summit/scprits.pory"
@ cutscene ends. Screen is still black. Warps player to NIGHTMARE_REALM_1
# 779 "data/maps/MtPyre_Summit/scprits.pory"
@ tile (10,10), waits for map load + fade-in, then releases so the coord
# 780 "data/maps/MtPyre_Summit/scprits.pory"
@ event at that tile fires (NightmareRealm1_Arrival).
# 781 "data/maps/MtPyre_Summit/scprits.pory"
@ -----------------------------------------------------------------------
# 782 "data/maps/MtPyre_Summit/scprits.pory"
NightmareRealm1_WarpIn::
# 783 "data/maps/MtPyre_Summit/scprits.pory"
	lockall
# 784 "data/maps/MtPyre_Summit/scprits.pory"
	warp MAP_NIGHTMARE_REALM_1, 10, 10
# 785 "data/maps/MtPyre_Summit/scprits.pory"
	waitstate
# 786 "data/maps/MtPyre_Summit/scprits.pory"
	releaseall
# 787 "data/maps/MtPyre_Summit/scprits.pory"
	end

MtPyre_Summit_Text_RelicRetry::
# 21 "data/maps/MtPyre_Summit/scprits.pory"
	.string "The boundary still trembles…\p"
	.string "The rift is not yet sealed.\p"
	.string "Your team has been restored.\n"
	.string "Go back. Try again.$"
