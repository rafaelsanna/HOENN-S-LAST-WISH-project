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
	special StartMegaRayVisionScene
# 65 "data/maps/LittlerootTown/scripts.pory"
	callnative StartSnowballGame
# 66 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 67 "data/maps/LittlerootTown/scripts.pory"
	release
# 68 "data/maps/LittlerootTown/scripts.pory"
	end
# 69 "data/maps/LittlerootTown/scripts.pory"

# 70 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_LeftLabAfterDexUpgrade::
# 71 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 3
# 72 "data/maps/LittlerootTown/scripts.pory"
	return
# 73 "data/maps/LittlerootTown/scripts.pory"

# 74 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideMomForRunningShoes:: @ no need to show mon to give running shoes 
# 75 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 76 "data/maps/LittlerootTown/scripts.pory"
	return
# 77 "data/maps/LittlerootTown/scripts.pory"

# 78 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideMapNamePopup::
# 79 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 80 "data/maps/LittlerootTown/scripts.pory"
	return
# 81 "data/maps/LittlerootTown/scripts.pory"

# 82 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalLeftForRoute103::
# 83 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_RIVAL_LEFT_FOR_ROUTE103
# 84 "data/maps/LittlerootTown/scripts.pory"
	return
# 85 "data/maps/LittlerootTown/scripts.pory"

# 86 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MoveRivalFromOldale::
# 87 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 2
# 88 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 89 "data/maps/LittlerootTown/scripts.pory"
	return
# 90 "data/maps/LittlerootTown/scripts.pory"

# 91 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent::
# 92 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 5
# 93 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 5
# 94 "data/maps/LittlerootTown/scripts.pory"
	return
# 95 "data/maps/LittlerootTown/scripts.pory"

# 96 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MoveMomToMaysDoor::
# 97 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 14, 8
# 98 "data/maps/LittlerootTown/scripts.pory"
	return
# 99 "data/maps/LittlerootTown/scripts.pory"

# 100 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetTwinPos::
# 101 "data/maps/LittlerootTown/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_TOWN_STATE, 0, LittlerootTown_EventScript_SetTwinGuardingRoutePos
# 102 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_TWIN, 10, 1
# 103 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_TWIN, MOVEMENT_TYPE_FACE_UP
# 104 "data/maps/LittlerootTown/scripts.pory"
	return
# 105 "data/maps/LittlerootTown/scripts.pory"

# 106 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetTwinGuardingRoutePos::
# 107 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_TWIN, 7, 2
# 108 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_TWIN, MOVEMENT_TYPE_FACE_DOWN
# 109 "data/maps/LittlerootTown/scripts.pory"
	return
# 110 "data/maps/LittlerootTown/scripts.pory"

# 111 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos::
# 112 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 113 "data/maps/LittlerootTown/scripts.pory"
	setobjectmovementtype LOCALID_LITTLEROOT_MOM, MOVEMENT_TYPE_FACE_DOWN
# 114 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 115 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetMomInFrontOfDoorMale
# 116 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetMomInFrontOfDoorFemale
# 117 "data/maps/LittlerootTown/scripts.pory"
	return
# 118 "data/maps/LittlerootTown/scripts.pory"

# 119 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomInFrontOfDoorMale::
# 120 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 5, 9
# 121 "data/maps/LittlerootTown/scripts.pory"
	return
# 122 "data/maps/LittlerootTown/scripts.pory"

# 123 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetMomInFrontOfDoorFemale::
# 124 "data/maps/LittlerootTown/scripts.pory"
	setobjectxyperm LOCALID_LITTLEROOT_MOM, 14, 9
# 125 "data/maps/LittlerootTown/scripts.pory"
	return
# 126 "data/maps/LittlerootTown/scripts.pory"

# 127 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnFrame:
# 128 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 1, LittlerootTown_EventScript_StepOffTruckMale
# 129 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_StepOffTruckFemale
# 130 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_BeginDexUpgradeScene
# 131 "data/maps/LittlerootTown/scripts.pory"
	.2byte 0
# 132 "data/maps/LittlerootTown/scripts.pory"

# 133 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_StepOffTruckMale::
# 134 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 135 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8004, 5
# 136 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8005, 8
# 137 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GoInsideWithMom
# 138 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 139 "data/maps/LittlerootTown/scripts.pory"
	warpsilent MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_1F, 8, 8
# 140 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 141 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 142 "data/maps/LittlerootTown/scripts.pory"
	end
# 143 "data/maps/LittlerootTown/scripts.pory"

# 144 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_StepOffTruckFemale::
# 145 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 146 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8004, 14
# 147 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8005, 8
# 148 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GoInsideWithMom
# 149 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 150 "data/maps/LittlerootTown/scripts.pory"
	warpsilent MAP_LITTLEROOT_TOWN_MAYS_HOUSE_1F, 2, 8
# 151 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 152 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 153 "data/maps/LittlerootTown/scripts.pory"
	end
# 154 "data/maps/LittlerootTown/scripts.pory"

# 155 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoInsideWithMom::
# 156 "data/maps/LittlerootTown/scripts.pory"
	delay 15
# 157 "data/maps/LittlerootTown/scripts.pory"
	playse SE_LEDGE
# 158 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerStepOffTruck
# 159 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 160 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 161 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 162 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_MOM
# 163 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitHouse
# 164 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 165 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 166 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 167 "data/maps/LittlerootTown/scripts.pory"
	delay 10
# 168 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerAtTruck
# 169 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 170 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_OurNewHomeLetsGoInside, MSGBOX_DEFAULT
# 171 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 172 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachDoor
# 173 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerApproachDoor
# 174 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 175 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8004, VAR_0x8005
# 176 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 177 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomEnterHouse
# 178 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PlayerEnterHouse
# 179 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 180 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 181 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 3
# 182 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_PLAYER, 0
# 183 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8004, VAR_0x8005
# 184 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 185 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_FAT_MAN
# 186 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 187 "data/maps/LittlerootTown/scripts.pory"
	return
