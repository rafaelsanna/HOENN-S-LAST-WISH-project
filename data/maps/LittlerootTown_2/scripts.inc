# 1 "data/maps/LittlerootTown_2/scripts.pory"

# 2 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_MapScripts::
# 3 "data/maps/LittlerootTown_2/scripts.pory"
	.byte 0
# 4 "data/maps/LittlerootTown_2/scripts.pory"

# 5 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_EventScript_MoonStoneResearcher::
# 6 "data/maps/LittlerootTown_2/scripts.pory"
	lock
# 7 "data/maps/LittlerootTown_2/scripts.pory"
	faceplayer
# 8 "data/maps/LittlerootTown_2/scripts.pory"
	goto_if_set FLAG_RECEIVED_MOON_STONE_LITTLEROOT, LittlerootTown_2_EventScript_DefaultDialogue
# 9 "data/maps/LittlerootTown_2/scripts.pory"
	
# 10 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_CheckForNidoran, MSGBOX_DEFAULT
# 11 "data/maps/LittlerootTown_2/scripts.pory"
	
# 12 "data/maps/LittlerootTown_2/scripts.pory"
	// Verificação usando CalculatePlayerPartyCount (que existe)
# 13 "data/maps/LittlerootTown_2/scripts.pory"
	specialvar VAR_TEMP_2, CalculatePlayerPartyCount
# 14 "data/maps/LittlerootTown_2/scripts.pory"
	
# 15 "data/maps/LittlerootTown_2/scripts.pory"
	// Verificação manual do party
# 16 "data/maps/LittlerootTown_2/scripts.pory"
	setvar VAR_TEMP_0, 0  // Flag para Nidoran♂
# 17 "data/maps/LittlerootTown_2/scripts.pory"
	setvar VAR_TEMP_1, 0  // Flag para Nidoran♀
# 18 "data/maps/LittlerootTown_2/scripts.pory"
	setvar VAR_TEMP_3, 0  // Índice do Pokémon
# 19 "data/maps/LittlerootTown_2/scripts.pory"
	
# 20 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_CheckPartyLoop::
# 21 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_TEMP_3, VAR_TEMP_2
# 22 "data/maps/LittlerootTown_2/scripts.pory"
	goto_if_ge LittlerootTown_2_CheckResults
# 23 "data/maps/LittlerootTown_2/scripts.pory"
	
# 24 "data/maps/LittlerootTown_2/scripts.pory"
	// Obter espécie do Pokémon atual
# 25 "data/maps/LittlerootTown_2/scripts.pory"
	copyvar VAR_0x8004, VAR_TEMP_3
# 26 "data/maps/LittlerootTown_2/scripts.pory"
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
# 27 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_RESULT, SPECIES_NIDORAN_M
# 28 "data/maps/LittlerootTown_2/scripts.pory"
	call_if_eq LittlerootTown_2_FoundMale
# 29 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_RESULT, SPECIES_NIDORAN_F
# 30 "data/maps/LittlerootTown_2/scripts.pory"
	call_if_eq LittlerootTown_2_FoundFemale
# 31 "data/maps/LittlerootTown_2/scripts.pory"
	
# 32 "data/maps/LittlerootTown_2/scripts.pory"
	addvar VAR_TEMP_3, 1
# 33 "data/maps/LittlerootTown_2/scripts.pory"
	goto LittlerootTown_2_CheckPartyLoop
# 34 "data/maps/LittlerootTown_2/scripts.pory"

# 35 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_FoundMale::
# 36 "data/maps/LittlerootTown_2/scripts.pory"
	setvar VAR_TEMP_0, 1
# 37 "data/maps/LittlerootTown_2/scripts.pory"
	return
# 38 "data/maps/LittlerootTown_2/scripts.pory"

# 39 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_FoundFemale::
# 40 "data/maps/LittlerootTown_2/scripts.pory"
	setvar VAR_TEMP_1, 1
# 41 "data/maps/LittlerootTown_2/scripts.pory"
	return
# 42 "data/maps/LittlerootTown_2/scripts.pory"

# 43 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_CheckResults::
# 44 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_TEMP_0, 1
# 45 "data/maps/LittlerootTown_2/scripts.pory"
	goto_if_ne LittlerootTown_2_EventScript_NoMaleNidoran
# 46 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_TEMP_1, 1
# 47 "data/maps/LittlerootTown_2/scripts.pory"
	goto_if_ne LittlerootTown_2_EventScript_NoFemaleNidoran
# 48 "data/maps/LittlerootTown_2/scripts.pory"
	
