OldaleField_MapScripts::
	.byte 0

OldaleField_EventScript_Abra_Man::
	lock
	faceplayer
	msgbox OldaleField_Text_Abra_Man, MSGBOX_NPC
	release
	end

OldaleField_EventScript_Sentret_Girl::
	lock
	faceplayer
	msgbox OldaleField_Text_Sentret_Girl, MSGBOX_NPC
	release
	end

OldaleField_EventScript_SentretOT::
	lock
	faceplayer
	playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
	waitmoncry
	release
	end

OldaleField_EventScript_AbraOT::
	lock
	faceplayer
	playmoncry SPECIES_ABRA, CRY_MODE_NORMAL
	waitmoncry
	release
	end

OldaleField_Text_Abra_Man:
	.string "I was looking for rare POKéMON!\n"
	.string "I explored this dark cave to the\l"
	.string "fullest!\p"
	.string "I found this Abra, which doesn't\n"
	.string "even have an attack.\p"
	.string "What am I going to do with this now?$"

OldaleField_Text_Sentret_Girl:
	.string "Beware of those Sentret!\n"
	.string "They are so cute! I know...\p"
	.string "But they are stressed and energetic.\n"
	.string "They're always starting fights!$"

