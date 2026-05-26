# 1 "data/maps/RustboroCity_House2_2F/scripts.pory"

# 2 "data/maps/RustboroCity_House2_2F/scripts.pory"
RustboroCity_House2_2F_MapScripts::
# 3 "data/maps/RustboroCity_House2_2F/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_House2_2F/scripts.pory"

# 5 "data/maps/RustboroCity_House2_2F/scripts.pory"
RustboroCity_House2_2F_EventScript_PinsirEncounter::
# 6 "data/maps/RustboroCity_House2_2F/scripts.pory"
	lock
# 7 "data/maps/RustboroCity_House2_2F/scripts.pory"
	faceplayer
# 8 "data/maps/RustboroCity_House2_2F/scripts.pory"
	waitse
# 9 "data/maps/RustboroCity_House2_2F/scripts.pory"
	playmoncry SPECIES_PINSIR, CRY_MODE_NORMAL
# 10 "data/maps/RustboroCity_House2_2F/scripts.pory"
	msgbox RustboroCity_House2_2F_Text_PinsirEncounter, MSGBOX_DEFAULT
# 11 "data/maps/RustboroCity_House2_2F/scripts.pory"
	waitmoncry
# 12 "data/maps/RustboroCity_House2_2F/scripts.pory"
	release
# 13 "data/maps/RustboroCity_House2_2F/scripts.pory"
	end
# 14 "data/maps/RustboroCity_House2_2F/scripts.pory"

# 15 "data/maps/RustboroCity_House2_2F/scripts.pory"
RustboroCity_House2_2F_Text_PinsirEncounter:
# 16 "data/maps/RustboroCity_House2_2F/scripts.pory"
	.string "PINSIR: GYAAAAAH!\n"
# 17 "data/maps/RustboroCity_House2_2F/scripts.pory"
	.string "BEEP! BEEP! BEEP!\p"
# 18 "data/maps/RustboroCity_House2_2F/scripts.pory"
	.string "WHOAH! That's TERRIFYING!!!!!$"
