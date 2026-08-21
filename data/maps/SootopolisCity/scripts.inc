# 1 "data/maps/SootopolisCity/scripts.pory"

# 2 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_MapScripts::
# 3 "data/maps/SootopolisCity/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, SootopolisCity_OnLoad
# 4 "data/maps/SootopolisCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SootopolisCity_OnTransition
# 5 "data/maps/SootopolisCity/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, SootopolisCity_OnResume
# 6 "data/maps/SootopolisCity/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SootopolisCity_OnFrame
# 7 "data/maps/SootopolisCity/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, SootopolisCity_OnWarp
# 8 "data/maps/SootopolisCity/scripts.pory"
	.byte 0
# 9 "data/maps/SootopolisCity/scripts.pory"

# 10 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_OnLoad:
# 11 "data/maps/SootopolisCity/scripts.pory"
	call_if_unset FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, SootopolisCity_EventScript_LockGymDoor
# 12 "data/maps/SootopolisCity/scripts.pory"
	goto_if_unset FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, SootopolisCity_EventScript_LegendariesNotArrived
# 13 "data/maps/SootopolisCity/scripts.pory"
	call_if_unset FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, SootopolisCity_EventScript_LockHouseDoors
# 14 "data/maps/SootopolisCity/scripts.pory"
	end
# 15 "data/maps/SootopolisCity/scripts.pory"

# 16 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_LegendariesNotArrived::
# 17 "data/maps/SootopolisCity/scripts.pory"
	end
# 18 "data/maps/SootopolisCity/scripts.pory"

# 19 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_LockHouseDoors::
# 20 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 9, 6, METATILE_Sootopolis_Door_Closed, TRUE
# 21 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 9, 17, METATILE_Sootopolis_Door_Closed, TRUE
# 22 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 9, 26, METATILE_Sootopolis_Door_Closed, TRUE
# 23 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 44, 17, METATILE_Sootopolis_Door_Closed, TRUE
# 24 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 8, 35, METATILE_Sootopolis_Door_Closed, TRUE
# 25 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 53, 28, METATILE_Sootopolis_Door_Closed, TRUE
# 26 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 45, 6, METATILE_Sootopolis_Door_Closed, TRUE
# 27 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 48, 25, METATILE_Sootopolis_Door_Closed, TRUE
# 28 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 51, 36, METATILE_Sootopolis_Door_Closed, TRUE
# 29 "data/maps/SootopolisCity/scripts.pory"
	return
# 30 "data/maps/SootopolisCity/scripts.pory"

# 31 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_LockGymDoor::
# 32 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 31, 32, METATILE_Sootopolis_GymDoor_Closed, TRUE
# 33 "data/maps/SootopolisCity/scripts.pory"
	return
# 34 "data/maps/SootopolisCity/scripts.pory"

# 35 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_OnTransition:
# 36 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_VISITED_SOOTOPOLIS_CITY
# 37 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_HideMapNamePopup
# 38 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SKY_PILLAR_STATE, 1, SootopolisCity_EventScript_HideMapNamePopup
# 39 "data/maps/SootopolisCity/scripts.pory"
	call_if_unset FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, SootopolisCity_EventScript_HidePrimalLegendaries
# 40 "data/maps/SootopolisCity/scripts.pory"
	call SootopolisCity_EventScript_SetWeather
# 41 "data/maps/SootopolisCity/scripts.pory"
	call SootopolisCity_EventScript_SetLayout
# 42 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_SetBattleSpectators
# 43 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 2, SootopolisCity_EventScript_SetBattleSpectators
# 44 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 3, SootopolisCity_EventScript_SetBattleSpectators
# 45 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 4, SootopolisCity_EventScript_SetBattleSpectators
# 46 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_SetBattleSpectators
# 47 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 2, SootopolisCity_EventScript_CheckSetEnterCaveOfOriginObjPos
# 48 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 3, SootopolisCity_EventScript_CheckSetEnterCaveOfOriginObjPos
# 49 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 4, SootopolisCity_EventScript_SetExitCaveOfOriginObjPos
# 50 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_SetOutsideGymObjPos
# 51 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_SetExpertBlockCaveEntrance
# 52 "data/maps/SootopolisCity/scripts.pory"
	end
# 53 "data/maps/SootopolisCity/scripts.pory"

# 54 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_HideMapNamePopup::
# 55 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 56 "data/maps/SootopolisCity/scripts.pory"
	return
# 57 "data/maps/SootopolisCity/scripts.pory"

# 58 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_HidePrimalLegendaries::
# 59 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_PRIMALGROUDON
# 60 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_PRIMALKYOGRE
# 61 "data/maps/SootopolisCity/scripts.pory"
	return
# 62 "data/maps/SootopolisCity/scripts.pory"

# 63 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetBattleSpectators::
# 64 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_KIRI, 13, 48
# 65 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_BOY_1, 46, 32
# 66 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_NINJA_BOY, 48, 41
# 67 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_WOMAN_1, 45, 43
# 68 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_KIRI, MOVEMENT_TYPE_FACE_UP
# 69 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_SOOTOPOLIS_BOY_1, MOVEMENT_TYPE_FACE_LEFT
# 70 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_SOOTOPOLIS_NINJA_BOY, MOVEMENT_TYPE_FACE_LEFT
# 71 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_SOOTOPOLIS_WOMAN_1, MOVEMENT_TYPE_FACE_LEFT
# 72 "data/maps/SootopolisCity/scripts.pory"
	return
# 73 "data/maps/SootopolisCity/scripts.pory"

# 74 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetLayout::
# 75 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 0, SootopolisCity_EventScript_SetNormalLayout
# 76 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_SetNormalLayout
# 77 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_SetLegendariesLayout
# 78 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 2, SootopolisCity_EventScript_SetLegendariesLayout
# 79 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 3, SootopolisCity_EventScript_SetLegendariesLayout
# 80 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 4, SootopolisCity_EventScript_SetLegendariesLayout
# 81 "data/maps/SootopolisCity/scripts.pory"
	goto_if_le VAR_SKY_PILLAR_STATE, 1, SootopolisCity_EventScript_SetLegendariesLayout
# 82 "data/maps/SootopolisCity/scripts.pory"
	return
# 83 "data/maps/SootopolisCity/scripts.pory"

# 84 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetNormalLayout::
# 85 "data/maps/SootopolisCity/scripts.pory"
	return
# 86 "data/maps/SootopolisCity/scripts.pory"

# 87 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetLegendariesLayout::
# 88 "data/maps/SootopolisCity/scripts.pory"
	setmaplayoutindex LAYOUT_SOOTOPOLIS_CITY_LEGENDS_BATTLE
# 89 "data/maps/SootopolisCity/scripts.pory"
	return
# 90 "data/maps/SootopolisCity/scripts.pory"

# 91 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetWeather::
# 92 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 0, SootopolisCity_EventScript_SetNormalWeather
# 93 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_SetNormalWeather
# 94 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_SetDownpour
# 95 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SKY_PILLAR_STATE, 1, SootopolisCity_EventScript_SetDownpour
# 96 "data/maps/SootopolisCity/scripts.pory"
	goto_if_le VAR_SKY_PILLAR_STATE, 1, Common_EventScript_SetAbnormalWeather
# 97 "data/maps/SootopolisCity/scripts.pory"
	return
# 98 "data/maps/SootopolisCity/scripts.pory"

# 99 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetNormalWeather::
# 100 "data/maps/SootopolisCity/scripts.pory"
	return
# 101 "data/maps/SootopolisCity/scripts.pory"

# 102 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetDownpour::
# 103 "data/maps/SootopolisCity/scripts.pory"
	setweather WEATHER_DOWNPOUR
# 104 "data/maps/SootopolisCity/scripts.pory"
	return
# 105 "data/maps/SootopolisCity/scripts.pory"

# 106 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_CheckSetEnterCaveOfOriginObjPos::
# 107 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_STEVEN_GUIDES_TO_CAVE_OF_ORIGIN, SootopolisCity_EventScript_SetEnterCaveOfOriginObjPos
# 108 "data/maps/SootopolisCity/scripts.pory"
	return
# 109 "data/maps/SootopolisCity/scripts.pory"

# 110 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetEnterCaveOfOriginObjPos::
# 111 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_EXPERT, 30, 18
# 112 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_STEVEN, 32, 18
# 113 "data/maps/SootopolisCity/scripts.pory"
	return
# 114 "data/maps/SootopolisCity/scripts.pory"

# 115 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetExitCaveOfOriginObjPos::
# 116 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_EXPERT, 30, 18
# 117 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_WALLACE, 31, 18
# 118 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_STEVEN, 32, 18
# 119 "data/maps/SootopolisCity/scripts.pory"
	end
# 120 "data/maps/SootopolisCity/scripts.pory"

# 121 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetOutsideGymObjPos::
# 122 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_EXPERT, 31, 18
# 123 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_STEVEN, 29, 33
# 124 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_MAXIE, 33, 35
# 125 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_ARCHIE, 34, 35
# 126 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_WALLACE_STATE, 0, SootopolisCity_EventScript_SetWallaceMiddle
# 127 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_WALLACE_STATE, 1, SootopolisCity_EventScript_SetWallaceRight
# 128 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SOOTOPOLIS_WALLACE_STATE, 2, SootopolisCity_EventScript_SetWallaceLeft
# 129 "data/maps/SootopolisCity/scripts.pory"
	return
# 130 "data/maps/SootopolisCity/scripts.pory"

# 131 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetWallaceMiddle::
# 132 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_WALLACE, 31, 33
# 133 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_SOOTOPOLIS_WALLACE, MOVEMENT_TYPE_FACE_DOWN
# 134 "data/maps/SootopolisCity/scripts.pory"
	return
# 135 "data/maps/SootopolisCity/scripts.pory"

# 136 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetWallaceRight::
# 137 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_WALLACE, 32, 33
# 138 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_SOOTOPOLIS_WALLACE, MOVEMENT_TYPE_FACE_DOWN
# 139 "data/maps/SootopolisCity/scripts.pory"
	return
# 140 "data/maps/SootopolisCity/scripts.pory"

# 141 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetWallaceLeft::
# 142 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_WALLACE, 30, 33
# 143 "data/maps/SootopolisCity/scripts.pory"
	setobjectmovementtype LOCALID_SOOTOPOLIS_WALLACE, MOVEMENT_TYPE_FACE_DOWN
# 144 "data/maps/SootopolisCity/scripts.pory"
	return
# 145 "data/maps/SootopolisCity/scripts.pory"

# 146 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetExpertBlockCaveEntrance::
# 147 "data/maps/SootopolisCity/scripts.pory"
	setobjectxyperm LOCALID_SOOTOPOLIS_EXPERT, 31, 18
# 148 "data/maps/SootopolisCity/scripts.pory"
	return
# 149 "data/maps/SootopolisCity/scripts.pory"

# 150 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_OnWarp:
# 151 "data/maps/SootopolisCity/scripts.pory"
	map_script_2 VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_PlayerFaceLegendaries
# 152 "data/maps/SootopolisCity/scripts.pory"
	.2byte 0
# 153 "data/maps/SootopolisCity/scripts.pory"

# 154 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_PlayerFaceLegendaries::
# 155 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SKY_PILLAR_STATE, 1, SootopolisCity_EventScript_PlayerFaceLegendaries1
# 156 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_SKY_PILLAR_STATE, 2, SootopolisCity_EventScript_PlayerFaceLegendaries2
# 157 "data/maps/SootopolisCity/scripts.pory"
	end
# 158 "data/maps/SootopolisCity/scripts.pory"

# 159 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_PlayerFaceLegendaries1::
# 160 "data/maps/SootopolisCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 161 "data/maps/SootopolisCity/scripts.pory"
	return
# 162 "data/maps/SootopolisCity/scripts.pory"

# 163 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_PlayerFaceLegendaries2::
# 164 "data/maps/SootopolisCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 165 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SKY_PILLAR_STATE, 3
# 166 "data/maps/SootopolisCity/scripts.pory"
	return
# 167 "data/maps/SootopolisCity/scripts.pory"

# 168 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_OnResume:
# 169 "data/maps/SootopolisCity/scripts.pory"
	setdivewarp MAP_UNDERWATER_SOOTOPOLIS_CITY, 9, 6
# 170 "data/maps/SootopolisCity/scripts.pory"
	end
# 171 "data/maps/SootopolisCity/scripts.pory"

# 172 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_OnFrame:
# 173 "data/maps/SootopolisCity/scripts.pory"
	map_script_2 VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_StartLegendariesScene
# 174 "data/maps/SootopolisCity/scripts.pory"
	map_script_2 VAR_SKY_PILLAR_STATE, 1, SootopolisCity_EventScript_StartRayquazaScene
# 175 "data/maps/SootopolisCity/scripts.pory"
	.2byte 0
# 176 "data/maps/SootopolisCity/scripts.pory"

# 177 "data/maps/SootopolisCity/scripts.pory"
@ If not at PokeCenter, assumed to have arrived via Dive
# 178 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StartLegendariesScene::
# 179 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 180 "data/maps/SootopolisCity/scripts.pory"
	special StorePlayerCoordsInVars
# 181 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ne VAR_0x8004, 43, SootopolisCity_EventScript_LegendariesSceneFromDive
# 182 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ne VAR_0x8005, 32, SootopolisCity_EventScript_LegendariesSceneFromDive
# 183 "data/maps/SootopolisCity/scripts.pory"
	goto SootopolisCity_EventScript_LegendariesSceneFromPokeCenter
# 184 "data/maps/SootopolisCity/scripts.pory"
	end
# 185 "data/maps/SootopolisCity/scripts.pory"

# 186 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_LegendariesSceneFromPokeCenter::
# 187 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 188 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 189 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanToActionFromPokeCenter
# 190 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 191 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 192 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 193 "data/maps/SootopolisCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 194 "data/maps/SootopolisCity/scripts.pory"
	setweather WEATHER_ABNORMAL
