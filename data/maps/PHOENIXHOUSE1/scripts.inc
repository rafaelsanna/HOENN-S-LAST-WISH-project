# 1 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 2 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_MapScripts::
# 3 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.byte 0
# 4 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 5 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_Quest::
# 6 "data/maps/PHOENIXHOUSE1/scripts.pory"
	lock
# 7 "data/maps/PHOENIXHOUSE1/scripts.pory"
	faceplayer
# 8 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_set FLAG_HIDE_PHOENIXHOUSE1_OLD_MAN, PHOENIXHOUSE1_EventScript_OldMan_QuestFinished
# 9 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_STARTED, PHOENIXHOUSE1_EventScript_OldMan_QuestStart
# 10 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_FAMILY_MET, PHOENIXHOUSE1_EventScript_OldMan_QuestStart
# 11 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER, PHOENIXHOUSE1_EventScript_OldMan_QuestGiveLetter
# 12 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_REPLY, PHOENIXHOUSE1_EventScript_OldMan_QuestWaitingForReply
# 13 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto PHOENIXHOUSE1_EventScript_OldMan_QuestComplete
# 14 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 15 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestStart::
# 16 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestStart, MSGBOX_DEFAULT
# 17 "data/maps/PHOENIXHOUSE1/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_STARTED
# 18 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 19 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 20 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 21 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestGiveLetter::
# 22 "data/maps/PHOENIXHOUSE1/scripts.pory"
	playse SE_PIN
# 23 "data/maps/PHOENIXHOUSE1/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 24 "data/maps/PHOENIXHOUSE1/scripts.pory"
	waitmovement 0
# 25 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestGiveLetter, MSGBOX_DEFAULT
# 26 "data/maps/PHOENIXHOUSE1/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER
# 27 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 28 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 29 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 30 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestWaitingForReply::
# 31 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestWaitingForReply, MSGBOX_DEFAULT
# 32 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 33 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 34 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 35 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestComplete::
# 36 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestComplete, MSGBOX_DEFAULT
# 37 "data/maps/PHOENIXHOUSE1/scripts.pory"
	checkitemspace ITEM_CATCHING_CHARM
# 38 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 39 "data/maps/PHOENIXHOUSE1/scripts.pory"
	giveitem ITEM_CATCHING_CHARM
# 40 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 41 "data/maps/PHOENIXHOUSE1/scripts.pory"
	setflag FLAG_HIDE_PHOENIXHOUSE1_OLD_MAN
# 42 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestReward, MSGBOX_DEFAULT
# 43 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 44 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 45 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 46 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestFinished::
# 47 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestFinished, MSGBOX_NPC
# 48 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 49 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 50 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 51 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestStart:
# 52 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I was just looking at the sky.\p"
# 53 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "It made me think of my granddaughter.\n"
# 54 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "She loved wandering about…\p"
# 55 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "A little shopping, a long walk, and a\n"
# 56 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "high place where the clouds felt close.\p"
# 57 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "But after her parents divorced, I never\n"
# 58 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "saw her again. Some days, I miss her\n"
# 59 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "so much the house feels awfully quiet.$"
# 60 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 61 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestGiveLetter:
# 62 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Oh… did you really find her?\p"
# 63 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I kept this close for so long. If you\n"
# 64 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "see her, would you give it to her?\p"
# 65 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "There is no grand message inside…\n"
# 66 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Only a few words from an old man who\n"
# 67 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "still looks up at the sky.$"
# 68 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 69 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestWaitingForReply:
# 70 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Perhaps she is reading it now…\p"
# 71 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I wonder if she still remembers the\n"
# 72 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "little walks we used to take.$"
# 73 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 74 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestComplete:
# 75 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "She wrote back…\p"
# 76 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "After all this time, she still remembers\n"
# 77 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "the sky we used to watch together.$"
# 78 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 79 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestReward:
# 80 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "You have given an old heart a little\n"
# 81 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "sunshine. Thank you, my friend.\p"
# 82 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Please take this CATCHING CHARM. It has\n"
# 83 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "brought me good fortune.$"
# 84 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 85 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestFinished:
# 86 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I will never forget the little bit of\n"
# 87 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "sunshine you brought to us. Thank you.$"
