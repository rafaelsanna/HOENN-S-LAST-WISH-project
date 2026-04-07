@ Event scripts for CargoShip
@
	.align 2

CargoShip_MapScripts::
	.byte 0

CargoShip_EventScript_Scientist1::
	msgbox CargoShip_Text_Scientist1_1, MSGBOX_NPC
	end

CargoShip_EventScript_AquaMemberM::
	msgbox CargoShip_Text_AquaMemberM_1, MSGBOX_NPC
	end

CargoShip_EventScript_AquaMemberM_Trainer::
	trainerbattle_single TRAINER_AQUA_MEMBER_CARGO_SHIP, CargoShip_Text_AquaMemberIntro, CargoShip_Text_AquaMemberDefeated
	msgbox CargoShip_Text_AquaMemberPostBattle, MSGBOX_AUTOCLOSE
	end

CargoShip_EventScript_AquaMemberF::
	msgbox CargoShip_Text_AquaMemberF_1, MSGBOX_NPC
	end

CargoShip_EventScript_Scientist2::
	msgbox CargoShip_Text_Scientist2_1, MSGBOX_NPC
	end

CargoShip_Text_Scientist1_1:
	.string "My coworkers are the shady sort, but\nthe research potential is unbeatable!$"

CargoShip_Text_AquaMemberM_1:
	.string "We're transporting something important\nhere.\pKeep away from the cargo, kid!$"

CargoShip_Text_AquaMemberF_1:
	.string "How did a kid get in here?\pWhatever. I don't get paid enough\nto care.\pJust don't touch anything.$"

CargoShip_Text_Scientist2_1:
	.string "This ship could really use a better\nengine.\pIf everything goes well, we should\nbe able to afford one soon.$"
