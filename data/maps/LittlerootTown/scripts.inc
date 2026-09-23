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
	callnative StartElectricWiresGame
# 57 "data/maps/LittlerootTown/scripts.pory"
	waitstate
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
	fadescreen FADE_TO_BLACK
# 65 "data/maps/LittlerootTown/scripts.pory"
	special StartElectricWiresGame
# 66 "data/maps/LittlerootTown/scripts.pory"
	callnative HLW_StartGrandmaBookTest
# 67 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 68 "data/maps/LittlerootTown/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 69 "data/maps/LittlerootTown/scripts.pory"
	release
# 70 "data/maps/LittlerootTown/scripts.pory"
	end
# 71 "data/maps/LittlerootTown/scripts.pory"

# 72 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_LeftLabAfterDexUpgrade::
# 73 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 3
# 74 "data/maps/LittlerootTown/scripts.pory"
	return
# 75 "data/maps/LittlerootTown/scripts.pory"

# 76 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideMomForRunningShoes:: @ no need to show mon to give running shoes 
# 77 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 78 "data/maps/LittlerootTown/scripts.pory"
	return
# 79 "data/maps/LittlerootTown/scripts.pory"

# 80 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideMapNamePopup::
# 81 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 82 "data/maps/LittlerootTown/scripts.pory"
	return
# 83 "data/maps/LittlerootTown/scripts.pory"

# 84 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalLeftForRoute103::
# 85 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_RIVAL_LEFT_FOR_ROUTE103
# 86 "data/maps/LittlerootTown/scripts.pory"
	return
# 87 "data/maps/LittlerootTown/scripts.pory"

# 88 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MoveRivalFromOldale::
# 89 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 2
# 90 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 91 "data/maps/LittlerootTown/scripts.pory"
	return
# 92 "data/maps/LittlerootTown/scripts.pory"

# 93 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent::
# 94 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 5
# 95 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 5
# 96 "data/maps/LittlerootTown/scripts.pory"
	return
# 97 "data/maps/LittlerootTown/scripts.pory"

# 98 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MoveMomToMaysDoor::
# 99 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 14, 8
# 100 "data/maps/LittlerootTown/scripts.pory"
	return
# 101 "data/maps/LittlerootTown/scripts.pory"

# 102 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetTwinPos::
# 103 "data/maps/LittlerootTown/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_TOWN_STATE, 0, LittlerootTown_EventScript_SetTwinGuardingRoutePos
# 104 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_TWIN, 10, 1
# 105 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_TWIN, MOVEMENT_TYPE_FACE_UP
# 106 "data/maps/LittlerootTown/scripts.pory"
	return
# 107 "data/maps/LittlerootTown/scripts.pory"

# 108 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetTwinGuardingRoutePos::
# 109 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_TWIN, 7, 2
# 110 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_TWIN, MOVEMENT_TYPE_FACE_DOWN
# 111 "data/maps/LittlerootTown/scripts.pory"
	return
# 112 "data/maps/LittlerootTown/scripts.pory"

# 113 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos::
# 114 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 115 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_MOM, MOVEMENT_TYPE_FACE_DOWN
# 116 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 117 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetMomInFrontOfDoorMale
# 118 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetMomInFrontOfDoorFemale
# 119 "data/maps/LittlerootTown/scripts.pory"
	return
# 120 "data/maps/LittlerootTown/scripts.pory"

# 121 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomInFrontOfDoorMale::
# 122 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 5, 9
# 123 "data/maps/LittlerootTown/scripts.pory"
	return
# 124 "data/maps/LittlerootTown/scripts.pory"

# 125 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomInFrontOfDoorFemale::
# 126 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 14, 9
# 127 "data/maps/LittlerootTown/scripts.pory"
	return
# 128 "data/maps/LittlerootTown/scripts.pory"

# 129 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnFrame:
# 130 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 1, LittlerootTown_EventScript_StepOffTruckMale
# 131 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_StepOffTruckFemale
# 132 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_BeginDexUpgradeScene
# 133 "data/maps/LittlerootTown/scripts.pory"
	.2byte 0
# 134 "data/maps/LittlerootTown/scripts.pory"

# 135 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_StepOffTruckMale::
# 136 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 137 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8004, 5
# 138 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8005, 8
# 139 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GoInsideWithMom
# 140 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 141 "data/maps/LittlerootTown/scripts.pory"
	warpsilent MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_1F, 8, 8
# 142 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 143 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 144 "data/maps/LittlerootTown/scripts.pory"
	end
# 145 "data/maps/LittlerootTown/scripts.pory"

# 146 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_StepOffTruckFemale::
# 147 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 148 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8004, 14
# 149 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8005, 8
# 150 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GoInsideWithMom
# 151 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 152 "data/maps/LittlerootTown/scripts.pory"
	warpsilent MAP_LITTLEROOT_TOWN_MAYS_HOUSE_1F, 2, 8
# 153 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 154 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 155 "data/maps/LittlerootTown/scripts.pory"
	end
# 156 "data/maps/LittlerootTown/scripts.pory"

# 157 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoInsideWithMom::
# 158 "data/maps/LittlerootTown/scripts.pory"
	delay 15
# 159 "data/maps/LittlerootTown/scripts.pory"
	playse SE_LEDGE
# 160 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerStepOffTruck
# 161 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 162 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 163 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 164 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_MOM
# 165 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitHouse
# 166 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 167 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 168 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 169 "data/maps/LittlerootTown/scripts.pory"
	delay 10
