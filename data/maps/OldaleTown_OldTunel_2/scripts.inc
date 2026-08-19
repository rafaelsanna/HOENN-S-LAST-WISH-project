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
	goto_if_set FLAG_SHINY_SENTRET, OldaleTown_OldTunel_2_EventScript_SentretAlreadyFound
# 9 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	msgbox OldaleTown_OldTunel_2_Text_SentretFound, MSGBOX_DEFAULT
# 10 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	closemessage
# 11 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	destroyfollowernpc
# 12 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setflag FLAG_SHINY_SENTRET
# 13 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setflag FLAG_HIDE_SHINY_SENTRET_WILD
# 14 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	setfollowernpc LOCALID_OLDALE_TUNEL_2_SHINY_SENTRET, FNPC_ALL, NULL, 0
# 15 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	release
# 16 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	end
# 17 "data/maps/OldaleTown_OldTunel_2/scripts.pory"

# 18 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
OldaleTown_OldTunel_2_EventScript_SentretAlreadyFound::
# 19 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	msgbox OldaleTown_OldTunel_2_Text_SentretAlreadyFound, MSGBOX_DEFAULT
# 20 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	release
# 21 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	end
# 22 "data/maps/OldaleTown_OldTunel_2/scripts.pory"

# 23 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
OldaleTown_OldTunel_2_Text_SentretFound:
# 24 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	.string "The SHINY SENTRET looks at you curiously.\p"
# 25 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	.string "It happily decides to follow you.$"
# 26 "data/maps/OldaleTown_OldTunel_2/scripts.pory"

# 27 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
OldaleTown_OldTunel_2_Text_SentretAlreadyFound:
# 28 "data/maps/OldaleTown_OldTunel_2/scripts.pory"
	.string "SENTRET is already following you.$"
