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
FieryPath__EventScript_PicsGuyJaime::
# 43 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_JAIME, FieryPath_Text_JaimeIntro, FieryPath_Text_JaimeDefeated
# 44 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_JaimePostBattle, MSGBOX_AUTOCLOSE
# 45 "data/maps/FieryPath/scripts.pory"
	end	
# 46 "data/maps/FieryPath/scripts.pory"

# 47 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_LavaManiacLoch::
# 48 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_LOCH, FieryPath_Text_LochIntro, FieryPath_Text_LochDefeated
# 49 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_LochPostBattle, MSGBOX_AUTOCLOSE
# 50 "data/maps/FieryPath/scripts.pory"
	end	
# 51 "data/maps/FieryPath/scripts.pory"

# 52 "data/maps/FieryPath/scripts.pory"
FieryPath__EventScript_ChanelerSatsuki::
# 53 "data/maps/FieryPath/scripts.pory"
	lock
# 54 "data/maps/FieryPath/scripts.pory"
	faceplayer
# 55 "data/maps/FieryPath/scripts.pory"
	trainerbattle_single TRAINER_SATSUKI, FieryPath_Text_SatsukiIntro, FieryPath_Text_SatsukiDefeated
# 56 "data/maps/FieryPath/scripts.pory"
	msgbox FieryPath_Text_SatsukiPostBattle, MSGBOX_AUTOCLOSE
# 57 "data/maps/FieryPath/scripts.pory"
	release
# 58 "data/maps/FieryPath/scripts.pory"
	end	
# 59 "data/maps/FieryPath/scripts.pory"

# 60 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerLeft::
# 61 "data/maps/FieryPath/scripts.pory"
    lockall
# 62 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 63 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 64 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaM_2Left
# 65 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 66 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaNoticesPlayer
# 67 "data/maps/FieryPath/scripts.pory"
    turnobject LOCALID_PLAYER, DIR_WEST
# 68 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaFacePlayer
# 69 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaScene
# 70 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaLeaveLeft
# 71 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaEnd
# 72 "data/maps/FieryPath/scripts.pory"

# 73 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerMid::
# 74 "data/maps/FieryPath/scripts.pory"
    lockall
# 75 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 76 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 77 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaF_1Right
# 78 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaM_1Left
# 79 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 80 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaNoticesPlayer
# 81 "data/maps/FieryPath/scripts.pory"
    turnobject LOCALID_PLAYER, DIR_WEST
# 82 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaFacePlayer
# 83 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaScene
# 84 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaLeaveMid
# 85 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaEnd
# 86 "data/maps/FieryPath/scripts.pory"

# 87 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerRight::
# 88 "data/maps/FieryPath/scripts.pory"
    lockall
# 89 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 90 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 91 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaF_2Right
# 92 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 93 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaNoticesPlayer
# 94 "data/maps/FieryPath/scripts.pory"
    turnobject LOCALID_PLAYER, DIR_EAST
# 95 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaFacePlayer
# 96 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaScene
# 97 "data/maps/FieryPath/scripts.pory"
    call FieryPath_EventScript_MagmaLeaveRight
# 98 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaEnd
# 99 "data/maps/FieryPath/scripts.pory"

# 100 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaNoticesPlayer::
# 101 "data/maps/FieryPath/scripts.pory"
    playse SE_PIN
# 102 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, Common_Movement_ExclamationMark
# 103 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, Common_Movement_ExclamationMark
# 104 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 105 "data/maps/FieryPath/scripts.pory"
    return
# 106 "data/maps/FieryPath/scripts.pory"

# 107 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaFacePlayer::
# 108 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, Common_Movement_FacePlayer
# 109 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, Common_Movement_FacePlayer
# 110 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 111 "data/maps/FieryPath/scripts.pory"
    return
# 112 "data/maps/FieryPath/scripts.pory"

# 113 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaScene::
# 114 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaIntro_F, MSGBOX_DEFAULT
# 115 "data/maps/FieryPath/scripts.pory"
    closemessage
# 116 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaIntro_M, MSGBOX_DEFAULT
# 117 "data/maps/FieryPath/scripts.pory"
    closemessage
# 118 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaChallenge, MSGBOX_DEFAULT
# 119 "data/maps/FieryPath/scripts.pory"
    closemessage
# 120 "data/maps/FieryPath/scripts.pory"
    trainerbattle_no_intro TRAINER_GRUNT_FIERY_PATH, FieryPath_Text_MagmaAfterLoss
# 121 "data/maps/FieryPath/scripts.pory"
    closemessage
# 122 "data/maps/FieryPath/scripts.pory"
    return
# 123 "data/maps/FieryPath/scripts.pory"