# 170 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerAtTruck
# 171 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 172 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_OurNewHomeLetsGoInside, MSGBOX_DEFAULT
# 173 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 174 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachDoor
# 175 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerApproachDoor
# 176 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 177 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 178 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 179 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomEnterHouse
# 180 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerEnterHouse
# 181 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 182 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 183 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 3
# 184 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_PLAYER, 0
# 185 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 186 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 187 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_FAT_MAN
# 188 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 189 "data/maps/LittlerootTown/scripts.pory"
	return
# 190 "data/maps/LittlerootTown/scripts.pory"

# 191 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomExitHouse:
# 192 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 193 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 194 "data/maps/LittlerootTown/scripts.pory"

# 195 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerAtTruck:
# 196 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 197 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_left
# 198 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 199 "data/maps/LittlerootTown/scripts.pory"

# 200 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachDoor:
# 201 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 202 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 203 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 204 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 205 "data/maps/LittlerootTown/scripts.pory"

# 206 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomEnterHouse:
# 207 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 208 "data/maps/LittlerootTown/scripts.pory"
	set_invisible
# 209 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 210 "data/maps/LittlerootTown/scripts.pory"

# 211 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerApproachDoor:
# 212 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 213 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 214 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 215 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 216 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 217 "data/maps/LittlerootTown/scripts.pory"

# 218 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerEnterHouse:
# 219 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 220 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 221 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 222 "data/maps/LittlerootTown/scripts.pory"

# 223 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerStepOffTruck:
# 224 "data/maps/LittlerootTown/scripts.pory"
	jump_right
# 225 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 226 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 227 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 228 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 229 "data/maps/LittlerootTown/scripts.pory"

# 230 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BeginDexUpgradeScene::
# 231 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 232 "data/maps/LittlerootTown/scripts.pory"
	playse SE_PIN
# 233 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_BIRCH, Common_Movement_ExclamationMark
# 234 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 235 "data/maps/LittlerootTown/scripts.pory"
	delay 80
# 236 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_BirchSomethingToShowYouAtLab, MSGBOX_DEFAULT
# 237 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 238 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_RIVAL
# 239 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCH
# 240 "data/maps/LittlerootTown/scripts.pory"
	delay 20
# 241 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 242 "data/maps/LittlerootTown/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB, 6, 5
# 243 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 244 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 245 "data/maps/LittlerootTown/scripts.pory"
	end
# 246 "data/maps/LittlerootTown/scripts.pory"

# 247 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnWarp:
# 248 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_SetRivalBirchPosForDexUpgrade
# 249 "data/maps/LittlerootTown/scripts.pory"
	.2byte 0
# 250 "data/maps/LittlerootTown/scripts.pory"

# 251 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgrade::
# 252 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_BIRCH
# 253 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_RIVAL
# 254 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 255 "data/maps/LittlerootTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeMale
# 256 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeFemale
# 257 "data/maps/LittlerootTown/scripts.pory"
	end
# 258 "data/maps/LittlerootTown/scripts.pory"

# 259 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeMale::
# 260 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_RIVAL, 6, 10
# 261 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_BIRCH, 5, 10
# 262 "data/maps/LittlerootTown/scripts.pory"
	end
# 263 "data/maps/LittlerootTown/scripts.pory"

# 264 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeFemale::
# 265 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_RIVAL, 13, 10
# 266 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_BIRCH, 14, 10
# 267 "data/maps/LittlerootTown/scripts.pory"
	end
# 268 "data/maps/LittlerootTown/scripts.pory"

# 269 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_FatMan::
# 270 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanUsePCToStoreItems, MSGBOX_NPC
# 271 "data/maps/LittlerootTown/scripts.pory"
	end
# 272 "data/maps/LittlerootTown/scripts.pory"

# 273 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Boy::
# 274 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_BirchSpendsDaysInLab, MSGBOX_NPC
# 275 "data/maps/LittlerootTown/scripts.pory"
	end
# 276 "data/maps/LittlerootTown/scripts.pory"

# 277 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_LittleBoy::
# 278 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WantPKM, MSGBOX_NPC
# 279 "data/maps/LittlerootTown/scripts.pory"
	end	
# 280 "data/maps/LittlerootTown/scripts.pory"

# 281 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Twin::
# 282 "data/maps/LittlerootTown/scripts.pory"
	lock
# 283 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 284 "data/maps/LittlerootTown/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, LittlerootTown_EventScript_GoodLuck
# 285 "data/maps/LittlerootTown/scripts.pory"
	goto_if_set FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_YouSavedBirch
# 286 "data/maps/LittlerootTown/scripts.pory"
	goto_if_ne VAR_LITTLEROOT_TOWN_STATE, 0, LittlerootTown_EventScript_GoSaveBirch
# 287 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut, MSGBOX_DEFAULT
# 288 "data/maps/LittlerootTown/scripts.pory"
	release
# 289 "data/maps/LittlerootTown/scripts.pory"
	end
# 290 "data/maps/LittlerootTown/scripts.pory"

# 291 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoSaveBirch::
# 292 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 293 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanYouGoSeeWhatsHappening, MSGBOX_DEFAULT
# 294 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 295 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_FaceOriginalDirection
# 296 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 297 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 2
# 298 "data/maps/LittlerootTown/scripts.pory"
	release
# 299 "data/maps/LittlerootTown/scripts.pory"
	end
# 300 "data/maps/LittlerootTown/scripts.pory"

# 301 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_YouSavedBirch::
# 302 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 303 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_YouSavedBirch, MSGBOX_DEFAULT
# 304 "data/maps/LittlerootTown/scripts.pory"
	release
