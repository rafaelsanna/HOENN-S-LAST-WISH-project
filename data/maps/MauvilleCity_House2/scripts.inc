# 1 "data/maps/MauvilleCity_House2/scripts.pory"

# 2 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_MapScripts::
# 3 "data/maps/MauvilleCity_House2/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MauvilleCity_House2_OnTransition
# 4 "data/maps/MauvilleCity_House2/scripts.pory"
	.byte 0
# 5 "data/maps/MauvilleCity_House2/scripts.pory"

# 6 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_OnTransition:
# 7 "data/maps/MauvilleCity_House2/scripts.pory"
	goto_if_set FLAG_RECEIVED_COIN_CASE, MauvilleCity_House2_ShowKirara
# 8 "data/maps/MauvilleCity_House2/scripts.pory"
	setflag FLAG_HIDE_MAUVILLE_HOUSE2_KIRARA  
# 9 "data/maps/MauvilleCity_House2/scripts.pory"
	end
# 10 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_ShowKirara:
# 11 "data/maps/MauvilleCity_House2/scripts.pory"
	clearflag FLAG_HIDE_MAUVILLE_HOUSE2_KIRARA 
# 12 "data/maps/MauvilleCity_House2/scripts.pory"
	end
# 13 "data/maps/MauvilleCity_House2/scripts.pory"

# 14 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_EventScript_Hakari::
# 15 "data/maps/MauvilleCity_House2/scripts.pory"
	lock
# 16 "data/maps/MauvilleCity_House2/scripts.pory"
	faceplayer
# 17 "data/maps/MauvilleCity_House2/scripts.pory"
	goto_if_set FLAG_RECEIVED_COIN_CASE, MauvilleCity_House2_EventScript_AfterTrade
# 18 "data/maps/MauvilleCity_House2/scripts.pory"
	msgbox MauvilleCity_House2_Text_HakariNeedsMail, MSGBOX_DEFAULT
# 19 "data/maps/MauvilleCity_House2/scripts.pory"
	checkitem ITEM_HARBOR_MAIL
# 20 "data/maps/MauvilleCity_House2/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_House2_EventScript_NoMail
# 21 "data/maps/MauvilleCity_House2/scripts.pory"
	playse SE_PIN
# 22 "data/maps/MauvilleCity_House2/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 23 "data/maps/MauvilleCity_House2/scripts.pory"
	waitmovement 0
# 24 "data/maps/MauvilleCity_House2/scripts.pory"
	msgbox MauvilleCity_House2_Text_HakariHasMail, MSGBOX_DEFAULT
# 25 "data/maps/MauvilleCity_House2/scripts.pory"
	trainerbattle_no_intro TRAINER_HAKARI, MauvilleCity_House2_Text_HakariDefeated
# 26 "data/maps/MauvilleCity_House2/scripts.pory"
	goto MauvilleCity_House2_EventScript_GiveCoinCase  @ ← igual ao gym
# 27 "data/maps/MauvilleCity_House2/scripts.pory"

# 28 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_EventScript_NoMail::
# 29 "data/maps/MauvilleCity_House2/scripts.pory"
	release
# 30 "data/maps/MauvilleCity_House2/scripts.pory"
	end
# 31 "data/maps/MauvilleCity_House2/scripts.pory"

# 32 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_EventScript_GiveCoinCase::
# 33 "data/maps/MauvilleCity_House2/scripts.pory"
	msgbox MauvilleCity_House2_Text_HakariTrade, MSGBOX_DEFAULT
# 34 "data/maps/MauvilleCity_House2/scripts.pory"
	giveitem ITEM_COIN_CASE
# 35 "data/maps/MauvilleCity_House2/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 36 "data/maps/MauvilleCity_House2/scripts.pory"
	removeitem ITEM_HARBOR_MAIL
# 37 "data/maps/MauvilleCity_House2/scripts.pory"
	setflag FLAG_RECEIVED_COIN_CASE
# 38 "data/maps/MauvilleCity_House2/scripts.pory"
	msgbox MauvilleCity_House2_Text_HakariAfterTrade, MSGBOX_DEFAULT
# 39 "data/maps/MauvilleCity_House2/scripts.pory"
	release
