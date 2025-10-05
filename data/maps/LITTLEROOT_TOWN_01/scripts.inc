// ====================================================================
// DREAM HELM - JIRACHI WARP PARA MOSSDEEP01
// ====================================================================

.equiv LOCALID_JIRACHI, 1
.equiv LOCALID_CELEBI,  2

LITTLEROOT_TOWN_01_MapScripts::
	.byte 0

LittlerootTown_01_EventScript_JirachiCelebi::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_JirachiIntro, MSGBOX_DEFAULT
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq LittlerootTown_01_JirachiWarp
	goto LittlerootTown_01_Stay

LittlerootTown_01_JirachiWarp::
	msgbox LittlerootTown_01_Text_JirachiTimeWarp, MSGBOX_DEFAULT
	closemessage
	
	// === CUTSCENE ÉPICA DO JIRACHI ===
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleStart
	waitmovement LOCALID_JIRACHI
	
	playse SE_M_PSYBEAM
	fadescreenspeed FADE_FROM_WHITE, 12
	delay 20
	
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleComplete
	waitmovement LOCALID_JIRACHI
	
	playse SE_M_MOONLIGHT
	delay 15
	playse SE_M_MORNING_SUN
	fadescreen FADE_TO_BLACK
	delay 60
	
	// === CONFIGURAÇÃO DO PROGRESSO DO JOGO ===
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	setflag FLAG_ADVENTURE_STARTED
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
	
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq LittlerootTown_01_WarpMale
	
	// FEMALE
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	release
	end

LittlerootTown_01_WarpMale::
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	release
	end

LittlerootTown_01_Stay::
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
	closemessage

	// === RUNNING SHOES ===
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	
	// === CONFIGURAÇÃO CRÍTICA ===
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	setflag FLAG_ADVENTURE_STARTED
	
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	
	// === FADE TO BLACK (DORMINDO) ===
	fadescreen FADE_TO_BLACK
	delay 60
	
	// === WARP PARA MOSSDEEP01 (DENTRO DA BARRACA) ===
	warp MAP_MOSSDEEP01, 11, 71
	waitstate
	
	// Continua black (ainda dormindo)
	delay 80
	
	// NÃO fazer fade in aqui - deixar o OnFrame fazer isso
	
	release
	end

// Movimentos
LittlerootTown_Movement_JirachiCircleStart:
	walk_left
	walk_left
	walk_down
	walk_down
	step_end

LittlerootTown_Movement_JirachiCircleComplete:
	walk_right
	walk_right
	walk_up
	walk_up
	step_end

// Scripts do Celebi
LittlerootTown_CelebiScript::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_CelebiWarning, MSGBOX_DEFAULT
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_Celebi_Case0
	case 1, LittlerootTown_Celebi_Case1
	case 2, LittlerootTown_Celebi_Case2
	release
	end

LittlerootTown_Celebi_Case0::
	msgbox LittlerootTown_01_Text_CelebiLost, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Celebi_Case1::
	msgbox LittlerootTown_01_Text_CelebiHelp, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Celebi_Case2::
	msgbox LittlerootTown_01_Text_CelebiForest, MSGBOX_DEFAULT
	release
	end

// Scripts do Jirachi
LittlerootTown_JirachiScript::
	lock
	faceplayer
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_Jirachi_Case0
	case 1, LittlerootTown_Jirachi_Case1
	case 2, LittlerootTown_Jirachi_Case2
	release
	end

LittlerootTown_Jirachi_Case0::
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Jirachi_Case1::
	msgbox LittlerootTown_01_Text_JirachiSleep, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Jirachi_Case2::
	msgbox LittlerootTown_01_Text_JirachiGrant, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// TEXTOS
// ====================================================================

LittlerootTown_01_Text_JirachiIntro:
	.string "Jirachi: I am the wish Pokémon!\n"
	.string "I can warp time and space!\p"
	.string "Would you like to skip the prologue\n"
	.string "and go straight home?$"

LittlerootTown_01_Text_Question:
	.string "Skip prologue?$"

LittlerootTown_01_Text_JirachiTimeWarp:
	.string "Jirachi: Your wish is my command!\n"
	.string "TIME WARP - ACTIVATE!$"

LittlerootTown_01_Text_No:
	.string "Alright, start the journey.$"

LittlerootTown_01_Text_CelebiWarning:
	.string "Celebi: Greetings, traveler of time...\p"
	.string "I have witnessed centuries pass\n"
	.string "and seen Hoenn's beauty flourish.\p"
	.string "Your journey ahead is filled with\n"
	.string "wonder and discovery.\p"
	.string "Cherish each moment, for every\n"
	.string "step shapes your legend!$"

LittlerootTown_01_Text_CelebiLost:
	.string "Celebi: The forests whisper tales\n"
	.string "of trainers who became legends.\p"
	.string "Your path is yours to create - \n"
	.string "make it memorable!$"

LittlerootTown_01_Text_CelebiHelp:
	.string "Celebi: Every great champion\n"
	.string "started with a single step.\p"
	.string "Your adventure begins today -\n"
	.string "where will it lead you?$"

LittlerootTown_01_Text_CelebiForest:
	.string "Celebi: Time flows like a river,\n"
	.string "and your journey is about to begin.\p"
	.string "The memories you'll create...\n"
	.string "they will last forever!$"

LittlerootTown_01_Text_JirachiWish:
	.string "Jirachi: I am the Wish Pokemon!\nMake a wish and I might grant it!$"

LittlerootTown_01_Text_JirachiSleep:
	.string "Jirachi: Hello! I've been sleeping\nfor 1000 years... what year is it?$"

LittlerootTown_01_Text_JirachiGrant:
	.string "Jirachi: They say I can grant any wish!\nWhat would you wish for?$"





