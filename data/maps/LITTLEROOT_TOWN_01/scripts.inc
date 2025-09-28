@ ====================================================================
@ Arquivo: data/maps/LITTLEROOT_TOWN_01/scripts.inc
@ Sistema de Escolha: Pular Prólogo (Warp 2F) ou Jogar Prólogo Normal
@ ====================================================================

LITTLEROOT_TOWN_01_MapScripts::
	.byte 0

LittlerootTown_01_EventScript_JirachiCelebi::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq LittlerootTown_01_Warp      @ SIM: Pular Prólogo (Warp para 2F)
	compare VAR_RESULT, NO
	goto_if_eq LittlerootTown_01_Stay      @ NÃO: Jogar Prólogo (Início normal do evento)
	release
	end

@ ====================================================================
@ OPÇÃO SIM: PULAR PRÓLOGO - Warp para 2º Andar da Casa
@ Simula a conclusão completa do evento Celebi/Jirachi
@ ====================================================================
LittlerootTown_01_Warp::
	msgbox LittlerootTown_01_Text_Yes, MSGBOX_DEFAULT
	closemessage
	
	@ Configurações CRÍTICAS de flags para SIMULAR a conclusão do prólogo Celebi/Jirachi.
	@ Estas flags garantem que o jogo não tente iniciar o evento novamente.
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK @ Importante para o RTC

	@ Variáveis de estado para simular que o jogador já está em um ponto avançado
	setvar VAR_LITTLEROOT_INTRO_STATE, 7 @ Simula que o prólogo está completo
	setvar VAR_LITTLEROOT_TOWN_STATE, 0 @ Estado normal da cidade
	
	fadescreen FADE_TO_BLACK
	delay 40
	
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq LittlerootTown_01_WarpMale
	
	@ Female (ou default)
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 3, 8
	goto LittlerootTown_01_WarpDone
	
LittlerootTown_01_WarpMale::
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 3, 8
	goto LittlerootTown_01_WarpDone

LittlerootTown_01_WarpDone::
	waitstate
	release
	end

@ ====================================================================
@ OPÇÃO NÃO: TELEPORTAR PARA MOSSDEEP01
@ Teleporta o jogador para o novo mapa customizado MOSSDEEP01
@ ====================================================================
LittlerootTown_01_Stay::
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
	closemessage
	
	@ Configurações de flags (mesmas do skip)
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	
	@ Variáveis de estado
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	
	fadescreen FADE_TO_BLACK
	delay 40
	
	@ Warp para o novo mapa MOSSDEEP01 (coordenadas 10, 10 - ajuste conforme necessário)
	warp MAP_MOSSDEEP01, -1, 10, 10
	waitstate
	release
	end

@ ====================================================================
@ Textos do Sistema
@ ====================================================================
LittlerootTown_01_Text_Question:
	.string "Pular prólogo?$"

LittlerootTown_01_Text_Yes:
	.string "Indo para casa.$"

LittlerootTown_01_Text_No:
	.string "Certo, inicie a jornada.$"


