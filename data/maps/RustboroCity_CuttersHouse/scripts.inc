RustboroCity_CuttersHouse_MapScripts::
	.byte 0


Elder::
# 4 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	lock
# 5 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	faceplayer
# 6 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	msgbox ElderDialogue, MSGBOX_NPC
# 7 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	clearflag FLAG_HIDE_CUTTER
# 8 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	release
	end


CuttersGrandma::
# 23 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	lock
# 24 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	faceplayer
# 25 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	msgbox CuttersGrandmaDialogue, MSGBOX_NPC
# 26 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	release
	end


ElderDialogue::
# 12 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	.string "That determined expression...\p The limber way you move...\l And your well-trained POKéMON…\p You seem like a skilled TRAINER!\p My granddaughter is in Rusturf\n Grove practicing her cutting.\p You should go battle her!$"

CuttersGrandmaDialogue::
# 30 "data/maps/RustboroCity_CuttersHouse/scripts.pory"
	.string "When they were expanding the city of\n RUSTBORO, my husband helped out.\p He made his POKéMON use the hidden\n technique CUT to clear the land of\p the many trees that once were here.$"
