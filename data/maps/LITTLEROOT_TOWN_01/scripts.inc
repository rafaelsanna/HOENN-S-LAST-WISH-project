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
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL 
# 170 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GentleIntroduction, MSGBOX_DEFAULT
# 171 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 172 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL 
# 173 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiCloseEyes, MSGBOX_DEFAULT
# 174 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 175 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 176 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Fade to black and silence music
# 177 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeoutbgm 0
# 178 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 179 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 180 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 40
# 181 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 182 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0. ARCTIBAX - forgotten age
# 183 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTIBAX, 10, 3
# 184 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_LATIOS, CRY_MODE_ENCOUNTER
# 185 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 186 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 187 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 188 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 189 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.1. ARCTOVISH - Hoenn was a paradise
# 190 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOVISH, 10, 3
# 191 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_SWAMPERT, CRY_MODE_ENCOUNTER
# 192 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
# 193 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 194 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 195 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 196 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.2. ARCTOZOLT - People and Pokémon lived as one
# 197 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOZOLT, 10, 3
# 198 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 199 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
# 200 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 201 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 202 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 203 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.3. ARMAROUGE - the balance
# 204 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARMAROUGE, 10, 3
# 205 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_FLY
# 206 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
# 207 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 208 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 209 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 210 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 1. AEGISLASH - KYOGRE
# 211 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 212 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 213 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
# 214 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 215 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 216 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 217 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 2. ALOMOMOLA - GROUNDON
# 218 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 219 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 220 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
# 221 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 222 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 223 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 224 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 3. AVALUGG - The great battle
# 225 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 226 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 227 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 228 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
# 229 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 230 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 231 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 232 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 4. AMAURA - The FLOOD
# 233 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 234 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_BUBBLE_BEAM
# 235 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
# 236 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 237 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 238 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 239 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 5. AROMATISSE - TSUNAMI
# 240 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 241 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 242 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
# 243 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 244 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 245 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 246 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 6. ARROKUDA - VOLCANO
# 247 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 248 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_HEAT_WAVE
# 249 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
# 250 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 251 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 252 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 253 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 7. AUDINO - DESTROYED CITIES
# 254 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 255 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_EARTHQUAKE
# 256 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
# 257 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 258 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 259 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 260 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 8. AURORUS - FLOODED CITIES
# 261 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 262 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 263 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
# 264 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 265 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 266 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 267 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 9. AMOONGUSS - LAVA ON THE LANDS
# 268 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 269 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_HEAT_WAVE
# 270 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
# 271 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 272 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 273 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 274 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 10. APPLIN - A legend appears jirachi and celebi
# 275 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 276 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_CELEBI, CRY_MODE_ENCOUNTER
# 277 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory14, MSGBOX_DEFAULT
# 278 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 279 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 280 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 281 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 11. APPLETUN - The MAGIC SHRINE
# 282 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 283 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_TELEPORT
# 284 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory15, MSGBOX_DEFAULT
# 285 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 286 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 287 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 288 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 12. AXEW - JIRACHI USING ITS POWERS TO GRANT A WISH
# 289 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 290 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_HOOTHOOT, CRY_MODE_ENCOUNTER
# 291 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory16, MSGBOX_DEFAULT
# 292 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 293 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 294 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 295 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 13. ARBOLIVA - JIRACHI USING ITS POWERS TO GRANT A WISH
# 296 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 297 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_JIRACHI, CRY_MODE_ENCOUNTER
# 298 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory17, MSGBOX_DEFAULT
# 299 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 300 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 301 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 302 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Final - MILLENION COMMET
# 303 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 304 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_COSMIC_POWER
# 305 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 306 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 307 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 308 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Return to normal screen
# 309 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 310 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 311 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeinbgm 1
# 312 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 313 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// TRANSIÇÃO SUAVE ANTES DA PERGUNTA
# 314 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_StoryConclusion, MSGBOX_DEFAULT
# 315 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 316 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 317 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 318 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// PERGUNTA SE QUER JOGAR O PROLOGO
# 319 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// YES e a opcao padrao: joga o prologo. NO pula o prologo.
# 320 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
# 321 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	compare VAR_RESULT, YES
# 322 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto_if_eq LittlerootTown_01_Stay
# 323 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto LittlerootTown_01_JirachiWarp
# 324 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 325 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_JirachiWarp::
# 326 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 327 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiTimeWarp, MSGBOX_DEFAULT
# 328 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 329 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 330 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 331 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === JIRACHI EPIC CUTSCENE ===
# 332 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleStart
# 333 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitmovement LOCALID_JIRACHI
# 334 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 335 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_PSYBEAM
# 336 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 12
# 337 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 338 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 339 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleComplete
# 340 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitmovement LOCALID_JIRACHI
# 341 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 342 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_MOONLIGHT
# 343 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 15
# 344 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_MORNING_SUN
# 345 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 346 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 60
# 347 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 348 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === GAME PROGRESS SETUP ===
# 349 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 350 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 351 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 352 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 353 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 354 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 355 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 356 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 357 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag 0x44   
# 358 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_PARTY_MENU_PC_ACCESS         
# 359 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 360 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 361 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 362 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 363 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	checkplayergender
# 364 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	compare VAR_RESULT, MALE
# 365 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto_if_eq LittlerootTown_01_WarpMale
# 366 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto LittlerootTown_01_WarpFemale
# 367 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 368 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_WarpMale::
# 369 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// MALE Player (Brendan)
# 370 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Show ONLY player's mom in player's house
# 371 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 372 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival mom in player's house
# 373 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 374 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival's mom in rival's house
# 375 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 376 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 377 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide the Pokeball in player's house
# 378 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 379 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 380 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set rival house state to trigger mom dialogue
# 381 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 1
# 382 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 383 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set respawn in player's house
# 384 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 385 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 386 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Warp to player's house 2F
# 387 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 388 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 389 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 390 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 391 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 392 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_WarpFemale::
# 393 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// FEMALE Player (May)
# 394 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Show ONLY player's mom in player's house
# 395 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 396 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival mom in player's house
# 397 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 398 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival's mom in rival's house
# 399 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 400 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 401 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide the Pokeball in player's house
# 402 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 403 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 404 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set rival house state to trigger mom dialogue
# 405 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 1
# 406 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 407 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set respawn in player's house
# 408 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 409 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 410 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Warp to player's house 2F
# 411 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 412 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 413 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 414 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 415 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 416 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Stay::
# 417 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
# 418 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 419 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 420 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === RUNNING SHOES ===
# 421 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 422 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 423 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 424 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === CRITICAL SETUP ===
# 425 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 426 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 427 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Let the InsideOfTruck script handle the mom flags
# 428 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Don't set any mom flags here to avoid conflicts
# 429 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 430 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 431 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 432 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 433 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 434 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 435 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 436 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 437 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
# 438 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 439 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === FADE TO BLACK (SLEEPING) ===
# 440 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 441 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 60
# 442 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 443 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === WARP TO MOSSDEEP01 (INSIDE TENT) ===
# 444 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 64
# 445 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 446 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 447 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Continue black (still sleeping)
# 448 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 80
# 449 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 450 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 451 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 452 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 453 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Movements
# 454 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Movement_JirachiCircleStart:
# 455 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_left
# 456 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_left
# 457 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_down
# 458 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_down
# 459 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	step_end
# 460 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 461 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Movement_JirachiCircleComplete:
# 462 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_right
# 463 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_right
# 464 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_up
# 465 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_up
# 466 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	step_end
# 467 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 468 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Celebi Scripts
# 469 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_CelebiScript::  
# 470 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 471 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 472 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 473 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiWarning, MSGBOX_DEFAULT
# 474 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 475 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    random 3
# 476 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    switch VAR_RESULT
# 477 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 0, LittlerootTown_Celebi_Case0
# 478 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 1, LittlerootTown_Celebi_Case1
# 479 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 2, LittlerootTown_Celebi_Case2
# 480 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 481 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 482 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 483 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case0::
# 484 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 485 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 486 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 487 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiLost, MSGBOX_DEFAULT
# 488 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 489 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 490 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 491 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 492 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case1::
# 493 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 494 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 495 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 496 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiHelp, MSGBOX_DEFAULT
# 497 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 498 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 499 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 500 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 501 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case2::
# 502 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 503 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 504 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 505 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiForest, MSGBOX_DEFAULT
# 506 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 507 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 508 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 509 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 510 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 511 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Jirachi Scripts
# 512 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_JirachiScript::
# 513 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lock
# 514 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	faceplayer
# 515 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	random 3
# 516 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	switch VAR_RESULT
# 517 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 0, LittlerootTown_Jirachi_Case0
# 518 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 1, LittlerootTown_Jirachi_Case1
# 519 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 2, LittlerootTown_Jirachi_Case2
# 520 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 521 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 522 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 523 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case0::
# 524 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 525 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
# 526 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 527 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 528 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 529 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 530 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case1::
# 531 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 532 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiSleep, MSGBOX_DEFAULT
# 533 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 534 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 535 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 536 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 537 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case2::
# 538 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 539 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiGrant, MSGBOX_DEFAULT
# 540 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 541 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 542 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 543 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 544 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 545 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// TEXTS
# 546 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 547 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 548 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GentleIntroduction:
# 549 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Do not be alarmed…\n"
# 550 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "You are in the DREAM REALM.\p"
# 551 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I will tell you the story of HOENN…\n"
# 552 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The story that shaped our world.$"
# 553 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 554 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiIntro:
# 555 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: I am the wish POKéMON!\n"
# 556 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I can warp time and space!\p"
# 557 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Before we begin…$"
# 558 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 559 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiCloseEyes:
# 560 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Close your eyes and remember…\n"
# 561 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Remember how it all happened…$"
# 562 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 563 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_Question:
# 564 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Play prologue?$"
# 565 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 566 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiTimeWarp:
# 567 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Your wish is my command!\n"
# 568 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "TIME WARP - ACTIVATE!$"
# 569 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 570 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_No:
# 571 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Then, start the journey.$"
# 572 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 573 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiWarning:
# 574 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "CELEBI: {PLAYER}{KUN}…\p"
# 575 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Do not fear this place.\n"
# 576 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "What you see is only a dream…\p"
# 577 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A fragment of a future that must\n"
# 578 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "never be allowed to happen.\p"
# 579 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Walk carefully, traveler.\n"
# 580 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN's fate is already shifting.$"
# 581 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 582 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiLost:
# 583 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The forests whisper tales\n"
# 584 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The winds of time are trembling…\p"
# 585 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I have seen a HOENN drowned in fire\n"
# 586 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "and swallowed by ancient storms.\p"
# 587 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "But that future is not final.\n"
# 588 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your choices can rewrite it.$"
# 589 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 590 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 591 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiHelp:
# 592 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Dreams with the voices of those\n"
# 593 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "who still believe in hope…\p"
# 594 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "You were called because the world\n"
# 595 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "cannot heal itself alone.\p"
# 596 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Walk forward.\n"
# 597 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN is waiting for you.$"
# 598 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 599 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiForest:
# 600 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "CELEBI: Time flows like a river,\n"
# 601 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "but it flows strangely here…\l"
# 602 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "As if past and future overlap.\p"
# 603 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Follow the path you feel within.\p"
# 604 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your soul remembers the truth,\n"
# 605 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "even if your mind does not.$"
# 606 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 607 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiWish:
# 608 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: I am the Wish POKéMON!\nMake a wish and I might grant it!$"
# 609 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 610 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiSleep:
# 611 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Hello! I've been sleeping\nfor 1000 years... what year is it?$"
# 612 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 613 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiGrant:
# 614 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: They say I can grant any wish!\nWhat would you wish for?$"
# 615 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 616 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 617 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 618 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// OPTIMIZED STORY TEXTS (English - Coherent with All Images)
# 619 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 620 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 621 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory1:
# 622 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "In a forgotten age,\n"
# 623 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "before the great calamity…$"
# 624 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 625 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory2:
# 626 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN was a paradise divided\n"
# 627 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "between sea and land…$"
# 628 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 629 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory3:
# 630 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "People and POKéMON lived as one,\n"
# 631 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "their hearts beating in harmony…$"
# 632 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 633 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory4:
# 634 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A delicate balance maintained\n"
# 635 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "by ancient forces…$"
# 636 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 637 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory5:
# 638 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "KYOGRE, deity of the ocean depths,\n"
# 639 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "keeper of the seas…$"
# 640 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 641 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory6:
# 642 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "GROUDON, titan of the land,\n"
# 643 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "master of the continents…$"
# 644 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 645 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory7:
# 646 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Their eternal conflict erupted\n"
# 647 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "into a world-shattering battle…$"
# 648 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 649 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory8:
# 650 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The seas rose with terrifying floods,\n"
# 651 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "swallowing coastal cities…$"
# 652 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 653 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory9:
# 654 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Colossal tsunamis swept across\n"
# 655 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "what remained of the land…$"
# 656 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 657 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory10:
# 658 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Volcanoes erupted in response,\n"
# 659 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "scorching the earth with fire…$"
# 660 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 661 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory11:
# 662 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Cities crumbled to dust and ruins\n"
# 663 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "under nature's wrath…$"
# 664 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 665 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory12:
# 666 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The land became submerged,\n"
# 667 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "an archipelago of memories…$"
# 668 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 669 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory13:
# 670 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Rivers of lava flowed where\n"
# 671 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "forests once stood…$"
# 672 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 673 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory14:
# 674 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "In despair, they turned to legends\n"
# 675 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "of time-travel and wish-granting…$"
# 676 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 677 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory15:
# 678 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Ancient shrines were built\n"
# 679 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "to mythical guardians…$"
# 680 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 681 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory16:
# 682 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI awakened to grant\n"
# 683 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "a desperate wish for salvation…$"
# 684 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 685 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory17:
# 686 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The MILLENNIUM COMET appeared,\n"
# 687 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "a celestial beacon of hope…$"
# 688 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 689 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaEncouragement:
# 690 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "This is the world we inherited.\n"
# 691 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your journey begins where hope remains…$"
# 692 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 693 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 694 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
//////////////////////////////// TALE END ////////////////////////
# 695 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 696 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_StoryConclusion:
# 697 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "This is the story of all that happened\n"
# 698 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "in HOENN…\p"
# 699 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "And now, only the chosen one can help\n"
# 700 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "change destiny and alter the past,\l"
# 701 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "so the future may be prosperous again…$"
# 702 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 703 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_WelcomeToNewWorld:
# 704 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Welcome to your new world,\n"
# 705 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "{PLAYER}!\p"
# 706 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A new adventure awaits you!$"
# 707 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 708 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_JirachiContinue:
# 709 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Then let us continue…\n"
# 710 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your adventure awaits!$"
