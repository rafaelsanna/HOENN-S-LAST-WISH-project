# 1 "data/maps/MOSSDEEP01/scripts.pory"

# 2 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 3 "data/maps/MOSSDEEP01/scripts.pory"
// MOSSDEEP01 - TIME GEARS QUEST CELEBI + JIRACHI
# 4 "data/maps/MOSSDEEP01/scripts.pory"
// Simplified - Wailord Blocking Path (No Secret Plants)
# 5 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 6 "data/maps/MOSSDEEP01/scripts.pory"

# 7 "data/maps/MOSSDEEP01/scripts.pory"
// Local IDs
# 8 "data/maps/MOSSDEEP01/scripts.pory"

# 9 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 10 "data/maps/MOSSDEEP01/scripts.pory"
// MAP SCRIPTS
# 11 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 12 "data/maps/MOSSDEEP01/scripts.pory"

# 13 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MapScripts::
# 14 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP01_OnFrame
# 15 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
# 16 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
# 17 "data/maps/MOSSDEEP01/scripts.pory"
	.byte 0
# 18 "data/maps/MOSSDEEP01/scripts.pory"

# 19 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnFrame:
# 20 "data/maps/MOSSDEEP01/scripts.pory"
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP01_EventScript_Prologue
# 21 "data/maps/MOSSDEEP01/scripts.pory"
	map_script_2 VAR_TEMP_1, 1, MOSSDEEP01_EventScript_MightyenaRecovery
# 22 "data/maps/MOSSDEEP01/scripts.pory"
	map_script_2 VAR_TEMP_1, 2, MOSSDEEP01_EventScript_MightyenaRepeatRecovery
# 23 "data/maps/MOSSDEEP01/scripts.pory"
	.2byte 0
# 24 "data/maps/MOSSDEEP01/scripts.pory"

# 25 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnTransition:
# 26 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 27 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_MINER_RESCUED, MOSSDEEP01_EventScript_ShowRescuedMiner
# 28 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RESCUED_MINER
# 29 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_ContinueMinerTransition
# 30 "data/maps/MOSSDEEP01/scripts.pory"

# 31 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowRescuedMiner::
# 32 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RESCUED_MINER
# 33 "data/maps/MOSSDEEP01/scripts.pory"

# 34 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ContinueMinerTransition::
# 35 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING, MOSSDEEP01_EventScript_ScheduleMightyenaRepeatRecovery
# 36 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING, MOSSDEEP01_EventScript_ScheduleMightyenaRecovery
# 37 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_CheckPrologueTransition
# 38 "data/maps/MOSSDEEP01/scripts.pory"

# 39 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ScheduleMightyenaRecovery::
# 40 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 1
# 41 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_CheckPrologueTransition
# 42 "data/maps/MOSSDEEP01/scripts.pory"

# 43 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ScheduleMightyenaRepeatRecovery::
# 44 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 2
# 45 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_CheckPrologueTransition
# 46 "data/maps/MOSSDEEP01/scripts.pory"

# 47 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_CheckPrologueTransition:
# 48 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_SkipPrologue
# 49 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
# 50 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_ContinueTransition
# 51 "data/maps/MOSSDEEP01/scripts.pory"

# 52 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_SkipPrologue:
# 53 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 54 "data/maps/MOSSDEEP01/scripts.pory"

# 55 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_ContinueTransition:
# 56 "data/maps/MOSSDEEP01/scripts.pory"
	// A previous version of this map reused DN_FLAG_SEARCHING as a Mossdeep
# 57 "data/maps/MOSSDEEP01/scripts.pory"
	// visibility flag. Clear that legacy state when loading the map so it cannot
# 58 "data/maps/MOSSDEEP01/scripts.pory"
	// leave the player permanently creeping after the Mightyena recovery.
# 59 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 60 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide/show Celebi based on rescue status
# 61 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
# 62 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
# 63 "data/maps/MOSSDEEP01/scripts.pory"
	
# 64 "data/maps/MOSSDEEP01/scripts.pory"
    // Wailord management: hide UNTIL Celebi is rescued
# 65 "data/maps/MOSSDEEP01/scripts.pory"
    call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideWailord
# 66 "data/maps/MOSSDEEP01/scripts.pory"
    call_if_set   FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_ShowWailord
# 67 "data/maps/MOSSDEEP01/scripts.pory"
	
# 68 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide comet initially
# 69 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideComet
# 70 "data/maps/MOSSDEEP01/scripts.pory"
	
# 71 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide collected items
# 72 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
# 73 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
# 74 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
# 75 "data/maps/MOSSDEEP01/scripts.pory"
	
# 76 "data/maps/MOSSDEEP01/scripts.pory"
	// Keep Jirachi awake if already awoken
# 77 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_EventScript_KeepJirachiAwake
# 78 "data/maps/MOSSDEEP01/scripts.pory"
	
# 79 "data/maps/MOSSDEEP01/scripts.pory"
	// Setup rival NPC (gender-based)
# 80 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetupRivalNPC
# 81 "data/maps/MOSSDEEP01/scripts.pory"
	
# 82 "data/maps/MOSSDEEP01/scripts.pory"
	// Manage Wally and Pidgeot visibility
# 83 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideInitialWally
# 84 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowInitialWally
# 85 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowCloneWally
# 86 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideCloneWally
# 87 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideGuardPokemon
# 88 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowGuardPokemon
# 89 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_RemovePostCelebiGuardPokemon
# 90 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SetPostCelebiGuardState
# 91 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_DROWNING_MAN_RESCUED, MOSSDEEP01_EventScript_SetRescuedDrowningManState
# 92 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_MOSSDEEP_MINER_RESCUED, MOSSDEEP01_EventScript_SetTrappedMinerState
# 93 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_MINER_RESCUED, MOSSDEEP01_EventScript_SetRescuedMinerState
# 94 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_LOST_FAMILY_RESCUED, MOSSDEEP01_EventScript_SetRescuedFamilyState
# 95 "data/maps/MOSSDEEP01/scripts.pory"
	
# 96 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 97 "data/maps/MOSSDEEP01/scripts.pory"

# 98 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnResume:
# 99 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 100 "data/maps/MOSSDEEP01/scripts.pory"

# 101 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetPostCelebiGuardState::
# 102 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_PIDGEOT_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 103 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 104 "data/maps/MOSSDEEP01/scripts.pory"

# 105 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideGuardPokemon::
# 106 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 107 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 108 "data/maps/MOSSDEEP01/scripts.pory"

# 109 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RemovePostCelebiGuardPokemon::
# 110 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 111 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MIGHTYENA_GUARD
# 112 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DARKRAI_GUARD
# 113 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 114 "data/maps/MOSSDEEP01/scripts.pory"

# 115 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowGuardPokemon::
# 116 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 117 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 118 "data/maps/MOSSDEEP01/scripts.pory"

# 119 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetRescuedDrowningManState::
# 120 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_DROWNING_MAN, 47, 77
# 121 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_DROWNING_MAN, 47, 77
# 122 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_DROWNING_MAN, MOVEMENT_TYPE_FACE_LEFT
# 123 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_DROWNING_MAN, DIR_WEST
# 124 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 125 "data/maps/MOSSDEEP01/scripts.pory"

# 126 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetTrappedMinerState::
# 127 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_RESCUED_MINER
# 128 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 129 "data/maps/MOSSDEEP01/scripts.pory"

# 130 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetRescuedMinerState::
# 131 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_RESCUED_MINER, 15, 72
# 132 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_MINER_WIFE, 16, 72
# 133 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_RESCUED_MINER, 15, 72
# 134 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_MINER_WIFE, 16, 72
# 135 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_RESCUED_MINER, MOVEMENT_TYPE_FACE_DOWN
# 136 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_MINER_WIFE, MOVEMENT_TYPE_FACE_DOWN
# 137 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_RESCUED_MINER, DIR_SOUTH
# 138 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MINER_WIFE, DIR_SOUTH
# 139 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 140 "data/maps/MOSSDEEP01/scripts.pory"

