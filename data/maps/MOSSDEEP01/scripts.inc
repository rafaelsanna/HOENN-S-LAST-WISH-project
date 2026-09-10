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
	goto_if_set FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING, MOSSDEEP01_EventScript_ScheduleMightyenaRepeatRecovery
# 28 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING, MOSSDEEP01_EventScript_ScheduleMightyenaRecovery
# 29 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_CheckPrologueTransition
# 30 "data/maps/MOSSDEEP01/scripts.pory"

# 31 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ScheduleMightyenaRecovery::
# 32 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 1
# 33 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_CheckPrologueTransition
# 34 "data/maps/MOSSDEEP01/scripts.pory"

# 35 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ScheduleMightyenaRepeatRecovery::
# 36 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 2
# 37 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_CheckPrologueTransition
# 38 "data/maps/MOSSDEEP01/scripts.pory"

# 39 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_CheckPrologueTransition:
# 40 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_SkipPrologue
# 41 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
# 42 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_ContinueTransition
# 43 "data/maps/MOSSDEEP01/scripts.pory"

# 44 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_SkipPrologue:
# 45 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 46 "data/maps/MOSSDEEP01/scripts.pory"

# 47 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_ContinueTransition:
# 48 "data/maps/MOSSDEEP01/scripts.pory"
	// A previous version of this map reused DN_FLAG_SEARCHING as a Mossdeep
# 49 "data/maps/MOSSDEEP01/scripts.pory"
	// visibility flag. Clear that legacy state when loading the map so it cannot
# 50 "data/maps/MOSSDEEP01/scripts.pory"
	// leave the player permanently creeping after the Mightyena recovery.
# 51 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 52 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide/show Celebi based on rescue status
# 53 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
# 54 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
# 55 "data/maps/MOSSDEEP01/scripts.pory"
	
# 56 "data/maps/MOSSDEEP01/scripts.pory"
    // Wailord management: hide UNTIL Celebi is rescued
# 57 "data/maps/MOSSDEEP01/scripts.pory"
    call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideWailord
# 58 "data/maps/MOSSDEEP01/scripts.pory"
    call_if_set   FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_ShowWailord
# 59 "data/maps/MOSSDEEP01/scripts.pory"
	
# 60 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide comet initially
# 61 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideComet
# 62 "data/maps/MOSSDEEP01/scripts.pory"
	
# 63 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide collected items
# 64 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
# 65 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
# 66 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
# 67 "data/maps/MOSSDEEP01/scripts.pory"
	
# 68 "data/maps/MOSSDEEP01/scripts.pory"
	// Keep Jirachi awake if already awoken
# 69 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_EventScript_KeepJirachiAwake
# 70 "data/maps/MOSSDEEP01/scripts.pory"
	
# 71 "data/maps/MOSSDEEP01/scripts.pory"
	// Setup rival NPC (gender-based)
# 72 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetupRivalNPC
# 73 "data/maps/MOSSDEEP01/scripts.pory"
	
# 74 "data/maps/MOSSDEEP01/scripts.pory"
	// Manage Wally and Pidgeot visibility
# 75 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideInitialWally
# 76 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowInitialWally
# 77 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowCloneWally
# 78 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideCloneWally
# 79 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideGuardPokemon
# 80 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowGuardPokemon
# 81 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_RemovePostCelebiGuardPokemon
# 82 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SetPostCelebiGuardState
# 83 "data/maps/MOSSDEEP01/scripts.pory"
	
# 84 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 85 "data/maps/MOSSDEEP01/scripts.pory"

# 86 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnResume:
# 87 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 88 "data/maps/MOSSDEEP01/scripts.pory"

# 89 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetPostCelebiGuardState::
# 90 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_PIDGEOT_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 91 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 92 "data/maps/MOSSDEEP01/scripts.pory"

# 93 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideGuardPokemon::
# 94 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 95 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 96 "data/maps/MOSSDEEP01/scripts.pory"

# 97 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RemovePostCelebiGuardPokemon::
# 98 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 99 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MIGHTYENA_GUARD
# 100 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DARKRAI_GUARD
# 101 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 102 "data/maps/MOSSDEEP01/scripts.pory"

# 103 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowGuardPokemon::
# 104 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 105 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 106 "data/maps/MOSSDEEP01/scripts.pory"

# 107 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 108 "data/maps/MOSSDEEP01/scripts.pory"
// PROLOGUE EVENT
# 109 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 110 "data/maps/MOSSDEEP01/scripts.pory"

# 111 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Prologue::
# 112 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 113 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 114 "data/maps/MOSSDEEP01/scripts.pory"
	delay 120
# 115 "data/maps/MOSSDEEP01/scripts.pory"
	
# 116 "data/maps/MOSSDEEP01/scripts.pory"
	// Earthquake effects
# 117 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 118 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 3
# 119 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 3
# 120 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 8
# 121 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 10
# 122 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 123 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 124 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	
# 126 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EARTHQUAKE
# 127 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 4
# 128 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 4
# 129 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 10
# 130 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 12
# 131 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 132 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 133 "data/maps/MOSSDEEP01/scripts.pory"
	delay 100
# 134 "data/maps/MOSSDEEP01/scripts.pory"
	
# 135 "data/maps/MOSSDEEP01/scripts.pory"
	// Player exits tent
# 136 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_ExitTent
# 137 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 138 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 139 "data/maps/MOSSDEEP01/scripts.pory"
	
# 140 "data/maps/MOSSDEEP01/scripts.pory"
	// Grandma dialogue
# 141 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_1
# 142 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_FacePlayer
# 143 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 144 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 145 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 146 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 147 "data/maps/MOSSDEEP01/scripts.pory"
	
