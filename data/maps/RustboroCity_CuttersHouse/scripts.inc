# 1 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 2 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
RustboroCity_CuttersHouse_MapScripts::
# 3 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 5 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 6 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
Elder::
# 7 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 4 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 8 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	lock
# 9 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 5 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 10 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	faceplayer
# 11 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 6 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 12 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	msgbox ElderDialogue, MSGBOX_NPC
# 13 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 7 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 14 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	clearflag FLAG_HIDE_CUTTER
# 15 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 8 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 16 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	release
# 17 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	end
# 18 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 19 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 20 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
CuttersGrandma::
# 21 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 23 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 22 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	lock
# 23 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 24 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 24 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	faceplayer
# 25 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 25 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 26 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	msgbox CuttersGrandmaDialogue, MSGBOX_NPC
# 27 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 26 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 28 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	release
# 29 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	end
# 30 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 31 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 32 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
ElderDialogue::
# 33 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 12 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 34 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	.string "That determined expression...\p The limber way you move...\l And your well-trained POKéMON…\p You seem like a skilled TRAINER!\p My granddaughter is in Rusturf\n Grove practicing her cutting.\p You should go battle her!$"
# 35 "data/maps/RustboroCity_CuttersHouse/scripts.pory"

# 36 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
CuttersGrandmaDialogue::
# 37 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 30 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
# 38 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	.string "When they were expanding the city of\n RUSTBORO, my husband helped out.\p He made his POKéMON use the hidden\n technique CUT to clear the land of\l the many trees that once were here.$"
