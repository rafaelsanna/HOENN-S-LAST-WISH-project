# 1 "data/maps/FieryPath/scripts.pory"

# 2 "data/maps/FieryPath/scripts.pory"
FieryPath_MapScripts::
# 3 "data/maps/FieryPath/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, FieryPath_OnTransition
# 4 "data/maps/FieryPath/scripts.pory"
	.byte 0
# 5 "data/maps/FieryPath/scripts.pory"

# 6 "data/maps/FieryPath/scripts.pory"
.equ LOCALID_MAGMA_GRUNT_F, 17
# 7 "data/maps/FieryPath/scripts.pory"
.equ LOCALID_MAGMA_GRUNT_M, 18
# 8 "data/maps/FieryPath/scripts.pory"

# 9 "data/maps/FieryPath/scripts.pory"
FieryPath_OnTransition:
# 10 "data/maps/FieryPath/scripts.pory"
	call_if_unset FLAG_LANDMARK_FIERY_PATH, FieryPath_EventScript_MoveScottToFallarbor
# 11 "data/maps/FieryPath/scripts.pory"
	setflag FLAG_LANDMARK_FIERY_PATH
# 12 "data/maps/FieryPath/scripts.pory"
	end
# 13 "data/maps/FieryPath/scripts.pory"

# 14 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MoveScottToFallarbor::
# 15 "data/maps/FieryPath/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_TOWN_SCOTT
# 16 "data/maps/FieryPath/scripts.pory"
	clearflag FLAG_HIDE_FALLARBOR_TOWN_BATTLE_TENT_SCOTT
# 17 "data/maps/FieryPath/scripts.pory"
	return
# 18 "data/maps/FieryPath/scripts.pory"

# 19 "data/maps/FieryPath/scripts.pory"

# 20 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_FisherGotBurned::
# 21 "data/maps/FieryPath/scripts.pory"
	lock
# 22 "data/maps/FieryPath/scripts.pory"
	faceplayer
# 23 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_FisherGotBurned, MSGBOX_AUTOCLOSE
# 24 "data/maps/FieryPath/scripts.pory"
	release
# 25 "data/maps/FieryPath/scripts.pory"
	end
# 26 "data/maps/FieryPath/scripts.pory"

# 27 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_HikerDaxon::
# 28 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_DAXON, FieryPath_Text_DaxonIntro, FieryPath_Text_DaxonDefeated
# 29 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_DaxonPostBattle, MSGBOX_AUTOCLOSE
# 30 "data/maps/FieryPath/scripts.pory"
	end	
# 31 "data/maps/FieryPath/scripts.pory"

# 32 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_KinlderFleming::
# 33 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_FLEMING, FieryPath_Text_FlemingIntro, FieryPath_Text_FlemingDefeated
# 34 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_FlemingPostBattle, MSGBOX_AUTOCLOSE
# 35 "data/maps/FieryPath/scripts.pory"
	end	
# 36 "data/maps/FieryPath/scripts.pory"

# 37 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_PunkGirlEva::
# 38 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_EVA, FieryPath_Text_EvaIntro, FieryPath_Text_EvaDefeated
# 39 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_EvaPostBattle, MSGBOX_AUTOCLOSE
# 40 "data/maps/FieryPath/scripts.pory"
	end	
# 41 "data/maps/FieryPath/scripts.pory"

# 42 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_PunkGirlSolana::
# 43 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_SOLANA, FieryPath_Text_SolanaIntro, FieryPath_Text_SolanaDefeated
# 44 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_SolanaPostBattle, MSGBOX_AUTOCLOSE
# 45 "data/maps/FieryPath/scripts.pory"
	end
# 46 "data/maps/FieryPath/scripts.pory"

# 47 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_PicsGuyJaime::
# 48 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_JAIME, FieryPath_Text_JaimeIntro, FieryPath_Text_JaimeDefeated
# 49 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_JaimePostBattle, MSGBOX_AUTOCLOSE
# 50 "data/maps/FieryPath/scripts.pory"
	end	
# 51 "data/maps/FieryPath/scripts.pory"

