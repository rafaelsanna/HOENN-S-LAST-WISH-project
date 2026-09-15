# 1 "data/maps/MtPyre_3F/scripts.pory"

# 2 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_MapScripts::
# 3 "data/maps/MtPyre_3F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_3F_OnTransition
# 4 "data/maps/MtPyre_3F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, MtPyre_3F_OnWarpIntoMap
# 5 "data/maps/MtPyre_3F/scripts.pory"
	.byte 0
# 6 "data/maps/MtPyre_3F/scripts.pory"

# 7 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_OnTransition::
# 8 "data/maps/MtPyre_3F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 9 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_3F_OnTransition_End
# 10 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_3F_OnTransition_End
# 11 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_3F_OnTransition_End
# 12 "data/maps/MtPyre_3F/scripts.pory"
	gettimeofday
# 13 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_3F_OnTransition_End
# 14 "data/maps/MtPyre_3F/scripts.pory"
	random 5
# 15 "data/maps/MtPyre_3F/scripts.pory"
	copyvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, VAR_RESULT
# 16 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_eq VAR_MOSSDEEP_TEDDIURSA_FLOOR, 2, MtPyre_3F_ShowTeddiursa
# 17 "data/maps/MtPyre_3F/scripts.pory"
	goto MtPyre_3F_OnTransition_End
# 18 "data/maps/MtPyre_3F/scripts.pory"

# 19 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_ShowTeddiursa:
# 20 "data/maps/MtPyre_3F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 21 "data/maps/MtPyre_3F/scripts.pory"

# 22 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_OnTransition_End:
# 23 "data/maps/MtPyre_3F/scripts.pory"
	end
# 24 "data/maps/MtPyre_3F/scripts.pory"

# 25 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_OnWarpIntoMap:
# 26 "data/maps/MtPyre_3F/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, MtPyre_3F_EventScript_UpdateTeddiursaVisibility
# 27 "data/maps/MtPyre_3F/scripts.pory"
	.2byte 0
# 28 "data/maps/MtPyre_3F/scripts.pory"

# 29 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_EventScript_UpdateTeddiursaVisibility:
# 30 "data/maps/MtPyre_3F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 31 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_3F_HideTeddiursa
# 32 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_3F_HideTeddiursa
# 33 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_3F_HideTeddiursa
# 34 "data/maps/MtPyre_3F/scripts.pory"
	gettimeofday
# 35 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_3F_HideTeddiursa
# 36 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_ne VAR_MOSSDEEP_TEDDIURSA_FLOOR, 2, MtPyre_3F_HideTeddiursa
# 37 "data/maps/MtPyre_3F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 38 "data/maps/MtPyre_3F/scripts.pory"
	end
# 39 "data/maps/MtPyre_3F/scripts.pory"

# 40 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_HideTeddiursa:
# 41 "data/maps/MtPyre_3F/scripts.pory"
	removeobject LOCALID_MT_PYRE_3F_TEDDIURSA
# 42 "data/maps/MtPyre_3F/scripts.pory"
	end
# 43 "data/maps/MtPyre_3F/scripts.pory"

# 44 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_EventScript_William::
# 45 "data/maps/MtPyre_3F/scripts.pory"
	trainerbattle_single TRAINER_WILLIAM, MtPyre_3F_Text_WilliamIntro, MtPyre_3F_Text_WilliamDefeat
# 46 "data/maps/MtPyre_3F/scripts.pory"
	msgbox MtPyre_3F_Text_WilliamPostBattle, MSGBOX_AUTOCLOSE
# 47 "data/maps/MtPyre_3F/scripts.pory"
	end
# 48 "data/maps/MtPyre_3F/scripts.pory"

# 49 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_EventScript_Kayla::
# 50 "data/maps/MtPyre_3F/scripts.pory"
	trainerbattle_single TRAINER_KAYLA, MtPyre_3F_Text_KaylaIntro, MtPyre_3F_Text_KaylaDefeat
