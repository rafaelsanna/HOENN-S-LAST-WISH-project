# 1 "data/maps/PetalburgCity_House2/scripts.pory"

# 2 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_MapScripts::
# 3 "data/maps/PetalburgCity_House2/scripts.pory"
	.byte 0
# 4 "data/maps/PetalburgCity_House2/scripts.pory"

# 5 "data/maps/PetalburgCity_House2/scripts.pory"
@ HLW_ANIME_RADIO_KID_QUEST_V1
# 6 "data/maps/PetalburgCity_House2/scripts.pory"
@ HLW_ANIME_RADIO_KID_QUEST_V2
# 7 "data/maps/PetalburgCity_House2/scripts.pory"
@ The trigger uses FLAG_KID_LOVES_ANIME instead of trigger 0 because
# 8 "data/maps/PetalburgCity_House2/scripts.pory"
@ immediate coordinate scripts cannot run cutscenes or wait commands.
# 9 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_Woman::
# 10 "data/maps/PetalburgCity_House2/scripts.pory"
	lockall
# 11 "data/maps/PetalburgCity_House2/scripts.pory"
	faceplayer
# 12 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_set FLAG_KID_LOVES_ANIME, PetalburgCity_House2_EventScript_MotherAfterQuest
# 13 "data/maps/PetalburgCity_House2/scripts.pory"
	setvar VAR_0x8004, 1 @ STATION_ANIME
# 14 "data/maps/PetalburgCity_House2/scripts.pory"
	special Special_IsRadioStationPlaying
# 15 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_House2_EventScript_AnimeRadioSuccessFromTalk
# 16 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_MotherWorried, MSGBOX_DEFAULT
# 17 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 18 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 19 "data/maps/PetalburgCity_House2/scripts.pory"

# 20 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_AnimeRadioSuccessFromTalk::
# 21 "data/maps/PetalburgCity_House2/scripts.pory"
	setvar VAR_0x8005, 0 @ Started by talking to the mother
# 22 "data/maps/PetalburgCity_House2/scripts.pory"
	goto PetalburgCity_House2_EventScript_AnimeRadioScene
# 23 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 24 "data/maps/PetalburgCity_House2/scripts.pory"

# 25 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_SchoolKid_Trigger_Upper::
# 26 "data/maps/PetalburgCity_House2/scripts.pory"
	lockall
# 27 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_set FLAG_KID_LOVES_ANIME, PetalburgCity_House2_EventScript_TriggerNoAction
# 28 "data/maps/PetalburgCity_House2/scripts.pory"
	setvar VAR_0x8004, 1 @ STATION_ANIME
# 29 "data/maps/PetalburgCity_House2/scripts.pory"
	special Special_IsRadioStationPlaying
# 30 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_House2_EventScript_TriggerNoAction
# 31 "data/maps/PetalburgCity_House2/scripts.pory"
	setvar VAR_0x8005, 1 @ Upper trigger route
# 32 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 1, PetalburgCity_House2_Movement_MotherToUpperTrigger
# 33 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 34 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 1, Common_Movement_FacePlayer
# 35 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 36 "data/maps/PetalburgCity_House2/scripts.pory"
	goto PetalburgCity_House2_EventScript_AnimeRadioScene
# 37 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 38 "data/maps/PetalburgCity_House2/scripts.pory"

# 39 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_SchoolKid_Trigger_Lower::
# 40 "data/maps/PetalburgCity_House2/scripts.pory"
	lockall
# 41 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_set FLAG_KID_LOVES_ANIME, PetalburgCity_House2_EventScript_TriggerNoAction
# 42 "data/maps/PetalburgCity_House2/scripts.pory"
	setvar VAR_0x8004, 1 @ STATION_ANIME
# 43 "data/maps/PetalburgCity_House2/scripts.pory"
	special Special_IsRadioStationPlaying