# 148 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 149 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 2
# 150 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 2
# 151 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 5
# 152 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 8
# 153 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 154 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 155 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 156 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 157 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 158 "data/maps/MOSSDEEP01/scripts.pory"
	
# 159 "data/maps/MOSSDEEP01/scripts.pory"
	// Give Shiny Charm
# 160 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
# 161 "data/maps/MOSSDEEP01/scripts.pory"
	giveitem ITEM_SHINY_CHARM
# 162 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
# 163 "data/maps/MOSSDEEP01/scripts.pory"
	
# 164 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
# 165 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 1
# 166 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 1
# 167 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 2
# 168 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 5
# 169 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 170 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 171 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 172 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 173 "data/maps/MOSSDEEP01/scripts.pory"
	
# 174 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 176 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 177 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
# 178 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 179 "data/maps/MOSSDEEP01/scripts.pory"
	
# 180 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
# 181 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 182 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 183 "data/maps/MOSSDEEP01/scripts.pory"

# 184 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_ExitTent:
# 185 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 186 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 187 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 188 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 189 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 190 "data/maps/MOSSDEEP01/scripts.pory"

# 191 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 192 "data/maps/MOSSDEEP01/scripts.pory"
// UTILITY FUNCTIONS
# 193 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 194 "data/maps/MOSSDEEP01/scripts.pory"

# 195 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideStaticCelebi::
# 196 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 197 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 198 "data/maps/MOSSDEEP01/scripts.pory"

# 199 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideFollowerCelebi::
# 200 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
# 201 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 202 "data/maps/MOSSDEEP01/scripts.pory"

# 203 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideWailord::
# 204 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WAILORD_PATH
# 205 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 206 "data/maps/MOSSDEEP01/scripts.pory"

# 207 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowWailord::
# 208 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 209 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 210 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 211 "data/maps/MOSSDEEP01/scripts.pory"

# 212 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideComet::
# 213 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 214 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 215 "data/maps/MOSSDEEP01/scripts.pory"

# 216 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem1::
# 217 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 218 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 219 "data/maps/MOSSDEEP01/scripts.pory"

# 220 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem2::
# 221 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 222 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 223 "data/maps/MOSSDEEP01/scripts.pory"

# 224 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem3::
# 225 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 226 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 227 "data/maps/MOSSDEEP01/scripts.pory"

# 228 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideInitialWally::
# 229 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 230 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 231 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 232 "data/maps/MOSSDEEP01/scripts.pory"

# 233 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowInitialWally::
# 234 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_INITIAL
# 235 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
# 236 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 237 "data/maps/MOSSDEEP01/scripts.pory"

# 238 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowCloneWally::
# 239 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 240 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 241 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 242 "data/maps/MOSSDEEP01/scripts.pory"

# 243 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideCloneWally::
# 244 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_CLONE
# 245 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_CLONE
# 246 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 247 "data/maps/MOSSDEEP01/scripts.pory"

# 248 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_KeepJirachiAwake::
# 249 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 250 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 251 "data/maps/MOSSDEEP01/scripts.pory"

# 252 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 253 "data/maps/MOSSDEEP01/scripts.pory"
// TIME GEAR COLLECTION
# 254 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 255 "data/maps/MOSSDEEP01/scripts.pory"

# 256 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item1::
# 257 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 258 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 259 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 260 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
# 261 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 262 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear1
# 263 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 264 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
# 265 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 266 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 267 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 268 "data/maps/MOSSDEEP01/scripts.pory"

# 269 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item2::
# 270 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 271 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 273 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
# 274 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear2
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 281 "data/maps/MOSSDEEP01/scripts.pory"

# 282 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item3::
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 286 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
# 287 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear3
# 289 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
# 291 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 292 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 293 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 294 "data/maps/MOSSDEEP01/scripts.pory"

# 295 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item_AlreadyCollected::
# 296 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
# 297 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 298 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 299 "data/maps/MOSSDEEP01/scripts.pory"

# 300 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 301 "data/maps/MOSSDEEP01/scripts.pory"
// CELEBI RESCUE EVENT
# 302 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 303 "data/maps/MOSSDEEP01/scripts.pory"

# 304 "data/maps/MOSSDEEP01/scripts.pory"
// No evento de interação com Celebi, após mostrar o Wailord:
# 305 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Celebi::
# 306 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 307 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
# 309 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
# 310 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
# 311 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
# 312 "data/maps/MOSSDEEP01/scripts.pory"

# 313 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_TALKED_TO_CELEBI, MOSSDEEP01_EventScript_CelebiIntroduction
# 314 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 319 "data/maps/MOSSDEEP01/scripts.pory"
	
# 320 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 322 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 323 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 326 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 327 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MIGHTYENA_GUARD
# 328 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DARKRAI_GUARD
# 329 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_PIDGEOT_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	
# 331 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 332 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 337 "data/maps/MOSSDEEP01/scripts.pory"

# 338 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 341 "data/maps/MOSSDEEP01/scripts.pory"

# 342 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 344 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 345 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 346 "data/maps/MOSSDEEP01/scripts.pory"

# 347 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 348 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 349 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 352 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 353 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TALKED_TO_CELEBI
# 354 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 355 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 356 "data/maps/MOSSDEEP01/scripts.pory"

# 357 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiIntroduction::
# 358 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 361 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 362 "data/maps/MOSSDEEP01/scripts.pory"
	waitmessage
# 363 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 365 "data/maps/MOSSDEEP01/scripts.pory"

# 366 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 367 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 370 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 371 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 372 "data/maps/MOSSDEEP01/scripts.pory"

