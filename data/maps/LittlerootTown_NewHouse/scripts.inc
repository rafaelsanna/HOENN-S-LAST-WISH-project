# 1 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 2 "data/maps/LittlerootTown_NewHouse/scripts.pory"
LittlerootTown_NewHouse_MapScripts::
# 3 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.byte 0
# 4 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 5 "data/maps/LittlerootTown_NewHouse/scripts.pory"
LittlerootTown_NewHouse_EventScript_L_woman::
# 6 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	lock
# 7 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	faceplayer
# 8 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	msgbox LittlerootTown_NewHouse_Text_L_woman, MSGBOX_NPC
# 9 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	release
# 10 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	end
# 11 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 12 "data/maps/LittlerootTown_NewHouse/scripts.pory"
LittlerootTown_NewHouse_EventScript_Girlfriend::
# 13 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	lock
# 14 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	faceplayer
# 15 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	msgbox LittlerootTown_NewHouse_Text_Girlfriend, MSGBOX_NPC
# 16 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	release
# 17 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	end
# 18 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 19 "data/maps/LittlerootTown_NewHouse/scripts.pory"
LittlerootTown_NewHouse_EventScript_EeeveeLR::
# 20 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	lock
# 21 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	faceplayer
# 22 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	playmoncry SPECIES_EEVEE, CRY_MODE_NORMAL
# 23 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	waitmoncry
# 24 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	release
# 25 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	end
# 26 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 27 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 28 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 29 "data/maps/LittlerootTown_NewHouse/scripts.pory"
LittlerootTown_NewHouse_Text_L_woman:
# 30 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "Back in the day, we were trainers.\n"
# 31 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "Now we just chill here with our eevees.\p"
# 32 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "It's good when you find your soulmate,\n"
# 33 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "but sometimes I miss the hard battles!$"
# 34 "data/maps/LittlerootTown_NewHouse/scripts.pory"

# 35 "data/maps/LittlerootTown_NewHouse/scripts.pory"
LittlerootTown_NewHouse_Text_Girlfriend:
# 36 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "My girlfriend always talks about\n"
# 37 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "her battling days, but I think this\l"
# 38 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "peaceful life suits us perfectly.\p"
# 39 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "Our Eevees seem to agree!\n"
# 40 "data/maps/LittlerootTown_NewHouse/scripts.pory"
	.string "They love our cozy home.$"
