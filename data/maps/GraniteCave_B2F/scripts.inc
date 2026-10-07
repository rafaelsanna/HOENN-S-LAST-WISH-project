# 1 "data/maps/GraniteCave_B2F/scripts.pory"

# 2 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_MapScripts::
# 3 "data/maps/GraniteCave_B2F/scripts.pory"
	.byte 0
# 4 "data/maps/GraniteCave_B2F/scripts.pory"

# 5 "data/maps/GraniteCave_B2F/scripts.pory"
.equ LOCALID_MAGMA_M, 11
# 6 "data/maps/GraniteCave_B2F/scripts.pory"
.equ LOCALID_MAGMA_F, 10
# 7 "data/maps/GraniteCave_B2F/scripts.pory"

# 8 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaWorking::
# 9 "data/maps/GraniteCave_B2F/scripts.pory"
    lock
# 10 "data/maps/GraniteCave_B2F/scripts.pory"
    msgbox GraniteCave_Text_MagmaWorking, MSGBOX_DEFAULT
# 11 "data/maps/GraniteCave_B2F/scripts.pory"
    release
# 12 "data/maps/GraniteCave_B2F/scripts.pory"
    end
# 13 "data/maps/GraniteCave_B2F/scripts.pory"

# 14 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaTrigger::
# 15 "data/maps/GraniteCave_B2F/scripts.pory"
    lockall
# 16 "data/maps/GraniteCave_B2F/scripts.pory"
    goto_if_set FLAG_NEW_MAGMA_GRUNTS, GraniteCave_B2F_EventScript_End
# 17 "data/maps/GraniteCave_B2F/scripts.pory"

# 18 "data/maps/GraniteCave_B2F/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 19 "data/maps/GraniteCave_B2F/scripts.pory"

# 20 "data/maps/GraniteCave_B2F/scripts.pory"
    playse SE_PIN
# 21 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, Common_Movement_ExclamationMark
# 22 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, Common_Movement_ExclamationMark
# 23 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_M
# 24 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_F
# 25 "data/maps/GraniteCave_B2F/scripts.pory"
    waitfieldeffect FLDEFF_EXCLAMATION_MARK_ICON
# 26 "data/maps/GraniteCave_B2F/scripts.pory"

# 27 "data/maps/GraniteCave_B2F/scripts.pory"
    getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 28 "data/maps/GraniteCave_B2F/scripts.pory"
    goto_if_eq VAR_TEMP_0, 25, GraniteCave_B2F_EventScript_MagmaApproachRightTrigger
# 29 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_MagmaM_Approach
# 30 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_MagmaF_Approach
# 31 "data/maps/GraniteCave_B2F/scripts.pory"
    goto GraniteCave_B2F_EventScript_MagmaApproachFinished
# 32 "data/maps/GraniteCave_B2F/scripts.pory"

# 33 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaApproachRightTrigger::
# 34 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_MagmaM_ApproachRightTrigger
# 35 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_MagmaF_ApproachRightTrigger
# 36 "data/maps/GraniteCave_B2F/scripts.pory"

# 37 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaApproachFinished::
# 38 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_M
# 39 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_F
# 40 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, Common_Movement_FacePlayer
# 41 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, Common_Movement_FacePlayer
# 42 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_M
# 43 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_F
# 44 "data/maps/GraniteCave_B2F/scripts.pory"

# 45 "data/maps/GraniteCave_B2F/scripts.pory"
    msgbox GraniteCave_Text_MagmaIntro, MSGBOX_DEFAULT
# 46 "data/maps/GraniteCave_B2F/scripts.pory"
    closemessage
# 47 "data/maps/GraniteCave_B2F/scripts.pory"

# 48 "data/maps/GraniteCave_B2F/scripts.pory"
    trainerbattle_no_intro TRAINER_GRUNT_GRANITE_CAVE, GraniteCave_Text_MagmaLose
# 49 "data/maps/GraniteCave_B2F/scripts.pory"

# 50 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaExit::
# 51 "data/maps/GraniteCave_B2F/scripts.pory"
    getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 52 "data/maps/GraniteCave_B2F/scripts.pory"
    goto_if_eq VAR_TEMP_0, 25, GraniteCave_B2F_EventScript_MagmaExitRightTrigger
# 53 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_Magma_RunAway_M
# 54 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_Magma_RunAway_F
# 55 "data/maps/GraniteCave_B2F/scripts.pory"
    goto GraniteCave_B2F_EventScript_MagmaExitFinished
# 56 "data/maps/GraniteCave_B2F/scripts.pory"

