GraniteCave_B2F_MapScripts::
	.byte 0

.equ LOCALID_MAGMA_M, 11
.equ LOCALID_MAGMA_F, 10

GraniteCave_B2F_EventScript_MagmaTrigger::
    lockall
    goto_if_set FLAG_NEW_MAGMA_GRUNTS, GraniteCave_B2F_EventScript_End 

    playbgm MUS_ENCOUNTER_MAGMA, FALSE

    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_MagmaM_Approach
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_MagmaF_Approach
    waitmovement 0

    applymovement LOCALID_MAGMA_M, Common_Movement_FacePlayer
    applymovement LOCALID_MAGMA_F, Common_Movement_FacePlayer
    waitmovement 0

    msgbox GraniteCave_Text_MagmaIntro, MSGBOX_DEFAULT
    closemessage

    trainerbattle_no_intro TRAINER_GRUNT_GRANITE_CAVE, GraniteCave_Text_MagmaLose

    applymovement LOCALID_MAGMA_M, GraniteCave_Movement_Magma_RunAway_M
    applymovement LOCALID_MAGMA_F, GraniteCave_Movement_Magma_RunAway_F
    waitmovement 0

    removeobject LOCALID_MAGMA_M
    removeobject LOCALID_MAGMA_F

    setflag FLAG_NEW_MAGMA_GRUNTS

GraniteCave_B2F_EventScript_End:
    releaseall
    end

GraniteCave_Movement_MagmaM_Approach:
    walk_right
    step_end

GraniteCave_Movement_MagmaF_Approach:
    walk_left
    walk_left
    step_end

GraniteCave_Movement_Magma_RunAway_M:
    walk_fast_left
    walk_fast_left
    walk_fast_left
    walk_fast_left
    walk_fast_left
    walk_fast_up
    walk_fast_up
    walk_fast_left
    walk_fast_left
    step_end

GraniteCave_Movement_Magma_RunAway_F:
    walk_fast_left
    walk_fast_left
    walk_fast_left
    walk_fast_down
    walk_fast_left
    walk_fast_left
    walk_fast_up
    walk_fast_up
    step_end

GraniteCave_Text_MagmaIntro:
    .string "Tch. Just our luck.\n"
    .string "We've been stuck in this hole all day,\l"
    .string "digging for whatever the boss wants...\p"
    .string "And then YOU stroll in here with that\n"
    .string "ridiculous outfit like you own the place.\p"
    .string "You got Pokemon on you?\p"
    .string "Hah! Judging by those clothes, you're\n"
    .string "definitely not rolling in money.\p"
    .string "How about you hand over your Pokemon\n"
    .string "and get out of our way so we can keep\l"
    .string "working this cave in peace?\p"
    .string "Not leaving?\n"
    .string "Seriously?\p"
    .string "Fine. We're exhausted, we're pissed,\n"
    .string "and you just pushed the wrong buttons.\p"
    .string "You're gonna regret messing with\n"
    .string "Team Magma today, kid!$"

GraniteCave_Text_MagmaLose:
    .string "You've gotta be kidding...\n"
    .string "We lose! And you dressed like that?\p"
    .string "Ugh... Whatever.\n"
    .string "We're getting out of this stupid cave.\p"
    .string "But don't think this is over.\n"
    .string "Team Magma doesn't forget.$"