# 141 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetRescuedFamilyState::
# 142 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_LOST_FATHER, 23, 68
# 143 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_LOST_MOTHER, 25, 68
# 144 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_SURVIVOR, 24, 68
# 145 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_LOST_FATHER, 23, 68
# 146 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_LOST_MOTHER, 25, 68
# 147 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_SURVIVOR, 24, 68
# 148 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_LOST_FATHER, MOVEMENT_TYPE_FACE_RIGHT
# 149 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_LOST_MOTHER, MOVEMENT_TYPE_FACE_LEFT
# 150 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_SURVIVOR, MOVEMENT_TYPE_FACE_DOWN
# 151 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_LOST_FATHER
# 152 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_LOST_MOTHER
# 153 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_SURVIVOR
# 154 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_LOST_FATHER
# 155 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_LOST_MOTHER
# 156 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_SURVIVOR
# 157 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_LOST_FATHER, DIR_EAST
# 158 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_LOST_MOTHER, DIR_WEST
# 159 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_SURVIVOR, DIR_SOUTH
# 160 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 161 "data/maps/MOSSDEEP01/scripts.pory"

# 162 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 163 "data/maps/MOSSDEEP01/scripts.pory"
// PROLOGUE EVENT
# 164 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 165 "data/maps/MOSSDEEP01/scripts.pory"

# 166 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Prologue::
# 167 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 168 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 169 "data/maps/MOSSDEEP01/scripts.pory"
	delay 120
# 170 "data/maps/MOSSDEEP01/scripts.pory"
	
# 171 "data/maps/MOSSDEEP01/scripts.pory"
	// Earthquake effects
# 172 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 173 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 3
# 174 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 3
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 8
# 176 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 10
# 177 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 178 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 179 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 180 "data/maps/MOSSDEEP01/scripts.pory"
	
# 181 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EARTHQUAKE
# 182 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 4
# 183 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 4
# 184 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 10
# 185 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 12
# 186 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 187 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 188 "data/maps/MOSSDEEP01/scripts.pory"
	delay 100
# 189 "data/maps/MOSSDEEP01/scripts.pory"
	
# 190 "data/maps/MOSSDEEP01/scripts.pory"
	// Player exits tent
# 191 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_ExitTent
# 192 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 193 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 194 "data/maps/MOSSDEEP01/scripts.pory"
	
# 195 "data/maps/MOSSDEEP01/scripts.pory"
	// Grandma dialogue
# 196 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_1
# 197 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_FacePlayer
# 198 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 199 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 200 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 201 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 202 "data/maps/MOSSDEEP01/scripts.pory"
	
# 203 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 204 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 2
# 205 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 2
# 206 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 5
# 207 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 8
# 208 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 209 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 210 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 211 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 212 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 213 "data/maps/MOSSDEEP01/scripts.pory"
	
# 214 "data/maps/MOSSDEEP01/scripts.pory"
	// Give Shiny Charm
# 215 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
# 216 "data/maps/MOSSDEEP01/scripts.pory"
	giveitem ITEM_SHINY_CHARM
# 217 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
# 218 "data/maps/MOSSDEEP01/scripts.pory"
	
# 219 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
# 220 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 1
# 221 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 1
# 222 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 2
# 223 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 5
# 224 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 225 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 226 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 227 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 228 "data/maps/MOSSDEEP01/scripts.pory"
	
# 229 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
# 230 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 231 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 232 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
# 233 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 234 "data/maps/MOSSDEEP01/scripts.pory"
	
# 235 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
# 236 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 237 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 238 "data/maps/MOSSDEEP01/scripts.pory"

# 239 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_ExitTent:
# 240 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 241 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 242 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 243 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 244 "data/maps/MOSSDEEP01/scripts.pory"

# 245 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 246 "data/maps/MOSSDEEP01/scripts.pory"
// UTILITY FUNCTIONS
# 247 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 248 "data/maps/MOSSDEEP01/scripts.pory"

# 249 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideStaticCelebi::
# 250 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 251 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 252 "data/maps/MOSSDEEP01/scripts.pory"

# 253 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideFollowerCelebi::
# 254 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
# 255 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 256 "data/maps/MOSSDEEP01/scripts.pory"

# 257 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideWailord::
# 258 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WAILORD_PATH
# 259 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 260 "data/maps/MOSSDEEP01/scripts.pory"

# 261 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowWailord::
# 262 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 263 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 264 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 265 "data/maps/MOSSDEEP01/scripts.pory"

# 266 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideComet::
# 267 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 268 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 269 "data/maps/MOSSDEEP01/scripts.pory"

# 270 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem1::
# 271 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 273 "data/maps/MOSSDEEP01/scripts.pory"

# 274 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem2::
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 277 "data/maps/MOSSDEEP01/scripts.pory"

# 278 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem3::
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 281 "data/maps/MOSSDEEP01/scripts.pory"

# 282 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideInitialWally::
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 286 "data/maps/MOSSDEEP01/scripts.pory"

# 287 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowInitialWally::
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_INITIAL
# 289 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 291 "data/maps/MOSSDEEP01/scripts.pory"

# 292 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowCloneWally::
# 293 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 294 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 295 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 296 "data/maps/MOSSDEEP01/scripts.pory"

# 297 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideCloneWally::
# 298 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_CLONE
# 299 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_CLONE
# 300 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 301 "data/maps/MOSSDEEP01/scripts.pory"

# 302 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_KeepJirachiAwake::
# 303 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 304 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 305 "data/maps/MOSSDEEP01/scripts.pory"

# 306 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 307 "data/maps/MOSSDEEP01/scripts.pory"
// TIME GEAR COLLECTION
# 308 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 309 "data/maps/MOSSDEEP01/scripts.pory"

# 310 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item1::
# 311 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 312 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 313 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 314 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear1
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
# 319 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 320 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 322 "data/maps/MOSSDEEP01/scripts.pory"

# 323 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item2::
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 326 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 327 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
# 328 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 329 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear2
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 331 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
# 332 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 335 "data/maps/MOSSDEEP01/scripts.pory"

# 336 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item3::
# 337 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 338 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
# 341 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 342 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear3
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 344 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
# 345 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 346 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 347 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 348 "data/maps/MOSSDEEP01/scripts.pory"

# 349 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item_AlreadyCollected::
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 352 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 353 "data/maps/MOSSDEEP01/scripts.pory"

# 354 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 355 "data/maps/MOSSDEEP01/scripts.pory"
// CELEBI RESCUE EVENT
# 356 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 357 "data/maps/MOSSDEEP01/scripts.pory"

# 358 "data/maps/MOSSDEEP01/scripts.pory"
// No evento de interação com Celebi, após mostrar o Wailord:
# 359 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Celebi::
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 361 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 362 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
# 363 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
# 365 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
# 366 "data/maps/MOSSDEEP01/scripts.pory"

# 367 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_TALKED_TO_CELEBI, MOSSDEEP01_EventScript_CelebiIntroduction
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 370 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 371 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 372 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 373 "data/maps/MOSSDEEP01/scripts.pory"
	
# 374 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 375 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 376 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 377 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 378 "data/maps/MOSSDEEP01/scripts.pory"
	
# 379 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MIGHTYENA_GUARD
# 382 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DARKRAI_GUARD
# 383 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_PIDGEOT_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 384 "data/maps/MOSSDEEP01/scripts.pory"
	
