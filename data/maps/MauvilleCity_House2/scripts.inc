MauvilleCity_House2_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, MauvilleCity_House2_OnTransition
	.byte 0

MauvilleCity_House2_OnTransition:
	goto_if_set FLAG_RECEIVED_COIN_CASE, MauvilleCity_House2_ShowKirara
	setflag FLAG_HIDE_MAUVILLE_HOUSE2_KIRARA  
	end
MauvilleCity_House2_ShowKirara:
	clearflag FLAG_HIDE_MAUVILLE_HOUSE2_KIRARA 
	end

MauvilleCity_House2_EventScript_Hakari::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_COIN_CASE, MauvilleCity_House2_EventScript_AfterTrade
	msgbox MauvilleCity_House2_Text_HakariNeedsMail, MSGBOX_DEFAULT
	checkitem ITEM_HARBOR_MAIL
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_House2_EventScript_NoMail
	playse SE_PIN
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
	waitmovement 0
	msgbox MauvilleCity_House2_Text_HakariHasMail, MSGBOX_DEFAULT
	trainerbattle_no_intro TRAINER_HAKARI, MauvilleCity_House2_Text_HakariDefeated
	goto MauvilleCity_House2_EventScript_GiveCoinCase  @ ← igual ao gym

MauvilleCity_House2_EventScript_NoMail::
	release
	end

MauvilleCity_House2_EventScript_GiveCoinCase::
	msgbox MauvilleCity_House2_Text_HakariTrade, MSGBOX_DEFAULT
	giveitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	removeitem ITEM_HARBOR_MAIL
	setflag FLAG_RECEIVED_COIN_CASE
	msgbox MauvilleCity_House2_Text_HakariAfterTrade, MSGBOX_DEFAULT
	release
	end

MauvilleCity_House2_EventScript_AfterTrade::
	msgbox MauvilleCity_House2_Text_HakariAfterTrade, MSGBOX_DEFAULT
	release
	end

MauvilleCity_EventScript_Kirara::
	lock
	faceplayer
	msgbox MauvilleCity_House2_Text_KiraraThanks, MSGBOX_DEFAULT
	release
	end

@ ── Textos ─────────────────────────────────────────────

MauvilleCity_House2_Text_HakariNeedsMail:
	.string "I… I can't take it anymore!\n"
	.string "The GAME CORNER swallowed everything…\p"
	.string "My coins, my time, the girl I loved…\n"
	.string "She left because I couldn't stop betting.\p"
	.string "If I had a BIKE, I'd cycle to SLATEPORT\n"
	.string "and buy a HARBOR MAIL.\p"
	.string "A letter. Maybe, just maybe, she'd\n"
	.string "read it and… come back to me.$"

MauvilleCity_House2_Text_HakariHasMail:
	.string "Wait! Is that a HARBOR MAIL?\n"
	.string "You really have one?!\p"
	.string "Please, I'm begging you! I'll give you\n"
	.string "my COIN CASE, it's all I have left.\p"
	.string "But first… I need to know you're\n"
	.string "worthy. Battle me! Let me see the\l"
	.string "strength that'll help me change!$"

MauvilleCity_House2_Text_HakariDefeated:
	.string "You're strong… and honest.\n"
	.string "I can trust you. A deal's a deal.$"

MauvilleCity_House2_Text_HakariTrade:
	.string "Okay… Here. My COIN CASE.\n"
	.string "I don't need it anymore.\p"
	.string "I'll write the letter right now.\n"
	.string "Thank you… thank you so much.$"

MauvilleCity_House2_Text_HakariAfterTrade:
	.string "That COIN CASE will let you play at\n"
	.string "the GAME CORNER… but be careful.\l"
	.string "It can become an obsession.$"

MauvilleCity_House2_Text_KiraraThanks:
	.string "Oh, you're the one who helped my\n"
	.string "boyfriend!\p"
	.string "Thank you! Thank you so much!\p"
	.string "He was so lost in gambling… I thought\n"
	.string "I'd never have him back.\p"
	.string "But that HARBOR MAIL you gave him\n"
	.string "was his first step. He poured his heart\l"
	.string "into the letter and promised to change.\p"
	.string "Now he's finally free of that addiction.\n"
	.string "We're together again, and he even\l"
	.string "started caring for POKéMON instead of bets.$"

	