# 1 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 2 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_MapScripts::
# 3 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route119_WeatherInstitute_1F_OnTransition
# 4 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.byte 0
# 5 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 6 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_OnTransition:
# 7 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	call_if_eq VAR_WEATHER_INSTITUTE_STATE, 0, Route119_WeatherInstitute_1F_EventScript_SetLittleBoyPos
# 8 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 9 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 10 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_SetLittleBoyPos::
# 11 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	setobjectxyperm LOCALID_WEATHER_INSTITUTE_LITTLE_BOY, 0, 5
# 12 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	setobjectmovementtype LOCALID_WEATHER_INSTITUTE_LITTLE_BOY, MOVEMENT_TYPE_FACE_RIGHT
# 13 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	return
# 14 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 15 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_LittleBoy::
# 16 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	lock
# 17 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	faceplayer
# 18 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	special GetPlayerBigGuyGirlString
# 19 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	goto_if_eq VAR_WEATHER_INSTITUTE_STATE, 0, Route119_WeatherInstitute_1F_EventScript_LittleBoyTeamAquaHere
# 20 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_WowYoureStrong, MSGBOX_DEFAULT
# 21 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	release
# 22 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 23 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 24 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_LittleBoyTeamAquaHere::
# 25 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_EveryoneWentUpstairs, MSGBOX_DEFAULT
# 26 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	release
# 27 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 28 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 29 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_InstituteWorker1::
# 30 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	lock
# 31 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	faceplayer
# 32 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	goto_if_unset FLAG_SYS_GAME_CLEAR, Route119_WeatherInstitute_1F_EventScript_StudyingRain
# 33 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	setvar VAR_0x8004, 0
# 34 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	call_if_set FLAG_DEFEATED_KYOGRE, Route119_WeatherInstitute_1F_EventScript_LegendaryDefeated
# 35 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	call_if_set FLAG_DEFEATED_GROUDON, Route119_WeatherInstitute_1F_EventScript_LegendaryDefeated
# 36 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 2, Route119_WeatherInstitute_1F_EventScript_StudyingRain  @ Both defeated
# 37 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_NoticingAbnormalWeather, MSGBOX_DEFAULT
# 38 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	release
# 39 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 40 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 41 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_LegendaryDefeated::
# 42 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	addvar VAR_0x8004, 1
# 43 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	return
# 44 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 45 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_StudyingRain::
# 46 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_ProfStudyingRain, MSGBOX_DEFAULT
# 47 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	release
# 48 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 49 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 50 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_InstituteWorker2::
# 51 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_WhatWereAquasUpTo, MSGBOX_NPC
# 52 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 53 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 54 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_Bed::
# 55 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	lockall
# 56 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_TakeRestInBed, MSGBOX_DEFAULT
# 57 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	closemessage
# 58 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	call Common_EventScript_OutOfCenterPartyHeal
# 59 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	releaseall
# 60 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 61 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 62 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_Grunt1::
# 63 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_1, Route119_WeatherInstitute_1F_Text_Grunt1Intro, Route119_WeatherInstitute_1F_Text_Grunt1Defeat
# 64 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 65 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 66 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 67 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_EventScript_Grunt4::
# 68 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_WEATHER_INST_4, Route119_WeatherInstitute_1F_Text_Grunt4Intro, Route119_WeatherInstitute_1F_Text_Grunt4Defeat
# 69 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	msgbox Route119_WeatherInstitute_1F_Text_Grunt4PostBattle, MSGBOX_AUTOCLOSE
# 70 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	end
# 71 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 72 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_Grunt1Intro:
# 73 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "The BOSS got interested in\n"
# 74 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "the research they have going here,\l"
# 75 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "so he sent us out.\p"
# 76 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Weather patterns. Ocean currents.\n"
# 77 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Energy potential.\p"
# 78 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "You think this is just science?\n"
# 79 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "This is the future of power.\l"
# 80 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Now quit meddling!$"
# 81 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 82 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_Grunt1Defeat:
# 83 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Blast it…\n"
# 84 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Blasted by a kid…$"
# 85 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 86 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_Grunt1PostBattle:
# 87 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Our BOSS knows everything.\p"
# 88 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "The oceans can generate energy\n"
# 89 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "beyond your imagination.\p"
# 90 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "But I'm just a GRUNT. What would I know\n"
# 91 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "about what he's thinking?$"
# 92 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 93 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_Grunt4Intro:
# 94 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Huh?\n"
# 95 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "What's a kid doing here?\p"
# 96 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "This doesn't concern you.\n"
# 97 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Go play somewhere else.$"
# 98 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 99 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_Grunt4Defeat:
# 100 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Huh?\n"
# 101 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "I lost?!$"
# 102 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 103 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_Grunt4PostBattle:
# 104 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Oh, no…\n"
# 105 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "I'll catch an earful for losing to a kid…\p"
# 106 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "The BOSS won't forgive failure.\n"
# 107 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Not when the REVOLUTION is so close.\p"
# 108 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Get lost! Before is too late!$"
# 109 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 110 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_EveryoneWentUpstairs:
# 111 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "While I was sleeping, everyone went\n"
# 112 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "upstairs!\p"
# 113 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "They must have found the research\n"
# 114 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "on tidal energy generation.$"
# 115 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 116 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_WowYoureStrong:
# 117 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Wow, you're really strong!\p"
# 118 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "I wish I could be a POKéMON TRAINER\n"
# 119 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "like you!\p"
# 120 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Those TEAM AQUA people... they kept\n"
# 121 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "talking about hydraulic energy,\l"
# 122 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "World flood... It sounded scary.$"
# 123 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 124 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_ProfStudyingRain:
# 125 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "The PROFESSOR loves rain.\n"
# 126 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "That's a fact.\p"
# 127 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "But if it keeps raining, people will be in\n"
# 128 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "trouble. That's another fact.\p"
# 129 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "And thus, the PROFESSOR is studying\n"
# 130 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "if the rain can be put to good use.\p"
# 131 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "But those AQUA people... they want\n"
# 132 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "to weaponize it. Control the tides.\l"
# 133 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Generate power through controlled floods.$"
# 134 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 135 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_NoticingAbnormalWeather:
# 136 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "On the 2nd floor of the INSTITUTE,\n"
# 137 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "we study the weather patterns over\l"
# 138 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "the HOENN region.\p"
# 139 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "We've been noticing temporary and\n"
# 140 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "isolated cases of droughts and\l"
# 141 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "heavy rain lately…\p"
# 142 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "At first we thought it was natural.\n"
# 143 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "But now... we suspect manipulation.\p"
# 144 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "If someone could control ocean currents,\n"
# 145 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "they could generate limitless\l"
# 146 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "hydroelectric power.\p"
# 147 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "The flooding would be devastating...\n"
# 148 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "but they see it as a small price.$"
# 149 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 150 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_WhatWereAquasUpTo:
# 151 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Hello!\n"
# 152 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "We've been saved by your actions!\p"
# 153 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "What I don't understand is what on\n"
# 154 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "earth the AQUAS were up to.\p"
# 155 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "They kept muttering about expanding\n"
# 156 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "the oceans and infinite energy.\p"
# 157 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "As if drowning coastal cities is\n"
# 158 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "not a big deal...$"
# 159 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"

# 160 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
Route119_WeatherInstitute_1F_Text_TakeRestInBed:
# 161 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "There's a bed…\n"
# 162 "data/maps/Route119_WeatherInstitute_1F/scripts.pory"
	.string "Let's take a rest.$"
