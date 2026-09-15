# 1 "data/maps/MtPyre_6F/scripts.pory"

# 2 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_MapScripts::
# 3 "data/maps/MtPyre_6F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_6F_OnTransition
# 4 "data/maps/MtPyre_6F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, MtPyre_6F_OnWarpIntoMap
# 5 "data/maps/MtPyre_6F/scripts.pory"
	.byte 0
# 6 "data/maps/MtPyre_6F/scripts.pory"

# 7 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_OnTransition:
# 8 "data/maps/MtPyre_6F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 9 "data/maps/MtPyre_6F/scripts.pory"
	end
# 10 "data/maps/MtPyre_6F/scripts.pory"

# 11 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_OnWarpIntoMap:
# 12 "data/maps/MtPyre_6F/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, MtPyre_6F_EventScript_HideTeddiursa
# 13 "data/maps/MtPyre_6F/scripts.pory"
	.2byte 0
# 14 "data/maps/MtPyre_6F/scripts.pory"

# 15 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_EventScript_HideTeddiursa:
# 16 "data/maps/MtPyre_6F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 17 "data/maps/MtPyre_6F/scripts.pory"
	removeobject LOCALID_MT_PYRE_6F_TEDDIURSA
# 18 "data/maps/MtPyre_6F/scripts.pory"
	end
# 19 "data/maps/MtPyre_6F/scripts.pory"

# 20 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_EventScript_Valerie::
# 21 "data/maps/MtPyre_6F/scripts.pory"
	trainerbattle_single TRAINER_VALERIE_1, MtPyre_6F_Text_ValerieIntro, MtPyre_6F_Text_ValerieDefeat, MtPyre_6F_EventScript_RegisterValerie
# 22 "data/maps/MtPyre_6F/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 23 "data/maps/MtPyre_6F/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtPyre_6F_EventScript_RematchValerie
# 24 "data/maps/MtPyre_6F/scripts.pory"
	msgbox MtPyre_6F_Text_ValeriePostBattle, MSGBOX_DEFAULT
# 25 "data/maps/MtPyre_6F/scripts.pory"
	release
# 26 "data/maps/MtPyre_6F/scripts.pory"
	end
# 27 "data/maps/MtPyre_6F/scripts.pory"

# 28 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_EventScript_RegisterValerie::
# 29 "data/maps/MtPyre_6F/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 30 "data/maps/MtPyre_6F/scripts.pory"
	waitmovement 0
# 31 "data/maps/MtPyre_6F/scripts.pory"
	@ PokéNav removed msgbox MtPyre_6F_Text_ValerieRegister, MSGBOX_DEFAULT
# 32 "data/maps/MtPyre_6F/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_VALERIE_1
# 33 "data/maps/MtPyre_6F/scripts.pory"
	release
# 34 "data/maps/MtPyre_6F/scripts.pory"
	end
# 35 "data/maps/MtPyre_6F/scripts.pory"

# 36 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_EventScript_RematchValerie::
# 37 "data/maps/MtPyre_6F/scripts.pory"
	trainerbattle_rematch TRAINER_VALERIE_1, MtPyre_6F_Text_ValerieRematchIntro, MtPyre_6F_Text_ValerieRematchDefeat
# 38 "data/maps/MtPyre_6F/scripts.pory"
	msgbox MtPyre_6F_Text_ValeriePostRematch, MSGBOX_AUTOCLOSE
# 39 "data/maps/MtPyre_6F/scripts.pory"
	end
# 40 "data/maps/MtPyre_6F/scripts.pory"

# 41 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_EventScript_Cedric::
# 42 "data/maps/MtPyre_6F/scripts.pory"
	trainerbattle_single TRAINER_CEDRIC, MtPyre_6F_Text_CedricIntro, MtPyre_6F_Text_CedricDefeat
# 43 "data/maps/MtPyre_6F/scripts.pory"
	msgbox MtPyre_6F_Text_CedricPostBattle, MSGBOX_AUTOCLOSE
# 44 "data/maps/MtPyre_6F/scripts.pory"
	end
# 45 "data/maps/MtPyre_6F/scripts.pory"

# 46 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValerieIntro:
# 47 "data/maps/MtPyre_6F/scripts.pory"
	.string "When I'm here…\n"
# 48 "data/maps/MtPyre_6F/scripts.pory"
	.string "A curious power flows into me…$"
# 49 "data/maps/MtPyre_6F/scripts.pory"

# 50 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValerieDefeat:
# 51 "data/maps/MtPyre_6F/scripts.pory"
	.string "The power is ebbing away…$"
# 52 "data/maps/MtPyre_6F/scripts.pory"

# 53 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValeriePostBattle:
# 54 "data/maps/MtPyre_6F/scripts.pory"
	.string "Perhaps the power is from the spirits\n"
# 55 "data/maps/MtPyre_6F/scripts.pory"
	.string "of POKéMON in fitful sleep here…$"
# 56 "data/maps/MtPyre_6F/scripts.pory"

# 57 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValerieRegister:
# 58 "data/maps/MtPyre_6F/scripts.pory"
	.string "Fufufu… I lost the match, but…\n"
# 59 "data/maps/MtPyre_6F/scripts.pory"
	.string "I have this little ability…\p"
# 60 "data/maps/MtPyre_6F/scripts.pory"
	.string "Without ever laying my hands on\n"
# 61 "data/maps/MtPyre_6F/scripts.pory"
	.string "your POKéNAV… Hiyah!$"
# 62 "data/maps/MtPyre_6F/scripts.pory"

# 63 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValerieRematchIntro:
# 64 "data/maps/MtPyre_6F/scripts.pory"
	.string "Behind you…\n"
# 65 "data/maps/MtPyre_6F/scripts.pory"
	.string "What is it…$"
# 66 "data/maps/MtPyre_6F/scripts.pory"

# 67 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValerieRematchDefeat:
# 68 "data/maps/MtPyre_6F/scripts.pory"
	.string "Something faded away…$"
# 69 "data/maps/MtPyre_6F/scripts.pory"

# 70 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_ValeriePostRematch:
# 71 "data/maps/MtPyre_6F/scripts.pory"
	.string "The POKéMON at rest here…\n"
# 72 "data/maps/MtPyre_6F/scripts.pory"
	.string "Sometimes, they play…$"
# 73 "data/maps/MtPyre_6F/scripts.pory"

# 74 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_CedricIntro:
# 75 "data/maps/MtPyre_6F/scripts.pory"
	.string "Have you lost your bearings?\n"
# 76 "data/maps/MtPyre_6F/scripts.pory"
	.string "Have no fear for I am here!$"
# 77 "data/maps/MtPyre_6F/scripts.pory"

# 78 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_CedricDefeat:
# 79 "data/maps/MtPyre_6F/scripts.pory"
	.string "Weren't you lost?$"
# 80 "data/maps/MtPyre_6F/scripts.pory"

# 81 "data/maps/MtPyre_6F/scripts.pory"
MtPyre_6F_Text_CedricPostBattle:
# 82 "data/maps/MtPyre_6F/scripts.pory"
	.string "I had this feeling that a lost TRAINER\n"
# 83 "data/maps/MtPyre_6F/scripts.pory"
	.string "would be panicked and easy to beat.\p"
# 84 "data/maps/MtPyre_6F/scripts.pory"
	.string "It's dirty and I won't try it again…$"
