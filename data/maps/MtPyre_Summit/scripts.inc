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

# 65 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 66 "data/maps/MtPyre_Summit/scripts.pory"
	@ Smooth camera pan upward 25 tiles using the camera object system,
# 67 "data/maps/MtPyre_Summit/scripts.pory"
	@ exactly like MOSSDEEP01_EventScript_QuestComplete does for the comet.
# 68 "data/maps/MtPyre_Summit/scripts.pory"
	@ SpawnCameraObject detaches the camera from the player so we can move it.
# 69 "data/maps/MtPyre_Summit/scripts.pory"
	@ applymovement on OBJ_EVENT_ID_CAMERA with walk_fast_up steps pans up.
# 70 "data/maps/MtPyre_Summit/scripts.pory"
	@ RemoveCameraObject snaps the camera back to the player afterward.
# 71 "data/maps/MtPyre_Summit/scripts.pory"
	@ -----------------------------------------------------------------------
# 72 "data/maps/MtPyre_Summit/scripts.pory"
	special SpawnCameraObject
# 73 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MtPyre_Summit_Movement_CameraPanUp
# 74 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 75 "data/maps/MtPyre_Summit/scripts.pory"
	delay 20
# 76 "data/maps/MtPyre_Summit/scripts.pory"

# 77 "data/maps/MtPyre_Summit/scripts.pory"
	@ Fade to black, then hand off to the C cutscene.
# 78 "data/maps/MtPyre_Summit/scripts.pory"
	@ CB2_ReturnToField restores the overworld when the scene ends.
# 79 "data/maps/MtPyre_Summit/scripts.pory"
	fadescreen FADE_TO_BLACK
# 80 "data/maps/MtPyre_Summit/scripts.pory"
	delay 10
# 81 "data/maps/MtPyre_Summit/scripts.pory"
	special RemoveCameraObject
# 82 "data/maps/MtPyre_Summit/scripts.pory"
	special StartTimeWarpScene
# 83 "data/maps/MtPyre_Summit/scripts.pory"

# 84 "data/maps/MtPyre_Summit/scripts.pory"
	@ The C cutscene restores the overworld — do NOT call releaseall here.
# 85 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 86 "data/maps/MtPyre_Summit/scripts.pory"

# 87 "data/maps/MtPyre_Summit/scripts.pory"
@ 25 walk_fast_up steps = 25 tiles upward camera pan
# 88 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_CameraPanUp:
# 89 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 90 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 91 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 92 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 93 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 94 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 95 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 96 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 97 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 98 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 99 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 100 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 101 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 102 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 103 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 104 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 105 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 106 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 107 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 108 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 109 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 110 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 111 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 112 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 113 "data/maps/MtPyre_Summit/scripts.pory"
	walk_fast_up
# 114 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 115 "data/maps/MtPyre_Summit/scripts.pory"

# 116 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer0::
# 117 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer0
# 118 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 119 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 120 "data/maps/MtPyre_Summit/scripts.pory"

# 121 "data/maps/MtPyre_Summit/scripts.pory"
@ Archie is already facing player
# 122 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer1::
# 123 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 124 "data/maps/MtPyre_Summit/scripts.pory"

# 125 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieFacePlayer2::
# 126 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieFacePlayer2
# 127 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 128 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 129 "data/maps/MtPyre_Summit/scripts.pory"

# 130 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer0::
# 131 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer0
# 132 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 133 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 134 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 135 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 136 "data/maps/MtPyre_Summit/scripts.pory"

# 137 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer1::
# 138 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer1
# 139 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 140 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 141 "data/maps/MtPyre_Summit/scripts.pory"

# 142 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyApproachPlayer2::
# 143 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_OLD_LADY, MtPyre_Summit_Movement_OldLadyApproachPlayer2
# 144 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 145 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 146 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 147 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 148 "data/maps/MtPyre_Summit/scripts.pory"

# 149 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer0:
# 150 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 151 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 152 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 153 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 154 "data/maps/MtPyre_Summit/scripts.pory"

# 155 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer1:
# 156 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 157 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 158 "data/maps/MtPyre_Summit/scripts.pory"

