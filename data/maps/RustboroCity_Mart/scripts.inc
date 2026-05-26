# 1 "data/maps/RustboroCity_Mart/scripts.pory"

# 2 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_MapScripts::
# 3 "data/maps/RustboroCity_Mart/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_Mart/scripts.pory"

# 5 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_EventScript_Clerk::
# 6 "data/maps/RustboroCity_Mart/scripts.pory"
	lock
# 7 "data/maps/RustboroCity_Mart/scripts.pory"
	faceplayer
# 8 "data/maps/RustboroCity_Mart/scripts.pory"
	message gText_HowMayIServeYou
# 9 "data/maps/RustboroCity_Mart/scripts.pory"
	waitmessage
# 10 "data/maps/RustboroCity_Mart/scripts.pory"
	goto_if_unset FLAG_MET_DEVON_EMPLOYEE, RustboroCity_Mart_EventScript_PokemartBasic
# 11 "data/maps/RustboroCity_Mart/scripts.pory"
	goto_if_set FLAG_MET_DEVON_EMPLOYEE, RustboroCity_Mart_EventScript_PokemartExpanded
# 12 "data/maps/RustboroCity_Mart/scripts.pory"
	end
# 13 "data/maps/RustboroCity_Mart/scripts.pory"

# 14 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_EventScript_PokemartBasic::
# 15 "data/maps/RustboroCity_Mart/scripts.pory"
	pokemart RustboroCity_Mart_Pokemart_Basic
# 16 "data/maps/RustboroCity_Mart/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 17 "data/maps/RustboroCity_Mart/scripts.pory"
	release
# 18 "data/maps/RustboroCity_Mart/scripts.pory"
	end
# 19 "data/maps/RustboroCity_Mart/scripts.pory"

# 20 "data/maps/RustboroCity_Mart/scripts.pory"
	.align 2
# 21 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_Pokemart_Basic:
# 22 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_POKE_BALL
# 23 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_POTION
# 24 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_SUPER_POTION
# 25 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_ANTIDOTE
# 26 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_PARALYZE_HEAL
# 27 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_ESCAPE_ROPE
# 28 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_REPEL
# 29 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_X_SPEED
# 30 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_X_ATTACK
# 31 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_X_DEFENSE
# 32 "data/maps/RustboroCity_Mart/scripts.pory"
	pokemartlistend
# 33 "data/maps/RustboroCity_Mart/scripts.pory"

# 34 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_EventScript_PokemartExpanded::
# 35 "data/maps/RustboroCity_Mart/scripts.pory"
	pokemart RustboroCity_Mart_Pokemart_Expanded
# 36 "data/maps/RustboroCity_Mart/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 37 "data/maps/RustboroCity_Mart/scripts.pory"
	release
# 38 "data/maps/RustboroCity_Mart/scripts.pory"
	end
# 39 "data/maps/RustboroCity_Mart/scripts.pory"

# 40 "data/maps/RustboroCity_Mart/scripts.pory"
	.align 2
# 41 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_Pokemart_Expanded:
# 42 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_POKE_BALL
# 43 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_TIMER_BALL
# 44 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_REPEAT_BALL
# 45 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_POTION
# 46 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_SUPER_POTION
# 47 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_ANTIDOTE
# 48 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_PARALYZE_HEAL
# 49 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_ESCAPE_ROPE
# 50 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_REPEL
# 51 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_X_SPEED
# 52 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_X_ATTACK
# 53 "data/maps/RustboroCity_Mart/scripts.pory"
	.2byte ITEM_X_DEFENSE
# 54 "data/maps/RustboroCity_Mart/scripts.pory"
	pokemartlistend
# 55 "data/maps/RustboroCity_Mart/scripts.pory"

# 56 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_EventScript_PokefanF::
# 57 "data/maps/RustboroCity_Mart/scripts.pory"
	msgbox RustboroCity_Mart_Text_BuyingHealsInCaseOfShroomish, MSGBOX_NPC
# 58 "data/maps/RustboroCity_Mart/scripts.pory"
	end
# 59 "data/maps/RustboroCity_Mart/scripts.pory"

# 60 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_EventScript_Boy::
# 61 "data/maps/RustboroCity_Mart/scripts.pory"
	msgbox RustboroCity_Mart_Text_ShouldBuySuperPotionsInstead, MSGBOX_NPC
# 62 "data/maps/RustboroCity_Mart/scripts.pory"
	end
# 63 "data/maps/RustboroCity_Mart/scripts.pory"

# 64 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_EventScript_BugCatcher::
# 65 "data/maps/RustboroCity_Mart/scripts.pory"
	msgbox RustboroCity_Mart_Text_GettingEscapeRopeJustInCase, MSGBOX_NPC
# 66 "data/maps/RustboroCity_Mart/scripts.pory"
	end
# 67 "data/maps/RustboroCity_Mart/scripts.pory"

# 68 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_Text_BuyingHealsInCaseOfShroomish:
# 69 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Have you heard about TERRA, our GYM\n"
# 70 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "LEADER? She's an incredible climber!\p"
# 71 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "They say she's been where no one\n"
# 72 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "else dares to even approach.\p"
# 73 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Her climbing skills let her reach\n"
# 74 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "altitudes where rare POKéMON live and\l"
# 75 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "places no one has ever seen before.\p"
# 76 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Sometimes I wonder what she's found\n"
# 77 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "up there... Must be amazing!$"
# 78 "data/maps/RustboroCity_Mart/scripts.pory"

# 79 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_Text_ShouldBuySuperPotionsInstead:
# 80 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Last night I tried to cross\n"
# 81 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "PETALBURG WOODS after dark.\p"
# 82 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Big mistake. Really big mistake.\p"
# 83 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "My poor POKéMON took a beating from\n"
# 84 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "all the wild ones hiding in shadows.\p"
# 85 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Regular POTIONS won't cut it anymore.\n"
# 86 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Time to upgrade to SUPER POTIONS!$"
# 87 "data/maps/RustboroCity_Mart/scripts.pory"

# 88 "data/maps/RustboroCity_Mart/scripts.pory"
RustboroCity_Mart_Text_GettingEscapeRopeJustInCase:
# 89 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "They say there's a mysterious cave\n"
# 90 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "hidden near RUSTBORO… somewhere.\p"
# 91 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "I've always wanted to explore it,\n"
# 92 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "but… I'm scared of ghosts.\p"
# 93 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "What if there are spirits inside?\n"
# 94 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "What if I can't find my way out?\p"
# 95 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "That's why I'm getting an ESCAPE ROPE.\n"
# 96 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Or maybe a POKéMON with DIG…\l"
# 97 "data/maps/RustboroCity_Mart/scripts.pory"
	.string "Just in case I need to escape...$"