# 57 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaExitRightTrigger::
# 58 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_Magma_RunAway_M_RightTrigger
# 59 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_Magma_RunAway_F_RightTrigger
# 60 "data/maps/GraniteCave_B2F/scripts.pory"

# 61 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_MagmaExitFinished::
# 62 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_M
# 63 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement LOCALID_MAGMA_F
# 64 "data/maps/GraniteCave_B2F/scripts.pory"

# 65 "data/maps/GraniteCave_B2F/scripts.pory"
    removeobject LOCALID_MAGMA_M
# 66 "data/maps/GraniteCave_B2F/scripts.pory"
    removeobject LOCALID_MAGMA_F
# 67 "data/maps/GraniteCave_B2F/scripts.pory"

# 68 "data/maps/GraniteCave_B2F/scripts.pory"
    setflag FLAG_NEW_MAGMA_GRUNTS
# 69 "data/maps/GraniteCave_B2F/scripts.pory"

# 70 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_End:
# 71 "data/maps/GraniteCave_B2F/scripts.pory"
    releaseall
# 72 "data/maps/GraniteCave_B2F/scripts.pory"
    end
# 73 "data/maps/GraniteCave_B2F/scripts.pory"

# 74 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_MagmaM_Approach:
# 75 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_right
# 76 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 77 "data/maps/GraniteCave_B2F/scripts.pory"

# 78 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_MagmaF_Approach:
# 79 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_left
# 80 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_left
# 81 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 82 "data/maps/GraniteCave_B2F/scripts.pory"

# 83 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_MagmaM_ApproachRightTrigger:
# 84 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_right
# 85 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_right
# 86 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 87 "data/maps/GraniteCave_B2F/scripts.pory"

# 88 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_MagmaF_ApproachRightTrigger:
# 89 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_left
# 90 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 91 "data/maps/GraniteCave_B2F/scripts.pory"

# 92 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_Magma_RunAway_M:
# 93 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 94 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 95 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 96 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 97 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 98 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 99 "data/maps/GraniteCave_B2F/scripts.pory"
    jump_2_left
# 100 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 101 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 102 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 103 "data/maps/GraniteCave_B2F/scripts.pory"

# 104 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_Magma_RunAway_F:
# 105 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_right
# 106 "data/maps/GraniteCave_B2F/scripts.pory"
    jump_2_down
# 107 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 108 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 109 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 110 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 111 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 112 "data/maps/GraniteCave_B2F/scripts.pory"

# 113 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_Magma_RunAway_M_RightTrigger:
# 114 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 115 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 116 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 117 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 118 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 119 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 120 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 121 "data/maps/GraniteCave_B2F/scripts.pory"
    jump_2_left
# 122 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 123 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 124 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 125 "data/maps/GraniteCave_B2F/scripts.pory"

# 126 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_Magma_RunAway_F_RightTrigger:
# 127 "data/maps/GraniteCave_B2F/scripts.pory"
    jump_2_down
# 128 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 129 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 130 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 131 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 132 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 133 "data/maps/GraniteCave_B2F/scripts.pory"

# 134 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Text_MagmaWorking:
# 135 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "The grunt is hammering away at the\n"
# 136 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "rock and does not notice you.$"
# 137 "data/maps/GraniteCave_B2F/scripts.pory"

# 138 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Text_MagmaIntro:
# 139 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Tch. Just our luck.\n"
# 140 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "We've been stuck in this hole all day,\l"
# 141 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "digging for whatever the boss wants...\p"
# 142 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "And then YOU stroll in here with that\n"
# 143 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "ridiculous outfit like you own the place.\p"
# 144 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "You got POKéMON on you?\p"
# 145 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "How about you hand over your POKéMON\n"
# 146 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "and get out of our way so we can keep\l"
# 147 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "working this cave in peace?\p"
# 148 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Not leaving?\n"
# 149 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Seriously?\p"
# 150 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Fine. We're exhausted, we're pissed,\n"
# 151 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "and you just pushed the wrong buttons.\p"
# 152 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "You're gonna regret messing with\n"
# 153 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Team Magma today, kid!$"
# 154 "data/maps/GraniteCave_B2F/scripts.pory"

# 155 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Text_MagmaLose:
# 156 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "You've gotta be kidding...\n"
# 157 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "We lose! And to a kid dressed like that?\p"
# 158 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Ugh... Whatever.\n"
# 159 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "We're getting out of this stupid cave.\p"
# 160 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "But don't think this is over.\n"
# 161 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Team Magma doesn't forget.$"