# 159 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_OldLadyApproachPlayer2:
# 160 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 161 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 162 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 163 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 164 "data/maps/MtPyre_Summit/scripts.pory"

# 165 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer0:
# 166 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 167 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 168 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 169 "data/maps/MtPyre_Summit/scripts.pory"

# 170 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieFacePlayer2:
# 171 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 172 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 173 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 174 "data/maps/MtPyre_Summit/scripts.pory"

# 175 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldMan::
# 176 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 177 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 178 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, MtPyre_Summit_EventScript_OldManAfterRayquaza
# 179 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WillYouHearOutMyTale, MSGBOX_YESNO
# 180 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManTale
# 181 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 182 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 183 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 184 "data/maps/MtPyre_Summit/scripts.pory"

# 185 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManAfterRayquaza::
# 186 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HearTheNewLegendOfHoenn, MSGBOX_YESNO
# 187 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, YES, MtPyre_Summit_EventScript_OldManNewTale
# 188 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_RESULT, NO, MtPyre_Summit_EventScript_DeclineOldManTale
# 189 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 190 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 191 "data/maps/MtPyre_Summit/scripts.pory"

# 192 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManTale::
# 193 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreTale, MSGBOX_DEFAULT
# 194 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 195 "data/maps/MtPyre_Summit/scripts.pory"

# 196 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_DeclineOldManTale::
# 197 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_WellThatTooIsFine, MSGBOX_DEFAULT
# 198 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 199 "data/maps/MtPyre_Summit/scripts.pory"

# 200 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldManNewTale::
# 201 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_HoennTrioTale, MSGBOX_DEFAULT
# 202 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 203 "data/maps/MtPyre_Summit/scripts.pory"

# 204 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLady::
# 205 "data/maps/MtPyre_Summit/scripts.pory"
	lock
# 206 "data/maps/MtPyre_Summit/scripts.pory"
	faceplayer
# 207 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_RETURNED_RED_OR_BLUE_ORB, MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned
# 208 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_ge VAR_MT_PYRE_STATE, 3, MtPyre_Summit_EventScript_OldLadyOrbsReturned
# 209 "data/maps/MtPyre_Summit/scripts.pory"
	goto_if_set FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, MtPyre_Summit_EventScript_OldLadyLegendariesAwake
# 210 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_OrbsHaveBeenTaken, MSGBOX_DEFAULT
# 211 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 212 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 213 "data/maps/MtPyre_Summit/scripts.pory"

# 214 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyOrbsReturned::
# 215 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs, MSGBOX_DEFAULT
# 216 "data/maps/MtPyre_Summit/scripts.pory"
	setflag FLAG_RETURNED_RED_OR_BLUE_ORB
# 217 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 218 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 219 "data/maps/MtPyre_Summit/scripts.pory"

# 220 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyLegendariesAwake::
# 221 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_GroudonKyogreAwakened, MSGBOX_DEFAULT
# 222 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 223 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 224 "data/maps/MtPyre_Summit/scripts.pory"

# 225 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_OldLadyAfterOrbsReturned::
# 226 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_SuperAncientPokemonTaughtUs, MSGBOX_DEFAULT
# 227 "data/maps/MtPyre_Summit/scripts.pory"
	release
# 228 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 229 "data/maps/MtPyre_Summit/scripts.pory"

# 230 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger0::
# 231 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 232 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 0
# 233 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 234 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 235 "data/maps/MtPyre_Summit/scripts.pory"

# 236 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger1::
# 237 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 238 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 1
# 239 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 240 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 241 "data/maps/MtPyre_Summit/scripts.pory"

# 242 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieTrigger2::
# 243 "data/maps/MtPyre_Summit/scripts.pory"
	lockall
# 244 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_0x8008, 2
# 245 "data/maps/MtPyre_Summit/scripts.pory"
	goto MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs
# 246 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 247 "data/maps/MtPyre_Summit/scripts.pory"

# 248 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieReturnOrbs::
# 249 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 250 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 251 "data/maps/MtPyre_Summit/scripts.pory"
	delay 60
# 252 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_ArchieMaxieBeginExit0
# 253 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_ArchieMaxieBeginExit1
# 254 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_ArchieMaxieBeginExit2
# 255 "data/maps/MtPyre_Summit/scripts.pory"
	playse SE_PIN
