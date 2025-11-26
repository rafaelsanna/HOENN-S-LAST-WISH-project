Routenew101_MapScripts::
	.byte 0


ZigzagoonOverworld::
# 4 "data/maps/Routenew101/scripts.pory"
	lock
# 5 "data/maps/Routenew101/scripts.pory"
	faceplayer
# 6 "data/maps/Routenew101/scripts.pory"
	playmoncry SPECIES_ZIGZAGOON, CRY_MODE_NORMAL
# 7 "data/maps/Routenew101/scripts.pory"
	waitmoncry
# 8 "data/maps/Routenew101/scripts.pory"
	release
	end


RouteNew101TrainerTips::
# 13 "data/maps/Routenew101/scripts.pory"
	lock
# 14 "data/maps/Routenew101/scripts.pory"
	msgbox RouteNew101TrainerTipsText, MSGBOX_SIGN
# 15 "data/maps/Routenew101/scripts.pory"
	release
	end


RouteNew101TrainerTipsText::
# 19 "data/maps/Routenew101/scripts.pory"
	.string "COOL POKéMON FACT 1\p The sum of SPINDA's base stats is a full 360!$"