# 49 "data/maps/LittlerootTown_2/scripts.pory"
	// Se chegou aqui, tem ambos!
# 50 "data/maps/LittlerootTown_2/scripts.pory"
	goto LittlerootTown_2_EventScript_GiveMoonStone
# 51 "data/maps/LittlerootTown_2/scripts.pory"

# 52 "data/maps/LittlerootTown_2/scripts.pory"
// NOVO: Quando não tem NENHUM dos dois
# 53 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_EventScript_NoNidoran::
# 54 "data/maps/LittlerootTown_2/scripts.pory"
	// Mostra Nidoran♂
# 55 "data/maps/LittlerootTown_2/scripts.pory"
	showmonpic SPECIES_NIDORAN_M, 10, 3
# 56 "data/maps/LittlerootTown_2/scripts.pory"
	playmoncry SPECIES_NIDORAN_M, CRY_MODE_NORMAL
# 57 "data/maps/LittlerootTown_2/scripts.pory"
	waitmoncry
# 58 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_ThisIsMaleNidoran, MSGBOX_DEFAULT
# 59 "data/maps/LittlerootTown_2/scripts.pory"
	hidemonpic
# 60 "data/maps/LittlerootTown_2/scripts.pory"
	
# 61 "data/maps/LittlerootTown_2/scripts.pory"
	// Mostra Nidoran♀
# 62 "data/maps/LittlerootTown_2/scripts.pory"
	showmonpic SPECIES_NIDORAN_F, 10, 3
# 63 "data/maps/LittlerootTown_2/scripts.pory"
	playmoncry SPECIES_NIDORAN_F, CRY_MODE_NORMAL
# 64 "data/maps/LittlerootTown_2/scripts.pory"
	waitmoncry
# 65 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_ThisIsFemaleNidoran, MSGBOX_DEFAULT
# 66 "data/maps/LittlerootTown_2/scripts.pory"
	hidemonpic
# 67 "data/maps/LittlerootTown_2/scripts.pory"
	
# 68 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_NeedBothNidoran, MSGBOX_DEFAULT
# 69 "data/maps/LittlerootTown_2/scripts.pory"
	release
# 70 "data/maps/LittlerootTown_2/scripts.pory"
	end
# 71 "data/maps/LittlerootTown_2/scripts.pory"

# 72 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_EventScript_NoMaleNidoran::
# 73 "data/maps/LittlerootTown_2/scripts.pory"
	// Verifica se também não tem a fêmea
# 74 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_TEMP_1, 0
# 75 "data/maps/LittlerootTown_2/scripts.pory"
	goto_if_eq LittlerootTown_2_EventScript_NoNidoran
# 76 "data/maps/LittlerootTown_2/scripts.pory"
	
# 77 "data/maps/LittlerootTown_2/scripts.pory"
	// Só falta o macho
# 78 "data/maps/LittlerootTown_2/scripts.pory"
	showmonpic SPECIES_NIDORAN_M, 10, 3
# 79 "data/maps/LittlerootTown_2/scripts.pory"
	playmoncry SPECIES_NIDORAN_M, CRY_MODE_NORMAL
# 80 "data/maps/LittlerootTown_2/scripts.pory"
	waitmoncry
# 81 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_NoMaleNidoran, MSGBOX_DEFAULT
# 82 "data/maps/LittlerootTown_2/scripts.pory"
	hidemonpic
# 83 "data/maps/LittlerootTown_2/scripts.pory"
	release
# 84 "data/maps/LittlerootTown_2/scripts.pory"
	end
# 85 "data/maps/LittlerootTown_2/scripts.pory"

# 86 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_EventScript_NoFemaleNidoran::
# 87 "data/maps/LittlerootTown_2/scripts.pory"
	// Verifica se também não tem o macho
# 88 "data/maps/LittlerootTown_2/scripts.pory"
	compare VAR_TEMP_0, 0
# 89 "data/maps/LittlerootTown_2/scripts.pory"
	goto_if_eq LittlerootTown_2_EventScript_NoNidoran
# 90 "data/maps/LittlerootTown_2/scripts.pory"
	
# 91 "data/maps/LittlerootTown_2/scripts.pory"
	// Só falta a fêmea
# 92 "data/maps/LittlerootTown_2/scripts.pory"
	showmonpic SPECIES_NIDORAN_F, 10, 3
# 93 "data/maps/LittlerootTown_2/scripts.pory"
	playmoncry SPECIES_NIDORAN_F, CRY_MODE_NORMAL
# 94 "data/maps/LittlerootTown_2/scripts.pory"
	waitmoncry
