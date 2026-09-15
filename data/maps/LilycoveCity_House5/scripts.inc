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
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_Brother_PostBattle
# 10 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_Brother_PostBattle
# 11 "data/maps/LilycoveCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 12 "data/maps/LilycoveCity_House5/scripts.pory"
	waitmovement 0
# 13 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_set FLAG_HARD_MODE_SLEEP_CLAUSE, LilycoveCity_House5_EventScript_Brother_Hard
# 14 "data/maps/LilycoveCity_House5/scripts.pory"
	trainerbattle_single TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat
# 15 "data/maps/LilycoveCity_House5/scripts.pory"
	goto LilycoveCity_House5_EventScript_Brother_PostBattle
# 16 "data/maps/LilycoveCity_House5/scripts.pory"

# 17 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_Hard::
# 18 "data/maps/LilycoveCity_House5/scripts.pory"
	trainerbattle_single TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_Text_Brother_Intro, LilycoveCity_House5_Text_Brother_Defeat
# 19 "data/maps/LilycoveCity_House5/scripts.pory"

# 20 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_PostBattle::
# 21 "data/maps/LilycoveCity_House5/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 22 "data/maps/LilycoveCity_House5/scripts.pory"
	waitmovement 0
# 23 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_Brother_PostBattle, MSGBOX_DEFAULT
# 24 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 25 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 26 "data/maps/LilycoveCity_House5/scripts.pory"

# 27 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_Brother_NoQuest::
# 28 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_Brother_NoQuest, MSGBOX_NPC
# 29 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 30 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 31 "data/maps/LilycoveCity_House5/scripts.pory"

# 32 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf::
# 33 "data/maps/LilycoveCity_House5/scripts.pory"
	lock
# 34 "data/maps/LilycoveCity_House5/scripts.pory"
	faceplayer
# 35 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, LilycoveCity_House5_EventScript_BrotherGf_NoQuest
# 36 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_not_defeated TRAINER_REN_BROTHER_QUEST_CASUAL, LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle
# 37 "data/maps/LilycoveCity_House5/scripts.pory"
	goto_if_not_defeated TRAINER_REN_BROTHER_QUEST_HARD, LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle
# 38 "data/maps/LilycoveCity_House5/scripts.pory"
	goto LilycoveCity_House5_EventScript_BrotherGf_AfterBattle
# 39 "data/maps/LilycoveCity_House5/scripts.pory"

# 40 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_BeforeBattle::
# 41 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_BeforeBattle, MSGBOX_NPC
# 42 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 43 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 44 "data/maps/LilycoveCity_House5/scripts.pory"

# 45 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_AfterBattle::
# 46 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_AfterBattle, MSGBOX_NPC
# 47 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 48 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 49 "data/maps/LilycoveCity_House5/scripts.pory"

# 50 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_EventScript_BrotherGf_NoQuest::
# 51 "data/maps/LilycoveCity_House5/scripts.pory"
	msgbox LilycoveCity_House5_Text_BrotherGf_NoQuest, MSGBOX_NPC
# 52 "data/maps/LilycoveCity_House5/scripts.pory"
	release
# 53 "data/maps/LilycoveCity_House5/scripts.pory"
	end
# 54 "data/maps/LilycoveCity_House5/scripts.pory"

# 55 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_Brother_Intro:
# 56 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "You came all the way from Mossdeep…\p"
# 57 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "She sent you, didn't she?\p"
# 58 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I don't want to talk about the doll.\n"
# 59 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "If you really want the truth, show me\n"
# 60 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "you can handle it.$"
# 61 "data/maps/LilycoveCity_House5/scripts.pory"

# 62 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_Brother_Defeat:
# 63 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "All right…\p"
# 64 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I'll tell you what happened.$"
# 65 "data/maps/LilycoveCity_House5/scripts.pory"

# 66 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_Brother_PostBattle:
# 67 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "After the meteor, the doll felt different.\p"
# 68 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "It was only a toy, but sometimes I could\n"
# 69 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "swear it was watching me.\p"
# 70 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I panicked and threw it into MT. PYRE.\n"
# 71 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I thought the spirits there would keep it\n"
# 72 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "quiet. I didn't think she'd miss it so much.$"
# 73 "data/maps/LilycoveCity_House5/scripts.pory"

# 74 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_Brother_NotEnoughMons:
# 75 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "If you want the truth, bring a partner.\n"
# 76 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I won't battle someone who comes alone.$"
# 77 "data/maps/LilycoveCity_House5/scripts.pory"

# 78 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_Brother_NoQuest:
# 79 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Ren is lost in thought.\n"
# 80 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "He doesn't seem ready to talk.$"
# 81 "data/maps/LilycoveCity_House5/scripts.pory"

# 82 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_BrotherGf_BeforeBattle:
# 83 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Ren hasn't slept well since he came back\n"
# 84 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "from MT. PYRE.\p"
# 85 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Whatever happened there, he keeps it\n"
# 86 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "tucked away behind that quiet face.$"
# 87 "data/maps/LilycoveCity_House5/scripts.pory"

# 88 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_BrotherGf_AfterBattle:
# 89 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "He finally told you…\p"
# 90 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I think he was more frightened of hurting\n"
# 91 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "his sister's feelings than of the doll itself.$"
# 92 "data/maps/LilycoveCity_House5/scripts.pory"

# 93 "data/maps/LilycoveCity_House5/scripts.pory"
LilycoveCity_House5_Text_BrotherGf_NoQuest:
# 94 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "Ren is out today.\n"
# 95 "data/maps/LilycoveCity_House5/scripts.pory"
	.string "I wonder when he'll be back.$"
