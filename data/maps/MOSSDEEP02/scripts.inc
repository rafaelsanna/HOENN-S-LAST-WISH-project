# 1 "data/maps/MOSSDEEP02/scripts.pory"

# 2 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 3 "data/maps/MOSSDEEP02/scripts.pory"
// PROLOGUE - GRANDMA & GRANDPA CUTSCENE & EARTHQUAKE
# 4 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 5 "data/maps/MOSSDEEP02/scripts.pory"

# 6 "data/maps/MOSSDEEP02/scripts.pory"
.equiv LOCALID_GRANDMA, 1
# 7 "data/maps/MOSSDEEP02/scripts.pory"
.equiv LOCALID_GRANDPA, 2
# 8 "data/maps/MOSSDEEP02/scripts.pory"

# 9 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_MapScripts::
# 10 "data/maps/MOSSDEEP02/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP02_OnFrame
# 11 "data/maps/MOSSDEEP02/scripts.pory"
	.byte 0
# 12 "data/maps/MOSSDEEP02/scripts.pory"

# 13 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_OnFrame:
# 14 "data/maps/MOSSDEEP02/scripts.pory"
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP02_EventScript_StartPrologue
# 15 "data/maps/MOSSDEEP02/scripts.pory"
	.2byte 0
# 16 "data/maps/MOSSDEEP02/scripts.pory"

# 17 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_StartPrologue::
# 18 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_TEMP_0, 1
# 19 "data/maps/MOSSDEEP02/scripts.pory"
	lockall
# 20 "data/maps/MOSSDEEP02/scripts.pory"
	
# 21 "data/maps/MOSSDEEP02/scripts.pory"
	// Small delay for scene setup
# 22 "data/maps/MOSSDEEP02/scripts.pory"
	delay 30
# 23 "data/maps/MOSSDEEP02/scripts.pory"
	
# 24 "data/maps/MOSSDEEP02/scripts.pory"
	// Grandma greets the player
# 25 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 26 "data/maps/MOSSDEEP02/scripts.pory"
	closemessage
# 27 "data/maps/MOSSDEEP02/scripts.pory"
	
# 28 "data/maps/MOSSDEEP02/scripts.pory"
	delay 20
# 29 "data/maps/MOSSDEEP02/scripts.pory"
	
# 30 "data/maps/MOSSDEEP02/scripts.pory"
	// === EARTHQUAKE BEGINS ===
# 31 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 32 "data/maps/MOSSDEEP02/scripts.pory"
	
# 33 "data/maps/MOSSDEEP02/scripts.pory"
	// Screen shake effect (usando ShakeCamera ao invés de ShakeScreen)
# 34 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8004, 2
# 35 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8005, 2
# 36 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8006, 5
# 37 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8007, 10
# 38 "data/maps/MOSSDEEP02/scripts.pory"
	special ShakeCamera
# 39 "data/maps/MOSSDEEP02/scripts.pory"
	waitstate
# 40 "data/maps/MOSSDEEP02/scripts.pory"
	playse SE_M_ROCK_THROW
# 41 "data/maps/MOSSDEEP02/scripts.pory"
	
# 42 "data/maps/MOSSDEEP02/scripts.pory"
	closemessage
# 43 "data/maps/MOSSDEEP02/scripts.pory"
	
# 44 "data/maps/MOSSDEEP02/scripts.pory"
	// Another tremor
# 45 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8004, 3
# 46 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8005, 3
# 47 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8006, 6
# 48 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8007, 8
# 49 "data/maps/MOSSDEEP02/scripts.pory"
	special ShakeCamera
# 50 "data/maps/MOSSDEEP02/scripts.pory"
	waitstate
# 51 "data/maps/MOSSDEEP02/scripts.pory"
	playse SE_M_ROCK_THROW
# 52 "data/maps/MOSSDEEP02/scripts.pory"
	
# 53 "data/maps/MOSSDEEP02/scripts.pory"
	delay 20
# 54 "data/maps/MOSSDEEP02/scripts.pory"
	
# 55 "data/maps/MOSSDEEP02/scripts.pory"
	// Grandma explains the situation
# 56 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_HoennDestroyed, MSGBOX_DEFAULT
# 57 "data/maps/MOSSDEEP02/scripts.pory"
	
# 58 "data/maps/MOSSDEEP02/scripts.pory"
	// Subtle tremor during dialogue
# 59 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8004, 1
# 60 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8005, 1
# 61 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8006, 2
# 62 "data/maps/MOSSDEEP02/scripts.pory"
	setvar VAR_0x8007, 5
# 63 "data/maps/MOSSDEEP02/scripts.pory"
	special ShakeCamera
# 64 "data/maps/MOSSDEEP02/scripts.pory"
	waitstate