# 195 "data/maps/SootopolisCity/scripts.pory"
	doweather
# 196 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, FALSE @ Just do Groudon/Kyogre fight scene
# 197 "data/maps/SootopolisCity/scripts.pory"
	special Script_DoRayquazaScene
# 198 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 199 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, Common_Movement_WalkInPlaceFasterLeft
# 200 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, Common_Movement_WalkInPlaceFasterRight
# 201 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 202 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 203 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 204 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 205 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreAttack
# 206 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonDefend
# 207 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 208 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 209 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 210 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 211 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 212 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 213 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 214 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreMoveBack
# 215 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonMoveBack
# 216 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 217 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 218 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 219 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreDefend
# 220 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonAttack
# 221 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 222 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 223 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 224 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 225 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 226 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 227 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 228 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreMoveBack
# 229 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonMoveBack
# 230 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 231 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 232 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 233 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreAttack
# 234 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonDefend
# 235 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 236 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 237 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 238 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 239 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 240 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 241 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 242 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreMoveBack
# 243 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonMoveBack
# 244 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 245 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 246 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreIdle
# 247 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonIdle
# 248 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanBackToPokeCenter
# 249 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 250 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 251 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SOOTOPOLIS_CITY_STATE, 2
# 252 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 253 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 254 "data/maps/SootopolisCity/scripts.pory"
	end
# 255 "data/maps/SootopolisCity/scripts.pory"

# 256 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PanToActionFromPokeCenter:
# 257 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 258 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 259 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 260 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 261 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 262 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 263 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 264 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 265 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 266 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 267 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 268 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 269 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 270 "data/maps/SootopolisCity/scripts.pory"

# 271 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PanBackToPokeCenter:
# 272 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 273 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 274 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 275 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 276 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 277 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 278 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 279 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 280 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 281 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 282 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 283 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 284 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 285 "data/maps/SootopolisCity/scripts.pory"

# 286 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_LegendariesSceneFromDive::
# 287 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 288 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 289 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanToActionFromDive
# 290 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 291 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 292 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 293 "data/maps/SootopolisCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 294 "data/maps/SootopolisCity/scripts.pory"
	setweather WEATHER_ABNORMAL
# 295 "data/maps/SootopolisCity/scripts.pory"
	doweather
# 296 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, FALSE @ Just do Groudon/Kyogre fight scene
# 297 "data/maps/SootopolisCity/scripts.pory"
	special Script_DoRayquazaScene
# 298 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 299 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, Common_Movement_WalkInPlaceFasterLeft
# 300 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, Common_Movement_WalkInPlaceFasterRight
# 301 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 302 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 303 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 304 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 305 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreAttack
# 306 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonDefend
# 307 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 308 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 309 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 310 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 311 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 312 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 313 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 314 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreMoveBack
# 315 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonMoveBack
# 316 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 317 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 318 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 319 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreDefend
# 320 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonAttack
# 321 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 322 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 323 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 324 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 325 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 326 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 327 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 328 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreMoveBack
# 329 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonMoveBack
# 330 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 331 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 332 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 333 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreAttack
# 334 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonDefend
# 335 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 336 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 337 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 338 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 339 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 340 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 341 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 342 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreMoveBack
# 343 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonMoveBack
# 344 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 345 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 346 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_KYOGRE, SootopolisCity_Movement_KyogreIdle
# 347 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GROUDON, SootopolisCity_Movement_GroudonIdle
# 348 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanBackToDive
# 349 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 350 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 351 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SOOTOPOLIS_CITY_STATE, 2
# 352 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 353 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 354 "data/maps/SootopolisCity/scripts.pory"
	end
# 355 "data/maps/SootopolisCity/scripts.pory"

# 356 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PanToActionFromDive:
# 357 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 358 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 359 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 360 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 361 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 362 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 363 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 364 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 365 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 366 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 367 "data/maps/SootopolisCity/scripts.pory"

# 368 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PanBackToDive:
# 369 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 370 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 371 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 372 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 373 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 374 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 375 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 376 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 377 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 378 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 379 "data/maps/SootopolisCity/scripts.pory"

# 380 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_KyogreAttack:
# 381 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 382 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 383 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 384 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 385 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 386 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 387 "data/maps/SootopolisCity/scripts.pory"
	init_affine_anim
# 388 "data/maps/SootopolisCity/scripts.pory"
	walk_left_affine
# 389 "data/maps/SootopolisCity/scripts.pory"
	clear_affine_anim
# 390 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 391 "data/maps/SootopolisCity/scripts.pory"

# 392 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_KyogreDefend:
# 393 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 394 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 395 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 396 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 397 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 398 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 399 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 400 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 401 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 402 "data/maps/SootopolisCity/scripts.pory"
	init_affine_anim
# 403 "data/maps/SootopolisCity/scripts.pory"
	walk_left_affine
# 404 "data/maps/SootopolisCity/scripts.pory"
	clear_affine_anim
# 405 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 406 "data/maps/SootopolisCity/scripts.pory"

# 407 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_KyogreMoveBack:
# 408 "data/maps/SootopolisCity/scripts.pory"
	lock_facing_direction
# 409 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 410 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 411 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 412 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 413 "data/maps/SootopolisCity/scripts.pory"
	unlock_facing_direction
# 414 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 415 "data/maps/SootopolisCity/scripts.pory"

# 416 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_KyogreIdle:
# 417 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 418 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 419 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 420 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 421 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 422 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_left
# 423 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 424 "data/maps/SootopolisCity/scripts.pory"

# 425 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_GroudonAttack:
# 426 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 427 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 428 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 429 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 430 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 431 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 432 "data/maps/SootopolisCity/scripts.pory"
	walk_fast_right
# 433 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 434 "data/maps/SootopolisCity/scripts.pory"

# 435 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_GroudonDefend:
# 436 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 437 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 438 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 439 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 440 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 441 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 442 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 443 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 444 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 445 "data/maps/SootopolisCity/scripts.pory"
	walk_fast_right
# 446 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 447 "data/maps/SootopolisCity/scripts.pory"

# 448 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_GroudonMoveBack:
# 449 "data/maps/SootopolisCity/scripts.pory"
	lock_facing_direction
# 450 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 451 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 452 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 453 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 454 "data/maps/SootopolisCity/scripts.pory"
	unlock_facing_direction
# 455 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 456 "data/maps/SootopolisCity/scripts.pory"

# 457 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_GroudonIdle:
# 458 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 459 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 460 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 461 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 462 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 463 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_slow_right
# 464 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 465 "data/maps/SootopolisCity/scripts.pory"

# 466 "data/maps/SootopolisCity/scripts.pory"
@ If not at PokeCenter, assumed to have arrived via Dive
# 467 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StartRayquazaScene::
# 468 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 469 "data/maps/SootopolisCity/scripts.pory"
	special StorePlayerCoordsInVars
# 470 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ne VAR_0x8004, 43, SootopolisCity_EventScript_RayquazaSceneFromDive
# 471 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ne VAR_0x8005, 32, SootopolisCity_EventScript_RayquazaSceneFromDive
# 472 "data/maps/SootopolisCity/scripts.pory"
	goto SootopolisCity_EventScript_RayquazaSceneFromPokeCenter
# 473 "data/maps/SootopolisCity/scripts.pory"
	end
# 474 "data/maps/SootopolisCity/scripts.pory"

# 475 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_RayquazaSceneFromPokeCenter::
# 476 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 477 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 478 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanToActionFromPokeCenter
# 479 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 480 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 481 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 482 "data/maps/SootopolisCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 483 "data/maps/SootopolisCity/scripts.pory"
	call SootopolisCity_EventScript_SetRoughWater
# 484 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_GROUDON
# 485 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_KYOGRE
# 486 "data/maps/SootopolisCity/scripts.pory"
	addobject LOCALID_SOOTOPOLIS_RAYQUAZA
# 487 "data/maps/SootopolisCity/scripts.pory"
	hideobjectat LOCALID_SOOTOPOLIS_RAYQUAZA, MAP_SOOTOPOLIS_CITY
# 488 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, TRUE
# 489 "data/maps/SootopolisCity/scripts.pory"
	special Script_DoRayquazaScene
# 490 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 491 "data/maps/SootopolisCity/scripts.pory"
	playse SE_THUNDER
# 492 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 493 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanUp
# 494 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 495 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 496 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 497 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 498 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 499 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 500 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 3  @ shake delay
# 501 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 502 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 503 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 504 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 505 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 506 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 2  @ horizontal pan
# 507 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 508 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 509 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 510 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 511 "data/maps/SootopolisCity/scripts.pory"
	waitmoncry
# 512 "data/maps/SootopolisCity/scripts.pory"
	setweather WEATHER_NONE
# 513 "data/maps/SootopolisCity/scripts.pory"
	doweather
# 514 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_RAYQUAZA, SootopolisCity_Movement_RayquazaFlyOff
# 515 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 516 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_RAYQUAZA
# 517 "data/maps/SootopolisCity/scripts.pory"
	special WaitWeather
# 518 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 519 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_SYS_WEATHER_CTRL
# 520 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SKY_PILLAR_STATE, 3
# 521 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_LEGENDARIES_IN_SOOTOPOLIS
# 522 "data/maps/SootopolisCity/scripts.pory"
	fadenewbgm MUS_SOOTOPOLIS
# 523 "data/maps/SootopolisCity/scripts.pory"
	delay 120
# 524 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 525 "data/maps/SootopolisCity/scripts.pory"
	warpwhitefade MAP_SOOTOPOLIS_CITY, 43, 32
# 526 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 527 "data/maps/SootopolisCity/scripts.pory"
	end
# 528 "data/maps/SootopolisCity/scripts.pory"

# 529 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_RayquazaSceneFromDive::
# 530 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 531 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 532 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanToActionFromDive
# 533 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 534 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 535 "data/maps/SootopolisCity/scripts.pory"
	delay 60
# 536 "data/maps/SootopolisCity/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 537 "data/maps/SootopolisCity/scripts.pory"
	call SootopolisCity_EventScript_SetRoughWater
# 538 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_GROUDON
# 539 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_KYOGRE
# 540 "data/maps/SootopolisCity/scripts.pory"
	addobject LOCALID_SOOTOPOLIS_RAYQUAZA
# 541 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, TRUE
# 542 "data/maps/SootopolisCity/scripts.pory"
	special Script_DoRayquazaScene
# 543 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 544 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 545 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_PanUp
# 546 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerApproachLegendaries
# 547 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 548 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 549 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 550 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 551 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1  @ horizontal pan
# 552 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 553 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 3  @ shake delay
# 554 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 555 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 556 "data/maps/SootopolisCity/scripts.pory"
	waitse
# 557 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 558 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1  @ vertical pan
# 559 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 2  @ horizontal pan
# 560 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8  @ num shakes
# 561 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 5  @ shake delay
# 562 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 563 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 564 "data/maps/SootopolisCity/scripts.pory"
	waitmoncry
# 565 "data/maps/SootopolisCity/scripts.pory"
	setweather WEATHER_NONE
# 566 "data/maps/SootopolisCity/scripts.pory"
	doweather
# 567 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_RAYQUAZA, SootopolisCity_Movement_RayquazaFlyOff
# 568 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 569 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_RAYQUAZA
# 570 "data/maps/SootopolisCity/scripts.pory"
	special WaitWeather
# 571 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 572 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_SYS_WEATHER_CTRL
# 573 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SKY_PILLAR_STATE, 2
# 574 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_LEGENDARIES_IN_SOOTOPOLIS
# 575 "data/maps/SootopolisCity/scripts.pory"
	fadenewbgm MUS_SURF
# 576 "data/maps/SootopolisCity/scripts.pory"
	delay 120
# 577 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 578 "data/maps/SootopolisCity/scripts.pory"
	warpwhitefade MAP_SOOTOPOLIS_CITY, 29, 53
# 579 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 580 "data/maps/SootopolisCity/scripts.pory"
	end
# 581 "data/maps/SootopolisCity/scripts.pory"

# 582 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_SetRoughWater::
# 583 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 27, 43, METATILE_Sootopolis_RoughWater, FALSE
# 584 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 28, 43, METATILE_Sootopolis_RoughWater, FALSE
# 585 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 29, 43, METATILE_Sootopolis_RoughWater, FALSE
# 586 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 30, 43, METATILE_Sootopolis_RoughWater, FALSE
# 587 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 27, 44, METATILE_Sootopolis_RoughWater, FALSE
# 588 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 28, 44, METATILE_Sootopolis_RoughWater, FALSE
# 589 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 29, 44, METATILE_Sootopolis_RoughWater, FALSE
# 590 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 30, 44, METATILE_Sootopolis_RoughWater, FALSE
# 591 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 27, 45, METATILE_Sootopolis_RoughWater, FALSE
# 592 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 28, 45, METATILE_Sootopolis_RoughWater, FALSE
# 593 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 29, 45, METATILE_Sootopolis_RoughWater, FALSE
# 594 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 30, 45, METATILE_Sootopolis_RoughWater, FALSE
# 595 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 32, 43, METATILE_Sootopolis_RoughWater, FALSE
# 596 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 33, 43, METATILE_Sootopolis_RoughWater, FALSE
# 597 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 34, 43, METATILE_Sootopolis_RoughWater, FALSE
# 598 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 35, 43, METATILE_Sootopolis_RoughWater, FALSE
# 599 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 32, 44, METATILE_Sootopolis_RoughWater, FALSE
# 600 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 33, 44, METATILE_Sootopolis_RoughWater, FALSE
# 601 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 34, 44, METATILE_Sootopolis_RoughWater, FALSE
# 602 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 35, 44, METATILE_Sootopolis_RoughWater, FALSE
# 603 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 32, 45, METATILE_Sootopolis_RoughWater, FALSE
# 604 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 33, 45, METATILE_Sootopolis_RoughWater, FALSE
# 605 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 34, 45, METATILE_Sootopolis_RoughWater, FALSE
# 606 "data/maps/SootopolisCity/scripts.pory"
	setmetatile 35, 45, METATILE_Sootopolis_RoughWater, FALSE
