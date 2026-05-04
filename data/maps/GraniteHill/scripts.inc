# 1 "data/maps/GraniteHill/scripts.pory"

# 2 "data/maps/GraniteHill/scripts.pory"
GraniteHill_MapScripts::
# 3 "data/maps/GraniteHill/scripts.pory"
	.byte 0
# 4 "data/maps/GraniteHill/scripts.pory"

# 5 "data/maps/GraniteHill/scripts.pory"
GraniteHill_EventScript_Herbalistgh::
# 6 "data/maps/GraniteHill/scripts.pory"
	lock
# 7 "data/maps/GraniteHill/scripts.pory"
	faceplayer
# 8 "data/maps/GraniteHill/scripts.pory"
	trainerbattle_single TRAINER_CECILIA, GraniteHill_Text_CeciliaIntro, GraniteHill_Text_CeciliaDefeated
# 9 "data/maps/GraniteHill/scripts.pory"
	msgbox GraniteHill_Text_CeciliaPostBattle, MSGBOX_AUTOCLOSE
# 10 "data/maps/GraniteHill/scripts.pory"
	release
# 11 "data/maps/GraniteHill/scripts.pory"
	end	
# 12 "data/maps/GraniteHill/scripts.pory"

# 13 "data/maps/GraniteHill/scripts.pory"
GraniteHill_EventScript_Archibald::
# 14 "data/maps/GraniteHill/scripts.pory"
	trainerbattle_single TRAINER_ARCHIBALD, GraniteHill_Text_ArchibaldIntro, GraniteHill_Text_ArchibaldDefeated
# 15 "data/maps/GraniteHill/scripts.pory"
	msgbox GraniteHill_Text_ArchibaldPostBattle, MSGBOX_AUTOCLOSE
# 16 "data/maps/GraniteHill/scripts.pory"
	release
# 17 "data/maps/GraniteHill/scripts.pory"
	end	
# 18 "data/maps/GraniteHill/scripts.pory"

# 19 "data/maps/GraniteHill/scripts.pory"
GraniteHill_EventScript_Markus::
# 20 "data/maps/GraniteHill/scripts.pory"
	trainerbattle_single TRAINER_MARKUS, GraniteHill_Text_MarkusIntro, GraniteHill_Text_MarkusDefeated
# 21 "data/maps/GraniteHill/scripts.pory"
	msgbox GraniteHill_Text_MarkusPostBattle, MSGBOX_AUTOCLOSE
# 22 "data/maps/GraniteHill/scripts.pory"
	release
# 23 "data/maps/GraniteHill/scripts.pory"
	end	
# 24 "data/maps/GraniteHill/scripts.pory"

# 25 "data/maps/GraniteHill/scripts.pory"
GraniteHill_EventScript_Ryux::
# 26 "data/maps/GraniteHill/scripts.pory"
	trainerbattle_single TRAINER_RYUX, GraniteHill_Text_RyuxIntro, GraniteHill_Text_RyuxDefeated
# 27 "data/maps/GraniteHill/scripts.pory"
	msgbox GraniteHill_Text_RyuxPostBattle, MSGBOX_AUTOCLOSE
# 28 "data/maps/GraniteHill/scripts.pory"
	release
# 29 "data/maps/GraniteHill/scripts.pory"
	end