# 65 "data/maps/MOSSDEEP02/scripts.pory"
	
# 66 "data/maps/MOSSDEEP02/scripts.pory"
	closemessage
# 67 "data/maps/MOSSDEEP02/scripts.pory"
	delay 20
# 68 "data/maps/MOSSDEEP02/scripts.pory"
	
# 69 "data/maps/MOSSDEEP02/scripts.pory"
	// Grandpa speaks
# 70 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GrandpaLegend, MSGBOX_DEFAULT
# 71 "data/maps/MOSSDEEP02/scripts.pory"
	closemessage
# 72 "data/maps/MOSSDEEP02/scripts.pory"
	
# 73 "data/maps/MOSSDEEP02/scripts.pory"
	delay 20
# 74 "data/maps/MOSSDEEP02/scripts.pory"
	
# 75 "data/maps/MOSSDEEP02/scripts.pory"
	// Player's determination
# 76 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_PlayerDecision, MSGBOX_DEFAULT
# 77 "data/maps/MOSSDEEP02/scripts.pory"
	closemessage
# 78 "data/maps/MOSSDEEP02/scripts.pory"
	
# 79 "data/maps/MOSSDEEP02/scripts.pory"
	delay 15
# 80 "data/maps/MOSSDEEP02/scripts.pory"
	
# 81 "data/maps/MOSSDEEP02/scripts.pory"
	// Grandma wishes good luck
# 82 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GoodLuck, MSGBOX_DEFAULT
# 83 "data/maps/MOSSDEEP02/scripts.pory"
	closemessage
# 84 "data/maps/MOSSDEEP02/scripts.pory"
	
# 85 "data/maps/MOSSDEEP02/scripts.pory"
	setflag FLAG_TEMP_1
# 86 "data/maps/MOSSDEEP02/scripts.pory"
	releaseall
# 87 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 88 "data/maps/MOSSDEEP02/scripts.pory"

# 89 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 90 "data/maps/MOSSDEEP02/scripts.pory"
// GRANDMA - AFTER PROLOGUE (OPTIONAL DIALOGUE)
# 91 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 92 "data/maps/MOSSDEEP02/scripts.pory"

# 93 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_Grandma::
# 94 "data/maps/MOSSDEEP02/scripts.pory"
	lock
# 95 "data/maps/MOSSDEEP02/scripts.pory"
	faceplayer
# 96 "data/maps/MOSSDEEP02/scripts.pory"
	goto_if_set FLAG_TEMP_1, MOSSDEEP02_EventScript_GrandmaAfterPrologue
# 97 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 98 "data/maps/MOSSDEEP02/scripts.pory"
	release
# 99 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 100 "data/maps/MOSSDEEP02/scripts.pory"

# 101 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_GrandmaAfterPrologue::
# 102 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GrandmaReminder, MSGBOX_DEFAULT
# 103 "data/maps/MOSSDEEP02/scripts.pory"
	release
# 104 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 105 "data/maps/MOSSDEEP02/scripts.pory"

# 106 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 107 "data/maps/MOSSDEEP02/scripts.pory"
// GRANDPA - AFTER PROLOGUE (OPTIONAL DIALOGUE)
# 108 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 109 "data/maps/MOSSDEEP02/scripts.pory"

# 110 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_Grandpa::
# 111 "data/maps/MOSSDEEP02/scripts.pory"
	lock
# 112 "data/maps/MOSSDEEP02/scripts.pory"
	faceplayer
# 113 "data/maps/MOSSDEEP02/scripts.pory"
	goto_if_set FLAG_TEMP_1, MOSSDEEP02_EventScript_GrandpaAfterPrologue
# 114 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GrandpaLegend, MSGBOX_DEFAULT
# 115 "data/maps/MOSSDEEP02/scripts.pory"
	release
# 116 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 117 "data/maps/MOSSDEEP02/scripts.pory"

# 118 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_GrandpaAfterPrologue::
# 119 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_GrandpaEncouragement, MSGBOX_DEFAULT
# 120 "data/maps/MOSSDEEP02/scripts.pory"
	release
# 121 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 122 "data/maps/MOSSDEEP02/scripts.pory"

# 123 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 124 "data/maps/MOSSDEEP02/scripts.pory"
// MOM - OPTIONAL DIALOGUE (se você tiver uma mãe no mapa)
# 125 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 126 "data/maps/MOSSDEEP02/scripts.pory"

# 127 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_Mom::
# 128 "data/maps/MOSSDEEP02/scripts.pory"
	lock
# 129 "data/maps/MOSSDEEP02/scripts.pory"
	faceplayer
# 130 "data/maps/MOSSDEEP02/scripts.pory"
	goto_if_set FLAG_TEMP_1, MOSSDEEP02_EventScript_MomAfterPrologue