# 52 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_LavaManiacLoch::
# 53 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_LOCH, FieryPath_Text_LochIntro, FieryPath_Text_LochDefeated
# 54 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_LochPostBattle, MSGBOX_AUTOCLOSE
# 55 "data/maps/FieryPath/scripts.pory"
	end	
# 56 "data/maps/FieryPath/scripts.pory"

# 57 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_ChanelerSatsuki::
# 58 "data/maps/FieryPath/scripts.pory"
	lock
# 59 "data/maps/FieryPath/scripts.pory"
	faceplayer
# 60 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_SATSUKI, FieryPath_Text_SatsukiIntro, FieryPath_Text_SatsukiDefeated
# 61 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_SatsukiPostBattle, MSGBOX_AUTOCLOSE
# 62 "data/maps/FieryPath/scripts.pory"
	release
# 63 "data/maps/FieryPath/scripts.pory"
	end	
# 64 "data/maps/FieryPath/scripts.pory"

# 65 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerLeft::
# 66 "data/maps/FieryPath/scripts.pory"
    lockall
# 67 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 68 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 69 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaM_2Left
# 70 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 71 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaNoticesPlayer
# 72 "data/maps/FieryPath/scripts.pory"
    turnobject LOCALID_PLAYER, DIR_WEST
# 73 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaFacePlayer
# 74 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaScene
# 75 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaLeaveLeft
# 76 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaEnd
# 77 "data/maps/FieryPath/scripts.pory"

# 78 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerMid::
# 79 "data/maps/FieryPath/scripts.pory"
    lockall
# 80 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 81 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 82 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaF_1Right
# 83 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaM_1Left
# 84 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 85 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaNoticesPlayer
# 86 "data/maps/FieryPath/scripts.pory"
    turnobject LOCALID_PLAYER, DIR_WEST
# 87 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaFacePlayer
# 88 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaScene
# 89 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaLeaveMid
# 90 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaEnd
# 91 "data/maps/FieryPath/scripts.pory"

# 92 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerRight::
# 93 "data/maps/FieryPath/scripts.pory"
    lockall
# 94 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 95 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 96 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaF_2Right
# 97 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 98 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaNoticesPlayer
# 99 "data/maps/FieryPath/scripts.pory"
    turnobject LOCALID_PLAYER, DIR_EAST
# 100 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaFacePlayer
# 101 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaScene
# 102 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaLeaveRight
# 103 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaEnd
# 104 "data/maps/FieryPath/scripts.pory"

# 105 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaNoticesPlayer::
# 106 "data/maps/FieryPath/scripts.pory"
    playse SE_PIN
# 107 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, Common_Movement_ExclamationMark
# 108 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, Common_Movement_ExclamationMark
# 109 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 110 "data/maps/FieryPath/scripts.pory"
    return
# 111 "data/maps/FieryPath/scripts.pory"

# 112 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaFacePlayer::
# 113 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, Common_Movement_FacePlayer
# 114 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, Common_Movement_FacePlayer
# 115 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 116 "data/maps/FieryPath/scripts.pory"
    return
# 117 "data/maps/FieryPath/scripts.pory"

# 118 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaScene::
# 119 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaIntro_F, MSGBOX_DEFAULT
# 120 "data/maps/FieryPath/scripts.pory"
    closemessage
# 121 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaIntro_M, MSGBOX_DEFAULT
# 122 "data/maps/FieryPath/scripts.pory"
    closemessage
# 123 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaChallenge, MSGBOX_DEFAULT
# 124 "data/maps/FieryPath/scripts.pory"
    closemessage
# 125 "data/maps/FieryPath/scripts.pory"
    trainerbattle_no_intro TRAINER_GRUNT_FIERY_PATH, FieryPath_Text_MagmaAfterLoss
# 126 "data/maps/FieryPath/scripts.pory"
    closemessage
# 127 "data/maps/FieryPath/scripts.pory"
    return
# 128 "data/maps/FieryPath/scripts.pory"

