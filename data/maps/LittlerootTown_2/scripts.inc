LittlerootTown_2_MapScripts::
	.byte 0

LittlerootTown_2_EventScript_MoonStoneResearcher::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_MOON_STONE_LITTLEROOT, LittlerootTown_2_EventScript_DefaultDialogue
	
	msgbox LittlerootTown_2_Text_CheckForNidoran, MSGBOX_DEFAULT
	
	// Verificação usando CalculatePlayerPartyCount (que existe)
	specialvar VAR_TEMP_2, CalculatePlayerPartyCount
	
	// Verificação manual do party
	setvar VAR_TEMP_0, 0  // Flag para Nidoran♂
	setvar VAR_TEMP_1, 0  // Flag para Nidoran♀
	setvar VAR_TEMP_3, 0  // Índice do Pokémon
	
LittlerootTown_2_CheckPartyLoop::
	compare VAR_TEMP_3, VAR_TEMP_2
	goto_if_ge LittlerootTown_2_CheckResults
	
	// Obter espécie do Pokémon atual
	copyvar VAR_0x8004, VAR_TEMP_3
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
	compare VAR_RESULT, SPECIES_NIDORAN_M
	call_if_eq LittlerootTown_2_FoundMale
	compare VAR_RESULT, SPECIES_NIDORAN_F
	call_if_eq LittlerootTown_2_FoundFemale
	
	addvar VAR_TEMP_3, 1
	goto LittlerootTown_2_CheckPartyLoop

LittlerootTown_2_FoundMale::
	setvar VAR_TEMP_0, 1
	return

LittlerootTown_2_FoundFemale::
	setvar VAR_TEMP_1, 1
	return

LittlerootTown_2_CheckResults::
	compare VAR_TEMP_0, 1
	goto_if_ne LittlerootTown_2_EventScript_NoMaleNidoran
	compare VAR_TEMP_1, 1
	goto_if_ne LittlerootTown_2_EventScript_NoFemaleNidoran
	
	// Se chegou aqui, tem ambos!
	goto LittlerootTown_2_EventScript_GiveMoonStone

LittlerootTown_2_EventScript_GiveMoonStone::
	msgbox LittlerootTown_2_Text_YouHaveBothNidoran, MSGBOX_DEFAULT
	giveitem ITEM_MOON_STONE
	setflag FLAG_RECEIVED_MOON_STONE_LITTLEROOT
	msgbox LittlerootTown_2_Text_UseMoonStoneToEvolve, MSGBOX_DEFAULT
	release
	end

LittlerootTown_2_EventScript_NoMaleNidoran::
	msgbox LittlerootTown_2_Text_NoMaleNidoran, MSGBOX_DEFAULT
	release
	end

LittlerootTown_2_EventScript_NoFemaleNidoran::
	msgbox LittlerootTown_2_Text_NoFemaleNidoran, MSGBOX_DEFAULT
	release
	end

LittlerootTown_2_EventScript_DefaultDialogue::
	msgbox LittlerootTown_2_Text_DefaultDialogue, MSGBOX_DEFAULT
	release
	end

// Textos
LittlerootTown_2_Text_CheckForNidoran:
	.string "I'm researching Moon Stones!\p"
	.string "If you have both a male and female\n"
	.string "Nidoran in your party, I'll give you\l"
	.string "a Moon Stone!$"

LittlerootTown_2_Text_YouHaveBothNidoran:
	.string "Amazing! You have both a male and\n"
	.string "female Nidoran!\p"
	.string "Here's a Moon Stone as promised!$"

LittlerootTown_2_Text_UseMoonStoneToEvolve:
	.string "Moon Stones can evolve certain\n"
	.string "Pokémon like Nidorina and Nidorino!$"

LittlerootTown_2_Text_NoMaleNidoran:
	.string "Hmm... I don't see a male Nidoran\n"
	.string "in your party.\p"
	.string "Come back when you have both!$"

LittlerootTown_2_Text_NoFemaleNidoran:
	.string "Hmm... I don't see a female Nidoran\n"
	.string "in your party.\p"
	.string "Come back when you have both!$"

LittlerootTown_2_Text_DefaultDialogue:
	.string "Moon Stones are fascinating!\n"
	.string "They trigger evolution in some Pokémon.$"