# 607 "data/maps/SootopolisCity/scripts.pory"
	return
# 608 "data/maps/SootopolisCity/scripts.pory"

# 609 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_RayquazaFlyOff:
# 610 "data/maps/SootopolisCity/scripts.pory"
	walk_fast_up
# 611 "data/maps/SootopolisCity/scripts.pory"
	walk_faster_up
# 612 "data/maps/SootopolisCity/scripts.pory"
	walk_faster_up
# 613 "data/maps/SootopolisCity/scripts.pory"
	walk_faster_up
# 614 "data/maps/SootopolisCity/scripts.pory"
	walk_faster_up
# 615 "data/maps/SootopolisCity/scripts.pory"
	walk_faster_up
# 616 "data/maps/SootopolisCity/scripts.pory"
	walk_faster_up
# 617 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 618 "data/maps/SootopolisCity/scripts.pory"

# 619 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PanUp:
# 620 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 621 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 622 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 623 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 624 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 625 "data/maps/SootopolisCity/scripts.pory"

# 626 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerApproachLegendaries:
# 627 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 628 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 629 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 630 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 631 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 632 "data/maps/SootopolisCity/scripts.pory"

# 633 "data/maps/SootopolisCity/scripts.pory"
@ Unused
# 634 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerApproachLegendariesDown:
# 635 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 636 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 637 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 638 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 639 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 640 "data/maps/SootopolisCity/scripts.pory"

# 641 "data/maps/SootopolisCity/scripts.pory"
@ Unused
# 642 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_UnusedPanUp:
# 643 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 644 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 645 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 646 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 647 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 648 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 649 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 650 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_northeast
# 651 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 652 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 653 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 654 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 655 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 656 "data/maps/SootopolisCity/scripts.pory"

# 657 "data/maps/SootopolisCity/scripts.pory"
@ Unused
# 658 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_UnusedPanBack:
# 659 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 660 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 661 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 662 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 663 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 664 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 665 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 666 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 667 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 668 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 669 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 670 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 671 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_diag_southwest
# 672 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 673 "data/maps/SootopolisCity/scripts.pory"

# 674 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_CaveOfOriginExpert::
# 675 "data/maps/SootopolisCity/scripts.pory"
	lock
# 676 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 677 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_ExpertPostLegendaries
# 678 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_ExpertLegendaries
# 679 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 2, SootopolisCity_EventScript_ExpertLeadToCave
# 680 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_CaveOfOriginPleaseLeave, MSGBOX_DEFAULT
# 681 "data/maps/SootopolisCity/scripts.pory"
	release
# 682 "data/maps/SootopolisCity/scripts.pory"
	end
# 683 "data/maps/SootopolisCity/scripts.pory"

# 684 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_ExpertLeadToCave::
# 685 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_LeadSuperiorTrainerToCave, MSGBOX_DEFAULT
# 686 "data/maps/SootopolisCity/scripts.pory"
	release
# 687 "data/maps/SootopolisCity/scripts.pory"
	end
# 688 "data/maps/SootopolisCity/scripts.pory"

# 689 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_ExpertPostLegendaries::
# 690 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_CaveOfOriginSleepsToo, MSGBOX_DEFAULT
# 691 "data/maps/SootopolisCity/scripts.pory"
	release
# 692 "data/maps/SootopolisCity/scripts.pory"
	end
# 693 "data/maps/SootopolisCity/scripts.pory"

# 694 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_ExpertLegendaries::
# 695 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_AwakenedPokemonClash, MSGBOX_DEFAULT
# 696 "data/maps/SootopolisCity/scripts.pory"
	release
# 697 "data/maps/SootopolisCity/scripts.pory"
	end
# 698 "data/maps/SootopolisCity/scripts.pory"

# 699 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Kiri::
# 700 "data/maps/SootopolisCity/scripts.pory"
	lock
# 701 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 702 "data/maps/SootopolisCity/scripts.pory"
	goto_if_le VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_KiriGiveBerry
# 703 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_KiriGiveBerry
# 704 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_KiriRayquaza
# 705 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_BigPokemonFighting, MSGBOX_DEFAULT
# 706 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 707 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_KIRI, Common_Movement_FaceOriginalDirection
# 708 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 709 "data/maps/SootopolisCity/scripts.pory"
	release
# 710 "data/maps/SootopolisCity/scripts.pory"
	end
# 711 "data/maps/SootopolisCity/scripts.pory"

# 712 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_KiriRayquaza::
# 713 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_PrettyMonCameFromSky, MSGBOX_DEFAULT
# 714 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 715 "data/maps/SootopolisCity/scripts.pory"
	release
# 716 "data/maps/SootopolisCity/scripts.pory"
	end
# 717 "data/maps/SootopolisCity/scripts.pory"

# 718 "data/maps/SootopolisCity/scripts.pory"
@ Gives 2 berries daily. First ranges from FIRST_KIRI_BERRY to LAST_KIRI_BERRY, second is always Figy or Iapapa
# 719 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_KiriGiveBerry::
# 720 "data/maps/SootopolisCity/scripts.pory"
	dotimebasedevents
# 721 "data/maps/SootopolisCity/scripts.pory"
	special GetPlayerBigGuyGirlString
# 722 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_DAILY_SOOTOPOLIS_RECEIVED_BERRY, SootopolisCity_EventScript_KiriReceivedBerry
# 723 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_NameIsKiriHaveOneOfThese, MSGBOX_DEFAULT
# 724 "data/maps/SootopolisCity/scripts.pory"
	random NUM_KIRI_BERRIES
# 725 "data/maps/SootopolisCity/scripts.pory"
	addvar VAR_RESULT, NUM_KIRI_BERRIES_SKIPPED
# 726 "data/maps/SootopolisCity/scripts.pory"
	addvar VAR_RESULT, FIRST_BERRY_INDEX
# 727 "data/maps/SootopolisCity/scripts.pory"
	giveitem VAR_RESULT
# 728 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 729 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_DAILY_SOOTOPOLIS_RECEIVED_BERRY
# 730 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GiveYouThisBerryToo, MSGBOX_DEFAULT
# 731 "data/maps/SootopolisCity/scripts.pory"
	random 2
# 732 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_RESULT, 0, SootopolisCity_EventScript_GiveFigyBerry
# 733 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_RESULT, 1, SootopolisCity_EventScript_GiveIapapaBerry
# 734 "data/maps/SootopolisCity/scripts.pory"
	end
# 735 "data/maps/SootopolisCity/scripts.pory"

# 736 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GiveFigyBerry::
# 737 "data/maps/SootopolisCity/scripts.pory"
	giveitem ITEM_FIGY_BERRY
# 738 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 739 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_WhatKindOfWishInYourName, MSGBOX_DEFAULT
# 740 "data/maps/SootopolisCity/scripts.pory"
	release
# 741 "data/maps/SootopolisCity/scripts.pory"
	end
# 742 "data/maps/SootopolisCity/scripts.pory"

# 743 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GiveIapapaBerry::
# 744 "data/maps/SootopolisCity/scripts.pory"
	giveitem ITEM_IAPAPA_BERRY
# 745 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 746 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_WhatKindOfWishInYourName, MSGBOX_DEFAULT
# 747 "data/maps/SootopolisCity/scripts.pory"
	release
# 748 "data/maps/SootopolisCity/scripts.pory"
	end
# 749 "data/maps/SootopolisCity/scripts.pory"

# 750 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_KiriReceivedBerry::
# 751 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_LikeSeasonBornIn, MSGBOX_YESNO
# 752 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_RESULT, YES, SootopolisCity_EventScript_KiriLikeSeasonBornIn
# 753 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_OhDoesntMatter, MSGBOX_DEFAULT
# 754 "data/maps/SootopolisCity/scripts.pory"
	release
# 755 "data/maps/SootopolisCity/scripts.pory"
	end
# 756 "data/maps/SootopolisCity/scripts.pory"

# 757 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_KiriLikeSeasonBornIn::
# 758 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_ThenILoveAutumn, MSGBOX_DEFAULT
# 759 "data/maps/SootopolisCity/scripts.pory"
	release
# 760 "data/maps/SootopolisCity/scripts.pory"
	end
# 761 "data/maps/SootopolisCity/scripts.pory"

# 762 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Woman2::
# 763 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 764 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_WOMAN_2, Common_Movement_FacePlayer
# 765 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 766 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_Woman2Rayquaza
# 767 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_WeatherWentWild, MSGBOX_DEFAULT
# 768 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 769 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_WOMAN_2, Common_Movement_FaceOriginalDirection
# 770 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 771 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 772 "data/maps/SootopolisCity/scripts.pory"
	end
# 773 "data/maps/SootopolisCity/scripts.pory"

# 774 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Woman2Rayquaza::
# 775 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_YouBroughtFlyingMon, MSGBOX_DEFAULT
# 776 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 777 "data/maps/SootopolisCity/scripts.pory"
	end
# 778 "data/maps/SootopolisCity/scripts.pory"

# 779 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Man::
# 780 "data/maps/SootopolisCity/scripts.pory"
	lock
# 781 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 782 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_ManPostLegendaries
# 783 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_NoOrdinaryTourist, MSGBOX_DEFAULT
# 784 "data/maps/SootopolisCity/scripts.pory"
	release
# 785 "data/maps/SootopolisCity/scripts.pory"
	end
# 786 "data/maps/SootopolisCity/scripts.pory"

# 787 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_ManPostLegendaries::
# 788 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_CityRegainedCalm, MSGBOX_DEFAULT
# 789 "data/maps/SootopolisCity/scripts.pory"
	release
# 790 "data/maps/SootopolisCity/scripts.pory"
	end
# 791 "data/maps/SootopolisCity/scripts.pory"

# 792 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Woman1::
# 793 "data/maps/SootopolisCity/scripts.pory"
	lock
# 794 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 795 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_Woman1PostLegendaries
# 796 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_Woman1Rayquaza
# 797 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 2, SootopolisCity_EventScript_Woman1Legendaries
# 798 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_SootopolisSkyBeautiful, MSGBOX_DEFAULT
# 799 "data/maps/SootopolisCity/scripts.pory"
	release
# 800 "data/maps/SootopolisCity/scripts.pory"
	end
# 801 "data/maps/SootopolisCity/scripts.pory"

# 802 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Woman1Legendaries::
# 803 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GiganticPokemonFight, MSGBOX_DEFAULT
# 804 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 805 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_WOMAN_1, Common_Movement_FaceOriginalDirection
# 806 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 807 "data/maps/SootopolisCity/scripts.pory"
	release
# 808 "data/maps/SootopolisCity/scripts.pory"
	end
# 809 "data/maps/SootopolisCity/scripts.pory"

# 810 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Woman1PostLegendaries::
# 811 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_NightSkyFavoriteScenery, MSGBOX_DEFAULT
# 812 "data/maps/SootopolisCity/scripts.pory"
	release
# 813 "data/maps/SootopolisCity/scripts.pory"
	end
# 814 "data/maps/SootopolisCity/scripts.pory"

# 815 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Woman1Rayquaza::
# 816 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_FearedWorstWhenPokemonFlewDown, MSGBOX_DEFAULT
# 817 "data/maps/SootopolisCity/scripts.pory"
	release
# 818 "data/maps/SootopolisCity/scripts.pory"
	end
# 819 "data/maps/SootopolisCity/scripts.pory"

# 820 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_NinjaBoy::
# 821 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 822 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_NINJA_BOY, Common_Movement_FacePlayer
# 823 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 824 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_NinjaBoyRayquaza
# 825 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_NinjaBoyNormal
# 826 "data/maps/SootopolisCity/scripts.pory"
	goto_if_le VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_NinjaBoyNormal
# 827 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_ThisIsWicked, MSGBOX_DEFAULT
# 828 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 829 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_NINJA_BOY, Common_Movement_FaceOriginalDirection
# 830 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 831 "data/maps/SootopolisCity/scripts.pory"
	release
# 832 "data/maps/SootopolisCity/scripts.pory"
	end
# 833 "data/maps/SootopolisCity/scripts.pory"

# 834 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_NinjaBoyNormal::
# 835 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_WonderWhatWorldIsLike, MSGBOX_DEFAULT
# 836 "data/maps/SootopolisCity/scripts.pory"
	release
# 837 "data/maps/SootopolisCity/scripts.pory"
	end
# 838 "data/maps/SootopolisCity/scripts.pory"

# 839 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_NinjaBoyRayquaza::
# 840 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_ThatWasWicked, MSGBOX_DEFAULT
# 841 "data/maps/SootopolisCity/scripts.pory"
	release
# 842 "data/maps/SootopolisCity/scripts.pory"
	end
# 843 "data/maps/SootopolisCity/scripts.pory"

# 844 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Boy1::
# 845 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 846 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BOY_1, Common_Movement_FacePlayer
# 847 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 848 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_Boy1Rayquaza
# 849 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, SootopolisCity_EventScript_Boy1GameClear
# 850 "data/maps/SootopolisCity/scripts.pory"
	goto_if_ge VAR_SOOTOPOLIS_CITY_STATE, 6, SootopolisCity_EventScript_Boy1Normal
# 851 "data/maps/SootopolisCity/scripts.pory"
	goto_if_le VAR_SOOTOPOLIS_CITY_STATE, 1, SootopolisCity_EventScript_Boy1Normal
