VerdanturfTown_Mart_MapScripts::
	.byte 0

VerdanturfTown_Mart_EventScript_Clerk::
	lock
	faceplayer
	message gText_HowMayIServeYou
	waitmessage
	pokemart VerdanturfTown_Mart_Pokemart
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
VerdanturfTown_Mart_Pokemart:
	.2byte ITEM_GREAT_BALL
	.2byte ITEM_NEST_BALL
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_AWAKENING
	.2byte ITEM_BURN_HEAL
	.2byte ITEM_ICE_HEAL
	.2byte ITEM_REPEL
	.2byte ITEM_X_SP_ATK
	.2byte ITEM_FLUFFY_TAIL
	pokemartlistend

VerdanturfTown_Mart_EventScript_Boy::
	msgbox VerdanturfTown_Mart_Text_XSpecialIsCrucial, MSGBOX_NPC
	end

VerdanturfTown_Mart_EventScript_ExpertF::
	msgbox VerdanturfTown_Mart_Text_NoStrategyGuidesForBattleTent, MSGBOX_NPC
	end

VerdanturfTown_Mart_EventScript_Lass::
	msgbox VerdanturfTown_Mart_Text_NestBallOnWeakenedPokemon, MSGBOX_NPC
	end

VerdanturfTown_Mart_Text_XSpecialIsCrucial:
	.string "Welcome to VERDANTURF, where the wind\n"
	.string "carries the sweet scent of grass.\p"
	.string "Strange as it seems, volcanic ash from\n"
	.string "MT. CHIMNEY never falls here.\p"
	.string "The breeze protects us, keeps the air\n"
	.string "pure and clean for all who visit.\p"
	.string "Folks say it's why the flowers bloom\n"
	.string "so brightly, even in the mountains.$"

VerdanturfTown_Mart_Text_NoStrategyGuidesForBattleTent:
	.string "The BATTLE TENT stands where contests\n"
	.string "once echoed with cheering crowds.\p"
	.string "That was before the great clash…\n"
	.string "When land and sea went to war.\p"
	.string "Now, trainers come to test a different\n"
	.string "kind of bond letting their Pokémon\l"
	.string "fight on instinct alone.\p"
	.string "No guide can teach you that.\n"
	.string "You must learn to trust.$"

VerdanturfTown_Mart_Text_NestBallOnWeakenedPokemon:
	.string "The NEST BALL works best on wounded\n"
	.string "foes, the weaker, the better.\p"
	.string "We're the only MART in HOENN that\n"
	.string "sells them, lucky for you.\p"
	.string "It's said the design was inspired by\n"
	.string "the gentle breezes that protect our\l"
	.string "town from volcanic ash.$"

	
