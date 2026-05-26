# 1 "data/maps/LittlerootCoast2/scripts.pory"

# 2 "data/maps/LittlerootCoast2/scripts.pory"
LittlerootCoast2_MapScripts::
# 3 "data/maps/LittlerootCoast2/scripts.pory"
	.byte 0
# 4 "data/maps/LittlerootCoast2/scripts.pory"

# 5 "data/maps/LittlerootCoast2/scripts.pory"
@ ============================================================
# 6 "data/maps/LittlerootCoast2/scripts.pory"
@ Aqua Admin Lazuli - Littleroot Coast 2
# 7 "data/maps/LittlerootCoast2/scripts.pory"
@ ============================================================
# 8 "data/maps/LittlerootCoast2/scripts.pory"
LittlerootCoast2_AquaAdmLazuli::
# 9 "data/maps/LittlerootCoast2/scripts.pory"
	trainerbattle_single TRAINER_LAZULI_1, LittlerootCoast2_Text_Lazuli_Intro, LittlerootCoast2_Text_Lazuli_Defeat
# 10 "data/maps/LittlerootCoast2/scripts.pory"
	//////setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
# 11 "data/maps/LittlerootCoast2/scripts.pory"
	msgbox LittlerootCoast2_Text_Lazuli_PostBattle, MSGBOX_AUTOCLOSE
# 12 "data/maps/LittlerootCoast2/scripts.pory"
	end
# 13 "data/maps/LittlerootCoast2/scripts.pory"

# 14 "data/maps/LittlerootCoast2/scripts.pory"
LittlerootCoast2_Text_Lazuli_Intro:
# 15 "data/maps/LittlerootCoast2/scripts.pory"
	.string "Well, well…\n"
# 16 "data/maps/LittlerootCoast2/scripts.pory"
	.string "Another trainer wandering where\l"
# 17 "data/maps/LittlerootCoast2/scripts.pory"
	.string "they don't belong.\p"
# 18 "data/maps/LittlerootCoast2/scripts.pory"
	.string "Team Aqua controls these waters.\n"
# 19 "data/maps/LittlerootCoast2/scripts.pory"
	.string "Every ship that dares to cross\l"
# 20 "data/maps/LittlerootCoast2/scripts.pory"
	.string "without our blessing…\p"
# 21 "data/maps/LittlerootCoast2/scripts.pory"
	.string "Sinks.\p"
# 22 "data/maps/LittlerootCoast2/scripts.pory"
	.string "We cut the routes. We own the sea.\n"
# 23 "data/maps/LittlerootCoast2/scripts.pory"
	.string "Hoenn is ours to reshape.\p"
# 24 "data/maps/LittlerootCoast2/scripts.pory"
	.string "I am Admin LAZULI.\n"
# 25 "data/maps/LittlerootCoast2/scripts.pory"
	.string "And you are in my way.$"
# 26 "data/maps/LittlerootCoast2/scripts.pory"

# 27 "data/maps/LittlerootCoast2/scripts.pory"
LittlerootCoast2_Text_Lazuli_Defeat:
# 28 "data/maps/LittlerootCoast2/scripts.pory"
	.string "LAZULI: …Impossible.\n"
# 29 "data/maps/LittlerootCoast2/scripts.pory"
	.string "The sea betrayed me.$"
# 30 "data/maps/LittlerootCoast2/scripts.pory"

# 31 "data/maps/LittlerootCoast2/scripts.pory"
LittlerootCoast2_Text_Lazuli_PostBattle:
# 32 "data/maps/LittlerootCoast2/scripts.pory"
	.string "LAZULI: The routes will open…\n"
# 33 "data/maps/LittlerootCoast2/scripts.pory"
	.string "for now.\p"
# 34 "data/maps/LittlerootCoast2/scripts.pory"
	.string "But the sea remembers everything,\n"
# 35 "data/maps/LittlerootCoast2/scripts.pory"
	.string "trainer.\p"
# 36 "data/maps/LittlerootCoast2/scripts.pory"
	.string "And so do I.$"