# 852 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GiantPokemonSuddenlyAppeared, MSGBOX_DEFAULT
# 853 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 854 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BOY_1, Common_Movement_FaceOriginalDirection
# 855 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 856 "data/maps/SootopolisCity/scripts.pory"
	release
# 857 "data/maps/SootopolisCity/scripts.pory"
	end
# 858 "data/maps/SootopolisCity/scripts.pory"

# 859 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Boy1Rayquaza::
# 860 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_WhatIsThatGreenPokemon, MSGBOX_DEFAULT
# 861 "data/maps/SootopolisCity/scripts.pory"
	release
# 862 "data/maps/SootopolisCity/scripts.pory"
	end
# 863 "data/maps/SootopolisCity/scripts.pory"

# 864 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Boy1GameClear::
# 865 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_WhereDidLegendariesGo, MSGBOX_DEFAULT
# 866 "data/maps/SootopolisCity/scripts.pory"
	release
# 867 "data/maps/SootopolisCity/scripts.pory"
	end
# 868 "data/maps/SootopolisCity/scripts.pory"

# 869 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Boy1Normal::
# 870 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_PhysicallyFitLivingHere, MSGBOX_DEFAULT
# 871 "data/maps/SootopolisCity/scripts.pory"
	release
# 872 "data/maps/SootopolisCity/scripts.pory"
	end
# 873 "data/maps/SootopolisCity/scripts.pory"

# 874 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GymSign::
# 875 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GymSign, MSGBOX_SIGN
# 876 "data/maps/SootopolisCity/scripts.pory"
	end
# 877 "data/maps/SootopolisCity/scripts.pory"

# 878 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_CitySign::
# 879 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_CitySign, MSGBOX_SIGN
# 880 "data/maps/SootopolisCity/scripts.pory"
	end
# 881 "data/maps/SootopolisCity/scripts.pory"

# 882 "data/maps/SootopolisCity/scripts.pory"
EventScript_ClosedSootopolisDoor::
# 883 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_DoorIsClosed, MSGBOX_SIGN
# 884 "data/maps/SootopolisCity/scripts.pory"
	end
# 885 "data/maps/SootopolisCity/scripts.pory"

# 886 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Steven::
# 887 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 888 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_STEVEN, Common_Movement_FacePlayer
# 889 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 890 "data/maps/SootopolisCity/scripts.pory"
	call_if_unset FLAG_STEVEN_GUIDES_TO_CAVE_OF_ORIGIN, SootopolisCity_EventScript_StevenLeadPlayerCaveOfOrigin
# 891 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 2, SootopolisCity_EventScript_StevenHelpWallace
# 892 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 3, SootopolisCity_EventScript_StevenHelpedWallace
# 893 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 4, SootopolisCity_EventScript_StevenHelpedWallace
# 894 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, SootopolisCity_EventScript_StevenMaxieArchieLeft
# 895 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_SoThatsRayquaza, MSGBOX_DEFAULT
# 896 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 897 "data/maps/SootopolisCity/scripts.pory"
	end
# 898 "data/maps/SootopolisCity/scripts.pory"

# 899 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StevenHelpWallace::
# 900 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_KnowWhatsNeededToHelpHim, MSGBOX_DEFAULT
# 901 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 902 "data/maps/SootopolisCity/scripts.pory"
	end
# 903 "data/maps/SootopolisCity/scripts.pory"

# 904 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StevenMaxieArchieLeft::
# 905 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_MaxieArchieLeft, MSGBOX_DEFAULT
# 906 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 907 "data/maps/SootopolisCity/scripts.pory"
	end
# 908 "data/maps/SootopolisCity/scripts.pory"

# 909 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StevenHelpedWallace::
# 910 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_NeverBeenToSkyPillar, MSGBOX_DEFAULT
# 911 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 912 "data/maps/SootopolisCity/scripts.pory"
	end
# 913 "data/maps/SootopolisCity/scripts.pory"

# 914 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StevenLeadPlayerCaveOfOrigin::
# 915 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_InvolvedWithCrisisComeWithMe, MSGBOX_DEFAULT
# 916 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 917 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, SootopolisCity_EventScript_StartWalkToCaveOfOriginWest
# 918 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, SootopolisCity_EventScript_StartWalkToCaveOfOriginNorth
# 919 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_DoesThisMakeYourFearPokemon, MSGBOX_DEFAULT
# 920 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 921 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_STEVEN, SootopolisCity_Movement_StevenWalkToCaveOfOrigin
# 922 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerWalkToCaveOfOrigin
# 923 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 924 "data/maps/SootopolisCity/scripts.pory"
	delay 120
# 925 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_EXPERT, SootopolisCity_Movement_ExpertMoveAside
# 926 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 927 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_STEVEN, SootopolisCity_Movement_StevenArriveCaveEntrance
# 928 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerArriveCaveEntrance
# 929 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 930 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_HereWereAreHelpWallace, MSGBOX_DEFAULT
# 931 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 932 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_STEVEN_GUIDES_TO_CAVE_OF_ORIGIN
# 933 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerEnterCaveOfOrigin
# 934 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 935 "data/maps/SootopolisCity/scripts.pory"
	warp MAP_CAVE_OF_ORIGIN_ENTRANCE, 9, 20
# 936 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 937 "data/maps/SootopolisCity/scripts.pory"
	end
# 938 "data/maps/SootopolisCity/scripts.pory"

# 939 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StartWalkToCaveOfOriginWest::
# 940 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_STEVEN, SootopolisCity_Movement_StevenStartWalkToCaveOfOrigin
# 941 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerStartWalkToCaveOfOriginWest
# 942 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 943 "data/maps/SootopolisCity/scripts.pory"
	return
# 944 "data/maps/SootopolisCity/scripts.pory"

# 945 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_StartWalkToCaveOfOriginNorth::
# 946 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_STEVEN, SootopolisCity_Movement_StevenStartWalkToCaveOfOrigin
# 947 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerStartWalkToCaveOfOriginNorth
# 948 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 949 "data/maps/SootopolisCity/scripts.pory"
	return
# 950 "data/maps/SootopolisCity/scripts.pory"

# 951 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_StevenStartWalkToCaveOfOrigin:
# 952 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 953 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 954 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 955 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 956 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 957 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 958 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 959 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 960 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 961 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 962 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 963 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 964 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 965 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 966 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 967 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 968 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 969 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 970 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 971 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 972 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 973 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 974 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 975 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 976 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 977 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 978 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 979 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 980 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 981 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 982 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 983 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 984 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 985 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 986 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 987 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_down
# 988 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 989 "data/maps/SootopolisCity/scripts.pory"

# 990 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerStartWalkToCaveOfOriginWest:
# 991 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 992 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 993 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 994 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 995 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 996 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 997 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 998 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 999 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1000 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1001 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1002 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1003 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1004 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1005 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1006 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1007 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1008 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1009 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1010 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1011 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1012 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1013 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1014 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1015 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1016 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1017 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1018 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1019 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1020 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1021 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1022 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1023 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1024 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1025 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1026 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1027 "data/maps/SootopolisCity/scripts.pory"

# 1028 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerStartWalkToCaveOfOriginNorth:
# 1029 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1030 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1031 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1032 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1033 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1034 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1035 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1036 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1037 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1038 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1039 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1040 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1041 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1042 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1043 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1044 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1045 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1046 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1047 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1048 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1049 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1050 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1051 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1052 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1053 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1054 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1055 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1056 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1057 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1058 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1059 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1060 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1061 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1062 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1063 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1064 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1065 "data/maps/SootopolisCity/scripts.pory"

# 1066 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_StevenWalkToCaveOfOrigin:
# 1067 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1068 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1069 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1070 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1071 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1072 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1073 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1074 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1075 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1076 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1077 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1078 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1079 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1080 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1081 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1082 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1083 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1084 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1085 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1086 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1087 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1088 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1089 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1090 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1091 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1092 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1093 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1094 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1095 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1096 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1097 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1098 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1099 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1100 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1101 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1102 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1103 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1104 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1105 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1106 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1107 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1108 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1109 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1110 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1111 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1112 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1113 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1114 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1115 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1116 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1117 "data/maps/SootopolisCity/scripts.pory"
	delay_4
# 1118 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_left
# 1119 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 1120 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 1121 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1122 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1123 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1124 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1125 "data/maps/SootopolisCity/scripts.pory"

# 1126 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerWalkToCaveOfOrigin:
# 1127 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1128 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1129 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1130 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1131 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1132 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1133 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1134 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1135 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1136 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1137 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1138 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1139 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1140 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1141 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1142 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1143 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1144 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1145 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1146 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1147 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1148 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1149 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1150 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1151 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1152 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1153 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1154 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1155 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1156 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1157 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1158 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1159 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1160 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1161 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1162 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1163 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1164 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1165 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1166 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1167 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1168 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1169 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1170 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1171 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1172 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1173 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1174 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1175 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1176 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1177 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1178 "data/maps/SootopolisCity/scripts.pory"

# 1179 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_ExpertMoveAside:
# 1180 "data/maps/SootopolisCity/scripts.pory"
	walk_slow_left
# 1181 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_right
# 1182 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1183 "data/maps/SootopolisCity/scripts.pory"

# 1184 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_StevenArriveCaveEntrance:
# 1185 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1186 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1187 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1188 "data/maps/SootopolisCity/scripts.pory"
	delay_8
# 1189 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1190 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1191 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1192 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1193 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1194 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_left
# 1195 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1196 "data/maps/SootopolisCity/scripts.pory"

# 1197 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerArriveCaveEntrance:
# 1198 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 1199 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 1200 "data/maps/SootopolisCity/scripts.pory"
	delay_16
# 1201 "data/maps/SootopolisCity/scripts.pory"
	delay_8
# 1202 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1203 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1204 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1205 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1206 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1207 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_right
# 1208 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1209 "data/maps/SootopolisCity/scripts.pory"

# 1210 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerEnterCaveOfOrigin:
# 1211 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1212 "data/maps/SootopolisCity/scripts.pory"
	walk_up
# 1213 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1214 "data/maps/SootopolisCity/scripts.pory"

# 1215 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Boy2::
# 1216 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1217 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BOY_2, Common_Movement_FacePlayer
# 1218 "data/maps/SootopolisCity/scripts.pory"
	special DoMrStoneEvilScene
# 1219 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1220 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_Boy2Rayquaza
# 1221 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_TwoPokemonArentAngry, MSGBOX_DEFAULT
# 1222 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1223 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BOY_2, Common_Movement_FaceOriginalDirection
# 1224 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1225 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1226 "data/maps/SootopolisCity/scripts.pory"
	end
# 1227 "data/maps/SootopolisCity/scripts.pory"

# 1228 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Boy2Rayquaza::
# 1229 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_FlyingMonStoppedRampage, MSGBOX_DEFAULT
# 1230 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1231 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1232 "data/maps/SootopolisCity/scripts.pory"
	end
# 1233 "data/maps/SootopolisCity/scripts.pory"

# 1234 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_BlackBelt::
# 1235 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1236 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_BlackBeltRayquaza
# 1237 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GoRedAndBlueMon, MSGBOX_DEFAULT
# 1238 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1239 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BLACK_BELT, Common_Movement_FacePlayer
# 1240 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1241 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_DoYouKnowMonNames, MSGBOX_DEFAULT
# 1242 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1243 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BLACK_BELT, Common_Movement_FaceOriginalDirection
# 1244 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1245 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1246 "data/maps/SootopolisCity/scripts.pory"
	end
# 1247 "data/maps/SootopolisCity/scripts.pory"

# 1248 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_BlackBeltRayquaza::
# 1249 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BLACK_BELT, Common_Movement_FacePlayer
# 1250 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1251 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GreenOneSettlesThings, MSGBOX_DEFAULT
# 1252 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1253 "data/maps/SootopolisCity/scripts.pory"
	end
# 1254 "data/maps/SootopolisCity/scripts.pory"

# 1255 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Girl::
# 1256 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1257 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GIRL, Common_Movement_FacePlayer
# 1258 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1259 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_GirlRayquaza
# 1260 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_SootopolisWillBeWrecked, MSGBOX_DEFAULT
# 1261 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1262 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_GIRL, Common_Movement_FaceOriginalDirection
# 1263 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1264 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1265 "data/maps/SootopolisCity/scripts.pory"
	end
# 1266 "data/maps/SootopolisCity/scripts.pory"

# 1267 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GirlRayquaza::
# 1268 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_SootopolisDidntGetWrecked, MSGBOX_DEFAULT
# 1269 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1270 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1271 "data/maps/SootopolisCity/scripts.pory"
	end
# 1272 "data/maps/SootopolisCity/scripts.pory"

# 1273 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Maniac::
# 1274 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1275 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_MANIAC, Common_Movement_FacePlayer
# 1276 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1277 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_ManiacRayquaza
# 1278 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_SeeingLegendWithOwnEyes, MSGBOX_DEFAULT
# 1279 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1280 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_MANIAC, Common_Movement_FaceOriginalDirection
# 1281 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1282 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1283 "data/maps/SootopolisCity/scripts.pory"
	end
# 1284 "data/maps/SootopolisCity/scripts.pory"

# 1285 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_ManiacRayquaza::
# 1286 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_SawLegendWithOwnEyes, MSGBOX_DEFAULT
# 1287 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1288 "data/maps/SootopolisCity/scripts.pory"
	end
# 1289 "data/maps/SootopolisCity/scripts.pory"

# 1290 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Wallace::
# 1291 "data/maps/SootopolisCity/scripts.pory"
	lock
# 1292 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 1293 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 4, SootopolisCity_EventScript_GoToSkyPillar
# 1294 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_WATERFALL, SootopolisCity_EventScript_GoToGym
# 1295 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE, SootopolisCity_EventScript_GiveWaterfall
# 1296 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_AquaMagmaDidntMeanHarm, MSGBOX_DEFAULT
# 1297 "data/maps/SootopolisCity/scripts.pory"
	release