# 373 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 374 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 375 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 376 "data/maps/MOSSDEEP01/scripts.pory"

# 377 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 378 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 379 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_MightyenaZone_Safe
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_HELPING, MOSSDEEP01_EventScript_MightyenaZoneRepeat
# 382 "data/maps/MOSSDEEP01/scripts.pory"
	
# 383 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 384 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 385 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 387 "data/maps/MOSSDEEP01/scripts.pory"
	
# 388 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 389 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 391 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 392 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 395 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 396 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 397 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 400 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 401 "data/maps/MOSSDEEP01/scripts.pory"
	
# 402 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 403 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING
# 404 "data/maps/MOSSDEEP01/scripts.pory"
	
# 405 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 406 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 408 "data/maps/MOSSDEEP01/scripts.pory"

# 409 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZoneRepeat::
# 410 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 411 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 412 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 413 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 414 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 417 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 418 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 419 "data/maps/MOSSDEEP01/scripts.pory"

# 420 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 421 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 0
# 422 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 423 "data/maps/MOSSDEEP01/scripts.pory"

# 424 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 425 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 426 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 427 "data/maps/MOSSDEEP01/scripts.pory"

# 428 "data/maps/MOSSDEEP01/scripts.pory"
// Wing Interaction
# 429 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wingull::
# 430 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 431 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 436 "data/maps/MOSSDEEP01/scripts.pory"

# 437 "data/maps/MOSSDEEP01/scripts.pory"

# 438 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 439 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 440 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 441 "data/maps/MOSSDEEP01/scripts.pory"

# 442 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 445 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 446 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 447 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 448 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_HELPING, MOSSDEEP01_EventScript_MightyenaRepeat
# 449 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 453 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 454 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 455 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 456 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 457 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 458 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 459 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 461 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 462 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 463 "data/maps/MOSSDEEP01/scripts.pory"

# 464 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaRepeat::
# 465 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 466 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 474 "data/maps/MOSSDEEP01/scripts.pory"

# 475 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaRecovery::
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 0
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_MOSSDEEP_MIGHTYENA_RECOVERY_PENDING
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_ExclamationMark
# 481 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_ExclamationMark
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 483 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_FaceRight
# 484 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_FaceLeft
# 485 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceLeft
# 486 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 487 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 488 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 489 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_GrandmaRecoveryZinnia
# 490 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaRecoveryZenno, MSGBOX_DEFAULT
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_GrandpaRecovery
# 492 "data/maps/MOSSDEEP01/scripts.pory"

# 493 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaRecoveryZinnia::
# 494 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaRecoveryZinnia, MSGBOX_DEFAULT
# 495 "data/maps/MOSSDEEP01/scripts.pory"

# 496 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaRecovery::
# 497 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_FaceLeft
# 498 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 499 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 500 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaRecovery, MSGBOX_DEFAULT
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 502 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_ExclamationMark
# 503 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 504 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaSuggestLuka, MSGBOX_DEFAULT
# 505 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_HELPING
# 506 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 507 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 508 "data/maps/MOSSDEEP01/scripts.pory"

# 509 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaRepeatRecovery::
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_1, 0
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_MOSSDEEP_MIGHTYENA_REPEAT_PENDING
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 513 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDPA_MOSSDEEP01, Common_Movement_FaceLeft
# 514 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 515 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaMightyenaReminder, MSGBOX_DEFAULT
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 519 "data/maps/MOSSDEEP01/scripts.pory"

# 520 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 521 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 522 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 523 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_Mightyena_NotReady
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 526 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 527 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 528 "data/maps/MOSSDEEP01/scripts.pory"

# 529 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Mightyena_NotReady::
# 530 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 531 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 532 "data/maps/MOSSDEEP01/scripts.pory"

# 533 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 534 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 535 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 536 "data/maps/MOSSDEEP01/scripts.pory"

# 537 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 538 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 539 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 540 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 541 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 542 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 543 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 544 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 545 "data/maps/MOSSDEEP01/scripts.pory"

# 546 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GuardPidgeot::
# 547 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 548 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 549 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 550 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 551 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 552 "data/maps/MOSSDEEP01/scripts.pory"

# 553 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GuardMightyena::
# 554 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 555 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 556 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 557 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 559 "data/maps/MOSSDEEP01/scripts.pory"

# 560 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GuardDarkrai::
# 561 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 562 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_DARKRAI, CRY_MODE_NORMAL
# 563 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 564 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 565 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 566 "data/maps/MOSSDEEP01/scripts.pory"

# 567 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 574 "data/maps/MOSSDEEP01/scripts.pory"

# 575 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 577 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 578 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 580 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 581 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 582 "data/maps/MOSSDEEP01/scripts.pory"

# 583 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 585 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 586 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 590 "data/maps/MOSSDEEP01/scripts.pory"

# 591 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 592 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 593 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 594 "data/maps/MOSSDEEP01/scripts.pory"

# 595 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 596 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 598 "data/maps/MOSSDEEP01/scripts.pory"

# 599 "data/maps/MOSSDEEP01/scripts.pory"
	// PRIORIDADE MAXIMA (depois do Celebi)
# 600 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 601 "data/maps/MOSSDEEP01/scripts.pory"

# 602 "data/maps/MOSSDEEP01/scripts.pory"
	// fluxo normal
# 603 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 604 "data/maps/MOSSDEEP01/scripts.pory"
	
# 605 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 606 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 607 "data/maps/MOSSDEEP01/scripts.pory"
	
# 608 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation after the grandparents direct the player here.
# 609 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 612 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 613 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, MOSSDEEP01_EventScript_LukaMovePlayerDown
# 614 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_LukaExit
# 615 "data/maps/MOSSDEEP01/scripts.pory"

