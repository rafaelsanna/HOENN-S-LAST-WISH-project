RustboroCity_Mart_MapScripts::
	.byte 0

RustboroCity_Mart_EventScript_Clerk::
	lock
	faceplayer
	message gText_HowMayIServeYou
	waitmessage
	goto_if_unset FLAG_MET_DEVON_EMPLOYEE, RustboroCity_Mart_EventScript_PokemartBasic
	goto_if_set FLAG_MET_DEVON_EMPLOYEE, RustboroCity_Mart_EventScript_PokemartExpanded
	end

RustboroCity_Mart_EventScript_PokemartBasic::
	pokemart RustboroCity_Mart_Pokemart_Basic
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
RustboroCity_Mart_Pokemart_Basic:
	.2byte ITEM_POKE_BALL
	.2byte ITEM_POTION
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_ESCAPE_ROPE
	.2byte ITEM_REPEL
	.2byte ITEM_X_SPEED
	.2byte ITEM_X_ATTACK
	.2byte ITEM_X_DEFENSE
	pokemartlistend

RustboroCity_Mart_EventScript_PokemartExpanded::
	pokemart RustboroCity_Mart_Pokemart_Expanded
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
RustboroCity_Mart_Pokemart_Expanded:
	.2byte ITEM_POKE_BALL
	.2byte ITEM_TIMER_BALL
	.2byte ITEM_REPEAT_BALL
	.2byte ITEM_POTION
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_ESCAPE_ROPE
	.2byte ITEM_REPEL
	.2byte ITEM_X_SPEED
	.2byte ITEM_X_ATTACK
	.2byte ITEM_X_DEFENSE
	pokemartlistend

RustboroCity_Mart_EventScript_PokefanF::
	msgbox RustboroCity_Mart_Text_BuyingHealsInCaseOfShroomish, MSGBOX_NPC
	end

RustboroCity_Mart_EventScript_Boy::
	msgbox RustboroCity_Mart_Text_ShouldBuySuperPotionsInstead, MSGBOX_NPC
	end

RustboroCity_Mart_EventScript_BugCatcher::
	msgbox RustboroCity_Mart_Text_GettingEscapeRopeJustInCase, MSGBOX_NPC
	end

RustboroCity_Mart_Text_BuyingHealsInCaseOfShroomish:
	.string "Have you heard about TERRA, our GYM\n"
	.string "LEADER? She's an incredible climber!\p"
	.string "They say she been where no one\n"
	.string "else dares to even approach.\p"
	.string "Her climbing skills let her reach\n"
	.string "altitudes where rare POKéMON live and\l"
	.string "places no one has ever seen before.\p"
	.string "Sometimes I wonder what she's found\n"
	.string "up there... Must be amazing!$"

RustboroCity_Mart_Text_ShouldBuySuperPotionsInstead:
	.string "Last night I tried to cross\n"
	.string "PETALBURG WOODS after dark.\p"
	.string "Big mistake. Really big mistake.\p"
	.string "My poor POKéMON took a beating from\n"
	.string "all the wild ones hiding in shadows.\p"
	.string "Regular POTIONS won't cut it anymore.\n"
	.string "Time to upgrade to SUPER POTIONS!$"

RustboroCity_Mart_Text_GettingEscapeRopeJustInCase:
	.string "They say there's a mysterious cave\n"
	.string "hidden near RUSTBORO… somewhere.\p"
	.string "I've always wanted to explore it,\n"
	.string "but… I'm scared of ghosts.\p"
	.string "What if there are spirits inside?\n"
	.string "What if I can't find my way out?\p"
	.string "That's why I'm getting an ESCAPE ROPE.\n"
	.string "Or maybe a POKéMON with DIG…\l"
	.string "Just in case I need to escape...$"