# 305 "data/maps/LittlerootTown/scripts.pory"
	end
# 306 "data/maps/LittlerootTown/scripts.pory"

# 307 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoodLuck::
# 308 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_GoodLuckCatchingPokemon, MSGBOX_DEFAULT
# 309 "data/maps/LittlerootTown/scripts.pory"
	release
# 310 "data/maps/LittlerootTown/scripts.pory"
	end
# 311 "data/maps/LittlerootTown/scripts.pory"

# 312 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_NeedPokemonTriggerLeft::
# 313 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 314 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinApproachPlayerLeft
# 315 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 316 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_DangerousWithoutPokemon
# 317 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinReturnLeft
# 318 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 319 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 320 "data/maps/LittlerootTown/scripts.pory"
	end
# 321 "data/maps/LittlerootTown/scripts.pory"

# 322 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_DangerousWithoutPokemon::
# 323 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut, MSGBOX_DEFAULT
# 324 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 325 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinPushPlayerFromRoute
# 326 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PushPlayerBackFromRoute
# 327 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 328 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_DangerousIfYouDontHavePokemon, MSGBOX_DEFAULT
# 329 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 330 "data/maps/LittlerootTown/scripts.pory"
	return
# 331 "data/maps/LittlerootTown/scripts.pory"

# 332 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinApproachPlayerLeft:
# 333 "data/maps/LittlerootTown/scripts.pory"
	face_right
# 334 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 335 "data/maps/LittlerootTown/scripts.pory"
	disable_jump_landing_ground_effect
# 336 "data/maps/LittlerootTown/scripts.pory"
	jump_in_place_right
# 337 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 338 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 339 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 340 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 341 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 342 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 343 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 344 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_left
# 345 "data/maps/LittlerootTown/scripts.pory"
	face_down
# 346 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 347 "data/maps/LittlerootTown/scripts.pory"

# 348 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinPushPlayerFromRoute:
# 349 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 350 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 351 "data/maps/LittlerootTown/scripts.pory"

# 352 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinReturnLeft:
# 353 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 354 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 355 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 356 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 357 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 358 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 359 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 360 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 361 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_down
# 362 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 363 "data/maps/LittlerootTown/scripts.pory"

# 364 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PushPlayerBackFromRoute:
# 365 "data/maps/LittlerootTown/scripts.pory"
	lock_facing_direction
# 366 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 367 "data/maps/LittlerootTown/scripts.pory"
	unlock_facing_direction
# 368 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 369 "data/maps/LittlerootTown/scripts.pory"

# 370 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_NeedPokemonTriggerRight::
# 371 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 372 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinApproachPlayerRight
# 373 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 374 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_DangerousWithoutPokemon
# 375 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinReturnRight
# 376 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 377 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 378 "data/maps/LittlerootTown/scripts.pory"
	end
# 379 "data/maps/LittlerootTown/scripts.pory"

# 380 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinApproachPlayerRight:
# 381 "data/maps/LittlerootTown/scripts.pory"
	face_right
# 382 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 383 "data/maps/LittlerootTown/scripts.pory"
	disable_jump_landing_ground_effect
# 384 "data/maps/LittlerootTown/scripts.pory"
	jump_in_place_right
# 385 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 386 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 387 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 388 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 389 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 390 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 391 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 392 "data/maps/LittlerootTown/scripts.pory"
	face_down
# 393 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 394 "data/maps/LittlerootTown/scripts.pory"

# 395 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinReturnRight:
# 396 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 397 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 398 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 399 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 400 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 401 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_down
# 402 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 403 "data/maps/LittlerootTown/scripts.pory"

# 404 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoSaveBirchTrigger::
# 405 "data/maps/LittlerootTown/scripts.pory"
	//lockall//
# 406 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_WalkInPlaceFasterRight
# 407 "data/maps/LittlerootTown/scripts.pory"
	//waitmovement 0
# 408 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 409 "data/maps/LittlerootTown/scripts.pory"
	//waitmovement 0
# 410 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 411 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanYouGoSeeWhatsHappening, MSGBOX_DEFAULT
# 412 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 413 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_FaceOriginalDirection
# 414 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 415 "data/maps/LittlerootTown/scripts.pory"
	//setvar VAR_LITTLEROOT_TOWN_STATE, 2
# 416 "data/maps/LittlerootTown/scripts.pory"
	//releaseall
# 417 "data/maps/LittlerootTown/scripts.pory"
	end
# 418 "data/maps/LittlerootTown/scripts.pory"

# 419 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_TownSign::
# 420 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_TownSign, MSGBOX_SIGN
# 421 "data/maps/LittlerootTown/scripts.pory"
	end
# 422 "data/maps/LittlerootTown/scripts.pory"

# 423 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsLabSign::
# 424 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsLab, MSGBOX_SIGN
# 425 "data/maps/LittlerootTown/scripts.pory"
	end
# 426 "data/maps/LittlerootTown/scripts.pory"

# 427 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BrendansHouseSign::
# 428 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 429 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 430 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_PlayersHouseSignMale
# 431 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_BirchsHouseSignFemale
# 432 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 433 "data/maps/LittlerootTown/scripts.pory"
	end
# 434 "data/maps/LittlerootTown/scripts.pory"

# 435 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_PlayersHouseSignMale::
# 436 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_PlayersHouse, MSGBOX_DEFAULT
# 437 "data/maps/LittlerootTown/scripts.pory"
	return
# 438 "data/maps/LittlerootTown/scripts.pory"

