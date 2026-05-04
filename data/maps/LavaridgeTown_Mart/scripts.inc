# 1 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 2 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_MapScripts::
# 3 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.byte 0
# 4 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 5 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_EventScript_Clerk::
# 6 "data/maps/LavaridgeTown_Mart/scripts.pory"
	lock
# 7 "data/maps/LavaridgeTown_Mart/scripts.pory"
	faceplayer
# 8 "data/maps/LavaridgeTown_Mart/scripts.pory"
	message gText_HowMayIServeYou
# 9 "data/maps/LavaridgeTown_Mart/scripts.pory"
	waitmessage
# 10 "data/maps/LavaridgeTown_Mart/scripts.pory"
	pokemart LavaridgeTown_Mart_Pokemart
# 11 "data/maps/LavaridgeTown_Mart/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 12 "data/maps/LavaridgeTown_Mart/scripts.pory"
	release
# 13 "data/maps/LavaridgeTown_Mart/scripts.pory"
	end
# 14 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 15 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.align 2
# 16 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_Pokemart:
# 17 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_GREAT_BALL
# 18 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_SUPER_POTION
# 19 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_ANTIDOTE
# 20 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_PARALYZE_HEAL
# 21 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_AWAKENING
# 22 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_BURN_HEAL
# 23 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_REVIVE
# 24 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_SUPER_REPEL
# 25 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.2byte ITEM_X_SPEED
# 26 "data/maps/LavaridgeTown_Mart/scripts.pory"
	pokemartlistend
# 27 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 28 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_EventScript_ExpertM::
# 29 "data/maps/LavaridgeTown_Mart/scripts.pory"
	msgbox LavaridgeTown_Mart_Text_XSpeedFirstStrike, MSGBOX_NPC
# 30 "data/maps/LavaridgeTown_Mart/scripts.pory"
	end
# 31 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 32 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_EventScript_OldWoman::
# 33 "data/maps/LavaridgeTown_Mart/scripts.pory"
	msgbox LavaridgeTown_Mart_Text_LocalSpecialtyOnMtChimney, MSGBOX_NPC
# 34 "data/maps/LavaridgeTown_Mart/scripts.pory"
	end
# 35 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 36 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_Text_XSpeedFirstStrike:
# 37 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "Welcome to LAVARIDGE TOWN, jewel\n"
# 38 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "of HOENN's rugged mountain range.\p"
# 39 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "Our hot springs bubble with natural\n"
# 40 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "heat from deep within the earth.\p"
# 41 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "Folks come from all over just to\n"
# 42 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "soak away their troubles here.\p"
# 43 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "They say the steam carries whispers\n"
# 44 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "of ancient POKéMON dreams...$"
# 45 "data/maps/LavaridgeTown_Mart/scripts.pory"

# 46 "data/maps/LavaridgeTown_Mart/scripts.pory"
LavaridgeTown_Mart_Text_LocalSpecialtyOnMtChimney:
# 47 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "MT. CHIMNEY looms above us, its peak\n"
# 48 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "shrouded in eternal steam and mystery.\p"
# 49 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "Elders speak of a time before memory,\n"
# 50 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "when the mountain roared with fury.\p"
# 51 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "They say two colossal beings clashed\n"
# 52 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "in the skies, one wielding sunlight,\l"
# 53 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "the other, depths of the ocean.\p"
# 54 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "Their battle scarred the peak forever.\n"
# 55 "data/maps/LavaridgeTown_Mart/scripts.pory"
	.string "Even now, the volcano remembers...$"
