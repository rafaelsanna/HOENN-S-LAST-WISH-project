# 1 "data/maps/CargoShip/scripts.pory"

# 2 "data/maps/CargoShip/scripts.pory"
@ Event scripts for CargoShip
# 3 "data/maps/CargoShip/scripts.pory"
@
# 4 "data/maps/CargoShip/scripts.pory"
	.align 2
# 5 "data/maps/CargoShip/scripts.pory"

# 6 "data/maps/CargoShip/scripts.pory"
CargoShip_MapScripts::
# 7 "data/maps/CargoShip/scripts.pory"
	.byte 0
# 8 "data/maps/CargoShip/scripts.pory"

# 9 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_Scientist1::
# 10 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Scientist1_1, MSGBOX_NPC
# 11 "data/maps/CargoShip/scripts.pory"
	end
# 12 "data/maps/CargoShip/scripts.pory"

# 13 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_AquaMemberM::
# 14 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_AquaMemberM_1, MSGBOX_NPC
# 15 "data/maps/CargoShip/scripts.pory"
	end
# 16 "data/maps/CargoShip/scripts.pory"

# 17 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_AquaMemberM_Trainer::
# 18 "data/maps/CargoShip/scripts.pory"
	trainerbattle_single TRAINER_AQUA_MEMBER_CARGO_SHIP, CargoShip_Text_AquaMemberIntro, CargoShip_Text_AquaMemberDefeated
# 19 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_AquaMemberPostBattle, MSGBOX_AUTOCLOSE
# 20 "data/maps/CargoShip/scripts.pory"
	end
# 21 "data/maps/CargoShip/scripts.pory"

# 22 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_AquaMemberF::
# 23 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_AquaMemberF_1, MSGBOX_NPC
# 24 "data/maps/CargoShip/scripts.pory"
	end
# 25 "data/maps/CargoShip/scripts.pory"

# 26 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_Scientist2::
# 27 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Scientist2_1, MSGBOX_NPC
# 28 "data/maps/CargoShip/scripts.pory"
	end
# 29 "data/maps/CargoShip/scripts.pory"

# 30 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_Sailor::
# 31 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Sailor_1, MSGBOX_NPC
# 32 "data/maps/CargoShip/scripts.pory"
	end
# 33 "data/maps/CargoShip/scripts.pory"

# 34 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_Scientist1_1:
# 35 "data/maps/CargoShip/scripts.pory"
	.string "My coworkers are the shady sort, but\nthe research potential is unbeatable!$"
# 36 "data/maps/CargoShip/scripts.pory"

# 37 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_AquaMemberM_1:
# 38 "data/maps/CargoShip/scripts.pory"
	.string "We're transporting something important\nhere.\pKeep away from the cargo, kid!$"
# 39 "data/maps/CargoShip/scripts.pory"

# 40 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_AquaMemberF_1:
# 41 "data/maps/CargoShip/scripts.pory"
	.string "How did a kid get in here?\pWhatever. I don't get paid enough\nto care.\pJust don't touch anything.$"
# 42 "data/maps/CargoShip/scripts.pory"

# 43 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_Scientist2_1:
# 44 "data/maps/CargoShip/scripts.pory"
	.string "This ship could really use a better\nengine.\pIf everything goes well, we should\nbe able to afford one soon.$"
# 45 "data/maps/CargoShip/scripts.pory"

# 46 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_Sailor_1:
# 47 "data/maps/CargoShip/scripts.pory"
	.string "You want to battle me?\n"
# 48 "data/maps/CargoShip/scripts.pory"
	.string "To get through here?\p"
# 49 "data/maps/CargoShip/scripts.pory"
	.string "Sorry, kid. I have more sense than\n"
# 50 "data/maps/CargoShip/scripts.pory"
	.string "the loser you fought at the door.\p"
# 51 "data/maps/CargoShip/scripts.pory"
	.string "Scram.$"
