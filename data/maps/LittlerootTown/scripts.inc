# 1 "data/maps/LittlerootTown/scripts.pory"

# 2 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_MapScripts::
# 3 "data/maps/LittlerootTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_OnTransition
# 4 "data/maps/LittlerootTown/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_OnFrame
# 5 "data/maps/LittlerootTown/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_OnWarp
# 6 "data/maps/LittlerootTown/scripts.pory"
	.byte 0
# 7 "data/maps/LittlerootTown/scripts.pory"

# 8 "data/maps/LittlerootTown/scripts.pory"
	@ State descriptions for VAR_LITTLEROOT_TOWN_STATE
# 9 "data/maps/LittlerootTown/scripts.pory"
	@ 1: Met Rival
# 10 "data/maps/LittlerootTown/scripts.pory"
	@ 2: Saving Birch
# 11 "data/maps/LittlerootTown/scripts.pory"
	@ 3: Received Pokedex
# 12 "data/maps/LittlerootTown/scripts.pory"
	@ 4: Received Running Shoes
# 13 "data/maps/LittlerootTown/scripts.pory"

# 14 "data/maps/LittlerootTown/scripts.pory"
	@ State descriptions for VAR_LITTLEROOT_INTRO_STATE
# 15 "data/maps/LittlerootTown/scripts.pory"
	@ 1: In truck male
# 16 "data/maps/LittlerootTown/scripts.pory"
	@ 2: In truck female
# 17 "data/maps/LittlerootTown/scripts.pory"
	@ 3: Entered house
# 18 "data/maps/LittlerootTown/scripts.pory"
	@ 4: Told to go set clock
# 19 "data/maps/LittlerootTown/scripts.pory"
	@ 5: Entered 2F to set clock
# 20 "data/maps/LittlerootTown/scripts.pory"
	@ 6: Set clock
# 21 "data/maps/LittlerootTown/scripts.pory"
	@ 7: Told to go meet rival
# 22 "data/maps/LittlerootTown/scripts.pory"

# 23 "data/maps/LittlerootTown/scripts.pory"
	@ State descriptions for VAR_LITTLEROOT_HOUSES_STATE_MAY
# 24 "data/maps/LittlerootTown/scripts.pory"
	@                    and VAR_LITTLEROOT_HOUSES_STATE_BRENDAN
# 25 "data/maps/LittlerootTown/scripts.pory"
	@ 1: On Truck (and is corresponding gender)
# 26 "data/maps/LittlerootTown/scripts.pory"
	@ 2: Met Rival's Mom (and is corresponding gender)
# 27 "data/maps/LittlerootTown/scripts.pory"
	@ 3: Entered Hall of Fame
# 28 "data/maps/LittlerootTown/scripts.pory"
	@ 4: Completed Lati TV / SS Ticket event
# 29 "data/maps/LittlerootTown/scripts.pory"
	@ 5: Exited house after above event
# 30 "data/maps/LittlerootTown/scripts.pory"

# 31 "data/maps/LittlerootTown/scripts.pory"
	@ State descriptions for VAR_LITTLEROOT_RIVAL_STATE
# 32 "data/maps/LittlerootTown/scripts.pory"
	@ 1: Never occurs
# 33 "data/maps/LittlerootTown/scripts.pory"
	@ 2: Entered Rival's bedroom
# 34 "data/maps/LittlerootTown/scripts.pory"
	@ 3: Met Rival
# 35 "data/maps/LittlerootTown/scripts.pory"
	@ 4: Received Pokedex
# 36 "data/maps/LittlerootTown/scripts.pory"

# 37 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnTransition:
# 38 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 39 "data/maps/LittlerootTown/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 40 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_MoveMomToMaysDoor
# 41 "data/maps/LittlerootTown/scripts.pory"
	call_if_unset FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_SetTwinPos
# 42 "data/maps/LittlerootTown/scripts.pory"
	@call_if_eq VAR_LITTLEROOT_TOWN_STATE, 3, LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos// 
# 43 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_LITTLEROOT_TOWN_STATE, 3, LittlerootTown_EventScript_HideMomForRunningShoes
# 44 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_MAY, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
# 45 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
# 46 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_OLDALE_RIVAL_STATE, 1, LittlerootTown_EventScript_MoveRivalFromOldale
# 47 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_EventScript_SetRivalLeftForRoute103
# 48 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_HideMapNamePopup
# 49 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_EventScript_LeftLabAfterDexUpgrade
# 50 "data/maps/LittlerootTown/scripts.pory"
	call_if_set FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT, LittlerootTown_EventScript_HideResearchAssistant
# 51 "data/maps/LittlerootTown/scripts.pory"
	end
# 52 "data/maps/LittlerootTown/scripts.pory"

# 53 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Poochyena::
# 54 "data/maps/LittlerootTown/scripts.pory"
	lock
# 55 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 56 "data/maps/LittlerootTown/scripts.pory"
	playmoncry SPECIES_EEVEE, CRY_MODE_NORMAL
# 57 "data/maps/LittlerootTown/scripts.pory"
	waitmoncry
# 58 "data/maps/LittlerootTown/scripts.pory"
	release
# 59 "data/maps/LittlerootTown/scripts.pory"
	end
# 60 "data/maps/LittlerootTown/scripts.pory"

# 61 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SnowballGame::
# 62 "data/maps/LittlerootTown/scripts.pory"
	lock
# 63 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 64 "data/maps/LittlerootTown/scripts.pory"
	callnative StartSnowballGame
# 65 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 66 "data/maps/LittlerootTown/scripts.pory"
	release
# 67 "data/maps/LittlerootTown/scripts.pory"
	end
# 68 "data/maps/LittlerootTown/scripts.pory"

# 69 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_LeftLabAfterDexUpgrade::
# 70 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 3
# 71 "data/maps/LittlerootTown/scripts.pory"
	return
# 72 "data/maps/LittlerootTown/scripts.pory"

# 73 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideMomForRunningShoes:: @ no need to show mon to give running shoes 
# 74 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 75 "data/maps/LittlerootTown/scripts.pory"
	return
# 76 "data/maps/LittlerootTown/scripts.pory"

