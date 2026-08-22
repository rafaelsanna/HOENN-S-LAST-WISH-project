# 1 "data/maps/PHOENIXPOKEMART/scripts.pory"

# 2 "data/maps/PHOENIXPOKEMART/scripts.pory"
PHOENIXPOKEMART_MapScripts::
# 3 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.byte 0
# 4 "data/maps/PHOENIXPOKEMART/scripts.pory"

# 5 "data/maps/PHOENIXPOKEMART/scripts.pory"
PHOENIXPOKEMART_EventScript_Clerk::
# 6 "data/maps/PHOENIXPOKEMART/scripts.pory"
	lock
# 7 "data/maps/PHOENIXPOKEMART/scripts.pory"
	faceplayer
# 8 "data/maps/PHOENIXPOKEMART/scripts.pory"
	message gText_HowMayIServeYou
# 9 "data/maps/PHOENIXPOKEMART/scripts.pory"
	waitmessage
# 10 "data/maps/PHOENIXPOKEMART/scripts.pory"
	pokemart PHOENIXPOKEMART_Pokemart
# 11 "data/maps/PHOENIXPOKEMART/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 12 "data/maps/PHOENIXPOKEMART/scripts.pory"
	release
# 13 "data/maps/PHOENIXPOKEMART/scripts.pory"
	end
# 14 "data/maps/PHOENIXPOKEMART/scripts.pory"

# 15 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.align 2
# 16 "data/maps/PHOENIXPOKEMART/scripts.pory"
PHOENIXPOKEMART_Pokemart:
# 17 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_GREAT_BALL
# 18 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_SUPER_POTION
# 19 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_ANTIDOTE
# 20 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_PARALYZE_HEAL
# 21 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_AWAKENING
# 22 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_ESCAPE_ROPE
# 23 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_SUPER_REPEL
# 24 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_X_ATTACK
# 25 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_X_DEFENSE
# 26 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_DIRE_HIT
# 27 "data/maps/PHOENIXPOKEMART/scripts.pory"
	.2byte ITEM_GUARD_SPEC
# 28 "data/maps/PHOENIXPOKEMART/scripts.pory"
	pokemartlistend
