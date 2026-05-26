# 1 "data/maps/RogueCanyon/scripts.pory"

# 2 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_MapScripts::
# 3 "data/maps/RogueCanyon/scripts.pory"
	.byte 0
# 4 "data/maps/RogueCanyon/scripts.pory"

# 5 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_EventScript_Lillo::
# 6 "data/maps/RogueCanyon/scripts.pory"
	trainerbattle_single TRAINER_LILLO, RogueCanyon_Text_LilloIntro, RogueCanyon_Text_LilloDefeat
# 7 "data/maps/RogueCanyon/scripts.pory"
	msgbox RogueCanyon_Text_LilloPostBattle, MSGBOX_AUTOCLOSE
# 8 "data/maps/RogueCanyon/scripts.pory"
	end
# 9 "data/maps/RogueCanyon/scripts.pory"

# 10 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_EventScript_Pedro::
# 11 "data/maps/RogueCanyon/scripts.pory"
	trainerbattle_single TRAINER_PEDRO, RogueCanyon_Text_PedroIntro, RogueCanyon_Text_PedroDefeat
# 12 "data/maps/RogueCanyon/scripts.pory"
	msgbox RogueCanyon_Text_PedroPostBattle, MSGBOX_AUTOCLOSE
# 13 "data/maps/RogueCanyon/scripts.pory"
	end
# 14 "data/maps/RogueCanyon/scripts.pory"

# 15 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_EventScript_Agatha::
# 16 "data/maps/RogueCanyon/scripts.pory"
	trainerbattle_single TRAINER_AGATHA, RogueCanyon_Text_AgathaIntro, RogueCanyon_Text_AgathaDefeat
# 17 "data/maps/RogueCanyon/scripts.pory"
	msgbox RogueCanyon_Text_AgathaPostBattle, MSGBOX_AUTOCLOSE
# 18 "data/maps/RogueCanyon/scripts.pory"
	end
# 19 "data/maps/RogueCanyon/scripts.pory"

# 20 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon__EventScript_CanyonExplorer::
# 21 "data/maps/RogueCanyon/scripts.pory"
	msgbox RogueCanyon_Text_CanyonExplorer, MSGBOX_NPC
# 22 "data/maps/RogueCanyon/scripts.pory"
	end
# 23 "data/maps/RogueCanyon/scripts.pory"

# 24 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon__EventScript_CanyonExplorer2::
# 25 "data/maps/RogueCanyon/scripts.pory"
	msgbox RogueCanyon_Text_CanyonLore, MSGBOX_NPC
# 26 "data/maps/RogueCanyon/scripts.pory"
	end
# 27 "data/maps/RogueCanyon/scripts.pory"

# 28 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_Text_CanyonExplorer:
# 29 "data/maps/RogueCanyon/scripts.pory"
	.string "They call it ROGUE CANYON because\n"
# 30 "data/maps/RogueCanyon/scripts.pory"
	.string "the winds change its face every night.\p"
# 31 "data/maps/RogueCanyon/scripts.pory"
	.string "Paths open and close without warning,\n"
# 32 "data/maps/RogueCanyon/scripts.pory"
	.string "many have gotten lost here forever.\p"
# 33 "data/maps/RogueCanyon/scripts.pory"
	.string "Some say ancient POKéMON still roam\n"
# 34 "data/maps/RogueCanyon/scripts.pory"
	.string "its deepest crevices, guarding secrets.\p"
# 35 "data/maps/RogueCanyon/scripts.pory"
	.string "I'm here to study the rock formations.\n"
# 36 "data/maps/RogueCanyon/scripts.pory"
	.string "But between us? I think something lives\l"
# 37 "data/maps/RogueCanyon/scripts.pory"
	.string "down there that doesn't want visitors.$"	
# 38 "data/maps/RogueCanyon/scripts.pory"

# 39 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_Text_CanyonLore:
# 40 "data/maps/RogueCanyon/scripts.pory"
	.string "Geologists say this canyon was formed\n"
# 41 "data/maps/RogueCanyon/scripts.pory"
	.string "millions of years ago by colossal floods.\p"
# 42 "data/maps/RogueCanyon/scripts.pory"
	.string "The rock layers tell a story, each\n"
# 43 "data/maps/RogueCanyon/scripts.pory"
	.string "strip of color is a different era.\p"
# 44 "data/maps/RogueCanyon/scripts.pory"
	.string "Red rock means ancient deserts.\n"
# 45 "data/maps/RogueCanyon/scripts.pory"
	.string "Gray layers? That's from underwater ages.\p"
# 46 "data/maps/RogueCanyon/scripts.pory"
	.string "This whole place is a time machine,\n"
# 47 "data/maps/RogueCanyon/scripts.pory"
	.string "frozen in stone and waiting to be read.$"
