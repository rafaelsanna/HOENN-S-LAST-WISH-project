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
	special HealPlayerParty
# 8 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 9 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 10 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 11 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 12 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 13 "data/maps/MtPyre_Summit/scripts.pory"
	call NightmareRealm1_WarpIn
# 14 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 15 "data/maps/MtPyre_Summit/scripts.pory"

# 16 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_RelicRetry:
# 17 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The boundary still trembles\p"
# 18 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift is not yet sealed.\p"
# 19 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Your team has been restored.\n"
# 20 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Go back. Try again.$"
# 21 "data/maps/MtPyre_Summit/scripts.pory"

# 22 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_MapScripts::
# 23 "data/maps/MtPyre_Summit/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Summit_OnTransition
# 24 "data/maps/MtPyre_Summit/scripts.pory"
	.byte 0
# 25 "data/maps/MtPyre_Summit/scripts.pory"

# 26 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_OnTransition:
# 27 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_SUMMIT_RELIC
# 28 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_unset FLAG_LOST_NIGHTMARE_BATTLE, MtPyre_Summit_CheckArchieMaxiePositions
# 29 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_eq VAR_NIGHTMARE_STATE, 1, MtPyre_Summit_CheckArchieMaxiePositions
# 30 "data/maps/MtPyre_Summit/scripts.pory"
	clearflag FLAG_HIDE_MT_PYRE_SUMMIT_RELIC
# 31 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_CheckArchieMaxiePositions:
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
	call_if_eq VAR_RESULT, FALSE, MtPyre_Summit_EventScript_HoldMagmaEmblem
# 88 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RECEIVED_RED_OR_BLUE_ORB
# 89 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_HIDE_JAGGED_PASS_MAGMA_GUARD
# 90 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 91 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 92 "data/maps/MtPyre_Summit/scripts.pory"

# 93 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 94 "data/maps/MtPyre_Summit/scripts.pory"
@ STATUE SCENE: old lady walks to Jirachi statue, old man walks to Celebi
# 95 "data/maps/MtPyre_Summit/scripts.pory"
@ statue. Both interact (exclamation mark), then old lady recounts the
# 96 "data/maps/MtPyre_Summit/scripts.pory"
@ legend of the chosen one. Runs in parallel with waitmovement 0.
# 97 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 98 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyToJirachi
# 99 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, MtPyre_Summit_Movement_OldManToCelebi
# 100 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 101 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 102 "data/maps/MtPyre_Summit/scripts.pory"

# 103 "data/maps/MtPyre_Summit/scripts.pory"
@ Both react to the statues simultaneously
# 104 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 105 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_ExclamationMark
# 106 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_ExclamationMark
# 107 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 108 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 109 "data/maps/MtPyre_Summit/scripts.pory"

# 110 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady turns to face the statue and speaks the legend
# 111 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, Common_Movement_WalkInPlaceFasterUp
# 112 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 113 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendOfTheChosen, MSGBOX_DEFAULT
# 114 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 115 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 116 "data/maps/MtPyre_Summit/scripts.pory"

# 117 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_MAN, Common_Movement_WalkInPlaceFasterUp
# 118 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 119 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_LegendContinued, MSGBOX_DEFAULT
# 120 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 121 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 122 "data/maps/MtPyre_Summit/scripts.pory"

# 123 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 124 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player to walk 3 tiles forward (north) toward the warp spot.
# 125 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 126 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWalkForward
# 127 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 128 "data/maps/MtPyre_Summit/scripts.pory"
	delay 15
# 129 "data/maps/MtPyre_Summit/scripts.pory"

# 130 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 131 "data/maps/MtPyre_Summit/scripts.pory"
@ Camera pan: detach camera, pan up 25 tiles, then flash-fade and launch
# 132 "data/maps/MtPyre_Summit/scripts.pory"
@ the C cutscene. fadescreenspeed with speed 8 = fast flash transition.
# 133 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 134 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 135 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 136 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 137 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 138 "data/maps/MtPyre_Summit/scripts.pory"

# 139 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 140 "data/maps/MtPyre_Summit/scripts.pory"
	special RemoveCameraObject
