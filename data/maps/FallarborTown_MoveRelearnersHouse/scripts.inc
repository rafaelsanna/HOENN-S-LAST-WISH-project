# 1 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 2 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_MapScripts::
# 3 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.byte 0
# 4 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 5 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_MoveRelearner::
# 6 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	lock
# 7 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	faceplayer
# 8 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto_if_set FLAG_TEMP_1, FallarborTown_MoveRelearnersHouse_EventScript_AskTeachMove
# 9 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_ImTheMoveTutor, MSGBOX_DEFAULT
# 10 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	setflag FLAG_TEMP_1
# 11 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto FallarborTown_MoveRelearnersHouse_EventScript_AskTeachMove
# 12 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 13 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 14 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_AskTeachMove::
# 15 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_WantMeToTeachMove, MSGBOX_YESNO
# 16 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	switch VAR_RESULT
# 17 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	case NO, FallarborTown_MoveRelearnersHouse_EventScript_DeclineTeach
# 18 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto FallarborTown_MoveRelearnersHouse_EventScript_ChooseMon
# 19 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 20 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 21 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_DeclineTeach::
# 22 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_DoVisitAgain, MSGBOX_DEFAULT
# 23 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	release
# 24 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 25 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 26 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_ChooseMon::
# 27 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_TutorWhichMon, MSGBOX_DEFAULT
# 28 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	special ChooseMonForMoveRelearner
# 29 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	waitstate
# 30 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto_if_eq VAR_0x8004, PARTY_NOTHING_CHOSEN, FallarborTown_MoveRelearnersHouse_EventScript_DeclineTeach
# 31 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	special IsSelectedMonEgg
# 32 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, FallarborTown_MoveRelearnersHouse_EventScript_CantTeachEgg
# 33 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto_if_eq VAR_0x8005, 0, FallarborTown_MoveRelearnersHouse_EventScript_NoMoveToTeachMon
# 34 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto FallarborTown_MoveRelearnersHouse_EventScript_ChooseMove
# 35 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 36 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 37 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_ChooseMove::
# 38 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_TeachWhichMove, MSGBOX_DEFAULT
# 39 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	special TeachMoveRelearnerMove
# 40 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	waitstate
# 41 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto_if_eq VAR_0x8004, 0, FallarborTown_MoveRelearnersHouse_EventScript_ChooseMon
# 42 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_TeachMoveForFree, MSGBOX_DEFAULT
# 43 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	release
# 44 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 45 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 46 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_NoMoveToTeachMon::
# 47 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_DontHaveMoveToTeachPokemon, MSGBOX_DEFAULT
# 48 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto FallarborTown_MoveRelearnersHouse_EventScript_ChooseMon
# 49 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 50 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 51 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_EventScript_CantTeachEgg::
# 52 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	msgbox FallarborTown_MoveRelearnersHouse_Text_CantTeachEgg, MSGBOX_DEFAULT
# 53 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	goto FallarborTown_MoveRelearnersHouse_EventScript_ChooseMon
# 54 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	end
# 55 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 56 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_ImTheMoveTutor:
# 57 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "I was the MOVE TUTOR once...\p"
# 58 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "Back in the day, trainers would come\n"
# 59 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "to me when they wanted their POKéMON\l"
# 60 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "to remember old moves... Always...\p"
# 61 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "I'd charge a HEART SCALE for my\n"
# 62 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "services, and business was good.\p"
# 63 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "But nowadays… you can just teach\n"
# 64 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "your POKéMON those same moves\l"
# 65 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "yourself, without any help.\p"
# 66 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "So now? No one comes to see me\n"
# 67 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "anymore. I've fallen out of use.\p"
# 68 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "But… would you be interested in my\n"
# 69 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
.string "services anyway? The old-fashioned way?$"
# 70 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 71 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_WantMeToTeachMove:
# 72 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Ah, a trainer after my own heart!\n"
# 73 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Want me to teach a move the old-\l"
# 74 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "fashioned way?$"
# 75 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 76 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_TutorWhichMon:
# 77 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Which POKéMON needs tutoring?$"
# 78 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 79 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_TeachWhichMove:
# 80 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Which move should I teach?$"
# 81 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 82 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_DontHaveMoveToTeachPokemon:
# 83 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Sorry…\p"
# 84 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "It doesn't appear as if I have any move\n"
# 85 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "I can teach that POKéMON.$"
# 86 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 87 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_TeachMoveForFree:
# 88 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "There you go!\n"
# 89 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "A perfectly taught move!\p"
# 90 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "I may not get a HEART SCALE anymore,\n"
# 91 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "but seeing the joy on a trainer's face\l"
# 92 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "is payment enough.\p"
# 93 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Come back if you want to do this\n"
# 94 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "the proper way again!$"
# 95 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 96 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_DoVisitAgain:
# 97 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Hah! If you change your mind, you know\n"
# 98 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "where to find me.$"
# 99 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"

# 100 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
FallarborTown_MoveRelearnersHouse_Text_CantTeachEgg:
# 101 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "Hunh? There isn't a single move that\n"
# 102 "data/maps/FallarborTown_MoveRelearnersHouse/scripts.pory"
	.string "I can teach an EGG.$"
