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
	.string "it was formed by the water flowing\l"
# 31 "data/maps/RogueCanyon/scripts.pory"
	.string "freely wherever it willed.\p"
# 32 "data/maps/RogueCanyon/scripts.pory"
	.string "Wouldn't it be nice if we could\n"
# 33 "data/maps/RogueCanyon/scripts.pory"
	.string "all do that?$"	
# 34 "data/maps/RogueCanyon/scripts.pory"

# 35 "data/maps/RogueCanyon/scripts.pory"
RogueCanyon_Text_CanyonLore:
# 36 "data/maps/RogueCanyon/scripts.pory"
	.string "This canyon was formed millions of\n"
# 37 "data/maps/RogueCanyon/scripts.pory"
	.string "years ago by glaciers and floods.\p"
# 38 "data/maps/RogueCanyon/scripts.pory"
	.string "The rock layers tell a story, each\n"
# 39 "data/maps/RogueCanyon/scripts.pory"
	.string "strip of color is a different era.\p"
# 40 "data/maps/RogueCanyon/scripts.pory"
	.string "This place wasn't always a desert.\n"
# 41 "data/maps/RogueCanyon/scripts.pory"
	.string "There's evidence of jungle, plains,\l"
# 42 "data/maps/RogueCanyon/scripts.pory"
	.string "and even ocean.$"
