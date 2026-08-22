# 1 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 2 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_MapScripts::
# 3 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PHOENIXPOKECENTER_OnTransition
# 4 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.byte 0
# 6 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 7 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_OnTransition:
# 8 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	setrespawn HEAL_LOCATION_PHOENIX_TOWN
# 9 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	end
# 10 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 11 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_EventScript_Nurse::
# 12 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	setvar VAR_0x800B, LOCALID_PHOENIX_NURSE
# 13 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 14 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	waitmessage
# 15 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	waitbuttonpress
# 16 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	release
# 17 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	end