# 1298 "data/maps/SootopolisCity/scripts.pory"
	end
# 1299 "data/maps/SootopolisCity/scripts.pory"

# 1300 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GiveWaterfall::
# 1301 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_ThankYouForHelpAcceptThis, MSGBOX_DEFAULT
# 1302 "data/maps/SootopolisCity/scripts.pory"
	giveitem ITEM_HM_WATERFALL
# 1303 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_RECEIVED_HM_WATERFALL
# 1304 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_ExplainWaterfallGoToGym, MSGBOX_DEFAULT
# 1305 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1306 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, SootopolisCity_EventScript_WallaceMoveFromGym
# 1307 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, SootopolisCity_EventScript_WallaceMoveFromGym
# 1308 "data/maps/SootopolisCity/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, SootopolisCity_EventScript_WallaceMoveFromGymWest
# 1309 "data/maps/SootopolisCity/scripts.pory"
	release
# 1310 "data/maps/SootopolisCity/scripts.pory"
	end
# 1311 "data/maps/SootopolisCity/scripts.pory"

# 1312 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_WallaceMoveFromGym::
# 1313 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_WALLACE, SootopolisCity_Movement_WallaceMoveFromGym
# 1314 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1315 "data/maps/SootopolisCity/scripts.pory"
	copyobjectxytoperm LOCALID_SOOTOPOLIS_WALLACE
# 1316 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SOOTOPOLIS_WALLACE_STATE, 1
# 1317 "data/maps/SootopolisCity/scripts.pory"
	return
# 1318 "data/maps/SootopolisCity/scripts.pory"

# 1319 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_WallaceMoveFromGymWest::
# 1320 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_WALLACE, SootopolisCity_Movement_WallaceMoveFromGymWest
# 1321 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1322 "data/maps/SootopolisCity/scripts.pory"
	copyobjectxytoperm LOCALID_SOOTOPOLIS_WALLACE
# 1323 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_SOOTOPOLIS_WALLACE_STATE, 2
# 1324 "data/maps/SootopolisCity/scripts.pory"
	return
# 1325 "data/maps/SootopolisCity/scripts.pory"

# 1326 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GoToSkyPillar::
# 1327 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_HaventYouScaledSkyPillar, MSGBOX_DEFAULT
# 1328 "data/maps/SootopolisCity/scripts.pory"
	release
# 1329 "data/maps/SootopolisCity/scripts.pory"
	end
# 1330 "data/maps/SootopolisCity/scripts.pory"

# 1331 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_GoToGym::
# 1332 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_DazzledByMentor, MSGBOX_DEFAULT
# 1333 "data/maps/SootopolisCity/scripts.pory"
	release
# 1334 "data/maps/SootopolisCity/scripts.pory"
	end
# 1335 "data/maps/SootopolisCity/scripts.pory"

# 1336 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_WallaceMoveFromGym:
# 1337 "data/maps/SootopolisCity/scripts.pory"
	walk_right
# 1338 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_down
# 1339 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1340 "data/maps/SootopolisCity/scripts.pory"

# 1341 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_WallaceMoveFromGymWest:
# 1342 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1343 "data/maps/SootopolisCity/scripts.pory"
	walk_in_place_faster_down
# 1344 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1345 "data/maps/SootopolisCity/scripts.pory"

# 1346 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Maxie::
# 1347 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1348 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_MaxieRayquaza
# 1349 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_GroudonPleaseStop, MSGBOX_DEFAULT
# 1350 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1351 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1352 "data/maps/SootopolisCity/scripts.pory"
	end
# 1353 "data/maps/SootopolisCity/scripts.pory"

# 1354 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_MaxieRayquaza::
# 1355 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_AfterAllOurScheming, MSGBOX_DEFAULT
# 1356 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_MET_MAXIE_SOOTOPOLIS
# 1357 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_MET_ARCHIE_SOOTOPOLIS, SootopolisCity_EventScript_MaxieArchieLeave
# 1358 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1359 "data/maps/SootopolisCity/scripts.pory"
	end
# 1360 "data/maps/SootopolisCity/scripts.pory"

# 1361 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_Archie::
# 1362 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1363 "data/maps/SootopolisCity/scripts.pory"
	goto_if_eq VAR_SOOTOPOLIS_CITY_STATE, 5, SootopolisCity_EventScript_ArchieRayquaza
# 1364 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_KyogreCalmDown, MSGBOX_DEFAULT
# 1365 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1366 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1367 "data/maps/SootopolisCity/scripts.pory"
	end
# 1368 "data/maps/SootopolisCity/scripts.pory"

# 1369 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_ArchieRayquaza::
# 1370 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_TryingMeaninglessToPokemon, MSGBOX_DEFAULT
# 1371 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_MET_ARCHIE_SOOTOPOLIS
# 1372 "data/maps/SootopolisCity/scripts.pory"
	goto_if_set FLAG_MET_MAXIE_SOOTOPOLIS, SootopolisCity_EventScript_MaxieArchieLeave
# 1373 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1374 "data/maps/SootopolisCity/scripts.pory"
	end
# 1375 "data/maps/SootopolisCity/scripts.pory"

# 1376 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_MaxieArchieLeave::
# 1377 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_MAXIE
# 1378 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_ARCHIE
# 1379 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE
# 1380 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MT_PYRE_SUMMIT_MAXIE
# 1381 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MT_PYRE_SUMMIT_ARCHIE
# 1382 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_MT_PYRE_STATE, 2
# 1383 "data/maps/SootopolisCity/scripts.pory"
	warpsilent MAP_SOOTOPOLIS_CITY, 31, 34
# 1384 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 1385 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1386 "data/maps/SootopolisCity/scripts.pory"
	end
# 1387 "data/maps/SootopolisCity/scripts.pory"

# 1388 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_MrStoneEvil::
# 1389 "data/maps/SootopolisCity/scripts.pory"
	lockall
# 1390 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 1391 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_MrStoneMastermind, MSGBOX_DEFAULT
# 1392 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1393 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_MAXIE, SootopolisCity_Movement_ExclamationMark
# 1394 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_ARCHIE, SootopolisCity_Movement_ExclamationMark
# 1395 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1396 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_MAXIE, SootopolisCity_Movement_MaxieFaceStone
# 1397 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_ARCHIE, SootopolisCity_Movement_ArchieFaceStone
# 1398 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1399 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_MaxieShockedAtStone, MSGBOX_DEFAULT
# 1400 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1401 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_ArchieShockedAtStone, MSGBOX_DEFAULT
# 1402 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1403 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_MrStoneMoneyRulesWorld, MSGBOX_DEFAULT
# 1404 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1405 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Movement_PlayerPushedAside
# 1406 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1407 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_MRSTONE, SootopolisCity_Movement_MrStoneBoardBoat
# 1408 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1409 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_MRSTONE
# 1410 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_MRSTONE
# 1411 "data/maps/SootopolisCity/scripts.pory"
	special SpawnCameraObject
# 1412 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_SOOTOPOLIS_BOAT, SootopolisCity_Movement_DevonBoatSail
# 1413 "data/maps/SootopolisCity/scripts.pory"
	applymovement LOCALID_CAMERA, SootopolisCity_Movement_CameraFollowDevonBoat
# 1414 "data/maps/SootopolisCity/scripts.pory"
	waitmovement 0
# 1415 "data/maps/SootopolisCity/scripts.pory"
	special RemoveCameraObject
# 1416 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_MrStonePrimalCommand, MSGBOX_DEFAULT
# 1417 "data/maps/SootopolisCity/scripts.pory"
	closemessage
# 1418 "data/maps/SootopolisCity/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 1419 "data/maps/SootopolisCity/scripts.pory"
	special DoMrStoneEvilScene
# 1420 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 1421 "data/maps/SootopolisCity/scripts.pory"
	delay 120
# 1422 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 1423 "data/maps/SootopolisCity/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 1424 "data/maps/SootopolisCity/scripts.pory"
	waitmoncry
# 1425 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8004, 1 @ vertical pan
# 1426 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8005, 1 @ horizontal pan
# 1427 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8006, 8 @ num shakes
# 1428 "data/maps/SootopolisCity/scripts.pory"
	setvar VAR_0x8007, 3 @ shake delay
# 1429 "data/maps/SootopolisCity/scripts.pory"
	special ShakeCamera
# 1430 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 1431 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_GROUDON
# 1432 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_KYOGRE
# 1433 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_GROUDON
# 1434 "data/maps/SootopolisCity/scripts.pory"
	removeobject LOCALID_SOOTOPOLIS_KYOGRE
# 1435 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_SOOTOPOLIS_CITY_PRIMALGROUDON
# 1436 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_SOOTOPOLIS_CITY_PRIMALKYOGRE
# 1437 "data/maps/SootopolisCity/scripts.pory"
	addobject LOCALID_SOOTOPOLIS_PRIMALGROUDON
# 1438 "data/maps/SootopolisCity/scripts.pory"
	addobject LOCALID_SOOTOPOLIS_PRIMALKYOGRE
# 1439 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_BOAT
# 1440 "data/maps/SootopolisCity/scripts.pory"
	setflag FLAG_SOOTOPOLIS_ARCHIE_MAXIE_LEAVE
# 1441 "data/maps/SootopolisCity/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 1442 "data/maps/SootopolisCity/scripts.pory"
	warpwhitefade MAP_SOOTOPOLIS_CITY, 31, 34
# 1443 "data/maps/SootopolisCity/scripts.pory"
	waitstate
# 1444 "data/maps/SootopolisCity/scripts.pory"
	releaseall
# 1445 "data/maps/SootopolisCity/scripts.pory"
	end
# 1446 "data/maps/SootopolisCity/scripts.pory"

# 1447 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_EventScript_DevonBoat::
# 1448 "data/maps/SootopolisCity/scripts.pory"
	lock
# 1449 "data/maps/SootopolisCity/scripts.pory"
	faceplayer
# 1450 "data/maps/SootopolisCity/scripts.pory"
	msgbox SootopolisCity_Text_DevonBoatEmpty, MSGBOX_DEFAULT
# 1451 "data/maps/SootopolisCity/scripts.pory"
	release
# 1452 "data/maps/SootopolisCity/scripts.pory"
	end
# 1453 "data/maps/SootopolisCity/scripts.pory"

# 1454 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_ExclamationMark:
# 1455 "data/maps/SootopolisCity/scripts.pory"
	emote_exclamation_mark
# 1456 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1457 "data/maps/SootopolisCity/scripts.pory"

# 1458 "data/maps/SootopolisCity/scripts.pory"
@ Maxie is positioned to Mr. Stone's left, so he turns right to face him.
# 1459 "data/maps/SootopolisCity/scripts.pory"
@ Adjust turn_right/turn_left/turn_up/turn_down to match wherever you land the NPCs in porymap.
# 1460 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_MaxieFaceStone:
# 1461 "data/maps/SootopolisCity/scripts.pory"
	face_right
# 1462 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1463 "data/maps/SootopolisCity/scripts.pory"

# 1464 "data/maps/SootopolisCity/scripts.pory"
@ Archie is positioned to Mr. Stone's right, so she turns left to face him.
# 1465 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_ArchieFaceStone:
# 1466 "data/maps/SootopolisCity/scripts.pory"
	face_left
# 1467 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1468 "data/maps/SootopolisCity/scripts.pory"

# 1469 "data/maps/SootopolisCity/scripts.pory"
@ Mr. Stone shoulders past the player on his way to the boat.
# 1470 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_PlayerPushedAside:
# 1471 "data/maps/SootopolisCity/scripts.pory"
	walk_left
# 1472 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1473 "data/maps/SootopolisCity/scripts.pory"

# 1474 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_MrStoneBoardBoat:
# 1475 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1476 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1477 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1478 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1479 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1480 "data/maps/SootopolisCity/scripts.pory"

# 1481 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_DevonBoatSail:
# 1482 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1483 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1484 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1485 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1486 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1487 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1488 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1489 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1490 "data/maps/SootopolisCity/scripts.pory"

# 1491 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_CameraFollowDevonBoat:
# 1492 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1493 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1494 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1495 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1496 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1497 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1498 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1499 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1500 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1501 "data/maps/SootopolisCity/scripts.pory"
	walk_down
# 1502 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1503 "data/maps/SootopolisCity/scripts.pory"

# 1504 "data/maps/SootopolisCity/scripts.pory"
@ Unused
# 1505 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_Levitate::
# 1506 "data/maps/SootopolisCity/scripts.pory"
	levitate
# 1507 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1508 "data/maps/SootopolisCity/scripts.pory"

# 1509 "data/maps/SootopolisCity/scripts.pory"
@ Unused
# 1510 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Movement_DestroyTask::
# 1511 "data/maps/SootopolisCity/scripts.pory"
	destroy_extra_task
# 1512 "data/maps/SootopolisCity/scripts.pory"
	step_end
# 1513 "data/maps/SootopolisCity/scripts.pory"

# 1514 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_GymSign:
# 1515 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS CITY POKéMON GYM\n"
# 1516 "data/maps/SootopolisCity/scripts.pory"
	.string "LEADER: RIO\p"
# 1517 "data/maps/SootopolisCity/scripts.pory"
	.string "“The GYM LEADER with the beauty\n"
# 1518 "data/maps/SootopolisCity/scripts.pory"
	.string "of pure water!”$"
# 1519 "data/maps/SootopolisCity/scripts.pory"

# 1520 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_CitySign:
# 1521 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS CITY\p"
# 1522 "data/maps/SootopolisCity/scripts.pory"
	.string "“The mystical city where history\n"
# 1523 "data/maps/SootopolisCity/scripts.pory"
	.string "slumbers.”$"
# 1524 "data/maps/SootopolisCity/scripts.pory"

