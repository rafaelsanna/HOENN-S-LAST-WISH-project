# 1 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 2 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 3 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// DREAM HELM - pre game QOL skip
# 4 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 5 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 6 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
.equiv LOCALID_JIRACHI, 1
# 7 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
.equiv LOCALID_CELEBI,  2
# 8 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 9 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LITTLEROOT_TOWN_01_MapScripts::
# 10 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_01_OnTransition
# 11 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.byte 0
# 12 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 13 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_OnTransition:
# 14 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 15 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 16 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_MoveMomToMaysDoor
# 17 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_unset FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_SetTwinPos
# 18 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_TOWN_STATE, 3, LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos
# 19 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_MAY, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
# 20 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
# 21 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_OLDALE_RIVAL_STATE, 1, LittlerootTown_EventScript_MoveRivalFromOldale
# 22 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_EventScript_SetRivalLeftForRoute103
# 23 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_HideMapNamePopup
# 24 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_EventScript_LeftLabAfterDexUpgrade
# 25 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_set FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT, LittlerootTown_EventScript_HideResearchAssistant
# 26 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 27 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 28 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 29 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_EventScript_ShowGrandmaStory::
# 30 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lockall
# 31 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 32 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 33 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Fade to black and silence music
# 34 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_PSYBEAM
# 35 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeoutbgm 0
# 36 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 37 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 40
# 38 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 39 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0. ARCTIBAX - forgotten age
# 40 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTIBAX, 10, 3
# 41 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 42 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 43 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 44 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 45 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 46 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.1. ARCTOVISH - Hoenn was a paradise
# 47 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOVISH, 10, 3
# 48 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 49 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 50 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 51 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 52 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 53 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.2. ARCTOZOLT - People and Pokémon lived as one
# 54 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOZOLT, 10, 3
# 55 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 56 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 57 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 58 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 59 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 60 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.3. ARMAROUGE - the balance
# 61 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARMAROUGE, 10, 3
# 62 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 63 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 64 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 65 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 66 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 67 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 1. AEGISLASH - KYOGRE
# 68 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 69 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 70 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 71 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 72 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 73 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 74 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 2. ALOMOMOLA - GROUNDON
# 75 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 76 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 77 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
# 78 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 79 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 80 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 81 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 3. AVALUGG - The great battle
# 82 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 83 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 84 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 85 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
# 86 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 87 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 88 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 89 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 4. AMAURA - The FLOOD
# 90 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 91 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
# 92 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 93 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 94 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 95 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 5. AROMATISSE - TSUNAMI
# 96 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 97 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
# 98 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 99 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 100 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 101 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 6. ARROKUDA - VOLCANO
# 102 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 103 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
# 104 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 105 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 106 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 107 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 7. AUDINO - DESTROYED CITIES
# 108 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 109 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
# 110 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 111 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 112 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 113 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 8. AURORUS - FLOODED CITIES
# 114 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 115 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
# 116 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 117 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 118 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 119 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 9. AMOONGUSS - LAVA ON THE LANDS
# 120 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 121 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
# 122 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 123 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 124 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 125 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 10. APPLIN - A legend appears jirachi and celebi
# 126 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 127 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
# 128 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 129 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 130 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 131 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 11. APPLETUN - The MAGIC SHRINE
# 132 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 133 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
# 134 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 135 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 136 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 137 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 12. AXEW - JIRACHI USING ITS POWERS TO GRANT A WISH
# 138 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 139 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
# 140 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 141 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 142 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 143 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 13. ARBOLIVA - JIRACHI USING ITS POWERS TO GRANT A WISH
# 144 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 145 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
# 146 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 147 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 148 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 149 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Final - MILLENION COMMET
# 150 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 151 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 152 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 153 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 154 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Return to normal screen
# 155 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 156 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 157 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 158 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Restore ambient music
# 159 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeinbgm 0
# 160 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 161 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_WelcomeToNewWorld, MSGBOX_DEFAULT
# 162 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 163 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 164 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	releaseall
# 165 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	return	
# 166 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 167 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_EventScript_JirachiCelebi::
# 168 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lockall
# 169 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GentleIntroduction, MSGBOX_DEFAULT
# 170 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiCloseEyes, MSGBOX_DEFAULT
# 171 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 172 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Fade to black and silence music
# 173 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeoutbgm 0
# 174 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 175 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 40
# 176 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 177 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0. ARCTIBAX - forgotten age
# 178 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTIBAX, 10, 3
# 179 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_LATIOS, CRY_MODE_ENCOUNTER
# 180 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 181 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 182 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 183 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 184 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.1. ARCTOVISH - Hoenn was a paradise
# 185 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOVISH, 10, 3
# 186 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_SWAMPERT, CRY_MODE_ENCOUNTER
# 187 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
# 188 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 189 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 190 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 191 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.2. ARCTOZOLT - People and Pokémon lived as one
# 192 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOZOLT, 10, 3
# 193 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 194 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
# 195 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 196 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 197 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 198 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.3. ARMAROUGE - the balance
# 199 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARMAROUGE, 10, 3
# 200 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_FLY
# 201 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
# 202 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 203 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 204 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 205 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 1. AEGISLASH - KYOGRE
# 206 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 207 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 208 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
# 209 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 210 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 211 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 212 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 2. ALOMOMOLA - GROUNDON
# 213 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 214 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 215 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
# 216 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 217 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 218 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 219 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 3. AVALUGG - The great battle
# 220 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 221 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 222 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 223 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
# 224 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 225 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 226 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 227 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 4. AMAURA - The FLOOD
# 228 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 229 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_BUBBLE_BEAM
# 230 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
# 231 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 232 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 233 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 234 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 5. AROMATISSE - TSUNAMI
# 235 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 236 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 237 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
# 238 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 239 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 240 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 241 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 6. ARROKUDA - VOLCANO
# 242 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 243 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_HEAT_WAVE
# 244 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
# 245 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 246 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 247 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 248 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 7. AUDINO - DESTROYED CITIES
# 249 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 250 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_EARTHQUAKE
# 251 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
# 252 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 253 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 254 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 255 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 8. AURORUS - FLOODED CITIES
# 256 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 257 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 258 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
# 259 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 260 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 261 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 262 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 9. AMOONGUSS - LAVA ON THE LANDS
# 263 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 264 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_HEAT_WAVE
# 265 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
# 266 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 267 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 268 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 269 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 10. APPLIN - A legend appears jirachi and celebi
# 270 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 271 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_CELEBI, CRY_MODE_ENCOUNTER
# 272 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory14, MSGBOX_DEFAULT
# 273 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 274 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 275 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 276 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 11. APPLETUN - The MAGIC SHRINE
# 277 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 278 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_TELEPORT
# 279 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory15, MSGBOX_DEFAULT
# 280 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 281 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 282 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 283 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 12. AXEW - JIRACHI USING ITS POWERS TO GRANT A WISH
# 284 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 285 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_HOOTHOOT, CRY_MODE_ENCOUNTER
# 286 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory16, MSGBOX_DEFAULT
# 287 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 288 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 289 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 290 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 13. ARBOLIVA - JIRACHI USING ITS POWERS TO GRANT A WISH
# 291 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 292 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_JIRACHI, CRY_MODE_ENCOUNTER
# 293 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory17, MSGBOX_DEFAULT
# 294 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 295 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 296 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 297 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Final - MILLENION COMMET
# 298 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 299 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_COSMIC_POWER
# 300 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 301 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 302 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 303 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Return to normal screen
# 304 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 305 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 306 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeinbgm 1
# 307 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 308 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// TRANSIÇÃO SUAVE ANTES DA PERGUNTA
# 309 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_StoryConclusion, MSGBOX_DEFAULT
# 310 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 311 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 312 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 313 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// AGORA PERGUNTA SE QUER PULAR
# 314 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
# 315 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	compare VAR_RESULT, YES
# 316 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto_if_eq LittlerootTown_01_JirachiWarp
# 317 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto LittlerootTown_01_Stay
# 318 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 319 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_JirachiWarp::
# 320 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiTimeWarp, MSGBOX_DEFAULT
# 321 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 322 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 323 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === JIRACHI EPIC CUTSCENE ===
# 324 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleStart
# 325 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitmovement LOCALID_JIRACHI
# 326 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 327 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_PSYBEAM
# 328 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 12
# 329 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 330 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 331 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleComplete
# 332 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitmovement LOCALID_JIRACHI
# 333 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 334 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_MOONLIGHT
# 335 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 15
# 336 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_MORNING_SUN
# 337 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 338 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 60
# 339 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 340 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === GAME PROGRESS SETUP ===
# 341 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 342 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 343 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 344 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 345 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 346 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 347 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 348 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 349 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag 0x44   
# 350 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_PARTY_MENU_PC_ACCESS         
# 351 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 352 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 353 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 354 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 355 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	checkplayergender
# 356 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	compare VAR_RESULT, MALE
# 357 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto_if_eq LittlerootTown_01_WarpMale
# 358 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto LittlerootTown_01_WarpFemale
# 359 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 360 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_WarpMale::
# 361 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// MALE Player (Brendan)
# 362 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Show ONLY player's mom in player's house
# 363 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 364 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival mom in player's house
# 365 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 366 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival's mom in rival's house
# 367 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 368 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 369 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide the Pokeball in player's house
# 370 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 371 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 372 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set rival house state to trigger mom dialogue
# 373 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 1
# 374 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 375 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set respawn in player's house
# 376 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 377 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 378 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Warp to player's house 2F
# 379 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 380 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 381 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 382 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 383 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 384 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_WarpFemale::
# 385 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// FEMALE Player (May)
# 386 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Show ONLY player's mom in player's house
# 387 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 388 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival mom in player's house
# 389 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 390 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival's mom in rival's house
# 391 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 392 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 393 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide the Pokeball in player's house
# 394 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 395 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 396 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set rival house state to trigger mom dialogue
# 397 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 1
# 398 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 399 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set respawn in player's house
# 400 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 401 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 402 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Warp to player's house 2F
# 403 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 404 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 405 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 406 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 407 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 408 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Stay::
# 409 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
# 410 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 411 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 412 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === RUNNING SHOES ===
# 413 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 414 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 415 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 416 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === CRITICAL SETUP ===
# 417 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 418 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 419 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Let the InsideOfTruck script handle the mom flags
# 420 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Don't set any mom flags here to avoid conflicts
# 421 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 422 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 423 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 424 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 425 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 426 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 427 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 428 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 429 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
# 430 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 431 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === FADE TO BLACK (SLEEPING) ===
# 432 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 433 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 60
# 434 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 435 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === WARP TO MOSSDEEP01 (INSIDE TENT) ===
# 436 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 64
# 437 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 438 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 439 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Continue black (still sleeping)
# 440 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 80
# 441 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 442 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 443 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 444 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 445 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Movements
# 446 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Movement_JirachiCircleStart:
# 447 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_left
# 448 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_left
# 449 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_down
# 450 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_down
# 451 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	step_end
# 452 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 453 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Movement_JirachiCircleComplete:
# 454 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_right
# 455 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_right
# 456 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_up
# 457 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_up
# 458 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	step_end
# 459 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 460 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Celebi Scripts
# 461 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_CelebiScript::  
# 462 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 463 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 464 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiWarning, MSGBOX_DEFAULT
# 465 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    random 3
# 466 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    switch VAR_RESULT
# 467 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 0, LittlerootTown_Celebi_Case0
# 468 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 1, LittlerootTown_Celebi_Case1
# 469 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 2, LittlerootTown_Celebi_Case2
# 470 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 471 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 472 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 473 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case0::
# 474 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 475 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 476 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiLost, MSGBOX_DEFAULT
# 477 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 478 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 479 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 480 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case1::
# 481 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 482 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 483 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiHelp, MSGBOX_DEFAULT
# 484 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 485 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 486 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 487 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case2::
# 488 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 489 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 490 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiForest, MSGBOX_DEFAULT
# 491 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 492 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 493 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 494 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 495 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Jirachi Scripts
# 496 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_JirachiScript::
# 497 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lock
# 498 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	faceplayer
# 499 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	random 3
# 500 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	switch VAR_RESULT
# 501 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 0, LittlerootTown_Jirachi_Case0
# 502 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 1, LittlerootTown_Jirachi_Case1
# 503 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 2, LittlerootTown_Jirachi_Case2
# 504 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 505 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 506 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 507 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case0::
# 508 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
# 509 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 510 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 511 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 512 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case1::
# 513 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiSleep, MSGBOX_DEFAULT
# 514 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 515 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 516 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 517 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case2::
# 518 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiGrant, MSGBOX_DEFAULT
# 519 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 520 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 521 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 522 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 523 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// TEXTS
# 524 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 525 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 526 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GentleIntroduction:
# 527 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Do not be alarmed...\n"
# 528 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "You are in the dream realm.\p"
# 529 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I will tell you the story of HOENN...\n"
# 530 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The story that shaped our world...$"
# 531 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 532 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiIntro:
# 533 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Jirachi: I am the wish Pokemon!\n"
# 534 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I can warp time and space!\p"
# 535 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Before we begin...$"
# 536 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 537 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiCloseEyes:
# 538 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Close your eyes and remember...\n"
# 539 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Remember how it all happened...$"
# 540 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 541 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_Question:
# 542 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Skip prologue?$"
# 543 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 544 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiTimeWarp:
# 545 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Jirachi: Your wish is my command!\n"
# 546 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "TIME WARP - ACTIVATE!$"
# 547 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 548 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_No:
# 549 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Alright, start the journey.$"
# 550 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 551 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiWarning:
# 552 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Celebi: {PLAYER}{KUN}...\p"
# 553 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A strange light surrounds you…\p"
# 554 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Do not fear this place.\n"
# 555 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "What you see is only a dream…\p"
# 556 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A fragment of a future that must\n"
# 557 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "never be allowed to happen.\p"
# 558 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Walk carefully, traveler.\n"
# 559 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Hoenn's fate is already shifting.$"
# 560 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 561 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiLost:
# 562 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Celebi: The forests whisper tales\n"
# 563 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The winds of time are trembling…\p"
# 564 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I have seen a Hoenn drowned in fire\n"
# 565 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "and swallowed by ancient storms.\p"
# 566 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "But that future is not final.\n"
# 567 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your choices can rewrite it.$"
# 568 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 569 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 570 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiHelp:
# 571 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Celebi: We need your help...\n"
# 572 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Dreams ewith the voices of those\n"
# 573 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "who still believe in hope...\p"
# 574 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "You were called because the world\n"
# 575 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "cannot heal itself alone.\p"
# 576 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Walk forward.\n"
# 577 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Hoenn is waiting for you.$"
# 578 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 579 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiForest:
# 580 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Celebi: Time flows like a river,\n"
# 581 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "but it flows strangely here…\n"
# 582 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "as if past and future overlap.\p"
# 583 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Follow the path you feel within.\n"
# 584 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your soul remembers the truth,\p"
# 585 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "even if your mind does not.$"
# 586 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 587 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiWish:
# 588 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Jirachi: I am the Wish Pokemon!\nMake a wish and I might grant it!$"
# 589 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 590 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiSleep:
# 591 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Jirachi: Hello! I've been sleeping\nfor 1000 years... what year is it?$"
# 592 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 593 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiGrant:
# 594 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Jirachi: They say I can grant any wish!\nWhat would you wish for?$"
# 595 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 596 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 597 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 598 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// OPTIMIZED STORY TEXTS (English - Coherent with All Images)
# 599 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 600 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 601 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory1:
# 602 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "In a forgotten age,\n"
# 603 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "before the great calamity...$"
# 604 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 605 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory2:
# 606 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN was a paradise divided\n"
# 607 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "between sea and land...$"
# 608 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 609 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory3:
# 610 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "People and Pokémon lived as one,\n"
# 611 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "their hearts beating in harmony...$"
# 612 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 613 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory4:
# 614 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A delicate balance maintained\n"
# 615 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "by ancient forces...$"
# 616 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 617 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory5:
# 618 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "KYOGRE, deity of the ocean depths,\n"
# 619 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "keeper of the seas...$"
# 620 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 621 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory6:
# 622 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "GROUDON, titan of the land,\n"
# 623 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "master of the continents...$"
# 624 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 625 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory7:
# 626 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Their eternal conflict erupted\n"
# 627 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "into a world-shattering battle...$"
# 628 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 629 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory8:
# 630 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The seas rose with terrifying floods,\n"
# 631 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "swallowing coastal cities...$"
# 632 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 633 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory9:
# 634 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Colossal tsunamis swept across\n"
# 635 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "what remained of the land...$"
# 636 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 637 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory10:
# 638 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Volcanoes erupted in response,\n"
# 639 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "scorching the earth with fire...$"
# 640 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 641 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory11:
# 642 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Cities crumbled to dust and ruins\n"
# 643 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "under nature's wrath...$"
# 644 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 645 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory12:
# 646 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The land became submerged,\n"
# 647 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "an archipelago of memories...$"
# 648 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 649 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory13:
# 650 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Rivers of lava flowed where\n"
# 651 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "forests once stood...$"
# 652 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 653 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory14:
# 654 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "In despair, they turned to legends\n"
# 655 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "of time-travel and wish-granting...$"
# 656 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 657 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory15:
# 658 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Ancient shrines were built\n"
# 659 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "to mythical guardians...$"
# 660 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 661 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory16:
# 662 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI awakened to grant\n"
# 663 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "a desperate wish for salvation...$"
# 664 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 665 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory17:
# 666 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The millennium comet appeared,\n"
# 667 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "a celestial beacon of hope...$"
# 668 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 669 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaEncouragement:
# 670 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "This is the world we inherited.\n"
# 671 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your journey begins where hope remains...$"
# 672 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 673 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 674 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
//////////////////////////////// TALE END ////////////////////////
# 675 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 676 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_StoryConclusion:
# 677 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "This is the story of all that happened\n"
# 678 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "in HOENN...\p"
# 679 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "And now, only the chosen one can help\n"
# 680 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "change destiny and alter the past,\l"
# 681 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "so the future may be prosperous again...$"
# 682 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 683 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_WelcomeToNewWorld:
# 684 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Welcome to your new world,\n"
# 685 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "{PLAYER}!\p"
# 686 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A new adventure awaits you!$"
# 687 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 688 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_JirachiContinue:
# 689 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Jirachi: Then let us continue...\n"
# 690 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your adventure awaits!$"
