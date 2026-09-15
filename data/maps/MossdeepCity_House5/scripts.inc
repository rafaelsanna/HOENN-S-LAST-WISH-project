# 1 "data/maps/MossdeepCity_House5/scripts.pory"

# 2 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_MapScripts::
# 3 "data/maps/MossdeepCity_House5/scripts.pory"
	.byte 0
# 4 "data/maps/MossdeepCity_House5/scripts.pory"

# 5 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_StartQuest::
# 6 "data/maps/MossdeepCity_House5/scripts.pory"
	lock
# 7 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 8 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_LittleGirl_Complete
# 9 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MossdeepCity_House5_EventScript_LittleGirl_ReceiveDoll
# 10 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_LittleGirl_BeginQuest
# 11 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, MossdeepCity_House5_EventScript_LittleGirl_GiveHoney
# 12 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, MossdeepCity_House5_EventScript_LittleGirl_GiveHoney
# 13 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MossdeepCity_House5_EventScript_LittleGirl_StillSearching
# 14 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_StillSearching, MSGBOX_DEFAULT
# 15 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 16 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 17 "data/maps/MossdeepCity_House5/scripts.pory"

# 18 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_StillSearching::
# 19 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_StillSearching, MSGBOX_DEFAULT
# 20 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 21 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 22 "data/maps/MossdeepCity_House5/scripts.pory"

# 23 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_BeginQuest::
# 24 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 25 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 26 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_BeginQuest, MSGBOX_DEFAULT
# 27 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED
# 28 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 29 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 30 "data/maps/MossdeepCity_House5/scripts.pory"

# 31 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_GiveHoney::
# 32 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_GiveHoney, MSGBOX_DEFAULT
# 33 "data/maps/MossdeepCity_House5/scripts.pory"
	giveitem ITEM_HONEY
# 34 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 35 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 0
# 36 "data/maps/MossdeepCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, 0
# 37 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN
# 38 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_HoneyGiven, MSGBOX_DEFAULT
# 39 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 40 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 41 "data/maps/MossdeepCity_House5/scripts.pory"

# 42 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_ReceiveDoll::
# 43 "data/maps/MossdeepCity_House5/scripts.pory"
	checkfollowernpc
# 44 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MossdeepCity_House5_EventScript_LittleGirl_FollowerMissing
# 45 "data/maps/MossdeepCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 46 "data/maps/MossdeepCity_House5/scripts.pory"
	waitmovement 0
# 47 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_ReceiveDoll, MSGBOX_DEFAULT
# 48 "data/maps/MossdeepCity_House5/scripts.pory"
	checkitemspace ITEM_PEAT_BLOCK
# 49 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 50 "data/maps/MossdeepCity_House5/scripts.pory"
	giveitem ITEM_PEAT_BLOCK
# 51 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 52 "data/maps/MossdeepCity_House5/scripts.pory"
	destroyfollowernpc
# 53 "data/maps/MossdeepCity_House5/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED
# 54 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_Reward, MSGBOX_DEFAULT
# 55 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 56 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 57 "data/maps/MossdeepCity_House5/scripts.pory"

# 58 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_FollowerMissing::
# 59 "data/maps/MossdeepCity_House5/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND
# 60 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_FollowerMissing, MSGBOX_DEFAULT
# 61 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 62 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 63 "data/maps/MossdeepCity_House5/scripts.pory"

# 64 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_LittleGirl_Complete::
# 65 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_LittleGirl_Complete, MSGBOX_DEFAULT
# 66 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 67 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 68 "data/maps/MossdeepCity_House5/scripts.pory"

# 69 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad::
# 70 "data/maps/MossdeepCity_House5/scripts.pory"
	lock
# 71 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 72 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Dad_Complete
# 73 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Dad_AfterQuestStart
# 74 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_BeforeQuest, MSGBOX_NPC
# 75 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 76 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 77 "data/maps/MossdeepCity_House5/scripts.pory"

# 78 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad_AfterQuestStart::
# 79 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_AfterQuestStart, MSGBOX_NPC
# 80 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 81 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 82 "data/maps/MossdeepCity_House5/scripts.pory"

# 83 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Dad_Complete::
# 84 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Dad_Complete, MSGBOX_NPC
# 85 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 86 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 87 "data/maps/MossdeepCity_House5/scripts.pory"

# 88 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom::
# 89 "data/maps/MossdeepCity_House5/scripts.pory"
	lock
# 90 "data/maps/MossdeepCity_House5/scripts.pory"
	faceplayer
# 91 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, MossdeepCity_House5_EventScript_Mom_Complete
# 92 "data/maps/MossdeepCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MossdeepCity_House5_EventScript_Mom_AfterQuestStart
# 93 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_BeforeQuest, MSGBOX_NPC
# 94 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 95 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 96 "data/maps/MossdeepCity_House5/scripts.pory"

