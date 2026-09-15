# 1 "data/maps/MtPyre_5F/scripts.pory"

# 2 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_MapScripts::
# 3 "data/maps/MtPyre_5F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_5F_OnTransition
# 4 "data/maps/MtPyre_5F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, MtPyre_5F_OnWarpIntoMap
# 5 "data/maps/MtPyre_5F/scripts.pory"
	.byte 0
# 6 "data/maps/MtPyre_5F/scripts.pory"

# 7 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_OnTransition::
# 8 "data/maps/MtPyre_5F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 9 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_5F_OnTransition_End
# 10 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_5F_OnTransition_End
# 11 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_5F_OnTransition_End
# 12 "data/maps/MtPyre_5F/scripts.pory"
	gettimeofday
# 13 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_5F_OnTransition_End
# 14 "data/maps/MtPyre_5F/scripts.pory"
	random 5
# 15 "data/maps/MtPyre_5F/scripts.pory"
	copyvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, VAR_RESULT
# 16 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_eq VAR_MOSSDEEP_TEDDIURSA_FLOOR, 4, MtPyre_5F_ShowTeddiursa
# 17 "data/maps/MtPyre_5F/scripts.pory"
	goto MtPyre_5F_OnTransition_End
# 18 "data/maps/MtPyre_5F/scripts.pory"

# 19 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_ShowTeddiursa:
# 20 "data/maps/MtPyre_5F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 21 "data/maps/MtPyre_5F/scripts.pory"

# 22 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_OnTransition_End:
# 23 "data/maps/MtPyre_5F/scripts.pory"
	end
# 24 "data/maps/MtPyre_5F/scripts.pory"

# 25 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_OnWarpIntoMap:
# 26 "data/maps/MtPyre_5F/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, MtPyre_5F_EventScript_UpdateTeddiursaVisibility
# 27 "data/maps/MtPyre_5F/scripts.pory"
	.2byte 0
# 28 "data/maps/MtPyre_5F/scripts.pory"

# 29 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_EventScript_UpdateTeddiursaVisibility:
# 30 "data/maps/MtPyre_5F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 31 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_5F_HideTeddiursa
# 32 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_5F_HideTeddiursa
# 33 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_5F_HideTeddiursa
# 34 "data/maps/MtPyre_5F/scripts.pory"
	gettimeofday
# 35 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_5F_HideTeddiursa
# 36 "data/maps/MtPyre_5F/scripts.pory"
	goto_if_ne VAR_MOSSDEEP_TEDDIURSA_FLOOR, 4, MtPyre_5F_HideTeddiursa
# 37 "data/maps/MtPyre_5F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 38 "data/maps/MtPyre_5F/scripts.pory"
	end
# 39 "data/maps/MtPyre_5F/scripts.pory"

# 40 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_5F_HideTeddiursa:
# 41 "data/maps/MtPyre_5F/scripts.pory"
	removeobject LOCALID_MT_PYRE_5F_TEDDIURSA
# 42 "data/maps/MtPyre_5F/scripts.pory"
	end
# 43 "data/maps/MtPyre_5F/scripts.pory"

# 44 "data/maps/MtPyre_5F/scripts.pory"
@ Seems like the scripts for the 4F and 5F were swapped
# 45 "data/maps/MtPyre_5F/scripts.pory"

# 46 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_4F_EventScript_Tasha::
# 47 "data/maps/MtPyre_5F/scripts.pory"
	trainerbattle_single TRAINER_TASHA, MtPyre_4F_Text_TashaIntro, MtPyre_4F_Text_TashaDefeat
# 48 "data/maps/MtPyre_5F/scripts.pory"
	msgbox MtPyre_4F_Text_TashaPostBattle, MSGBOX_AUTOCLOSE
# 49 "data/maps/MtPyre_5F/scripts.pory"
	end
# 50 "data/maps/MtPyre_5F/scripts.pory"

# 51 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_4F_Text_TashaIntro:
# 52 "data/maps/MtPyre_5F/scripts.pory"
	.string "I love all things horrifying…\n"
# 53 "data/maps/MtPyre_5F/scripts.pory"
	.string "It's like a disease…\p"
# 54 "data/maps/MtPyre_5F/scripts.pory"
	.string "When I'm here…\n"
# 55 "data/maps/MtPyre_5F/scripts.pory"
	.string "I shiver with fear…$"
# 56 "data/maps/MtPyre_5F/scripts.pory"

# 57 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_4F_Text_TashaDefeat:
# 58 "data/maps/MtPyre_5F/scripts.pory"
	.string "Losing, I dislike…$"
# 59 "data/maps/MtPyre_5F/scripts.pory"

# 60 "data/maps/MtPyre_5F/scripts.pory"
MtPyre_4F_Text_TashaPostBattle:
# 61 "data/maps/MtPyre_5F/scripts.pory"
	.string "I want to see dreadful things…\n"
# 62 "data/maps/MtPyre_5F/scripts.pory"
	.string "I can't leave…\p"
# 63 "data/maps/MtPyre_5F/scripts.pory"
	.string "Stay…\n"
# 64 "data/maps/MtPyre_5F/scripts.pory"
	.string "Won't you stay with me?$"