# 44 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_House2_EventScript_TriggerNoAction
# 45 "data/maps/PetalburgCity_House2/scripts.pory"
	setvar VAR_0x8005, 2 @ Lower trigger route
# 46 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 1, PetalburgCity_House2_Movement_MotherToLowerTrigger
# 47 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 48 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 1, Common_Movement_FacePlayer
# 49 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 50 "data/maps/PetalburgCity_House2/scripts.pory"
	goto PetalburgCity_House2_EventScript_AnimeRadioScene
# 51 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 52 "data/maps/PetalburgCity_House2/scripts.pory"

# 53 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_TriggerNoAction::
# 54 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 55 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 56 "data/maps/PetalburgCity_House2/scripts.pory"

# 57 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_AnimeRadioScene::
# 58 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_MotherHearsAnime, MSGBOX_DEFAULT
# 59 "data/maps/PetalburgCity_House2/scripts.pory"
	closemessage
# 60 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 2, Common_Movement_ExclamationMark
# 61 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 62 "data/maps/PetalburgCity_House2/scripts.pory"
	delay 20
# 63 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 2, Common_Movement_FacePlayer
# 64 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 65 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_KidCalmsDown, MSGBOX_DEFAULT
# 66 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_MotherThanks, MSGBOX_DEFAULT
# 67 "data/maps/PetalburgCity_House2/scripts.pory"
	giveitem ITEM_LUCKY_EGG
# 68 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_House2_EventScript_QuestBagFull
# 69 "data/maps/PetalburgCity_House2/scripts.pory"
	setflag FLAG_KID_LOVES_ANIME
# 70 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_MotherGiftComplete, MSGBOX_DEFAULT
# 71 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 72 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 73 "data/maps/PetalburgCity_House2/scripts.pory"

# 74 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_QuestBagFull::
# 75 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 76 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_eq VAR_0x8005, 1, PetalburgCity_House2_EventScript_ReturnMotherFromUpper
# 77 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_eq VAR_0x8005, 2, PetalburgCity_House2_EventScript_ReturnMotherFromLower
# 78 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 79 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 80 "data/maps/PetalburgCity_House2/scripts.pory"

# 81 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_ReturnMotherFromUpper::
# 82 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 1, PetalburgCity_House2_Movement_MotherFromUpperTrigger
# 83 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 84 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 85 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 86 "data/maps/PetalburgCity_House2/scripts.pory"

# 87 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_ReturnMotherFromLower::
# 88 "data/maps/PetalburgCity_House2/scripts.pory"
	applymovement 1, PetalburgCity_House2_Movement_MotherFromLowerTrigger
# 89 "data/maps/PetalburgCity_House2/scripts.pory"
	waitmovement 0
# 90 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 91 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 92 "data/maps/PetalburgCity_House2/scripts.pory"

# 93 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_MotherAfterQuest::
# 94 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_MotherAfterQuest, MSGBOX_DEFAULT
# 95 "data/maps/PetalburgCity_House2/scripts.pory"
	releaseall
# 96 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 97 "data/maps/PetalburgCity_House2/scripts.pory"

# 98 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_SchoolKid::
# 99 "data/maps/PetalburgCity_House2/scripts.pory"
	lock
# 100 "data/maps/PetalburgCity_House2/scripts.pory"
	faceplayer
# 101 "data/maps/PetalburgCity_House2/scripts.pory"
	goto_if_set FLAG_KID_LOVES_ANIME, PetalburgCity_House2_EventScript_HappySchoolKid
# 102 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_SadSchoolKid, MSGBOX_DEFAULT
# 103 "data/maps/PetalburgCity_House2/scripts.pory"
	release
# 104 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 105 "data/maps/PetalburgCity_House2/scripts.pory"

# 106 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_EventScript_HappySchoolKid::
# 107 "data/maps/PetalburgCity_House2/scripts.pory"
	msgbox PetalburgCity_House2_Text_HappySchoolKid, MSGBOX_DEFAULT