# 77 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideMapNamePopup::
# 78 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 79 "data/maps/LittlerootTown/scripts.pory"
	return
# 80 "data/maps/LittlerootTown/scripts.pory"

# 81 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalLeftForRoute103::
# 82 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_RIVAL_LEFT_FOR_ROUTE103
# 83 "data/maps/LittlerootTown/scripts.pory"
	return
# 84 "data/maps/LittlerootTown/scripts.pory"

# 85 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MoveRivalFromOldale::
# 86 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 2
# 87 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 88 "data/maps/LittlerootTown/scripts.pory"
	return
# 89 "data/maps/LittlerootTown/scripts.pory"

# 90 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent::
# 91 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 5
# 92 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 5
# 93 "data/maps/LittlerootTown/scripts.pory"
	return
# 94 "data/maps/LittlerootTown/scripts.pory"

# 95 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MoveMomToMaysDoor::
# 96 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 14, 8
# 97 "data/maps/LittlerootTown/scripts.pory"
	return
# 98 "data/maps/LittlerootTown/scripts.pory"

# 99 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetTwinPos::
# 100 "data/maps/LittlerootTown/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_TOWN_STATE, 0, LittlerootTown_EventScript_SetTwinGuardingRoutePos
# 101 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_TWIN, 10, 1
# 102 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_TWIN, MOVEMENT_TYPE_FACE_UP
# 103 "data/maps/LittlerootTown/scripts.pory"
	return
# 104 "data/maps/LittlerootTown/scripts.pory"

# 105 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetTwinGuardingRoutePos::
# 106 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_TWIN, 7, 2
# 107 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_TWIN, MOVEMENT_TYPE_FACE_DOWN
# 108 "data/maps/LittlerootTown/scripts.pory"
	return
# 109 "data/maps/LittlerootTown/scripts.pory"

# 110 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos::
# 111 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 112 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_MOM, MOVEMENT_TYPE_FACE_DOWN
# 113 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 114 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetMomInFrontOfDoorMale
# 115 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetMomInFrontOfDoorFemale
# 116 "data/maps/LittlerootTown/scripts.pory"
	return
# 117 "data/maps/LittlerootTown/scripts.pory"

# 118 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomInFrontOfDoorMale::
# 119 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 5, 9
# 120 "data/maps/LittlerootTown/scripts.pory"
	return
# 121 "data/maps/LittlerootTown/scripts.pory"

# 122 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomInFrontOfDoorFemale::
# 123 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 14, 9
# 124 "data/maps/LittlerootTown/scripts.pory"
	return
# 125 "data/maps/LittlerootTown/scripts.pory"

# 126 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnFrame:
# 127 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 1, LittlerootTown_EventScript_StepOffTruckMale
# 128 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_StepOffTruckFemale
# 129 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_BeginDexUpgradeScene
# 130 "data/maps/LittlerootTown/scripts.pory"
	.2byte 0
# 131 "data/maps/LittlerootTown/scripts.pory"

# 132 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_StepOffTruckMale::
# 133 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 134 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8004, 5
# 135 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8005, 8
# 136 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GoInsideWithMom
# 137 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 138 "data/maps/LittlerootTown/scripts.pory"
	warpsilent MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_1F, 8, 8
# 139 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 140 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 141 "data/maps/LittlerootTown/scripts.pory"
	end
# 142 "data/maps/LittlerootTown/scripts.pory"

# 143 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_StepOffTruckFemale::
# 144 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 145 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8004, 14
# 146 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8005, 8
# 147 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GoInsideWithMom
# 148 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 149 "data/maps/LittlerootTown/scripts.pory"
	warpsilent MAP_LITTLEROOT_TOWN_MAYS_HOUSE_1F, 2, 8
# 150 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 151 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 152 "data/maps/LittlerootTown/scripts.pory"
	end
# 153 "data/maps/LittlerootTown/scripts.pory"

# 154 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoInsideWithMom::
# 155 "data/maps/LittlerootTown/scripts.pory"
	delay 15
# 156 "data/maps/LittlerootTown/scripts.pory"
	playse SE_LEDGE
# 157 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerStepOffTruck
# 158 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 159 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 160 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 161 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_MOM
# 162 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitHouse
# 163 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 164 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 165 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 166 "data/maps/LittlerootTown/scripts.pory"
	delay 10
# 167 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerAtTruck
# 168 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 169 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_OurNewHomeLetsGoInside, MSGBOX_DEFAULT
# 170 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 171 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachDoor
# 172 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerApproachDoor
# 173 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 174 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 175 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 176 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomEnterHouse
# 177 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerEnterHouse
# 178 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 179 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 180 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 3
# 181 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_PLAYER, 0
# 182 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 183 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 184 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_FAT_MAN
# 185 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 186 "data/maps/LittlerootTown/scripts.pory"
	return
# 187 "data/maps/LittlerootTown/scripts.pory"

# 188 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomExitHouse:
# 189 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 190 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 191 "data/maps/LittlerootTown/scripts.pory"

# 192 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerAtTruck:
# 193 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 194 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_left
# 195 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 196 "data/maps/LittlerootTown/scripts.pory"

# 197 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachDoor:
# 198 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 199 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 200 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 201 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 202 "data/maps/LittlerootTown/scripts.pory"

# 203 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomEnterHouse:
# 204 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 205 "data/maps/LittlerootTown/scripts.pory"
	set_invisible
# 206 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 207 "data/maps/LittlerootTown/scripts.pory"

# 208 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerApproachDoor:
# 209 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 210 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 211 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 212 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 213 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 214 "data/maps/LittlerootTown/scripts.pory"

# 215 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerEnterHouse:
# 216 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 217 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 218 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 219 "data/maps/LittlerootTown/scripts.pory"

# 220 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerStepOffTruck:
# 221 "data/maps/LittlerootTown/scripts.pory"
	jump_right
# 222 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 223 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 224 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 225 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 226 "data/maps/LittlerootTown/scripts.pory"

# 227 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BeginDexUpgradeScene::
# 228 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 229 "data/maps/LittlerootTown/scripts.pory"
	playse SE_PIN