# 188 "data/maps/LittlerootTown/scripts.pory"

# 189 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomExitHouse:
# 190 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 191 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 192 "data/maps/LittlerootTown/scripts.pory"

# 193 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerAtTruck:
# 194 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 195 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_left
# 196 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 197 "data/maps/LittlerootTown/scripts.pory"

# 198 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachDoor:
# 199 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 200 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 201 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 202 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 203 "data/maps/LittlerootTown/scripts.pory"

# 204 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomEnterHouse:
# 205 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 206 "data/maps/LittlerootTown/scripts.pory"
	set_invisible
# 207 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 208 "data/maps/LittlerootTown/scripts.pory"

# 209 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerApproachDoor:
# 210 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 211 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 212 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 213 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 214 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 215 "data/maps/LittlerootTown/scripts.pory"

# 216 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerEnterHouse:
# 217 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 218 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 219 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 220 "data/maps/LittlerootTown/scripts.pory"

# 221 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PlayerStepOffTruck:
# 222 "data/maps/LittlerootTown/scripts.pory"
	jump_right
# 223 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 224 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 225 "data/maps/LittlerootTown/scripts.pory"
	delay_16
# 226 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 227 "data/maps/LittlerootTown/scripts.pory"

# 228 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BeginDexUpgradeScene::
# 229 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 230 "data/maps/LittlerootTown/scripts.pory"
	playse SE_PIN
# 231 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_BIRCH, Common_Movement_ExclamationMark
# 232 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 233 "data/maps/LittlerootTown/scripts.pory"
	delay 80
# 234 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_BirchSomethingToShowYouAtLab, MSGBOX_DEFAULT
# 235 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 236 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_RIVAL
# 237 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCH
# 238 "data/maps/LittlerootTown/scripts.pory"
	delay 20
# 239 "data/maps/LittlerootTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 240 "data/maps/LittlerootTown/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB, 6, 5
# 241 "data/maps/LittlerootTown/scripts.pory"
	waitstate
# 242 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 243 "data/maps/LittlerootTown/scripts.pory"
	end
# 244 "data/maps/LittlerootTown/scripts.pory"

# 245 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_OnWarp:
# 246 "data/maps/LittlerootTown/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_SetRivalBirchPosForDexUpgrade
# 247 "data/maps/LittlerootTown/scripts.pory"
	.2byte 0
# 248 "data/maps/LittlerootTown/scripts.pory"

# 249 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgrade::
# 250 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_BIRCH
# 251 "data/maps/LittlerootTown/scripts.pory"
	addobject LOCALID_LITTLEROOT_RIVAL
# 252 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 253 "data/maps/LittlerootTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeMale
# 254 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeFemale
# 255 "data/maps/LittlerootTown/scripts.pory"
	end
# 256 "data/maps/LittlerootTown/scripts.pory"

# 257 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeMale::
# 258 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_RIVAL, 6, 10
# 259 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_BIRCH, 5, 10
# 260 "data/maps/LittlerootTown/scripts.pory"
	end
# 261 "data/maps/LittlerootTown/scripts.pory"

# 262 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetRivalBirchPosForDexUpgradeFemale::
# 263 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_RIVAL, 13, 10
# 264 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_BIRCH, 14, 10
# 265 "data/maps/LittlerootTown/scripts.pory"
	end
# 266 "data/maps/LittlerootTown/scripts.pory"

# 267 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_FatMan::
# 268 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanUsePCToStoreItems, MSGBOX_NPC
# 269 "data/maps/LittlerootTown/scripts.pory"
	end
# 270 "data/maps/LittlerootTown/scripts.pory"

# 271 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Boy::
# 272 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_BirchSpendsDaysInLab, MSGBOX_NPC
# 273 "data/maps/LittlerootTown/scripts.pory"
	end
# 274 "data/maps/LittlerootTown/scripts.pory"

# 275 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_LittleBoy::
# 276 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WantPKM, MSGBOX_NPC
# 277 "data/maps/LittlerootTown/scripts.pory"
	end	
# 278 "data/maps/LittlerootTown/scripts.pory"

# 279 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Twin::
# 280 "data/maps/LittlerootTown/scripts.pory"
	lock
# 281 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 282 "data/maps/LittlerootTown/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, LittlerootTown_EventScript_GoodLuck
# 283 "data/maps/LittlerootTown/scripts.pory"
	goto_if_set FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_YouSavedBirch
# 284 "data/maps/LittlerootTown/scripts.pory"
	goto_if_ne VAR_LITTLEROOT_TOWN_STATE, 0, LittlerootTown_EventScript_GoSaveBirch
# 285 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut, MSGBOX_DEFAULT
# 286 "data/maps/LittlerootTown/scripts.pory"
	release
# 287 "data/maps/LittlerootTown/scripts.pory"
	end
# 288 "data/maps/LittlerootTown/scripts.pory"

# 289 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoSaveBirch::
# 290 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 291 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanYouGoSeeWhatsHappening, MSGBOX_DEFAULT
# 292 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 293 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_FaceOriginalDirection
# 294 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 295 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 2
# 296 "data/maps/LittlerootTown/scripts.pory"
	release
# 297 "data/maps/LittlerootTown/scripts.pory"
	end
# 298 "data/maps/LittlerootTown/scripts.pory"

# 299 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_YouSavedBirch::
# 300 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 301 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_YouSavedBirch, MSGBOX_DEFAULT
# 302 "data/maps/LittlerootTown/scripts.pory"
	release
# 303 "data/maps/LittlerootTown/scripts.pory"
	end
# 304 "data/maps/LittlerootTown/scripts.pory"

# 305 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoodLuck::
# 306 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_GoodLuckCatchingPokemon, MSGBOX_DEFAULT
# 307 "data/maps/LittlerootTown/scripts.pory"
	release
# 308 "data/maps/LittlerootTown/scripts.pory"
	end
# 309 "data/maps/LittlerootTown/scripts.pory"

