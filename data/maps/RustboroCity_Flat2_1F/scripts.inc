# 1 "data/maps/RustboroCity_Flat2_1F/scripts.pory"

# 2 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
RustboroCity_Flat2_1F_MapScripts::
# 3 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_Flat2_1F/scripts.pory"

# 5 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
RustboroCity_Flat2_1F_EventScript_OldWoman::
# 6 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	msgbox RustboroCity_Flat2_1F_Text_DevonWorkersLiveHere, MSGBOX_NPC
# 7 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	end
# 8 "data/maps/RustboroCity_Flat2_1F/scripts.pory"

# 9 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
RustboroCity_Flat2_1F_EventScript_Skitty::
# 10 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	lock
# 11 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	faceplayer
# 12 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	waitse
# 13 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	playmoncry SPECIES_SKITTY, CRY_MODE_NORMAL
# 14 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	msgbox RustboroCity_Flat2_1F_Text_Skitty, MSGBOX_DEFAULT
# 15 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	waitmoncry
# 16 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	release
# 17 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	end
# 18 "data/maps/RustboroCity_Flat2_1F/scripts.pory"

# 19 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
RustboroCity_Flat2_1F_Text_DevonWorkersLiveHere:
# 20 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	.string "This old building has been here since\n"
# 21 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	.string "before I was a bride. My husband was\l"
# 22 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	.string "one of the workers who built it. Now\l"
# 23 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	.string "it's just me, staring at these walls.$"
# 24 "data/maps/RustboroCity_Flat2_1F/scripts.pory"

# 25 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
RustboroCity_Flat2_1F_Text_Skitty:
# 26 "data/maps/RustboroCity_Flat2_1F/scripts.pory"
	.string "SKITTY: Gyaaaah!$"