# 256 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_ExclamationMark
# 257 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 258 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, Common_Movement_Delay48
# 259 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 260 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 261 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachPlayer0
# 262 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachPlayer1
# 263 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachPlayer2
# 264 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_MaxieSilence, MSGBOX_DEFAULT
# 265 "data/maps/MtPyre_Summit/scripts.pory"
	closemessage
# 266 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 0, MtPyre_Summit_EventScript_MaxieApproachArchie0
# 267 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Summit_EventScript_MaxieApproachArchie1
# 268 "data/maps/MtPyre_Summit/scripts.pory"
	call_if_eq VAR_0x8008, 2, MtPyre_Summit_EventScript_MaxieApproachArchie2
# 269 "data/maps/MtPyre_Summit/scripts.pory"
	delay 30
# 270 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 271 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 272 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 273 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_ARCHIE
# 274 "data/maps/MtPyre_Summit/scripts.pory"
	removeobject LOCALID_MT_PYRE_SUMMIT_MAXIE
# 275 "data/maps/MtPyre_Summit/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 3
# 276 "data/maps/MtPyre_Summit/scripts.pory"
	releaseall
# 277 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 278 "data/maps/MtPyre_Summit/scripts.pory"

# 279 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit0::
# 280 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0
# 281 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 282 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 283 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 284 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 285 "data/maps/MtPyre_Summit/scripts.pory"

# 286 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit1::
# 287 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1
# 288 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 289 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 290 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 291 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 292 "data/maps/MtPyre_Summit/scripts.pory"

# 293 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_ArchieMaxieBeginExit2::
# 294 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2
# 295 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieExit
# 296 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieExit
# 297 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 298 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 299 "data/maps/MtPyre_Summit/scripts.pory"

# 300 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer0::
# 301 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie0
# 302 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 303 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer0
# 304 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 305 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 306 "data/maps/MtPyre_Summit/scripts.pory"

# 307 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer1::
# 308 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 309 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 310 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer1
# 311 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 312 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 313 "data/maps/MtPyre_Summit/scripts.pory"

# 314 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachPlayer2::
# 315 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerFaceMaxie
# 316 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, MtPyre_Summit_Movement_ArchieWatchMaxie
# 317 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachPlayer2
# 318 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 319 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 320 "data/maps/MtPyre_Summit/scripts.pory"

# 321 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie0::
# 322 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 323 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie0
# 324 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 325 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 326 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 327 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 328 "data/maps/MtPyre_Summit/scripts.pory"

# 329 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie1::
# 330 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 331 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie1
# 332 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 333 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 334 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 335 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 336 "data/maps/MtPyre_Summit/scripts.pory"

# 337 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_MaxieApproachArchie2::
# 338 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Summit_Movement_PlayerWatchMaxie
# 339 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_MAXIE, MtPyre_Summit_Movement_MaxieApproachArchie2
# 340 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 341 "data/maps/MtPyre_Summit/scripts.pory"
	applymovement LOCALID_MT_PYRE_SUMMIT_ARCHIE, Common_Movement_WalkInPlaceFasterRight
# 342 "data/maps/MtPyre_Summit/scripts.pory"
	waitmovement 0
# 343 "data/maps/MtPyre_Summit/scripts.pory"
	return
# 344 "data/maps/MtPyre_Summit/scripts.pory"

# 345 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie0:
# 346 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 347 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 348 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 349 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 350 "data/maps/MtPyre_Summit/scripts.pory"

# 351 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerFaceMaxie:
# 352 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 353 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 354 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 355 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 356 "data/maps/MtPyre_Summit/scripts.pory"

# 357 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieExit:
# 358 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 359 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 360 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 361 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 362 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 363 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 364 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 365 "data/maps/MtPyre_Summit/scripts.pory"

# 366 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieExit:
# 367 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 368 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 369 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 370 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 371 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 372 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 373 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 374 "data/maps/MtPyre_Summit/scripts.pory"

# 375 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit0:
# 376 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 377 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 378 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 379 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 380 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 381 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 382 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 383 "data/maps/MtPyre_Summit/scripts.pory"