# 51 "data/maps/MtPyre_3F/scripts.pory"
	msgbox MtPyre_3F_Text_KaylaPostBattle, MSGBOX_AUTOCLOSE
# 52 "data/maps/MtPyre_3F/scripts.pory"
	end
# 53 "data/maps/MtPyre_3F/scripts.pory"

# 54 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_EventScript_Gabrielle::
# 55 "data/maps/MtPyre_3F/scripts.pory"
	trainerbattle_single TRAINER_GABRIELLE_1, MtPyre_3F_Text_GabrielleIntro, MtPyre_3F_Text_GabrielleDefeat
# 56 "data/maps/MtPyre_3F/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 57 "data/maps/MtPyre_3F/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtPyre_3F_EventScript_RematchGabrielle
# 58 "data/maps/MtPyre_3F/scripts.pory"
	msgbox MtPyre_3F_Text_GabriellePostBattle, MSGBOX_DEFAULT
# 59 "data/maps/MtPyre_3F/scripts.pory"
	release
# 60 "data/maps/MtPyre_3F/scripts.pory"
	end
# 61 "data/maps/MtPyre_3F/scripts.pory"

# 62 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_EventScript_RegisterGabrielle::
# 63 "data/maps/MtPyre_3F/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 64 "data/maps/MtPyre_3F/scripts.pory"
	waitmovement 0
# 65 "data/maps/MtPyre_3F/scripts.pory"
	release
# 66 "data/maps/MtPyre_3F/scripts.pory"
	end
# 67 "data/maps/MtPyre_3F/scripts.pory"

# 68 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_EventScript_RematchGabrielle::
# 69 "data/maps/MtPyre_3F/scripts.pory"
	trainerbattle_rematch TRAINER_GABRIELLE_1, MtPyre_3F_Text_GabrielleRematchIntro, MtPyre_3F_Text_GabrielleRematchDefeat
# 70 "data/maps/MtPyre_3F/scripts.pory"
	msgbox MtPyre_3F_Text_GabriellePostRematch, MSGBOX_AUTOCLOSE
# 71 "data/maps/MtPyre_3F/scripts.pory"
	end
# 72 "data/maps/MtPyre_3F/scripts.pory"

# 73 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_WilliamIntro:
# 74 "data/maps/MtPyre_3F/scripts.pory"
	.string "The rich atmosphere of the mountain\n"
# 75 "data/maps/MtPyre_3F/scripts.pory"
	.string "has elevated my psychic power!\p"
# 76 "data/maps/MtPyre_3F/scripts.pory"
	.string "A mere child like you…\n"
# 77 "data/maps/MtPyre_3F/scripts.pory"
	.string "You dream of winning?$"
# 78 "data/maps/MtPyre_3F/scripts.pory"

# 79 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_WilliamDefeat:
# 80 "data/maps/MtPyre_3F/scripts.pory"
	.string "I drown in self-pity…$"
# 81 "data/maps/MtPyre_3F/scripts.pory"

# 82 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_WilliamPostBattle:
# 83 "data/maps/MtPyre_3F/scripts.pory"
	.string "My psychic powers have surely\n"
# 84 "data/maps/MtPyre_3F/scripts.pory"
	.string "grown several times, but…$"
# 85 "data/maps/MtPyre_3F/scripts.pory"

# 86 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_KaylaIntro:
# 87 "data/maps/MtPyre_3F/scripts.pory"
	.string "Ahahahaha!\p"
# 88 "data/maps/MtPyre_3F/scripts.pory"
	.string "This is no place for children, least\n"
# 89 "data/maps/MtPyre_3F/scripts.pory"
	.string "of all you!$"
# 90 "data/maps/MtPyre_3F/scripts.pory"

# 91 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_KaylaDefeat:
# 92 "data/maps/MtPyre_3F/scripts.pory"
	.string "I lost that cleanly…$"
# 93 "data/maps/MtPyre_3F/scripts.pory"