# 141 "data/maps/MtPyre_Summit/scripts.pory"
	special StartTimeWarpScene
# 142 "data/maps/MtPyre_Summit/scripts.pory"

# 143 "data/maps/MtPyre_Summit/scripts.pory"
@ The C cutscene restores the overworld — do NOT call releaseall here.
# 144 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 145 "data/maps/MtPyre_Summit/scripts.pory"

# 146 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_HoldMagmaEmblem::
# 147 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_MT_PYRE_EMBLEM_HELD_BY_OLD_LADY
# 148 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_EmblemBagFull, MSGBOX_DEFAULT
# 149 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 150 "data/maps/MtPyre_Summit/scripts.pory"

# 151 "data/maps/MtPyre_Summit/scripts.pory"
@ Old lady walks from player-meeting position up to the Jirachi statue
# 152 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyToJirachi:
# 153 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 154 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 155 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 156 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 157 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 158 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 159 "data/maps/MtPyre_Summit/scripts.pory"

# 160 "data/maps/MtPyre_Summit/scripts.pory"
@ Old man walks from his position to the Celebi statue
# 161 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldManToCelebi:
# 162 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 163 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 164 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 165 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 166 "data/maps/MtPyre_Summit/scripts.pory"

# 167 "data/maps/MtPyre_Summit/scripts.pory"
@ Force player 3 tiles north toward the warp trigger spot
# 168 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWalkForward:
# 169 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 170 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 171 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 172 "data/maps/MtPyre_Summit/scripts.pory"

# 173 "data/maps/MtPyre_Summit/scripts.pory"
@ 25 walk_fast_up steps = 25 tiles upward camera pan
# 174 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_CameraPanUp:
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
	walk_fast_up
# 195 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 196 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 197 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 198 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 199 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 200 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 201 "data/maps/MtPyre_Summit/scripts.pory"

# 202 "data/maps/MtPyre_Summit/scripts.pory"

# 203 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 204 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 205 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 206 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 207 "data/maps/MtPyre_Summit/scripts.pory"

# 208 "data/maps/MtPyre_Summit/scripts.pory"
@ Archie is already facing player
# 209 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 210 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 211 "data/maps/MtPyre_Summit/scripts.pory"

# 212 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 213 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 214 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 215 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 216 "data/maps/MtPyre_Summit/scripts.pory"

# 217 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 218 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 219 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 220 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 221 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 222 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 223 "data/maps/MtPyre_Summit/scripts.pory"

# 224 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 225 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 226 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 227 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 228 "data/maps/MtPyre_Summit/scripts.pory"

# 229 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 230 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 231 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 232 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 233 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 234 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 235 "data/maps/MtPyre_Summit/scripts.pory"

# 236 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 237 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 238 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 239 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 240 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 241 "data/maps/MtPyre_Summit/scripts.pory"

# 242 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 243 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 244 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 245 "data/maps/MtPyre_Summit/scripts.pory"

# 246 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 247 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 248 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 249 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 250 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 251 "data/maps/MtPyre_Summit/scripts.pory"

# 252 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 253 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 254 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 255 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 256 "data/maps/MtPyre_Summit/scripts.pory"

# 257 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 258 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 259 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 260 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 261 "data/maps/MtPyre_Summit/scripts.pory"

# 262 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldMan::
# 263 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 264 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 265 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_LOST_NIGHTMARE_BATTLE, MtPyre_Summit_EventScript_OldManNightmareRetry
# 266 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 267 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 268 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 269 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 270 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 271 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 272 "data/maps/MtPyre_Summit/scripts.pory"

# 273 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNightmareRetry::
# 274 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OldManNightmareRetry, MSGBOX_DEFAULT
# 275 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 276 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 277 "data/maps/MtPyre_Summit/scripts.pory"

# 278 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 279 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 280 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 281 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 282 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 283 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 284 "data/maps/MtPyre_Summit/scripts.pory"

# 285 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManTale::
# 286 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 287 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 288 "data/maps/MtPyre_Summit/scripts.pory"

# 289 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 290 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 291 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 292 "data/maps/MtPyre_Summit/scripts.pory"