# 439 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsHouseSignFemale::
# 440 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsHouse, MSGBOX_DEFAULT
# 441 "data/maps/LittlerootTown/scripts.pory"
	return
# 442 "data/maps/LittlerootTown/scripts.pory"

# 443 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MaysHouseSign::
# 444 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 445 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 446 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_BirchsHouseSignMale
# 447 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_PlayersHouseSignFemale
# 448 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 449 "data/maps/LittlerootTown/scripts.pory"
	end
# 450 "data/maps/LittlerootTown/scripts.pory"

# 451 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsHouseSignMale::
# 452 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsHouse, MSGBOX_DEFAULT
# 453 "data/maps/LittlerootTown/scripts.pory"
	return
# 454 "data/maps/LittlerootTown/scripts.pory"

# 455 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_PlayersHouseSignFemale::
# 456 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_PlayersHouse, MSGBOX_DEFAULT
# 457 "data/maps/LittlerootTown/scripts.pory"
	return
# 458 "data/maps/LittlerootTown/scripts.pory"

# 459 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger0::
# 460 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 461 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 0
# 462 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_MOM, 10, 9
# 463 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 464 "data/maps/LittlerootTown/scripts.pory"
	end
# 465 "data/maps/LittlerootTown/scripts.pory"

# 466 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger1::
# 467 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 468 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 1
# 469 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_MOM, 11, 9
# 470 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 471 "data/maps/LittlerootTown/scripts.pory"
	end
# 472 "data/maps/LittlerootTown/scripts.pory"

# 473 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger2::
# 474 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 475 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 2
# 476 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 477 "data/maps/LittlerootTown/scripts.pory"
	end
# 478 "data/maps/LittlerootTown/scripts.pory"

# 479 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger3::
# 480 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 481 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 3
# 482 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 483 "data/maps/LittlerootTown/scripts.pory"
	end
# 484 "data/maps/LittlerootTown/scripts.pory"

# 485 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger4::
# 486 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 487 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 4
# 488 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 489 "data/maps/LittlerootTown/scripts.pory"
	end
# 490 "data/maps/LittlerootTown/scripts.pory"

# 491 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger5::
# 492 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 493 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 5
# 494 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 495 "data/maps/LittlerootTown/scripts.pory"
	end
# 496 "data/maps/LittlerootTown/scripts.pory"

# 497 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger::
# 498 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 499 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomNoticePlayerMale
# 500 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomNoticePlayerFemale
# 501 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 502 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetHomeDoorCoordsMale
# 503 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetHomeDoorCoordsFemale
# 504 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WaitPlayer, MSGBOX_DEFAULT
# 505 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 506 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 507 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomApproachPlayerMale
# 508 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomApproachPlayerFemale
# 509 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GiveRunningShoes
# 510 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 511 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomReturnHomeMale
# 512 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomReturnHomeFemale
# 513 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetReceivedRunningShoes
# 514 "data/maps/LittlerootTown/scripts.pory"
	end
# 515 "data/maps/LittlerootTown/scripts.pory"

# 516 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetHomeDoorCoordsMale::
# 517 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8009, 5
# 518 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x800A, 8
# 519 "data/maps/LittlerootTown/scripts.pory"
	return
# 520 "data/maps/LittlerootTown/scripts.pory"

# 521 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetHomeDoorCoordsFemale::
# 522 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8009, 14
# 523 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x800A, 8
# 524 "data/maps/LittlerootTown/scripts.pory"
	return
# 525 "data/maps/LittlerootTown/scripts.pory"

# 526 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomNoticePlayerMale::
# 527 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterRight
# 528 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 529 "data/maps/LittlerootTown/scripts.pory"
	return
# 530 "data/maps/LittlerootTown/scripts.pory"

# 531 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomNoticePlayerFemale::
# 532 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterLeft
# 533 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 534 "data/maps/LittlerootTown/scripts.pory"
	return
# 535 "data/maps/LittlerootTown/scripts.pory"

# 536 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale::
# 537 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomApproachPlayer0
# 538 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomApproachPlayer1
# 539 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomApproachPlayerMale2
# 540 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomApproachPlayerMale3
# 541 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomApproachPlayerMale4
# 542 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomApproachPlayerMale5
# 543 "data/maps/LittlerootTown/scripts.pory"
	return
# 544 "data/maps/LittlerootTown/scripts.pory"

# 545 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale::
# 546 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomApproachPlayer0
# 547 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomApproachPlayer1
# 548 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomApproachPlayerFemale2
# 549 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomApproachPlayerFemale3
# 550 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomApproachPlayerFemale4
# 551 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomApproachPlayerFemale5
# 552 "data/maps/LittlerootTown/scripts.pory"
	return
# 553 "data/maps/LittlerootTown/scripts.pory"

# 554 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayer0::
# 555 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 556 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 557 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayer0
# 558 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 559 "data/maps/LittlerootTown/scripts.pory"
	return
# 560 "data/maps/LittlerootTown/scripts.pory"

# 561 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayer1::
# 562 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 563 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 564 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayer1
# 565 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 566 "data/maps/LittlerootTown/scripts.pory"
	return
# 567 "data/maps/LittlerootTown/scripts.pory"

# 568 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale2::
# 569 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 570 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 571 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale2
# 572 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 573 "data/maps/LittlerootTown/scripts.pory"
	return
# 574 "data/maps/LittlerootTown/scripts.pory"

# 575 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale3::
# 576 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 577 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 578 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale3
# 579 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 580 "data/maps/LittlerootTown/scripts.pory"
	return
