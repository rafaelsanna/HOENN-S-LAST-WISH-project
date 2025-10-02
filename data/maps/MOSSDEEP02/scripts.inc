// ====================================================================
// PRÓLOGO - CUTSCENE DA AVÓ E TERREMOTO
// ====================================================================

.equiv LOCALID_AVO, 1
.equiv LOCALID_AVO2, 2

MOSSDEEP02_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP02_OnFrame
	.byte 0

MOSSDEEP02_OnFrame:
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP02_EventScript_StartPrologue
	.2byte 0

MOSSDEEP02_EventScript_StartPrologue::
	setvar VAR_TEMP_0, 1
	lockall
	
	// Player aparece da tela preta
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP02_Movement_PlayerAppear
	waitmovement 0
	
	// Avó se aproxima preocupada
	applymovement LOCALID_AVO, MOSSDEEP02_Movement_AvoApproach
	waitmovement 0
	
	msgbox MOSSDEEP02_Text_GrandmaWelcome, MSGBOX_DEFAULT
	closemessage
	
	// === TERREMOTO COMEÇA === (COMENTADO POR ENQUANTO)
	msgbox MOSSDEEP02_Text_EarthquakeWarning, MSGBOX_DEFAULT
	closemessage
	
	/*
	// Efeito de tremor na tela - COMENTADO
	playse SE_M_ROCK_THROW
	special ShakeScreen
	waitstate
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP02_Movement_Earthquake
	applymovement LOCALID_AVO, MOSSDEEP02_Movement_Earthquake
	waitmovement 0
	*/

	// Avó fala sobre a destruição
	msgbox MOSSDEEP02_Text_HoennDestroyed, MSGBOX_DEFAULT
	closemessage
	
	// Avó conta a lenda
	msgbox MOSSDEEP02_Text_LegendOfCelebi, MSGBOX_DEFAULT
	closemessage
	
	// Player decide investigar
	msgbox MOSSDEEP02_Text_PlayerDecision, MSGBOX_DEFAULT
	closemessage
	
	// Avó dá item importante (opcional)
	// giveitem ITEM_OLD_AMULET, 1
	
	msgbox MOSSDEEP02_Text_GoodLuck, MSGBOX_DEFAULT
	closemessage
	
	// Avó volta para posição original
	applymovement LOCALID_AVO, MOSSDEEP02_Movement_AvoReturn
	waitmovement 0
	
	releaseall
	end

// ====================================================================
// MOVIMENTOS
// ====================================================================

MOSSDEEP02_Movement_PlayerAppear:
	walk_up
	walk_up
	walk_up
	step_end

MOSSDEEP02_Movement_AvoApproach:
	walk_down
	walk_down
	walk_left
	walk_left
	step_end

MOSSDEEP02_Movement_Earthquake:
	walk_in_place_fast_down
	delay_4
	walk_in_place_fast_up
	delay_4
	step_end

MOSSDEEP02_Movement_AvoReturn:
	walk_right
	walk_right
	walk_up
	walk_up
	step_end

// ====================================================================
// TEXTS (ENGLISH)
// ====================================================================

MOSSDEEP02_Text_GrandmaWelcome:
	.string "Grandma: You're finally awake, child!\n"
	.string "We were so worried about you...$"

MOSSDEEP02_Text_EarthquakeWarning:
	.string "Grandma: What was that?\n"
	.string "The ground is shaking again!$"

MOSSDEEP02_Text_HoennDestroyed:
	.string "Grandma: Since the Great Tragedy,\n"
	.string "Hoenn has never been the same.\p"
	.string "Earthquakes, storms...\n"
	.string "The region is dying.$"

MOSSDEEP02_Text_LegendOfCelebi:
	.string "Grandma: My great-grandfather came\n"
	.string "from Johto before the tragedy.\p"
	.string "He built an altar atop Mossdeep\n"
	.string "for Celebi.\p"
	.string "He said this mythical creature\n"
	.string "can travel through time...$"

MOSSDEEP02_Text_PlayerDecision:
	.string "{PLAYER} feels a chill...\n"
	.string "Those dreams...\p"
	.string "Need to investigate the altar!$"

MOSSDEEP02_Text_GoodLuck:
	.string "Grandma: Be careful, child!\n"
	.string "The ruins are dangerous.$"