# 384 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit1:
# 385 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 386 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 387 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 388 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 389 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 390 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 391 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 392 "data/maps/MtPyre_Summit/scripts.pory"

# 393 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchArchieMaxieExit2:
# 394 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 395 "data/maps/MtPyre_Summit/scripts.pory"
	delay_8
# 396 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 397 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 398 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 399 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 400 "data/maps/MtPyre_Summit/scripts.pory"

# 401 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer0:
# 402 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 403 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 404 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 405 "data/maps/MtPyre_Summit/scripts.pory"
	walk_left
# 406 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 407 "data/maps/MtPyre_Summit/scripts.pory"

# 408 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer1:
# 409 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 410 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 411 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 412 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 413 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 414 "data/maps/MtPyre_Summit/scripts.pory"

# 415 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachPlayer2:
# 416 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 417 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 418 "data/maps/MtPyre_Summit/scripts.pory"
	walk_up
# 419 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_right
# 420 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 421 "data/maps/MtPyre_Summit/scripts.pory"

# 422 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_ArchieWatchMaxie:
# 423 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 424 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_up
# 425 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 426 "data/maps/MtPyre_Summit/scripts.pory"

# 427 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_PlayerWatchMaxie:
# 428 "data/maps/MtPyre_Summit/scripts.pory"
	delay_16
# 429 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_down
# 430 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 431 "data/maps/MtPyre_Summit/scripts.pory"

# 432 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie0:
# 433 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 434 "data/maps/MtPyre_Summit/scripts.pory"
	walk_right
# 435 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 436 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 437 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 438 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 439 "data/maps/MtPyre_Summit/scripts.pory"

# 440 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie1:
# 441 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 442 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 443 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 444 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 445 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 446 "data/maps/MtPyre_Summit/scripts.pory"

# 447 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Movement_MaxieApproachArchie2:
# 448 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 449 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 450 "data/maps/MtPyre_Summit/scripts.pory"
	walk_down
# 451 "data/maps/MtPyre_Summit/scripts.pory"
	walk_in_place_faster_left
# 452 "data/maps/MtPyre_Summit/scripts.pory"
	step_end
# 453 "data/maps/MtPyre_Summit/scripts.pory"

# 454 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt1::
# 455 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_1, MtPyre_Summit_Text_Grunt1Intro, MtPyre_Summit_Text_Grunt1Defeat
# 456 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 457 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 458 "data/maps/MtPyre_Summit/scripts.pory"

# 459 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt2::
# 460 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_2, MtPyre_Summit_Text_Grunt2Intro, MtPyre_Summit_Text_Grunt2Defeat
# 461 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 462 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 463 "data/maps/MtPyre_Summit/scripts.pory"

# 464 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt3::
# 465 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_3, MtPyre_Summit_Text_Grunt3Intro, MtPyre_Summit_Text_Grunt3Defeat
# 466 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 467 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 468 "data/maps/MtPyre_Summit/scripts.pory"

# 469 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_EventScript_Grunt4::
# 470 "data/maps/MtPyre_Summit/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_PYRE_4, MtPyre_Summit_Text_Grunt4Intro, MtPyre_Summit_Text_Grunt4Defeat
# 471 "data/maps/MtPyre_Summit/scripts.pory"
	msgbox MtPyre_Summit_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 472 "data/maps/MtPyre_Summit/scripts.pory"
	end
# 473 "data/maps/MtPyre_Summit/scripts.pory"

# 474 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Intro:
# 475 "data/maps/MtPyre_Summit/scripts.pory"
	.string "No! Those TEAM MAGMA goons got\n"
# 476 "data/maps/MtPyre_Summit/scripts.pory"
	.string "here ahead of us!\p"
# 477 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We can't fall behind!$"
# 478 "data/maps/MtPyre_Summit/scripts.pory"

# 479 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1Defeat:
# 480 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I thought you were one of the MAGMAS\n"
# 481 "data/maps/MtPyre_Summit/scripts.pory"
	.string "who happened to come back…$"
# 482 "data/maps/MtPyre_Summit/scripts.pory"

# 483 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt1PostBattle:
# 484 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Yeah, so you are strong…\n"
# 485 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But there're a lot of us!$"
# 486 "data/maps/MtPyre_Summit/scripts.pory"