# 293 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 294 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 295 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 296 "data/maps/MtPyre_Summit/scripts.pory"

# 297 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLady::
# 298 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 299 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 300 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_MT_PYRE_EMBLEM_HELD_BY_OLD_LADY, MtPyre_Summit_EventScript_ClaimMagmaEmblem
# 301 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_LOST_NIGHTMARE_BATTLE, MtPyre_Summit_EventScript_OldLadyNightmareRetry
# 302 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 303 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 304 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 305 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 306 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 307 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 308 "data/maps/MtPyre_Summit/scripts.pory"

# 309 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ClaimMagmaEmblem::
# 310 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_EmblemStillHeld, MSGBOX_DEFAULT
# 311 "data/maps/MtPyre_Summit/scripts.pory"
	giveitem ITEM_MAGMA_EMBLEM
# 312 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtPyre_Summit_EventScript_EmblemBagStillFull
# 313 "data/maps/MtPyre_Summit/scripts.pory"
	clearflag FLAG_MT_PYRE_EMBLEM_HELD_BY_OLD_LADY
# 314 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_LOST_NIGHTMARE_BATTLE, MtPyre_Summit_EventScript_OldLadyNightmareRetry
# 315 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 316 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 317 "data/maps/MtPyre_Summit/scripts.pory"

# 318 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_EmblemBagStillFull::
# 319 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_EmblemBagFull, MSGBOX_DEFAULT
# 320 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_LOST_NIGHTMARE_BATTLE, MtPyre_Summit_EventScript_OldLadyNightmareRetry
# 321 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 322 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 323 "data/maps/MtPyre_Summit/scripts.pory"

# 324 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyNightmareRetry::
# 325 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OldLadyNightmareRetry, MSGBOX_DEFAULT
# 326 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 327 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 328 "data/maps/MtPyre_Summit/scripts.pory"

# 329 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 330 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 331 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 332 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 333 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 334 "data/maps/MtPyre_Summit/scripts.pory"

# 335 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 336 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 337 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 338 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 339 "data/maps/MtPyre_Summit/scripts.pory"

# 340 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 341 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 342 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 343 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 344 "data/maps/MtPyre_Summit/scripts.pory"

# 345 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 346 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 347 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 348 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 349 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 350 "data/maps/MtPyre_Summit/scripts.pory"

# 351 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 352 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 353 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 354 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 355 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 356 "data/maps/MtPyre_Summit/scripts.pory"

# 357 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 358 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 359 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 360 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 361 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 362 "data/maps/MtPyre_Summit/scripts.pory"

# 363 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 364 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 365 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 366 "data/maps/MtPyre_Summit/scripts.pory"
	delay 60
# 367 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 368 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 369 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 370 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 371 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 372 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 373 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 374 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 375 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 376 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 377 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 378 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 379 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 380 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 381 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 382 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 383 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 384 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 385 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 386 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 387 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 388 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 389 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 390 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 391 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 392 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 393 "data/maps/MtPyre_Summit/scripts.pory"

# 394 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 395 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 396 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 397 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 398 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 399 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 400 "data/maps/MtPyre_Summit/scripts.pory"

# 401 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 402 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 403 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 404 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 405 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 406 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 407 "data/maps/MtPyre_Summit/scripts.pory"

# 408 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 409 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 410 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 411 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 412 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 413 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 414 "data/maps/MtPyre_Summit/scripts.pory"

# 415 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 416 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 417 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 418 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 419 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 420 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 421 "data/maps/MtPyre_Summit/scripts.pory"

# 422 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 423 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 424 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 425 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 426 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 427 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 428 "data/maps/MtPyre_Summit/scripts.pory"

# 429 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 430 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 431 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 432 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 433 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 434 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 435 "data/maps/MtPyre_Summit/scripts.pory"

# 436 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 437 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 438 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 439 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 440 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 441 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 442 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 443 "data/maps/MtPyre_Summit/scripts.pory"

# 444 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 445 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 446 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 447 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 448 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 449 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 450 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 451 "data/maps/MtPyre_Summit/scripts.pory"