# 581 "data/maps/LittlerootTown/scripts.pory"

# 582 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale4::
# 583 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 584 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 585 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale4
# 586 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 587 "data/maps/LittlerootTown/scripts.pory"
	return
# 588 "data/maps/LittlerootTown/scripts.pory"

# 589 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale5::
# 590 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 591 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 592 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale5
# 593 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 594 "data/maps/LittlerootTown/scripts.pory"
	return
# 595 "data/maps/LittlerootTown/scripts.pory"

# 596 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale2::
# 597 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 598 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 599 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale2
# 600 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 601 "data/maps/LittlerootTown/scripts.pory"
	return
# 602 "data/maps/LittlerootTown/scripts.pory"

# 603 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale3::
# 604 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 605 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 606 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale3
# 607 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 608 "data/maps/LittlerootTown/scripts.pory"
	return
# 609 "data/maps/LittlerootTown/scripts.pory"

# 610 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale4::
# 611 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 612 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 613 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale4
# 614 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 615 "data/maps/LittlerootTown/scripts.pory"
	return
# 616 "data/maps/LittlerootTown/scripts.pory"

# 617 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale5::
# 618 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 619 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 620 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale5
# 621 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 622 "data/maps/LittlerootTown/scripts.pory"
	return
# 623 "data/maps/LittlerootTown/scripts.pory"

# 624 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale::
# 625 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomReturnHome0
# 626 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomReturnHome1
# 627 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomReturnHomeMale2
# 628 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomReturnHomeMale3
# 629 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomReturnHomeMale4
# 630 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomReturnHomeMale5
# 631 "data/maps/LittlerootTown/scripts.pory"
	return
# 632 "data/maps/LittlerootTown/scripts.pory"

# 633 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale::
# 634 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomReturnHome0
# 635 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomReturnHome1
# 636 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomReturnHomeFemale2
# 637 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomReturnHomeFemale3
# 638 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomReturnHomeFemale4
# 639 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomReturnHomeFemale5
# 640 "data/maps/LittlerootTown/scripts.pory"
	return
# 641 "data/maps/LittlerootTown/scripts.pory"

# 642 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHome0::
# 643 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHome0
# 644 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 645 "data/maps/LittlerootTown/scripts.pory"
	return
# 646 "data/maps/LittlerootTown/scripts.pory"

# 647 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHome1::
# 648 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHome1
# 649 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 650 "data/maps/LittlerootTown/scripts.pory"
	return
# 651 "data/maps/LittlerootTown/scripts.pory"

# 652 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale2::
# 653 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale2
# 654 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 655 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 656 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 657 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 658 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 659 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 660 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 661 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 662 "data/maps/LittlerootTown/scripts.pory"
	return
# 663 "data/maps/LittlerootTown/scripts.pory"

# 664 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale3::
# 665 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale3
# 666 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 667 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 668 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 669 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 670 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 671 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 672 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 673 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 674 "data/maps/LittlerootTown/scripts.pory"
	return
# 675 "data/maps/LittlerootTown/scripts.pory"

# 676 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale4::
# 677 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale4
# 678 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 679 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 680 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 681 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 682 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 683 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 684 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 685 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 686 "data/maps/LittlerootTown/scripts.pory"
	return
# 687 "data/maps/LittlerootTown/scripts.pory"

# 688 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale5::
# 689 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale5
# 690 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 691 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 692 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 693 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 694 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 695 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 696 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 697 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 698 "data/maps/LittlerootTown/scripts.pory"
	return
# 699 "data/maps/LittlerootTown/scripts.pory"

# 700 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale2::
# 701 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale2
# 702 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 703 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 704 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 705 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 706 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 707 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 708 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 709 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 710 "data/maps/LittlerootTown/scripts.pory"
	return
# 711 "data/maps/LittlerootTown/scripts.pory"

# 712 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale3::
# 713 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale3
# 714 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 715 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 716 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 717 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 718 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 719 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 720 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 721 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 722 "data/maps/LittlerootTown/scripts.pory"
	return
# 723 "data/maps/LittlerootTown/scripts.pory"

# 724 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale4::
# 725 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale4
# 726 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 727 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 728 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 729 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 730 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 731 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 732 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 733 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 734 "data/maps/LittlerootTown/scripts.pory"
	return
# 735 "data/maps/LittlerootTown/scripts.pory"

# 736 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale5::
# 737 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale5
# 738 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 739 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 740 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 741 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 742 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 743 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 744 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 745 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 746 "data/maps/LittlerootTown/scripts.pory"
	return
# 747 "data/maps/LittlerootTown/scripts.pory"

# 748 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayer0:
# 749 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 750 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 751 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 752 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 753 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 754 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 755 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 756 "data/maps/LittlerootTown/scripts.pory"

# 757 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayer1:
# 758 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 759 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 760 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 761 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 762 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 763 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 764 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 765 "data/maps/LittlerootTown/scripts.pory"

# 766 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale2:
# 767 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 768 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 769 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 770 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 771 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 772 "data/maps/LittlerootTown/scripts.pory"

# 773 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale3:
# 774 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 775 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 776 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 777 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 778 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 779 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 780 "data/maps/LittlerootTown/scripts.pory"

# 781 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale4:
# 782 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 783 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 784 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 785 "data/maps/LittlerootTown/scripts.pory"

# 786 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale5:
# 787 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 788 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 789 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 790 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 791 "data/maps/LittlerootTown/scripts.pory"

