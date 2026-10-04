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
	@ Receiving the reply clears LETTER, so check REPLY before offering a letter.
# 12 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_set FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_REPLY, PHOENIXHOUSE1_EventScript_OldMan_QuestComplete
# 13 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER, PHOENIXHOUSE1_EventScript_OldMan_QuestGiveLetter
# 14 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto PHOENIXHOUSE1_EventScript_OldMan_QuestWaitingForReply
# 15 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 16 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestStart::
# 17 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestStart, MSGBOX_DEFAULT
# 18 "data/maps/PHOENIXHOUSE1/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_STARTED
# 19 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 20 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 21 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 22 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestGiveLetter::
# 23 "data/maps/PHOENIXHOUSE1/scripts.pory"
	playse SE_PIN
# 24 "data/maps/PHOENIXHOUSE1/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 25 "data/maps/PHOENIXHOUSE1/scripts.pory"
	waitmovement 0
# 26 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestGiveLetter, MSGBOX_DEFAULT
# 27 "data/maps/PHOENIXHOUSE1/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER
# 28 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 29 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 30 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 31 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestWaitingForReply::
# 32 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestWaitingForReply, MSGBOX_DEFAULT
# 33 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 34 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 35 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 36 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestComplete::
# 37 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestComplete, MSGBOX_DEFAULT
# 38 "data/maps/PHOENIXHOUSE1/scripts.pory"
	checkitemspace ITEM_CATCHING_CHARM
# 39 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 40 "data/maps/PHOENIXHOUSE1/scripts.pory"
	giveitem ITEM_CATCHING_CHARM
# 41 "data/maps/PHOENIXHOUSE1/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 42 "data/maps/PHOENIXHOUSE1/scripts.pory"
	setflag FLAG_HIDE_PHOENIXHOUSE1_OLD_MAN
# 43 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestReward, MSGBOX_DEFAULT
# 44 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 45 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 46 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 47 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_EventScript_OldMan_QuestFinished::
# 48 "data/maps/PHOENIXHOUSE1/scripts.pory"
	msgbox PHOENIXHOUSE1_Text_OldMan_QuestFinished, MSGBOX_NPC
# 49 "data/maps/PHOENIXHOUSE1/scripts.pory"
	release
# 50 "data/maps/PHOENIXHOUSE1/scripts.pory"
	end
# 51 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 52 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestStart:
# 53 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I was just looking at the sky.\p"
# 54 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "It made me think of my granddaughter.\n"
# 55 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "She loved wandering about…\p"
# 56 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "A little shopping, a long walk, and a\n"
# 57 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "high place where the clouds felt close.\p"
# 58 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "After her parents divorced, I never\n"
# 59 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "saw her again. Some days, I miss her\l"
# 60 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "so much the house feels awfully quiet.$"
# 61 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 62 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestGiveLetter:
# 63 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Oh… did you really find her?\p"
# 64 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I kept this close for so long. If you\n"
# 65 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "see her, would you give it to her?\p"
# 66 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "There is no grand message inside…\n"
# 67 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Only a few words from an old man who\l"
# 68 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "still looks up at the sky.$"
# 69 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 70 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestWaitingForReply:
# 71 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Perhaps she is reading it now…\p"
# 72 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I wonder if she still remembers the\n"
# 73 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "little walks we used to take.$"
# 74 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 75 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestComplete:
# 76 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "She wrote back…\p"
# 77 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "After all this time, she remembers\n"
# 78 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "the sky we used to watch together.$"
# 79 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 80 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestReward:
# 81 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "You have given an old heart a little\n"
# 82 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "sunshine. Thank you, my friend.\p"
# 83 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "Please take this CATCHING CHARM. It\n"
# 84 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "has brought me good fortune.$"
# 85 "data/maps/PHOENIXHOUSE1/scripts.pory"

# 86 "data/maps/PHOENIXHOUSE1/scripts.pory"
PHOENIXHOUSE1_Text_OldMan_QuestFinished:
# 87 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "I will never forget the little bit of\n"
# 88 "data/maps/PHOENIXHOUSE1/scripts.pory"
	.string "sunshine you brought to us. Thank you.$"