# 310 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_NeedPokemonTriggerLeft::
# 311 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 312 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinApproachPlayerLeft
# 313 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 314 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_DangerousWithoutPokemon
# 315 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinReturnLeft
# 316 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 317 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 318 "data/maps/LittlerootTown/scripts.pory"
	end
# 319 "data/maps/LittlerootTown/scripts.pory"

# 320 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_DangerousWithoutPokemon::
# 321 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut, MSGBOX_DEFAULT
# 322 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 323 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinPushPlayerFromRoute
# 324 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_Movement_PushPlayerBackFromRoute
# 325 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 326 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_DangerousIfYouDontHavePokemon, MSGBOX_DEFAULT
# 327 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 328 "data/maps/LittlerootTown/scripts.pory"
	return
# 329 "data/maps/LittlerootTown/scripts.pory"

# 330 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinApproachPlayerLeft:
# 331 "data/maps/LittlerootTown/scripts.pory"
	face_right
# 332 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 333 "data/maps/LittlerootTown/scripts.pory"
	disable_jump_landing_ground_effect
# 334 "data/maps/LittlerootTown/scripts.pory"
	jump_in_place_right
# 335 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 336 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 337 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 338 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 339 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 340 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 341 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 342 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_left
# 343 "data/maps/LittlerootTown/scripts.pory"
	face_down
# 344 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 345 "data/maps/LittlerootTown/scripts.pory"

# 346 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinPushPlayerFromRoute:
# 347 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 348 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 349 "data/maps/LittlerootTown/scripts.pory"

# 350 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinReturnLeft:
# 351 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 352 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 353 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 354 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 355 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 356 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 357 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 358 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 359 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_down
# 360 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 361 "data/maps/LittlerootTown/scripts.pory"

# 362 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_PushPlayerBackFromRoute:
# 363 "data/maps/LittlerootTown/scripts.pory"
	lock_facing_direction
# 364 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 365 "data/maps/LittlerootTown/scripts.pory"
	unlock_facing_direction
# 366 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 367 "data/maps/LittlerootTown/scripts.pory"

# 368 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_NeedPokemonTriggerRight::
# 369 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 370 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinApproachPlayerRight
# 371 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 372 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_DangerousWithoutPokemon
# 373 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_TWIN, LittlerootTown_Movement_TwinReturnRight
# 374 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 375 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 376 "data/maps/LittlerootTown/scripts.pory"
	end
# 377 "data/maps/LittlerootTown/scripts.pory"

# 378 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinApproachPlayerRight:
# 379 "data/maps/LittlerootTown/scripts.pory"
	face_right
# 380 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 381 "data/maps/LittlerootTown/scripts.pory"
	disable_jump_landing_ground_effect
# 382 "data/maps/LittlerootTown/scripts.pory"
	jump_in_place_right
# 383 "data/maps/LittlerootTown/scripts.pory"
	delay_8
# 384 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 385 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 386 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 387 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 388 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_up
# 389 "data/maps/LittlerootTown/scripts.pory"
	walk_fast_right
# 390 "data/maps/LittlerootTown/scripts.pory"
	face_down
# 391 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 392 "data/maps/LittlerootTown/scripts.pory"

# 393 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_TwinReturnRight:
# 394 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 395 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 396 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 397 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 398 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 399 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_down
# 400 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 401 "data/maps/LittlerootTown/scripts.pory"

# 402 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GoSaveBirchTrigger::
# 403 "data/maps/LittlerootTown/scripts.pory"
	//lockall//
# 404 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_WalkInPlaceFasterRight
# 405 "data/maps/LittlerootTown/scripts.pory"
	//waitmovement 0
# 406 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 407 "data/maps/LittlerootTown/scripts.pory"
	//waitmovement 0
# 408 "data/maps/LittlerootTown/scripts.pory"
	special GetPlayerBigGuyGirlString
# 409 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_CanYouGoSeeWhatsHappening, MSGBOX_DEFAULT
# 410 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 411 "data/maps/LittlerootTown/scripts.pory"
	//applymovement LOCALID_LITTLEROOT_TWIN, Common_Movement_FaceOriginalDirection
# 412 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 413 "data/maps/LittlerootTown/scripts.pory"
	//setvar VAR_LITTLEROOT_TOWN_STATE, 2
# 414 "data/maps/LittlerootTown/scripts.pory"
	//releaseall
# 415 "data/maps/LittlerootTown/scripts.pory"
	end
# 416 "data/maps/LittlerootTown/scripts.pory"

# 417 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_TownSign::
# 418 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_TownSign, MSGBOX_SIGN
# 419 "data/maps/LittlerootTown/scripts.pory"
	end
# 420 "data/maps/LittlerootTown/scripts.pory"

# 421 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsLabSign::
# 422 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsLab, MSGBOX_SIGN
# 423 "data/maps/LittlerootTown/scripts.pory"
	end
# 424 "data/maps/LittlerootTown/scripts.pory"

# 425 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BrendansHouseSign::
# 426 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 427 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 428 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_PlayersHouseSignMale
# 429 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_BirchsHouseSignFemale
# 430 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 431 "data/maps/LittlerootTown/scripts.pory"
	end
# 432 "data/maps/LittlerootTown/scripts.pory"

# 433 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_PlayersHouseSignMale::
# 434 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_PlayersHouse, MSGBOX_DEFAULT
# 435 "data/maps/LittlerootTown/scripts.pory"
	return
# 436 "data/maps/LittlerootTown/scripts.pory"

# 437 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsHouseSignFemale::
# 438 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsHouse, MSGBOX_DEFAULT
# 439 "data/maps/LittlerootTown/scripts.pory"
	return
# 440 "data/maps/LittlerootTown/scripts.pory"

# 441 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MaysHouseSign::
# 442 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 443 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 444 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_BirchsHouseSignMale
# 445 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_PlayersHouseSignFemale
# 446 "data/maps/LittlerootTown/scripts.pory"
	releaseall
# 447 "data/maps/LittlerootTown/scripts.pory"
	end