# 129 "data/maps/FieryPath/scripts.pory"
@ The player steps aside only on the outer triggers, where the nearby grunt
# 130 "data/maps/FieryPath/scripts.pory"
@ would otherwise be blocked in by the cave wall.
# 131 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveLeft::
# 132 "data/maps/FieryPath/scripts.pory"
    delay 30
# 133 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_PLAYER, FieryPath_Movement_PlayerStepDown
# 134 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 135 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaExitNorth
# 136 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 137 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 138 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaFExitLeft
# 139 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 140 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 141 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaLeaveDone
# 142 "data/maps/FieryPath/scripts.pory"

# 143 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveMid::
# 144 "data/maps/FieryPath/scripts.pory"
    delay 30
# 145 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaExitNorth
# 146 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 147 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 148 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaMExitMid
# 149 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 150 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 151 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaLeaveDone
# 152 "data/maps/FieryPath/scripts.pory"

# 153 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveRight::
# 154 "data/maps/FieryPath/scripts.pory"
    delay 30
# 155 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_PLAYER, FieryPath_Movement_PlayerStepDown
# 156 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 157 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaExitNorth
# 158 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 159 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 160 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaMExitRight
# 161 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 162 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 163 "data/maps/FieryPath/scripts.pory"

# 164 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveDone::
# 165 "data/maps/FieryPath/scripts.pory"
    setflag FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE
# 166 "data/maps/FieryPath/scripts.pory"
    fadedefaultbgm
# 167 "data/maps/FieryPath/scripts.pory"
    return
# 168 "data/maps/FieryPath/scripts.pory"

# 169 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaEnd:
# 170 "data/maps/FieryPath/scripts.pory"
    releaseall
# 171 "data/maps/FieryPath/scripts.pory"
    end
# 172 "data/maps/FieryPath/scripts.pory"

# 173 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaF_1Right:
# 174 "data/maps/FieryPath/scripts.pory"
    walk_right
# 175 "data/maps/FieryPath/scripts.pory"
    step_end
# 176 "data/maps/FieryPath/scripts.pory"

# 177 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaF_2Right:
# 178 "data/maps/FieryPath/scripts.pory"
    walk_right
# 179 "data/maps/FieryPath/scripts.pory"
    walk_right
# 180 "data/maps/FieryPath/scripts.pory"
    step_end
# 181 "data/maps/FieryPath/scripts.pory"

# 182 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaM_1Left:
# 183 "data/maps/FieryPath/scripts.pory"
    walk_left
# 184 "data/maps/FieryPath/scripts.pory"
    step_end
# 185 "data/maps/FieryPath/scripts.pory"

# 186 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaM_2Left:
# 187 "data/maps/FieryPath/scripts.pory"
    walk_left
# 188 "data/maps/FieryPath/scripts.pory"
    walk_left
# 189 "data/maps/FieryPath/scripts.pory"
    step_end
# 190 "data/maps/FieryPath/scripts.pory"

# 191 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_PlayerStepDown:
# 192 "data/maps/FieryPath/scripts.pory"
    walk_down
# 193 "data/maps/FieryPath/scripts.pory"
    step_end
# 194 "data/maps/FieryPath/scripts.pory"

# 195 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaExitNorth:
# 196 "data/maps/FieryPath/scripts.pory"
    walk_up
# 197 "data/maps/FieryPath/scripts.pory"
    walk_up
# 198 "data/maps/FieryPath/scripts.pory"
    walk_up
# 199 "data/maps/FieryPath/scripts.pory"
    walk_up
# 200 "data/maps/FieryPath/scripts.pory"
    walk_up
# 201 "data/maps/FieryPath/scripts.pory"
    walk_up
# 202 "data/maps/FieryPath/scripts.pory"
    walk_up
# 203 "data/maps/FieryPath/scripts.pory"
    walk_up
# 204 "data/maps/FieryPath/scripts.pory"
    walk_up
# 205 "data/maps/FieryPath/scripts.pory"
    walk_up
# 206 "data/maps/FieryPath/scripts.pory"
    step_end
# 207 "data/maps/FieryPath/scripts.pory"

