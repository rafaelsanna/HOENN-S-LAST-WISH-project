OldaleField_MapScripts::
	.byte 0


OldaleFieldAbraMan::
# 4 "data/maps/OldaleField/scripts.pory"
	lock
# 5 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 6 "data/maps/OldaleField/scripts.pory"
	msgbox OldaleFieldAbraManDialogue, MSGBOX_NPC
# 7 "data/maps/OldaleField/scripts.pory"
	release
	end


OldaleFieldGirl::
# 12 "data/maps/OldaleField/scripts.pory"
	lock
# 13 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 14 "data/maps/OldaleField/scripts.pory"
	msgbox OldaleFieldGirlDialogue, MSGBOX_NPC
# 15 "data/maps/OldaleField/scripts.pory"
	release
	end


SentretOverworld::
# 20 "data/maps/OldaleField/scripts.pory"
	lock
# 21 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 22 "data/maps/OldaleField/scripts.pory"
	playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
# 23 "data/maps/OldaleField/scripts.pory"
	waitmoncry
# 24 "data/maps/OldaleField/scripts.pory"
	release
	end


AbraOverworld::
# 29 "data/maps/OldaleField/scripts.pory"
	lock
# 30 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 31 "data/maps/OldaleField/scripts.pory"
	playmoncry SPECIES_ABRA, CRY_MODE_NORMAL
# 32 "data/maps/OldaleField/scripts.pory"
	waitmoncry
# 33 "data/maps/OldaleField/scripts.pory"
	release
	end


OldTunnelSign::
# 38 "data/maps/OldaleField/scripts.pory"
	lock
# 39 "data/maps/OldaleField/scripts.pory"
	faceplayer
# 40 "data/maps/OldaleField/scripts.pory"
	msgbox OldTunnelSign_Text_0, MSGBOX_SIGN
# 41 "data/maps/OldaleField/scripts.pory"
	release
	end


OldTunnelSign_Text_0:
# 40 "data/maps/OldaleField/scripts.pory"
	.string "OLD TUNNEL$"

OldaleFieldAbraManDialogue::
# 45 "data/maps/OldaleField/scripts.pory"
	.string "I explored this dark cave to the\n"
	.string "fullest in seach of rare POKéMON!\p"
	.string "I found this Abra, which doesn't even\n"
	.string "have an attack. What am I going to do\l"
	.string "with this now?$"

OldaleFieldGirlDialogue::
# 52 "data/maps/OldaleField/scripts.pory"
	.string "Beware of those Sentret!\n"
	.string "They are so cute! I know...\p"
	.string "But they are stressed and energetic.\n"
	.string "They're always starting fights!$"