# 792 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale2:
# 793 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 794 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 795 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 796 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 797 "data/maps/LittlerootTown/scripts.pory"

# 798 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale3:
# 799 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 800 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 801 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 802 "data/maps/LittlerootTown/scripts.pory"

# 803 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale4:
# 804 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 805 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 806 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 807 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 808 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 809 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 810 "data/maps/LittlerootTown/scripts.pory"

# 811 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale5:
# 812 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 813 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 814 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 815 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 816 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 817 "data/maps/LittlerootTown/scripts.pory"

# 818 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHome0:
# 819 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 820 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 821 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 822 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 823 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 824 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 825 "data/maps/LittlerootTown/scripts.pory"

# 826 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHome1:
# 827 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 828 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 829 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 830 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 831 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 832 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 833 "data/maps/LittlerootTown/scripts.pory"

# 834 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale2:
# 835 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 836 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 837 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 838 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 839 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 840 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 841 "data/maps/LittlerootTown/scripts.pory"

# 842 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale3:
# 843 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 844 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 845 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 846 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 847 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 848 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 849 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 850 "data/maps/LittlerootTown/scripts.pory"

# 851 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale4:
# 852 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 853 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 854 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 855 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 856 "data/maps/LittlerootTown/scripts.pory"

# 857 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale5:
# 858 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 859 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 860 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 861 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 862 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 863 "data/maps/LittlerootTown/scripts.pory"

# 864 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale2:
# 865 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 866 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 867 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 868 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 869 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 870 "data/maps/LittlerootTown/scripts.pory"

# 871 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale3:
# 872 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 873 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 874 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 875 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 876 "data/maps/LittlerootTown/scripts.pory"

# 877 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale4:
# 878 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 879 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 880 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 881 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 882 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 883 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 884 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 885 "data/maps/LittlerootTown/scripts.pory"

# 886 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale5:
# 887 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 888 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 889 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 890 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 891 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 892 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 893 "data/maps/LittlerootTown/scripts.pory"

# 894 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomExitThroughDoor:
# 895 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 896 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 897 "data/maps/LittlerootTown/scripts.pory"

# 898 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Mom::
# 899 "data/maps/LittlerootTown/scripts.pory"
	lock
# 900 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 901 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 902 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetHomeDoorCoordsMale
# 903 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetHomeDoorCoordsFemale
# 904 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GiveRunningShoes
# 905 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterUp
# 906 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 907 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 908 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 909 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 910 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 911 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 912 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 913 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 914 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetReceivedRunningShoes
# 915 "data/maps/LittlerootTown/scripts.pory"
	end
# 916 "data/maps/LittlerootTown/scripts.pory"

# 917 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetReceivedRunningShoes::
# 918 "data/maps/LittlerootTown/scripts.pory"
	removeobject LOCALID_LITTLEROOT_MOM
# 919 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 920 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 921 "data/maps/LittlerootTown/scripts.pory"
	release
# 922 "data/maps/LittlerootTown/scripts.pory"
	end
# 923 "data/maps/LittlerootTown/scripts.pory"

# 924 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoes::
# 925 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WearTheseRunningShoes, MSGBOX_DEFAULT
# 926 "data/maps/LittlerootTown/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 927 "data/maps/LittlerootTown/scripts.pory"
	message LittlerootTown_Text_SwitchShoesWithRunningShoes
# 928 "data/maps/LittlerootTown/scripts.pory"
	waitfanfare
# 929 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 930 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ExplainRunningShoes, MSGBOX_DEFAULT
# 931 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ComeHomeIfAnythingHappens, MSGBOX_DEFAULT
# 932 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 933 "data/maps/LittlerootTown/scripts.pory"
	delay 30
# 934 "data/maps/LittlerootTown/scripts.pory"
	return
# 935 "data/maps/LittlerootTown/scripts.pory"

# 936 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideResearchAssistant::
# 937 "data/maps/LittlerootTown/scripts.pory"
    setflag FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT
# 938 "data/maps/LittlerootTown/scripts.pory"
    return
# 939 "data/maps/LittlerootTown/scripts.pory"

# 940 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_ResearchAssistant::
# 941 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ResearchAssistant, MSGBOX_NPC
# 942 "data/maps/LittlerootTown/scripts.pory"
	end
# 943 "data/maps/LittlerootTown/scripts.pory"

# 944 "data/maps/LittlerootTown/scripts.pory"
////////////////////////////// 
# 945 "data/maps/LittlerootTown/scripts.pory"

# 946 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_OurNewHomeLetsGoInside:
# 947 "data/maps/LittlerootTown/scripts.pory"
	.string "MOM: {PLAYER}, we're here, honey!\p"
# 948 "data/maps/LittlerootTown/scripts.pory"
	.string "It must be tiring riding with our things\n"
# 949 "data/maps/LittlerootTown/scripts.pory"
	.string "in the moving truck.\p"
# 950 "data/maps/LittlerootTown/scripts.pory"
	.string "Well, this is LITTLEROOT TOWN.\p"
# 951 "data/maps/LittlerootTown/scripts.pory"
	.string "How do you like it?\n"
# 952 "data/maps/LittlerootTown/scripts.pory"
	.string "This is our new home!\p"
# 953 "data/maps/LittlerootTown/scripts.pory"
	.string "It has a quaint feel, but it seems to be\n"
# 954 "data/maps/LittlerootTown/scripts.pory"
	.string "an easy place to live, don't you think?\p"
# 955 "data/maps/LittlerootTown/scripts.pory"
	.string "And, you get your own room, {PLAYER}!\n"
