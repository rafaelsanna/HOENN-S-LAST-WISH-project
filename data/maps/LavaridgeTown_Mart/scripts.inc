LavaridgeTown_Mart_MapScripts::
	.byte 0

LavaridgeTown_Mart_EventScript_Clerk::
	lock
	faceplayer
	message gText_HowMayIServeYou
	waitmessage
	pokemart LavaridgeTown_Mart_Pokemart
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
LavaridgeTown_Mart_Pokemart:
	.2byte ITEM_GREAT_BALL
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_AWAKENING
	.2byte ITEM_BURN_HEAL
	.2byte ITEM_REVIVE
	.2byte ITEM_SUPER_REPEL
	.2byte ITEM_X_SPEED
	pokemartlistend

LavaridgeTown_Mart_EventScript_ExpertM::
	msgbox LavaridgeTown_Mart_Text_XSpeedFirstStrike, MSGBOX_NPC
	end

LavaridgeTown_Mart_EventScript_OldWoman::
	msgbox LavaridgeTown_Mart_Text_LocalSpecialtyOnMtChimney, MSGBOX_NPC
	end

LavaridgeTown_Mart_Text_XSpeedFirstStrike:
	.string "Welcome to LAVARIDGE TOWN, jewel\n"
	.string "of HOENN's rugged mountain range.\p"
	.string "Our hot springs bubble with natural\n"
	.string "heat from deep within the earth.\p"
	.string "Folks come from all over just to\n"
	.string "soak away their troubles here.\p"
	.string "They say the steam carries whispers\n"
	.string "of ancient POKéMON dreams...$"

LavaridgeTown_Mart_Text_LocalSpecialtyOnMtChimney:
	.string "MT. CHIMNEY looms above us, its peak\n"
	.string "shrouded in eternal steam and mystery.\p"
	.string "Elders speak of a time before memory,\n"
	.string "when the mountain roared with fury.\p"
	.string "They say two colossal beings clashed\n"
	.string "in the skies, one wielding sunlight,\l"
	.string "the other, depths of the ocean.\p"
	.string "Their battle scarred the peak forever.\n"
	.string "Even now, the volcano remembers...$"


	