# 1525 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_MrStoneMastermind:
# 1526 "data/maps/SootopolisCity/scripts.pory"
	.string "MR. STONE: …Hahahaha…\p"
# 1527 "data/maps/SootopolisCity/scripts.pory"
	.string "Now you understand, don't you?\p"
# 1528 "data/maps/SootopolisCity/scripts.pory"
	.string "This petty struggle between TEAM MAGMA\n"
# 1529 "data/maps/SootopolisCity/scripts.pory"
	.string "and TEAM AQUA was meaningless from the\l"
# 1530 "data/maps/SootopolisCity/scripts.pory"
	.string "very beginning.\p"
# 1531 "data/maps/SootopolisCity/scripts.pory"
	.string "Did you really believe DEVON would choose\n"
# 1532 "data/maps/SootopolisCity/scripts.pory"
	.string "one side, let you destroy the other,\l"
# 1533 "data/maps/SootopolisCity/scripts.pory"
	.string "and then simply hand you control of\l"
# 1534 "data/maps/SootopolisCity/scripts.pory"
	.string "everything?\p"
# 1535 "data/maps/SootopolisCity/scripts.pory"
	.string "Hahahaha! Of course not!\p"
# 1536 "data/maps/SootopolisCity/scripts.pory"
	.string "I funded both of you.\n"
# 1537 "data/maps/SootopolisCity/scripts.pory"
	.string "I gave both sides the means to continue.\p"
# 1538 "data/maps/SootopolisCity/scripts.pory"
	.string "Every battle you fought,\n"
# 1539 "data/maps/SootopolisCity/scripts.pory"
	.string "every operation you carried out,\p"
# 1540 "data/maps/SootopolisCity/scripts.pory"
	.string "every resource DEVON placed in your\n"
# 1541 "data/maps/SootopolisCity/scripts.pory"
	.string "hands… all of it served my interests.\p"
# 1542 "data/maps/SootopolisCity/scripts.pory"
	.string "While MAGMA and AQUA fought over\n"
# 1543 "data/maps/SootopolisCity/scripts.pory"
	.string "GROUDON and KYOGRE,\p"
# 1544 "data/maps/SootopolisCity/scripts.pory"
	.string "I was building something far greater:\n"
# 1545 "data/maps/SootopolisCity/scripts.pory"
	.string "control on a global scale.\p"
# 1546 "data/maps/SootopolisCity/scripts.pory"
	.string "You were never my partners.\n"
# 1547 "data/maps/SootopolisCity/scripts.pory"
	.string "You were never my equals.\p"
# 1548 "data/maps/SootopolisCity/scripts.pory"
	.string "You were mercenaries working for DEVON,\n"
# 1549 "data/maps/SootopolisCity/scripts.pory"
	.string "whether you realized it or not.\p"
# 1550 "data/maps/SootopolisCity/scripts.pory"
	.string "And you did it all believing the victory\n"
# 1551 "data/maps/SootopolisCity/scripts.pory"
	.string "would belong to you...\p"
# 1552 "data/maps/SootopolisCity/scripts.pory"
	.string "Hahahaha… How convenient.\p"
# 1553 "data/maps/SootopolisCity/scripts.pory"
	.string "But now your usefulness has come to an\n"
# 1554 "data/maps/SootopolisCity/scripts.pory"
	.string "end now!\p"
# 1555 "data/maps/SootopolisCity/scripts.pory"
	.string "Thank you for your service, MAGNUS.\n"
# 1556 "data/maps/SootopolisCity/scripts.pory"
	.string "Thank you for yours, INAE.\p"
# 1557 "data/maps/SootopolisCity/scripts.pory"
	.string "The fighting is over.\n"
# 1558 "data/maps/SootopolisCity/scripts.pory"
	.string "The world you fought over is mine to\l"
# 1559 "data/maps/SootopolisCity/scripts.pory"
	.string "take.$"
# 1560 "data/maps/SootopolisCity/scripts.pory"

# 1561 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_MaxieShockedAtStone:
# 1562 "data/maps/SootopolisCity/scripts.pory"
	.string "MAGNUS: …!\n"
# 1563 "data/maps/SootopolisCity/scripts.pory"
	.string "What the hell is that…?\p"
# 1564 "data/maps/SootopolisCity/scripts.pory"
	.string "All this time, TEAM MAGMA and TEAM AQUA\n"
# 1565 "data/maps/SootopolisCity/scripts.pory"
	.string "were both being used by DEVON?!$"
# 1566 "data/maps/SootopolisCity/scripts.pory"

# 1567 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_ArchieShockedAtStone:
# 1568 "data/maps/SootopolisCity/scripts.pory"
	.string "So that's what this was…\n"
# 1569 "data/maps/SootopolisCity/scripts.pory"
	.string "Your madness and greed are on a whole\l"
# 1570 "data/maps/SootopolisCity/scripts.pory"
	.string "different level.\p"
# 1571 "data/maps/SootopolisCity/scripts.pory"
	.string "Hahahaha…\n"
# 1572 "data/maps/SootopolisCity/scripts.pory"
	.string "To be honest, I expected nothing less\l"
# 1573 "data/maps/SootopolisCity/scripts.pory"
	.string "from a petty old man like you.$"
# 1574 "data/maps/SootopolisCity/scripts.pory"

# 1575 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_MrStoneMoneyRulesWorld:
# 1576 "data/maps/SootopolisCity/scripts.pory"
	.string "MR. STONE: For generations, the STONE\n"
# 1577 "data/maps/SootopolisCity/scripts.pory"
	.string "family has studied the minerals of this\l"
# 1578 "data/maps/SootopolisCity/scripts.pory"
	.string "world...\p"
# 1579 "data/maps/SootopolisCity/scripts.pory"
	.string "My grandfather discovered things buried\n"
# 1580 "data/maps/SootopolisCity/scripts.pory"
	.string "beneath the earth that most people could\l"
# 1581 "data/maps/SootopolisCity/scripts.pory"
	.string "never even imagine.\p"
# 1582 "data/maps/SootopolisCity/scripts.pory"
	.string "Ancient beings.\n"
# 1583 "data/maps/SootopolisCity/scripts.pory"
	.string "Ancient powers that shaped this world\n"
# 1584 "data/maps/SootopolisCity/scripts.pory"
	.string "long before mankind ever existed.\p"
# 1585 "data/maps/SootopolisCity/scripts.pory"
	.string "I simply took that family obsession\n"
# 1586 "data/maps/SootopolisCity/scripts.pory"
	.string "further than any of them ever dared.\p"
# 1587 "data/maps/SootopolisCity/scripts.pory"
	.string "Years of research led DEVON to the RED\n"
# 1588 "data/maps/SootopolisCity/scripts.pory"
	.string "ORB and the BLUE ORB!\p"
# 1589 "data/maps/SootopolisCity/scripts.pory"
	.string "And you two played your parts perfectly.\n"
# 1590 "data/maps/SootopolisCity/scripts.pory"
	.string "My scientists told you exactly what I\l"
# 1591 "data/maps/SootopolisCity/scripts.pory"
	.string "wanted you to believe.\p"
# 1592 "data/maps/SootopolisCity/scripts.pory"
	.string "You were led to use the wrong Orbs…\n"
# 1593 "data/maps/SootopolisCity/scripts.pory"
	.string "and when the Primal Titans failed to\l"
# 1594 "data/maps/SootopolisCity/scripts.pory"
	.string "awaken their true power, you blamed\l"
# 1595 "data/maps/SootopolisCity/scripts.pory"
	.string "yourselves.\p"
# 1596 "data/maps/SootopolisCity/scripts.pory"
	.string "Hahahaha…\n"
# 1597 "data/maps/SootopolisCity/scripts.pory"
	.string "You never even realized you had been\n"
# 1598 "data/maps/SootopolisCity/scripts.pory"
	.string "following my design from the start.\p"
# 1599 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON?\n"
# 1600 "data/maps/SootopolisCity/scripts.pory"
	.string "Poké Balls? Trainers?\p"
# 1601 "data/maps/SootopolisCity/scripts.pory"
	.string "Tell me, what are any of those things\n"
# 1602 "data/maps/SootopolisCity/scripts.pory"
	.string "compared to the power to reshape an\l"
# 1603 "data/maps/SootopolisCity/scripts.pory"
	.string "entire continent?\p"
# 1604 "data/maps/SootopolisCity/scripts.pory"
	.string "Do you finally understand?\n"
# 1605 "data/maps/SootopolisCity/scripts.pory"
	.string "Why would I waste my life training\l"
# 1606 "data/maps/SootopolisCity/scripts.pory"
	.string "ordinary Pokémon?\p"
# 1607 "data/maps/SootopolisCity/scripts.pory"
	.string "Look at my granddaughter, STELLA.\n"
# 1608 "data/maps/SootopolisCity/scripts.pory"
	.string "Years of training. Years of battles.\p"
# 1609 "data/maps/SootopolisCity/scripts.pory"
	.string "And what did it make her?\n"
# 1610 "data/maps/SootopolisCity/scripts.pory"
	.string "A Champion of Hoenn.\p"
# 1611 "data/maps/SootopolisCity/scripts.pory"
	.string "Impressive, perhaps…\n"
# 1612 "data/maps/SootopolisCity/scripts.pory"
	.string "but what could a Champion possibly do\l"
# 1613 "data/maps/SootopolisCity/scripts.pory"
	.string "against the power of a DEITY?\p"
# 1614 "data/maps/SootopolisCity/scripts.pory"
	.string "Nothing.\p"
# 1615 "data/maps/SootopolisCity/scripts.pory"
	.string "While she was perfecting her Pokémon,\n"
# 1616 "data/maps/SootopolisCity/scripts.pory"
	.string "I was building an empire.\p"
# 1617 "data/maps/SootopolisCity/scripts.pory"
	.string "GROUDON can raise continents.\n"
# 1618 "data/maps/SootopolisCity/scripts.pory"
	.string "KYOGRE can command the oceans.\p"
# 1619 "data/maps/SootopolisCity/scripts.pory"
	.string "With both under my control, I can reshape\n"
# 1620 "data/maps/SootopolisCity/scripts.pory"
	.string "land, redirect trade routes, command the\l"
# 1621 "data/maps/SootopolisCity/scripts.pory"
	.string "seas, and control the world's most\l"
# 1622 "data/maps/SootopolisCity/scripts.pory"
	.string "valuable resources.\p"
# 1623 "data/maps/SootopolisCity/scripts.pory"
	.string "And that is only the beginning.\p"
# 1624 "data/maps/SootopolisCity/scripts.pory"
	.string "Infinite mineral wealth.\n"
# 1625 "data/maps/SootopolisCity/scripts.pory"
	.string "Uncontested control of maritime routes.\p"
# 1626 "data/maps/SootopolisCity/scripts.pory"
	.string "Water. Land. Energy. Resources.\n"
# 1627 "data/maps/SootopolisCity/scripts.pory"
	.string "Everything the nations of this world\l"
# 1628 "data/maps/SootopolisCity/scripts.pory"
	.string "depend upon will pass through my hands.\p"
# 1629 "data/maps/SootopolisCity/scripts.pory"
	.string "There will be no war I cannot win.\n"
# 1630 "data/maps/SootopolisCity/scripts.pory"
	.string "No government I cannot pressure.\p"
# 1631 "data/maps/SootopolisCity/scripts.pory"
	.string "Not Hoenn.\n"
# 1632 "data/maps/SootopolisCity/scripts.pory"
	.string "The entire world.$"
# 1633 "data/maps/SootopolisCity/scripts.pory"

# 1634 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_MrStonePrimalCommand:
# 1635 "data/maps/SootopolisCity/scripts.pory"
	.string "MR. STONE: GROUDON! KYOGRE!\p"
# 1636 "data/maps/SootopolisCity/scripts.pory"
	.string "At last… I have everything I need.\n"
# 1637 "data/maps/SootopolisCity/scripts.pory"
	.string "The RED ORB. The BLUE ORB.\p"
# 1638 "data/maps/SootopolisCity/scripts.pory"
	.string "The ancient power of both titans is\n"
# 1639 "data/maps/SootopolisCity/scripts.pory"
	.string "finally within my grasp.\p"
# 1640 "data/maps/SootopolisCity/scripts.pory"
	.string "Return to your Primal forms and show\n"
# 1641 "data/maps/SootopolisCity/scripts.pory"
	.string "this world the power that shaped it.\p"
# 1642 "data/maps/SootopolisCity/scripts.pory"
	.string "From this moment on, the world will be\n"
# 1643 "data/maps/SootopolisCity/scripts.pory"
	.string "reshaped according to my will.$"
# 1644 "data/maps/SootopolisCity/scripts.pory"

# 1645 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_DevonBoatEmpty:
# 1646 "data/maps/SootopolisCity/scripts.pory"
	.string "The boat is empty.$"
# 1647 "data/maps/SootopolisCity/scripts.pory"

# 1648 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_DoorIsClosed:
# 1649 "data/maps/SootopolisCity/scripts.pory"
	.string "The door is closed.$"
# 1650 "data/maps/SootopolisCity/scripts.pory"

# 1651 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_PhysicallyFitLivingHere:
# 1652 "data/maps/SootopolisCity/scripts.pory"
	.string "Diving in the sea. Climbing up and\n"
# 1653 "data/maps/SootopolisCity/scripts.pory"
	.string "down stairs all the time…\p"
# 1654 "data/maps/SootopolisCity/scripts.pory"
	.string "If you live in this town, you end up\n"
# 1655 "data/maps/SootopolisCity/scripts.pory"
	.string "getting physically fit.$"
# 1656 "data/maps/SootopolisCity/scripts.pory"

# 1657 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_GiantPokemonSuddenlyAppeared:
# 1658 "data/maps/SootopolisCity/scripts.pory"
	.string "These giant POKéMON suddenly appeared\n"