# 452 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 453 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 454 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 455 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 456 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 457 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 458 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 459 "data/maps/MtPyre_Summit/scripts.pory"

# 460 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 461 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 462 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 463 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 464 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 465 "data/maps/MtPyre_Summit/scripts.pory"

# 466 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 467 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 468 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 469 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 470 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 471 "data/maps/MtPyre_Summit/scripts.pory"

# 472 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieExit:
# 473 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 474 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 475 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 476 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 477 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 478 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 479 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 480 "data/maps/MtPyre_Summit/scripts.pory"

# 481 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieExit:
# 482 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 483 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 484 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 485 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 486 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 487 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 488 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 489 "data/maps/MtPyre_Summit/scripts.pory"

# 490 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 491 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 492 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 493 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 494 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 495 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 496 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 497 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 498 "data/maps/MtPyre_Summit/scripts.pory"

# 499 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 500 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 501 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 502 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 503 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 504 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 505 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 506 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 507 "data/maps/MtPyre_Summit/scripts.pory"

# 508 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 509 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 510 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 511 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 512 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 513 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 514 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 515 "data/maps/MtPyre_Summit/scripts.pory"

# 516 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 517 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 518 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 519 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 520 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 521 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 522 "data/maps/MtPyre_Summit/scripts.pory"

# 523 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 524 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 525 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 526 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 527 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 528 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 529 "data/maps/MtPyre_Summit/scripts.pory"

# 530 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 531 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 532 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 533 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 534 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 535 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 536 "data/maps/MtPyre_Summit/scripts.pory"

# 537 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 538 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 539 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_up
# 540 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 541 "data/maps/MtPyre_Summit/scripts.pory"

# 542 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 543 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 544 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 545 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 546 "data/maps/MtPyre_Summit/scripts.pory"

# 547 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 548 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 549 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 550 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 551 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 552 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 553 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 554 "data/maps/MtPyre_Summit/scripts.pory"

# 555 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 556 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 557 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 558 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 559 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 560 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 561 "data/maps/MtPyre_Summit/scripts.pory"

# 562 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 563 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 564 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 565 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 566 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 567 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 568 "data/maps/MtPyre_Summit/scripts.pory"

# 569 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt1::
# 570 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 571 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 572 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 573 "data/maps/MtPyre_Summit/scripts.pory"

# 574 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt2::
# 575 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 576 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 577 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 578 "data/maps/MtPyre_Summit/scripts.pory"

# 579 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt3::
# 580 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 581 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 582 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 583 "data/maps/MtPyre_Summit/scripts.pory"

# 584 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt4::
# 585 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 586 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 587 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 588 "data/maps/MtPyre_Summit/scripts.pory"

# 589 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 590 "data/maps/MtPyre_Summit/scripts.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 591 "data/maps/MtPyre_Summit/scripts.pory"
	.string "here ahead of us!\p"
# 592 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We can't fall behind!$"
# 593 "data/maps/MtPyre_Summit/scripts.pory"

# 594 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 595 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I thought you were one of the MAGMAS\n"
# 596 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who happened to come back…$"
# 597 "data/maps/MtPyre_Summit/scripts.pory"

# 598 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 599 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Yeah, so you are strong…\n"
# 600 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But there're a lot of us!$"
# 601 "data/maps/MtPyre_Summit/scripts.pory"

# 602 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 603 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Hah!\n"
# 604 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Too bad for you!\p"
# 605 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you came earlier, you only would've\n"
# 606 "data/maps/MtPyre_Summit/scripts.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 607 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But since you arrived now, you have\n"
# 608 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to take on us toughies!$"
# 609 "data/maps/MtPyre_Summit/scripts.pory"

# 610 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 611 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Urgh… I should've let you take on\n"
# 612 "data/maps/MtPyre_Summit/scripts.pory"
	.string "TEAM MAGMA first…$"
# 613 "data/maps/MtPyre_Summit/scripts.pory"

# 614 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 615 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't know anything!\n"
# 616 "data/maps/MtPyre_Summit/scripts.pory"
	.string "So why are you messing with us?$"
