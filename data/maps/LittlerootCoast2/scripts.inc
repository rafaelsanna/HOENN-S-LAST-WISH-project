LittlerootCoast2_MapScripts::
	.byte 0

@ ============================================================
@ Aqua Admin Lazuli — blocks the route, double battle
@ Disappears after defeat via FLAG_AQUA_GRUNTS_PETALBURG_DONE
@ (same flag that clears the Aqua Grunt blockers in Petalburg)
@ ============================================================
LittlerootCoast2_AquaAdmLazuli::
	lockall
	faceplayer
	msgbox LittlerootCoast2_Text_Lazuli_Intro, MSGBOX_DEFAULT
	closemessage
	trainerbattle_double TRAINER_LAZULI_1, LittlerootCoast2_Text_Lazuli_BattleStart, LittlerootCoast2_Text_Lazuli_Defeat, LittlerootCoast2_EventScript_Lazuli_AfterBattle, LittlerootCoast2_Text_Lazuli_NeedMorePokemon
	end

LittlerootCoast2_EventScript_Lazuli_AfterBattle::
	msgbox LittlerootCoast2_Text_Lazuli_PostBattle1, MSGBOX_DEFAULT
	closemessage
	msgbox LittlerootCoast2_Text_Lazuli_PostBattle2, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_AQUA_GRUNTS_PETALBURG_DONE
	releaseall
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

LittlerootCoast2_Text_Lazuli_BattleStart:
	.string "LAZULI: Let the tide take you!$"

LittlerootCoast2_Text_Lazuli_Defeat:
	.string "LAZULI: …Impossible.\n"
	.string "The sea betrayed me.$"

LittlerootCoast2_Text_Lazuli_PostBattle1:
	.string "LAZULI: …You're stronger than\n"
	.string "I expected.\p"
	.string "Don't think this changes anything.\n"
	.string "Team Aqua's plans are already\l"
	.string "in motion.$"

LittlerootCoast2_Text_Lazuli_PostBattle2:
	.string "LAZULI: The routes will open…\n"
	.string "for now.\p"
	.string "But the sea remembers everything,\n"
	.string "trainer.\p"
	.string "And so do I.$"

LittlerootCoast2_Text_Lazuli_NeedMorePokemon:
	.string "LAZULI: You don't even have\n"
	.string "enough Pokémon to face me.\p"
	.string "Come back when you're ready\n"
	.string "to be crushed properly.$"