# 97 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_AfterQuestStart::
# 98 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_AfterQuestStart, MSGBOX_NPC
# 99 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 100 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 101 "data/maps/MossdeepCity_House5/scripts.pory"

# 102 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_EventScript_Mom_Complete::
# 103 "data/maps/MossdeepCity_House5/scripts.pory"
	msgbox MossdeepCity_House5_Text_Mom_Complete, MSGBOX_NPC
# 104 "data/maps/MossdeepCity_House5/scripts.pory"
	release
# 105 "data/maps/MossdeepCity_House5/scripts.pory"
	end
# 106 "data/maps/MossdeepCity_House5/scripts.pory"

# 107 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_BeginQuest:
# 108 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "My little doll is gone…\p"
# 109 "data/maps/MossdeepCity_House5/scripts.pory"
    .string "She was right beside me, and then...\n"
# 110 "data/maps/MossdeepCity_House5/scripts.pory"
    .string "just like that... she wasn't.\p"
# 111 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "My brother saw her last. He got scared\n"
# 112 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "and won't tell me what happened.\p"
# 113 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Would you help me find her?$"
# 114 "data/maps/MossdeepCity_House5/scripts.pory"

# 115 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_StillSearching:
# 116 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "I wonder where she is now…\n"
# 117 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "I hope she isn't lonely.$"
# 118 "data/maps/MossdeepCity_House5/scripts.pory"

# 119 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_GiveHoney:
# 120 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "You found my brother…\p"
# 121 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "He said the doll was left on MT. PYRE?\n"
# 122 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "That sounds like a very lonely place.\p"
# 123 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Maybe this will help you find her.\n"
# 124 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Teddiursa can't resist something sweet…$"
# 125 "data/maps/MossdeepCity_House5/scripts.pory"

# 126 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_HoneyGiven:
# 127 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Take the HONEY with you.\p"
# 128 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "If you hear a tiny rustle in the dark,\n"
# 129 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "please don't frighten her.$"
# 130 "data/maps/MossdeepCity_House5/scripts.pory"

# 131 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_ReceiveDoll:
# 132 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Oh! You came back… and she's with you!\p"
# 133 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "She looks a little different now.\n"
# 134 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "As if the mountain taught her a secret.\p"
# 135 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "But she's still my doll. I knew she'd\n"
# 136 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "find her way home.$"
# 137 "data/maps/MossdeepCity_House5/scripts.pory"

# 138 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_Reward:
# 139 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Thank you for bringing her back to me.\p"
# 140 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Please take this. It belonged to my\n"
# 141 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "brother's old collection, but I think it\n"
# 142 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "belongs with someone who keeps promises.$"
# 143 "data/maps/MossdeepCity_House5/scripts.pory"

# 144 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_FollowerMissing:
# 145 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "She's not here…\p"
# 146 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Maybe the mountain called her back.\n"
# 147 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Could you look for her once more?$"
# 148 "data/maps/MossdeepCity_House5/scripts.pory"

# 149 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_LittleGirl_Complete:
# 150 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "She sleeps beside me every night now.\n"
# 151 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Even when the room gets very quiet.$"
# 152 "data/maps/MossdeepCity_House5/scripts.pory"

# 153 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_Dad_BeforeQuest:
# 154 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "That doll has been her little shadow\n"
# 155 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "for as long as I can remember.\p"
# 156 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "She says it came from somewhere strange…\n"
# 157 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "but children have such wonderful stories.$"
# 158 "data/maps/MossdeepCity_House5/scripts.pory"

# 159 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_Dad_AfterQuestStart:
# 160 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Our son lives in Lilycove.\p"
# 161 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "He was the last one to see the doll.\n"
# 162 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Perhaps he knows more than he wants to say.$"
# 163 "data/maps/MossdeepCity_House5/scripts.pory"

# 164 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_Dad_Complete:
# 165 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "The house feels warmer somehow.\n"
# 166 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Thank you for bringing that little smile\n"
# 167 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "back to my daughter.$"
# 168 "data/maps/MossdeepCity_House5/scripts.pory"

# 169 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_Mom_BeforeQuest:
# 170 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "She calls that doll her little friend.\p"
# 171 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "I only wish her brother hadn't looked\n"
# 172 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "so frightened when I asked about it.$"
# 173 "data/maps/MossdeepCity_House5/scripts.pory"

# 174 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_Mom_AfterQuestStart:
# 175 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "I hope the path to MT. PYRE is kind to\n"
# 176 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "you. Some things don't like being found.$"
# 177 "data/maps/MossdeepCity_House5/scripts.pory"

# 178 "data/maps/MossdeepCity_House5/scripts.pory"
MossdeepCity_House5_Text_Mom_Complete:
# 179 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Somehow, even the doll seems happier.\n"
# 180 "data/maps/MossdeepCity_House5/scripts.pory"
	.string "Or perhaps that's just my heart.$"