# 131 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_MomWorried, MSGBOX_DEFAULT
# 132 "data/maps/MOSSDEEP02/scripts.pory"
	release
# 133 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 134 "data/maps/MOSSDEEP02/scripts.pory"

# 135 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_EventScript_MomAfterPrologue::
# 136 "data/maps/MOSSDEEP02/scripts.pory"
	msgbox MOSSDEEP02_Text_MomEncouragement, MSGBOX_DEFAULT
# 137 "data/maps/MOSSDEEP02/scripts.pory"
	release
# 138 "data/maps/MOSSDEEP02/scripts.pory"
	end
# 139 "data/maps/MOSSDEEP02/scripts.pory"

# 140 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 141 "data/maps/MOSSDEEP02/scripts.pory"
// DIALOGUE TEXT
# 142 "data/maps/MOSSDEEP02/scripts.pory"
// ====================================================================
# 143 "data/maps/MOSSDEEP02/scripts.pory"

# 144 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_GrandmaWelcome:
# 145 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandma: Oh, you're awake!\p"
# 146 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Thank goodness...\n"
# 147 "data/maps/MOSSDEEP02/scripts.pory"
	.string "You've been having nightmares.$"
# 148 "data/maps/MOSSDEEP02/scripts.pory"

# 149 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_EarthquakeWarning:
# 150 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandma: Wait... do you feel that?\p"
# 151 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Not again!$"
# 152 "data/maps/MOSSDEEP02/scripts.pory"

# 153 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_HoennDestroyed:
# 154 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandma: Ever since the Great Disaster,\n"
# 155 "data/maps/MOSSDEEP02/scripts.pory"
	.string "these quakes won't stop...\p"
# 156 "data/maps/MOSSDEEP02/scripts.pory"
	.string "The land is tearing itself apart.\n"
# 157 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Storms rage without end.\p"
# 158 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Hoenn is dying, child.\n"
# 159 "data/maps/MOSSDEEP02/scripts.pory"
	.string "And no one knows why.$"
# 160 "data/maps/MOSSDEEP02/scripts.pory"

# 161 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_GrandpaLegend:
# 162 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandpa: My grandfather fled\n"
# 163 "data/maps/MOSSDEEP02/scripts.pory"
	.string "from Johto long ago.\p"
# 164 "data/maps/MOSSDEEP02/scripts.pory"
	.string "He built an altar on the northern cliffs\n"
# 165 "data/maps/MOSSDEEP02/scripts.pory"
	.string "and spoke of Celebi...\p"
# 166 "data/maps/MOSSDEEP02/scripts.pory"
	.string "A guardian that can travel through time.\p"
# 167 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Perhaps the answers lie there.$"
# 168 "data/maps/MOSSDEEP02/scripts.pory"

# 169 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_PlayerDecision:
# 170 "data/maps/MOSSDEEP02/scripts.pory"
	.string "{PLAYER} feels a strange pull...\p"
# 171 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Those recurring dreams...\n"
# 172 "data/maps/MOSSDEEP02/scripts.pory"
	.string "The ruined altar...\p"
# 173 "data/maps/MOSSDEEP02/scripts.pory"
	.string "There has to be a connection.$"
# 174 "data/maps/MOSSDEEP02/scripts.pory"

# 175 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_GoodLuck:
# 176 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandma: Please, be careful out there.\p"
# 177 "data/maps/MOSSDEEP02/scripts.pory"
	.string "The path to the ruins is treacherous.$"
# 178 "data/maps/MOSSDEEP02/scripts.pory"

# 179 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_GrandmaReminder:
# 180 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandma: Take care of yourself,\n"
# 181 "data/maps/MOSSDEEP02/scripts.pory"
	.string "and remember what we told you.$"
# 182 "data/maps/MOSSDEEP02/scripts.pory"

# 183 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_GrandpaEncouragement:
# 184 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Grandpa: You have our blessing.\n"
# 185 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Go find the truth, {PLAYER}.$"
# 186 "data/maps/MOSSDEEP02/scripts.pory"

# 187 "data/maps/MOSSDEEP02/scripts.pory"
// MOM texts (caso você tenha uma mãe no mapa)
# 188 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_MomWorried:
# 189 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Mom: You look pale, sweetheart.\p"
# 190 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Those nightmares again?\n"
# 191 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Maybe you should rest a bit more...$"
# 192 "data/maps/MOSSDEEP02/scripts.pory"

# 193 "data/maps/MOSSDEEP02/scripts.pory"
MOSSDEEP02_Text_MomEncouragement:
# 194 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Mom: I know you feel you must do this.\p"
# 195 "data/maps/MOSSDEEP02/scripts.pory"
	.string "Just promise me you'll come back safe.$"