# 448 "data/maps/LittlerootTown/scripts.pory"

# 449 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_BirchsHouseSignMale::
# 450 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ProfBirchsHouse, MSGBOX_DEFAULT
# 451 "data/maps/LittlerootTown/scripts.pory"
	return
# 452 "data/maps/LittlerootTown/scripts.pory"

# 453 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_PlayersHouseSignFemale::
# 454 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_PlayersHouse, MSGBOX_DEFAULT
# 455 "data/maps/LittlerootTown/scripts.pory"
	return
# 456 "data/maps/LittlerootTown/scripts.pory"

# 457 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger0::
# 458 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 459 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 0
# 460 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_MOM, 10, 9
# 461 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 462 "data/maps/LittlerootTown/scripts.pory"
	end
# 463 "data/maps/LittlerootTown/scripts.pory"

# 464 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger1::
# 465 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 466 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 1
# 467 "data/maps/LittlerootTown/scripts.pory"
	setobjectxy LOCALID_LITTLEROOT_MOM, 11, 9
# 468 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 469 "data/maps/LittlerootTown/scripts.pory"
	end
# 470 "data/maps/LittlerootTown/scripts.pory"

# 471 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger2::
# 472 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 473 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 2
# 474 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 475 "data/maps/LittlerootTown/scripts.pory"
	end
# 476 "data/maps/LittlerootTown/scripts.pory"

# 477 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger3::
# 478 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 479 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 3
# 480 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 481 "data/maps/LittlerootTown/scripts.pory"
	end
# 482 "data/maps/LittlerootTown/scripts.pory"

# 483 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger4::
# 484 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 485 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 4
# 486 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 487 "data/maps/LittlerootTown/scripts.pory"
	end
# 488 "data/maps/LittlerootTown/scripts.pory"

# 489 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger5::
# 490 "data/maps/LittlerootTown/scripts.pory"
	lockall
# 491 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8008, 5
# 492 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_GiveRunningShoesTrigger
# 493 "data/maps/LittlerootTown/scripts.pory"
	end
# 494 "data/maps/LittlerootTown/scripts.pory"

# 495 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoesTrigger::
# 496 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 497 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomNoticePlayerMale
# 498 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomNoticePlayerFemale
# 499 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 500 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetHomeDoorCoordsMale
# 501 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetHomeDoorCoordsFemale
# 502 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WaitPlayer, MSGBOX_DEFAULT
# 503 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 504 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 505 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomApproachPlayerMale
# 506 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomApproachPlayerFemale
# 507 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GiveRunningShoes
# 508 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 509 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_MomReturnHomeMale
# 510 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_MomReturnHomeFemale
# 511 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetReceivedRunningShoes
# 512 "data/maps/LittlerootTown/scripts.pory"
	end
# 513 "data/maps/LittlerootTown/scripts.pory"

# 514 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetHomeDoorCoordsMale::
# 515 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8009, 5
# 516 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x800A, 8
# 517 "data/maps/LittlerootTown/scripts.pory"
	return
# 518 "data/maps/LittlerootTown/scripts.pory"

# 519 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetHomeDoorCoordsFemale::
# 520 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x8009, 14
# 521 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_0x800A, 8
# 522 "data/maps/LittlerootTown/scripts.pory"
	return
# 523 "data/maps/LittlerootTown/scripts.pory"

# 524 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomNoticePlayerMale::
# 525 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterRight
# 526 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 527 "data/maps/LittlerootTown/scripts.pory"
	return
# 528 "data/maps/LittlerootTown/scripts.pory"

# 529 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomNoticePlayerFemale::
# 530 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterLeft
# 531 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 532 "data/maps/LittlerootTown/scripts.pory"
	return
# 533 "data/maps/LittlerootTown/scripts.pory"

# 534 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale::
# 535 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomApproachPlayer0
# 536 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomApproachPlayer1
# 537 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomApproachPlayerMale2
# 538 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomApproachPlayerMale3
# 539 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomApproachPlayerMale4
# 540 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomApproachPlayerMale5
# 541 "data/maps/LittlerootTown/scripts.pory"
	return
# 542 "data/maps/LittlerootTown/scripts.pory"

# 543 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale::
# 544 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomApproachPlayer0
# 545 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomApproachPlayer1
# 546 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomApproachPlayerFemale2
# 547 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomApproachPlayerFemale3
# 548 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomApproachPlayerFemale4
# 549 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomApproachPlayerFemale5
# 550 "data/maps/LittlerootTown/scripts.pory"
	return
# 551 "data/maps/LittlerootTown/scripts.pory"

# 552 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayer0::
# 553 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 554 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 555 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayer0
# 556 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 557 "data/maps/LittlerootTown/scripts.pory"
	return
# 558 "data/maps/LittlerootTown/scripts.pory"

# 559 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayer1::
# 560 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 561 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 562 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayer1
# 563 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 564 "data/maps/LittlerootTown/scripts.pory"
	return
# 565 "data/maps/LittlerootTown/scripts.pory"

# 566 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale2::
# 567 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 568 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 569 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale2
# 570 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 571 "data/maps/LittlerootTown/scripts.pory"
	return
# 572 "data/maps/LittlerootTown/scripts.pory"

# 573 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale3::
# 574 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 575 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 576 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale3
# 577 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 578 "data/maps/LittlerootTown/scripts.pory"
	return
# 579 "data/maps/LittlerootTown/scripts.pory"

# 580 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale4::
# 581 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 582 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 583 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale4
# 584 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 585 "data/maps/LittlerootTown/scripts.pory"
	return
# 586 "data/maps/LittlerootTown/scripts.pory"

# 587 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerMale5::
# 588 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 589 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 590 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerMale5
# 591 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 592 "data/maps/LittlerootTown/scripts.pory"
	return
# 593 "data/maps/LittlerootTown/scripts.pory"

# 594 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale2::
# 595 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 596 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 597 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale2
# 598 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 599 "data/maps/LittlerootTown/scripts.pory"
	return