# 95 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_NoFemaleNidoran, MSGBOX_DEFAULT
# 96 "data/maps/LittlerootTown_2/scripts.pory"
	hidemonpic
# 97 "data/maps/LittlerootTown_2/scripts.pory"
	release
# 98 "data/maps/LittlerootTown_2/scripts.pory"
	end
# 99 "data/maps/LittlerootTown_2/scripts.pory"

# 100 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_EventScript_GiveMoonStone::
# 101 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_YouHaveBothNidoran, MSGBOX_DEFAULT
# 102 "data/maps/LittlerootTown_2/scripts.pory"
	giveitem ITEM_MOON_STONE
# 103 "data/maps/LittlerootTown_2/scripts.pory"
	setflag FLAG_RECEIVED_MOON_STONE_LITTLEROOT
# 104 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_UseMoonStoneToEvolve, MSGBOX_DEFAULT
# 105 "data/maps/LittlerootTown_2/scripts.pory"
	release
# 106 "data/maps/LittlerootTown_2/scripts.pory"
	end
# 107 "data/maps/LittlerootTown_2/scripts.pory"

# 108 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_EventScript_DefaultDialogue::
# 109 "data/maps/LittlerootTown_2/scripts.pory"
	msgbox LittlerootTown_2_Text_DefaultDialogue, MSGBOX_DEFAULT
# 110 "data/maps/LittlerootTown_2/scripts.pory"
	release
# 111 "data/maps/LittlerootTown_2/scripts.pory"
	end
# 112 "data/maps/LittlerootTown_2/scripts.pory"
	
# 113 "data/maps/LittlerootTown_2/scripts.pory"
// Textos 
# 114 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_CheckForNidoran:
# 115 "data/maps/LittlerootTown_2/scripts.pory"
	.string "I'm researching Moon Stones!\p"
# 116 "data/maps/LittlerootTown_2/scripts.pory"
	.string "If you have both a male and female\n"
# 117 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Nidoran in your party, I'll give you\l"
# 118 "data/maps/LittlerootTown_2/scripts.pory"
	.string "a Moon Stone!$"
# 119 "data/maps/LittlerootTown_2/scripts.pory"

# 120 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_YouHaveBothNidoran:
# 121 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Amazing! You have both a male and\n"
# 122 "data/maps/LittlerootTown_2/scripts.pory"
	.string "female Nidoran!\p"
# 123 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Here's a Moon Stone as promised!$"
# 124 "data/maps/LittlerootTown_2/scripts.pory"

# 125 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_UseMoonStoneToEvolve:
# 126 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Moon Stones can evolve certain\n"
# 127 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Pokémon like Nidorina and Nidorino!$"
# 128 "data/maps/LittlerootTown_2/scripts.pory"

# 129 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_ThisIsMaleNidoran:
# 130 "data/maps/LittlerootTown_2/scripts.pory"
	.string "This is a male Nidoran!$"
# 131 "data/maps/LittlerootTown_2/scripts.pory"

# 132 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_ThisIsFemaleNidoran:
# 133 "data/maps/LittlerootTown_2/scripts.pory"
	.string "This is a female Nidoran!$"
# 134 "data/maps/LittlerootTown_2/scripts.pory"

# 135 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_NeedBothNidoran:
# 136 "data/maps/LittlerootTown_2/scripts.pory"
	.string "You need both a male and female\n"
# 137 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Nidoran in your party!\p"
# 138 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Come back when you have them both!$"
# 139 "data/maps/LittlerootTown_2/scripts.pory"

# 140 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_NoMaleNidoran:
# 141 "data/maps/LittlerootTown_2/scripts.pory"
	.string "This is a male Nidoran!\p"
# 142 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Hmm... I don't see one in your party.\n"
# 143 "data/maps/LittlerootTown_2/scripts.pory"
	.string "You still need this one!$"
# 144 "data/maps/LittlerootTown_2/scripts.pory"

# 145 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_NoFemaleNidoran:
# 146 "data/maps/LittlerootTown_2/scripts.pory"
	.string "This is a female Nidoran!\p"
# 147 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Hmm... I don't see one in your party.\n"
# 148 "data/maps/LittlerootTown_2/scripts.pory"
	.string "You still need this one!$"
# 149 "data/maps/LittlerootTown_2/scripts.pory"

# 150 "data/maps/LittlerootTown_2/scripts.pory"
LittlerootTown_2_Text_DefaultDialogue:
# 151 "data/maps/LittlerootTown_2/scripts.pory"
	.string "Moon Stones are fascinating!\n"
# 152 "data/maps/LittlerootTown_2/scripts.pory"
	.string "They trigger evolution in some Pokémon.$"
