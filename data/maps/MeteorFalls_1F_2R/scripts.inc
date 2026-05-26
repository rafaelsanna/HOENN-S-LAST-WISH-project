# 1 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 2 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_MapScripts::
# 3 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.byte 0
# 4 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 5 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_Nicolas::
# 6 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	trainerbattle_single TRAINER_NICOLAS_1, MeteorFalls_1F_2R_Text_NicolasIntro, MeteorFalls_1F_2R_Text_NicolasDefeat, MeteorFalls_1F_2R_EventScript_RegisterNicolas
# 7 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 8 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MeteorFalls_1F_2R_EventScript_RematchNicolas
# 9 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_NicolasPostBattle, MSGBOX_DEFAULT
# 10 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	release
# 11 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 12 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 13 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_RegisterNicolas::
# 14 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 15 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	waitmovement 0
# 16 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	release
# 17 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 18 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 19 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_RematchNicolas::
# 20 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	trainerbattle_rematch TRAINER_NICOLAS_1, MeteorFalls_1F_2R_Text_NicolasRematchIntro, MeteorFalls_1F_2R_Text_NicolasRematchDefeat
# 21 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_NicolasPostRematch, MSGBOX_AUTOCLOSE
# 22 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 23 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 24 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_John::
# 25 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	trainerbattle_double TRAINER_JOHN_AND_JAY_1, MeteorFalls_1F_2R_Text_JohnIntro, MeteorFalls_1F_2R_Text_JohnDefeat, MeteorFalls_1F_2R_Text_JohnNotEnoughMons, MeteorFalls_1F_2R_EventScript_RegisterJohn
# 26 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 27 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MeteorFalls_1F_2R_EventScript_RematchJohn
# 28 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_JohnPostBattle, MSGBOX_DEFAULT
# 29 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	release
# 30 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 31 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 32 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_RegisterJohn::
# 33 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	release
# 34 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 35 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 36 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_RematchJohn::
# 37 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	trainerbattle_rematch_double TRAINER_JOHN_AND_JAY_1, MeteorFalls_1F_2R_Text_JohnRematchIntro, MeteorFalls_1F_2R_Text_JohnRematchDefeat, MeteorFalls_1F_2R_Text_JohnRematchNotEnoughMons
# 38 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_JohnPostRematch, MSGBOX_AUTOCLOSE
# 39 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 40 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 41 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_Jay::
# 42 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	trainerbattle_double TRAINER_JOHN_AND_JAY_1, MeteorFalls_1F_2R_Text_JayIntro, MeteorFalls_1F_2R_Text_JayDefeat, MeteorFalls_1F_2R_Text_JayNotEnoughMons, MeteorFalls_1F_2R_EventScript_RegisterJay
# 43 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 44 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MeteorFalls_1F_2R_EventScript_RematchJay
# 45 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_JayPostBattle, MSGBOX_DEFAULT
# 46 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	release
# 47 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 48 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 49 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_RegisterJay::
# 50 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_JohnRegister, MSGBOX_DEFAULT  @ John speaks for both during register
# 51 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	register_matchcall TRAINER_JOHN_AND_JAY_1
# 52 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	release
# 53 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 54 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 55 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_EventScript_RematchJay::
# 56 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	trainerbattle_rematch_double TRAINER_JOHN_AND_JAY_1, MeteorFalls_1F_2R_Text_JayRematchIntro, MeteorFalls_1F_2R_Text_JayRematchDefeat, MeteorFalls_1F_2R_Text_JayRematchNotEnoughMons
# 57 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	msgbox MeteorFalls_1F_2R_Text_JayPostRematch, MSGBOX_AUTOCLOSE
# 58 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	end
# 59 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 60 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasIntro:
# 61 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "This is where we DRAGON users do our\n"
# 62 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "training.\p"
# 63 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "The CHAMPION even visits.\n"
# 64 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Now do you see how special it is here?$"
# 65 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 66 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasDefeat:
# 67 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Urgh!\n"
# 68 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "I didn't expect you to be so strong!$"
# 69 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 70 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasPostBattle:
# 71 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "The road ahead remains long and harsh.\p"
# 72 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "When will my POKéMON and I become\n"
# 73 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "the best?$"
# 74 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 75 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasRegister:
# 76 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "I want to know more about your power.\n"
# 77 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Let me register you in my POKéNAV.$"
# 78 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 79 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasRematchIntro:
# 80 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Since we met, we have trained hard\n"
# 81 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "with our sights on number one.\p"
# 82 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Help us see how much stronger we've\n"
# 83 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "become!$"
# 84 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 85 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasRematchDefeat:
# 86 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Urgh!\n"
# 87 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "I didn't expect you to be so strong!$"
# 88 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 89 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_NicolasPostRematch:
# 90 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "You've obviously kept up your\n"
# 91 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "POKéMON training.\p"
# 92 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "So long as you remain strong, I, too,\n"
# 93 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "can become stronger!$"
# 94 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 95 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnIntro:
# 96 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: We've always battled POKéMON\n"
# 97 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "together as a twosome.\l"
# 98 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've confidence in ourselves.$"
# 99 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 100 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnDefeat:
# 101 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: Oh, my.\n"
# 102 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've lost, dear wife.$"
# 103 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 104 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnPostBattle:
# 105 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: We've been married for\n"
# 106 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "fifty years.\p"
# 107 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Come to think of it, I've yet to beat\n"
# 108 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "my dear wife in a battle.$"
# 109 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 110 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnNotEnoughMons:
# 111 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: Well, well, what a young TRAINER!\p"
# 112 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Will you battle with us? If so, you'll\n"
# 113 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "have to return with more POKéMON.$"
# 114 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 115 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnRegister:
# 116 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: Young TRAINER, if the chance\n"
# 117 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "arises, will you battle with us again?$"
# 118 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 119 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayIntro:
# 120 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: We've been married for\n"
# 121 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "fifty years.\p"
# 122 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "The bond we share as a couple could\n"
# 123 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "never be broken.$"
# 124 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 125 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayDefeat:
# 126 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: Oh, dear.\n"
# 127 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've lost, my dear husband.$"
# 128 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 129 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayPostBattle:
# 130 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: Fifty years of marriage…\p"
# 131 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "If we ever argued, we always settled\n"
# 132 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "it with a POKéMON battle…$"
# 133 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 134 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayNotEnoughMons:
# 135 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: Well, well, aren't you a young\n"
# 136 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "TRAINER?\p"
# 137 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "If you'd care to battle with us, you'll\n"
# 138 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "have to come back with more POKéMON.$"
# 139 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 140 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnRematchIntro:
# 141 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: We've always battled POKéMON\n"
# 142 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "together as a twosome.\l"
# 143 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've confidence in ourselves.$"
# 144 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 145 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnRematchDefeat:
# 146 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: Oh, my.\n"
# 147 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've lost, dear wife.$"
# 148 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 149 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnPostRematch:
# 150 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: Married for fifty years…\p"
# 151 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "On reflection, the dear wife and I,\n"
# 152 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "we battled day in and day out…$"
# 153 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 154 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JohnRematchNotEnoughMons:
# 155 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JOHN: Well, well, what a young TRAINER!\p"
# 156 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Will you battle with us? If so, you'll\n"
# 157 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "have to return with more POKéMON.$"
# 158 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 159 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayRematchIntro:
# 160 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: We've been married for\n"
# 161 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "fifty years.\p"
# 162 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've supported each other all that\n"
# 163 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "time. We've made ourselves strong.$"
# 164 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 165 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayRematchDefeat:
# 166 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: Oh, dear.\n"
# 167 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "We've lost, my dear husband.$"
# 168 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 169 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayPostRematch:
# 170 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: Fifty years of marriage…\n"
# 171 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "Many things have happened.\p"
# 172 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "I hope that we will continue to make\n"
# 173 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "happy memories together.$"
# 174 "data/maps/MeteorFalls_1F_2R/scripts.pory"

# 175 "data/maps/MeteorFalls_1F_2R/scripts.pory"
MeteorFalls_1F_2R_Text_JayRematchNotEnoughMons:
# 176 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "JAY: Well, well, aren't you a young\n"
# 177 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "TRAINER?\p"
# 178 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "If you'd care to battle with us, you'll\n"
# 179 "data/maps/MeteorFalls_1F_2R/scripts.pory"
	.string "have to come back with more POKéMON.$"