# 600 "data/maps/LittlerootTown/scripts.pory"

# 601 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale3::
# 602 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 603 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 604 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale3
# 605 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 606 "data/maps/LittlerootTown/scripts.pory"
	return
# 607 "data/maps/LittlerootTown/scripts.pory"

# 608 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale4::
# 609 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 610 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 611 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale4
# 612 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 613 "data/maps/LittlerootTown/scripts.pory"
	return
# 614 "data/maps/LittlerootTown/scripts.pory"

# 615 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomApproachPlayerFemale5::
# 616 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 617 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 618 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomApproachPlayerFemale5
# 619 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 620 "data/maps/LittlerootTown/scripts.pory"
	return
# 621 "data/maps/LittlerootTown/scripts.pory"

# 622 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale::
# 623 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomReturnHome0
# 624 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomReturnHome1
# 625 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomReturnHomeMale2
# 626 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomReturnHomeMale3
# 627 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomReturnHomeMale4
# 628 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomReturnHomeMale5
# 629 "data/maps/LittlerootTown/scripts.pory"
	return
# 630 "data/maps/LittlerootTown/scripts.pory"

# 631 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale::
# 632 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 0, LittlerootTown_EventScript_MomReturnHome0
# 633 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 1, LittlerootTown_EventScript_MomReturnHome1
# 634 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 2, LittlerootTown_EventScript_MomReturnHomeFemale2
# 635 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 3, LittlerootTown_EventScript_MomReturnHomeFemale3
# 636 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 4, LittlerootTown_EventScript_MomReturnHomeFemale4
# 637 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_0x8008, 5, LittlerootTown_EventScript_MomReturnHomeFemale5
# 638 "data/maps/LittlerootTown/scripts.pory"
	return
# 639 "data/maps/LittlerootTown/scripts.pory"

# 640 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHome0::
# 641 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHome0
# 642 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 643 "data/maps/LittlerootTown/scripts.pory"
	return
# 644 "data/maps/LittlerootTown/scripts.pory"

# 645 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHome1::
# 646 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHome1
# 647 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 648 "data/maps/LittlerootTown/scripts.pory"
	return
# 649 "data/maps/LittlerootTown/scripts.pory"

# 650 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale2::
# 651 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale2
# 652 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 653 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 654 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 655 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 656 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 657 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 658 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 659 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 660 "data/maps/LittlerootTown/scripts.pory"
	return
# 661 "data/maps/LittlerootTown/scripts.pory"

# 662 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale3::
# 663 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale3
# 664 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 665 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 666 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 667 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 668 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 669 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 670 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 671 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 672 "data/maps/LittlerootTown/scripts.pory"
	return
# 673 "data/maps/LittlerootTown/scripts.pory"

# 674 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale4::
# 675 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale4
# 676 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 677 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 678 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 679 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 680 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 681 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 682 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 683 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 684 "data/maps/LittlerootTown/scripts.pory"
	return
# 685 "data/maps/LittlerootTown/scripts.pory"

# 686 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeMale5::
# 687 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeMale5
# 688 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 689 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 690 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 691 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 692 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 693 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 694 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 695 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 696 "data/maps/LittlerootTown/scripts.pory"
	return
# 697 "data/maps/LittlerootTown/scripts.pory"

# 698 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale2::
# 699 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale2
# 700 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 701 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 702 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 703 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 704 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 705 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 706 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 707 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 708 "data/maps/LittlerootTown/scripts.pory"
	return
# 709 "data/maps/LittlerootTown/scripts.pory"

# 710 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale3::
# 711 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale3
# 712 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 713 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 714 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 715 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 716 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 717 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 718 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 719 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 720 "data/maps/LittlerootTown/scripts.pory"
	return
# 721 "data/maps/LittlerootTown/scripts.pory"

# 722 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale4::
# 723 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale4
# 724 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 725 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 726 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 727 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 728 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 729 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 730 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 731 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 732 "data/maps/LittlerootTown/scripts.pory"
	return
# 733 "data/maps/LittlerootTown/scripts.pory"

# 734 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_MomReturnHomeFemale5::
# 735 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomReturnHomeFemale5
# 736 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 737 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 738 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 739 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 740 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 741 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 742 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 743 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 744 "data/maps/LittlerootTown/scripts.pory"
	return
# 745 "data/maps/LittlerootTown/scripts.pory"

# 746 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayer0:
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
	walk_up
# 753 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 754 "data/maps/LittlerootTown/scripts.pory"

# 755 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayer1:
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
	walk_up
# 762 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 763 "data/maps/LittlerootTown/scripts.pory"

# 764 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale2:
# 765 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 766 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 767 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 768 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 769 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 770 "data/maps/LittlerootTown/scripts.pory"

# 771 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale3:
# 772 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 773 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 774 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 775 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 776 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 777 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 778 "data/maps/LittlerootTown/scripts.pory"

# 779 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale4:
# 780 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 781 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 782 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 783 "data/maps/LittlerootTown/scripts.pory"

# 784 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerMale5:
# 785 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 786 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 787 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 788 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 789 "data/maps/LittlerootTown/scripts.pory"

# 790 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale2:
# 791 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 792 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 793 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 794 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 795 "data/maps/LittlerootTown/scripts.pory"

# 796 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale3:
# 797 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 798 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 799 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 800 "data/maps/LittlerootTown/scripts.pory"

# 801 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale4:
# 802 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 803 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 804 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 805 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 806 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 807 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 808 "data/maps/LittlerootTown/scripts.pory"

# 809 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomApproachPlayerFemale5:
# 810 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 811 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 812 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 813 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 814 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 815 "data/maps/LittlerootTown/scripts.pory"

# 816 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHome0:
# 817 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 818 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 819 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 820 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 821 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 822 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 823 "data/maps/LittlerootTown/scripts.pory"

# 824 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHome1:
# 825 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 826 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 827 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 828 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 829 "data/maps/LittlerootTown/scripts.pory"
	walk_down