# 487 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Intro:
# 488 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Hah!\n"
# 489 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Too bad for you!\p"
# 490 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you came earlier, you only would've\n"
# 491 "data/maps/MtPyre_Summit/scripts.pory"
	.string "had to battle the wimpy TEAM MAGMA.\p"
# 492 "data/maps/MtPyre_Summit/scripts.pory"
	.string "But since you arrived now, you have\n"
# 493 "data/maps/MtPyre_Summit/scripts.pory"
	.string "to take on us toughies!$"
# 494 "data/maps/MtPyre_Summit/scripts.pory"

# 495 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2Defeat:
# 496 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Urgh… I should've let you take on\n"
# 497 "data/maps/MtPyre_Summit/scripts.pory"
	.string "TEAM MAGMA first…$"
# 498 "data/maps/MtPyre_Summit/scripts.pory"

# 499 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt2PostBattle:
# 500 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't know anything!\n"
# 501 "data/maps/MtPyre_Summit/scripts.pory"
	.string "So why are you messing with us?$"
# 502 "data/maps/MtPyre_Summit/scripts.pory"

# 503 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Intro:
# 504 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You…\n"
# 505 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We saw you at MT. CHIMNEY.\p"
# 506 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You don't belong to either TEAM,\n"
# 507 "data/maps/MtPyre_Summit/scripts.pory"
	.string "so why would you be here?$"
# 508 "data/maps/MtPyre_Summit/scripts.pory"

# 509 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3Defeat:
# 510 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you're going to mess with anyone,\n"
# 511 "data/maps/MtPyre_Summit/scripts.pory"
	.string "let it be TEAM MAGMA…$"
# 512 "data/maps/MtPyre_Summit/scripts.pory"

# 513 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt3PostBattle:
# 514 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Heh, it doesn't matter!\n"
# 515 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We bought ourselves some time!\p"
# 516 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BOSS should have snatched what\n"
# 517 "data/maps/MtPyre_Summit/scripts.pory"
	.string "he was after!$"
# 518 "data/maps/MtPyre_Summit/scripts.pory"

# 519 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Intro:
# 520 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, I know!\n"
# 521 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You tried to join TEAM MAGMA,\l"
# 522 "data/maps/MtPyre_Summit/scripts.pory"
	.string "but they wouldn't have you!\p"
# 523 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, don't think that we'll let you\n"
# 524 "data/maps/MtPyre_Summit/scripts.pory"
	.string "join our TEAM AQUA!$"
# 525 "data/maps/MtPyre_Summit/scripts.pory"

# 526 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4Defeat:
# 527 "data/maps/MtPyre_Summit/scripts.pory"
	.string "If you want to join TEAM AQUA that\n"
# 528 "data/maps/MtPyre_Summit/scripts.pory"
	.string "badly, we can consider it…$"
# 529 "data/maps/MtPyre_Summit/scripts.pory"

# 530 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_Grunt4PostBattle:
# 531 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We have a great combination going\n"
# 532 "data/maps/MtPyre_Summit/scripts.pory"
	.string "with us members and our leader.$"
# 533 "data/maps/MtPyre_Summit/scripts.pory"

# 534 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ArchieWeGotTheOrbLetsGo:
# 535 "data/maps/MtPyre_Summit/scripts.pory"
	.string "ARCHIE: TEAM MAGMA's MAXIE got ahead\n"
# 536 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of us, but we also got what we wanted.\p"
# 537 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The RED ORB preserved at MT. PYRE…\n"
# 538 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I, ARCHIE, now have it in my possession!\p"
# 539 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Fufufu… Now we can bring our ultimate\n"
# 540 "data/maps/MtPyre_Summit/scripts.pory"
	.string "objective to fruition!\p"
# 541 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Okay, TEAM!\n"
# 542 "data/maps/MtPyre_Summit/scripts.pory"
	.string "We're pulling out!$"
# 543 "data/maps/MtPyre_Summit/scripts.pory"

