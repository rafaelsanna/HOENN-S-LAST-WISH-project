Common_EventScript_HungryChansey::
	lock
	faceplayer
	specialvar VAR_0x8004, HungryChansey_GetRequestedBerry
	bufferitemname STR_VAR_1, VAR_0x8004
	msgbox Common_Text_HungryChanseyOffer, MSGBOX_DEFAULT
	checkitem VAR_0x8004, 1
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_HungryChanseyNoBerry
	msgbox Common_Text_HungryChanseyGiveBerry, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, Common_EventScript_HungryChanseyDeclined
	removeitem VAR_0x8004, 1
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_HungryChanseyNoBerry
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	special HungryChansey_ClearRequestedBerry
	msgbox Common_Text_HungryChanseyHealed, MSGBOX_DEFAULT
	release
	end

Common_EventScript_HungryChanseyNoBerry::
	msgbox Common_Text_HungryChanseyNoBerry, MSGBOX_DEFAULT
	release
	end

Common_EventScript_HungryChanseyDeclined::
	msgbox Common_Text_HungryChanseyDeclined, MSGBOX_DEFAULT
	release
	end

Common_Text_HungryChanseyOffer:
	.string "The CHANSEY looks hungry!\n"
	.string "It seems to want a {STR_VAR_1}.$"

Common_Text_HungryChanseyGiveBerry:
	.string "Will you give CHANSEY one {STR_VAR_1}?$"

Common_Text_HungryChanseyNoBerry:
	.string "Too bad! You don't have any {STR_VAR_1}.$"

Common_Text_HungryChanseyDeclined:
	.string "The CHANSEY looks disappointed.$"

Common_Text_HungryChanseyHealed:
	.string "The CHANSEY looks satisfied!\n"
	.string "Your party was fully healed.$"