# 230 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_BIRCH, Common_Movement_ExclamationMark
# 231 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 232 "data/maps/LittlerootTown/scripts.pory"
	delay 80
# 233 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_BirchSomethingToShowYouAtLab, MSGBOX_DEFAULT
# 234 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 235 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_RIVAL
# 236 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCH
# 237 "data/maps/LittlerootTown/scripts.pory"
	delay 20
# 238 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 239 "data/maps/LittlerootTown/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB, 6, 5
# 240 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 241 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 242 "data/maps/LittlerootTown/scripts.pory"
	end
# 243 "data/maps/LittlerootTown/scripts.pory"

# 244 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnWarp:
# 245 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_SetRivalBirchPosForDexUpgrade
# 246 "data/maps/LittlerootTown/scripts.pory"
	.2byte 0
# 247 "data/maps/LittlerootTown/scripts.pory"

# 248 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgrade::
# 249 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_BIRCH
# 250 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_RIVAL
# 251 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 252 "data/maps/LittlerootTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeMale
# 253 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeFemale
# 254 "data/maps/LittlerootTown/scripts.pory"
	end
# 255 "data/maps/LittlerootTown/scripts.pory"

# 256 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeMale::
# 257 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_RIVAL, 6, 10
# 258 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_BIRCH, 5, 10
# 259 "data/maps/LittlerootTown/scripts.pory"
	end
# 260 "data/maps/LittlerootTown/scripts.pory"

# 261 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeFemale::
# 262 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_RIVAL, 13, 10
# 263 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_BIRCH, 14, 10
# 264 "data/maps/LittlerootTown/scripts.pory"
	end
# 265 "data/maps/LittlerootTown/scripts.pory"

# 266 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_FatMan::
# 267 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanUsePCToStoreItems, MSGBOX_NPC
# 268 "data/maps/LittlerootTown/scripts.pory"
	end
# 269 "data/maps/LittlerootTown/scripts.pory"

# 270 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Boy::
# 271 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_BirchSpendsDaysInLab, MSGBOX_NPC
# 272 "data/maps/LittlerootTown/scripts.pory"
	end
# 273 "data/maps/LittlerootTown/scripts.pory"

# 274 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_LittleBoy::
# 275 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WantPKM, MSGBOX_NPC
# 276 "data/maps/LittlerootTown/scripts.pory"
	end	
# 277 "data/maps/LittlerootTown/scripts.pory"

# 278 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Twin::
# 279 "data/maps/LittlerootTown/scripts.pory"
	lock
# 280 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 281 "data/maps/LittlerootTown/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, LittlerootTown_EventScript_GoodLuck
# 282 "data/maps/LittlerootTown/scripts.pory"
	goto_if_set FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_YouSavedBirch
# 283 "data/maps/LittlerootTown/scripts.pory"
	goto_if_ne VAR_LITTLEROOT_TOWN_STATE, 0, LittlerootTown_EventScript_GoSaveBirch
# 284 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut, MSGBOX_DEFAULT
# 285 "data/maps/LittlerootTown/scripts.pory"
	release
# 286 "data/maps/LittlerootTown/scripts.pory"
	end
# 287 "data/maps/LittlerootTown/scripts.pory"

# 288 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoSaveBirch::
# 289 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 290 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanYouGoSeeWhatsHappening, MSGBOX_DEFAULT
# 291 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 292 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_FaceOriginalDirection
# 293 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 294 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 2
# 295 "data/maps/LittlerootTown/scripts.pory"
	release
# 296 "data/maps/LittlerootTown/scripts.pory"
	end
# 297 "data/maps/LittlerootTown/scripts.pory"

# 298 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_YouSavedBirch::
# 299 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 300 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_YouSavedBirch, MSGBOX_DEFAULT
# 301 "data/maps/LittlerootTown/scripts.pory"
	release
# 302 "data/maps/LittlerootTown/scripts.pory"
	end
# 303 "data/maps/LittlerootTown/scripts.pory"

# 304 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoodLuck::
# 305 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_GoodLuckCatchingPokemon, MSGBOX_DEFAULT
# 306 "data/maps/LittlerootTown/scripts.pory"
	release
# 307 "data/maps/LittlerootTown/scripts.pory"
	end
# 308 "data/maps/LittlerootTown/scripts.pory"

# 309 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_NeedPokemonTriggerLeft::
# 310 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 311 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinApproachPlayerLeft
# 312 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 313 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_DangerousWithoutPokemon
# 314 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinReturnLeft
# 315 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 316 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 317 "data/maps/LittlerootTown/scripts.pory"
	end
# 318 "data/maps/LittlerootTown/scripts.pory"

# 319 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_DangerousWithoutPokemon::
# 320 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut, MSGBOX_DEFAULT
# 321 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 322 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinPushPlayerFromRoute
# 323 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PushPlayerBackFromRoute
# 324 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 325 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_DangerousIfYouDontHavePokemon, MSGBOX_DEFAULT
# 326 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 327 "data/maps/LittlerootTown/scripts.pory"
	return
# 328 "data/maps/LittlerootTown/scripts.pory"

# 329 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinApproachPlayerLeft:
# 330 "data/maps/LittlerootTown/scripts.pory"
	face_right
# 331 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 332 "data/maps/LittlerootTown/scripts.pory"
	disable_jump_landing_ground_effect
# 333 "data/maps/LittlerootTown/scripts.pory"
	jump_in_place_right
# 334 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 335 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 336 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 337 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 338 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 339 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 340 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 341 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_left
# 342 "data/maps/LittlerootTown/scripts.pory"
	face_down
# 343 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 344 "data/maps/LittlerootTown/scripts.pory"

# 345 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinPushPlayerFromRoute:
# 346 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 347 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 348 "data/maps/LittlerootTown/scripts.pory"

# 349 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinReturnLeft:
# 350 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 351 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 352 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 353 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 354 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 355 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 356 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 357 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 358 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_down
# 359 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 360 "data/maps/LittlerootTown/scripts.pory"

# 361 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PushPlayerBackFromRoute:
# 362 "data/maps/LittlerootTown/scripts.pory"
	lock_facing_direction
# 363 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 364 "data/maps/LittlerootTown/scripts.pory"
	unlock_facing_direction
