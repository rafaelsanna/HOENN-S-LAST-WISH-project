OldaleField_MapScripts::
# 2 "data/maps/OldaleField/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, OldaleField_OnTransition
	.byte 0


OldaleField_OnTransition::
# 6 "data/maps/OldaleField/scripts.pory"
	call PetalburgCity_EventScript_HandleAquaGrunts
	end


OldaleFieldAbraMan::
# 11 "data/maps/OldaleField/scripts.pory"
	lock
# 12 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 13 "data/maps/OldaleField/scripts.pory"
	msgbox OldaleFieldAbraManDialogue, MSGBOX_NPC
# 14 "data/maps/OldaleField/scripts.pory"
	release
	end


OldaleFieldGirl::
# 19 "data/maps/OldaleField/scripts.pory"
	lock
# 20 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 21 "data/maps/OldaleField/scripts.pory"
	msgbox OldaleFieldGirlDialogue, MSGBOX_NPC
# 22 "data/maps/OldaleField/scripts.pory"
	release
	end


SentretOverworld::
# 27 "data/maps/OldaleField/scripts.pory"
	lock
# 28 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 29 "data/maps/OldaleField/scripts.pory"
	playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
# 30 "data/maps/OldaleField/scripts.pory"
	waitmoncry
# 31 "data/maps/OldaleField/scripts.pory"
	release
	end


AbraOverworld::
# 36 "data/maps/OldaleField/scripts.pory"
	lock
# 37 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 38 "data/maps/OldaleField/scripts.pory"
	playmoncry SPECIES_ABRA, CRY_MODE_NORMAL
# 39 "data/maps/OldaleField/scripts.pory"
	waitmoncry
# 40 "data/maps/OldaleField/scripts.pory"
	release
	end


OldTunnelSign::
# 45 "data/maps/OldaleField/scripts.pory"
	lock
# 46 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 47 "data/maps/OldaleField/scripts.pory"
	msgbox OldTunnelSign_Text_0, MSGBOX_SIGN
# 48 "data/maps/OldaleField/scripts.pory"
	release
	end


OldTunnelSign_Text_0:
# 47 "data/maps/OldaleField/scripts.pory"
	.string "OLD TUNNEL$"

OldaleFieldAbraManDialogue::
# 52 "data/maps/OldaleField/scripts.pory"
	.string "I explored this dark cave in seach of\n"
	.string "rare POKéMON!\p"
	.string "I found this ABRA, but it doesn't even\n"
	.string "have any damaging moves!\p"
	.string "What am I going to do with this?$"

OldaleFieldGirlDialogue::
# 59 "data/maps/OldaleField/scripts.pory"
	.string "Beware of those SENTRET!\n"
	.string "They are so cute, I know…\p"
	.string "But they're very easily stressed!\n"
	.string "They're always starting fights!$"
