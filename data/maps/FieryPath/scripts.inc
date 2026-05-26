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
    goto FieryPath_EventScript_MagmaCore
# 67 "data/maps/FieryPath/scripts.pory"

# 68 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerMid::
# 69 "data/maps/FieryPath/scripts.pory"
    lockall
# 70 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 71 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 72 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaF_1Right
# 73 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, FieryPath_Movement_MagmaM_1Left
# 74 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 75 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaCore
# 76 "data/maps/FieryPath/scripts.pory"

# 77 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaTriggerRight::
# 78 "data/maps/FieryPath/scripts.pory"
    lockall
# 79 "data/maps/FieryPath/scripts.pory"
    goto_if_set FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE, FieryPath_EventScript_MagmaEnd
# 80 "data/maps/FieryPath/scripts.pory"
    playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 81 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, FieryPath_Movement_MagmaF_2Right
# 82 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 83 "data/maps/FieryPath/scripts.pory"
    goto FieryPath_EventScript_MagmaCore
# 84 "data/maps/FieryPath/scripts.pory"

# 85 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaCore:
# 86 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_F, Common_Movement_FacePlayer
# 87 "data/maps/FieryPath/scripts.pory"
    applymovement LOCALID_MAGMA_GRUNT_M, Common_Movement_FacePlayer
# 88 "data/maps/FieryPath/scripts.pory"
    waitmovement 0
# 89 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaIntro_F, MSGBOX_DEFAULT
# 90 "data/maps/FieryPath/scripts.pory"
    closemessage
# 91 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaIntro_M, MSGBOX_DEFAULT
# 92 "data/maps/FieryPath/scripts.pory"
    closemessage
# 93 "data/maps/FieryPath/scripts.pory"
    msgbox FieryPath_Text_MagmaChallenge, MSGBOX_DEFAULT
# 94 "data/maps/FieryPath/scripts.pory"
    closemessage
# 95 "data/maps/FieryPath/scripts.pory"
    trainerbattle_no_intro TRAINER_GRUNT_FIERY_PATH, FieryPath_Text_MagmaAfterLoss
# 96 "data/maps/FieryPath/scripts.pory"
    fadescreen FADE_TO_BLACK
# 97 "data/maps/FieryPath/scripts.pory"
    delay 30
# 98 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_F
# 99 "data/maps/FieryPath/scripts.pory"
    removeobject LOCALID_MAGMA_GRUNT_M
# 100 "data/maps/FieryPath/scripts.pory"
    setflag FLAG_FIERY_PATH_MAGMA_GRUNTS_DONE
# 101 "data/maps/FieryPath/scripts.pory"
    fadedefaultbgm
# 102 "data/maps/FieryPath/scripts.pory"
    fadescreen FADE_FROM_BLACK
# 103 "data/maps/FieryPath/scripts.pory"

# 104 "data/maps/FieryPath/scripts.pory"
FieryPath_EventScript_MagmaEnd:
# 105 "data/maps/FieryPath/scripts.pory"
    releaseall
# 106 "data/maps/FieryPath/scripts.pory"
    end
# 107 "data/maps/FieryPath/scripts.pory"

# 108 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaF_1Right:
# 109 "data/maps/FieryPath/scripts.pory"
    walk_right
# 110 "data/maps/FieryPath/scripts.pory"
    step_end
# 111 "data/maps/FieryPath/scripts.pory"

# 112 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaF_2Right:
# 113 "data/maps/FieryPath/scripts.pory"
    walk_right
# 114 "data/maps/FieryPath/scripts.pory"
    walk_right
# 115 "data/maps/FieryPath/scripts.pory"
    step_end
# 116 "data/maps/FieryPath/scripts.pory"

# 117 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaM_1Left:
# 118 "data/maps/FieryPath/scripts.pory"
    walk_left
# 119 "data/maps/FieryPath/scripts.pory"
    step_end
# 120 "data/maps/FieryPath/scripts.pory"

# 121 "data/maps/FieryPath/scripts.pory"
FieryPath_Movement_MagmaM_2Left:
# 122 "data/maps/FieryPath/scripts.pory"
    walk_left
# 123 "data/maps/FieryPath/scripts.pory"
    walk_left
# 124 "data/maps/FieryPath/scripts.pory"
    step_end
# 125 "data/maps/FieryPath/scripts.pory"

# 126 "data/maps/FieryPath/scripts.pory"
///// TEXT STRINGS /////
# 127 "data/maps/FieryPath/scripts.pory"

# 128 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_FisherGotBurned:
# 129 "data/maps/FieryPath/scripts.pory"
	.string "My fishing buddies warned me:\n"
# 130 "data/maps/FieryPath/scripts.pory"
	.string "Don't go fishing in the lava...\n" 
# 131 "data/maps/FieryPath/scripts.pory"
	.string "But I heard SHARPEDO swim in these\n"
# 132 "data/maps/FieryPath/scripts.pory"
	.string "magma rivers! LAVA SHARKS!\p"
# 133 "data/maps/FieryPath/scripts.pory"
	.string "I just wanted to catch one...\n"
# 134 "data/maps/FieryPath/scripts.pory"
	.string "Just ONE! IMAGINE IT!\p"
# 135 "data/maps/FieryPath/scripts.pory"
	.string "But my rod melted in seconds.\n"
# 136 "data/maps/FieryPath/scripts.pory"
	.string "Poof. Gone. Just like that.\p"
# 137 "data/maps/FieryPath/scripts.pory"
	.string "Now I'm burned, my rod's destroyed,\n"
# 138 "data/maps/FieryPath/scripts.pory"
	.string "and I've got no story to tell...\p"
# 139 "data/maps/FieryPath/scripts.pory"
	.string "Guess I'll just sit here and\n"
# 140 "data/maps/FieryPath/scripts.pory"
	.string "watch the lava flow...$"
# 141 "data/maps/FieryPath/scripts.pory"

# 142 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaIntro_F:
# 143 "data/maps/FieryPath/scripts.pory"
    .string "Ugh... ALL day in this heat,\n"
# 144 "data/maps/FieryPath/scripts.pory"
    .string "and we found absolutely nothing.$"
# 145 "data/maps/FieryPath/scripts.pory"

# 146 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaIntro_M:
# 147 "data/maps/FieryPath/scripts.pory"
    .string "Hold on... that outfit.\n"
# 148 "data/maps/FieryPath/scripts.pory"
    .string "You're that kid who wants to\l"
# 149 "data/maps/FieryPath/scripts.pory"
    .string "play hero, aren't you?$"
# 150 "data/maps/FieryPath/scripts.pory"

# 151 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaChallenge:
# 152 "data/maps/FieryPath/scripts.pory"
    .string "You've got some nerve, kid.\p"
# 153 "data/maps/FieryPath/scripts.pory"
    .string "Fine - both of us, right now!\n"
# 154 "data/maps/FieryPath/scripts.pory"
    .string "Let's see how tough you really are!$"
# 155 "data/maps/FieryPath/scripts.pory"

# 156 "data/maps/FieryPath/scripts.pory"
FieryPath_Text_MagmaAfterLoss:
# 157 "data/maps/FieryPath/scripts.pory"
    .string "...Damn. You're actually strong.\p"
# 158 "data/maps/FieryPath/scripts.pory"
    .string "Whatever. We found nothing useful\n"
# 159 "data/maps/FieryPath/scripts.pory"
    .string "in this cave anyway.\p"
# 160 "data/maps/FieryPath/scripts.pory"
    .string "Next time we WON'T hold back.\n"
# 161 "data/maps/FieryPath/scripts.pory"
    .string "So frustrating...$"