# 365 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 366 "data/maps/LittlerootTown/scripts.pory"

# 367 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_NeedPokemonTriggerRight::
# 368 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 369 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinApproachPlayerRight
# 370 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 371 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_DangerousWithoutPokemon
# 372 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinReturnRight
# 373 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 374 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 375 "data/maps/LittlerootTown/scripts.pory"
	end
# 376 "data/maps/LittlerootTown/scripts.pory"

# 377 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinApproachPlayerRight:
# 378 "data/maps/LittlerootTown/scripts.pory"
	face_right
# 379 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 380 "data/maps/LittlerootTown/scripts.pory"
	disable_jump_landing_ground_effect
# 381 "data/maps/LittlerootTown/scripts.pory"
	jump_in_place_right
# 382 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 383 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 384 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 385 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 386 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 387 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 388 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 389 "data/maps/LittlerootTown/scripts.pory"
	face_down
# 390 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 391 "data/maps/LittlerootTown/scripts.pory"

# 392 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinReturnRight:
# 393 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 394 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 395 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 396 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 397 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 398 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_down
# 399 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 400 "data/maps/LittlerootTown/scripts.pory"

# 401 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoSaveBirchTrigger::
# 402 "data/maps/LittlerootTown/scripts.pory"
	//lockall//
# 403 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_WalkInPlaceFasterRight
# 404 "data/maps/LittlerootTown/scripts.pory"
	//waitmovement 0
# 405 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 406 "data/maps/LittlerootTown/scripts.pory"
	//waitmovement 0
# 407 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 408 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanYouGoSeeWhatsHappening, MSGBOX_DEFAULT
# 409 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 410 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_FaceOriginalDirection
# 411 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 412 "data/maps/LittlerootTown/scripts.pory"
	//setvar VAR_LITTLEROOT_TOWN_STATE, 2
# 413 "data/maps/LittlerootTown/scripts.pory"
	//releaseall
# 414 "data/maps/LittlerootTown/scripts.pory"
	end
# 415 "data/maps/LittlerootTown/scripts.pory"

# 416 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_TownSign::
# 417 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_TownSign, MSGBOX_SIGN
# 418 "data/maps/LittlerootTown/scripts.pory"
	end
# 419 "data/maps/LittlerootTown/scripts.pory"

# 420 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsLabSign::
# 421 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsLab, MSGBOX_SIGN
# 422 "data/maps/LittlerootTown/scripts.pory"
	end
# 423 "data/maps/LittlerootTown/scripts.pory"

# 424 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BrendansHouseSign::
# 425 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 426 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 427 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_PlayersHouseSignMale
# 428 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_BirchsHouseSignFemale
# 429 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 430 "data/maps/LittlerootTown/scripts.pory"
	end
# 431 "data/maps/LittlerootTown/scripts.pory"

# 432 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_PlayersHouseSignMale::
# 433 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_PlayersHouse, MSGBOX_DEFAULT
# 434 "data/maps/LittlerootTown/scripts.pory"
	return
# 435 "data/maps/LittlerootTown/scripts.pory"

# 436 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsHouseSignFemale::
# 437 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsHouse, MSGBOX_DEFAULT
# 438 "data/maps/LittlerootTown/scripts.pory"
	return
# 439 "data/maps/LittlerootTown/scripts.pory"

# 440 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MaysHouseSign::
# 441 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 442 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 443 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_BirchsHouseSignMale
# 444 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_PlayersHouseSignFemale
# 445 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 446 "data/maps/LittlerootTown/scripts.pory"
	end
# 447 "data/maps/LittlerootTown/scripts.pory"

# 448 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsHouseSignMale::
# 449 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsHouse, MSGBOX_DEFAULT
# 450 "data/maps/LittlerootTown/scripts.pory"
	return
# 451 "data/maps/LittlerootTown/scripts.pory"

# 452 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_PlayersHouseSignFemale::
# 453 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_PlayersHouse, MSGBOX_DEFAULT
# 454 "data/maps/LittlerootTown/scripts.pory"
	return
# 455 "data/maps/LittlerootTown/scripts.pory"

# 456 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger0::
# 457 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 458 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 0
# 459 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_MOM, 10, 9
# 460 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 461 "data/maps/LittlerootTown/scripts.pory"
	end
# 462 "data/maps/LittlerootTown/scripts.pory"

# 463 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger1::
# 464 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 465 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 1
# 466 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_MOM, 11, 9
# 467 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 468 "data/maps/LittlerootTown/scripts.pory"
	end
# 469 "data/maps/LittlerootTown/scripts.pory"

# 470 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger2::
# 471 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 472 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 2
# 473 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 474 "data/maps/LittlerootTown/scripts.pory"
	end
# 475 "data/maps/LittlerootTown/scripts.pory"

# 476 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger3::
# 477 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 478 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 3
# 479 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 480 "data/maps/LittlerootTown/scripts.pory"
	end
# 481 "data/maps/LittlerootTown/scripts.pory"

# 482 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger4::
# 483 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 484 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 4
# 485 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 486 "data/maps/LittlerootTown/scripts.pory"
	end
# 487 "data/maps/LittlerootTown/scripts.pory"

# 488 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger5::
# 489 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 490 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 5
# 491 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 492 "data/maps/LittlerootTown/scripts.pory"
	end
# 493 "data/maps/LittlerootTown/scripts.pory"

# 494 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger::
# 495 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 496 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomNoticePlayerMale
# 497 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomNoticePlayerFemale
# 498 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 499 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetHomeDoorCoordsMale
# 500 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetHomeDoorCoordsFemale
# 501 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WaitPlayer, MSGBOX_DEFAULT
# 502 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 503 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 504 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomApproachPlayerMale
# 505 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomApproachPlayerFemale
# 506 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GiveRunningShoes
# 507 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 508 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomReturnHomeMale
# 509 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomReturnHomeFemale
# 510 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetReceivedRunningShoes
# 511 "data/maps/LittlerootTown/scripts.pory"
	end
# 512 "data/maps/LittlerootTown/scripts.pory"