# 385 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 387 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 388 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 389 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 391 "data/maps/MOSSDEEP01/scripts.pory"

# 392 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 395 "data/maps/MOSSDEEP01/scripts.pory"

# 396 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 397 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 400 "data/maps/MOSSDEEP01/scripts.pory"

# 401 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 402 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 403 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 404 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 405 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 406 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TALKED_TO_CELEBI
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 409 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 410 "data/maps/MOSSDEEP01/scripts.pory"

# 411 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiIntroduction::
# 412 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 413 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 414 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	waitmessage
# 417 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 418 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 419 "data/maps/MOSSDEEP01/scripts.pory"

# 420 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 421 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 422 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 423 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 424 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 425 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 426 "data/maps/MOSSDEEP01/scripts.pory"

# 427 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 428 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 429 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 430 "data/maps/MOSSDEEP01/scripts.pory"

# 431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_MightyenaZone_Safe
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_HELPING, MOSSDEEP01_EventScript_MightyenaZoneRepeat
# 436 "data/maps/MOSSDEEP01/scripts.pory"
	
# 437 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 438 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 439 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 440 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 441 "data/maps/MOSSDEEP01/scripts.pory"
	
# 442 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 445 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 446 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 447 "data/maps/MOSSDEEP01/scripts.pory"
	
# 448 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 449 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 453 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 454 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 455 "data/maps/MOSSDEEP01/scripts.pory"
	
# 456 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 457 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING
# 458 "data/maps/MOSSDEEP01/scripts.pory"
	
# 459 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 461 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 462 "data/maps/MOSSDEEP01/scripts.pory"

# 463 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZoneRepeat::
# 464 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 465 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 466 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 473 "data/maps/MOSSDEEP01/scripts.pory"

# 474 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 475 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 0
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 477 "data/maps/MOSSDEEP01/scripts.pory"

# 478 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 481 "data/maps/MOSSDEEP01/scripts.pory"

# 482 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 483 "data/maps/MOSSDEEP01/scripts.pory"
// DROWNING MAN RESCUE
# 484 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 485 "data/maps/MOSSDEEP01/scripts.pory"

# 486 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MinerWife::
# 487 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 488 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_MINER_RESCUED, MOSSDEEP01_EventScript_MinerWifeThanks
# 489 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 490 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MinerWifeHelp, MSGBOX_DEFAULT
# 492 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 493 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 494 "data/maps/MOSSDEEP01/scripts.pory"

# 495 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MinerWifeThanks::
# 496 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MinerWifeThanks, MSGBOX_DEFAULT
# 497 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 498 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 499 "data/maps/MOSSDEEP01/scripts.pory"

# 500 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TrappedMiner::
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 502 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_MINER_RESCUED, MOSSDEEP01_EventScript_TrappedMinerAlreadyRescued
# 503 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDigsOutMiner, MSGBOX_DEFAULT
# 504 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 505 "data/maps/MOSSDEEP01/scripts.pory"
	special StoreMossdeepMinerRescueCamera
# 506 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 507 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_RESCUED_MINER, 15, 72
# 508 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_MINER_WIFE, 16, 72
# 509 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_RESCUED_MINER, 15, 72
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy LOCALID_MINER_WIFE, 16, 72
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy OBJ_EVENT_ID_PLAYER, 15, 73
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	special FinishMossdeepMinerRescueCamera
# 513 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_RESCUED_MINER, MOVEMENT_TYPE_FACE_DOWN
# 514 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_MINER_WIFE, MOVEMENT_TYPE_FACE_DOWN
# 515 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MINER_RESCUED
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TRAPPED_MINER
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RESCUED_MINER
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_RESCUED_MINER
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 520 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_RESCUED_MINER, DIR_SOUTH
# 521 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MINER_WIFE, DIR_SOUTH
# 522 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_RESCUED_MINER, Common_Movement_FaceDown
# 523 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MINER_WIFE, Common_Movement_FaceDown
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 526 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MinerThanks, MSGBOX_DEFAULT
# 527 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MinerWifeThanks, MSGBOX_DEFAULT
# 528 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 529 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 530 "data/maps/MOSSDEEP01/scripts.pory"

# 531 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TrappedMinerAlreadyRescued::
# 532 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 533 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 534 "data/maps/MOSSDEEP01/scripts.pory"

# 535 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MinerThanks::
# 536 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MinerThanks, MSGBOX_DEFAULT
# 537 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 538 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 539 "data/maps/MOSSDEEP01/scripts.pory"

# 540 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 541 "data/maps/MOSSDEEP01/scripts.pory"
// LOST FAMILY RESCUE
# 542 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 543 "data/maps/MOSSDEEP01/scripts.pory"

# 544 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LostFather::
# 545 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 546 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_LOST_FAMILY_RESCUED, MOSSDEEP01_EventScript_LostFatherThanks
# 547 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 548 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_LostFather, MSGBOX_DEFAULT
# 549 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 550 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_RescueLostFamily
# 551 "data/maps/MOSSDEEP01/scripts.pory"

# 552 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LostMother::
# 553 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 554 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_LOST_FAMILY_RESCUED, MOSSDEEP01_EventScript_LostMotherThanks
# 555 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 556 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_LostMother, MSGBOX_DEFAULT
# 557 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_RescueLostFamily
# 559 "data/maps/MOSSDEEP01/scripts.pory"

# 560 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RescueLostFamily::
# 561 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerGivesDirections, MSGBOX_DEFAULT
# 562 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 563 "data/maps/MOSSDEEP01/scripts.pory"
	special StoreMossdeepMinerRescueCamera
# 564 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 565 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy OBJ_EVENT_ID_PLAYER, 24, 69
# 566 "data/maps/MOSSDEEP01/scripts.pory"
	special FinishMossdeepMinerRescueCamera
# 567 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_LOST_FAMILY_RESCUED
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetRescuedFamilyState
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_DaughterThanksForParents, MSGBOX_DEFAULT
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ParentsReunionThanks, MSGBOX_DEFAULT
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 574 "data/maps/MOSSDEEP01/scripts.pory"

# 575 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LostFatherThanks::
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 577 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_LostFatherThanks, MSGBOX_DEFAULT
# 578 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 580 "data/maps/MOSSDEEP01/scripts.pory"

# 581 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LostMotherThanks::
# 582 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_LostMotherThanks, MSGBOX_DEFAULT
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 585 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 586 "data/maps/MOSSDEEP01/scripts.pory"

# 587 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DrowningManCallsForHelp::
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_DROWNING_MAN_ALERT_HEARD, MOSSDEEP01_EventScript_DrowningManAlertDone
# 590 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_DROWNING_MAN_ALERT_HEARD
# 591 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_DrowningManCallsForHelp, MSGBOX_DEFAULT
# 592 "data/maps/MOSSDEEP01/scripts.pory"

# 593 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DrowningManAlertDone::
# 594 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 595 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 596 "data/maps/MOSSDEEP01/scripts.pory"

# 597 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DrowningMan::
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 599 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_DROWNING_MAN_RESCUED, MOSSDEEP01_EventScript_DrowningManThanks
# 600 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_RescueDrowningMan
# 601 "data/maps/MOSSDEEP01/scripts.pory"

# 602 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DrowningManRescueReach::
# 603 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 604 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_DROWNING_MAN_RESCUED, MOSSDEEP01_EventScript_DrowningManRescueReachDone
# 605 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_RescueDrowningMan
# 606 "data/maps/MOSSDEEP01/scripts.pory"

