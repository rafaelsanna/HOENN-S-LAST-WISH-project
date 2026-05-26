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
GraniteCave_B2F_EventScript_MagmaTrigger::
# 9 "data/maps/GraniteCave_B2F/scripts.pory"
    lockall
# 10 "data/maps/GraniteCave_B2F/scripts.pory"
    goto_if_set FLAG_NEW_MAGMA_GRUNTS, GraniteCave_B2F_EventScript_End 
# 11 "data/maps/GraniteCave_B2F/scripts.pory"

# 12 "data/maps/GraniteCave_B2F/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 13 "data/maps/GraniteCave_B2F/scripts.pory"

# 14 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_MagmaM_Approach
# 15 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_MagmaF_Approach
# 16 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement 0
# 17 "data/maps/GraniteCave_B2F/scripts.pory"

# 18 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, Common_Movement_FacePlayer
# 19 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, Common_Movement_FacePlayer
# 20 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement 0
# 21 "data/maps/GraniteCave_B2F/scripts.pory"

# 22 "data/maps/GraniteCave_B2F/scripts.pory"
    msgbox GraniteCave_Text_MagmaIntro, MSGBOX_DEFAULT
# 23 "data/maps/GraniteCave_B2F/scripts.pory"
    closemessage
# 24 "data/maps/GraniteCave_B2F/scripts.pory"

# 25 "data/maps/GraniteCave_B2F/scripts.pory"
    trainerbattle_no_intro TRAINER_GRUNT_GRANITE_CAVE, GraniteCave_Text_MagmaLose
# 26 "data/maps/GraniteCave_B2F/scripts.pory"

# 27 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_Magma_RunAway_M
# 28 "data/maps/GraniteCave_B2F/scripts.pory"
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_Magma_RunAway_F
# 29 "data/maps/GraniteCave_B2F/scripts.pory"
    waitmovement 0
# 30 "data/maps/GraniteCave_B2F/scripts.pory"

# 31 "data/maps/GraniteCave_B2F/scripts.pory"
    removeobject LOCALID_MAGMA_M
# 32 "data/maps/GraniteCave_B2F/scripts.pory"
    removeobject LOCALID_MAGMA_F
# 33 "data/maps/GraniteCave_B2F/scripts.pory"

# 34 "data/maps/GraniteCave_B2F/scripts.pory"
    setflag FLAG_NEW_MAGMA_GRUNTS
# 35 "data/maps/GraniteCave_B2F/scripts.pory"

# 36 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_B2F_EventScript_End:
# 37 "data/maps/GraniteCave_B2F/scripts.pory"
    releaseall
# 38 "data/maps/GraniteCave_B2F/scripts.pory"
    end
# 39 "data/maps/GraniteCave_B2F/scripts.pory"

# 40 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_MagmaM_Approach:
# 41 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_right
# 42 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 43 "data/maps/GraniteCave_B2F/scripts.pory"

# 44 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_MagmaF_Approach:
# 45 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_left
# 46 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_left
# 47 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 48 "data/maps/GraniteCave_B2F/scripts.pory"

# 49 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_Magma_RunAway_M:
# 50 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 51 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 52 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 53 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 54 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 55 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_up
# 56 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_up
# 57 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 58 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 59 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 60 "data/maps/GraniteCave_B2F/scripts.pory"

# 61 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Movement_Magma_RunAway_F:
# 62 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 63 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 64 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 65 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_down
# 66 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 67 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_left
# 68 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_up
# 69 "data/maps/GraniteCave_B2F/scripts.pory"
    walk_fast_up
# 70 "data/maps/GraniteCave_B2F/scripts.pory"
    step_end
# 71 "data/maps/GraniteCave_B2F/scripts.pory"

# 72 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Text_MagmaIntro:
# 73 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Tch. Just our luck.\n"
# 74 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "We've been stuck in this hole all day,\l"
# 75 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "digging for whatever the boss wants...\p"
# 76 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "And then YOU stroll in here with that\n"
# 77 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "ridiculous outfit like you own the place.\p"
# 78 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "You got POKéMON on you?\p"
# 79 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "How about you hand over your POKéMON\n"
# 80 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "and get out of our way so we can keep\l"
# 81 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "working this cave in peace?\p"
# 82 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Not leaving?\n"
# 83 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Seriously?\p"
# 84 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Fine. We're exhausted, we're pissed,\n"
# 85 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "and you just pushed the wrong buttons.\p"
# 86 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "You're gonna regret messing with\n"
# 87 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Team Magma today, kid!$"
# 88 "data/maps/GraniteCave_B2F/scripts.pory"

# 89 "data/maps/GraniteCave_B2F/scripts.pory"
GraniteCave_Text_MagmaLose:
# 90 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "You've gotta be kidding...\n"
# 91 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "We lose! And to a kid dressed like that?\p"
# 92 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Ugh... Whatever.\n"
# 93 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "We're getting out of this stupid cave.\p"
# 94 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "But don't think this is over.\n"
# 95 "data/maps/GraniteCave_B2F/scripts.pory"
    .string "Team Magma doesn't forget.$"
