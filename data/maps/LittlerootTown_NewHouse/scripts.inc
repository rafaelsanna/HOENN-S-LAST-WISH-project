LittlerootTown_NewHouse_MapScripts::
	.byte 0

LittlerootTown_NewHouse_EventScript_L_woman::
	lock
	faceplayer
	msgbox LittlerootTown_NewHouse_Text_L_woman, MSGBOX_NPC
	release
	end

LittlerootTown_NewHouse_EventScript_Girlfriend::
	lock
	faceplayer
	msgbox LittlerootTown_NewHouse_Text_Girlfriend, MSGBOX_NPC
	release
	end

LittlerootTown_NewHouse_EventScript_EeeveeLR::
	lock
	faceplayer
	playmoncry SPECIES_EEVEE, CRY_MODE_NORMAL
	waitmoncry
	release
	end



LittlerootTown_NewHouse_Text_L_woman:
	.string "Back in the day, we were trainers!\n"
	.string "Now we just chill here, with our eevees!\p"
	.string "It's good when you find your soulmate.\n"
	.string "But sometimes I miss the hard battles!$"

LittlerootTown_NewHouse_Text_Girlfriend:
	.string "My girlfriend always talks about\n"
	.string "her battling days, but I think this\l"
	.string "peaceful life suits us perfectly.\p"
	.string "Our Eevees seem to agree!\n"
	.string "They love our cozy home.$"