# 607 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RescueDrowningMan::
# 608 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerRescuesDrowningMan, MSGBOX_DEFAULT
# 609 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_DetachCelebiForDrowningRescue
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 612 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 613 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxyperm LOCALID_DROWNING_MAN, 47, 77
# 614 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectxy OBJ_EVENT_ID_PLAYER, 46, 77
# 615 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_DROWNING_MAN, MOVEMENT_TYPE_FACE_LEFT
# 616 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DROWNING_MAN
# 617 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_DROWNING_MAN_RESCUED
# 618 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 619 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_DROWNING_MAN
# 620 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_DROWNING_MAN, Common_Movement_FaceLeft
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 623 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_ReattachCelebiAfterDrowningRescue
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_DrowningManThanks, MSGBOX_DEFAULT
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 627 "data/maps/MOSSDEEP01/scripts.pory"

# 628 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DrowningManRescueReachDone::
# 629 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 630 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 631 "data/maps/MOSSDEEP01/scripts.pory"

# 632 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DrowningManThanks::
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 634 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_DrowningManThanks, MSGBOX_DEFAULT
# 635 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 636 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 637 "data/maps/MOSSDEEP01/scripts.pory"

# 638 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DetachCelebiForDrowningRescue::
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 640 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 641 "data/maps/MOSSDEEP01/scripts.pory"

# 642 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ReattachCelebiAfterDrowningRescue::
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 644 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 645 "data/maps/MOSSDEEP01/scripts.pory"

# 646 "data/maps/MOSSDEEP01/scripts.pory"
// Wing Interaction
# 647 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wingull::
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 649 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 653 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 654 "data/maps/MOSSDEEP01/scripts.pory"

# 655 "data/maps/MOSSDEEP01/scripts.pory"

# 656 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 657 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 658 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 659 "data/maps/MOSSDEEP01/scripts.pory"

# 660 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 661 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 662 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 663 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 664 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 666 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_HELPING, MOSSDEEP01_EventScript_MightyenaRepeat
# 667 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 668 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 669 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 670 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 671 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 672 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 674 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 675 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING
# 678 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 679 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 680 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 681 "data/maps/MOSSDEEP01/scripts.pory"

# 682 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaRepeat::
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 684 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 685 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING
# 689 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 690 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 692 "data/maps/MOSSDEEP01/scripts.pory"

# 693 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaRecovery::
# 694 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 0
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING
# 696 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 697 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 698 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_ExclamationMark
# 699 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_ExclamationMark
# 700 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_FaceRight
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_FaceLeft
# 703 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceLeft
# 704 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 705 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 706 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 707 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_GrandmaRecoveryZinnia
# 708 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaRecoveryZenno, MSGBOX_DEFAULT
# 709 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_GrandpaRecovery
# 710 "data/maps/MOSSDEEP01/scripts.pory"

# 711 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaRecoveryZinnia::
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaRecoveryZinnia, MSGBOX_DEFAULT
# 713 "data/maps/MOSSDEEP01/scripts.pory"

# 714 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaRecovery::
# 715 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_FaceLeft
# 716 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 717 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 718 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaRecovery, MSGBOX_DEFAULT
# 719 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 720 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_ExclamationMark
# 721 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaSuggestLuka, MSGBOX_DEFAULT
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_HELPING
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 726 "data/maps/MOSSDEEP01/scripts.pory"

# 727 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaRepeatRecovery::
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 0
# 729 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING
# 730 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_FaceLeft
# 732 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 733 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 734 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaMightyenaReminder, MSGBOX_DEFAULT
# 735 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 737 "data/maps/MOSSDEEP01/scripts.pory"

# 738 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 739 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 740 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_Mightyena_NotReady
# 743 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 744 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 745 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 746 "data/maps/MOSSDEEP01/scripts.pory"

# 747 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Mightyena_NotReady::
# 748 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 749 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 750 "data/maps/MOSSDEEP01/scripts.pory"

# 751 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 752 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 753 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 754 "data/maps/MOSSDEEP01/scripts.pory"

# 755 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 756 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 760 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 761 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 762 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 763 "data/maps/MOSSDEEP01/scripts.pory"

# 764 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GuardPidgeot::
# 765 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 766 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 767 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 768 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 769 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 770 "data/maps/MOSSDEEP01/scripts.pory"

# 771 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GuardMightyena::
# 772 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 773 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 774 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 775 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 776 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 777 "data/maps/MOSSDEEP01/scripts.pory"

# 778 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GuardDarkrai::
# 779 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 780 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_DARKRAI, CRY_MODE_NORMAL
# 781 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 782 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 783 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 784 "data/maps/MOSSDEEP01/scripts.pory"

# 785 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 786 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 787 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 788 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 789 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 790 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 791 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 792 "data/maps/MOSSDEEP01/scripts.pory"

# 793 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 794 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 795 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 796 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 797 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 798 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 799 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 800 "data/maps/MOSSDEEP01/scripts.pory"

# 801 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 802 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 803 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 804 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 805 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 806 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 807 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 808 "data/maps/MOSSDEEP01/scripts.pory"

# 809 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 810 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 811 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 812 "data/maps/MOSSDEEP01/scripts.pory"

# 813 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 816 "data/maps/MOSSDEEP01/scripts.pory"

# 817 "data/maps/MOSSDEEP01/scripts.pory"
	// PRIORIDADE MAXIMA (depois do Celebi)
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 819 "data/maps/MOSSDEEP01/scripts.pory"

# 820 "data/maps/MOSSDEEP01/scripts.pory"
	// fluxo normal
# 821 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 822 "data/maps/MOSSDEEP01/scripts.pory"
	
# 823 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 824 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	
# 826 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation after the grandparents direct the player here.
# 827 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 828 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 829 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 830 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, MOSSDEEP01_EventScript_LukaMovePlayerDown
# 832 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_LukaExit
# 833 "data/maps/MOSSDEEP01/scripts.pory"

# 834 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LukaMovePlayerDown::
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 836 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 837 "data/maps/MOSSDEEP01/scripts.pory"

# 838 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LukaExit::
# 839 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_LUKA_INITIAL, MOSSDEEP01_Movement_LukaExit
# 840 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_PIDGEOT_INITIAL, MOSSDEEP01_Movement_PidgeotExit
# 841 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 842 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 843 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 844 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 845 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 846 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 847 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 848 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_LUKA_INITIAL
# 849 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_PIDGEOT_INITIAL
# 850 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MIGHTYENA_HOSTILE
# 851 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DARKRAI_HOSTILE
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_LUKA_GUARD
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_PIDGEOT_GUARD
# 854 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_DARKRAI_GUARD
# 855 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MIGHTYENA_GUARD
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_PIDGEOT_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_UP
# 857 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_DARKRAI_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 858 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_MIGHTYENA_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 859 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 861 "data/maps/MOSSDEEP01/scripts.pory"

# 862 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_LukaExit:
# 863 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 869 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 870 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 871 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 872 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 875 "data/maps/MOSSDEEP01/scripts.pory"

# 876 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_PidgeotExit:
# 877 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 879 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 880 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 883 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 884 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 888 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 889 "data/maps/MOSSDEEP01/scripts.pory"

# 890 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 893 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 894 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyBeforeMightyena, MSGBOX_DEFAULT
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 898 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 899 "data/maps/MOSSDEEP01/scripts.pory"

# 900 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyGuardMightyena::
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 903 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 904 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 905 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 906 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 907 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 908 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 909 "data/maps/MOSSDEEP01/scripts.pory"

# 910 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 911 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 912 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 913 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 914 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 917 "data/maps/MOSSDEEP01/scripts.pory"

# 918 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterCelebi::
# 919 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 920 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 921 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 922 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 924 "data/maps/MOSSDEEP01/scripts.pory"

# 925 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 926 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 927 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 928 "data/maps/MOSSDEEP01/scripts.pory"

# 929 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 930 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 934 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 935 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 936 "data/maps/MOSSDEEP01/scripts.pory"