# 108 "data/maps/PetalburgCity_House2/scripts.pory"
	release
# 109 "data/maps/PetalburgCity_House2/scripts.pory"
	end
# 110 "data/maps/PetalburgCity_House2/scripts.pory"

# 111 "data/maps/PetalburgCity_House2/scripts.pory"
@ The mother stops two tiles from the trigger so a follower behind the player
# 112 "data/maps/PetalburgCity_House2/scripts.pory"
@ cannot occupy her destination and block waitmovement.
# 113 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Movement_MotherToUpperTrigger:
# 114 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_up
# 115 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_up
# 116 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_right
# 117 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_right
# 118 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_right
# 119 "data/maps/PetalburgCity_House2/scripts.pory"
	step_end
# 120 "data/maps/PetalburgCity_House2/scripts.pory"

# 121 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Movement_MotherToLowerTrigger:
# 122 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_up
# 123 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_right
# 124 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_right
# 125 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_right
# 126 "data/maps/PetalburgCity_House2/scripts.pory"
	step_end
# 127 "data/maps/PetalburgCity_House2/scripts.pory"

# 128 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Movement_MotherFromUpperTrigger:
# 129 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_left
# 130 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_left
# 131 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_down
# 132 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_down
# 133 "data/maps/PetalburgCity_House2/scripts.pory"
	step_end
# 134 "data/maps/PetalburgCity_House2/scripts.pory"

# 135 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Movement_MotherFromLowerTrigger:
# 136 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_left
# 137 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_left
# 138 "data/maps/PetalburgCity_House2/scripts.pory"
	walk_down
# 139 "data/maps/PetalburgCity_House2/scripts.pory"
	step_end
# 140 "data/maps/PetalburgCity_House2/scripts.pory"

# 141 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_MotherWorried:
# 142 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "My son hasn't been himself since\n"
# 143 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "we lost his father...\p"
# 144 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "He loved watching anime with him,\n"
# 145 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "but even that won't cheer him up.$"
# 146 "data/maps/PetalburgCity_House2/scripts.pory"

# 147 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_SadSchoolKid:
# 148 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Dad and I always watched anime\n"
# 149 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "together...\p"
# 150 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Now it only reminds me that he's\n"
# 151 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "gone...$"
# 152 "data/maps/PetalburgCity_House2/scripts.pory"

# 153 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_MotherHearsAnime:
# 154 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Wait... Is that music from an\n"
# 155 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "anime?$"
# 156 "data/maps/PetalburgCity_House2/scripts.pory"

# 157 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_KidCalmsDown:
# 158 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "I know this song! Dad used to sing\n"
# 159 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "it with me!\p"
# 160 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "I still miss him... but remembering\n"
# 161 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "him like this makes me feel warm.$"
# 162 "data/maps/PetalburgCity_House2/scripts.pory"

# 163 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_MotherThanks:
# 164 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Look at him smile... I haven't seen\n"
# 165 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "that since his father passed away.\p"
# 166 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Thank you. Please accept this.$"
# 167 "data/maps/PetalburgCity_House2/scripts.pory"

# 168 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_MotherGiftComplete:
# 169 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "May that LUCKY EGG bring you the\n"
# 170 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "happiness you've brought us.$"
# 171 "data/maps/PetalburgCity_House2/scripts.pory"

# 172 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_MotherAfterQuest:
# 173 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "My son is smiling again.\p"
# 174 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Thank you for bringing music back\n"
# 175 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "into our home.$"
# 176 "data/maps/PetalburgCity_House2/scripts.pory"

# 177 "data/maps/PetalburgCity_House2/scripts.pory"
PetalburgCity_House2_Text_HappySchoolKid:
# 178 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "Anime songs remind me of all the\n"
# 179 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "happy times I had with Dad.\p"
# 180 "data/maps/PetalburgCity_House2/scripts.pory"
	.string "I'm going to keep smiling for him!$"
