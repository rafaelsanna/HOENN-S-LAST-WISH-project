# 1 "data/maps/FortreeCity/scripts.pory"

# 2 "data/maps/FortreeCity/scripts.pory"
FortreeCity_MapScripts::
# 3 "data/maps/FortreeCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_OnTransition
# 4 "data/maps/FortreeCity/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, FortreeCity_OnResume
# 5 "data/maps/FortreeCity/scripts.pory"
	.byte 0
# 6 "data/maps/FortreeCity/scripts.pory"

# 7 "data/maps/FortreeCity/scripts.pory"
FortreeCity_OnTransition:
# 8 "data/maps/FortreeCity/scripts.pory"
	setflag FLAG_VISITED_FORTREE_CITY
# 9 "data/maps/FortreeCity/scripts.pory"
	end
# 10 "data/maps/FortreeCity/scripts.pory"

# 11 "data/maps/FortreeCity/scripts.pory"
FortreeCity_OnResume:
# 12 "data/maps/FortreeCity/scripts.pory"
	setstepcallback STEP_CB_FORTREE_BRIDGE
# 13 "data/maps/FortreeCity/scripts.pory"
	end
# 14 "data/maps/FortreeCity/scripts.pory"

# 15 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_Man::
# 16 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_SawGiganticPokemonInSky, MSGBOX_NPC
# 17 "data/maps/FortreeCity/scripts.pory"
	end
# 18 "data/maps/FortreeCity/scripts.pory"

# 19 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_Woman::
# 20 "data/maps/FortreeCity/scripts.pory"
	lock
# 21 "data/maps/FortreeCity/scripts.pory"
	faceplayer
# 22 "data/maps/FortreeCity/scripts.pory"
	goto_if_set FLAG_KECLEON_FLED_FORTREE, FortreeCity_EventScript_WomanGymAccessible
# 23 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_SomethingBlockingGym, MSGBOX_DEFAULT
# 24 "data/maps/FortreeCity/scripts.pory"
	release
# 25 "data/maps/FortreeCity/scripts.pory"
	end
# 26 "data/maps/FortreeCity/scripts.pory"

# 27 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_WomanGymAccessible::
# 28 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_ThisTimeIllBeatWinona, MSGBOX_DEFAULT
# 29 "data/maps/FortreeCity/scripts.pory"
	release
# 30 "data/maps/FortreeCity/scripts.pory"
	end
# 31 "data/maps/FortreeCity/scripts.pory"

# 32 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_Girl::
# 33 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_TreesGrowByDrinkingRainwater, MSGBOX_NPC
# 34 "data/maps/FortreeCity/scripts.pory"
	end
# 35 "data/maps/FortreeCity/scripts.pory"

# 36 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_OldMan::
# 37 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_EveryoneHealthyAndLively, MSGBOX_NPC
# 38 "data/maps/FortreeCity/scripts.pory"
	end
# 39 "data/maps/FortreeCity/scripts.pory"

# 40 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_Boy::
# 41 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_BugPokemonComeThroughWindow, MSGBOX_NPC
# 42 "data/maps/FortreeCity/scripts.pory"
	end
# 43 "data/maps/FortreeCity/scripts.pory"

# 44 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_GameboyKid::
# 45 "data/maps/FortreeCity/scripts.pory"
	goto_if_set FLAG_ITEM_FORTREE_CITY_TIMID_MINT, FortreeCity_EventScript_GameboyKidAfterMint
# 46 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_GameboyKidItemLedge, MSGBOX_NPC
# 47 "data/maps/FortreeCity/scripts.pory"
	end
# 48 "data/maps/FortreeCity/scripts.pory"

# 49 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_GameboyKidAfterMint::
# 50 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_GameboyKidGotItem, MSGBOX_NPC
# 51 "data/maps/FortreeCity/scripts.pory"
	end
# 52 "data/maps/FortreeCity/scripts.pory"

# 53 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_CitySign::
# 54 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_CitySign, MSGBOX_SIGN
# 55 "data/maps/FortreeCity/scripts.pory"
	end
# 56 "data/maps/FortreeCity/scripts.pory"

# 57 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_GymSign::
# 58 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_GymSign, MSGBOX_SIGN
# 59 "data/maps/FortreeCity/scripts.pory"
	end
# 60 "data/maps/FortreeCity/scripts.pory"

# 61 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_Kecleon::
# 62 "data/maps/FortreeCity/scripts.pory"
	lock
# 63 "data/maps/FortreeCity/scripts.pory"
	faceplayer
# 64 "data/maps/FortreeCity/scripts.pory"
	checkitem ITEM_DEVON_SCOPE