# 616 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LukaMovePlayerDown::
# 617 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 618 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 619 "data/maps/MOSSDEEP01/scripts.pory"

# 620 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_LukaExit::
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_LUKA_INITIAL, MOSSDEEP01_Movement_LukaExit
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_PIDGEOT_INITIAL, MOSSDEEP01_Movement_PidgeotExit
# 623 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 627 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 628 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 629 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_GUARD_POKEMON
# 630 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_LUKA_INITIAL
# 631 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_PIDGEOT_INITIAL
# 632 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MIGHTYENA_HOSTILE
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_DARKRAI_HOSTILE
# 634 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_LUKA_GUARD
# 635 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_PIDGEOT_GUARD
# 636 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_DARKRAI_GUARD
# 637 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MIGHTYENA_GUARD
# 638 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_PIDGEOT_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_UP
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_DARKRAI_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 640 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectmovementtype LOCALID_MIGHTYENA_GUARD, MOVEMENT_TYPE_WALK_IN_PLACE_DOWN
# 641 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 642 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 643 "data/maps/MOSSDEEP01/scripts.pory"

# 644 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_LukaExit:
# 645 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 646 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 647 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 649 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 653 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 654 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 655 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 656 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 657 "data/maps/MOSSDEEP01/scripts.pory"

# 658 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_PidgeotExit:
# 659 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 660 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 661 "data/maps/MOSSDEEP01/scripts.pory"
	walk_left
# 662 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 663 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 664 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 666 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 667 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 668 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 669 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 670 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 671 "data/maps/MOSSDEEP01/scripts.pory"

# 672 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 674 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 675 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyBeforeMightyena, MSGBOX_DEFAULT
# 678 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 679 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 680 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 681 "data/maps/MOSSDEEP01/scripts.pory"

# 682 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyGuardMightyena::
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 684 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 685 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 689 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 690 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 691 "data/maps/MOSSDEEP01/scripts.pory"

# 692 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 693 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 694 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 696 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 697 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 698 "data/maps/MOSSDEEP01/scripts.pory"

# 699 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterCelebi::
# 700 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 703 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 704 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 705 "data/maps/MOSSDEEP01/scripts.pory"

# 706 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 707 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 708 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 709 "data/maps/MOSSDEEP01/scripts.pory"

# 710 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 713 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 714 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 715 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 716 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 717 "data/maps/MOSSDEEP01/scripts.pory"

# 718 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 719 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 720 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 721 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 726 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 727 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 729 "data/maps/MOSSDEEP01/scripts.pory"

# 730 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 732 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 733 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 734 "data/maps/MOSSDEEP01/scripts.pory"

# 735 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 737 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 738 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 739 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 740 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 743 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 744 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 745 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 746 "data/maps/MOSSDEEP01/scripts.pory"

# 747 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 748 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 749 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 750 "data/maps/MOSSDEEP01/scripts.pory"

# 751 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 752 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 753 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 754 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 755 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 756 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 760 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 761 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 762 "data/maps/MOSSDEEP01/scripts.pory"

# 763 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 764 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 765 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 766 "data/maps/MOSSDEEP01/scripts.pory"

# 767 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 768 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 769 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 770 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_GrandmaAfterCelebi
# 771 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 772 "data/maps/MOSSDEEP01/scripts.pory"
	
# 773 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 774 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 775 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 776 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 777 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 778 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 779 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 780 "data/maps/MOSSDEEP01/scripts.pory"

# 781 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 782 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 783 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 784 "data/maps/MOSSDEEP01/scripts.pory"
	
# 785 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 786 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 787 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 788 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 789 "data/maps/MOSSDEEP01/scripts.pory"
	
# 790 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 791 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 792 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 793 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 794 "data/maps/MOSSDEEP01/scripts.pory"

# 795 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 796 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 797 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 798 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 799 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 800 "data/maps/MOSSDEEP01/scripts.pory"
	
# 801 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 802 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 803 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 804 "data/maps/MOSSDEEP01/scripts.pory"

# 805 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 806 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 807 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 808 "data/maps/MOSSDEEP01/scripts.pory"

# 809 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 810 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 811 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 812 "data/maps/MOSSDEEP01/scripts.pory"

# 813 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 816 "data/maps/MOSSDEEP01/scripts.pory"

# 817 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 819 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 820 "data/maps/MOSSDEEP01/scripts.pory"

# 821 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 822 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 823 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 824 "data/maps/MOSSDEEP01/scripts.pory"
	
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 826 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 827 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 828 "data/maps/MOSSDEEP01/scripts.pory"
	
# 829 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 830 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 832 "data/maps/MOSSDEEP01/scripts.pory"

# 833 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 834 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 836 "data/maps/MOSSDEEP01/scripts.pory"
	
# 837 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 838 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 839 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 840 "data/maps/MOSSDEEP01/scripts.pory"

# 841 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 842 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 843 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 844 "data/maps/MOSSDEEP01/scripts.pory"

# 845 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 846 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 847 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 848 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 849 "data/maps/MOSSDEEP01/scripts.pory"

# 850 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 851 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 854 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 855 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 857 "data/maps/MOSSDEEP01/scripts.pory"

# 858 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterCelebi::
# 859 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAfterCelebi, MSGBOX_DEFAULT
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 862 "data/maps/MOSSDEEP01/scripts.pory"

# 863 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_GrandpaAfterCelebi
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 869 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 870 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 871 "data/maps/MOSSDEEP01/scripts.pory"

# 872 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 875 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 876 "data/maps/MOSSDEEP01/scripts.pory"