# 956 "data/maps/LittlerootTown/scripts.pory"
	.string "Let's go inside.$"
# 957 "data/maps/LittlerootTown/scripts.pory"

# 958 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WaitPlayer:
# 959 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: Wait, {PLAYER}!$"
# 960 "data/maps/LittlerootTown/scripts.pory"

# 961 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WearTheseRunningShoes:
# 962 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: {PLAYER}! {PLAYER}! Did you\n"
# 963 "data/maps/LittlerootTown/scripts.pory"
	.string "introduce yourself to PROF. ACACIA?\p"
# 964 "data/maps/LittlerootTown/scripts.pory"
	.string "Oh! What an adorable POKéMON!\n"
# 965 "data/maps/LittlerootTown/scripts.pory"
	.string "You got it from PROF. ACACIA. How nice!\p"
# 966 "data/maps/LittlerootTown/scripts.pory"
	.string "You're your father's child, all right.\n"
# 967 "data/maps/LittlerootTown/scripts.pory"
	.string "You look good together with POKéMON!\p"
# 968 "data/maps/LittlerootTown/scripts.pory"
	.string "Here, honey! If you're going out on an\n"
# 969 "data/maps/LittlerootTown/scripts.pory"
	.string "adventure, wear these RUNNING SHOES.\p"
# 970 "data/maps/LittlerootTown/scripts.pory"
	.string "They'll put a zip in your step!$"
# 971 "data/maps/LittlerootTown/scripts.pory"

# 972 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_SwitchShoesWithRunningShoes:
# 973 "data/maps/LittlerootTown/scripts.pory"
	.string "{PLAYER} switched shoes with the\n"
# 974 "data/maps/LittlerootTown/scripts.pory"
	.string "RUNNING SHOES.$"
# 975 "data/maps/LittlerootTown/scripts.pory"

# 976 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ExplainRunningShoes:
# 977 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: {PLAYER}, those shoes came with\n"
# 978 "data/maps/LittlerootTown/scripts.pory"
	.string "instructions.\p"
# 979 "data/maps/LittlerootTown/scripts.pory"
	.string "“Press the B Button while wearing these\n"
# 980 "data/maps/LittlerootTown/scripts.pory"
	.string "RUNNING SHOES to run extra-fast!\p"
# 981 "data/maps/LittlerootTown/scripts.pory"
	.string "“Slip on these RUNNING SHOES and race\n"
# 982 "data/maps/LittlerootTown/scripts.pory"
	.string "in the great outdoors!”$"
# 983 "data/maps/LittlerootTown/scripts.pory"

# 984 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ComeHomeIfAnythingHappens:
# 985 "data/maps/LittlerootTown/scripts.pory"
	.string "… … … … … … … …\n"
# 986 "data/maps/LittlerootTown/scripts.pory"
	.string "… … … … … … … …\p"
# 987 "data/maps/LittlerootTown/scripts.pory"
	.string "To think that you have your very own\n"
# 988 "data/maps/LittlerootTown/scripts.pory"
	.string "POKéMON now…\l"
# 989 "data/maps/LittlerootTown/scripts.pory"
	.string "Your father will be overjoyed.\p"
# 990 "data/maps/LittlerootTown/scripts.pory"
	.string "…But please be careful.\n"
# 991 "data/maps/LittlerootTown/scripts.pory"
	.string "If anything happens, you can come home.\p"
# 992 "data/maps/LittlerootTown/scripts.pory"
	.string "Go on, go get them, honey!$"
# 993 "data/maps/LittlerootTown/scripts.pory"

# 994 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_CanUsePCToStoreItems:
# 995 "data/maps/LittlerootTown/scripts.pory"
	.string "Whoa, what's with that outfit?\n"
# 996 "data/maps/LittlerootTown/scripts.pory"
	.string "Is it Halloween already?\p"
# 997 "data/maps/LittlerootTown/scripts.pory"
	.string "You look like you stepped out of\n"
# 998 "data/maps/LittlerootTown/scripts.pory"
	.string "a book or something! Hahaha!$"
# 999 "data/maps/LittlerootTown/scripts.pory"

# 1000 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_BirchSpendsDaysInLab:
# 1001 "data/maps/LittlerootTown/scripts.pory"
	.string "I saw a really weird meteor streak\n"
# 1002 "data/maps/LittlerootTown/scripts.pory"
	.string "across the sky last night.\p"
# 1003 "data/maps/LittlerootTown/scripts.pory"
	.string "It turned the whole sky dark for a\n"
# 1004 "data/maps/LittlerootTown/scripts.pory"
	.string "moment…\p"
# 1005 "data/maps/LittlerootTown/scripts.pory"
	.string "People say it only appears once every\n"
# 1006 "data/maps/LittlerootTown/scripts.pory"
	.string "thousand years.\p"
# 1007 "data/maps/LittlerootTown/scripts.pory"
	.string "Gave me chills just thinking about it.$"
# 1008 "data/maps/LittlerootTown/scripts.pory"

# 1009 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WantPKM:
# 1010 "data/maps/LittlerootTown/scripts.pory"
	.string "My dream is to have my very own\n"
# 1011 "data/maps/LittlerootTown/scripts.pory"
	.string "POKéMON…\p"
# 1012 "data/maps/LittlerootTown/scripts.pory"
	.string "When that comet passed through\n"
# 1013 "data/maps/LittlerootTown/scripts.pory"
	.string "the sky that night...\l"
# 1014 "data/maps/LittlerootTown/scripts.pory"
	.string "I made a wish!\p"