# 1659 "data/maps/SootopolisCity/scripts.pory"
	.string "in the middle of the city!\p"
# 1660 "data/maps/SootopolisCity/scripts.pory"
	.string "And, I've never seen them before!\p"
# 1661 "data/maps/SootopolisCity/scripts.pory"
	.string "Why are they smashing into each\n"
# 1662 "data/maps/SootopolisCity/scripts.pory"
	.string "other like that?\p"
# 1663 "data/maps/SootopolisCity/scripts.pory"
	.string "Why can't they be friends, those\n"
# 1664 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON?$"
# 1665 "data/maps/SootopolisCity/scripts.pory"

# 1666 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_WhatIsThatGreenPokemon:
# 1667 "data/maps/SootopolisCity/scripts.pory"
	.string "What? What? What?\n"
# 1668 "data/maps/SootopolisCity/scripts.pory"
	.string "What is that green POKéMON?!$"
# 1669 "data/maps/SootopolisCity/scripts.pory"

# 1670 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_WhereDidLegendariesGo:
# 1671 "data/maps/SootopolisCity/scripts.pory"
	.string "GROUDON and KYOGRE…\n"
# 1672 "data/maps/SootopolisCity/scripts.pory"
	.string "Where did they go?\p"
# 1673 "data/maps/SootopolisCity/scripts.pory"
	.string "Will they cause droughts or downpours\n"
# 1674 "data/maps/SootopolisCity/scripts.pory"
	.string "somewhere else?$"
# 1675 "data/maps/SootopolisCity/scripts.pory"

# 1676 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_TwoPokemonArentAngry:
# 1677 "data/maps/SootopolisCity/scripts.pory"
	.string "I just get this sense somehow that\n"
# 1678 "data/maps/SootopolisCity/scripts.pory"
	.string "the two POKéMON aren't angry.\p"
# 1679 "data/maps/SootopolisCity/scripts.pory"
	.string "I think… They probably can't control\n"
# 1680 "data/maps/SootopolisCity/scripts.pory"
	.string "their own power…$"
# 1681 "data/maps/SootopolisCity/scripts.pory"

# 1682 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_FlyingMonStoppedRampage:
# 1683 "data/maps/SootopolisCity/scripts.pory"
	.string "That flying POKéMON came down from\n"
# 1684 "data/maps/SootopolisCity/scripts.pory"
	.string "the sky and stopped the rampaging\l"
# 1685 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON…$"
# 1686 "data/maps/SootopolisCity/scripts.pory"

# 1687 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_WonderWhatWorldIsLike:
# 1688 "data/maps/SootopolisCity/scripts.pory"
	.string "I… I've never been out of this city.\p"
# 1689 "data/maps/SootopolisCity/scripts.pory"
	.string "I wonder what the world is like on\n"
# 1690 "data/maps/SootopolisCity/scripts.pory"
	.string "the other side of this round sky?$"
# 1691 "data/maps/SootopolisCity/scripts.pory"

# 1692 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_ThisIsWicked:
# 1693 "data/maps/SootopolisCity/scripts.pory"
	.string "Wow!\n"
# 1694 "data/maps/SootopolisCity/scripts.pory"
	.string "This is wicked!$"
# 1695 "data/maps/SootopolisCity/scripts.pory"

# 1696 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_ThatWasWicked:
# 1697 "data/maps/SootopolisCity/scripts.pory"
	.string "Wow!\n"
# 1698 "data/maps/SootopolisCity/scripts.pory"
	.string "That was wicked!$"
# 1699 "data/maps/SootopolisCity/scripts.pory"

# 1700 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_GoRedAndBlueMon:
# 1701 "data/maps/SootopolisCity/scripts.pory"
	.string "Go for it, red POKéMON!\n"
# 1702 "data/maps/SootopolisCity/scripts.pory"
	.string "Don't back off, blue POKéMON!$"
# 1703 "data/maps/SootopolisCity/scripts.pory"

# 1704 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_DoYouKnowMonNames:
# 1705 "data/maps/SootopolisCity/scripts.pory"
	.string "… … … … … …\p"
# 1706 "data/maps/SootopolisCity/scripts.pory"
	.string "Hi, do you know the names of those\n"
# 1707 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON fighting over there?$"
# 1708 "data/maps/SootopolisCity/scripts.pory"

# 1709 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_GreenOneSettlesThings:
# 1710 "data/maps/SootopolisCity/scripts.pory"
	.string "I was wondering which one would win,\n"
# 1711 "data/maps/SootopolisCity/scripts.pory"
	.string "the red one or the blue one, but, oh no,\l"
# 1712 "data/maps/SootopolisCity/scripts.pory"
	.string "it's the green one that settles things!\p"
# 1713 "data/maps/SootopolisCity/scripts.pory"
	.string "Talk about a huge turn of events!$"
# 1714 "data/maps/SootopolisCity/scripts.pory"

# 1715 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_SeeingLegendWithOwnEyes:
# 1716 "data/maps/SootopolisCity/scripts.pory"
	.string "There's an ancient legend that claims\n"
# 1717 "data/maps/SootopolisCity/scripts.pory"
	.string "the land and sea were shaped by\l"
# 1718 "data/maps/SootopolisCity/scripts.pory"
	.string "a colossal battle between POKéMON.\p"
# 1719 "data/maps/SootopolisCity/scripts.pory"
	.string "Well, I'm seeing that happen with\n"
# 1720 "data/maps/SootopolisCity/scripts.pory"
	.string "my very own eyes!\p"
# 1721 "data/maps/SootopolisCity/scripts.pory"
	.string "Whoa! I never expected to be\n"
# 1722 "data/maps/SootopolisCity/scripts.pory"
	.string "witness to something this huge!$"
# 1723 "data/maps/SootopolisCity/scripts.pory"

# 1724 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_SawLegendWithOwnEyes:
# 1725 "data/maps/SootopolisCity/scripts.pory"
	.string "There's an ancient legend that claims\n"
# 1726 "data/maps/SootopolisCity/scripts.pory"
	.string "the land and sea were shaped by\l"
# 1727 "data/maps/SootopolisCity/scripts.pory"
	.string "a colossal battle between POKéMON.\p"
# 1728 "data/maps/SootopolisCity/scripts.pory"
	.string "Well, I saw that happen with\n"
# 1729 "data/maps/SootopolisCity/scripts.pory"
	.string "my very own eyes!\p"
# 1730 "data/maps/SootopolisCity/scripts.pory"
	.string "Whoa! I never expected to be\n"
# 1731 "data/maps/SootopolisCity/scripts.pory"
	.string "witness to something this huge!$"
# 1732 "data/maps/SootopolisCity/scripts.pory"

# 1733 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_BigPokemonFighting:
# 1734 "data/maps/SootopolisCity/scripts.pory"
	.string "A big POKéMON is fighting with\n"
# 1735 "data/maps/SootopolisCity/scripts.pory"
	.string "another big POKéMON!\p"
# 1736 "data/maps/SootopolisCity/scripts.pory"
	.string "Please, someone make them stop!$"
# 1737 "data/maps/SootopolisCity/scripts.pory"

# 1738 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_PrettyMonCameFromSky:
# 1739 "data/maps/SootopolisCity/scripts.pory"
	.string "A pretty POKéMON came down from\n"
# 1740 "data/maps/SootopolisCity/scripts.pory"
	.string "the sky…$"
# 1741 "data/maps/SootopolisCity/scripts.pory"

# 1742 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_SootopolisWillBeWrecked:
# 1743 "data/maps/SootopolisCity/scripts.pory"
	.string "Oh, no!\n"
# 1744 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS CITY will get wrecked!$"
# 1745 "data/maps/SootopolisCity/scripts.pory"

# 1746 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_SootopolisDidntGetWrecked:
# 1747 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS CITY didn't get wrecked!$"
# 1748 "data/maps/SootopolisCity/scripts.pory"

# 1749 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_NoOrdinaryTourist:
# 1750 "data/maps/SootopolisCity/scripts.pory"
	.string "Hm!\n"
# 1751 "data/maps/SootopolisCity/scripts.pory"
	.string "You've come all the way to SOOTOPOLIS?\l"
# 1752 "data/maps/SootopolisCity/scripts.pory"
	.string "You're no ordinary tourist.\p"
# 1753 "data/maps/SootopolisCity/scripts.pory"
	.string "But I suppose that doesn't make you\n"
# 1754 "data/maps/SootopolisCity/scripts.pory"
	.string "an extraordinary tourist, either.$"
# 1755 "data/maps/SootopolisCity/scripts.pory"

# 1756 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_CityRegainedCalm:
# 1757 "data/maps/SootopolisCity/scripts.pory"
	.string "The city has regained its calm…$"
# 1758 "data/maps/SootopolisCity/scripts.pory"

# 1759 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_CaveOfOriginPleaseLeave:
# 1760 "data/maps/SootopolisCity/scripts.pory"
	.string "Who might you be?\p"
# 1761 "data/maps/SootopolisCity/scripts.pory"
	.string "This is the CAVE OF ORIGIN.\p"
# 1762 "data/maps/SootopolisCity/scripts.pory"
	.string "The spirits of POKéMON, becalmed at\n"
# 1763 "data/maps/SootopolisCity/scripts.pory"
	.string "MT. PYRE, are said to be revived here.\p"
# 1764 "data/maps/SootopolisCity/scripts.pory"
	.string "Please leave.$"
# 1765 "data/maps/SootopolisCity/scripts.pory"

# 1766 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_LeadSuperiorTrainerToCave:
# 1767 "data/maps/SootopolisCity/scripts.pory"
	.string "A person with a strong will and\n"
# 1768 "data/maps/SootopolisCity/scripts.pory"
	.string "superior talent…\p"
# 1769 "data/maps/SootopolisCity/scripts.pory"
	.string "A TRAINER who has knowledge and\n"
# 1770 "data/maps/SootopolisCity/scripts.pory"
	.string "experience of many kinds of POKéMON…\p"
# 1771 "data/maps/SootopolisCity/scripts.pory"
	.string "If such a person were to appear, I was\n"
# 1772 "data/maps/SootopolisCity/scripts.pory"
	.string "instructed by WALLACE to lead that\l"
# 1773 "data/maps/SootopolisCity/scripts.pory"
	.string "TRAINER to this CAVE.$"
# 1774 "data/maps/SootopolisCity/scripts.pory"

# 1775 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_AwakenedPokemonClash:
# 1776 "data/maps/SootopolisCity/scripts.pory"
	.string "Oh, my…\p"
# 1777 "data/maps/SootopolisCity/scripts.pory"
	.string "The clash between the two awakened\n"
# 1778 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON was quelled by the awakening\l"
# 1779 "data/maps/SootopolisCity/scripts.pory"
	.string "of a third POKéMON…$"
# 1780 "data/maps/SootopolisCity/scripts.pory"

# 1781 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_CaveOfOriginSleepsToo:
# 1782 "data/maps/SootopolisCity/scripts.pory"
	.string "This is the CAVE OF ORIGIN…\p"
# 1783 "data/maps/SootopolisCity/scripts.pory"
	.string "With the passing of the crisis,\n"
# 1784 "data/maps/SootopolisCity/scripts.pory"
	.string "the cave, too, shall sleep…$"
# 1785 "data/maps/SootopolisCity/scripts.pory"

# 1786 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_SootopolisSkyBeautiful:
# 1787 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS sprang up as a town in\n"
# 1788 "data/maps/SootopolisCity/scripts.pory"
	.string "the crater of a volcano.\p"
# 1789 "data/maps/SootopolisCity/scripts.pory"
	.string "If you look up at the sky, the lip of\n"
# 1790 "data/maps/SootopolisCity/scripts.pory"
	.string "the crater is also visible.\l"
# 1791 "data/maps/SootopolisCity/scripts.pory"
	.string "So, all you see is the sky in a circle.\p"
# 1792 "data/maps/SootopolisCity/scripts.pory"
	.string "But that's what makes the sky above\n"
# 1793 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS the most beautiful.$"
# 1794 "data/maps/SootopolisCity/scripts.pory"

# 1795 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_GiganticPokemonFight:
# 1796 "data/maps/SootopolisCity/scripts.pory"
	.string "When two POKéMON that gigantic\n"
# 1797 "data/maps/SootopolisCity/scripts.pory"
	.string "are fighting that savagely, there's\l"
# 1798 "data/maps/SootopolisCity/scripts.pory"
	.string "not much that we can do.$"
# 1799 "data/maps/SootopolisCity/scripts.pory"

# 1800 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_FearedWorstWhenPokemonFlewDown:
# 1801 "data/maps/SootopolisCity/scripts.pory"
	.string "When that third POKéMON flew down,\n"
# 1802 "data/maps/SootopolisCity/scripts.pory"
	.string "I feared the worst.$"
# 1803 "data/maps/SootopolisCity/scripts.pory"

# 1804 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_NightSkyFavoriteScenery:
# 1805 "data/maps/SootopolisCity/scripts.pory"
	.string "A circle of a night sky framed by\n"
# 1806 "data/maps/SootopolisCity/scripts.pory"
	.string "the crater of a volcano…\p"
# 1807 "data/maps/SootopolisCity/scripts.pory"
	.string "And in that ring, stars flicker and\n"
# 1808 "data/maps/SootopolisCity/scripts.pory"
	.string "blink as if they were alive…\l"
# 1809 "data/maps/SootopolisCity/scripts.pory"
	.string "It's my favorite scenery.$"
# 1810 "data/maps/SootopolisCity/scripts.pory"

# 1811 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_WeatherWentWild:
# 1812 "data/maps/SootopolisCity/scripts.pory"
	.string "The weather was clear this morning,\n"
# 1813 "data/maps/SootopolisCity/scripts.pory"
	.string "but…\p"
