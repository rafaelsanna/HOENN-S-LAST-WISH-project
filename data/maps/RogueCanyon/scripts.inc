RogueCanyon_MapScripts::
	.byte 0

RogueCanyon_EventScript_Lillo::
	trainerbattle_single TRAINER_LILLO, RogueCanyon_Text_LilloIntro, RogueCanyon_Text_LilloDefeat
	msgbox RogueCanyon_Text_LilloPostBattle, MSGBOX_AUTOCLOSE
	end

RogueCanyon_EventScript_Pedro::
	trainerbattle_single TRAINER_PEDRO, RogueCanyon_Text_PedroIntro, RogueCanyon_Text_PedroDefeat
	msgbox RogueCanyon_Text_PedroPostBattle, MSGBOX_AUTOCLOSE
	end

RogueCanyon_EventScript_Agatha::
	trainerbattle_single TRAINER_AGATHA, RogueCanyon_Text_AgathaIntro, RogueCanyon_Text_AgathaDefeat
	msgbox RogueCanyon_Text_AgathaPostBattle, MSGBOX_AUTOCLOSE
	end

RogueCanyon__EventScript_CanyonExplorer::
	msgbox RogueCanyon_Text_CanyonExplorer, MSGBOX_NPC
	end

RogueCanyon__EventScript_CanyonExplorer2::
	msgbox RogueCanyon_Text_CanyonLore, MSGBOX_NPC
	end

RogueCanyon_Text_CanyonExplorer:
	.string "They call it ROGUE CANYON because\n"
	.string "the winds change its face every night.\p"
	.string "Paths open and close without warning,\n"
	.string "many have gotten lost here forever.\p"
	.string "Some say ancient POKéMON still roam\n"
	.string "its deepest crevices, guarding secrets.\p"
	.string "I'm here to study the rock formations.\n"
	.string "But between us? I think something lives\l"
	.string "down there that doesn't want visitors.$"	

RogueCanyon_Text_CanyonLore:
	.string "Geologists say this canyon was formed\n"
	.string "millions of years ago by colossal floods.\p"
	.string "The rock layers tell a story, each\n"
	.string "strip of color is a different era.\p"
	.string "Red rock means ancient deserts.\n"
	.string "Gray layers? That's from underwater ages.\p"
	.string "This whole place is a time machine,\n"
	.string "frozen in stone and waiting to be read.$"