# 513 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetHomeDoorCoordsMale::
# 514 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8009, 5
# 515 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x800A, 8
# 516 "data/maps/LittlerootTown/scripts.pory"
	return
# 517 "data/maps/LittlerootTown/scripts.pory"

# 518 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetHomeDoorCoordsFemale::
# 519 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8009, 14
# 520 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x800A, 8
# 521 "data/maps/LittlerootTown/scripts.pory"
	return
# 522 "data/maps/LittlerootTown/scripts.pory"

# 523 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomNoticePlayerMale::
# 524 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterRight
# 525 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 526 "data/maps/LittlerootTown/scripts.pory"
	return
# 527 "data/maps/LittlerootTown/scripts.pory"

# 528 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomNoticePlayerFemale::
# 529 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterLeft
# 530 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 531 "data/maps/LittlerootTown/scripts.pory"
	return
# 532 "data/maps/LittlerootTown/scripts.pory"

# 533 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale::
# 534 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomApproachPlayer0
# 535 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomApproachPlayer1
# 536 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomApproachPlayerMale2
# 537 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomApproachPlayerMale3
# 538 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomApproachPlayerMale4
# 539 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomApproachPlayerMale5
# 540 "data/maps/LittlerootTown/scripts.pory"
	return
# 541 "data/maps/LittlerootTown/scripts.pory"

# 542 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale::
# 543 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomApproachPlayer0
# 544 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomApproachPlayer1
# 545 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomApproachPlayerFemale2
# 546 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomApproachPlayerFemale3
# 547 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomApproachPlayerFemale4
# 548 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomApproachPlayerFemale5
# 549 "data/maps/LittlerootTown/scripts.pory"
	return
# 550 "data/maps/LittlerootTown/scripts.pory"

# 551 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayer0::
# 552 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 553 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 554 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayer0
# 555 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 556 "data/maps/LittlerootTown/scripts.pory"
	return
# 557 "data/maps/LittlerootTown/scripts.pory"

# 558 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayer1::
# 559 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 560 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 561 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayer1
# 562 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 563 "data/maps/LittlerootTown/scripts.pory"
	return
# 564 "data/maps/LittlerootTown/scripts.pory"

# 565 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale2::
# 566 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 567 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 568 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale2
# 569 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 570 "data/maps/LittlerootTown/scripts.pory"
	return
# 571 "data/maps/LittlerootTown/scripts.pory"

# 572 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale3::
# 573 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 574 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 575 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale3
# 576 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 577 "data/maps/LittlerootTown/scripts.pory"
	return
# 578 "data/maps/LittlerootTown/scripts.pory"

# 579 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale4::
# 580 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 581 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 582 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale4
# 583 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 584 "data/maps/LittlerootTown/scripts.pory"
	return
# 585 "data/maps/LittlerootTown/scripts.pory"

# 586 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale5::
# 587 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 588 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 589 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale5
# 590 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 591 "data/maps/LittlerootTown/scripts.pory"
	return
# 592 "data/maps/LittlerootTown/scripts.pory"

# 593 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale2::
# 594 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 595 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 596 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale2
# 597 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 598 "data/maps/LittlerootTown/scripts.pory"
	return
# 599 "data/maps/LittlerootTown/scripts.pory"

# 600 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale3::
# 601 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 602 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 603 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale3
# 604 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 605 "data/maps/LittlerootTown/scripts.pory"
	return
# 606 "data/maps/LittlerootTown/scripts.pory"

# 607 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale4::
# 608 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 609 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 610 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale4
# 611 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 612 "data/maps/LittlerootTown/scripts.pory"
	return
# 613 "data/maps/LittlerootTown/scripts.pory"

# 614 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale5::
# 615 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 616 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 617 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale5
# 618 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 619 "data/maps/LittlerootTown/scripts.pory"
	return
# 620 "data/maps/LittlerootTown/scripts.pory"

# 621 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale::
# 622 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomReturnHome0
# 623 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomReturnHome1
# 624 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomReturnHomeMale2
# 625 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomReturnHomeMale3
# 626 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomReturnHomeMale4
# 627 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomReturnHomeMale5
# 628 "data/maps/LittlerootTown/scripts.pory"
	return
# 629 "data/maps/LittlerootTown/scripts.pory"

# 630 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale::
# 631 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomReturnHome0
# 632 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomReturnHome1
# 633 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomReturnHomeFemale2
# 634 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomReturnHomeFemale3
# 635 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomReturnHomeFemale4
# 636 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomReturnHomeFemale5
# 637 "data/maps/LittlerootTown/scripts.pory"
	return
# 638 "data/maps/LittlerootTown/scripts.pory"

# 639 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHome0::
# 640 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHome0
# 641 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 642 "data/maps/LittlerootTown/scripts.pory"
	return
# 643 "data/maps/LittlerootTown/scripts.pory"

# 644 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHome1::
# 645 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHome1
# 646 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 647 "data/maps/LittlerootTown/scripts.pory"
	return
# 648 "data/maps/LittlerootTown/scripts.pory"

# 649 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale2::
# 650 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale2
# 651 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 652 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 653 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 654 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 655 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 656 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 657 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 658 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 659 "data/maps/LittlerootTown/scripts.pory"
	return
# 660 "data/maps/LittlerootTown/scripts.pory"

# 661 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale3::
# 662 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale3
# 663 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 664 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 665 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 666 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 667 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 668 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 669 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 670 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 671 "data/maps/LittlerootTown/scripts.pory"
	return
# 672 "data/maps/LittlerootTown/scripts.pory"

# 673 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale4::
# 674 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale4
# 675 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 676 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 677 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 678 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 679 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 680 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 681 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 682 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 683 "data/maps/LittlerootTown/scripts.pory"
	return
# 684 "data/maps/LittlerootTown/scripts.pory"

# 685 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale5::
# 686 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale5
# 687 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 688 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 689 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 690 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 691 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 692 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 693 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 694 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 695 "data/maps/LittlerootTown/scripts.pory"
	return
# 696 "data/maps/LittlerootTown/scripts.pory"

# 697 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale2::
# 698 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale2
# 699 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 700 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 701 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 702 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 703 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 704 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 705 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 706 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 707 "data/maps/LittlerootTown/scripts.pory"
	return