# 1814 "data/maps/SootopolisCity/scripts.pory"
	.string "All of a sudden, dark clouds brewed up,\n"
# 1815 "data/maps/SootopolisCity/scripts.pory"
	.string "rain started falling in sheets, and\l"
# 1816 "data/maps/SootopolisCity/scripts.pory"
	.string "there was thunder and lightning, too.\p"
# 1817 "data/maps/SootopolisCity/scripts.pory"
	.string "The weather just went completely\n"
# 1818 "data/maps/SootopolisCity/scripts.pory"
	.string "wild!\p"
# 1819 "data/maps/SootopolisCity/scripts.pory"
	.string "Is all of this because of those\n"
# 1820 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON?$"
# 1821 "data/maps/SootopolisCity/scripts.pory"

# 1822 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_YouBroughtFlyingMon:
# 1823 "data/maps/SootopolisCity/scripts.pory"
	.string "Oh?\p"
# 1824 "data/maps/SootopolisCity/scripts.pory"
	.string "It was you who brought that flying\n"
# 1825 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON here?\p"
# 1826 "data/maps/SootopolisCity/scripts.pory"
	.string "Well, aren't you amazing!$"
# 1827 "data/maps/SootopolisCity/scripts.pory"

# 1828 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_GroudonPleaseStop:
# 1829 "data/maps/SootopolisCity/scripts.pory"
	.string "MAXIE: G… GROUDON…\n"
# 1830 "data/maps/SootopolisCity/scripts.pory"
	.string "Please! Stop what you're doing!\p"
# 1831 "data/maps/SootopolisCity/scripts.pory"
	.string "I know the extent of your power now!\p"
# 1832 "data/maps/SootopolisCity/scripts.pory"
	.string "If you keep going, all HOENN, not just\n"
# 1833 "data/maps/SootopolisCity/scripts.pory"
	.string "SOOTOPOLIS, will be utterly ruined!$"
# 1834 "data/maps/SootopolisCity/scripts.pory"

# 1835 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_AfterAllOurScheming:
# 1836 "data/maps/SootopolisCity/scripts.pory"
	.string "MAXIE: So the super-ancient POKéMON\n"
# 1837 "data/maps/SootopolisCity/scripts.pory"
	.string "weren't only GROUDON and KYOGRE…\p"
# 1838 "data/maps/SootopolisCity/scripts.pory"
	.string "After all our fruitless scheming and\n"
# 1839 "data/maps/SootopolisCity/scripts.pory"
	.string "frantic efforts, that one POKéMON's\l"
# 1840 "data/maps/SootopolisCity/scripts.pory"
	.string "simple action puts everything right\l"
# 1841 "data/maps/SootopolisCity/scripts.pory"
	.string "again as if nothing had happened…\p"
# 1842 "data/maps/SootopolisCity/scripts.pory"
	.string "Fu…\n"
# 1843 "data/maps/SootopolisCity/scripts.pory"
	.string "Fuhahaha…$"
# 1844 "data/maps/SootopolisCity/scripts.pory"

# 1845 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_KyogreCalmDown:
# 1846 "data/maps/SootopolisCity/scripts.pory"
	.string "ARCHIE: KYOGRE! What's wrong?!\n"
# 1847 "data/maps/SootopolisCity/scripts.pory"
	.string "Look over here! It's the RED ORB!\l"
# 1848 "data/maps/SootopolisCity/scripts.pory"
	.string "Calm down! KYOGRE!\p"
# 1849 "data/maps/SootopolisCity/scripts.pory"
	.string "… … … … … …\n"
# 1850 "data/maps/SootopolisCity/scripts.pory"
	.string "… … … … … …\p"
# 1851 "data/maps/SootopolisCity/scripts.pory"
	.string "It's no good!\n"
# 1852 "data/maps/SootopolisCity/scripts.pory"
	.string "It's not responding at all!$"
# 1853 "data/maps/SootopolisCity/scripts.pory"

# 1854 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_TryingMeaninglessToPokemon:
# 1855 "data/maps/SootopolisCity/scripts.pory"
	.string "ARCHIE: KYOGRE and GROUDON both\n"
# 1856 "data/maps/SootopolisCity/scripts.pory"
	.string "flew off to who knows where.\p"
# 1857 "data/maps/SootopolisCity/scripts.pory"
	.string "The weather in HOENN has returned\n"
# 1858 "data/maps/SootopolisCity/scripts.pory"
	.string "to its normal state…\p"
# 1859 "data/maps/SootopolisCity/scripts.pory"
	.string "Haha…\n"
# 1860 "data/maps/SootopolisCity/scripts.pory"
	.string "Hahaha…\p"
# 1861 "data/maps/SootopolisCity/scripts.pory"
	.string "Maybe what we were trying to do was\n"
# 1862 "data/maps/SootopolisCity/scripts.pory"
	.string "something small, even meaningless,\l"
# 1863 "data/maps/SootopolisCity/scripts.pory"
	.string "to POKéMON…$"
# 1864 "data/maps/SootopolisCity/scripts.pory"

# 1865 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_InvolvedWithCrisisComeWithMe:
# 1866 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: Those POKéMON fighting…\n"
# 1867 "data/maps/SootopolisCity/scripts.pory"
	.string "GROUDON… And KYOGRE…\p"
# 1868 "data/maps/SootopolisCity/scripts.pory"
	.string "The two super-ancient POKéMON\n"
# 1869 "data/maps/SootopolisCity/scripts.pory"
	.string "were awakened from a long sleep…\p"
# 1870 "data/maps/SootopolisCity/scripts.pory"
	.string "And now they are smashing each other\n"
# 1871 "data/maps/SootopolisCity/scripts.pory"
	.string "with their uncontrollable energy…\p"
# 1872 "data/maps/SootopolisCity/scripts.pory"
	.string "…{PLAYER}{KUN}.\p"
# 1873 "data/maps/SootopolisCity/scripts.pory"
	.string "You being here now I'll take to mean\n"
# 1874 "data/maps/SootopolisCity/scripts.pory"
	.string "that you're prepared to become\l"
# 1875 "data/maps/SootopolisCity/scripts.pory"
	.string "involved in this crisis.\p"
# 1876 "data/maps/SootopolisCity/scripts.pory"
	.string "Well, then, there's someone that\n"
# 1877 "data/maps/SootopolisCity/scripts.pory"
	.string "I'd like you to meet.\p"
# 1878 "data/maps/SootopolisCity/scripts.pory"
	.string "Come with me, please.$"
# 1879 "data/maps/SootopolisCity/scripts.pory"

# 1880 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_DoesThisMakeYourFearPokemon:
# 1881 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: Listen, {PLAYER}{KUN}.\p"
# 1882 "data/maps/SootopolisCity/scripts.pory"
	.string "Does seeing GROUDON and KYOGRE make\n"
# 1883 "data/maps/SootopolisCity/scripts.pory"
	.string "you think POKéMON are to be feared?\p"
# 1884 "data/maps/SootopolisCity/scripts.pory"
	.string "But that's not true.\n"
# 1885 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON are really more…\p"
# 1886 "data/maps/SootopolisCity/scripts.pory"
	.string "…Why am I asking you this?\n"
# 1887 "data/maps/SootopolisCity/scripts.pory"
	.string "You already know.$"
# 1888 "data/maps/SootopolisCity/scripts.pory"

# 1889 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_HereWereAreHelpWallace:
# 1890 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: Okay, here we are!\p"
# 1891 "data/maps/SootopolisCity/scripts.pory"
	.string "Inside here you'll find someone named\n"
# 1892 "data/maps/SootopolisCity/scripts.pory"
	.string "WALLACE.\p"
# 1893 "data/maps/SootopolisCity/scripts.pory"
	.string "I think you have what's needed to\n"
# 1894 "data/maps/SootopolisCity/scripts.pory"
	.string "help him…$"
# 1895 "data/maps/SootopolisCity/scripts.pory"

# 1896 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_KnowWhatsNeededToHelpHim:
# 1897 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: I think you have what's\n"
# 1898 "data/maps/SootopolisCity/scripts.pory"
	.string "needed to help him…$"
# 1899 "data/maps/SootopolisCity/scripts.pory"

# 1900 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_NeverBeenToSkyPillar:
# 1901 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: The SKY PILLAR…\p"
# 1902 "data/maps/SootopolisCity/scripts.pory"
	.string "I've never been there.\n"
# 1903 "data/maps/SootopolisCity/scripts.pory"
	.string "I wonder where it could be?$"
# 1904 "data/maps/SootopolisCity/scripts.pory"

# 1905 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_SoThatsRayquaza:
# 1906 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: So that's RAYQUAZA…\p"
# 1907 "data/maps/SootopolisCity/scripts.pory"
	.string "It's incredible how the two rampaging\n"
# 1908 "data/maps/SootopolisCity/scripts.pory"
	.string "POKéMON would flee from it in fear…$"
# 1909 "data/maps/SootopolisCity/scripts.pory"

# 1910 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_MaxieArchieLeft:
# 1911 "data/maps/SootopolisCity/scripts.pory"
	.string "STEVEN: It looks like both MAGNUS and\n"
# 1912 "data/maps/SootopolisCity/scripts.pory"
	.string "INAE have gone away somewhere.\p"
# 1913 "data/maps/SootopolisCity/scripts.pory"
	.string "Perhaps they've gone to MT. PYRE to\n"
# 1914 "data/maps/SootopolisCity/scripts.pory"
	.string "return those ORBS…$"
# 1915 "data/maps/SootopolisCity/scripts.pory"

# 1916 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_HaventYouScaledSkyPillar:
# 1917 "data/maps/SootopolisCity/scripts.pory"
	.string "WALLACE: Oh?\n"
# 1918 "data/maps/SootopolisCity/scripts.pory"
	.string "{PLAYER}{KUN}?\p"
# 1919 "data/maps/SootopolisCity/scripts.pory"
	.string "Haven't you scaled the SKY PILLAR\n"
# 1920 "data/maps/SootopolisCity/scripts.pory"
	.string "yet?\p"
# 1921 "data/maps/SootopolisCity/scripts.pory"
	.string "I'm sure that you can make it to\n"
# 1922 "data/maps/SootopolisCity/scripts.pory"
	.string "the top of the SKY PILLAR…$"
# 1923 "data/maps/SootopolisCity/scripts.pory"

# 1924 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_AquaMagmaDidntMeanHarm:
# 1925 "data/maps/SootopolisCity/scripts.pory"
	.string "WALLACE: {PLAYER}{KUN}…\p"
# 1926 "data/maps/SootopolisCity/scripts.pory"
	.string "The leaders of TEAM MAGMA and AQUA,\n"
# 1927 "data/maps/SootopolisCity/scripts.pory"
	.string "I don't think they meant harm.\p"
# 1928 "data/maps/SootopolisCity/scripts.pory"
	.string "It wouldn't hurt to hear what they\n"
# 1929 "data/maps/SootopolisCity/scripts.pory"
	.string "have to say for themselves.$"
# 1930 "data/maps/SootopolisCity/scripts.pory"

# 1931 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_ThankYouForHelpAcceptThis:
# 1932 "data/maps/SootopolisCity/scripts.pory"
	.string "WALLACE: {PLAYER}{KUN}…\n"
# 1933 "data/maps/SootopolisCity/scripts.pory"
	.string "My eyes didn't deceive me.\p"
# 1934 "data/maps/SootopolisCity/scripts.pory"
	.string "Thanks to your help, SOOTOPOLIS…\n"
# 1935 "data/maps/SootopolisCity/scripts.pory"
	.string "No, all of HOENN was saved.\p"
# 1936 "data/maps/SootopolisCity/scripts.pory"
	.string "On behalf of the people, I thank you.\p"
# 1937 "data/maps/SootopolisCity/scripts.pory"
	.string "This is a gift from me.\n"
# 1938 "data/maps/SootopolisCity/scripts.pory"
	.string "Please accept it.$"
# 1939 "data/maps/SootopolisCity/scripts.pory"

# 1940 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_ExplainWaterfallGoToGym:
# 1941 "data/maps/SootopolisCity/scripts.pory"
	.string "That HIDDEN MACHINE contains\n"
# 1942 "data/maps/SootopolisCity/scripts.pory"
	.string "WATERFALL.\p"
# 1943 "data/maps/SootopolisCity/scripts.pory"
	.string "If you have the RAIN BADGE, a POKéMON\n"
# 1944 "data/maps/SootopolisCity/scripts.pory"
	.string "that has learned that HM move can\l"
# 1945 "data/maps/SootopolisCity/scripts.pory"
	.string "force its way up waterfalls.\p"
# 1946 "data/maps/SootopolisCity/scripts.pory"
	.string "And where does one get the RAIN BADGE?\n"
# 1947 "data/maps/SootopolisCity/scripts.pory"
	.string "You know, don't you?\p"
# 1948 "data/maps/SootopolisCity/scripts.pory"
	.string "That's right! You have to beat\n"
# 1949 "data/maps/SootopolisCity/scripts.pory"
	.string "the SOOTOPOLIS GYM LEADER.\p"
# 1950 "data/maps/SootopolisCity/scripts.pory"
	.string "When you're all set to go, step through\n"
# 1951 "data/maps/SootopolisCity/scripts.pory"
	.string "that door.$"
# 1952 "data/maps/SootopolisCity/scripts.pory"

# 1953 "data/maps/SootopolisCity/scripts.pory"
SootopolisCity_Text_DazzledByMentor:
# 1954 "data/maps/SootopolisCity/scripts.pory"
	.string "WALLACE: I'm sure that you will be\n"
# 1955 "data/maps/SootopolisCity/scripts.pory"
	.string "dazzled by my mentor's breathtakingly\l"
# 1956 "data/maps/SootopolisCity/scripts.pory"
	.string "elegant battle style.$"