# 124 "data/maps/FieryPath/scripts.pory"
@ The player steps aside only on the outer triggers, where the nearby grunt
# 125 "data/maps/FieryPath/scripts.pory"
@ would otherwise be blocked in by the cave wall.
# 126 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveLeft::
# 127 "data/maps/FieryPath/scripts.pory"
    delay 30
# 128 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_PLAYER, FieryPath_Movement_PlayerStepDown
# 129 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 130 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaExitNorth
# 131 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 132 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 133 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaFExitLeft
# 134 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 135 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 136 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaLeaveDone
# 137 "data/maps/FieryPath/scripts.pory"

# 138 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveMid::
# 139 "data/maps/FieryPath/scripts.pory"
    delay 30
# 140 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaExitNorth
# 141 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 142 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 143 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaMExitMid
# 144 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 145 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 146 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaLeaveDone
# 147 "data/maps/FieryPath/scripts.pory"

# 148 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveRight::
# 149 "data/maps/FieryPath/scripts.pory"
    delay 30
# 150 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_PLAYER, FieryPath_Movement_PlayerStepDown
# 151 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 152 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaExitNorth
# 153 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 154 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 155 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaMExitRight
# 156 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 157 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 158 "data/maps/FieryPath/scripts.pory"

# 159 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaLeaveDone::
# 160 "data/maps/FieryPath/scripts.pory"
    setflag FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE
# 161 "data/maps/FieryPath/scripts.pory"
    fadedefaultbgm
# 162 "data/maps/FieryPath/scripts.pory"
    return
# 163 "data/maps/FieryPath/scripts.pory"

# 164 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaEnd:
# 165 "data/maps/FieryPath/scripts.pory"
    releaseall
# 166 "data/maps/FieryPath/scripts.pory"
    end
# 167 "data/maps/FieryPath/scripts.pory"

# 168 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaF_1Right:
# 169 "data/maps/FieryPath/scripts.pory"
    walk_right
# 170 "data/maps/FieryPath/scripts.pory"
    step_end
# 171 "data/maps/FieryPath/scripts.pory"

# 172 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaF_2Right:
# 173 "data/maps/FieryPath/scripts.pory"
    walk_right
# 174 "data/maps/FieryPath/scripts.pory"
    walk_right
# 175 "data/maps/FieryPath/scripts.pory"
    step_end
# 176 "data/maps/FieryPath/scripts.pory"

# 177 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaM_1Left:
# 178 "data/maps/FieryPath/scripts.pory"
    walk_left
# 179 "data/maps/FieryPath/scripts.pory"
    step_end
# 180 "data/maps/FieryPath/scripts.pory"

# 181 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaM_2Left:
# 182 "data/maps/FieryPath/scripts.pory"
    walk_left
# 183 "data/maps/FieryPath/scripts.pory"
    walk_left
# 184 "data/maps/FieryPath/scripts.pory"
    step_end
# 185 "data/maps/FieryPath/scripts.pory"

# 186 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_PlayerStepDown:
# 187 "data/maps/FieryPath/scripts.pory"
    walk_down
# 188 "data/maps/FieryPath/scripts.pory"
    step_end
# 189 "data/maps/FieryPath/scripts.pory"

# 190 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaExitNorth:
# 191 "data/maps/FieryPath/scripts.pory"
    walk_up
# 192 "data/maps/FieryPath/scripts.pory"
    walk_up
# 193 "data/maps/FieryPath/scripts.pory"
    walk_up
# 194 "data/maps/FieryPath/scripts.pory"
    walk_up
# 195 "data/maps/FieryPath/scripts.pory"
    walk_up
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
    step_end
# 202 "data/maps/FieryPath/scripts.pory"

# 203 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaFExitLeft:
# 204 "data/maps/FieryPath/scripts.pory"
    walk_right
# 205 "data/maps/FieryPath/scripts.pory"
    walk_right
# 206 "data/maps/FieryPath/scripts.pory"
    walk_up
# 207 "data/maps/FieryPath/scripts.pory"
    walk_up
# 208 "data/maps/FieryPath/scripts.pory"
    walk_up
# 209 "data/maps/FieryPath/scripts.pory"
    walk_up
# 210 "data/maps/FieryPath/scripts.pory"
    walk_up
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
    step_end
# 217 "data/maps/FieryPath/scripts.pory"

# 218 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaMExitMid:
# 219 "data/maps/FieryPath/scripts.pory"
    walk_up
# 220 "data/maps/FieryPath/scripts.pory"
    walk_left
# 221 "data/maps/FieryPath/scripts.pory"
    walk_up
# 222 "data/maps/FieryPath/scripts.pory"
    walk_up
# 223 "data/maps/FieryPath/scripts.pory"
    walk_up
# 224 "data/maps/FieryPath/scripts.pory"
    walk_up
# 225 "data/maps/FieryPath/scripts.pory"
    walk_up