# 708 "data/maps/LittlerootTown/scripts.pory"

# 709 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale3::
# 710 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale3
# 711 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 712 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 713 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 714 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 715 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 716 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 717 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 718 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 719 "data/maps/LittlerootTown/scripts.pory"
	return
# 720 "data/maps/LittlerootTown/scripts.pory"

# 721 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale4::
# 722 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale4
# 723 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 724 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 725 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 726 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 727 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 728 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 729 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 730 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 731 "data/maps/LittlerootTown/scripts.pory"
	return
# 732 "data/maps/LittlerootTown/scripts.pory"

# 733 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale5::
# 734 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale5
# 735 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 736 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 737 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 738 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 739 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 740 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 741 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 742 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 743 "data/maps/LittlerootTown/scripts.pory"
	return
# 744 "data/maps/LittlerootTown/scripts.pory"

# 745 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayer0:
# 746 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 747 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 748 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 749 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 750 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 751 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 752 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 753 "data/maps/LittlerootTown/scripts.pory"

# 754 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayer1:
# 755 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 756 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 757 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 758 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 759 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 760 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 761 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 762 "data/maps/LittlerootTown/scripts.pory"

# 763 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale2:
# 764 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 765 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 766 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 767 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 768 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 769 "data/maps/LittlerootTown/scripts.pory"

# 770 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale3:
# 771 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 772 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 773 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 774 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 775 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 776 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 777 "data/maps/LittlerootTown/scripts.pory"

# 778 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale4:
# 779 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 780 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 781 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 782 "data/maps/LittlerootTown/scripts.pory"

# 783 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale5:
# 784 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 785 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 786 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 787 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 788 "data/maps/LittlerootTown/scripts.pory"

# 789 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale2:
# 790 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 791 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 792 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 793 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 794 "data/maps/LittlerootTown/scripts.pory"

# 795 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale3:
# 796 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 797 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 798 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 799 "data/maps/LittlerootTown/scripts.pory"

# 800 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale4:
# 801 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 802 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 803 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 804 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 805 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 806 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 807 "data/maps/LittlerootTown/scripts.pory"

# 808 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale5:
# 809 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 810 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 811 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 812 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 813 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 814 "data/maps/LittlerootTown/scripts.pory"

# 815 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHome0:
# 816 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 817 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 818 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 819 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 820 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 821 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 822 "data/maps/LittlerootTown/scripts.pory"

# 823 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHome1:
# 824 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 825 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 826 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 827 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 828 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 829 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 830 "data/maps/LittlerootTown/scripts.pory"

# 831 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale2:
# 832 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 833 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 834 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 835 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 836 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 837 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 838 "data/maps/LittlerootTown/scripts.pory"

# 839 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale3:
# 840 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 841 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 842 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 843 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 844 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 845 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 846 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 847 "data/maps/LittlerootTown/scripts.pory"

# 848 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale4:
# 849 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 850 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 851 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 852 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 853 "data/maps/LittlerootTown/scripts.pory"

# 854 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale5:
# 855 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 856 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 857 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 858 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 859 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 860 "data/maps/LittlerootTown/scripts.pory"

# 861 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale2:
# 862 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 863 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 864 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 865 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 866 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 867 "data/maps/LittlerootTown/scripts.pory"

# 868 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale3:
# 869 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 870 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 871 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 872 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 873 "data/maps/LittlerootTown/scripts.pory"

# 874 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale4:
# 875 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 876 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 877 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 878 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 879 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 880 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 881 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 882 "data/maps/LittlerootTown/scripts.pory"

# 883 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale5:
# 884 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 885 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 886 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 887 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 888 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 889 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 890 "data/maps/LittlerootTown/scripts.pory"

# 891 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomExitThroughDoor:
# 892 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 893 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 894 "data/maps/LittlerootTown/scripts.pory"

# 895 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Mom::
# 896 "data/maps/LittlerootTown/scripts.pory"
	lock
# 897 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 898 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 899 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetHomeDoorCoordsMale
# 900 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetHomeDoorCoordsFemale
# 901 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GiveRunningShoes
# 902 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterUp
# 903 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 904 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 905 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 906 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 907 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 908 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 909 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 910 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 911 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetReceivedRunningShoes
# 912 "data/maps/LittlerootTown/scripts.pory"
	end
# 913 "data/maps/LittlerootTown/scripts.pory"

# 914 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetReceivedRunningShoes::
# 915 "data/maps/LittlerootTown/scripts.pory"
	removeobject LOCALID_LITTLEROOT_MOM
# 916 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 917 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 918 "data/maps/LittlerootTown/scripts.pory"
	release
# 919 "data/maps/LittlerootTown/scripts.pory"
	end
# 920 "data/maps/LittlerootTown/scripts.pory"

# 921 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoes::
# 922 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WearTheseRunningShoes, MSGBOX_DEFAULT
# 923 "data/maps/LittlerootTown/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 924 "data/maps/LittlerootTown/scripts.pory"
	message LittlerootTown_Text_SwitchShoesWithRunningShoes
# 925 "data/maps/LittlerootTown/scripts.pory"
	waitfanfare
# 926 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 927 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ExplainRunningShoes, MSGBOX_DEFAULT
# 928 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ComeHomeIfAnythingHappens, MSGBOX_DEFAULT
# 929 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 930 "data/maps/LittlerootTown/scripts.pory"
	delay 30
# 931 "data/maps/LittlerootTown/scripts.pory"
	return
# 932 "data/maps/LittlerootTown/scripts.pory"

# 933 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideResearchAssistant::
# 934 "data/maps/LittlerootTown/scripts.pory"
    setflag FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT
# 935 "data/maps/LittlerootTown/scripts.pory"
    return
# 936 "data/maps/LittlerootTown/scripts.pory"

# 937 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_ResearchAssistant::
# 938 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ResearchAssistant, MSGBOX_NPC
# 939 "data/maps/LittlerootTown/scripts.pory"
	end
# 940 "data/maps/LittlerootTown/scripts.pory"

