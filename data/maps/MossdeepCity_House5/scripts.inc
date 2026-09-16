# 1 "data/maps/MossdeepCity_House5/scripts.pory"

# 2 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_MapScripts::
# 3 "data/maps/MossdeepCity_House5/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MossdeepCity_House5_SetMrButtonsVisibility
# 4 "data/maps/MossdeepCity_House5/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, MossdeepCity_House5_OnWarpIntoMap
# 5 "data/maps/MossdeepCity_House5/scripts.pory"
	@ ON_RESUME runs before NPC sprites are rebuilt; spawning there leaves a duplicate sprite.
# 6 "data/maps/MossdeepCity_House5/scripts.pory"
	map_script MAP_SCRIPT_ON_RETURN_TO_FIELD, MossdeepCity_House5_UpdateMrButtonsVisibility
# 7 "data/maps/MossdeepCity_House5/scripts.pory"
	.byte 0
# 8 "data/maps/MossdeepCity_House5/scripts.pory"

# 9 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_SetMrButtonsVisibility:
# 10 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 11 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_VisibilityEnd
# 12 "data/maps/MossdeepCity_House5/scripts.pory"
	gettimeofday
# 13 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MossdeepCity_House5_VisibilityEnd
# 14 "data/maps/MossdeepCity_House5/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 15 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_VisibilityEnd:
# 16 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 17 "data/maps/MossdeepCity_House5/scripts.pory"

# 18 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_OnWarpIntoMap:
# 19 "data/maps/MossdeepCity_House5/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, MossdeepCity_House5_UpdateMrButtonsVisibility
# 20 "data/maps/MossdeepCity_House5/scripts.pory"
	.2byte 0
# 21 "data/maps/MossdeepCity_House5/scripts.pory"

# 22 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_UpdateMrButtonsVisibility:
# 23 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 24 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_HideMrButtons
# 25 "data/maps/MossdeepCity_House5/scripts.pory"
	gettimeofday
# 26 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MossdeepCity_House5_HideMrButtons
# 27 "data/maps/MossdeepCity_House5/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 28 "data/maps/MossdeepCity_House5/scripts.pory"
	addobject LOCALID_MOSSDEEP_HOUSE5_MR_BUTTONS
# 29 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 30 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_HideMrButtons:
# 31 "data/maps/MossdeepCity_House5/scripts.pory"
	removeobject LOCALID_MOSSDEEP_HOUSE5_MR_BUTTONS
# 32 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 33 "data/maps/MossdeepCity_House5/scripts.pory"

# 34 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_StartQuest::
# 35 "data/maps/MossdeepCity_House5/scripts.pory"
	lockall
# 36 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 37 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_LittleGirl_Complete
# 38 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MossdeepCity_House5_EventScript_LittleGirl_ReceiveDoll
# 39 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_LittleGirl_BeginQuest
# 40 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_LittleGirl_StillSearching
# 41 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
# 42 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_LittleGirl_HeardConfession
# 43 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_PleaseHelp, MSGBOX_DEFAULT
# 44 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 45 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 46 "data/maps/MossdeepCity_House5/scripts.pory"

# 47 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_HeardConfession:
# 48 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, MR_BUTTONS_ESTHER_REASSURED, MossdeepCity_House5_EventScript_LittleGirl_AskMom
# 49 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 50 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 51 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_HeardConfession, MSGBOX_DEFAULT
# 52 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, MR_BUTTONS_ESTHER_REASSURED
# 53 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_AskMom:
# 54 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_AskMom, MSGBOX_DEFAULT
# 55 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 56 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 57 "data/maps/MossdeepCity_House5/scripts.pory"

# 58 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_StillSearching::
# 59 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_StillSearching, MSGBOX_DEFAULT
# 60 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 61 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 62 "data/maps/MossdeepCity_House5/scripts.pory"

# 63 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_BeginQuest::
# 64 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_BeginQuest, MSGBOX_DEFAULT
# 65 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED
# 66 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 0
# 67 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, 0
# 68 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 69 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 70 "data/maps/MossdeepCity_House5/scripts.pory"

# 71 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_ReceiveDoll::
# 72 "data/maps/MossdeepCity_House5/scripts.pory"
	checkfollowernpc
# 73 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MossdeepCity_House5_EventScript_LittleGirl_FollowerMissing
# 74 "data/maps/MossdeepCity_House5/scripts.pory"
	checkitemspace ITEM_PEAT_BLOCK
# 75 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MossdeepCity_House5_EventScript_BagFull
# 76 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 77 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 78 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_ReceiveDoll, MSGBOX_DEFAULT
# 79 "data/maps/MossdeepCity_House5/scripts.pory"
	closemessage