# 877 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfterCelebi::
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterCelebi, MSGBOX_DEFAULT
# 879 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 880 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 881 "data/maps/MOSSDEEP01/scripts.pory"

# 882 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 883 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 884 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 885 "data/maps/MOSSDEEP01/scripts.pory"

# 886 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 888 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 889 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 890 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 893 "data/maps/MOSSDEEP01/scripts.pory"

# 894 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 898 "data/maps/MOSSDEEP01/scripts.pory"

# 899 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 900 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_RivalMaleAfterCelebi
# 903 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 904 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 905 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 906 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 907 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 908 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 909 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 910 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 911 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 912 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 913 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 914 "data/maps/MOSSDEEP01/scripts.pory"

# 915 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 917 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 918 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 919 "data/maps/MOSSDEEP01/scripts.pory"

# 920 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 921 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 922 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 924 "data/maps/MOSSDEEP01/scripts.pory"

# 925 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 926 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 927 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 928 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 929 "data/maps/MOSSDEEP01/scripts.pory"

# 930 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 934 "data/maps/MOSSDEEP01/scripts.pory"

# 935 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMaleAfterCelebi::
# 936 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMaleAfterCelebi, MSGBOX_DEFAULT
# 937 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 939 "data/maps/MOSSDEEP01/scripts.pory"

# 940 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_RivalFemaleAfterCelebi
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 948 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 953 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 954 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 955 "data/maps/MOSSDEEP01/scripts.pory"

# 956 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 960 "data/maps/MOSSDEEP01/scripts.pory"

# 961 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 965 "data/maps/MOSSDEEP01/scripts.pory"

# 966 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 970 "data/maps/MOSSDEEP01/scripts.pory"

# 971 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 975 "data/maps/MOSSDEEP01/scripts.pory"

# 976 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemaleAfterCelebi::
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemaleAfterCelebi, MSGBOX_DEFAULT
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 980 "data/maps/MOSSDEEP01/scripts.pory"

# 981 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 982 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 983 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 984 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 985 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 987 "data/maps/MOSSDEEP01/scripts.pory"

# 988 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 994 "data/maps/MOSSDEEP01/scripts.pory"

# 995 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 996 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 997 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 998 "data/maps/MOSSDEEP01/scripts.pory"

# 999 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 1000 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1001 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1002 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1005 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1006 "data/maps/MOSSDEEP01/scripts.pory"

# 1007 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 1008 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 1009 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1010 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1011 "data/maps/MOSSDEEP01/scripts.pory"

# 1012 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 1013 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 1014 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 1015 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 1016 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 1017 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 1018 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 1019 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1020 "data/maps/MOSSDEEP01/scripts.pory"

# 1021 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 1022 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 1023 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1024 "data/maps/MOSSDEEP01/scripts.pory"

# 1025 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 1026 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 1027 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 1028 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 1029 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 1030 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1031 "data/maps/MOSSDEEP01/scripts.pory"

# 1032 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 1033 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 1034 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 1035 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 1036 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 1037 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 1038 "data/maps/MOSSDEEP01/scripts.pory"

# 1039 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1040 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 1041 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1042 "data/maps/MOSSDEEP01/scripts.pory"

# 1043 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 1044 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 1045 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1046 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 1047 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1048 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 1049 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1050 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1051 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1052 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 1053 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 1054 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 1055 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 1056 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1057 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1058 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 1059 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 1060 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1061 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1062 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 1063 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 1064 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1065 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1066 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 1067 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 1068 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1069 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 1070 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1071 "data/maps/MOSSDEEP01/scripts.pory"

# 1072 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 1073 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 1074 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1075 "data/maps/MOSSDEEP01/scripts.pory"

# 1076 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 1077 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 1078 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 1079 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1080 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 1081 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1082 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 1083 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 1084 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 1085 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 1086 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COMET_SCENE_PLAYED, MOSSDEEP01_JirachiAlreadyCompleted
# 1087 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1088 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 1089 "data/maps/MOSSDEEP01/scripts.pory"

# 1090 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 1091 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1092 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 1093 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1094 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1095 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1096 "data/maps/MOSSDEEP01/scripts.pory"

# 1097 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 1098 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1099 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 1100 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1101 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1102 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1103 "data/maps/MOSSDEEP01/scripts.pory"

# 1104 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 1105 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1106 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 1107 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1108 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1109 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1110 "data/maps/MOSSDEEP01/scripts.pory"

# 1111 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 1112 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 1113 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1114 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1115 "data/maps/MOSSDEEP01/scripts.pory"

# 1116 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1117 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 1118 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1119 "data/maps/MOSSDEEP01/scripts.pory"

# 1120 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 1121 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1122 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 1123 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1124 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1125 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 1126 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1127 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 1128 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 1129 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 1130 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 1131 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 1132 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 1133 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 1134 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 1135 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 1136 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 1137 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 1138 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 1139 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1140 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 1141 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1142 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 1143 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1144 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 1145 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 1147 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 1148 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 1149 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 1150 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1151 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 1154 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1155 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 1157 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 1158 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 1159 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 1160 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COMET_SCENE_PLAYED
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 1163 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1164 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 1165 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1166 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 1169 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 1170 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 1171 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1173 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 1174 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 1175 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 1176 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 1177 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 1178 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 1179 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 1180 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 1181 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 1182 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 1183 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 1184 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1185 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 1186 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 1187 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 1188 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1189 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 1190 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 1191 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1192 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1193 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 1194 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1195 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 1196 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1199 "data/maps/MOSSDEEP01/scripts.pory"

# 1200 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 1201 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 1202 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1203 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1204 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 1205 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1206 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 1207 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1208 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1209 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1210 "data/maps/MOSSDEEP01/scripts.pory"