# 208 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaFExitLeft:
# 209 "data/maps/FieryPath/scripts.pory"
    walk_right
# 210 "data/maps/FieryPath/scripts.pory"
    walk_right
# 211 "data/maps/FieryPath/scripts.pory"
    walk_up
# 212 "data/maps/FieryPath/scripts.pory"
    walk_up
# 213 "data/maps/FieryPath/scripts.pory"
    walk_up
# 214 "data/maps/FieryPath/scripts.pory"
    walk_up
# 215 "data/maps/FieryPath/scripts.pory"
    walk_up
# 216 "data/maps/FieryPath/scripts.pory"
    walk_up
# 217 "data/maps/FieryPath/scripts.pory"
    walk_up
# 218 "data/maps/FieryPath/scripts.pory"
    walk_up
# 219 "data/maps/FieryPath/scripts.pory"
    walk_up
# 220 "data/maps/FieryPath/scripts.pory"
    walk_up
# 221 "data/maps/FieryPath/scripts.pory"
    step_end
# 222 "data/maps/FieryPath/scripts.pory"

# 223 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaMExitMid:
# 224 "data/maps/FieryPath/scripts.pory"
    walk_up
# 225 "data/maps/FieryPath/scripts.pory"
    walk_left
# 226 "data/maps/FieryPath/scripts.pory"
    walk_up
# 227 "data/maps/FieryPath/scripts.pory"
    walk_up
# 228 "data/maps/FieryPath/scripts.pory"
    walk_up
# 229 "data/maps/FieryPath/scripts.pory"
    walk_up
# 230 "data/maps/FieryPath/scripts.pory"
    walk_up
# 231 "data/maps/FieryPath/scripts.pory"
    walk_up
# 232 "data/maps/FieryPath/scripts.pory"
    walk_up
# 233 "data/maps/FieryPath/scripts.pory"
    walk_up
# 234 "data/maps/FieryPath/scripts.pory"
    walk_up
# 235 "data/maps/FieryPath/scripts.pory"
    step_end
# 236 "data/maps/FieryPath/scripts.pory"

# 237 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaMExitRight:
# 238 "data/maps/FieryPath/scripts.pory"
    walk_left
# 239 "data/maps/FieryPath/scripts.pory"
    walk_up
# 240 "data/maps/FieryPath/scripts.pory"
    walk_left
# 241 "data/maps/FieryPath/scripts.pory"
    walk_up
# 242 "data/maps/FieryPath/scripts.pory"
    walk_up
# 243 "data/maps/FieryPath/scripts.pory"
    walk_up
# 244 "data/maps/FieryPath/scripts.pory"
    walk_up
# 245 "data/maps/FieryPath/scripts.pory"
    walk_up
# 246 "data/maps/FieryPath/scripts.pory"
    walk_up
# 247 "data/maps/FieryPath/scripts.pory"
    walk_up
# 248 "data/maps/FieryPath/scripts.pory"
    walk_up
# 249 "data/maps/FieryPath/scripts.pory"
    walk_up
# 250 "data/maps/FieryPath/scripts.pory"
    step_end
# 251 "data/maps/FieryPath/scripts.pory"

# 252 "data/maps/FieryPath/scripts.pory"
///// TEXT STRINGS /////
# 253 "data/maps/FieryPath/scripts.pory"

# 254 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_FisherGotBurned:
# 255 "data/maps/FieryPath/scripts.pory"
	.string "My fishing buddies warned me:\n"
# 256 "data/maps/FieryPath/scripts.pory"
	.string "Don't go fishing in the lava...\n"
# 257 "data/maps/FieryPath/scripts.pory"
	.string "But I heard SHARPEDO swim in these\n"
# 258 "data/maps/FieryPath/scripts.pory"
	.string "magma rivers! LAVA SHARKS!\p"
# 259 "data/maps/FieryPath/scripts.pory"
	.string "I just wanted to catch one...\n"
# 260 "data/maps/FieryPath/scripts.pory"
	.string "Just ONE! IMAGINE IT!\p"
