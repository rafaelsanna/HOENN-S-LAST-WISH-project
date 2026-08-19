# 1 "data/maps/OldaleTown_OldTunel_2/scripts.pory"

# 2 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
OldaleTown_OldTunel_2_MapScripts::
# 3 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	.byte 0
# 4 "data/maps/OldaleTown_OldTunel_2/scripts.pory"

# 5 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
OldaleTown_OldTunel_2_EventScript_ShinySentret::
# 6 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	lock
# 7 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	faceplayer
# 8 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setwildbattle SPECIES_SENTRET, 5
# 9 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	waitse
# 10 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	playmoncry SPECIES_SENTRET, CRY_MODE_ENCOUNTER
# 11 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	delay 40
# 12 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	waitmoncry
# 13 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setflag P_FLAG_FORCE_SHINY
# 14 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setflag FLAG_SYS_CTRL_OBJ_DELETE
# 15 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	dowildbattle
# 16 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	clearflag FLAG_SYS_CTRL_OBJ_DELETE
# 17 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	clearflag P_FLAG_FORCE_SHINY
# 18 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	specialvar VAR_RESULT, GetBattleOutcome
# 19 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_WON, OldaleTown_OldTunel_2_EventScript_SentretFound
# 20 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	release
# 21 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	end
# 22 "data/maps/OldaleTown_OldTunel_2/scripts.pory"

# 23 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
OldaleTown_OldTunel_2_EventScript_SentretFound::
# 24 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setflag FLAG_SHINY_SENTRET
# 25 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	release
# 26 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	end