# 617 "data/maps/MtPyre_Summit/scripts.pory"

# 618 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 619 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You…\n"
# 620 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 621 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't belong to either TEAM,\n"
# 622 "data/maps/MtPyre_Summit/scripts.pory"
	.string "so why would you be here?$"
# 623 "data/maps/MtPyre_Summit/scripts.pory"

# 624 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 625 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you're going to mess with anyone,\n"
# 626 "data/maps/MtPyre_Summit/scripts.pory"
	.string "let it be TEAM MAGMA…$"
# 627 "data/maps/MtPyre_Summit/scripts.pory"

# 628 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 629 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Heh, it doesn't matter!\n"
# 630 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We bought ourselves some time!\p"
# 631 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BOSS should have snatched what\n"
# 632 "data/maps/MtPyre_Summit/scripts.pory"
	.string "she was after!$"
# 633 "data/maps/MtPyre_Summit/scripts.pory"

# 634 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 635 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, I know!\n"
# 636 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 637 "data/maps/MtPyre_Summit/scripts.pory"
	.string "but they wouldn't have you!\p"
# 638 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, don't think that we'll let you\n"
# 639 "data/maps/MtPyre_Summit/scripts.pory"
	.string "join our TEAM AQUA!$"
# 640 "data/maps/MtPyre_Summit/scripts.pory"

# 641 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 642 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you want to join TEAM AQUA that\n"
# 643 "data/maps/MtPyre_Summit/scripts.pory"
	.string "badly, we can consider it…$"
# 644 "data/maps/MtPyre_Summit/scripts.pory"

# 645 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 646 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We have a great combination going\n"
# 647 "data/maps/MtPyre_Summit/scripts.pory"
	.string "with us members and our leader.$"
# 648 "data/maps/MtPyre_Summit/scripts.pory"

# 649 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 650 "data/maps/MtPyre_Summit/scripts.pory"
	.string "INAE: TEAM MAGMA's MAGNUS got ahead\n"
# 651 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of us, but we also got what we wanted.\p"
# 652 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The RED ORB preserved at MT. PYRE…\p"
# 653 "data/maps/MtPyre_Summit/scripts.pory"
	.string "With this, we can rewrite the hierarchy\n"
# 654 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the world for the benefit of TEAM AQUA.\p"
# 655 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, we can't just allow TEAM MAGMA\n"
# 656 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to do as they wish with that BLUE ORB.\p"
# 657 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Okay, TEAM!\n"
# 658 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We're pulling out!$"
# 659 "data/maps/MtPyre_Summit/scripts.pory"

# 660 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 661 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, no…\n"
# 662 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This cannot happen…\p"
# 663 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Not only the BLUE ORB, but even\n"
# 664 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB has been taken…\p"
# 665 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 666 "data/maps/MtPyre_Summit/scripts.pory"
	.string "be separated. They belong together.\p"
# 667 "data/maps/MtPyre_Summit/scripts.pory"
	.string "What are those people trying to do with\n"
# 668 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two ORBS?\p"
# 669 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 670 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\p"
# 671 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 672 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and took the BLUE ORB first?\p"
# 673 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, in their haste, they left this\n"
# 674 "data/maps/MtPyre_Summit/scripts.pory"
	.string "behind.\p"
# 675 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I couldn't imagine what exactly it\n"
# 676 "data/maps/MtPyre_Summit/scripts.pory"
	.string "could be.\p"
# 677 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I would like you to have it.\n"
# 678 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps it will be useful in some way.$"
# 679 "data/maps/MtPyre_Summit/scripts.pory"

# 680 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_NightmareRetry:
# 681 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues still glow…\p"
# 682 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift is not yet sealed.\p"
# 683 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Go back, chosen one.\n"
# 684 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Try again.$"
# 685 "data/maps/MtPyre_Summit/scripts.pory"

# 686 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_EmblemBagFull:
# 687 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Your BAG is full. I'll keep the\n"
# 688 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAGMA EMBLEM safe for you.\p"
# 689 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Come back when you have room.$"
# 690 "data/maps/MtPyre_Summit/scripts.pory"