# 261 "data/maps/FieryPath/scripts.pory"
	.string "But my rod melted in seconds.\n"
# 262 "data/maps/FieryPath/scripts.pory"
	.string "Poof. Gone. Just like that.\p"
# 263 "data/maps/FieryPath/scripts.pory"
	.string "Now I'm burned, my rod's destroyed,\n"
# 264 "data/maps/FieryPath/scripts.pory"
	.string "and I've got no story to tell...\p"
# 265 "data/maps/FieryPath/scripts.pory"
	.string "Guess I'll just sit here and\n"
# 266 "data/maps/FieryPath/scripts.pory"
	.string "watch the lava flow...$"
# 267 "data/maps/FieryPath/scripts.pory"

# 268 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_SolanaIntro:
# 269 "data/maps/FieryPath/scripts.pory"
	.string "Wait...do you hear that rhythm?\p"
# 270 "data/maps/FieryPath/scripts.pory"
	.string "I play every AMATERASU song at full\n"
# 271 "data/maps/FieryPath/scripts.pory"
	.string "volume! I'm her biggest fan!\p"
# 272 "data/maps/FieryPath/scripts.pory"
	.string "Eva says her music is fake. She's just\n"
# 273 "data/maps/FieryPath/scripts.pory"
	.string "jealous!\p"
# 274 "data/maps/FieryPath/scripts.pory"
	.string "My team knows every beat! Let's give\n"
# 275 "data/maps/FieryPath/scripts.pory"
	.string "you a private concert!$"
# 276 "data/maps/FieryPath/scripts.pory"

# 277 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_SolanaDefeated:
# 278 "data/maps/FieryPath/scripts.pory"
	.string "Encore!\n"
# 279 "data/maps/FieryPath/scripts.pory"
	.string "...Right after I tune up.$"
# 280 "data/maps/FieryPath/scripts.pory"

# 281 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_SolanaPostBattle:
# 282 "data/maps/FieryPath/scripts.pory"
	.string "AMATERASU's voice could make even\n"
# 283 "data/maps/FieryPath/scripts.pory"
	.string "this lava feel cold!\p"
# 284 "data/maps/FieryPath/scripts.pory"
	.string "Eva can complain all she wants. I'll\n"
# 285 "data/maps/FieryPath/scripts.pory"
	.string "be in the front row forever!$"
# 286 "data/maps/FieryPath/scripts.pory"

# 287 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaIntro_F:
# 288 "data/maps/FieryPath/scripts.pory"
    .string "Ugh... ALL day in this heat,\n"
# 289 "data/maps/FieryPath/scripts.pory"
    .string "and we found absolutely nothing.$"
# 290 "data/maps/FieryPath/scripts.pory"

# 291 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaIntro_M:
# 292 "data/maps/FieryPath/scripts.pory"
    .string "Hold on... that outfit.\n"
# 293 "data/maps/FieryPath/scripts.pory"
    .string "You're that kid who wants to\l"
# 294 "data/maps/FieryPath/scripts.pory"
    .string "play hero, aren't you?$"
# 295 "data/maps/FieryPath/scripts.pory"

# 296 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaChallenge:
# 297 "data/maps/FieryPath/scripts.pory"
    .string "You've got some nerve, kid.\p"
# 298 "data/maps/FieryPath/scripts.pory"
    .string "Fine - both of us, right now!\n"
# 299 "data/maps/FieryPath/scripts.pory"
    .string "Let's see how tough you really are!$"
# 300 "data/maps/FieryPath/scripts.pory"

# 301 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaAfterLoss:
# 302 "data/maps/FieryPath/scripts.pory"
    .string "...Damn. You're actually strong.\p"
# 303 "data/maps/FieryPath/scripts.pory"
    .string "Whatever. We found nothing useful\n"
# 304 "data/maps/FieryPath/scripts.pory"
    .string "in this cave anyway.\p"
# 305 "data/maps/FieryPath/scripts.pory"
    .string "Next time we WON'T hold back.\n"
# 306 "data/maps/FieryPath/scripts.pory"
    .string "So frustrating...$"
