# 1 "data/maps/PhoenixTown/scripts.pory"

# 2 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_MapScripts::
# 3 "data/maps/PhoenixTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PhoenixTown_OnTransition
# 4 "data/maps/PhoenixTown/scripts.pory"
	.byte 0
# 5 "data/maps/PhoenixTown/scripts.pory"

# 6 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_OnTransition:
# 7 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_VISITED_PHOENIX_TOWN
# 8 "data/maps/PhoenixTown/scripts.pory"
	end