# 937 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 939 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 940 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 948 "data/maps/MOSSDEEP01/scripts.pory"

# 949 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 953 "data/maps/MOSSDEEP01/scripts.pory"

# 954 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 955 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 956 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 965 "data/maps/MOSSDEEP01/scripts.pory"

# 966 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 967 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 968 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 969 "data/maps/MOSSDEEP01/scripts.pory"

# 970 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 981 "data/maps/MOSSDEEP01/scripts.pory"

# 982 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 983 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 984 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 985 "data/maps/MOSSDEEP01/scripts.pory"

# 986 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_GrandmaAfterCelebi
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 995 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 996 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 997 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 998 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 999 "data/maps/MOSSDEEP01/scripts.pory"

# 1000 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 1001 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 1002 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1005 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1006 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 1007 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 1008 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 1009 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1010 "data/maps/MOSSDEEP01/scripts.pory"

# 1011 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 1012 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 1013 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 1014 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 1015 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1016 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1017 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 1018 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 1019 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1020 "data/maps/MOSSDEEP01/scripts.pory"

# 1021 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 1022 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 1023 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1024 "data/maps/MOSSDEEP01/scripts.pory"

# 1025 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 1026 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 1027 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1028 "data/maps/MOSSDEEP01/scripts.pory"

# 1029 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 1030 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 1031 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1032 "data/maps/MOSSDEEP01/scripts.pory"

# 1033 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 1034 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 1035 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1036 "data/maps/MOSSDEEP01/scripts.pory"

# 1037 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 1038 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 1039 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1040 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1041 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 1042 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 1043 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1044 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1045 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 1046 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 1047 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1048 "data/maps/MOSSDEEP01/scripts.pory"

# 1049 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 1050 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 1051 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1052 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1053 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 1054 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 1055 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1056 "data/maps/MOSSDEEP01/scripts.pory"

# 1057 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 1058 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 1059 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 1060 "data/maps/MOSSDEEP01/scripts.pory"

# 1061 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 1062 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1063 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1064 "data/maps/MOSSDEEP01/scripts.pory"

# 1065 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 1066 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 1067 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 1068 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 1069 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 1070 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1071 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1072 "data/maps/MOSSDEEP01/scripts.pory"

# 1073 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterCelebi::
# 1074 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAfterCelebi, MSGBOX_DEFAULT
# 1075 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1076 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1077 "data/maps/MOSSDEEP01/scripts.pory"

# 1078 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 1079 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1080 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1081 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_GrandpaAfterCelebi
# 1082 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 1083 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 1084 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1085 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1086 "data/maps/MOSSDEEP01/scripts.pory"

# 1087 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 1088 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 1089 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1090 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1091 "data/maps/MOSSDEEP01/scripts.pory"

# 1092 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfterCelebi::
# 1093 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterCelebi, MSGBOX_DEFAULT
# 1094 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1095 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1096 "data/maps/MOSSDEEP01/scripts.pory"

# 1097 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1098 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 1099 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1100 "data/maps/MOSSDEEP01/scripts.pory"

# 1101 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 1102 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 1103 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 1104 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 1105 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 1106 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 1107 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 1108 "data/maps/MOSSDEEP01/scripts.pory"

# 1109 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 1110 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 1111 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 1112 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 1113 "data/maps/MOSSDEEP01/scripts.pory"

# 1114 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 1115 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1116 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1117 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_RivalMaleAfterCelebi
# 1118 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 1119 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 1120 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 1121 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 1122 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 1123 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 1124 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 1125 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 1126 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 1127 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1128 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1129 "data/maps/MOSSDEEP01/scripts.pory"

# 1130 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 1131 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 1132 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1133 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1134 "data/maps/MOSSDEEP01/scripts.pory"

# 1135 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 1136 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 1137 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1138 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1139 "data/maps/MOSSDEEP01/scripts.pory"

# 1140 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 1141 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 1142 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1143 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1144 "data/maps/MOSSDEEP01/scripts.pory"

# 1145 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 1147 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1148 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1149 "data/maps/MOSSDEEP01/scripts.pory"

# 1150 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMaleAfterCelebi::
# 1151 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMaleAfterCelebi, MSGBOX_DEFAULT
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1154 "data/maps/MOSSDEEP01/scripts.pory"

# 1155 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1157 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1158 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_RivalFemaleAfterCelebi
# 1159 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 1160 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 1163 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 1164 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 1165 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 1166 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1169 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1170 "data/maps/MOSSDEEP01/scripts.pory"

# 1171 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 1173 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1174 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1175 "data/maps/MOSSDEEP01/scripts.pory"

# 1176 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 1177 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 1178 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1179 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1180 "data/maps/MOSSDEEP01/scripts.pory"

# 1181 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 1182 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 1183 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1184 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1185 "data/maps/MOSSDEEP01/scripts.pory"

# 1186 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 1187 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 1188 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1189 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1190 "data/maps/MOSSDEEP01/scripts.pory"

# 1191 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemaleAfterCelebi::
# 1192 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemaleAfterCelebi, MSGBOX_DEFAULT
# 1193 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1194 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1195 "data/maps/MOSSDEEP01/scripts.pory"

# 1196 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_LOST_FAMILY_RESCUED, MOSSDEEP01_EventScript_DaughterReunited
# 1199 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1200 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 1201 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1202 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 1203 "data/maps/MOSSDEEP01/scripts.pory"

# 1204 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DaughterReunited::
# 1205 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_DaughterThanksForParents, MSGBOX_DEFAULT
# 1206 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1207 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1208 "data/maps/MOSSDEEP01/scripts.pory"

# 1209 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 1210 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1211 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1212 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 1213 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1214 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1215 "data/maps/MOSSDEEP01/scripts.pory"

# 1216 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1217 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1219 "data/maps/MOSSDEEP01/scripts.pory"

# 1220 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 1221 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1222 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 1223 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 1224 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1225 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1226 "data/maps/MOSSDEEP01/scripts.pory"

# 1227 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 1228 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 1229 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1230 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1231 "data/maps/MOSSDEEP01/scripts.pory"

# 1232 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 1233 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 1234 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 1235 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 1236 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 1237 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 1238 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1240 "data/maps/MOSSDEEP01/scripts.pory"

# 1241 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 1242 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 1243 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1244 "data/maps/MOSSDEEP01/scripts.pory"

# 1245 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 1246 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 1247 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 1249 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 1250 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1251 "data/maps/MOSSDEEP01/scripts.pory"

# 1252 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 1253 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 1254 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 1255 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 1256 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 1257 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1258 "data/maps/MOSSDEEP01/scripts.pory"

# 1259 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1260 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 1261 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1262 "data/maps/MOSSDEEP01/scripts.pory"

# 1263 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 1264 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 1265 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1266 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1268 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 1269 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1271 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1272 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 1273 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 1275 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 1276 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1277 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1278 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 1280 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1281 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1282 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 1283 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 1284 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1285 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1286 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 1287 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 1288 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1289 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1291 "data/maps/MOSSDEEP01/scripts.pory"

# 1292 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 1293 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 1294 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1295 "data/maps/MOSSDEEP01/scripts.pory"

# 1296 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 1297 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1298 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1299 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1300 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 1301 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1302 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 1303 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 1304 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 1305 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 1306 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COMET_SCENE_PLAYED, MOSSDEEP01_JirachiAlreadyCompleted
# 1307 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1308 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 1309 "data/maps/MOSSDEEP01/scripts.pory"

# 1310 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 1311 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1312 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 1313 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1314 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1315 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1316 "data/maps/MOSSDEEP01/scripts.pory"

# 1317 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 1318 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1319 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 1320 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1321 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1322 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1323 "data/maps/MOSSDEEP01/scripts.pory"