# 94 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_KaylaPostBattle:
# 95 "data/maps/MtPyre_3F/scripts.pory"
	.string "This means my training is still not\n"
# 96 "data/maps/MtPyre_3F/scripts.pory"
	.string "enough…\p"
# 97 "data/maps/MtPyre_3F/scripts.pory"
	.string "I've got to keep working toward the\n"
# 98 "data/maps/MtPyre_3F/scripts.pory"
	.string "summit…\p"
# 99 "data/maps/MtPyre_3F/scripts.pory"
	.string "Go, me!$"
# 100 "data/maps/MtPyre_3F/scripts.pory"

# 101 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabrielleIntro:
# 102 "data/maps/MtPyre_3F/scripts.pory"
	.string "Why have you come here?$"
# 103 "data/maps/MtPyre_3F/scripts.pory"

# 104 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabrielleDefeat:
# 105 "data/maps/MtPyre_3F/scripts.pory"
	.string "That was amazing!\n"
# 106 "data/maps/MtPyre_3F/scripts.pory"
	.string "You're a very special TRAINER.$"
# 107 "data/maps/MtPyre_3F/scripts.pory"

# 108 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabriellePostBattle:
# 109 "data/maps/MtPyre_3F/scripts.pory"
	.string "POKéMON no longer of this world.\n"
# 110 "data/maps/MtPyre_3F/scripts.pory"
	.string "POKéMON that are with you now.\p"
# 111 "data/maps/MtPyre_3F/scripts.pory"
	.string "And the POKéMON that you will meet\n"
# 112 "data/maps/MtPyre_3F/scripts.pory"
	.string "in the future…\p"
# 113 "data/maps/MtPyre_3F/scripts.pory"
	.string "They are all to be equally cherished.\n"
# 114 "data/maps/MtPyre_3F/scripts.pory"
	.string "Please remember that.$"
# 115 "data/maps/MtPyre_3F/scripts.pory"

# 116 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabrielleRegister:
# 117 "data/maps/MtPyre_3F/scripts.pory"
	.string "I would like to see your POKéMON\n"
# 118 "data/maps/MtPyre_3F/scripts.pory"
	.string "when they grow up some more…\p"
# 119 "data/maps/MtPyre_3F/scripts.pory"
	.string "Please, I need to see your POKéNAV.$"
# 120 "data/maps/MtPyre_3F/scripts.pory"

# 121 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabrielleRematchIntro:
# 122 "data/maps/MtPyre_3F/scripts.pory"
	.string "Oh, it's you…\p"
# 123 "data/maps/MtPyre_3F/scripts.pory"
	.string "Have you come to show me your grown\n"
# 124 "data/maps/MtPyre_3F/scripts.pory"
	.string "POKéMON?$"
# 125 "data/maps/MtPyre_3F/scripts.pory"

# 126 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabrielleRematchDefeat:
# 127 "data/maps/MtPyre_3F/scripts.pory"
	.string "How amazing!\n"
# 128 "data/maps/MtPyre_3F/scripts.pory"
	.string "You are a special person.$"
# 129 "data/maps/MtPyre_3F/scripts.pory"

# 130 "data/maps/MtPyre_3F/scripts.pory"
MtPyre_3F_Text_GabriellePostRematch:
# 131 "data/maps/MtPyre_3F/scripts.pory"
	.string "POKéMON no longer of this world.\n"
# 132 "data/maps/MtPyre_3F/scripts.pory"
	.string "POKéMON that are with you now.\p"
# 133 "data/maps/MtPyre_3F/scripts.pory"
	.string "And the POKéMON that you will meet\n"
# 134 "data/maps/MtPyre_3F/scripts.pory"
	.string "in the future…\p"
# 135 "data/maps/MtPyre_3F/scripts.pory"
	.string "They are all to be equally cherished.\n"
# 136 "data/maps/MtPyre_3F/scripts.pory"
	.string "I see that you've remembered that.$"