# 80 "data/maps/MossdeepCity_House5/scripts.pory"
	getobjectcurrentxy LOCALID_MOSSDEEP_HOUSE5_ESTHER, CURRENT_POSITION, VAR_0x8005, VAR_0x8006
# 81 "data/maps/MossdeepCity_House5/scripts.pory"
	addvar VAR_0x8006, 1
# 82 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_0x8004, OBJ_EVENT_ID_NPC_FOLLOWER
# 83 "data/maps/MossdeepCity_House5/scripts.pory"
	call MrButtons_EventScript_WalkToTarget
# 84 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement LOCALID_MOSSDEEP_HOUSE5_ESTHER, MossdeepCity_House5_Movement_Embrace
# 85 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 86 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement OBJ_EVENT_ID_NPC_FOLLOWER, MossdeepCity_House5_Movement_BearHug
# 87 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 88 "data/maps/MossdeepCity_House5/scripts.pory"
	delay 48
# 89 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_Hug, MSGBOX_DEFAULT
# 90 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_Reward, MSGBOX_DEFAULT
# 91 "data/maps/MossdeepCity_House5/scripts.pory"
	giveitem ITEM_PEAT_BLOCK
# 92 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MossdeepCity_House5_EventScript_BagFull
# 93 "data/maps/MossdeepCity_House5/scripts.pory"
	closemessage
# 94 "data/maps/MossdeepCity_House5/scripts.pory"
	playse SE_M_TELEPORT
# 95 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement OBJ_EVENT_ID_NPC_FOLLOWER, MrButtons_Movement_Disappear
# 96 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 97 "data/maps/MossdeepCity_House5/scripts.pory"
	destroyfollowernpc
# 98 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED
# 99 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 100 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_Goodnight, MSGBOX_DEFAULT
# 101 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 102 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 103 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 104 "data/maps/MossdeepCity_House5/scripts.pory"

# 105 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_FollowerMissing::
# 106 "data/maps/MossdeepCity_House5/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND
# 107 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 0
# 108 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_FollowerMissing, MSGBOX_DEFAULT
# 109 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 110 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 111 "data/maps/MossdeepCity_House5/scripts.pory"

# 112 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_Complete::
# 113 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_Complete, MSGBOX_DEFAULT
# 114 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 115 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 116 "data/maps/MossdeepCity_House5/scripts.pory"

# 117 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Movement_Embrace:
# 118 "data/maps/MossdeepCity_House5/scripts.pory"
	face_down
# 119 "data/maps/MossdeepCity_House5/scripts.pory"
	emote_heart
# 120 "data/maps/MossdeepCity_House5/scripts.pory"
	step_end
# 121 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Movement_BearHug:
# 122 "data/maps/MossdeepCity_House5/scripts.pory"
	face_up
# 123 "data/maps/MossdeepCity_House5/scripts.pory"
	walk_slow_up
# 124 "data/maps/MossdeepCity_House5/scripts.pory"
	emote_heart
# 125 "data/maps/MossdeepCity_House5/scripts.pory"
	step_end
# 126 "data/maps/MossdeepCity_House5/scripts.pory"

# 127 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_MrButtons::
# 128 "data/maps/MossdeepCity_House5/scripts.pory"
	lock
# 129 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 130 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_MrButtons, MSGBOX_DEFAULT
# 131 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 132 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 133 "data/maps/MossdeepCity_House5/scripts.pory"

# 134 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad::
# 135 "data/maps/MossdeepCity_House5/scripts.pory"
	lock
# 136 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 137 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Dad_Complete
# 138 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_BeforeQuest
# 139 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Dad_AfterConfession
# 140 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Dad_AfterConfession
# 141 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Dad_AfterConfession
# 142 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_AfterQuestStart
# 143 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad_BeforeQuest:
# 144 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_BeforeQuest, MSGBOX_NPC
# 145 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 146 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 147 "data/maps/MossdeepCity_House5/scripts.pory"

# 148 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad_AfterQuestStart::
# 149 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_AfterQuestStart, MSGBOX_NPC
# 150 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 151 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 152 "data/maps/MossdeepCity_House5/scripts.pory"

# 153 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad_Complete::
# 154 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_Complete, MSGBOX_NPC
# 155 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 156 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 157 "data/maps/MossdeepCity_House5/scripts.pory"

# 158 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad_AfterConfession:
# 159 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_AfterConfession, MSGBOX_DEFAULT
# 160 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 161 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 162 "data/maps/MossdeepCity_House5/scripts.pory"