# 1324 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 1325 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1326 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 1327 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1328 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1329 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1330 "data/maps/MOSSDEEP01/scripts.pory"

# 1331 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 1332 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 1333 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1334 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1335 "data/maps/MOSSDEEP01/scripts.pory"

# 1336 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 1338 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1339 "data/maps/MOSSDEEP01/scripts.pory"

# 1340 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 1341 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1342 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 1343 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1344 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1345 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 1346 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1347 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 1348 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 1349 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 1351 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 1352 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 1353 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 1355 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 1356 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 1357 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 1358 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 1359 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1360 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 1361 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1362 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 1363 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1364 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 1365 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraPanToComet
# 1366 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 1367 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1368 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 1369 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 1370 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CameraFollowComet
# 1371 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 1372 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 1373 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1374 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 1375 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1376 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 1377 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1378 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 1379 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 1380 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 1381 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1382 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COMET_SCENE_PLAYED
# 1385 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 1386 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1387 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1389 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1390 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1391 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 1392 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 1393 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 1394 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1396 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 1397 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 1398 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 1399 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 1400 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 1401 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 1402 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 1403 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 1404 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 1405 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 1407 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1408 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 1409 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 1410 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 1411 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1412 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 1413 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 1414 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1415 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1416 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 1417 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1418 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 1419 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1420 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1421 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1422 "data/maps/MOSSDEEP01/scripts.pory"

# 1423 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 1424 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 1425 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1426 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 1428 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1429 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 1430 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1431 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1432 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1433 "data/maps/MOSSDEEP01/scripts.pory"

# 1434 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1435 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 1436 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1437 "data/maps/MOSSDEEP01/scripts.pory"

# 1438 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraPanToComet:
# 1439 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1440 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1441 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1442 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1443 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1444 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1445 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1446 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_up
# 1447 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1448 "data/maps/MOSSDEEP01/scripts.pory"

# 1449 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
# 1450 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1451 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1452 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1453 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1454 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1455 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1456 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1457 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1458 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1459 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1460 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1461 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1462 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1463 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1464 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1466 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1467 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1468 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1469 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1470 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1471 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1472 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1473 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1474 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1475 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1476 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1477 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1478 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1479 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1480 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1481 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1482 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1483 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1484 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1485 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1486 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1487 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1488 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1489 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1490 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1491 "data/maps/MOSSDEEP01/scripts.pory"

# 1492 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
# 1493 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1494 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1495 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1496 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1497 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1498 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1499 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1500 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1501 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1502 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1503 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1504 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1505 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1506 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1507 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1508 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1509 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1510 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1511 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1512 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1513 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1514 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1515 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1516 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1517 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1518 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1519 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1520 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1521 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1522 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1523 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1524 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1525 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1526 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1527 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1528 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1529 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1530 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1531 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1532 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1533 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1534 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1535 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1536 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1537 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1538 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1539 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1540 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1541 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1542 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1543 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1544 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1545 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1546 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1547 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1548 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1549 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1550 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1551 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1552 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1553 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1554 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1555 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1556 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1557 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1558 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1559 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1560 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1561 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1562 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1563 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1564 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1565 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1566 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1567 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1568 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1569 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1570 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1571 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1572 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1573 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1574 "data/maps/MOSSDEEP01/scripts.pory"

# 1575 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1576 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1577 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1578 "data/maps/MOSSDEEP01/scripts.pory"

# 1579 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1580 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something…\p"
# 1581 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1582 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1583 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1584 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1585 "data/maps/MOSSDEEP01/scripts.pory"

# 1586 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1587 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1588 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Unfortunately, the flow of time is broken.\p"
# 1589 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1590 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1591 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1592 "data/maps/MOSSDEEP01/scripts.pory"

# 1593 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1594 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1595 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring…\n"
# 1596 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The MILLENNIUM COMET!$"
# 1597 "data/maps/MOSSDEEP01/scripts.pory"

# 1598 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1599 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1600 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1601 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1602 "data/maps/MOSSDEEP01/scripts.pory"

# 1603 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1604 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1605 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream…$"
# 1606 "data/maps/MOSSDEEP01/scripts.pory"

# 1607 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1608 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1609 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1610 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1611 "data/maps/MOSSDEEP01/scripts.pory"

# 1612 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1613 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1614 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the grass…$"
# 1615 "data/maps/MOSSDEEP01/scripts.pory"

# 1616 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1617 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1618 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1619 "data/maps/MOSSDEEP01/scripts.pory"

# 1620 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1621 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1622 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks…$"
# 1623 "data/maps/MOSSDEEP01/scripts.pory"

# 1624 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1625 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1626 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1627 "data/maps/MOSSDEEP01/scripts.pory"

# 1628 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1629 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1630 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water…$"
# 1631 "data/maps/MOSSDEEP01/scripts.pory"

# 1632 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1633 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1634 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1635 "data/maps/MOSSDEEP01/scripts.pory"

# 1636 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1637 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1638 "data/maps/MOSSDEEP01/scripts.pory"

# 1639 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1640 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: … … …\p"
# 1641 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken…\p"
# 1642 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please… find the three TIME GEARS…\n"
# 1643 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed…$"
# 1644 "data/maps/MOSSDEEP01/scripts.pory"

# 1645 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1646 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1647 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1648 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1649 "data/maps/MOSSDEEP01/scripts.pory"

# 1650 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1651 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1652 "data/maps/MOSSDEEP01/scripts.pory"

# 1653 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1654 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1655 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1656 "data/maps/MOSSDEEP01/scripts.pory"

# 1657 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1658 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1659 "data/maps/MOSSDEEP01/scripts.pory"

# 1660 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1661 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1662 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1663 "data/maps/MOSSDEEP01/scripts.pory"

# 1664 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1665 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1666 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1667 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1668 "data/maps/MOSSDEEP01/scripts.pory"

# 1669 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1670 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1671 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1672 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1673 "data/maps/MOSSDEEP01/scripts.pory"

# 1674 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1675 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1676 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1677 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1678 "data/maps/MOSSDEEP01/scripts.pory"

# 1679 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1680 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I'm going to find a safer\n"
# 1681 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1682 "data/maps/MOSSDEEP01/scripts.pory"

# 1683 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1684 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1685 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1686 "data/maps/MOSSDEEP01/scripts.pory"

# 1687 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1688 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1689 "data/maps/MOSSDEEP01/scripts.pory"

# 1690 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1691 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON…$"
# 1692 "data/maps/MOSSDEEP01/scripts.pory"

# 1693 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1694 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1695 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1696 "data/maps/MOSSDEEP01/scripts.pory"

# 1697 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1698 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1699 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible…\n"
# 1700 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped…$"
# 1701 "data/maps/MOSSDEEP01/scripts.pory"

# 1702 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1703 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1704 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1705 "data/maps/MOSSDEEP01/scripts.pory"

# 1706 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1707 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1708 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1709 "data/maps/MOSSDEEP01/scripts.pory"

# 1710 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1711 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1712 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1713 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1714 "data/maps/MOSSDEEP01/scripts.pory"

# 1715 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1716 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region…\n"
# 1717 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed…\p"
# 1718 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1719 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1720 "data/maps/MOSSDEEP01/scripts.pory"

# 1721 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1722 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1723 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1724 "data/maps/MOSSDEEP01/scripts.pory"

# 1725 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1726 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1727 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1728 "data/maps/MOSSDEEP01/scripts.pory"

# 1729 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1730 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You're doing great, {PLAYER}!\n"
# 1731 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1732 "data/maps/MOSSDEEP01/scripts.pory"

# 1733 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1734 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed…\n"
# 1735 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now…$"
# 1736 "data/maps/MOSSDEEP01/scripts.pory"