# 40 "data/maps/MauvilleCity_House2/scripts.pory"
	end
# 41 "data/maps/MauvilleCity_House2/scripts.pory"

# 42 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_EventScript_AfterTrade::
# 43 "data/maps/MauvilleCity_House2/scripts.pory"
	msgbox MauvilleCity_House2_Text_HakariAfterTrade, MSGBOX_DEFAULT
# 44 "data/maps/MauvilleCity_House2/scripts.pory"
	release
# 45 "data/maps/MauvilleCity_House2/scripts.pory"
	end
# 46 "data/maps/MauvilleCity_House2/scripts.pory"

# 47 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_EventScript_Kirara::
# 48 "data/maps/MauvilleCity_House2/scripts.pory"
	lock
# 49 "data/maps/MauvilleCity_House2/scripts.pory"
	faceplayer
# 50 "data/maps/MauvilleCity_House2/scripts.pory"
	msgbox MauvilleCity_House2_Text_KiraraThanks, MSGBOX_DEFAULT
# 51 "data/maps/MauvilleCity_House2/scripts.pory"
	release
# 52 "data/maps/MauvilleCity_House2/scripts.pory"
	end
# 53 "data/maps/MauvilleCity_House2/scripts.pory"

# 54 "data/maps/MauvilleCity_House2/scripts.pory"
@ ── Textos ─────────────────────────────────────────────
# 55 "data/maps/MauvilleCity_House2/scripts.pory"

# 56 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_Text_HakariNeedsMail:
# 57 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "I… I can't take it anymore!\n"
# 58 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "The GAME CORNER swallowed everything…\p"
# 59 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "My coins, my time, the girl I loved…\n"
# 60 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "She left because I couldn't stop betting.\p"
# 61 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "If I had a BIKE, I'd cycle to SLATEPORT\n"
# 62 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "and buy a HARBOR MAIL.\p"
# 63 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "A letter. Maybe, just maybe, she'd\n"
# 64 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "read it and… come back to me.$"
# 65 "data/maps/MauvilleCity_House2/scripts.pory"

# 66 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_Text_HakariHasMail:
# 67 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Wait! Is that a HARBOR MAIL?\n"
# 68 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "You really have one?!\p"
# 69 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Please, I'm begging you! I'll give you\n"
# 70 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "my COIN CASE, it's all I have left.\p"
# 71 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "But first… I need to know you're\n"
# 72 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "worthy. Battle me! Let me see the\l"
# 73 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "strength that'll help me change!$"
# 74 "data/maps/MauvilleCity_House2/scripts.pory"

# 75 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_Text_HakariDefeated:
# 76 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "You're strong… and honest.\n"
# 77 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "I can trust you. A deal's a deal.$"
# 78 "data/maps/MauvilleCity_House2/scripts.pory"

# 79 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_Text_HakariTrade:
# 80 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Okay… Here. My COIN CASE.\n"
# 81 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "I don't need it anymore.\p"
# 82 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "I'll write the letter right now.\n"
# 83 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Thank you… thank you so much.$"
# 84 "data/maps/MauvilleCity_House2/scripts.pory"

# 85 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_Text_HakariAfterTrade:
# 86 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "That COIN CASE will let you play at\n"
# 87 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "the GAME CORNER… but be careful.\l"
# 88 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "It can become an obsession.$"
# 89 "data/maps/MauvilleCity_House2/scripts.pory"

# 90 "data/maps/MauvilleCity_House2/scripts.pory"
MauvilleCity_House2_Text_KiraraThanks:
# 91 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Oh, you're the one who helped my\n"
# 92 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "boyfriend!\p"
# 93 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Thank you! Thank you so much!\p"
# 94 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "He was so lost in gambling… I thought\n"
# 95 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "I'd never have him back.\p"
# 96 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "But that HARBOR MAIL you gave him\n"
# 97 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "was his first step. He poured his heart\l"
# 98 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "into the letter and promised to change.\p"
# 99 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "Now he's finally free of that addiction.\n"
# 100 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "We're together again, and he even\l"
# 101 "data/maps/MauvilleCity_House2/scripts.pory"
	.string "started caring for POKéMON instead of bets.$"