# 544 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_BothOrbsTakenMagmaLeftThis:
# 545 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, no…\n"
# 546 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This cannot happen…\p"
# 547 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Not only the BLUE ORB, but even\n"
# 548 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB has been taken…\p"
# 549 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB must never\n"
# 550 "data/maps/MtPyre_Summit/scripts.pory"
	.string "be separated. They belong together.\p"
# 551 "data/maps/MtPyre_Summit/scripts.pory"
	.string "What are those men trying to do with\n"
# 552 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two ORBS?\p"
# 553 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 554 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\p"
# 555 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, yes. Was it TEAM MAGMA who came\n"
# 556 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and took the BLUE ORB first?\p"
# 557 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, in their haste, they left this\n"
# 558 "data/maps/MtPyre_Summit/scripts.pory"
	.string "behind.\p"
# 559 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I couldn't imagine what exactly it\n"
# 560 "data/maps/MtPyre_Summit/scripts.pory"
	.string "could be.\p"
# 561 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I would like you to have it.\n"
# 562 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps it will be useful in some way.$"
# 563 "data/maps/MtPyre_Summit/scripts.pory"

# 564 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_OrbsHaveBeenTaken:
# 565 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and RED ORB taken by\n"
# 566 "data/maps/MtPyre_Summit/scripts.pory"
	.string "those sinister men…\p"
# 567 "data/maps/MtPyre_Summit/scripts.pory"
	.string "They must never be apart…\n"
# 568 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I fear something terrible will happen…$"
# 569 "data/maps/MtPyre_Summit/scripts.pory"

# 570 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreAwakened:
# 571 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Oh, my goodness…\p"
# 572 "data/maps/MtPyre_Summit/scripts.pory"
	.string "You say that both GROUDON and KYOGRE\n"
# 573 "data/maps/MtPyre_Summit/scripts.pory"
	.string "have been awakened?\p"
# 574 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is said that the BLUE ORB and\n"
# 575 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the RED ORB quelled the rage of\l"
# 576 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the two POKéMON…\p"
# 577 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is also said that the true owner\n"
# 578 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of the ORBS still exists.\p"
# 579 "data/maps/MtPyre_Summit/scripts.pory"
	.string "However, no one knows who, or what\n"
# 580 "data/maps/MtPyre_Summit/scripts.pory"
	.string "exactly, the ORBS belong to.\p"
# 581 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It could be a human, or perhaps\n"
# 582 "data/maps/MtPyre_Summit/scripts.pory"
	.string "a POKéMON, but no one knows.$"
# 583 "data/maps/MtPyre_Summit/scripts.pory"

# 584 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_ThoseTwoMenReturnedOrbs:
# 585 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The two men who took the ORBS came\n"
# 586 "data/maps/MtPyre_Summit/scripts.pory"
	.string "back to return them on their own.\p"
# 587 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Those men…\n"
# 588 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Perhaps they are not so evil after all…$"
# 589 "data/maps/MtPyre_Summit/scripts.pory"

# 590 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_SuperAncientPokemonTaughtUs:
# 591 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The embodiments of the land, sea,\n"
# 592 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the sky…\p"
# 593 "data/maps/MtPyre_Summit/scripts.pory"
	.string "That is said to be the identities of\n"
# 594 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the super-ancient POKéMON…\p"
# 595 "data/maps/MtPyre_Summit/scripts.pory"
	.string "In the same way that we humans and\n"
# 596 "data/maps/MtPyre_Summit/scripts.pory"
	.string "POKéMON have life, our world, too,\l"
# 597 "data/maps/MtPyre_Summit/scripts.pory"
	.string "is alive…\p"
# 598 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The super-ancient POKéMON have\n"
# 599 "data/maps/MtPyre_Summit/scripts.pory"
	.string "taught us that…$"
# 600 "data/maps/MtPyre_Summit/scripts.pory"

# 601 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WillYouHearOutMyTale:
# 602 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MT. PYRE is where we calm the spirits\n"
# 603 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of POKéMON that have passed on…\p"
# 604 "data/maps/MtPyre_Summit/scripts.pory"
	.string "This is a high place where one can\n"
# 605 "data/maps/MtPyre_Summit/scripts.pory"
	.string "see all of HOENN…\p"
# 606 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The disembodied spirits of POKéMON\n"
# 607 "data/maps/MtPyre_Summit/scripts.pory"
	.string "must find solace here…\p"
