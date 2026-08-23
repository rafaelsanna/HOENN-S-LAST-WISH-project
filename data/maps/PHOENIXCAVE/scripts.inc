# 1 "data/maps/PHOENIXCAVE/scripts.pory"

# 2 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_MapScripts::
# 3 "data/maps/PHOENIXCAVE/scripts.pory"
	.byte 0
# 4 "data/maps/PHOENIXCAVE/scripts.pory"

# 5 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_MapScripts_MagicCrystal::
# 6 "data/maps/PHOENIXCAVE/scripts.pory"
	lock
# 7 "data/maps/PHOENIXCAVE/scripts.pory"
	faceplayer
# 8 "data/maps/PHOENIXCAVE/scripts.pory"
	msgbox PHOENIXCAVE_Text_MagicCrystal, MSGBOX_DEFAULT
# 9 "data/maps/PHOENIXCAVE/scripts.pory"
	release
# 10 "data/maps/PHOENIXCAVE/scripts.pory"
	warpteleport MAP_AURORAGROVE, 0
# 11 "data/maps/PHOENIXCAVE/scripts.pory"
	waitstate
# 12 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 13 "data/maps/PHOENIXCAVE/scripts.pory"

# 14 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_Text_MagicCrystal:
# 15 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "You feel a strange connection to the\n"
# 16 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "crystal…\p"
# 17 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "A surge of energy pulls you in!$"