# 941 "data/maps/LittlerootTown/scripts.pory"
////////////////////////////// 
# 942 "data/maps/LittlerootTown/scripts.pory"

# 943 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_OurNewHomeLetsGoInside:
# 944 "data/maps/LittlerootTown/scripts.pory"
	.string "MOM: {PLAYER}, we're here, honey!\p"
# 945 "data/maps/LittlerootTown/scripts.pory"
	.string "It must be tiring riding with our things\n"
# 946 "data/maps/LittlerootTown/scripts.pory"
	.string "in the moving truck.\p"
# 947 "data/maps/LittlerootTown/scripts.pory"
	.string "Well, this is LITTLEROOT TOWN.\p"
# 948 "data/maps/LittlerootTown/scripts.pory"
	.string "How do you like it?\n"
# 949 "data/maps/LittlerootTown/scripts.pory"
	.string "This is our new home!\p"
# 950 "data/maps/LittlerootTown/scripts.pory"
	.string "It has a quaint feel, but it seems to be\n"
# 951 "data/maps/LittlerootTown/scripts.pory"
	.string "an easy place to live, don't you think?\p"
# 952 "data/maps/LittlerootTown/scripts.pory"
	.string "And, you get your own room, {PLAYER}!\n"
# 953 "data/maps/LittlerootTown/scripts.pory"
	.string "Let's go inside.$"
# 954 "data/maps/LittlerootTown/scripts.pory"

# 955 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WaitPlayer:
# 956 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: Wait, {PLAYER}!$"
# 957 "data/maps/LittlerootTown/scripts.pory"

# 958 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WearTheseRunningShoes:
# 959 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: {PLAYER}! {PLAYER}! Did you\n"
# 960 "data/maps/LittlerootTown/scripts.pory"
	.string "introduce yourself to PROF. ACACIA?\p"
# 961 "data/maps/LittlerootTown/scripts.pory"
	.string "Oh! What an adorable POKéMON!\n"
# 962 "data/maps/LittlerootTown/scripts.pory"
	.string "You got it from PROF. ACACIA. How nice!\p"
# 963 "data/maps/LittlerootTown/scripts.pory"
	.string "You're your father's child, all right.\n"
# 964 "data/maps/LittlerootTown/scripts.pory"
	.string "You look good together with POKéMON!\p"
# 965 "data/maps/LittlerootTown/scripts.pory"
	.string "Here, honey! If you're going out on an\n"
# 966 "data/maps/LittlerootTown/scripts.pory"
	.string "adventure, wear these RUNNING SHOES.\p"
# 967 "data/maps/LittlerootTown/scripts.pory"
	.string "They'll put a zip in your step!$"
# 968 "data/maps/LittlerootTown/scripts.pory"

# 969 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_SwitchShoesWithRunningShoes:
# 970 "data/maps/LittlerootTown/scripts.pory"
	.string "{PLAYER} switched shoes with the\n"
# 971 "data/maps/LittlerootTown/scripts.pory"
	.string "RUNNING SHOES.$"
# 972 "data/maps/LittlerootTown/scripts.pory"

# 973 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ExplainRunningShoes:
# 974 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: {PLAYER}, those shoes came with\n"
# 975 "data/maps/LittlerootTown/scripts.pory"
	.string "instructions.\p"
# 976 "data/maps/LittlerootTown/scripts.pory"
	.string "“Press the B Button while wearing these\n"
# 977 "data/maps/LittlerootTown/scripts.pory"
	.string "RUNNING SHOES to run extra-fast!\p"
# 978 "data/maps/LittlerootTown/scripts.pory"
	.string "“Slip on these RUNNING SHOES and race\n"
# 979 "data/maps/LittlerootTown/scripts.pory"
	.string "in the great outdoors!”$"
# 980 "data/maps/LittlerootTown/scripts.pory"

# 981 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ComeHomeIfAnythingHappens:
# 982 "data/maps/LittlerootTown/scripts.pory"
	.string "… … … … … … … …\n"
# 983 "data/maps/LittlerootTown/scripts.pory"
	.string "… … … … … … … …\p"
# 984 "data/maps/LittlerootTown/scripts.pory"
	.string "To think that you have your very own\n"
# 985 "data/maps/LittlerootTown/scripts.pory"
	.string "POKéMON now…\l"
# 986 "data/maps/LittlerootTown/scripts.pory"
	.string "Your father will be overjoyed.\p"
# 987 "data/maps/LittlerootTown/scripts.pory"
	.string "…But please be careful.\n"
# 988 "data/maps/LittlerootTown/scripts.pory"
	.string "If anything happens, you can come home.\p"
# 989 "data/maps/LittlerootTown/scripts.pory"
	.string "Go on, go get them, honey!$"
# 990 "data/maps/LittlerootTown/scripts.pory"

# 991 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_CanUsePCToStoreItems:
# 992 "data/maps/LittlerootTown/scripts.pory"
	.string "Whoa, what's with that outfit?\n"
# 993 "data/maps/LittlerootTown/scripts.pory"
	.string "Is it Halloween already?\p"
# 994 "data/maps/LittlerootTown/scripts.pory"
	.string "You look like you stepped out of\n"
# 995 "data/maps/LittlerootTown/scripts.pory"
	.string "a book or something! Hahaha!$"
# 996 "data/maps/LittlerootTown/scripts.pory"

# 997 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_BirchSpendsDaysInLab:
# 998 "data/maps/LittlerootTown/scripts.pory"
	.string "I saw a really weird meteor streak\n"
# 999 "data/maps/LittlerootTown/scripts.pory"
	.string "across the sky last night.\p"
# 1000 "data/maps/LittlerootTown/scripts.pory"
	.string "It turned the whole sky dark for a\n"
# 1001 "data/maps/LittlerootTown/scripts.pory"
	.string "moment…\p"
# 1002 "data/maps/LittlerootTown/scripts.pory"
	.string "People say it only appears once every\n"
# 1003 "data/maps/LittlerootTown/scripts.pory"
	.string "thousand years.\p"
# 1004 "data/maps/LittlerootTown/scripts.pory"
	.string "Gave me chills just thinking about it.$"