# 163 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom::
# 164 "data/maps/MossdeepCity_House5/scripts.pory"
	lock
# 165 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 166 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Mom_Complete
# 167 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_BeforeQuest
# 168 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_Mom_HoneyGiven
# 169 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_Mom_GiveHoney
# 170 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_Mom_GiveHoney
# 171 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_AfterQuestStart
# 172 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_BeforeQuest:
# 173 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_BeforeQuest, MSGBOX_NPC
# 174 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 175 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 176 "data/maps/MossdeepCity_House5/scripts.pory"

# 177 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_AfterQuestStart::
# 178 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_AfterQuestStart, MSGBOX_NPC
# 179 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 180 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 181 "data/maps/MossdeepCity_House5/scripts.pory"

# 182 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_Complete::
# 183 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_Complete, MSGBOX_NPC
# 184 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 185 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 186 "data/maps/MossdeepCity_House5/scripts.pory"

# 187 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_GiveHoney:
# 188 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_ne VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, MR_BUTTONS_ESTHER_REASSURED, MossdeepCity_House5_EventScript_Mom_AskEsther
# 189 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_GiveHoney, MSGBOX_DEFAULT
# 190 "data/maps/MossdeepCity_House5/scripts.pory"
	giveitem ITEM_HONEY
# 191 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MossdeepCity_House5_EventScript_BagFull
# 192 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN
# 193 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 0
# 194 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, 0
# 195 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_HoneyGiven:
# 196 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_HoneyGiven, MSGBOX_DEFAULT
# 197 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 198 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 199 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_AskEsther:
# 200 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_AskEsther, MSGBOX_DEFAULT
# 201 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 202 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 203 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_BagFull:
# 204 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox gText_BagIsFull, MSGBOX_DEFAULT
# 205 "data/maps/MossdeepCity_House5/scripts.pory"
	releaseall
# 206 "data/maps/MossdeepCity_House5/scripts.pory"
	end

MossdeepCity_House5_Text_LittleGirl_BeginQuest::
# 209 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "I can't sleep anymore…\p"
	.string "My little bear… He's gone.\p"
	.string "I used to hold him every night until I\n"
	.string "fell asleep.\p"
	.string "Then he disappeared. I looked all over\n"
	.string "the city…\p"
	.string "But I couldn't find him anywhere.$"

MossdeepCity_House5_Text_LittleGirl_PleaseHelp::
# 212 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Would you help me find Mr. Buttons?\p"
	.string "He was old, and covered in little\n"
	.string "patches…\p"
	.string "But I loved him so much.$"

MossdeepCity_House5_Text_LittleGirl_HeardConfession::
# 215 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "You found Ren? He really threw Mr.\n"
	.string "Buttons away?!\p"
	.string "I can't believe it…\p"
	.string "Cursed? That's silly! I may be little,\n"
	.string "but I know some things.\p"
	.string "Mr. Buttons was kind. Even if he was old\n"
	.string "and all patched up.\p"
	.string "Ren always looks after me… But how\n"
	.string "could he do that?$"

MossdeepCity_House5_Text_LittleGirl_AskMom::
# 218 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Ask Mama! She gave him to me. He used to\n"
	.string "be hers, and Grandma's before that.\p"
	.string "She'll tell you. Mr. Buttons wouldn't\n"
	.string "hurt anyone.$"

MossdeepCity_House5_Text_LittleGirl_StillSearching::
# 221 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Mr. Buttons never liked being alone in\n"
	.string "the dark…\p"
	.string "If you find him tonight, please tell him\n"
	.string "Esther is waiting.$"

MossdeepCity_House5_Text_LittleGirl_ReceiveDoll::
# 224 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Mr. Buttons! You came home!\p"
	.string "Oh… I can see right through you. So you\n"
	.string "really are a ghost?\p"
	.string "Well, you're MY ghost. And you're a good\n"
	.string "one.\p"
	.string "Come here. I've missed you so much!$"

MossdeepCity_House5_Text_LittleGirl_Hug::
# 227 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Esther gathers Mr. Buttons into her\n"
	.string "arms. His little paws reach around her.\p"
	.string "For a moment, even the quiet room seems\n"
	.string "warm.\p"
	.string "See? He remembers our hugs…$"

MossdeepCity_House5_Text_LittleGirl_Reward::
# 230 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Thank you for bringing my friend home.\p"
	.string "Here… You can have this PEAT BLOCK.\n"
	.string "Mama says it helps URSARING evolve at\l"
	.string "night.\p"
	.string "Maybe it can help another little bear\n"
	.string "find his way, too.$"