# 691 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_EmblemStillHeld:
# 692 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I still have the MAGMA EMBLEM\n"
# 693 "data/maps/MtPyre_Summit/scripts.pory"
	.string "that TEAM MAGMA left behind.\p"
# 694 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Let me give it to you now.$"
# 695 "data/maps/MtPyre_Summit/scripts.pory"

# 696 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OldLadyNightmareRetry:
# 697 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The rift has not closed…\p"
# 698 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The relic below us can take you\n"
# 699 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to that dark place.\p"
# 700 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Touch it when you are ready.$"
# 701 "data/maps/MtPyre_Summit/scripts.pory"

# 702 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OldManNightmareRetry:
# 703 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues still sense the rift.\p"
# 704 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Use the relic below us to return\n"
# 705 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and face those shadows again.$"
# 706 "data/maps/MtPyre_Summit/scripts.pory"

# 707 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 708 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 709 "data/maps/MtPyre_Summit/scripts.pory"
	.string "those sinister people…\p"
# 710 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They must never be apart…\n"
# 711 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I fear something terrible will happen…$"
# 712 "data/maps/MtPyre_Summit/scripts.pory"

# 713 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 714 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, my goodness…\p"
# 715 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 716 "data/maps/MtPyre_Summit/scripts.pory"
	.string "have been awakened?\p"
# 717 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that the BLUE ORB and\n"
# 718 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB quelled the rage of\l"
# 719 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two POKéMON…\p"
# 720 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is also said that the true owner\n"
# 721 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the ORBS still exists.\p"
# 722 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, no one knows who, or what\n"
# 723 "data/maps/MtPyre_Summit/scripts.pory"
	.string "exactly, the ORBS belong to.\p"
# 724 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It could be a human, or perhaps\n"
# 725 "data/maps/MtPyre_Summit/scripts.pory"
	.string "a POKéMON, but no one knows.$"
# 726 "data/maps/MtPyre_Summit/scripts.pory"

# 727 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 728 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The two who took the ORBS came\n"
# 729 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to return them on their own.\p"
# 730 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Those two…\n"
# 731 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps they are not so evil after all…$"
# 732 "data/maps/MtPyre_Summit/scripts.pory"

# 733 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 734 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The embodiments of the land, sea,\n"
# 735 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the sky…\p"
# 736 "data/maps/MtPyre_Summit/scripts.pory"
	.string "That is said to be the identities of\n"
# 737 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the super-ancient POKéMON…\p"
# 738 "data/maps/MtPyre_Summit/scripts.pory"
	.string "In the same way that we humans and\n"
# 739 "data/maps/MtPyre_Summit/scripts.pory"
	.string "POKéMON have life, our world, too,\l"
# 740 "data/maps/MtPyre_Summit/scripts.pory"
	.string "is alive…\p"
# 741 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The super-ancient POKéMON have\n"
# 742 "data/maps/MtPyre_Summit/scripts.pory"
	.string "taught us that…$"
# 743 "data/maps/MtPyre_Summit/scripts.pory"

# 744 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 745 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 746 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of POKéMON that have passed on…\p"
# 747 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This is a high place where one can\n"
# 748 "data/maps/MtPyre_Summit/scripts.pory"
	.string "see all of HOENN…\p"
# 749 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The disembodied spirits of POKéMON\n"
# 750 "data/maps/MtPyre_Summit/scripts.pory"
	.string "must find solace here…\p"
# 751 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Is it coincidence that you are here…?\p"
# 752 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Will you hear out my tale? A tale long\n"
# 753 "data/maps/MtPyre_Summit/scripts.pory"
	.string "told in the HOENN region?$"
# 754 "data/maps/MtPyre_Summit/scripts.pory"

# 755 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 756 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 757 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 758 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 759 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 760 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 761 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 762 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 763 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 764 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 765 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 766 "data/maps/MtPyre_Summit/scripts.pory"
	.string "infernos and vicious storms.\p"
# 767 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 768 "data/maps/MtPyre_Summit/scripts.pory"
	.string "an end to the calamity.\p"