# 65 "data/maps/FortreeCity/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, FortreeCity_EventScript_AskUseDevonScope
# 66 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_SomethingUnseeable, MSGBOX_DEFAULT
# 67 "data/maps/FortreeCity/scripts.pory"
	release
# 68 "data/maps/FortreeCity/scripts.pory"
	end
# 69 "data/maps/FortreeCity/scripts.pory"

# 70 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_AskUseDevonScope::
# 71 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_UnseeableUseDevonScope, MSGBOX_YESNO
# 72 "data/maps/FortreeCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, FortreeCity_EventScript_UseDevonScope
# 73 "data/maps/FortreeCity/scripts.pory"
	release
# 74 "data/maps/FortreeCity/scripts.pory"
	end
# 75 "data/maps/FortreeCity/scripts.pory"

# 76 "data/maps/FortreeCity/scripts.pory"
FortreeCity_EventScript_UseDevonScope::
# 77 "data/maps/FortreeCity/scripts.pory"
	msgbox FortreeCity_Text_UsedDevonScopePokemonFled, MSGBOX_DEFAULT
# 78 "data/maps/FortreeCity/scripts.pory"
	closemessage
# 79 "data/maps/FortreeCity/scripts.pory"
	applymovement VAR_LAST_TALKED, Movement_KecleonAppears
# 80 "data/maps/FortreeCity/scripts.pory"
	waitmovement 0
# 81 "data/maps/FortreeCity/scripts.pory"
	waitse
# 82 "data/maps/FortreeCity/scripts.pory"
	playmoncry SPECIES_KECLEON, CRY_MODE_ENCOUNTER
# 83 "data/maps/FortreeCity/scripts.pory"
	delay 40
# 84 "data/maps/FortreeCity/scripts.pory"
	waitmoncry
# 85 "data/maps/FortreeCity/scripts.pory"
	applymovement VAR_LAST_TALKED, FortreeCity_Movement_KecleonFlee
# 86 "data/maps/FortreeCity/scripts.pory"
	waitmovement 0
# 87 "data/maps/FortreeCity/scripts.pory"
	removeobject VAR_LAST_TALKED
# 88 "data/maps/FortreeCity/scripts.pory"
	setflag FLAG_KECLEON_FLED_FORTREE
# 89 "data/maps/FortreeCity/scripts.pory"
	release
# 90 "data/maps/FortreeCity/scripts.pory"
	end
# 91 "data/maps/FortreeCity/scripts.pory"

# 92 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Movement_KecleonFlee:
# 93 "data/maps/FortreeCity/scripts.pory"
	walk_right
# 94 "data/maps/FortreeCity/scripts.pory"
	step_end
# 95 "data/maps/FortreeCity/scripts.pory"

# 96 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_SawGiganticPokemonInSky:
# 97 "data/maps/FortreeCity/scripts.pory"
	.string "No one believes me, but I saw this\n"
# 98 "data/maps/FortreeCity/scripts.pory"
	.string "gigantic POKéMON in the sky.\p"
# 99 "data/maps/FortreeCity/scripts.pory"
	.string "It seemed to squirm as it flew toward\n"
# 100 "data/maps/FortreeCity/scripts.pory"
	.string "ROUTE 131.\p"
# 101 "data/maps/FortreeCity/scripts.pory"
	.string "By the way… Sniff…\n"
# 102 "data/maps/FortreeCity/scripts.pory"
	.string "Um… You, uh…smell singed.\p"
# 103 "data/maps/FortreeCity/scripts.pory"
	.string "Were you at a volcano or something?$"
# 104 "data/maps/FortreeCity/scripts.pory"

# 105 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_SomethingBlockingGym:
# 106 "data/maps/FortreeCity/scripts.pory"
	.string "I want to go to the POKéMON GYM,\n"
# 107 "data/maps/FortreeCity/scripts.pory"
	.string "but something's blocking the way.\p"
# 108 "data/maps/FortreeCity/scripts.pory"
	.string "After all the bother I went through\n"
# 109 "data/maps/FortreeCity/scripts.pory"
	.string "training on ROUTE 120…$"
# 110 "data/maps/FortreeCity/scripts.pory"

# 111 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_ThisTimeIllBeatWinona:
# 112 "data/maps/FortreeCity/scripts.pory"
	.string "I've got my pride-and-joy POKéMON\n"
# 113 "data/maps/FortreeCity/scripts.pory"
	.string "with me. This time, I'll beat WINONA.$"
# 114 "data/maps/FortreeCity/scripts.pory"