# 1211 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1212 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 1213 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1214 "data/maps/MOSSDEEP01/scripts.pory"

# 1215 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
# 1216 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1217 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1219 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1220 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1221 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1222 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1223 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1224 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1225 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1226 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1227 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1228 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1229 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1230 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1231 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1232 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1233 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1234 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1235 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1236 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1237 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1238 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1240 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1241 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1242 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1243 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1244 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1245 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1246 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1247 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1249 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1250 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1251 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1252 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1253 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1254 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1255 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1256 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1257 "data/maps/MOSSDEEP01/scripts.pory"

# 1258 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
# 1259 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1260 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1261 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1262 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1263 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1264 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1265 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1266 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1268 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1269 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1271 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1272 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1273 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1275 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1276 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1277 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1278 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1280 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1281 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1282 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1283 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1284 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1285 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1286 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1287 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1288 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1289 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1291 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1292 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1293 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1294 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1295 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1296 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1297 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1298 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1299 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1300 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1301 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1302 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1303 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1304 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1305 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1306 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1307 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1308 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1309 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1310 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1311 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1312 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1313 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1314 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1315 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1316 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1317 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1318 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1319 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1320 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1321 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1322 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1323 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1324 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1325 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1326 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1327 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1328 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1329 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1330 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1331 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1332 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1333 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1334 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1335 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1336 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1338 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1339 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1340 "data/maps/MOSSDEEP01/scripts.pory"

# 1341 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1342 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1343 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1344 "data/maps/MOSSDEEP01/scripts.pory"

# 1345 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1346 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something…\p"
# 1347 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1348 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1349 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"

# 1352 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1353 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Unfortunately, the flow of time is broken.\p"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1356 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1357 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1358 "data/maps/MOSSDEEP01/scripts.pory"

# 1359 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1360 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1361 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring…\n"
# 1362 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The MILLENNIUM COMET!$"
# 1363 "data/maps/MOSSDEEP01/scripts.pory"

# 1364 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1365 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1366 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1367 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1368 "data/maps/MOSSDEEP01/scripts.pory"

# 1369 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1370 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1371 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream…$"
# 1372 "data/maps/MOSSDEEP01/scripts.pory"

# 1373 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1374 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1375 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1376 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1377 "data/maps/MOSSDEEP01/scripts.pory"

# 1378 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1379 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1380 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the grass…$"
# 1381 "data/maps/MOSSDEEP01/scripts.pory"

# 1382 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"

# 1386 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1387 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks…$"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"

# 1390 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1391 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1392 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1393 "data/maps/MOSSDEEP01/scripts.pory"

# 1394 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1396 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water…$"
# 1397 "data/maps/MOSSDEEP01/scripts.pory"

# 1398 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1399 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1400 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1401 "data/maps/MOSSDEEP01/scripts.pory"

# 1402 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1403 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1404 "data/maps/MOSSDEEP01/scripts.pory"

# 1405 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: … … …\p"
# 1407 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken…\p"
# 1408 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please… find the three TIME GEARS…\n"
# 1409 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed…$"
# 1410 "data/maps/MOSSDEEP01/scripts.pory"

# 1411 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1412 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1413 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1414 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1415 "data/maps/MOSSDEEP01/scripts.pory"

# 1416 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1417 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1418 "data/maps/MOSSDEEP01/scripts.pory"

# 1419 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1420 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1421 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1422 "data/maps/MOSSDEEP01/scripts.pory"

# 1423 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1424 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1425 "data/maps/MOSSDEEP01/scripts.pory"

# 1426 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1428 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1429 "data/maps/MOSSDEEP01/scripts.pory"

# 1430 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1431 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1432 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1433 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1434 "data/maps/MOSSDEEP01/scripts.pory"

# 1435 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1436 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1437 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1438 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1439 "data/maps/MOSSDEEP01/scripts.pory"

# 1440 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1441 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1442 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1443 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1444 "data/maps/MOSSDEEP01/scripts.pory"

# 1445 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1446 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I'm going to find a safer\n"
# 1447 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1448 "data/maps/MOSSDEEP01/scripts.pory"

# 1449 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1450 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1451 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1452 "data/maps/MOSSDEEP01/scripts.pory"

# 1453 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1454 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1455 "data/maps/MOSSDEEP01/scripts.pory"

# 1456 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1457 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON…$"
# 1458 "data/maps/MOSSDEEP01/scripts.pory"

# 1459 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1460 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1461 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1462 "data/maps/MOSSDEEP01/scripts.pory"

# 1463 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1464 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible…\n"
# 1466 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped…$"
# 1467 "data/maps/MOSSDEEP01/scripts.pory"

# 1468 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1469 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1470 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1471 "data/maps/MOSSDEEP01/scripts.pory"

# 1472 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1473 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1474 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1475 "data/maps/MOSSDEEP01/scripts.pory"

# 1476 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1477 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1478 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1479 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1480 "data/maps/MOSSDEEP01/scripts.pory"

# 1481 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1482 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region…\n"
# 1483 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed…\p"
# 1484 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1485 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1486 "data/maps/MOSSDEEP01/scripts.pory"

# 1487 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1488 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1489 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1490 "data/maps/MOSSDEEP01/scripts.pory"

# 1491 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1492 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1493 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1494 "data/maps/MOSSDEEP01/scripts.pory"

# 1495 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1496 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You're doing great, {PLAYER}!\n"
# 1497 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1498 "data/maps/MOSSDEEP01/scripts.pory"

# 1499 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1500 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed…\n"
# 1501 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now…$"
# 1502 "data/maps/MOSSDEEP01/scripts.pory"