# 226 "data/maps/FieryPath/scripts.pory"
    walk_up
# 227 "data/maps/FieryPath/scripts.pory"
    walk_up
# 228 "data/maps/FieryPath/scripts.pory"
    walk_up
# 229 "data/maps/FieryPath/scripts.pory"
    walk_up
# 230 "data/maps/FieryPath/scripts.pory"
    step_end
# 231 "data/maps/FieryPath/scripts.pory"

# 232 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaMExitRight:
# 233 "data/maps/FieryPath/scripts.pory"
    walk_left
# 234 "data/maps/FieryPath/scripts.pory"
    walk_up
# 235 "data/maps/FieryPath/scripts.pory"
    walk_left
# 236 "data/maps/FieryPath/scripts.pory"
    walk_up
# 237 "data/maps/FieryPath/scripts.pory"
    walk_up
# 238 "data/maps/FieryPath/scripts.pory"
    walk_up
# 239 "data/maps/FieryPath/scripts.pory"
    walk_up
# 240 "data/maps/FieryPath/scripts.pory"
    walk_up
# 241 "data/maps/FieryPath/scripts.pory"
    walk_up
# 242 "data/maps/FieryPath/scripts.pory"
    walk_up
# 243 "data/maps/FieryPath/scripts.pory"
    walk_up
# 244 "data/maps/FieryPath/scripts.pory"
    walk_up
# 245 "data/maps/FieryPath/scripts.pory"
    step_end
# 246 "data/maps/FieryPath/scripts.pory"

# 247 "data/maps/FieryPath/scripts.pory"
///// TEXT STRINGS /////
# 248 "data/maps/FieryPath/scripts.pory"

# 249 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_FisherGotBurned:
# 250 "data/maps/FieryPath/scripts.pory"
	.string "My fishing buddies warned me:\n"
# 251 "data/maps/FieryPath/scripts.pory"
	.string "Don't go fishing in the lava...\n"
# 252 "data/maps/FieryPath/scripts.pory"
	.string "But I heard SHARPEDO swim in these\n"
# 253 "data/maps/FieryPath/scripts.pory"
	.string "magma rivers! LAVA SHARKS!\p"
# 254 "data/maps/FieryPath/scripts.pory"
	.string "I just wanted to catch one...\n"
# 255 "data/maps/FieryPath/scripts.pory"
	.string "Just ONE! IMAGINE IT!\p"
# 256 "data/maps/FieryPath/scripts.pory"
	.string "But my rod melted in seconds.\n"
# 257 "data/maps/FieryPath/scripts.pory"
	.string "Poof. Gone. Just like that.\p"
# 258 "data/maps/FieryPath/scripts.pory"
	.string "Now I'm burned, my rod's destroyed,\n"
# 259 "data/maps/FieryPath/scripts.pory"
	.string "and I've got no story to tell...\p"
# 260 "data/maps/FieryPath/scripts.pory"
	.string "Guess I'll just sit here and\n"
# 261 "data/maps/FieryPath/scripts.pory"
	.string "watch the lava flow...$"
# 262 "data/maps/FieryPath/scripts.pory"

# 263 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaIntro_F:
# 264 "data/maps/FieryPath/scripts.pory"
    .string "Ugh... ALL day in this heat,\n"
# 265 "data/maps/FieryPath/scripts.pory"
    .string "and we found absolutely nothing.$"
# 266 "data/maps/FieryPath/scripts.pory"

# 267 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaIntro_M:
# 268 "data/maps/FieryPath/scripts.pory"
    .string "Hold on... that outfit.\n"
# 269 "data/maps/FieryPath/scripts.pory"
    .string "You're that kid who wants to\l"
# 270 "data/maps/FieryPath/scripts.pory"
    .string "play hero, aren't you?$"
# 271 "data/maps/FieryPath/scripts.pory"

# 272 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaChallenge:
# 273 "data/maps/FieryPath/scripts.pory"
    .string "You've got some nerve, kid.\p"
# 274 "data/maps/FieryPath/scripts.pory"
    .string "Fine - both of us, right now!\n"
# 275 "data/maps/FieryPath/scripts.pory"
    .string "Let's see how tough you really are!$"
# 276 "data/maps/FieryPath/scripts.pory"

# 277 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaAfterLoss:
# 278 "data/maps/FieryPath/scripts.pory"
    .string "...Damn. You're actually strong.\p"
# 279 "data/maps/FieryPath/scripts.pory"
    .string "Whatever. We found nothing useful\n"
# 280 "data/maps/FieryPath/scripts.pory"
    .string "in this cave anyway.\p"
# 281 "data/maps/FieryPath/scripts.pory"
    .string "Next time we WON'T hold back.\n"
# 282 "data/maps/FieryPath/scripts.pory"
    .string "So frustrating...$"
