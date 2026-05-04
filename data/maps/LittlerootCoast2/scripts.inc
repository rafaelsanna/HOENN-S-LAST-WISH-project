LittlerootCoast2_MapScripts::
	.byte 0

@ ============================================================
@ Aqua Admin Lazuli - Littleroot Coast 2
@ ============================================================
LittlerootCoast2_AquaAdmLazuli::
	trainerbattle_single TRAINER_LAZULI_1, LittlerootCoast2_Text_Lazuli_Intro, LittlerootCoast2_Text_Lazuli_Defeat
	setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
	msgbox LittlerootCoast2_Text_Lazuli_PostBattle, MSGBOX_AUTOCLOSE
	end

LittlerootCoast2_Text_Lazuli_Intro:
	.string "Well, well…\n"
	.string "Another trainer wandering where\l"
	.string "they don't belong.\p"
	.string "Team Aqua controls these waters.\n"
	.string "Every ship that dares to cross\l"
	.string "without our blessing…\p"
	.string "Sinks.\p"
	.string "We cut the routes. We own the sea.\n"
	.string "Hoenn is ours to reshape.\p"
	.string "I am Admin LAZULI.\n"
	.string "And you are in my way.$"

LittlerootCoast2_Text_Lazuli_Defeat:
	.string "LAZULI: …Impossible.\n"
	.string "The sea betrayed me.$"

LittlerootCoast2_Text_Lazuli_PostBattle:
	.string "LAZULI: The routes will open…\n"
	.string "for now.\p"
	.string "But the sea remembers everything,\n"
	.string "trainer.\p"
	.string "And so do I.$"