# 830 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 831 "data/maps/LittlerootTown/scripts.pory"

# 832 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale2:
# 833 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 834 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 835 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 836 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 837 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 838 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 839 "data/maps/LittlerootTown/scripts.pory"

# 840 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale3:
# 841 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 842 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 843 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 844 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 845 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 846 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 847 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 848 "data/maps/LittlerootTown/scripts.pory"

# 849 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale4:
# 850 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 851 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 852 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 853 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 854 "data/maps/LittlerootTown/scripts.pory"

# 855 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeMale5:
# 856 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 857 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 858 "data/maps/LittlerootTown/scripts.pory"
	walk_left
# 859 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 860 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 861 "data/maps/LittlerootTown/scripts.pory"

# 862 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale2:
# 863 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 864 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 865 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 866 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 867 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 868 "data/maps/LittlerootTown/scripts.pory"

# 869 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale3:
# 870 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 871 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 872 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 873 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 874 "data/maps/LittlerootTown/scripts.pory"

# 875 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale4:
# 876 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 877 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 878 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 879 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 880 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 881 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 882 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 883 "data/maps/LittlerootTown/scripts.pory"

# 884 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomReturnHomeFemale5:
# 885 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 886 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 887 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 888 "data/maps/LittlerootTown/scripts.pory"
	walk_right
# 889 "data/maps/LittlerootTown/scripts.pory"
	walk_in_place_faster_up
# 890 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 891 "data/maps/LittlerootTown/scripts.pory"

# 892 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Movement_MomExitThroughDoor:
# 893 "data/maps/LittlerootTown/scripts.pory"
	walk_up
# 894 "data/maps/LittlerootTown/scripts.pory"
	step_end
# 895 "data/maps/LittlerootTown/scripts.pory"

# 896 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_Mom::
# 897 "data/maps/LittlerootTown/scripts.pory"
	lock
# 898 "data/maps/LittlerootTown/scripts.pory"
	faceplayer
# 899 "data/maps/LittlerootTown/scripts.pory"
	checkplayergender
# 900 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_EventScript_SetHomeDoorCoordsMale
# 901 "data/maps/LittlerootTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_EventScript_SetHomeDoorCoordsFemale
# 902 "data/maps/LittlerootTown/scripts.pory"
	call LittlerootTown_EventScript_GiveRunningShoes
# 903 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, Common_Movement_WalkInPlaceFasterUp
# 904 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 905 "data/maps/LittlerootTown/scripts.pory"
	opendoor VAR_0x8009, VAR_0x800A
# 906 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 907 "data/maps/LittlerootTown/scripts.pory"
	applymovement LOCALID_LITTLEROOT_MOM, LittlerootTown_Movement_MomExitThroughDoor
# 908 "data/maps/LittlerootTown/scripts.pory"
	waitmovement 0
# 909 "data/maps/LittlerootTown/scripts.pory"
	hideobjectat LOCALID_LITTLEROOT_MOM, MAP_LITTLEROOT_TOWN
# 910 "data/maps/LittlerootTown/scripts.pory"
	closedoor VAR_0x8009, VAR_0x800A
# 911 "data/maps/LittlerootTown/scripts.pory"
	waitdooranim
# 912 "data/maps/LittlerootTown/scripts.pory"
	goto LittlerootTown_EventScript_SetReceivedRunningShoes
# 913 "data/maps/LittlerootTown/scripts.pory"
	end
# 914 "data/maps/LittlerootTown/scripts.pory"

# 915 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_SetReceivedRunningShoes::
# 916 "data/maps/LittlerootTown/scripts.pory"
	removeobject LOCALID_LITTLEROOT_MOM
# 917 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 918 "data/maps/LittlerootTown/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 919 "data/maps/LittlerootTown/scripts.pory"
	release
# 920 "data/maps/LittlerootTown/scripts.pory"
	end
# 921 "data/maps/LittlerootTown/scripts.pory"

# 922 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_GiveRunningShoes::
# 923 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_WearTheseRunningShoes, MSGBOX_DEFAULT
# 924 "data/maps/LittlerootTown/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 925 "data/maps/LittlerootTown/scripts.pory"
	message LittlerootTown_Text_SwitchShoesWithRunningShoes
# 926 "data/maps/LittlerootTown/scripts.pory"
	waitfanfare
# 927 "data/maps/LittlerootTown/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 928 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ExplainRunningShoes, MSGBOX_DEFAULT
# 929 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ComeHomeIfAnythingHappens, MSGBOX_DEFAULT
# 930 "data/maps/LittlerootTown/scripts.pory"
	closemessage
# 931 "data/maps/LittlerootTown/scripts.pory"
	delay 30
# 932 "data/maps/LittlerootTown/scripts.pory"
	return
# 933 "data/maps/LittlerootTown/scripts.pory"

# 934 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_HideResearchAssistant::
# 935 "data/maps/LittlerootTown/scripts.pory"
    setflag FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT
# 936 "data/maps/LittlerootTown/scripts.pory"
    return
# 937 "data/maps/LittlerootTown/scripts.pory"

# 938 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_EventScript_ResearchAssistant::
# 939 "data/maps/LittlerootTown/scripts.pory"
	msgbox LittlerootTown_Text_ResearchAssistant, MSGBOX_NPC
# 940 "data/maps/LittlerootTown/scripts.pory"
	end
# 941 "data/maps/LittlerootTown/scripts.pory"

# 942 "data/maps/LittlerootTown/scripts.pory"
////////////////////////////// 
# 943 "data/maps/LittlerootTown/scripts.pory"

# 944 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_OurNewHomeLetsGoInside:
# 945 "data/maps/LittlerootTown/scripts.pory"
	.string "MOM: {PLAYER}, we're here, honey!\p"
# 946 "data/maps/LittlerootTown/scripts.pory"
	.string "It must be tiring riding with our things\n"
# 947 "data/maps/LittlerootTown/scripts.pory"
	.string "in the moving truck.\p"
