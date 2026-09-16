# 1 "data/maps/LilycoveCity_House5/scripts.pory"

# 2 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_MapScripts::
# 3 "data/maps/LilycoveCity_House5/scripts.pory"
	.byte 0
# 4 "data/maps/LilycoveCity_House5/scripts.pory"

# 5 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother::
# 6 "data/maps/LilycoveCity_House5/scripts.pory"
	lock
# 7 "data/maps/LilycoveCity_House5/scripts.pory"
	faceplayer
# 8 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_Brother_NoQuest
# 9 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_Brother_GiveTM
# 10 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_PostBattle
# 11 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_PostBattle
# 12 "data/maps/LilycoveCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 13 "data/maps/LilycoveCity_House5/scripts.pory"
	waitmovement 0
# 14 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_set FLAG_HARD_MODE_SLEEP_CLAUSE, LilycoveCity_House5_EventScript_Brother_Hard
# 15 "data/maps/LilycoveCity_House5/scripts.pory"
	trainerbattle_single TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
# 16 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 17 "data/maps/LilycoveCity_House5/scripts.pory"

# 18 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_Hard::
# 19 "data/maps/LilycoveCity_House5/scripts.pory"
	trainerbattle_single TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat, LilycoveCity_House5_EventScript_Brother_PostBattle
# 20 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 21 "data/maps/LilycoveCity_House5/scripts.pory"

# 22 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_PostBattle::
# 23 "data/maps/LilycoveCity_House5/scripts.pory"
	lock
# 24 "data/maps/LilycoveCity_House5/scripts.pory"
	faceplayer
# 25 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_Confession
# 26 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_Confession
# 27 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 28 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 29 "data/maps/LilycoveCity_House5/scripts.pory"

# 30 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_Confession:
# 31 "data/maps/LilycoveCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 32 "data/maps/LilycoveCity_House5/scripts.pory"
	waitmovement 0
# 33 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_Brother_PostBattle, MSGBOX_DEFAULT
# 34 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 35 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 36 "data/maps/LilycoveCity_House5/scripts.pory"

# 37 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_GiveTM:
# 38 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_eq VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, MR_BUTTONS_REN_TM_RECEIVED, LilycoveCity_House5_EventScript_Brother_Complete
# 39 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_Brother_GiveTM, MSGBOX_DEFAULT
# 40 "data/maps/LilycoveCity_House5/scripts.pory"
	giveitem ITEM_TM_U_TURN
# 41 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 42 "data/maps/LilycoveCity_House5/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, MR_BUTTONS_REN_TM_RECEIVED
# 43 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_Complete:
# 44 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_Brother_Complete, MSGBOX_DEFAULT
# 45 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 46 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 47 "data/maps/LilycoveCity_House5/scripts.pory"

# 48 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_NoQuest::
# 49 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_Brother_NoQuest, MSGBOX_NPC
# 50 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 51 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 52 "data/maps/LilycoveCity_House5/scripts.pory"

# 53 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf::
# 54 "data/maps/LilycoveCity_House5/scripts.pory"
	lock
# 55 "data/maps/LilycoveCity_House5/scripts.pory"
	faceplayer
# 56 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_BrotherGf_NoQuest
# 57 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_QUEST_COMPLETED, LilycoveCity_House5_EventScript_BrotherGf_Complete
# 58 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
# 59 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
# 60 "data/maps/LilycoveCity_House5/scripts.pory"

# 61 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle::
# 62 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_BeforeBattle, MSGBOX_NPC
# 63 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 64 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 65 "data/maps/LilycoveCity_House5/scripts.pory"

# 66 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_AfterBattle::
# 67 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_AfterBattle, MSGBOX_NPC
# 68 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 69 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 70 "data/maps/LilycoveCity_House5/scripts.pory"

# 71 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_NoQuest::
# 72 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_NoQuest, MSGBOX_NPC
# 73 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 74 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 75 "data/maps/LilycoveCity_House5/scripts.pory"

# 76 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_Complete:
# 77 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_Complete, MSGBOX_DEFAULT
# 78 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 79 "data/maps/LilycoveCity_House5/scripts.pory"
	end