# 608 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Is it coincidence that you are here…\p"
# 609 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Will you hear out my tale? A tale long\n"
# 610 "data/maps/MtPyre_Summit/scripts.pory"
	.string "told in the HOENN region?$"
# 611 "data/maps/MtPyre_Summit/scripts.pory"

# 612 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_GroudonKyogreTale:
# 613 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 614 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 615 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 616 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 617 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 618 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 619 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 620 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 621 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 622 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 623 "data/maps/MtPyre_Summit/scripts.pory"
	.string "infernos and vicious storms.\p"
# 624 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The BLUE ORB and the RED ORB brought\n"
# 625 "data/maps/MtPyre_Summit/scripts.pory"
	.string "an end to the calamity.\p"
# 626 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Light poured from the two ORBS and\n"
# 627 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the enraged adversaries.\p"
# 628 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The pair, made docile, dove deep into\n"
# 629 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sea where eventually they\l"
# 630 "data/maps/MtPyre_Summit/scripts.pory"
	.string "disappeared…$"
# 631 "data/maps/MtPyre_Summit/scripts.pory"

# 632 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_WellThatTooIsFine:
# 633 "data/maps/MtPyre_Summit/scripts.pory"
	.string "I see…\n"
# 634 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Well, that, too, is fine…$"
# 635 "data/maps/MtPyre_Summit/scripts.pory"

# 636 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_MaxieSilence:
# 637 "data/maps/MtPyre_Summit/scripts.pory"
	.string "MAXIE: {PLAYER}…\p"
# 638 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …\n"
# 639 "data/maps/MtPyre_Summit/scripts.pory"
	.string "… … … … … …$"
# 640 "data/maps/MtPyre_Summit/scripts.pory"

# 641 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HearTheNewLegendOfHoenn:
# 642 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It is my role to pass on the legends\n"
# 643 "data/maps/MtPyre_Summit/scripts.pory"
	.string "of HOENN to future generations.\p"
# 644 "data/maps/MtPyre_Summit/scripts.pory"
	.string "And the crisis that just ended in\n"
# 645 "data/maps/MtPyre_Summit/scripts.pory"
	.string "SOOTOPOLIS rewrote a legend…\p"
# 646 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Have you the time to hear the new\n"
# 647 "data/maps/MtPyre_Summit/scripts.pory"
	.string "legend of HOENN?$"
# 648 "data/maps/MtPyre_Summit/scripts.pory"

# 649 "data/maps/MtPyre_Summit/scripts.pory"
MtPyre_Summit_Text_HoennTrioTale:
# 650 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It happened long, long ago…\p"
# 651 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was wracked by a ferocious\n"
# 652 "data/maps/MtPyre_Summit/scripts.pory"
	.string "clash between the POKéMON of the land\l"
# 653 "data/maps/MtPyre_Summit/scripts.pory"
	.string "and the POKéMON of the sea…\p"
# 654 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the land raised\n"
# 655 "data/maps/MtPyre_Summit/scripts.pory"
	.string "mountains and created continents…\p"
# 656 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON of the sea raised huge\n"
# 657 "data/maps/MtPyre_Summit/scripts.pory"
	.string "waves and carved out oceans…\p"
# 658 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Their fierce duel raged without end.\p"
# 659 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The world was engulfed in massive\n"
# 660 "data/maps/MtPyre_Summit/scripts.pory"
	.string "fires and vicious storms.\p"
# 661 "data/maps/MtPyre_Summit/scripts.pory"
	.string "It was then that the POKéMON of\n"
# 662 "data/maps/MtPyre_Summit/scripts.pory"
	.string "the sky descended from a storm.\p"
# 663 "data/maps/MtPyre_Summit/scripts.pory"
	.string "The POKéMON, shining a vivid green,\n"
# 664 "data/maps/MtPyre_Summit/scripts.pory"
	.string "becalmed the two enraged POKéMON.\p"
# 665 "data/maps/MtPyre_Summit/scripts.pory"
	.string "Then, its duty done, the green POKéMON\n"
# 666 "data/maps/MtPyre_Summit/scripts.pory"
	.string "flew off into the wild blue yonder…$"