# 1503 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1504 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1505 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1506 "data/maps/MOSSDEEP01/scripts.pory"

# 1507 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAfterCelebi:
# 1508 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}, that little\n"
# 1509 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON following you seems so gentle.\p"
# 1510 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It makes me feel like perhaps this world\n"
# 1511 "data/maps/MOSSDEEP01/scripts.pory"
	.string "can still heal.$"
# 1512 "data/maps/MOSSDEEP01/scripts.pory"

# 1513 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterCelebi:
# 1514 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: I've never seen a POKÉMON like\n"
# 1515 "data/maps/MOSSDEEP01/scripts.pory"
	.string "that before.\p"
# 1516 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If it chose to travel with you,\n"
# 1517 "data/maps/MOSSDEEP01/scripts.pory"
	.string "it must see something special in you.$"
# 1518 "data/maps/MOSSDEEP01/scripts.pory"

# 1519 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1520 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This was the beginning…$"
# 1521 "data/maps/MOSSDEEP01/scripts.pory"

# 1522 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1523 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then the conflict started…$"
# 1524 "data/maps/MOSSDEEP01/scripts.pory"

# 1525 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1526 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The great battle between land and\n"
# 1527 "data/maps/MOSSDEEP01/scripts.pory"
	.string "sea…$"
# 1528 "data/maps/MOSSDEEP01/scripts.pory"

# 1529 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1530 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The tsunami devastated everything…$"
# 1531 "data/maps/MOSSDEEP01/scripts.pory"

# 1532 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1533 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Volcanoes erupted across the land…$"
# 1534 "data/maps/MOSSDEEP01/scripts.pory"

# 1535 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1536 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The land became a barren wasteland…$"
# 1537 "data/maps/MOSSDEEP01/scripts.pory"

# 1538 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1539 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The oceans raged with unending\n"
# 1540 "data/maps/MOSSDEEP01/scripts.pory"
	.string "storms…$"
# 1541 "data/maps/MOSSDEEP01/scripts.pory"

# 1542 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1543 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Survivors gathered in camps…$"
# 1544 "data/maps/MOSSDEEP01/scripts.pory"

# 1545 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1546 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Hope began to fade…$"
# 1547 "data/maps/MOSSDEEP01/scripts.pory"

# 1548 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1549 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But then a legend appeared…$"
# 1550 "data/maps/MOSSDEEP01/scripts.pory"

# 1551 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1552 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky guardian descended from\n"
# 1553 "data/maps/MOSSDEEP01/scripts.pory"
	.string "above…$"
# 1554 "data/maps/MOSSDEEP01/scripts.pory"

# 1555 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1556 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Peace was restored, but at a cost…$"
# 1557 "data/maps/MOSSDEEP01/scripts.pory"

# 1558 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1559 "data/maps/MOSSDEEP01/scripts.pory"
	.string "And this is how our world became what it\n"
# 1560 "data/maps/MOSSDEEP01/scripts.pory"
	.string "is today…$"
# 1561 "data/maps/MOSSDEEP01/scripts.pory"

# 1562 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1563 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hi, {PLAYER}.\p"
# 1564 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the stories\n"
# 1565 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of how HOENN became what it is now?$"
# 1566 "data/maps/MOSSDEEP01/scripts.pory"

# 1567 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1568 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I understand.\p"
# 1569 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1570 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1571 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there…$"
# 1572 "data/maps/MOSSDEEP01/scripts.pory"

# 1573 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1574 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1575 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1576 "data/maps/MOSSDEEP01/scripts.pory"

# 1577 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1578 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: Hey {PLAYER}! I'm helping\n"
# 1579 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1580 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1581 "data/maps/MOSSDEEP01/scripts.pory"

# 1582 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1583 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: These wild POKÉMON are\n"
# 1584 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1585 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1586 "data/maps/MOSSDEEP01/scripts.pory"

# 1587 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1588 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: I heard there's a special\n"
# 1589 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1590 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1591 "data/maps/MOSSDEEP01/scripts.pory"

# 1592 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1593 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: We can do this, {PLAYER}!\n"
# 1594 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1595 "data/maps/MOSSDEEP01/scripts.pory"

# 1596 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMaleAfterCelebi:
# 1597 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO: {PLAYER}, that POKÉMON\n"
# 1598 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you is incredible!\p"
# 1599 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have a feeling we're witnessing\n"
# 1600 "data/maps/MOSSDEEP01/scripts.pory"
	.string "something truly special.$"
# 1601 "data/maps/MOSSDEEP01/scripts.pory"

# 1602 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1603 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: {PLAYER}! I'm so glad you're safe!\p"
# 1604 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1605 "data/maps/MOSSDEEP01/scripts.pory"

# 1606 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1607 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: The wild POKÉMON are\n"
# 1608 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange…\p"
# 1609 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1610 "data/maps/MOSSDEEP01/scripts.pory"

# 1611 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1612 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: I heard about a legendary\n"
# 1613 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1614 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1615 "data/maps/MOSSDEEP01/scripts.pory"

# 1616 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1617 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: We make a great team,\n"
# 1618 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1619 "data/maps/MOSSDEEP01/scripts.pory"

# 1620 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemaleAfterCelebi:
# 1621 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA: {PLAYER}, that POKÉMON\n"
# 1622 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you is incredible!\p"
# 1623 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have a feeling we're witnessing\n"
# 1624 "data/maps/MOSSDEEP01/scripts.pory"
	.string "something truly special.$"
# 1625 "data/maps/MOSSDEEP01/scripts.pory"

# 1626 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1627 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared…\n"
# 1628 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1629 "data/maps/MOSSDEEP01/scripts.pory"

