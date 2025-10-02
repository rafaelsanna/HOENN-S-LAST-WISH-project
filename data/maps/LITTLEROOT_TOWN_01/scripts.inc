// ====================================================================
// DEFINIÇÕES
// ====================================================================

// Local IDs dos objetos no mapa
.equiv LOCALID_JIRACHI, 1      // ← O JIRACHI SERÁ O OBJETO 1
.equiv LOCALID_CELEBI,  2      // ← CELEBI SERÁ O OBJETO 2

LITTLEROOT_TOWN_01_MapScripts::
	.byte 0

// Script do Jirachi (OBJETO 1 no mapa)
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
	// Fase 1: Jirachi começa a voar ao redor
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleStart
	waitmovement LOCALID_JIRACHI
	
	// Fase 2: Efeitos visuais começam
	playse SE_M_PSYBEAM
	fadescreenspeed FADE_FROM_WHITE, 12
	delay 20
	
	// Fase 3: Jirachi completa a volta
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleComplete
	waitmovement LOCALID_JIRACHI
	
	// Fase 5: Efeito final explosivo
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
	
	// === CONFIGURAR PONTO DE RESPAWN (HEAL LOCATION) ===
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq LittlerootTown_01_WarpMale
	
	// FEMALE - vai pra casa da May
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	
	// *** IMPORTANTE: Define o respawn para a casa da May ***
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	release
	end

LittlerootTown_01_WarpMale::
	// MALE - vai pra casa do Brendan
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	
	// *** IMPORTANTE: Define o respawn para a casa do Brendan ***
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	release
	end

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

LittlerootTown_Movement_JirachiSpin:
	face_left
	delay_2
	face_up
	delay_2
	face_right
	delay_2
	face_down
	delay_2
	face_left
	delay_2
	face_up
	delay_2
	face_right
	delay_2
	face_down
	delay_2
	step_end

LittlerootTown_01_Stay::
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
	closemessage

	// === DAR RUNNING SHOES TAMBÉM ===
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	
	// === CONFIGURAÇÃO CRÍTICA ===
	// 1. Setar o respawn ANTES de qualquer coisa
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	
	// 2. Flags essenciais
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	setflag FLAG_ADVENTURE_STARTED
	
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	
	// 3. Fade to black with longer duration (wake up effect)
	fadescreen FADE_TO_BLACK
	delay 60               // Aumentado de 40 para 60
	
	// 4. Warp to bedroom
	warp MAP_MOSSDEEP02, 13, 8
	waitstate
	
	// 5. Stay black for longer (sleeping effect)
	delay 80               // Tela preta adicional após o warp
	
	// 6. Slow fade in (waking up)
	fadescreenspeed FADE_FROM_BLACK, 4    // Fade lento (4 = bem devagar)
	
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

LittlerootTown_JirachiScript::
	lock
	faceplayer
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_Jirachi_Case0
	case 1, LittlerootTown_Jirachi_Case1
	case 2, LittlerootTown_Jirachi_Case2
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
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

LittlerootTown_01_Text_CelebiLost:
	.string "Celebi: Hi! I'm lost in time...\ncan you help me find my way?$"

LittlerootTown_01_Text_CelebiHelp:
	.string "Celebi: Please help me!\nI need to return to my forest!$"

LittlerootTown_01_Text_CelebiForest:
	.string "Celebi: Hi there!\nDo you know the way to Ilex Forest?$"

LittlerootTown_01_Text_JirachiWish:
	.string "Jirachi: I am the Wish Pokemon!\nMake a wish and I might grant it!$"

LittlerootTown_01_Text_JirachiSleep:
	.string "Jirachi: Hello! I've been sleeping\nfor 1000 years... what year is it?$"

LittlerootTown_01_Text_JirachiGrant:
	.string "Jirachi: They say I can grant any wish!\nWhat would you wish for?$"