# 1737 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1738 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1739 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1740 "data/maps/MOSSDEEP01/scripts.pory"

# 1741 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAfterCelebi:
# 1742 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}, that little\n"
# 1743 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON following you seems so gentle.\p"
# 1744 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It makes me feel like perhaps this world\n"
# 1745 "data/maps/MOSSDEEP01/scripts.pory"
	.string "can still heal.$"
# 1746 "data/maps/MOSSDEEP01/scripts.pory"

# 1747 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterCelebi:
# 1748 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: I've never seen a POKÉMON like\n"
# 1749 "data/maps/MOSSDEEP01/scripts.pory"
	.string "that before.\p"
# 1750 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If it chose to travel with you,\n"
# 1751 "data/maps/MOSSDEEP01/scripts.pory"
	.string "it must see something special in you.$"
# 1752 "data/maps/MOSSDEEP01/scripts.pory"

# 1753 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1754 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This was the beginning…$"
# 1755 "data/maps/MOSSDEEP01/scripts.pory"

# 1756 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1757 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then the conflict started…$"
# 1758 "data/maps/MOSSDEEP01/scripts.pory"

# 1759 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1760 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The great battle between land and\n"
# 1761 "data/maps/MOSSDEEP01/scripts.pory"
	.string "sea…$"
# 1762 "data/maps/MOSSDEEP01/scripts.pory"

# 1763 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1764 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The tsunami devastated everything…$"
# 1765 "data/maps/MOSSDEEP01/scripts.pory"

# 1766 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1767 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Volcanoes erupted across the land…$"
# 1768 "data/maps/MOSSDEEP01/scripts.pory"

# 1769 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1770 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The land became a barren wasteland…$"
# 1771 "data/maps/MOSSDEEP01/scripts.pory"

# 1772 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1773 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The oceans raged with unending\n"
# 1774 "data/maps/MOSSDEEP01/scripts.pory"
	.string "storms…$"
# 1775 "data/maps/MOSSDEEP01/scripts.pory"

# 1776 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1777 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Survivors gathered in camps…$"
# 1778 "data/maps/MOSSDEEP01/scripts.pory"

# 1779 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1780 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Hope began to fade…$"
# 1781 "data/maps/MOSSDEEP01/scripts.pory"

# 1782 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1783 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But then a legend appeared…$"
# 1784 "data/maps/MOSSDEEP01/scripts.pory"

# 1785 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1786 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky guardian descended from\n"
# 1787 "data/maps/MOSSDEEP01/scripts.pory"
	.string "above…$"
# 1788 "data/maps/MOSSDEEP01/scripts.pory"

# 1789 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1790 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Peace was restored, but at a cost…$"
# 1791 "data/maps/MOSSDEEP01/scripts.pory"

# 1792 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1793 "data/maps/MOSSDEEP01/scripts.pory"
	.string "And this is how our world became what it\n"
# 1794 "data/maps/MOSSDEEP01/scripts.pory"
	.string "is today…$"
# 1795 "data/maps/MOSSDEEP01/scripts.pory"

# 1796 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1797 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hi, {PLAYER}.\p"
# 1798 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the stories\n"
# 1799 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of how HOENN became what it is now?$"
# 1800 "data/maps/MOSSDEEP01/scripts.pory"

# 1801 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1802 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I understand.\p"
# 1803 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1804 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1805 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there…$"
# 1806 "data/maps/MOSSDEEP01/scripts.pory"

# 1807 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1808 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1809 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1810 "data/maps/MOSSDEEP01/scripts.pory"

# 1811 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1812 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: Hey {PLAYER}! I'm helping\n"
# 1813 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1814 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1815 "data/maps/MOSSDEEP01/scripts.pory"

# 1816 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1817 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: These wild POKÉMON are\n"
# 1818 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1819 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1820 "data/maps/MOSSDEEP01/scripts.pory"

# 1821 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1822 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: I heard there's a special\n"
# 1823 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1824 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1825 "data/maps/MOSSDEEP01/scripts.pory"

# 1826 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1827 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: We can do this, {PLAYER}!\n"
# 1828 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1829 "data/maps/MOSSDEEP01/scripts.pory"

# 1830 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMaleAfterCelebi:
# 1831 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: {PLAYER}, that POKÉMON\n"
# 1832 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you is incredible!\p"
# 1833 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have a feeling we're witnessing\n"
# 1834 "data/maps/MOSSDEEP01/scripts.pory"
	.string "something truly special.$"
# 1835 "data/maps/MOSSDEEP01/scripts.pory"

# 1836 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1837 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: {PLAYER}! I'm so glad you're safe!\p"
# 1838 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1839 "data/maps/MOSSDEEP01/scripts.pory"

# 1840 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1841 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: The wild POKÉMON are\n"
# 1842 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange…\p"
# 1843 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1844 "data/maps/MOSSDEEP01/scripts.pory"

# 1845 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1846 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: I heard about a legendary\n"
# 1847 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1848 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1849 "data/maps/MOSSDEEP01/scripts.pory"

# 1850 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1851 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: We make a great team,\n"
# 1852 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1853 "data/maps/MOSSDEEP01/scripts.pory"

# 1854 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemaleAfterCelebi:
# 1855 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: {PLAYER}, that POKÉMON\n"
# 1856 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you is incredible!\p"
# 1857 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have a feeling we're witnessing\n"
# 1858 "data/maps/MOSSDEEP01/scripts.pory"
	.string "something truly special.$"
# 1859 "data/maps/MOSSDEEP01/scripts.pory"

# 1860 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1861 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared…\n"
# 1862 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1863 "data/maps/MOSSDEEP01/scripts.pory"

# 1864 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_LostFather:
# 1865 "data/maps/MOSSDEEP01/scripts.pory"
	.string "MAN: The earthquake made the land\n"
# 1866 "data/maps/MOSSDEEP01/scripts.pory"
	.string "shift so much that we're completely\p"
# 1867 "data/maps/MOSSDEEP01/scripts.pory"
	.string "lost. We can't find our daughter.$"
# 1868 "data/maps/MOSSDEEP01/scripts.pory"

# 1869 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_LostMother:
# 1870 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WOMAN: Our daughter is out here\n"
# 1871 "data/maps/MOSSDEEP01/scripts.pory"
	.string "somewhere, and I don't know how to\p"
# 1872 "data/maps/MOSSDEEP01/scripts.pory"
	.string "get back to her. Please help us.$"
# 1873 "data/maps/MOSSDEEP01/scripts.pory"

# 1874 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerGivesDirections:
# 1875 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} gives the couple directions\n"
# 1876 "data/maps/MOSSDEEP01/scripts.pory"
	.string "back to their daughter.$"
# 1877 "data/maps/MOSSDEEP01/scripts.pory"

# 1878 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_DaughterThanksForParents:
# 1879 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: You found my parents!\p"
# 1880 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you so much, {PLAYER}!$"
# 1881 "data/maps/MOSSDEEP01/scripts.pory"

# 1882 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ParentsReunionThanks:
# 1883 "data/maps/MOSSDEEP01/scripts.pory"
	.string "MAN: Thank you for helping us find\n"
# 1884 "data/maps/MOSSDEEP01/scripts.pory"
	.string "our daughter, {PLAYER}!$"
# 1885 "data/maps/MOSSDEEP01/scripts.pory"

# 1886 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_LostFatherThanks:
# 1887 "data/maps/MOSSDEEP01/scripts.pory"
	.string "MAN: We'll make sure we never get\n"
# 1888 "data/maps/MOSSDEEP01/scripts.pory"
	.string "separated again. Thank you.$"
# 1889 "data/maps/MOSSDEEP01/scripts.pory"