# 1630 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1631 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard…\n"
# 1632 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed…$"
# 1633 "data/maps/MOSSDEEP01/scripts.pory"

# 1634 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1635 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1636 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos…\n"
# 1637 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1638 "data/maps/MOSSDEEP01/scripts.pory"

# 1639 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1640 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down.\n"
# 1641 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems it will allow you to cross\p"
# 1642 "data/maps/MOSSDEEP01/scripts.pory"
	.string "over its back.$"
# 1643 "data/maps/MOSSDEEP01/scripts.pory"

# 1644 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1645 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1646 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks…\p"
# 1647 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1648 "data/maps/MOSSDEEP01/scripts.pory"

# 1649 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1650 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1651 "data/maps/MOSSDEEP01/scripts.pory"

# 1652 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1653 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance…\n"
# 1654 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1655 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1656 "data/maps/MOSSDEEP01/scripts.pory"

# 1657 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1658 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1659 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken…\p"
# 1660 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1661 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1662 "data/maps/MOSSDEEP01/scripts.pory"

# 1663 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1664 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1665 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1666 "data/maps/MOSSDEEP01/scripts.pory"

# 1667 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1668 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully…\n"
# 1669 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1670 "data/maps/MOSSDEEP01/scripts.pory"

# 1671 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1672 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hey, {PLAYER}!\p"
# 1673 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Are you doing alright?\p"
# 1674 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Oh, you need help getting past some wild\n"
# 1675 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON?\p"
# 1676 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Leave it to me and PIDGEOT!$"
# 1677 "data/maps/MOSSDEEP01/scripts.pory"

# 1678 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaRecoveryZinnia:
# 1679 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}, you're awake!\p"
# 1680 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Oh, thank goodness. We were so worried\p"
# 1681 "data/maps/MOSSDEEP01/scripts.pory"
	.string "after you were attacked by that wild\n"
# 1682 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON.\p"
# 1683 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZINNIA just barely got you back here.$"
# 1684 "data/maps/MOSSDEEP01/scripts.pory"

# 1685 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaRecoveryZenno:
# 1686 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}, you're awake!\p"
# 1687 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Oh, thank goodness. We were so worried\p"
# 1688 "data/maps/MOSSDEEP01/scripts.pory"
	.string "after you were attacked by that wild\n"
# 1689 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON.\p"
# 1690 "data/maps/MOSSDEEP01/scripts.pory"
	.string "ZENNO just barely got you back here.$"
# 1691 "data/maps/MOSSDEEP01/scripts.pory"

# 1692 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaRecovery:
# 1693 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Wild POKÉMON are extremely\n"
# 1694 "data/maps/MOSSDEEP01/scripts.pory"
	.string "dangerous, {PLAYER}.\p"
# 1695 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You must never approach one alone.\p"
# 1696 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Very few people are able to have their\n"
# 1697 "data/maps/MOSSDEEP01/scripts.pory"
	.string "own POKÉMON.\p"
# 1698 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There used to be a technology called\n"
# 1699 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉ BALLS that allowed us to catch\p"
# 1700 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON, but those don't exist anymore.$"
# 1701 "data/maps/MOSSDEEP01/scripts.pory"

# 1702 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaSuggestLuka:
# 1703 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Come to think of it, that boy,\n"
# 1704 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA, has a PIDGEOT!\p"
# 1705 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you need to get past those MIGHTYENA,\n"
# 1706 "data/maps/MOSSDEEP01/scripts.pory"
	.string "you should go ask him for help.$"
# 1707 "data/maps/MOSSDEEP01/scripts.pory"

# 1708 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaMightyenaReminder:
# 1709 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Be careful out there, {PLAYER}!\p"
# 1710 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You should find LUKA and his PIDGEOT.\n"
# 1711 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Perhaps they can help you.$"
# 1712 "data/maps/MOSSDEEP01/scripts.pory"

# 1713 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1714 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Wow… What is that Pokemon\n"
# 1715 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you?\p"
# 1716 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It feels so magical…\n"
# 1717 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have never seen anything like it.\p"
# 1718 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It reminds me of the old legends\n"
# 1719 "data/maps/MOSSDEEP01/scripts.pory"
	.string "our grandparents used to tell…\p"
# 1720 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe those dreams you had…\n"
# 1721 "data/maps/MOSSDEEP01/scripts.pory"
	.string "they were real after all.$"
# 1722 "data/maps/MOSSDEEP01/scripts.pory"

# 1723 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1724 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: I'll head there first!\p"
# 1725 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1726 "data/maps/MOSSDEEP01/scripts.pory"

# 1727 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1728 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: {PLAYER}, we'll hold these wild\n"
# 1729 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON off.\p"
# 1730 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use this chance to get through!$"
# 1731 "data/maps/MOSSDEEP01/scripts.pory"

# 1732 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyBeforeMightyena:
# 1733 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1734 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1735 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1736 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1737 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1738 "data/maps/MOSSDEEP01/scripts.pory"

# 1739 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1740 "data/maps/MOSSDEEP01/scripts.pory"
	.string "PIDGEOT: Piiidgeoo!$"
# 1741 "data/maps/MOSSDEEP01/scripts.pory"

# 1742 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1743 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1744 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help…$"
# 1745 "data/maps/MOSSDEEP01/scripts.pory"

# 1746 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1747 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1748 "data/maps/MOSSDEEP01/scripts.pory"

# 1749 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1750 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1751 "data/maps/MOSSDEEP01/scripts.pory"

# 1752 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1753 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1754 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1755 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
# 1756 "data/maps/MOSSDEEP01/scripts.pory"

# 1757 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AfterTimeGears:
# 1758 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI: We are close, I can feel it…$"