# 1015 "data/maps/LittlerootTown/scripts.pory"
	.string "Maybe someday PROFESSOR ACACIA\n"
# 1016 "data/maps/LittlerootTown/scripts.pory"
	.string "will make my dream come true and\l"
# 1017 "data/maps/LittlerootTown/scripts.pory"
	.string "give me a POKéMON to start my journey!$"
# 1018 "data/maps/LittlerootTown/scripts.pory"

# 1019 "data/maps/LittlerootTown/scripts.pory"

# 1020 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut:
# 1021 "data/maps/LittlerootTown/scripts.pory"
	.string "Um, um, um!\p"
# 1022 "data/maps/LittlerootTown/scripts.pory"
	.string "If you go outside and go in the grass,\n"
# 1023 "data/maps/LittlerootTown/scripts.pory"
	.string "wild POKéMON will jump out!$"
# 1024 "data/maps/LittlerootTown/scripts.pory"

# 1025 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_DangerousIfYouDontHavePokemon:
# 1026 "data/maps/LittlerootTown/scripts.pory"
	.string "It's dangerous if you don't have\n"
# 1027 "data/maps/LittlerootTown/scripts.pory"
	.string "your own POKéMON.$"
# 1028 "data/maps/LittlerootTown/scripts.pory"

# 1029 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_CanYouGoSeeWhatsHappening:
# 1030 "data/maps/LittlerootTown/scripts.pory"
	.string "Um, hi!\p"
# 1031 "data/maps/LittlerootTown/scripts.pory"
	.string "There are scary POKéMON outside!\n"
# 1032 "data/maps/LittlerootTown/scripts.pory"
	.string "I can hear their cries!\p"
# 1033 "data/maps/LittlerootTown/scripts.pory"
	.string "I want to go see what's going on,\n"
# 1034 "data/maps/LittlerootTown/scripts.pory"
	.string "but I don't have any POKéMON…\p"
# 1035 "data/maps/LittlerootTown/scripts.pory"
	.string "Can you go see what's happening\n"
# 1036 "data/maps/LittlerootTown/scripts.pory"
	.string "for me?$"
# 1037 "data/maps/LittlerootTown/scripts.pory"

# 1038 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_YouSavedBirch:
# 1039 "data/maps/LittlerootTown/scripts.pory"
	.string "You saved PROF. ACACIA!\n"
# 1040 "data/maps/LittlerootTown/scripts.pory"
	.string "I'm so glad!$"
# 1041 "data/maps/LittlerootTown/scripts.pory"

# 1042 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_GoodLuckCatchingPokemon:
# 1043 "data/maps/LittlerootTown/scripts.pory"
	.string "Are you going to catch POKéMON?\n"
# 1044 "data/maps/LittlerootTown/scripts.pory"
	.string "Good luck!$"
# 1045 "data/maps/LittlerootTown/scripts.pory"

# 1046 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_TownSign:
# 1047 "data/maps/LittlerootTown/scripts.pory"
	.string "LITTLEROOT TOWN\n"
# 1048 "data/maps/LittlerootTown/scripts.pory"
	.string "“A town that can't be shaded any hue.”$"
# 1049 "data/maps/LittlerootTown/scripts.pory"

# 1050 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ProfBirchsLab:
# 1051 "data/maps/LittlerootTown/scripts.pory"
	.string "PROF. ACACIA'S POKéMON LAB$"
# 1052 "data/maps/LittlerootTown/scripts.pory"

# 1053 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_PlayersHouse:
# 1054 "data/maps/LittlerootTown/scripts.pory"
	.string "{PLAYER}'s HOUSE$"
# 1055 "data/maps/LittlerootTown/scripts.pory"

# 1056 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ProfBirchsHouse:
# 1057 "data/maps/LittlerootTown/scripts.pory"
	.string "{RIVAL}'s HOUSE$"
# 1058 "data/maps/LittlerootTown/scripts.pory"

# 1059 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_BirchSomethingToShowYouAtLab:
# 1060 "data/maps/LittlerootTown/scripts.pory"
	.string "PROF. ACACIA: Well, well, {PLAYER}{KUN}!\n"
# 1061 "data/maps/LittlerootTown/scripts.pory"
	.string "That was good work out there!\p"
# 1062 "data/maps/LittlerootTown/scripts.pory"
	.string "I knew there was something special\n"
# 1063 "data/maps/LittlerootTown/scripts.pory"
	.string "about you when I first saw you,\l"
# 1064 "data/maps/LittlerootTown/scripts.pory"
	.string "but I never expected this.\p"
# 1065 "data/maps/LittlerootTown/scripts.pory"
	.string "Oh, yes. Do you still have the POKéDEX\n"
# 1066 "data/maps/LittlerootTown/scripts.pory"
	.string "I gave you?\p"
# 1067 "data/maps/LittlerootTown/scripts.pory"
	.string "I have something to show you.\n"
# 1068 "data/maps/LittlerootTown/scripts.pory"
	.string "Let's go to my LAB.$"
# 1069 "data/maps/LittlerootTown/scripts.pory"

# 1070 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ResearchAssistant:
# 1071 "data/maps/LittlerootTown/scripts.pory"
	.string "I'm one of PROF. ACACIA's research\n"
# 1072 "data/maps/LittlerootTown/scripts.pory"
	.string "assistants.\p"
# 1073 "data/maps/LittlerootTown/scripts.pory"
	.string "The PROFESSOR is always out in the\n"
# 1074 "data/maps/LittlerootTown/scripts.pory"
	.string "field studying POKéMON habitats.$"