# 1890 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_LostMotherThanks:
# 1891 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WOMAN: I was so worried about her.\n"
# 1892 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for bringing us together.$"
# 1893 "data/maps/MOSSDEEP01/scripts.pory"

# 1894 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1895 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard…\n"
# 1896 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed…$"
# 1897 "data/maps/MOSSDEEP01/scripts.pory"

# 1898 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1899 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1900 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos…\n"
# 1901 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1902 "data/maps/MOSSDEEP01/scripts.pory"

# 1903 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1904 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down.\n"
# 1905 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems it will allow you to cross\l"
# 1906 "data/maps/MOSSDEEP01/scripts.pory"
	.string "over its back.$"
# 1907 "data/maps/MOSSDEEP01/scripts.pory"

# 1908 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1909 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1910 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks…\p"
# 1911 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1912 "data/maps/MOSSDEEP01/scripts.pory"

# 1913 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1914 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1915 "data/maps/MOSSDEEP01/scripts.pory"

# 1916 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1917 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance…\n"
# 1918 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1919 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1920 "data/maps/MOSSDEEP01/scripts.pory"

# 1921 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1922 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1923 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken…\p"
# 1924 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1925 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1926 "data/maps/MOSSDEEP01/scripts.pory"

# 1927 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1928 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1929 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1930 "data/maps/MOSSDEEP01/scripts.pory"

# 1931 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1932 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully…\n"
# 1933 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1934 "data/maps/MOSSDEEP01/scripts.pory"

# 1935 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1936 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hey, {PLAYER}!\p"
# 1937 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Are you doing alright?\p"
# 1938 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Oh, you need help getting past some wild\n"
# 1939 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON?\p"
# 1940 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Leave it to me and PIDGEOT!$"
# 1941 "data/maps/MOSSDEEP01/scripts.pory"

# 1942 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaRecoveryZinnia:
# 1943 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}, you're awake!\p"
# 1944 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Oh, thank goodness. We were so worried\n"
# 1945 "data/maps/MOSSDEEP01/scripts.pory"
	.string "after you were attacked by that wild\l"
# 1946 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON.\p"
# 1947 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA just barely got you back here.$"
# 1948 "data/maps/MOSSDEEP01/scripts.pory"

# 1949 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaRecoveryZenno:
# 1950 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}, you're awake!\p"
# 1951 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Oh, thank goodness. We were so worried\n"
# 1952 "data/maps/MOSSDEEP01/scripts.pory"
	.string "after you were attacked by that wild\l"
# 1953 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON.\p"
# 1954 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO just barely got you back here.$"
# 1955 "data/maps/MOSSDEEP01/scripts.pory"

# 1956 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaRecovery:
# 1957 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Wild POKÉMON are extremely\n"
# 1958 "data/maps/MOSSDEEP01/scripts.pory"
	.string "dangerous, {PLAYER}.\p"
# 1959 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You must never approach one alone.\p"
# 1960 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Very few people are able to have their\n"
# 1961 "data/maps/MOSSDEEP01/scripts.pory"
	.string "own POKÉMON.\p"
# 1962 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There used to be a technology called\n"
# 1963 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉ BALLS that allowed us to catch\l"
# 1964 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON, but those don't exist anymore.$"
# 1965 "data/maps/MOSSDEEP01/scripts.pory"

# 1966 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaSuggestLuka:
# 1967 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Come to think of it, that boy,\n"
# 1968 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA, has a PIDGEOT!\p"
# 1969 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you need to get past those MIGHTYENA,\n"
# 1970 "data/maps/MOSSDEEP01/scripts.pory"
	.string "you should go ask him for help.$"
# 1971 "data/maps/MOSSDEEP01/scripts.pory"

# 1972 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaMightyenaReminder:
# 1973 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Be careful out there, {PLAYER}!\p"
# 1974 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You should find LUKA and his PIDGEOT.\n"
# 1975 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Perhaps they can help you.$"
# 1976 "data/maps/MOSSDEEP01/scripts.pory"

# 1977 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1978 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Wow… What is that Pokemon\n"
# 1979 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you?\p"
# 1980 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It feels so magical…\n"
# 1981 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have never seen anything like it.\p"
# 1982 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It reminds me of the old legends\n"
# 1983 "data/maps/MOSSDEEP01/scripts.pory"
	.string "our grandparents used to tell…\p"
# 1984 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe those dreams you had…\n"
# 1985 "data/maps/MOSSDEEP01/scripts.pory"
	.string "they were real after all.$"
# 1986 "data/maps/MOSSDEEP01/scripts.pory"

# 1987 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1988 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: I'll head there first!\p"
# 1989 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1990 "data/maps/MOSSDEEP01/scripts.pory"

# 1991 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1992 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: {PLAYER}, we'll hold these wild\n"
# 1993 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON off.\p"
# 1994 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use this chance to get through!$"
# 1995 "data/maps/MOSSDEEP01/scripts.pory"

# 1996 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyBeforeMightyena:
# 1997 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1998 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1999 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 2000 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 2001 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 2002 "data/maps/MOSSDEEP01/scripts.pory"

# 2003 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 2004 "data/maps/MOSSDEEP01/scripts.pory"
	.string "PIDGEOT: Piiidgeoo!$"
# 2005 "data/maps/MOSSDEEP01/scripts.pory"

# 2006 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 2007 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 2008 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help…$"
# 2009 "data/maps/MOSSDEEP01/scripts.pory"

# 2010 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 2011 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 2012 "data/maps/MOSSDEEP01/scripts.pory"

# 2013 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 2014 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 2015 "data/maps/MOSSDEEP01/scripts.pory"

# 2016 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_DrowningManCallsForHelp:
# 2017 "data/maps/MOSSDEEP01/scripts.pory"
	.string "MAN: Help! I'm drowning!\n"
# 2018 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, pull me out of here!$"
# 2019 "data/maps/MOSSDEEP01/scripts.pory"

# 2020 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerRescuesDrowningMan:
# 2021 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} pulls the drowning man\n"
# 2022 "data/maps/MOSSDEEP01/scripts.pory"
	.string "from the water.$"
# 2023 "data/maps/MOSSDEEP01/scripts.pory"

# 2024 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_DrowningManThanks:
# 2025 "data/maps/MOSSDEEP01/scripts.pory"
	.string "MAN: Thank you, {PLAYER}!\n"
# 2026 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You saved my life!$"
# 2027 "data/maps/MOSSDEEP01/scripts.pory"

# 2028 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MinerWifeHelp:
# 2029 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WOMAN: Please help! My husband is\n"
# 2030 "data/maps/MOSSDEEP01/scripts.pory"
	.string "trapped after a mine cave-in!$"
# 2031 "data/maps/MOSSDEEP01/scripts.pory"

# 2032 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDigsOutMiner:
# 2033 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} digs the trapped miner\n"
# 2034 "data/maps/MOSSDEEP01/scripts.pory"
	.string "out of the cave-in.$"
# 2035 "data/maps/MOSSDEEP01/scripts.pory"

# 2036 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MinerThanks:
# 2037 "data/maps/MOSSDEEP01/scripts.pory"
	.string "MINER: Thank you, {PLAYER}!\n"
# 2038 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I thought I was done for!$"
# 2039 "data/maps/MOSSDEEP01/scripts.pory"

# 2040 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MinerWifeThanks:
# 2041 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WOMAN: Thank you for saving him!\n"
# 2042 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't thank you enough!$"
# 2043 "data/maps/MOSSDEEP01/scripts.pory"

# 2044 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 2045 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 2046 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 2047 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
# 2048 "data/maps/MOSSDEEP01/scripts.pory"

# 2049 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AfterTimeGears:
# 2050 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI: We are close, I can feel it…$"