# 948 "data/maps/LittlerootTown/scripts.pory"
	.string "Well, this is LITTLEROOT TOWN.\p"
# 949 "data/maps/LittlerootTown/scripts.pory"
	.string "How do you like it?\n"
# 950 "data/maps/LittlerootTown/scripts.pory"
	.string "This is our new home!\p"
# 951 "data/maps/LittlerootTown/scripts.pory"
	.string "It has a quaint feel, but it seems to be\n"
# 952 "data/maps/LittlerootTown/scripts.pory"
	.string "an easy place to live, don't you think?\p"
# 953 "data/maps/LittlerootTown/scripts.pory"
	.string "And, you get your own room, {PLAYER}!\n"
# 954 "data/maps/LittlerootTown/scripts.pory"
	.string "Let's go inside.$"
# 955 "data/maps/LittlerootTown/scripts.pory"

# 956 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WaitPlayer:
# 957 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: Wait, {PLAYER}!$"
# 958 "data/maps/LittlerootTown/scripts.pory"

# 959 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WearTheseRunningShoes:
# 960 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: {PLAYER}! {PLAYER}! Did you\n"
# 961 "data/maps/LittlerootTown/scripts.pory"
	.string "introduce yourself to PROF. ACACIA?\p"
# 962 "data/maps/LittlerootTown/scripts.pory"
	.string "Oh! What an adorable POKéMON!\n"
# 963 "data/maps/LittlerootTown/scripts.pory"
	.string "You got it from PROF. ACACIA. How nice!\p"
# 964 "data/maps/LittlerootTown/scripts.pory"
	.string "You're your father's child, all right.\n"
# 965 "data/maps/LittlerootTown/scripts.pory"
	.string "You look good together with POKéMON!\p"
# 966 "data/maps/LittlerootTown/scripts.pory"
	.string "Here, honey! If you're going out on an\n"
# 967 "data/maps/LittlerootTown/scripts.pory"
	.string "adventure, wear these RUNNING SHOES.\p"
# 968 "data/maps/LittlerootTown/scripts.pory"
	.string "They'll put a zip in your step!$"
# 969 "data/maps/LittlerootTown/scripts.pory"

# 970 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_SwitchShoesWithRunningShoes:
# 971 "data/maps/LittlerootTown/scripts.pory"
	.string "{PLAYER} switched shoes with the\n"
# 972 "data/maps/LittlerootTown/scripts.pory"
	.string "RUNNING SHOES.$"
# 973 "data/maps/LittlerootTown/scripts.pory"

# 974 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ExplainRunningShoes:
# 975 "data/maps/LittlerootTown/scripts.pory"
	.string "GRANDMA: {PLAYER}, those shoes came with\n"
# 976 "data/maps/LittlerootTown/scripts.pory"
	.string "instructions.\p"
# 977 "data/maps/LittlerootTown/scripts.pory"
	.string "“Press the B Button while wearing these\n"
# 978 "data/maps/LittlerootTown/scripts.pory"
	.string "RUNNING SHOES to run extra-fast!\p"
# 979 "data/maps/LittlerootTown/scripts.pory"
	.string "“Slip on these RUNNING SHOES and race\n"
# 980 "data/maps/LittlerootTown/scripts.pory"
	.string "in the great outdoors!”$"
# 981 "data/maps/LittlerootTown/scripts.pory"

# 982 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ComeHomeIfAnythingHappens:
# 983 "data/maps/LittlerootTown/scripts.pory"
	.string "… … … … … … … …\n"
# 984 "data/maps/LittlerootTown/scripts.pory"
	.string "… … … … … … … …\p"
# 985 "data/maps/LittlerootTown/scripts.pory"
	.string "To think that you have your very own\n"
# 986 "data/maps/LittlerootTown/scripts.pory"
	.string "POKéMON now…\l"
# 987 "data/maps/LittlerootTown/scripts.pory"
	.string "Your father will be overjoyed.\p"
# 988 "data/maps/LittlerootTown/scripts.pory"
	.string "…But please be careful.\n"
# 989 "data/maps/LittlerootTown/scripts.pory"
	.string "If anything happens, you can come home.\p"
# 990 "data/maps/LittlerootTown/scripts.pory"
	.string "Go on, go get them, honey!$"
# 991 "data/maps/LittlerootTown/scripts.pory"

# 992 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_CanUsePCToStoreItems:
# 993 "data/maps/LittlerootTown/scripts.pory"
	.string "Whoa, what's with that outfit?\n"
# 994 "data/maps/LittlerootTown/scripts.pory"
	.string "Is it Halloween already?\p"
# 995 "data/maps/LittlerootTown/scripts.pory"
	.string "You look like you stepped out of\n"
# 996 "data/maps/LittlerootTown/scripts.pory"
	.string "a book or something! Hahaha!$"
# 997 "data/maps/LittlerootTown/scripts.pory"

# 998 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_BirchSpendsDaysInLab:
# 999 "data/maps/LittlerootTown/scripts.pory"
	.string "I saw a really weird meteor streak\n"
# 1000 "data/maps/LittlerootTown/scripts.pory"
	.string "across the sky last night.\p"
# 1001 "data/maps/LittlerootTown/scripts.pory"
	.string "It turned the whole sky dark for a\n"
# 1002 "data/maps/LittlerootTown/scripts.pory"
	.string "moment…\p"
# 1003 "data/maps/LittlerootTown/scripts.pory"
	.string "People say it only appears once every\n"
# 1004 "data/maps/LittlerootTown/scripts.pory"
	.string "thousand years.\p"
# 1005 "data/maps/LittlerootTown/scripts.pory"
	.string "Gave me chills just thinking about it.$"
# 1006 "data/maps/LittlerootTown/scripts.pory"

# 1007 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_WantPKM:
# 1008 "data/maps/LittlerootTown/scripts.pory"
	.string "My dream is to have my very own\n"
# 1009 "data/maps/LittlerootTown/scripts.pory"
	.string "POKéMON…\p"