LilycoveCity_House5_Text_Brother_Intro::
# 82 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "You came all the way from MOSSDEEP?\n"
	.string "Just to ask about some silly stuffed\l"
	.string "bear?\p"
	.string "Me, scared? Ha! As if!\p"
	.string "Maybe I ought to teach you a few\n"
	.string "manners.\p"
	.string "I'm training for the POKéMON LEAGUE\n"
	.string "anyway. A battle will do me good!$"

LilycoveCity_House5_Text_Brother_Defeat::
# 85 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "All right… You win.\p"
	.string "I suppose I owe you the truth.$"

LilycoveCity_House5_Text_Brother_PostBattle::
# 88 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Okay. I was scared. There… I said it. I\n"
	.string "was too embarrassed to admit it.\p"
	.string "That bear used to be mine when I was\n"
	.string "little. Before that, he was Mom's.\p"
	.string "Every night, I was sure I saw him move. I\n"
	.string "threw him away once, even then.\p"
	.string "But Mom kept him. When Esther was born,\n"
	.string "she gave him to her.\p"
	.string "I was grown up by then. I told myself I'd\n"
	.string "imagined it all.\p"
	.string "Then that strange comet came over\n"
	.string "HOENN…\p"
	.string "After that, on nights with a full moon, I\n"
	.string "swear I saw him WALKING around the\l"
	.string "house.\p"
	.string "Right THROUGH THE WALLS!\p"
	.string "So I took him to the cemetery on MT.\n"
	.string "PYRE and threw him as far away as I\l"
	.string "could.\p"
	.string "I know how that sounds…\p"
	.string "But I did it for my family. That thing is\n"
	.string "cursed. I couldn't let it hurt Esther.$"

LilycoveCity_House5_Text_Brother_NoQuest::
# 91 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "We only just moved into this house.\n"
	.string "Still getting used to the sea breeze.\p"
	.string "I'm Ren. A pretty strong Trainer, if I\n"
	.string "say so myself!\p"
	.string "I'm getting ready for the POKéMON\n"
	.string "LEAGUE.\p"
	.string "Oh, you're a Trainer too? Well, keep\n"
	.string "working at it. Maybe we'll meet at the\l"
	.string "LEAGUE!$"

LilycoveCity_House5_Text_Brother_GiveTM::
# 94 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "So Mr. Buttons came home…\p"
	.string "Hm. All right, I admit he's sort of cute.\n"
	.string "Esther looks so happy with him.\p"
	.string "You were right to give me a beating. I\n"
	.string "had that coming.\p"
	.string "Here… To prove I'm not such a jerk, take\n"
	.string "this TM. It's U-TURN.\p"
	.string "Turns out there's nothing wrong with\n"
	.string "changing your mind.$"

LilycoveCity_House5_Text_Brother_Complete::
# 97 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Keep going, okay? You've got more than\n"
	.string "strong POKéMON on your side.\p"
	.string "You listen to people. That's something I\n"
	.string "still need to learn.\p"
	.string "I'll see you at the LEAGUE someday.\n"
	.string "Let's both make it there!$"

LilycoveCity_House5_Text_BrotherGf_BeforeBattle::
# 100 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "You're here about Esther's bear?\p"
	.string "Ren's trying to act tough… But I think\n"
	.string "there's something he's afraid to say.\p"
	.string "Be patient with him, will you?$"

LilycoveCity_House5_Text_BrotherGf_AfterBattle::
# 103 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "He finally told you…\p"
	.string "Ren loves his sister so much. Sometimes\n"
	.string "his worries get the better of him.\p"
	.string "I hope her little bear finds his way\n"
	.string "home.$"

LilycoveCity_House5_Text_BrotherGf_NoQuest::
# 106 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "We moved here together recently. Isn't\n"
	.string "the light through these windows lovely?\p"
	.string "Ren's training for the LEAGUE. I'm just\n"
	.string "happy we have a place to call ours.$"

LilycoveCity_House5_Text_BrotherGf_Complete::
# 109 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Ren went to see Esther. I haven't seen\n"
	.string "him smile like that in a long time.\p"
	.string "Who knew one little bear could bring a\n"
	.string "family so close together?$"