MossdeepCity_House5_Text_LittleGirl_Goodnight::
# 233 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Oh… He's gone again.\p"
	.string "But that's all right. I think he'll come\n"
	.string "back when it's dark.\p"
	.string "Goodnight, Mr. Buttons. I'll leave a\n"
	.string "little room on my pillow.$"

MossdeepCity_House5_Text_LittleGirl_FollowerMissing::
# 236 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Mr. Buttons isn't with you?\p"
	.string "Maybe he slipped back to the mountain.\n"
	.string "Could you look for him again tonight?$"

MossdeepCity_House5_Text_LittleGirl_Complete::
# 239 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Mr. Buttons comes home every night now.\p"
	.string "Sometimes I can't see him, but I know\n"
	.string "he's there.\p"
	.string "I've been sleeping ever so well.$"

MossdeepCity_House5_Text_MrButtons::
# 242 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Mr. Buttons lifts a little paw. His eyes\n"
	.string "are gentle in the dim light.\p"
	.string "He settles close to Esther. At last,\n"
	.string "he's home.$"

MossdeepCity_House5_Text_Dad_BeforeQuest::
# 245 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Esther hasn't been sleeping well…\p"
	.string "It's hard to see your little girl so sad,\n"
	.string "and not know how to help.$"

MossdeepCity_House5_Text_Dad_AfterQuestStart::
# 248 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Our daughter's been so unhappy without\n"
	.string "her favorite stuffed bear.\p"
	.string "I did notice something odd about it,\n"
	.string "though. Especially at night…\p"
	.string "Sometimes it seemed to look right at us.\n"
	.string "Or move a little.\p"
	.string "Perhaps I was just tired. You start\n"
	.string "seeing things, don't you?\p"
	.string "But Ren, our eldest, was frightened of\n"
	.string "it. He never would admit that.\p"
	.string "If you'd like to help, perhaps you could\n"
	.string "speak to him.\p"
	.string "He lives with his girlfriend in LILYCOVE.$"

MossdeepCity_House5_Text_Dad_AfterConfession::
# 251 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "So Ren finally told you…\p"
	.string "He wanted to protect us. I wish he'd\n"
	.string "trusted us enough to talk about it.\p"
	.string "Do be careful if you go looking for the\n"
	.string "bear.$"

MossdeepCity_House5_Text_Dad_Complete::
# 254 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "A ghost in our house… I'd never have\n"
	.string "believed it.\p"
	.string "But Esther is smiling again. I suppose\n"
	.string "kindness comes in all sorts of shapes.$"

MossdeepCity_House5_Text_Mom_BeforeQuest::
# 257 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Our dear Esther has been so quiet\n"
	.string "lately…\p"
	.string "I miss hearing her laugh around the\n"
	.string "house.$"

MossdeepCity_House5_Text_Mom_AfterQuestStart::
# 260 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Our dear Esther has been so sad…\p"
	.string "We suspect Ren, our eldest son, knows\n"
	.string "something about her bear.\p"
	.string "But I don't think he meant any harm.\n"
	.string "He's always been very protective of\l"
	.string "her.$"

MossdeepCity_House5_Text_Mom_AskEsther::
# 263 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "You spoke to Ren?\p"
	.string "Would you tell Esther what happened\n"
	.string "first? She's been waiting so patiently.$"

MossdeepCity_House5_Text_Mom_GiveHoney::
# 266 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Yes, Mr. Buttons was mine, and my\n"
	.string "mother's before me.\p"
	.string "He never hurt a soul. I was so happy to\n"
	.string "pass him on to Esther.\p"
	.string "Still… We all felt something strange\n"
	.string "around him sometimes.\p"
	.string "I can understand why Ren was afraid. I\n"
	.string "wish he'd told me.\p"
	.string "Here, take a little HONEY. People say\n"
	.string "little bears love it, don't they?\p"
	.string "Perhaps it'll bring you luck finding him.$"

MossdeepCity_House5_Text_Mom_HoneyGiven::
# 269 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Take the HONEY to MT. PYRE after dark.\n"
	.string "If his little heart remembers anything,\l"
	.string "it might remember something sweet.\p"
	.string "Maybe spirits really do exist…\p"
	.string "If they do, I hope someone is keeping\n"
	.string "our bear company.$"

MossdeepCity_House5_Text_Mom_Complete::
# 272 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Mother used to say love stays in the\n"
	.string "things we mend.\p"
	.string "Seeing Esther with Mr. Buttons… I think\n"
	.string "I understand her now.$"
