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
# 18 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 19 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_EventScript_Woman::
# 20 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	msgbox PHOENIXPOKECENTER_Text_DryAir, MSGBOX_NPC
# 21 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	end
# 22 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 23 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_EventScript_Youngster::
# 24 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	msgbox PHOENIXPOKECENTER_Text_CalmPokemon, MSGBOX_NPC
# 25 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	end
# 26 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 27 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_Text_DryAir:
# 28 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "The dry air tires POKéMON\n"
# 29 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "more quickly than people expect.\p"
# 30 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "Resting here is a miracle\n"
# 31 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "after a canyon crossing.$"
# 32 "data/maps/PHOENIXPOKECENTER/scripts.pory"

# 33 "data/maps/PHOENIXPOKECENTER/scripts.pory"
PHOENIXPOKECENTER_Text_CalmPokemon:
# 34 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "POKéMON seem calmer here.\p"
# 35 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "Maybe they hear the earth\n"
# 36 "data/maps/PHOENIXPOKECENTER/scripts.pory"
	.string "better than we do.$"