# 769 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Light poured from the two ORBS and\n"
# 770 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the enraged adversaries.\p"
# 771 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The pair, made docile, dove deep into\n"
# 772 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sea where eventually they\l"
# 773 "data/maps/MtPyre_Summit/scripts.pory"
	.string "disappeared…$"
# 774 "data/maps/MtPyre_Summit/scripts.pory"

# 775 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 776 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I see…\n"
# 777 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, that, too, is fine…$"
# 778 "data/maps/MtPyre_Summit/scripts.pory"

# 779 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_MaxieSilence:
# 780 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAGNUS: {PLAYER}…\p"
# 781 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 782 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …$"
# 783 "data/maps/MtPyre_Summit/scripts.pory"

# 784 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 785 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is my role to pass on the legends\n"
# 786 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of HOENN to future generations.\p"
# 787 "data/maps/MtPyre_Summit/scripts.pory"
	.string "And the crisis that just ended in\n"
# 788 "data/maps/MtPyre_Summit/scripts.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 789 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Have you the time to hear the new\n"
# 790 "data/maps/MtPyre_Summit/scripts.pory"
	.string "legend of HOENN?$"
# 791 "data/maps/MtPyre_Summit/scripts.pory"

# 792 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 793 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 794 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 795 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 796 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 797 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 798 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 799 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 800 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 801 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 802 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 803 "data/maps/MtPyre_Summit/scripts.pory"
	.string "fires and vicious storms.\p"
# 804 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It was then that the POKéMON of\n"
# 805 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sky descended from a storm.\p"
# 806 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 807 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 808 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 809 "data/maps/MtPyre_Summit/scripts.pory"
	.string "flew off into the wild blue yonder…$"
# 810 "data/maps/MtPyre_Summit/scripts.pory"

# 811 "data/maps/MtPyre_Summit/scripts.pory"

# 812 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendOfTheChosen:
# 813 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The statues… JIRACHI and CELEBI…\p"
# 814 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They have begun to glow…\p"
# 815 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The old legend speaks of a traveler\n"
# 816 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who carries the EMBLEM of power.\p"
# 817 "data/maps/MtPyre_Summit/scripts.pory"
	.string "When the orbs are taken and the world\n"
# 818 "data/maps/MtPyre_Summit/scripts.pory"
	.string "trembles… the chosen one shall come.$"
# 819 "data/maps/MtPyre_Summit/scripts.pory"

# 820 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_LegendContinued:
# 821 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that when the traveler\n"
# 822 "data/maps/MtPyre_Summit/scripts.pory"
	.string "stands before the sacred stones…\p"
# 823 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the boundary between times shall\n"
# 824 "data/maps/MtPyre_Summit/scripts.pory"
	.string "open, and they shall be called forth\p"
# 825 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to restore what has been broken.$"
# 826 "data/maps/MtPyre_Summit/scripts.pory"

# 827 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 828 "data/maps/MtPyre_Summit/scripts.pory"
@ NightmareRealm1_WarpIn
# 829 "data/maps/MtPyre_Summit/scripts.pory"
@ Called by StartTimeWarpScene (C cutscene) via gFieldCallback2 after the
# 830 "data/maps/MtPyre_Summit/scripts.pory"
@ cutscene ends. Screen is still black. Warps player to NIGHTMARE_REALM_1
# 831 "data/maps/MtPyre_Summit/scripts.pory"
@ tile (10,10), waits for map load, then walks the player to (10,9) and
# 832 "data/maps/MtPyre_Summit/scripts.pory"
@ starts the arrival scene directly.
# 833 "data/maps/MtPyre_Summit/scripts.pory"
@ -----------------------------------------------------------------------
# 834 "data/maps/MtPyre_Summit/scripts.pory"
NightmareRealm1_WarpIn::
# 835 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 836 "data/maps/MtPyre_Summit/scripts.pory"
	warp MAP_NIGHTMARE_REALM_1, 10, 10
# 837 "data/maps/MtPyre_Summit/scripts.pory"
	waitstate
# 838 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkUp
# 839 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 840 "data/maps/MtPyre_Summit/scripts.pory"
	goto NightmareRealm1_Arrival