# 1010 "data/maps/LittlerootTown/scripts.pory"
	.string "When that comet passed through\n"
# 1011 "data/maps/LittlerootTown/scripts.pory"
	.string "the sky that night...\l"
# 1012 "data/maps/LittlerootTown/scripts.pory"
	.string "I made a wish!\p"
# 1013 "data/maps/LittlerootTown/scripts.pory"
	.string "Maybe someday PROFESSOR ACACIA\n"
# 1014 "data/maps/LittlerootTown/scripts.pory"
	.string "will make my dream come true and\l"
# 1015 "data/maps/LittlerootTown/scripts.pory"
	.string "give me a POKéMON to start my journey!$"
# 1016 "data/maps/LittlerootTown/scripts.pory"

# 1017 "data/maps/LittlerootTown/scripts.pory"

# 1018 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_IfYouGoInGrassPokemonWillJumpOut:
# 1019 "data/maps/LittlerootTown/scripts.pory"
	.string "Um, um, um!\p"
# 1020 "data/maps/LittlerootTown/scripts.pory"
	.string "If you go outside and go in the grass,\n"
# 1021 "data/maps/LittlerootTown/scripts.pory"
	.string "wild POKéMON will jump out!$"
# 1022 "data/maps/LittlerootTown/scripts.pory"

# 1023 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_DangerousIfYouDontHavePokemon:
# 1024 "data/maps/LittlerootTown/scripts.pory"
	.string "It's dangerous if you don't have\n"
# 1025 "data/maps/LittlerootTown/scripts.pory"
	.string "your own POKéMON.$"
# 1026 "data/maps/LittlerootTown/scripts.pory"

# 1027 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_CanYouGoSeeWhatsHappening:
# 1028 "data/maps/LittlerootTown/scripts.pory"
	.string "Um, hi!\p"
# 1029 "data/maps/LittlerootTown/scripts.pory"
	.string "There are scary POKéMON outside!\n"
# 1030 "data/maps/LittlerootTown/scripts.pory"
	.string "I can hear their cries!\p"
# 1031 "data/maps/LittlerootTown/scripts.pory"
	.string "I want to go see what's going on,\n"
# 1032 "data/maps/LittlerootTown/scripts.pory"
	.string "but I don't have any POKéMON…\p"
# 1033 "data/maps/LittlerootTown/scripts.pory"
	.string "Can you go see what's happening\n"
# 1034 "data/maps/LittlerootTown/scripts.pory"
	.string "for me?$"
# 1035 "data/maps/LittlerootTown/scripts.pory"

# 1036 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_YouSavedBirch:
# 1037 "data/maps/LittlerootTown/scripts.pory"
	.string "You saved PROF. ACACIA!\n"
# 1038 "data/maps/LittlerootTown/scripts.pory"
	.string "I'm so glad!$"
# 1039 "data/maps/LittlerootTown/scripts.pory"

# 1040 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_GoodLuckCatchingPokemon:
# 1041 "data/maps/LittlerootTown/scripts.pory"
	.string "Are you going to catch POKéMON?\n"
# 1042 "data/maps/LittlerootTown/scripts.pory"
	.string "Good luck!$"
# 1043 "data/maps/LittlerootTown/scripts.pory"

# 1044 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_TownSign:
# 1045 "data/maps/LittlerootTown/scripts.pory"
	.string "LITTLEROOT TOWN\n"
# 1046 "data/maps/LittlerootTown/scripts.pory"
	.string "“A town that can't be shaded any hue.”$"
# 1047 "data/maps/LittlerootTown/scripts.pory"

# 1048 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ProfBirchsLab:
# 1049 "data/maps/LittlerootTown/scripts.pory"
	.string "PROF. ACACIA'S POKéMON LAB$"
# 1050 "data/maps/LittlerootTown/scripts.pory"

# 1051 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_PlayersHouse:
# 1052 "data/maps/LittlerootTown/scripts.pory"
	.string "{PLAYER}'s HOUSE$"
# 1053 "data/maps/LittlerootTown/scripts.pory"

# 1054 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ProfBirchsHouse:
# 1055 "data/maps/LittlerootTown/scripts.pory"
	.string "{RIVAL}'s HOUSE$"
# 1056 "data/maps/LittlerootTown/scripts.pory"

# 1057 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_BirchSomethingToShowYouAtLab:
# 1058 "data/maps/LittlerootTown/scripts.pory"
	.string "PROF. ACACIA: Well, well, {PLAYER}{KUN}!\n"
# 1059 "data/maps/LittlerootTown/scripts.pory"
	.string "That was good work out there!\p"
# 1060 "data/maps/LittlerootTown/scripts.pory"
	.string "I knew there was something special\n"
# 1061 "data/maps/LittlerootTown/scripts.pory"
	.string "about you when I first saw you,\l"
# 1062 "data/maps/LittlerootTown/scripts.pory"
	.string "but I never expected this.\p"
# 1063 "data/maps/LittlerootTown/scripts.pory"
	.string "Oh, yes. Do you still have the POKéDEX\n"
# 1064 "data/maps/LittlerootTown/scripts.pory"
	.string "I gave you?\p"
# 1065 "data/maps/LittlerootTown/scripts.pory"
	.string "I have something to show you.\n"
# 1066 "data/maps/LittlerootTown/scripts.pory"
	.string "Let's go to my LAB.$"
# 1067 "data/maps/LittlerootTown/scripts.pory"

# 1068 "data/maps/LittlerootTown/scripts.pory"
LittlerootTown_Text_ResearchAssistant:
# 1069 "data/maps/LittlerootTown/scripts.pory"
	.string "I'm one of PROF. ACACIA's research\n"
# 1070 "data/maps/LittlerootTown/scripts.pory"
	.string "assistants.\p"
# 1071 "data/maps/LittlerootTown/scripts.pory"
	.string "The PROFESSOR is always out in the\n"
# 1072 "data/maps/LittlerootTown/scripts.pory"
	.string "field studying POKéMON habitats.$"
