MauvilleCity_Mart_MapScripts::
	.byte 0

MauvilleCity_Mart_EventScript_Clerk::
	lock
	faceplayer
	message gText_HowMayIServeYou
	waitmessage
	pokemart MauvilleCity_Mart_Pokemart
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
MauvilleCity_Mart_Pokemart:
	.2byte ITEM_POKE_BALL
	.2byte ITEM_GREAT_BALL
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_AWAKENING
	.2byte ITEM_X_SPEED
	.2byte ITEM_X_ATTACK
	.2byte ITEM_X_DEFENSE
	.2byte ITEM_GUARD_SPEC
	.2byte ITEM_DIRE_HIT
	.2byte ITEM_X_ACCURACY
	pokemartlistend

MauvilleCity_Mart_EventScript_ExpertM::
	msgbox MauvilleCity_Mart_Text_ItemsToTemporarilyElevateStats, MSGBOX_NPC
	end

MauvilleCity_Mart_EventScript_Man::
	msgbox MauvilleCity_Mart_Text_DecisionsDetermineBattle, MSGBOX_NPC
	end

MauvilleCity_Mart_Text_ItemsToTemporarilyElevateStats:
	.string "Our GYM LEADER DEN? He's a certifiable\n"
	.string "genius since he was a little kid.\p"
	.string "Never played outside, he was indoors\n"
	.string "building contraptions that sparked...\p"
	.string "Rumors say he can command electricity\n"
	.string "with his mind after all his experiments.\p"
	.string "But I know the truth, he's just a man who\n"
	.string "never stopped studying. The weird glow in\l"
	.string "his GYM? Probably just a faulty wire...$"

MauvilleCity_Mart_Text_DecisionsDetermineBattle:
	.string "Mauville City is the true heart of Hoenn.\n"
	.string "Roads lead out to every corner from here.\p"
	.string "Travelers from the desert, the coast,\n"
	.string "and the countryside all pass through.\p"
	.string "You can feel the energy of the whole\n"
	.string "region flowing through this place.$"

	