# 115 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_TreesGrowByDrinkingRainwater:
# 116 "data/maps/FortreeCity/scripts.pory"
	.string "The ground absorbs rainwater, and\n"
# 117 "data/maps/FortreeCity/scripts.pory"
	.string "trees grow by drinking that water…\p"
# 118 "data/maps/FortreeCity/scripts.pory"
	.string "Our FORTREE CITY exists because\n"
# 119 "data/maps/FortreeCity/scripts.pory"
	.string "there's both water and soil.$"
# 120 "data/maps/FortreeCity/scripts.pory"

# 121 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_EveryoneHealthyAndLively:
# 122 "data/maps/FortreeCity/scripts.pory"
	.string "The CITY consists of homes built on\n"
# 123 "data/maps/FortreeCity/scripts.pory"
	.string "trees.\p"
# 124 "data/maps/FortreeCity/scripts.pory"
	.string "Perhaps because of that lifestyle,\n"
# 125 "data/maps/FortreeCity/scripts.pory"
	.string "everyone is healthy and lively.\p"
# 126 "data/maps/FortreeCity/scripts.pory"
	.string "Why, even myself--I feel as if I've\n"
# 127 "data/maps/FortreeCity/scripts.pory"
	.string "grown thirty years younger.$"
# 128 "data/maps/FortreeCity/scripts.pory"

# 129 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_BugPokemonComeThroughWindow:
# 130 "data/maps/FortreeCity/scripts.pory"
	.string "Living on top of trees is okay.\p"
# 131 "data/maps/FortreeCity/scripts.pory"
	.string "But sometimes BUG POKéMON come in\n"
# 132 "data/maps/FortreeCity/scripts.pory"
	.string "through windows.\l"
# 133 "data/maps/FortreeCity/scripts.pory"
	.string "It can be really startling.$"
# 134 "data/maps/FortreeCity/scripts.pory"

# 135 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_GameboyKidItemLedge:
# 136 "data/maps/FortreeCity/scripts.pory"
	.string "I think I see an item up on that\n"
# 137 "data/maps/FortreeCity/scripts.pory"
	.string "ledge there, but how could I get to it...?\p"
# 138 "data/maps/FortreeCity/scripts.pory"

# 139 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_GameboyKidGotItem:
# 140 "data/maps/FortreeCity/scripts.pory"
	.string "Wow! I can't believe you jumped\n"
# 141 "data/maps/FortreeCity/scripts.pory"
	.string "across all those trees to get that.\p"
# 142 "data/maps/FortreeCity/scripts.pory"
	.string "You're way braver than me!$"
# 143 "data/maps/FortreeCity/scripts.pory"

# 144 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_SomethingUnseeable:
# 145 "data/maps/FortreeCity/scripts.pory"
	.string "Something unseeable is in the way.$"
# 146 "data/maps/FortreeCity/scripts.pory"

# 147 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_UnseeableUseDevonScope:
# 148 "data/maps/FortreeCity/scripts.pory"
	.string "Something unseeable is in the way.\p"
# 149 "data/maps/FortreeCity/scripts.pory"
	.string "Want to use the DEVON SCOPE?$"
# 150 "data/maps/FortreeCity/scripts.pory"

# 151 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_UsedDevonScopePokemonFled:
# 152 "data/maps/FortreeCity/scripts.pory"
	.string "{PLAYER} used the DEVON SCOPE.\p"
# 153 "data/maps/FortreeCity/scripts.pory"
	.string "An invisible POKéMON became completely\n"
# 154 "data/maps/FortreeCity/scripts.pory"
	.string "visible!\p"
# 155 "data/maps/FortreeCity/scripts.pory"
	.string "The startled POKéMON fled!$"
# 156 "data/maps/FortreeCity/scripts.pory"

# 157 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_CitySign:
# 158 "data/maps/FortreeCity/scripts.pory"
	.string "FORTREE CITY\n"
# 159 "data/maps/FortreeCity/scripts.pory"
	.string "“The treetop city that frolics with\l"
# 160 "data/maps/FortreeCity/scripts.pory"
	.string "nature.”$"
# 161 "data/maps/FortreeCity/scripts.pory"

# 162 "data/maps/FortreeCity/scripts.pory"
FortreeCity_Text_GymSign:
# 163 "data/maps/FortreeCity/scripts.pory"
	.string "FORTREE CITY POKéMON GYM\n"
# 164 "data/maps/FortreeCity/scripts.pory"
	.string "LEADER: WINONA\p"
# 165 "data/maps/FortreeCity/scripts.pory"
	.string "“The bird user taking flight into\n"
# 166 "data/maps/FortreeCity/scripts.pory"
	.string "the world.”$"
