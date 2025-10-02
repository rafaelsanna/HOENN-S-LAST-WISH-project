// ====================================================================
// PROLOGUE - GRANDMA & GRANDPA CUTSCENE & EARTHQUAKE
// ====================================================================

.equiv LOCALID_GRANDMA, 1
.equiv LOCALID_GRANDPA, 2

MOSSDEEP02_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP02_OnFrame
	.byte 0

MOSSDEEP02_OnFrame:
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP02_EventScript_StartPrologue
	.2byte 0

MOSSDEEP02_EventScript_StartPrologue::
	setvar VAR_TEMP_0, 1
	lockall
	
	// Small delay for scene setup
	delay 30
	
	// Grandma greets the player
	msgbox MOSSDEEP02_Text_GrandmaWelcome, MSGBOX_DEFAULT
	closemessage
	
	delay 20
	
	// === EARTHQUAKE BEGINS ===
	msgbox MOSSDEEP02_Text_EarthquakeWarning, MSGBOX_DEFAULT
	
	// Screen shake effect (usando ShakeCamera ao invés de ShakeScreen)
	setvar VAR_0x8004, 2
	setvar VAR_0x8005, 2
	setvar VAR_0x8006, 5
	setvar VAR_0x8007, 10
	special ShakeCamera
	waitstate
	playse SE_M_ROCK_THROW
	
	closemessage
	
	// Another tremor
	setvar VAR_0x8004, 3
	setvar VAR_0x8005, 3
	setvar VAR_0x8006, 6
	setvar VAR_0x8007, 8
	special ShakeCamera
	waitstate
	playse SE_M_ROCK_THROW
	
	delay 20
	
	// Grandma explains the situation
	msgbox MOSSDEEP02_Text_HoennDestroyed, MSGBOX_DEFAULT
	
	// Subtle tremor during dialogue
	setvar VAR_0x8004, 1
	setvar VAR_0x8005, 1
	setvar VAR_0x8006, 2
	setvar VAR_0x8007, 5
	special ShakeCamera
	waitstate
	
	closemessage
	delay 20
	
	// Grandpa speaks
	msgbox MOSSDEEP02_Text_GrandpaLegend, MSGBOX_DEFAULT
	closemessage
	
	delay 20
	
	// Player's determination
	msgbox MOSSDEEP02_Text_PlayerDecision, MSGBOX_DEFAULT
	closemessage
	
	delay 15
	
	// Grandma wishes good luck
	msgbox MOSSDEEP02_Text_GoodLuck, MSGBOX_DEFAULT
	closemessage
	
	setflag FLAG_TEMP_1
	releaseall
	end

// ====================================================================
// GRANDMA - AFTER PROLOGUE (OPTIONAL DIALOGUE)
// ====================================================================

MOSSDEEP02_EventScript_Grandma::
	lock
	faceplayer
	goto_if_set FLAG_TEMP_1, MOSSDEEP02_EventScript_GrandmaAfterPrologue
	msgbox MOSSDEEP02_Text_GrandmaWelcome, MSGBOX_DEFAULT
	release
	end

MOSSDEEP02_EventScript_GrandmaAfterPrologue::
	msgbox MOSSDEEP02_Text_GrandmaReminder, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// GRANDPA - AFTER PROLOGUE (OPTIONAL DIALOGUE)
// ====================================================================

MOSSDEEP02_EventScript_Grandpa::
	lock
	faceplayer
	goto_if_set FLAG_TEMP_1, MOSSDEEP02_EventScript_GrandpaAfterPrologue
	msgbox MOSSDEEP02_Text_GrandpaLegend, MSGBOX_DEFAULT
	release
	end

MOSSDEEP02_EventScript_GrandpaAfterPrologue::
	msgbox MOSSDEEP02_Text_GrandpaEncouragement, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// MOM - OPTIONAL DIALOGUE (se você tiver uma mãe no mapa)
// ====================================================================

MOSSDEEP02_EventScript_Mom::
	lock
	faceplayer
	goto_if_set FLAG_TEMP_1, MOSSDEEP02_EventScript_MomAfterPrologue
	msgbox MOSSDEEP02_Text_MomWorried, MSGBOX_DEFAULT
	release
	end

MOSSDEEP02_EventScript_MomAfterPrologue::
	msgbox MOSSDEEP02_Text_MomEncouragement, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// DIALOGUE TEXT
// ====================================================================

MOSSDEEP02_Text_GrandmaWelcome:
	.string "Grandma: Oh, you're awake!\p"
	.string "Thank goodness...\n"
	.string "You've been having nightmares.$"

MOSSDEEP02_Text_EarthquakeWarning:
	.string "Grandma: Wait... do you feel that?\p"
	.string "Not again!$"

MOSSDEEP02_Text_HoennDestroyed:
	.string "Grandma: Ever since the Great Disaster,\n"
	.string "these quakes won't stop...\p"
	.string "The land is tearing itself apart.\n"
	.string "Storms rage without end.\p"
	.string "Hoenn is dying, child.\n"
	.string "And no one knows why.$"

MOSSDEEP02_Text_GrandpaLegend:
	.string "Grandpa: My grandfather fled\n"
	.string "from Johto long ago.\p"
	.string "He built an altar on the northern cliffs\n"
	.string "and spoke of Celebi...\p"
	.string "A guardian that can travel through time.\p"
	.string "Perhaps the answers lie there.$"

MOSSDEEP02_Text_PlayerDecision:
	.string "{PLAYER} feels a strange pull...\p"
	.string "Those recurring dreams...\n"
	.string "The ruined altar...\p"
	.string "There has to be a connection.$"

MOSSDEEP02_Text_GoodLuck:
	.string "Grandma: Please, be careful out there.\p"
	.string "The path to the ruins is treacherous.$"

MOSSDEEP02_Text_GrandmaReminder:
	.string "Grandma: Take care of yourself,\n"
	.string "and remember what we told you.$"

MOSSDEEP02_Text_GrandpaEncouragement:
	.string "Grandpa: You have our blessing.\n"
	.string "Go find the truth, {PLAYER}.$"

// MOM texts (caso você tenha uma mãe no mapa)
MOSSDEEP02_Text_MomWorried:
	.string "Mom: You look pale, sweetheart.\p"
	.string "Those nightmares again?\n"
	.string "Maybe you should rest a bit more...$"

MOSSDEEP02_Text_MomEncouragement:
	.string "Mom: I know you feel you must do this.\p"
	.string "Just promise me you'll come back safe.$"