# 1005 "data/maps/LittlerootTown/scripts.pory"

# 1006 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WantPKM:
# 1007 "data/maps/LittlerootTown/scripts.pory"
	.string "My dream is to have my very own\n"
# 1008 "data/maps/LittlerootTown/scripts.pory"
	.string "POKéMON…\p"
# 1009 "data/maps/LittlerootTown/scripts.pory"
	.string "When that comet passed through\n"
# 1010 "data/maps/LittlerootTown/scripts.pory"
	.string "the sky that night...\l"
# 1011 "data/maps/LittlerootTown/scripts.pory"
	.string "I made a wish!\p"
# 1012 "data/maps/LittlerootTown/scripts.pory"
	.string "Maybe someday PROFESSOR ACACIA\n"
# 1013 "data/maps/LittlerootTown/scripts.pory"
	.string "will make my dream come true and\l"
# 1014 "data/maps/LittlerootTown/scripts.pory"
	.string "give me a POKéMON to start my journey!$"
# 1015 "data/maps/LittlerootTown/scripts.pory"

# 1016 "data/maps/LittlerootTown/scripts.pory"

# 1017 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut:
# 1018 "data/maps/LittlerootTown/scripts.pory"
	.string "Um, um, um!\p"
# 1019 "data/maps/LittlerootTown/scripts.pory"
	.string "If you go outside and go in the grass,\n"
# 1020 "data/maps/LittlerootTown/scripts.pory"
	.string "wild POKéMON will jump out!$"
# 1021 "data/maps/LittlerootTown/scripts.pory"

# 1022 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_DangerousIfYouDontHavePokemon:
# 1023 "data/maps/LittlerootTown/scripts.pory"
	.string "It's dangerous if you don't have\n"
# 1024 "data/maps/LittlerootTown/scripts.pory"
	.string "your own POKéMON.$"
# 1025 "data/maps/LittlerootTown/scripts.pory"

# 1026 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_CanYouGoSeeWhatsHappening:
# 1027 "data/maps/LittlerootTown/scripts.pory"
	.string "Um, hi!\p"
# 1028 "data/maps/LittlerootTown/scripts.pory"
	.string "There are scary POKéMON outside!\n"
# 1029 "data/maps/LittlerootTown/scripts.pory"
	.string "I can hear their cries!\p"
# 1030 "data/maps/LittlerootTown/scripts.pory"
	.string "I want to go see what's going on,\n"
# 1031 "data/maps/LittlerootTown/scripts.pory"
	.string "but I don't have any POKéMON…\p"
# 1032 "data/maps/LittlerootTown/scripts.pory"
	.string "Can you go see what's happening\n"
# 1033 "data/maps/LittlerootTown/scripts.pory"
	.string "for me?$"
# 1034 "data/maps/LittlerootTown/scripts.pory"

# 1035 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_YouSavedBirch:
# 1036 "data/maps/LittlerootTown/scripts.pory"
	.string "You saved PROF. ACACIA!\n"
# 1037 "data/maps/LittlerootTown/scripts.pory"
	.string "I'm so glad!$"
# 1038 "data/maps/LittlerootTown/scripts.pory"

# 1039 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_GoodLuckCatchingPokemon:
# 1040 "data/maps/LittlerootTown/scripts.pory"
	.string "Are you going to catch POKéMON?\n"
# 1041 "data/maps/LittlerootTown/scripts.pory"
	.string "Good luck!$"
# 1042 "data/maps/LittlerootTown/scripts.pory"

# 1043 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_TownSign:
# 1044 "data/maps/LittlerootTown/scripts.pory"
	.string "LITTLEROOT TOWN\n"
# 1045 "data/maps/LittlerootTown/scripts.pory"
	.string "“A town that can't be shaded any hue.”$"
# 1046 "data/maps/LittlerootTown/scripts.pory"

# 1047 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ProfBirchsLab:
# 1048 "data/maps/LittlerootTown/scripts.pory"
	.string "PROF. ACACIA'S POKéMON LAB$"
# 1049 "data/maps/LittlerootTown/scripts.pory"

# 1050 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_PlayersHouse:
# 1051 "data/maps/LittlerootTown/scripts.pory"
	.string "{PLAYER}'s HOUSE$"
# 1052 "data/maps/LittlerootTown/scripts.pory"

# 1053 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ProfBirchsHouse:
# 1054 "data/maps/LittlerootTown/scripts.pory"
	.string "{RIVAL}'s HOUSE$"
# 1055 "data/maps/LittlerootTown/scripts.pory"

# 1056 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_BirchSomethingToShowYouAtLab:
# 1057 "data/maps/LittlerootTown/scripts.pory"
	.string "PROF. ACACIA: Well, well, {PLAYER}{KUN}!\n"
# 1058 "data/maps/LittlerootTown/scripts.pory"
	.string "That was good work out there!\p"
# 1059 "data/maps/LittlerootTown/scripts.pory"
	.string "I knew there was something special\n"
# 1060 "data/maps/LittlerootTown/scripts.pory"
	.string "about you when I first saw you,\l"
# 1061 "data/maps/LittlerootTown/scripts.pory"
	.string "but I never expected this.\p"
# 1062 "data/maps/LittlerootTown/scripts.pory"
	.string "Oh, yes. Do you still have the POKéDEX\n"
# 1063 "data/maps/LittlerootTown/scripts.pory"
	.string "I gave you?\p"
# 1064 "data/maps/LittlerootTown/scripts.pory"
	.string "I have something to show you.\n"
# 1065 "data/maps/LittlerootTown/scripts.pory"
	.string "Let's go to my LAB.$"
# 1066 "data/maps/LittlerootTown/scripts.pory"

# 1067 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ResearchAssistant:
# 1068 "data/maps/LittlerootTown/scripts.pory"
	.string "I'm one of PROF. ACACIA's research\n"
# 1069 "data/maps/LittlerootTown/scripts.pory"
	.string "assistants.\p"
# 1070 "data/maps/LittlerootTown/scripts.pory"
	.string "The PROFESSOR is always out in the\n"
# 1071 "data/maps/LittlerootTown/scripts.pory"
	.string "field studying POKéMON habitats.$"
