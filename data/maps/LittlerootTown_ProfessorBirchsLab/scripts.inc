# 1 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 2 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_MapScripts::
# 3 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_ProfessorBirchsLab_OnTransition
# 4 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_ProfessorBirchsLab_OnWarp
# 5 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_ProfessorBirchsLab_OnFrame
# 6 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.byte 0
# 7 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 8 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ State descriptions for VAR_DEX_UPGRADE_JOHTO_STARTER_STATE
# 9 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 1: Beat Elite Four, Dex upgrade ready
# 10 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 2: Received National Dex
# 11 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 3: Left lab after receiving National Dex
# 12 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 4: Entered lab after catching all Hoenn mons
# 13 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 5: Birch told player to choose Johto starter
# 14 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 6: Chose Johto starter
# 15 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 16 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ State descriptions for VAR_BIRCH_LAB_STATE
# 17 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 1: Never occurs
# 18 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 2: Chose starter
# 19 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 3: Received starter in lab
# 20 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 4: Defeated rival on Route 103
# 21 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ 5: Received pokedex
# 22 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 23 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_OnTransition:
# 24 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 25 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call ProfAcacia_EventScript_UpdateLocation
# 26 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, LittlerootTown_ProfessorBirchsLab_EventScript_SetAfterJohtoStarterLayout
# 27 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 4, LittlerootTown_ProfessorBirchsLab_EventScript_SetJohtoStarterLayout
# 28 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 3, LittlerootTown_ProfessorBirchsLab_EventScript_CheckReadyForJohtoStarter
# 29 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 30 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 31 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CheckReadyForJohtoStarter::
# 32 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	specialvar VAR_RESULT, HasAllHoennMonsForJohtoStarter
# 33 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, LittlerootTown_ProfessorBirchsLab_EventScript_SetReadyForJohtoStarter
# 34 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectmovementtype LOCALID_BIRCHS_LAB_RIVAL, MOVEMENT_TYPE_WANDER_UP_AND_DOWN
# 35 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxyperm LOCALID_BIRCHS_LAB_RIVAL, 5, 10
# 36 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 37 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 38 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SetReadyForJohtoStarter::
# 39 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 4
# 40 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_SetJohtoStarterLayout
# 41 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 42 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SetJohtoStarterLayout::
# 43 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setmaplayoutindex LAYOUT_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB_WITH_TABLE
# 44 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 45 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 46 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SetAfterJohtoStarterLayout::
# 47 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setmaplayoutindex LAYOUT_LITTLEROOT_TOWN_PROFESSOR_BIRCHS_LAB_WITH_TABLE
# 48 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectmovementtype LOCALID_BIRCHS_LAB_RIVAL, MOVEMENT_TYPE_WANDER_UP_AND_DOWN
# 49 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxyperm LOCALID_BIRCHS_LAB_RIVAL, 5, 10
# 50 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 51 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 52 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_OnWarp:
# 53 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_BIRCH_LAB_STATE, 2, LittlerootTown_ProfessorBirchsLab_EventScript_SetPlayerPosForReceiveStarter
# 54 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_ProfessorBirchsLab_EventScript_SetObjectPosForDexUpgrade
# 55 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_ProfessorBirchsLab_EventScript_SetObjectPosForDexUpgrade
# 56 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 3, LittlerootTown_ProfessorBirchsLab_EventScript_AddRivalObject
# 57 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, LittlerootTown_ProfessorBirchsLab_EventScript_AddRivalObject
# 58 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 4, LittlerootTown_ProfessorBirchsLab_EventScript_SetObjectPosForJohtoStarters
# 59 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 5, LittlerootTown_ProfessorBirchsLab_EventScript_SetObjectPosForJohtoStarters
# 60 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.2byte 0
# 61 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 62 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SetPlayerPosForReceiveStarter::
# 63 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 64 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 65 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 66 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SetObjectPosForDexUpgrade::
# 67 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 68 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_BIRCH
# 69 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_RIVAL
# 70 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_RIVAL, DIR_NORTH
# 71 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_RIVAL, 5, 5
# 72 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_BIRCH, DIR_SOUTH
# 73 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_BIRCH, 6, 4
# 74 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_AIDE, DIR_EAST
# 75 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_AIDE, 10, 10
# 76 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 77 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 78 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AddRivalObject::
# 79 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_RIVAL
# 80 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 81 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 82 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SetObjectPosForJohtoStarters::
# 83 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_CYNDAQUIL_BALL
# 84 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_TOTODILE_BALL
# 85 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_CHIKORITA_BALL
# 86 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	addobject LOCALID_BIRCHS_LAB_RIVAL
# 87 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_CYNDAQUIL_BALL, DIR_SOUTH
# 88 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_CYNDAQUIL_BALL, 8, 4
# 89 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_TOTODILE_BALL, DIR_SOUTH
# 90 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_TOTODILE_BALL, 9, 4
# 91 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_CHIKORITA_BALL, DIR_SOUTH
# 92 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_CHIKORITA_BALL, 10, 4
# 93 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_BIRCH, DIR_SOUTH
# 94 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_BIRCH, 6, 4
# 95 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	turnobject LOCALID_BIRCHS_LAB_RIVAL, DIR_EAST
# 96 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setobjectxy LOCALID_BIRCHS_LAB_RIVAL, 5, 5
# 97 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 98 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 99 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_OnFrame:
# 100 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_BIRCH_LAB_STATE, 2, LittlerootTown_ProfessorBirchsLab_EventScript_GiveStarterEvent
# 101 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_BIRCH_LAB_STATE, 4, LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedexEvent
# 102 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_ProfessorBirchsLab_EventScript_UpgradeToNationalDex
# 103 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	map_script_2 VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 4, LittlerootTown_ProfessorBirchsLab_EventScript_ChooseJohtoStarter
# 104 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.2byte 0
# 105 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 106 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ The starter is technically given prior to this on Route 101 by special ChooseStarter
# 107 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ This is just where the game tells you its yours and lets you nickname it
# 108 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveStarterEvent::
# 109 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lockall
# 110 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	bufferleadmonspeciesname STR_VAR_1
# 111 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	message LittlerootTown_ProfessorBirchsLab_Text_LikeYouToHavePokemon
# 112 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmessage
# 113 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 114 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitfanfare
# 115 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	specialvar VAR_RESULT, ShouldForceStarterNickname
# 116 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, LittlerootTown_ProfessorBirchsLab_EventScript_NicknameStarter
# 117 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_WhyNotGiveNicknameToMon, MSGBOX_YESNO
# 118 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_NicknameStarter
# 119 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_GoSeeRival
# 120 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 121 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 122 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_NicknameStarter::
# 123 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_0x8004, 0
# 124 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 125 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_GoSeeRival
# 126 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 127 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 128 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GoSeeRival::
# 129 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MightBeGoodIdeaToGoSeeRival, MSGBOX_YESNO
# 130 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_AgreeToSeeRival
# 131 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_DeclineSeeingRival
# 132 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 133 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 134 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AgreeToSeeRival::
# 135 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_GetRivalToTeachYou, MSGBOX_DEFAULT
# 136 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_101_BOY
# 137 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_BIRCH_LAB_STATE, 3
# 138 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 139 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 140 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 141 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_DeclineSeeingRival::
# 142 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_DontBeThatWay, MSGBOX_YESNO
# 143 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_AgreeToSeeRival
# 144 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_DeclineSeeingRival
# 145 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 146 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 147 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedexEvent::
# 148 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lockall
# 149 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_ProfessorBirchsLab_Movement_PlayerEnterLabForPokedex
# 150 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 151 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex
# 152 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 153 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 154 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Movement_PlayerEnterLabForPokedex:
# 155 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 156 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 157 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 158 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 159 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 160 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 161 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 162 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	step_end
# 163 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 164 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_UpgradeToNationalDex::
# 165 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lockall
# 166 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 30
# 167 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_OtherRegionsUpgradeToNational, MSGBOX_DEFAULT
# 168 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	closemessage
# 169 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_BIRCH, LittlerootTown_ProfessorBirchsLab_Movement_BirchRetrievePokedexes
# 170 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 171 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 20
# 172 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playse SE_CLICK
# 173 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 10
# 174 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playse SE_CLICK
# 175 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 10
# 176 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playse SE_CLICK
# 177 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 10
# 178 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playse SE_CLICK
# 179 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 20
# 180 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_RIVAL, Common_Movement_WalkInPlaceFasterRight
# 181 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 182 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 183 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 184 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_ProfessorBirchsLab_EventScript_MayUpgradeComment
# 185 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanUpgradeComment
# 186 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playse SE_PC_ON
# 187 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitse
# 188 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay 20
# 189 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_BIRCH, LittlerootTown_ProfessorBirchsLab_Movement_BirchReturnPokedex
# 190 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 191 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_RIVAL, Common_Movement_WalkInPlaceFasterUp
# 192 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 193 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 194 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_OkayAllDone, MSGBOX_DEFAULT
# 195 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 196 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	message LittlerootTown_ProfessorBirchsLab_Text_PokedexUpgradedToNational
# 197 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmessage
# 198 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitfanfare
# 199 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_SYS_NATIONAL_DEX
# 200 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	special EnableNationalPokedex
# 201 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting2, MSGBOX_DEFAULT
# 202 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	closemessage
# 203 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCH
# 204 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_RIVAL
# 205 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2
# 206 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_SCOTT_BF_CALL_STEP_COUNTER, 0
# 207 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_SCOTT_CALL_BATTLE_FRONTIER
# 208 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 209 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 210 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 211 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayUpgradeComment::
# 212 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 213 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MayUpgradeSoCool, MSGBOX_DEFAULT
# 214 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 215 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	closemessage
# 216 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 217 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 218 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanUpgradeComment::
# 219 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 220 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BrendanYouCanThankMe, MSGBOX_DEFAULT
# 221 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 222 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	closemessage
# 223 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 224 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 225 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Movement_BirchRetrievePokedexes:
# 226 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_left
# 227 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_in_place_faster_down
# 228 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay_16
# 229 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay_16
# 230 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_right
# 231 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_in_place_faster_down
# 232 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay_16
# 233 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	delay_16
# 234 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_right
# 235 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_down
# 236 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_down
# 237 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_down
# 238 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_down
# 239 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_right
# 240 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_right
# 241 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_right
# 242 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_in_place_faster_up
# 243 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	step_end
# 244 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 245 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Movement_BirchReturnPokedex:
# 246 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_left
# 247 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_left
# 248 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_left
# 249 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 250 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 251 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 252 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 253 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_left
# 254 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_in_place_faster_down
# 255 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	step_end
# 256 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 257 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ChooseJohtoStarter::
# 258 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lockall
# 259 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_ProfessorBirchsLab_Movement_PlayerEnterLabForJohtoStarter
# 260 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 261 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_CompletedDexChoosePokemon, MSGBOX_DEFAULT
# 262 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 5
# 263 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 264 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 265 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 266 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Movement_PlayerEnterLabForJohtoStarter:
# 267 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 268 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 269 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 270 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 271 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 272 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 273 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_up
# 274 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	step_end
# 275 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 276 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Aide::
# 277 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lock
# 278 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	faceplayer
# 279 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_POKEDEX_FROM_BIRCH, LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPokedex
# 280 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 3, LittlerootTown_ProfessorBirchsLab_EventScript_AideReceivedStarter
# 281 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_BIRCH_AIDE_MET, LittlerootTown_ProfessorBirchsLab_EventScript_AideAlreadyMet
# 282 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BirchAwayOnFieldwork, MSGBOX_DEFAULT
# 283 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_BIRCH_AIDE_MET
# 284 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 285 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 286 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 287 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideAlreadyMet::
# 288 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BirchIsntOneForDeskWork, MSGBOX_DEFAULT
# 289 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 290 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 291 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 292 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideReceivedStarter::
# 293 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BirchEnjoysRivalsHelpToo, MSGBOX_DEFAULT
# 294 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 295 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 296 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 297 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPokedex::
# 298 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_CheckAllAideGifts
# 299 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, LittlerootTown_ProfessorBirchsLab_EventScript_AideAllGiftsGiven
# 300 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ Visiting rewards accept any matching follower, including a traded one.
# 301 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_CountCaughtPokemon
# 302 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	specialvar VAR_TEMP_1, Script_GetFollowerSpecies
# 303 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_TEMP_1, SPECIES_PORYGON, LittlerootTown_ProfessorBirchsLab_EventScript_CheckUpgradeReward
# 304 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_TEMP_1, SPECIES_PORYGON2, LittlerootTown_ProfessorBirchsLab_EventScript_CheckDubiousDiscReward
# 305 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_CheckAideShop
# 306 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 307 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 308 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CheckAllAideGifts::
# 309 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_RESULT, FALSE
# 310 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TOGEPI_EGG, LittlerootTown_ProfessorBirchsLab_EventScript_AideGiftsNotComplete
# 311 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_unset FLAG_RECEIVED_PORYGON_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideGiftsNotComplete
# 312 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_unset FLAG_RECEIVED_UPGRADE_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideGiftsNotComplete
# 313 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_unset FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideGiftsNotComplete
# 314 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_RESULT, TRUE
# 315 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 316 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 317 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideGiftsNotComplete::
# 318 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 319 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 320 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideAllGiftsGiven::
# 321 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_AllGiftsGiven, MSGBOX_YESNO
# 322 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_AideEvolutionItemShop
# 323 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_EndAideConversation
# 324 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 325 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 326 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ Unclaimed Pokemon gifts precede their repeat dialogue, with Togepi first.
# 327 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideDexRewards::
# 328 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_TOGEPI_EGG, LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterTogepi
# 329 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_Register10PokemonForTogepiEgg, MSGBOX_DEFAULT
# 330 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_CountSeenPokemon
# 331 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_TEMP_0, 10, LittlerootTown_ProfessorBirchsLab_EventScript_GiveTogepiEgg
# 332 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 333 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 334 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 335 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CountSeenPokemon::
# 336 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_0x8004, 0 @ Custom Hoenn dex, regardless of prior scripts or National mode.
# 337 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	special ScriptGetPokedexInfo
# 338 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	copyvar VAR_TEMP_0, VAR_0x8005
# 339 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 340 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 341 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CountCaughtPokemon::
# 342 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_0x8004, 0
# 343 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	special ScriptGetPokedexInfo
# 344 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	copyvar VAR_TEMP_0, VAR_0x8006 @ Unique caught entries, not total captures or seen entries.
# 345 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 346 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 347 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveTogepiEgg::
# 348 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_YouHave10PokemonHeresTogepiEgg, MSGBOX_DEFAULT
# 349 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveegg SPECIES_TOGEPI
# 350 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_CANT_GIVE, LittlerootTown_ProfessorBirchsLab_EventScript_NoRoomForTogepiEgg
# 351 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_RECEIVED_TOGEPI_EGG
# 352 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 353 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	message LittlerootTown_ProfessorBirchsLab_Text_ReceivedTogepiEgg
# 354 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmessage
# 355 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitfanfare
# 356 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_TakeGoodCareOfTogepi, MSGBOX_DEFAULT
# 357 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 358 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 359 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 360 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_NoRoomForTogepiEgg::
# 361 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_NoRoomForEgg, MSGBOX_DEFAULT
# 362 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 363 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 364 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 365 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterTogepi::
# 366 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_PORYGON_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon
# 367 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_CountCaughtPokemon
# 368 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_TEMP_0, 100, LittlerootTown_ProfessorBirchsLab_EventScript_GivePorygon
# 369 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_HowIsTogepiDoing, MSGBOX_DEFAULT
# 370 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_Register100PokemonForPorygon, MSGBOX_DEFAULT
# 371 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 372 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 373 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 374 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GivePorygon::
# 375 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_YouHave100PokemonHeresPorygon, MSGBOX_DEFAULT
# 376 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	bufferspeciesname STR_VAR_1, SPECIES_PORYGON
# 377 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_PORYGON
# 378 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	givemon SPECIES_PORYGON, 5
# 379 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PARTY, LittlerootTown_ProfessorBirchsLab_EventScript_SendPorygonToParty
# 380 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PC, LittlerootTown_ProfessorBirchsLab_EventScript_SendPorygonToPC
# 381 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto Common_EventScript_NoMoreRoomForPokemon
# 382 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 383 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 384 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendPorygonToParty::
# 385 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_RECEIVED_PORYGON_LITTLEROOT
# 386 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedPorygon
# 387 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 388 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_FinishPorygonReward
# 389 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_GetGiftMonPartySlot
# 390 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 391 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_FinishPorygonReward
# 392 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 393 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 394 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendPorygonToPC::
# 395 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_RECEIVED_PORYGON_LITTLEROOT
# 396 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedPorygon
# 397 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 398 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_PorygonTransferredToPC
# 399 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedBoxMon
# 400 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_PorygonTransferredToPC
# 401 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 402 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 403 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_PorygonTransferredToPC::
# 404 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_TransferredToPC
# 405 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_FinishPorygonReward
# 406 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 407 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 408 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedPorygon::
# 409 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 410 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	message LittlerootTown_ProfessorBirchsLab_Text_ReceivedPorygon
# 411 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmessage
# 412 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitfanfare
# 413 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 414 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 415 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_FinishPorygonReward::
# 416 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_TakeGoodCareOfPorygon, MSGBOX_DEFAULT
# 417 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 418 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 419 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 420 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterPorygon::
# 421 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_UPGRADE_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward
# 422 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideEvolutionItemShop
# 423 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_HowIsPorygonDoing, MSGBOX_DEFAULT
# 424 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 425 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 426 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 427 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CheckUpgradeReward::
# 428 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_UPGRADE_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_CheckAideShop
# 429 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_TEMP_0, 200, LittlerootTown_ProfessorBirchsLab_EventScript_GiveUpgrade
# 430 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_CheckAideShop
# 431 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 432 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 433 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CheckDubiousDiscReward::
# 434 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_CheckAideShop
# 435 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_TEMP_0, 300, LittlerootTown_ProfessorBirchsLab_EventScript_GiveDubiousDisc
# 436 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_CheckAideShop
# 437 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 438 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 439 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveUpgrade::
# 440 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_PorygonVisitUpgrade, MSGBOX_DEFAULT
# 441 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveitem ITEM_UPGRADE
# 442 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull
# 443 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_RECEIVED_UPGRADE_LITTLEROOT
# 444 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward
# 445 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 446 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 447 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideAfterUpgradeReward::
# 448 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_AfterUpgradeReward, MSGBOX_YESNO
# 449 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_OfferUpgrade
# 450 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_EndAideConversation
# 451 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 452 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 453 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveDubiousDisc::
# 454 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_Porygon2VisitDubiousDisc, MSGBOX_DEFAULT
# 455 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveitem ITEM_DUBIOUS_DISC
# 456 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull
# 457 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT
# 458 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_AfterDubiousDiscReward, MSGBOX_DEFAULT
# 459 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 460 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 461 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 462 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CheckAideShop::
# 463 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ Unclaimed Pokemon gifts precede repeat dialogue; do not shop before it.
# 464 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_AideDexRewards
# 465 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 466 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 467 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideEvolutionItemShop::
# 468 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_set FLAG_RECEIVED_UPGRADE_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_OfferUpgrade
# 469 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_OfferDubiousDisc
# 470 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 471 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 472 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_OfferUpgrade::
# 473 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BuyUpgrade, MSGBOX_YESNO
# 474 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_BuyUpgrade
# 475 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_OfferDubiousDisc
# 476 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 477 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 478 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_OfferDubiousDisc::
# 479 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_unset FLAG_RECEIVED_DUBIOUS_DISC_LITTLEROOT, LittlerootTown_ProfessorBirchsLab_EventScript_AideShopExit
# 480 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BuyDubiousDisc, MSGBOX_YESNO
# 481 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, LittlerootTown_ProfessorBirchsLab_EventScript_BuyDubiousDisc
# 482 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_AideShopExit
# 483 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 484 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 485 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideShopExit::
# 486 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ Do not replay a reward-stage dialogue after declining a price offer.
# 487 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_EndAideConversation
# 488 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 489 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 490 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_EndAideConversation::
# 491 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 492 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 493 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 494 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BuyUpgrade::
# 495 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_TEMP_2, ITEM_UPGRADE
# 496 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_BuyEvolutionItem
# 497 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 498 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 499 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BuyDubiousDisc::
# 500 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_TEMP_2, ITEM_DUBIOUS_DISC
# 501 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_BuyEvolutionItem
# 502 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 503 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 504 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BuyEvolutionItem::
# 505 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkmoney 10000
# 506 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_AideNotEnoughMoney
# 507 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkitemspace VAR_TEMP_2, 1
# 508 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull
# 509 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveitem VAR_TEMP_2, 1
# 510 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull
# 511 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ Never charge for a canceled or failed delivery.
# 512 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removemoney 10000
# 513 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playse SE_SHOP
# 514 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_AideEvolutionItemShop
# 515 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 516 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 517 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideNotEnoughMoney::
# 518 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_AideNotEnoughMoney, MSGBOX_DEFAULT
# 519 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 520 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 521 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 522 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AideBagFull::
# 523 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 524 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 525 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 526 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 527 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Cyndaquil::
# 528 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 529 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, LittlerootTown_ProfessorBirchsLab_EventScript_AlreadyChoseJohtoStarter
# 530 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_BIRCH, Common_Movement_WalkInPlaceFasterRight
# 531 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 532 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	showmonpic SPECIES_CYNDAQUIL, 10, 3
# 533 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_YoullTakeCyndaquil, MSGBOX_YESNO
# 534 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_TakeYourTime
# 535 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_GiveCyndaquil
# 536 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 537 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 538 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Totodile::
# 539 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 540 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, LittlerootTown_ProfessorBirchsLab_EventScript_AlreadyChoseJohtoStarter
# 541 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_BIRCH, Common_Movement_WalkInPlaceFasterRight
# 542 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 543 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	showmonpic SPECIES_TOTODILE, 10, 3
# 544 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_YoullTakeTotodile, MSGBOX_YESNO
# 545 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_TakeYourTime
# 546 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_GiveTotodile
# 547 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 548 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 549 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Chikorita::
# 550 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 551 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, LittlerootTown_ProfessorBirchsLab_EventScript_AlreadyChoseJohtoStarter
# 552 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_BIRCH, Common_Movement_WalkInPlaceFasterRight
# 553 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 554 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	showmonpic SPECIES_CHIKORITA, 10, 3
# 555 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_YoullTakeChikorita, MSGBOX_YESNO
# 556 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_TakeYourTime
# 557 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_GiveChikorita
# 558 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 559 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 560 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AlreadyChoseJohtoStarter::
# 561 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BetterLeaveOthersAlone, MSGBOX_DEFAULT
# 562 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 563 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 564 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 565 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_TakeYourTime::
# 566 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 567 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_TakeYourTimeAllInvaluable, MSGBOX_DEFAULT
# 568 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 569 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 570 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 571 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveCyndaquil::
# 572 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	bufferspeciesname STR_VAR_1, SPECIES_CYNDAQUIL
# 573 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_CYNDAQUIL
# 574 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	givemon SPECIES_CYNDAQUIL, 5
# 575 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PARTY, LittlerootTown_ProfessorBirchsLab_EventScript_SendCyndaquilToParty
# 576 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PC, LittlerootTown_ProfessorBirchsLab_EventScript_SendCyndaquilToPC
# 577 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 578 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto Common_EventScript_NoMoreRoomForPokemon
# 579 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 580 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 581 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendCyndaquilToParty::
# 582 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter
# 583 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removeobject LOCALID_BIRCHS_LAB_CYNDAQUIL_BALL
# 584 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 585 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedCyndaquil
# 586 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_GetGiftMonPartySlot
# 587 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 588 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedCyndaquil
# 589 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 590 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 591 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendCyndaquilToPC::
# 592 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter
# 593 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removeobject LOCALID_BIRCHS_LAB_CYNDAQUIL_BALL
# 594 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 595 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_CyndaquilTransferredToPC
# 596 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedBoxMon
# 597 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_CyndaquilTransferredToPC
# 598 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 599 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 600 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CyndaquilTransferredToPC::
# 601 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_TransferredToPC
# 602 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedCyndaquil
# 603 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 604 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 605 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedCyndaquil::
# 606 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 607 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting, MSGBOX_DEFAULT
# 608 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6
# 609 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 610 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 611 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 612 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveTotodile::
# 613 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	bufferspeciesname STR_VAR_1, SPECIES_TOTODILE
# 614 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_TOTODILE
# 615 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	givemon SPECIES_TOTODILE, 5
# 616 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PARTY, LittlerootTown_ProfessorBirchsLab_EventScript_SendTotodileToParty
# 617 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PC, LittlerootTown_ProfessorBirchsLab_EventScript_SendTotodileToPC
# 618 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 619 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto Common_EventScript_NoMoreRoomForPokemon
# 620 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 621 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 622 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendTotodileToParty::
# 623 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter
# 624 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removeobject LOCALID_BIRCHS_LAB_TOTODILE_BALL
# 625 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 626 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedTotodile
# 627 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_GetGiftMonPartySlot
# 628 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 629 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedTotodile
# 630 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 631 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 632 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendTotodileToPC::
# 633 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter
# 634 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removeobject LOCALID_BIRCHS_LAB_TOTODILE_BALL
# 635 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 636 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_TotodileTransferredToPC
# 637 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedBoxMon
# 638 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_TotodileTransferredToPC
# 639 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 640 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 641 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_TotodileTransferredToPC::
# 642 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_TransferredToPC
# 643 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedTotodile
# 644 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 645 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 646 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedTotodile::
# 647 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 648 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting, MSGBOX_DEFAULT
# 649 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6
# 650 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 651 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 652 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 653 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GiveChikorita::
# 654 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	bufferspeciesname STR_VAR_1, SPECIES_CHIKORITA
# 655 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_TEMP_TRANSFERRED_SPECIES, SPECIES_CHIKORITA
# 656 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	givemon SPECIES_CHIKORITA, 5
# 657 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PARTY, LittlerootTown_ProfessorBirchsLab_EventScript_SendChikoritaToParty
# 658 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, MON_GIVEN_TO_PC, LittlerootTown_ProfessorBirchsLab_EventScript_SendChikoritaToPC
# 659 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 660 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto Common_EventScript_NoMoreRoomForPokemon
# 661 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 662 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 663 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendChikoritaToParty::
# 664 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter
# 665 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removeobject LOCALID_BIRCHS_LAB_CHIKORITA_BALL
# 666 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 667 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedChikorita
# 668 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_GetGiftMonPartySlot
# 669 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedPartyMon
# 670 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedChikorita
# 671 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 672 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 673 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_SendChikoritaToPC::
# 674 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter
# 675 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removeobject LOCALID_BIRCHS_LAB_CHIKORITA_BALL
# 676 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox gText_NicknameThisPokemon, MSGBOX_YESNO
# 677 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LittlerootTown_ProfessorBirchsLab_EventScript_ChikoritaTransferredToPC
# 678 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_NameReceivedBoxMon
# 679 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ChikoritaTransferredToPC
# 680 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 681 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 682 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ChikoritaTransferredToPC::
# 683 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call Common_EventScript_TransferredToPC
# 684 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedChikorita
# 685 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 686 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 687 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedChikorita::
# 688 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	hidemonpic
# 689 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting, MSGBOX_DEFAULT
# 690 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6
# 691 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 692 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 693 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 694 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ReceivedJohtoStarter::
# 695 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 696 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	message LittlerootTown_ProfessorBirchsLab_Text_ReceivedJohtoStarter
# 697 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmessage
# 698 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitfanfare
# 699 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 700 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 701 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Birch::
# 702 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lock
# 703 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	faceplayer
# 704 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 5, LittlerootTown_ProfessorBirchsLab_EventScript_CanHaveAnyOneOfRarePokemon
# 705 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_ProfessorBirchsLab_EventScript_GrassyPatchWaiting
# 706 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed goto_if_unset FLAG_HAS_MATCH_CALL, LittlerootTown_ProfessorBirchsLab_EventScript_TryRatePokedexOrRegister
# 707 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed goto_if_unset FLAG_ENABLE_PROF_BIRCH_MATCH_CALL, EventScript_RegisterProfBirch
# 708 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_TryRatePokedexOrRegister
# 709 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 710 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 711 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_CanHaveAnyOneOfRarePokemon::
# 712 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_CanHaveAnyOneOfRarePokemon, MSGBOX_DEFAULT
# 713 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 714 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 715 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 716 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GrassyPatchWaiting::
# 717 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting2, MSGBOX_DEFAULT
# 718 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 719 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 720 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 721 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_TryRatePokedexOrRegister::
# 722 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_unset FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_UNKNOWN_0x380, ProfBirch_EventScript_RatePokedexOrRegister
# 723 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 3, ProfBirch_EventScript_RatePokedexOrRegister
# 724 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, ProfBirch_EventScript_RatePokedexOrRegister
# 725 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_BIRCH_LAB_STATE, 5, LittlerootTown_ProfessorBirchsLab_EventScript_PokemonAwait
# 726 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome
# 727 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 728 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 729 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 730 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome::
# 731 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ The rival is May for a male player, and Brendan for a female player.
# 732 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 733 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BirchBrendanGoneHome
# 734 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BirchRivalGoneHome, MSGBOX_DEFAULT
# 735 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 736 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 737 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BirchBrendanGoneHome:
# 738 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BirchBrendanGoneHome, MSGBOX_DEFAULT
# 739 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 740 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 741 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
EventScript_RegisterProfBirch::
# 742 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed msgbox MatchCall_Text_BirchRegisterCall, MSGBOX_DEFAULT
# 743 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed closemessage
# 744 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed delay 30
# 745 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 746 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed msgbox MatchCall_Text_RegisteredBirch, MSGBOX_DEFAULT
# 747 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed waitfanfare
# 748 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed closemessage
# 749 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed delay 30
# 750 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_PROF_BIRCH_MATCH_CALL
# 751 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_REGISTER_BIRCH_STATE, 2
# 752 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 753 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 754 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 755 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex::
# 756 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_HeardYouBeatRivalTakePokedex
# 757 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call LittlerootTown_ProfessorBirchsLab_EventScript_ReceivePokedex
# 758 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto LittlerootTown_ProfessorBirchsLab_EventScript_AfterGivePokedex
# 759 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 760 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_HeardYouBeatRivalTakePokedex::
# 761 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ The rival is May for a male player, and Brendan for a female player.
# 762 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 763 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_HeardYouBeatBrendanTakePokedex
# 764 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatRivalTakePokedex, MSGBOX_DEFAULT
# 765 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 766 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 767 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_HeardYouBeatBrendanTakePokedex:
# 768 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatBrendanTakePokedex, MSGBOX_DEFAULT
# 769 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 770 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 771 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_AfterGivePokedex::
# 772 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT
# 773 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_ExplainPokedex, MSGBOX_DEFAULT
# 774 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	closemessage
# 775 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_RIVAL, LittlerootTown_ProfessorBirchsLab_Movement_RivalApproachPlayer
# 776 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 777 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 778 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 779 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 780 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_ProfessorBirchsLab_EventScript_MayGivePokeBalls
# 781 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanGivePokeBalls
# 782 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 783 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	applymovement LOCALID_BIRCHS_LAB_RIVAL, Common_Movement_WalkInPlaceFasterUp
# 784 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitmovement 0
# 785 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_HereTakeMap, MSGBOX_DEFAULT
# 786 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveitem ITEM_TOWN_MAP
# 787 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_YourFirstStep, MSGBOX_DEFAULT
# 788 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_BIRCH_LAB_STATE, 5
# 789 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_ADVENTURE_STARTED
# 790 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_OLDALE_TOWN_STATE, 1
# 791 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 4
# 792 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 3
# 793 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 794 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 795 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 796 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayGivePokeBalls::
# 797 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 798 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MayGotPokedexTooTakeThese, MSGBOX_DEFAULT
# 799 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 800 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveitem ITEM_POKE_BALL, 25
# 801 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_MayNoRoomForPokeBalls
# 802 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 803 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_CatchCutePokemonWithPokeBalls, MSGBOX_DEFAULT
# 804 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 805 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_RESULT, 0
# 806 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 807 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 808 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanGivePokeBalls::
# 809 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 810 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BrendanGotPokedexTooTakeThese, MSGBOX_DEFAULT
# 811 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 812 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	giveitem ITEM_POKE_BALL, 25
# 813 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanNoRoomForPokeBalls
# 814 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 815 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_CatchCoolPokemonWithPokeBalls, MSGBOX_DEFAULT
# 816 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 817 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_RESULT, 1
# 818 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 819 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 820 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ReceivePokedex::
# 821 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 822 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	message LittlerootTown_ProfessorBirchsLab_Text_ReceivedPokedex
# 823 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	waitfanfare
# 824 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_SYS_POKEDEX_GET
# 825 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	special SetUnlockedPokedexFlags
# 826 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setflag FLAG_RECEIVED_POKEDEX_FROM_BIRCH
# 827 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	setvar VAR_CABLE_CLUB_TUTORIAL_STATE, 1
# 828 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 829 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 830 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_PokemonAwait::
# 831 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_CountlessPokemonAwait, MSGBOX_DEFAULT
# 832 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 833 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 834 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 835 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayNoRoomForPokeBalls::
# 836 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_OhYourBagsFull, MSGBOX_DEFAULT
# 837 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 838 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 839 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanNoRoomForPokeBalls::
# 840 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_HeyYourBagsFull, MSGBOX_DEFAULT
# 841 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 842 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 843 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Movement_RivalApproachPlayer:
# 844 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_down
# 845 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	walk_in_place_faster_left
# 846 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	step_end
# 847 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 848 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Machine::
# 849 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_SeriousLookingMachine, MSGBOX_SIGN
# 850 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 851 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 852 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Rival::
# 853 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lock
# 854 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	faceplayer
# 855 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 5, LittlerootTown_ProfessorBirchsLab_EventScript_RivalFuturePlans
# 856 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 6, LittlerootTown_ProfessorBirchsLab_EventScript_RivalHaveYouGoneToBattleFrontier
# 857 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_ProfessorBirchsLab_EventScript_RivalTakeBreakFromFieldwork
# 858 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 859 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_ProfessorBirchsLab_EventScript_MayWhereShouldIGoNext
# 860 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanWhereShouldIGoNext
# 861 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 862 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 863 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 864 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayWhereShouldIGoNext::
# 865 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 866 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MayWhereShouldIGoNext, MSGBOX_DEFAULT
# 867 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 868 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 869 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 870 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanWhereShouldIGoNext::
# 871 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 872 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BrendanWhereShouldIGoNext, MSGBOX_DEFAULT
# 873 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 874 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 875 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 876 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_RivalFuturePlans::
# 877 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 878 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_ProfessorBirchsLab_EventScript_MayWhatNextImStayingHere
# 879 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanPreferCollectingSlowly
# 880 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 881 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 882 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 883 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayWhatNextImStayingHere::
# 884 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 885 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MayWhatNextImStayingHere, MSGBOX_DEFAULT
# 886 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 887 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 888 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 889 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanPreferCollectingSlowly:
# 890 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 891 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BrendanPreferCollectingSlowly, MSGBOX_DEFAULT
# 892 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 893 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 894 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 895 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_RivalHaveYouGoneToBattleFrontier::
# 896 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 897 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_ProfessorBirchsLab_EventScript_MayHaveYouGoneToBattleFrontier
# 898 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanHaveYouGoneToBattleFrontier
# 899 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 900 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 901 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 902 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayHaveYouGoneToBattleFrontier::
# 903 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 904 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MayHaveYouGoneToBattleFrontier, MSGBOX_DEFAULT
# 905 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 906 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 907 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 908 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanHaveYouGoneToBattleFrontier::
# 909 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 910 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BrendanHaveYouGoneToBattleFrontier, MSGBOX_DEFAULT
# 911 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 912 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 913 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 914 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_RivalTakeBreakFromFieldwork::
# 915 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	checkplayergender
# 916 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LittlerootTown_ProfessorBirchsLab_EventScript_MayTakeBreakFromFieldwork
# 917 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LittlerootTown_ProfessorBirchsLab_EventScript_BrendanTakeBreakFromFieldwork
# 918 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 919 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 920 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 921 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_MayTakeBreakFromFieldwork::
# 922 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 923 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_MayTakeBreakFromFieldwork, MSGBOX_DEFAULT
# 924 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 925 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 926 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 927 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_BrendanTakeBreakFromFieldwork::
# 928 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 929 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BrendanTakeBreakFromFieldwork, MSGBOX_DEFAULT
# 930 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	removefieldmugshot
# 931 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	return
# 932 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 933 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_PC::
# 934 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_PCUsedForResearch, MSGBOX_SIGN
# 935 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 936 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 937 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Bookshelf::
# 938 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_CrammedWithBooksOnPokemon, MSGBOX_SIGN
# 939 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 940 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 941 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Book::
# 942 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_BookTooHardToRead, MSGBOX_SIGN
# 943 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 944 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 945 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_ScottAboardSSTidalCall::
# 946 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	lockall
# 947 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed pokenavcall LittlerootTown_ProfessorBirchsLab_Text_ScottAboardSSTidalCall
# 948 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	@ PokéNav removed waitmessage
# 949 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	clearflag FLAG_SCOTT_CALL_BATTLE_FRONTIER
# 950 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	releaseall
# 951 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 952 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 953 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_EventScript_Intern::
# 954 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	msgbox LittlerootTown_ProfessorBirchsLab_Text_Intern, MSGBOX_NPC
# 955 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	release
# 956 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	end
# 957 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 958 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BirchAwayOnFieldwork:
# 959 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Hunh? PROF. ACACIA?\p"
# 960 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "The PROF's away on fieldwork.\n"
# 961 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Ergo, she isn't here.\p"
# 962 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Oh, let me explain what fieldwork is.\p"
# 963 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It is to study things in the natural\n"
# 964 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "environment, like fields and mountains,\l"
# 965 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "instead of a laboratory.\p"
# 966 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "The PROF isn't one for doing desk work.\n"
# 967 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "She's the type of person who would\l"
# 968 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "rather go outside and experience\l"
# 969 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "things than read about them here.$"
# 970 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 971 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BirchIsntOneForDeskWork:
# 972 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "The PROF isn't one for doing desk work.\n"
# 973 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "She's the type of person who would\l"
# 974 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "rather go outside and experience\l"
# 975 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "things than read about them here.$"
# 976 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 977 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BirchEnjoysRivalsHelpToo:
# 978 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA is studying the habitats\n"
# 979 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "and distribution of POKéMON.\p"
# 980 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "The PROF enjoys {RIVAL}'s help, too.\n"
# 981 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "There's a lot of potential there.$"
# 982 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 983 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_LikeYouToHavePokemon:
# 984 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Ah, {PLAYER}{KUN}.\p"
# 985 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Your grandmother has told me so\n"
# 986 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "much about you.\p"
# 987 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I understand you don't have your\n"
# 988 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "own POKéMON yet.\p"
# 989 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "But the way you battled earlier,\n"
# 990 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you pulled it off with ap-… apl…-\p"
# 991 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Composure!\p"
# 992 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "As thanks for rescuing me,\n"
# 993 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'd like you to have the POKéMON you\l"
# 994 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "used earlier.\p"
# 995 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER} received the {STR_VAR_1}!$"
# 996 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 997 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_WhyNotGiveNicknameToMon:
# 998 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: While you're at it, why not\n"
# 999 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "give a nickname to that {STR_VAR_1}?$"
# 1000 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1001 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MightBeGoodIdeaToGoSeeRival:
# 1002 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: If you work alongside\n"
# 1003 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "your POKéMON and gain experience,\l"
# 1004 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you will become a strong TRAINER.\p"
# 1005 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Your neighbor, {RIVAL}, is also\n"
# 1006 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "studying POKéMON while helping me.\p"
# 1007 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER}{KUN}, don't you think it is\n"
# 1008 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "a good idea to go see {RIVAL}?$"
# 1009 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1010 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_GetRivalToTeachYou:
# 1011 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Great!\n"
# 1012 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{RIVAL} should be happy, too.\p"
# 1013 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Get {RIVAL} to teach you what it\n"
# 1014 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "means to be a TRAINER.$"
# 1015 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1016 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_DontBeThatWay:
# 1017 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Oh, don't be that way.\n"
# 1018 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You should go meet your neighbor.\p"
# 1019 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Go north on ROUTE 103…\n"
# 1020 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Just past OLDALE TOWN!$"
# 1021 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1022 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BirchRivalGoneHome::
# 1023 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: {RIVAL}?\n"
# 1024 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "She came by earlier asking about POKéMON.\p"
# 1025 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Not sure where she went, though…\n"
# 1026 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Maybe try checking out ROUTE 103 again?\p"
# 1027 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "She could also still be home.\n"
# 1028 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You might just have to look around!\p"
# 1029 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you or your POKéMON get tired,\n"
# 1030 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you should get some rest at home.$"
# 1031 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1032 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BirchBrendanGoneHome::
# 1033 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: {RIVAL}?\n"
# 1034 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "He came by earlier asking about POKéMON.\p"
# 1035 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Not sure where he went, though…\n"
# 1036 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Maybe try checking out ROUTE 103 again?\p"
# 1037 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "He could also still be home.\n"
# 1038 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You might just have to look around!\p"
# 1039 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you or your POKéMON get tired,\n"
# 1040 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you should get some rest at home.$"
# 1041 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1042 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatRivalTakePokedex::
# 1043 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: There you are, {PLAYER}{KUN}!\p"
# 1044 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I heard you beat {RIVAL} on\n"
# 1045 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "your first try.\l"
# 1046 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "That's excellent!\p"
# 1047 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{RIVAL}'s been helping with my research\n"
# 1048 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "for a long time.\p"
# 1049 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Lately, she's picked up POKéMON\n"
# 1050 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "battling.\p"
# 1051 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Here, {PLAYER}{KUN}, I ordered this for my\n"
# 1052 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "research, but I think you should have\l"
# 1053 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "this POKéDEX.$"
# 1054 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1055 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatBrendanTakePokedex::
# 1056 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: There you are, {PLAYER}{KUN}!\p"
# 1057 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I heard you beat {RIVAL} on\n"
# 1058 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "your first try.\l"
# 1059 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "That's excellent!\p"
# 1060 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{RIVAL}'s been helping with my research\n"
# 1061 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "for a long time.\p"
# 1062 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Lately, he's picked up POKéMON\n"
# 1063 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "battling.\p"
# 1064 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Here, {PLAYER}{KUN}, I ordered this for my\n"
# 1065 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "research, but I think you should have\l"
# 1066 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "this POKéDEX.$"
# 1067 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1068 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_ReceivedPokedex:
# 1069 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER} received the POKéDEX!$"
# 1070 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1071 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_ExplainPokedex:
# 1072 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "PROF. ACACIA: The POKéDEX is a high-tech\n"
# 1073 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "tool that automatically makes a record\l"
# 1074 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "of any POKéMON you meet or catch.\p"
# 1075 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "{RIVAL} goes everywhere helping me\n"
# 1076 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "with it.\p"
# 1077 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You may wonder why I'm giving you this.\n"
# 1078 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Truth is, I have a request for you both.\p"
# 1079 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I've installed a sensor on your POKéDEX\n"
# 1080 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "that will measure comet-related energy.\l"
# 1081 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "The data is still being collected, but…\p"
# 1082 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm sure you've already noticed it\n"
# 1083 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "yourselves.\p"
# 1084 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I believe that the passage of the\n"
# 1085 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "MILLENNIUM COMET might have changed\l"
# 1086 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "something about our reality.\p"
# 1087 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "That's why I want to send you out\n"
# 1088 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "to discover what happened.$"
# 1089 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1090 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1091 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_CountlessPokemonAwait:
# 1092 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: My partner, CALENDULA,\n"
# 1093 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "and I met long ago while researching\l"
# 1094 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "rare POKéMON.\p"
# 1095 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "We traveled through forests, caverns,\n"
# 1096 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "and ruins…\p"
# 1097 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Somewhere along the way, our\n"
# 1098 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "relationship turned into something\l"
# 1099 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "more.\p"
# 1100 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "Now she is the GYM LEADER of PETALBURG\n"
# 1101 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "CITY.\p"
# 1102 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Calm, brilliant, and one of the strongest\n"
# 1103 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "NORMAL-type trainers alive.\p"
# 1104 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "If you truly want to become a real\n"
# 1105 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "POKéMON TRAINER, go meet her.$"
# 1106 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1107 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_HereTakeMap:
# 1108 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "PROF. ACACIA: Oh, and before you go,\n"
# 1109 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "take this!\p"
# 1110 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "It's a TOWN MAP.\n"
# 1111 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "If you ever get lost on your journey,\l"
# 1112 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "use this map to guide yourself!$"
# 1113 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1114 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_YourFirstStep:
# 1115 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: To succeed in this journey\n"
# 1116 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you will have to get stronger.\p"
# 1117 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "Seek out CALENDULA in PETALBURG CITY.\n"
# 1118 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "She will teach you lessons no book ever\l"
# 1119 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
    .string "could.$"
# 1120 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1121 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1122 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MayGotPokedexTooTakeThese:
# 1123 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: That sounds mysterious!\p"
# 1124 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER}, if you have a POKéDEX now,\n"
# 1125 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you might need these!$"
# 1126 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1127 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_CatchCutePokemonWithPokeBalls:
# 1128 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: This will be my first\n"
# 1129 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "independent research project.\p"
# 1130 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm going to look all over the place to\n"
# 1131 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "learn the mystery of the comet.\p"
# 1132 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "And if I find any cute POKéMON, I'll catch\n"
# 1133 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "them with POKé BALLS!$"
# 1134 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1135 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_OhYourBagsFull:
# 1136 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Oh? Your BAG's full.$"
# 1137 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1138 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MayWhereShouldIGoNext:
# 1139 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: Have you checked out the cave\n"
# 1140 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "east of OLDALE yet?\p"
# 1141 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I heard it's really dark and dangerous,\n"
# 1142 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "but if you're brave enough, it's full of\l"
# 1143 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "amazing POKéMON!$"
# 1144 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1145 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BrendanGotPokedexTooTakeThese:
# 1146 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: That sounds pretty intense.\p"
# 1147 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER}, you have a POKéDEX now, so\n"
# 1148 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'll give you these.$"
# 1149 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1150 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_CatchCoolPokemonWithPokeBalls:
# 1151 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: This will be my first\n"
# 1152 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "independent research project.\p"
# 1153 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm going to look all over the place to\n"
# 1154 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "learn the mystery of the comet.\p"
# 1155 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "And if I find any cool POKéMON, I'll catch\n"
# 1156 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "them with POKé BALLS!$"
# 1157 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1158 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1159 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_HeyYourBagsFull:
# 1160 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Hey, your BAG's full.$"
# 1161 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1162 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BrendanWhereShouldIGoNext:
# 1163 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: I'm thinking of exploring that\n"
# 1164 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "cave east of OLDALE next.\p"
# 1165 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Heard it's pretty intense, super dark\n"
# 1166 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "and full of tough POKéMON.\p"
# 1167 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Perfect for some real training!$"
# 1168 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1169 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_SeriousLookingMachine:
# 1170 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's a serious-looking machine.\n"
# 1171 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "The PROF. must use this for research.$"
# 1172 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1173 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_PCUsedForResearch:
# 1174 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's a PC used for research.\n"
# 1175 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Better not mess around with it.$"
# 1176 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1177 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_CrammedWithBooksOnPokemon:
# 1178 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's crammed with books on POKéMON.$"
# 1179 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1180 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BookTooHardToRead:
# 1181 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's a book that's too hard to read.$"
# 1182 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1183 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_OtherRegionsUpgradeToNational:
# 1184 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Now…\p"
# 1185 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER}{KUN} and {RIVAL}, I've had the two\n"
# 1186 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "of you help me study POKéMON.\p"
# 1187 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Thanks to your help, new facts\n"
# 1188 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "are coming to light.\p"
# 1189 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It appears that in the HOENN region,\n"
# 1190 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "there are also POKéMON from other\l"
# 1191 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "regions.\p"
# 1192 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It goes to show how rich and varied\n"
# 1193 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the natural environments of HOENN\l"
# 1194 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "happen to be.\p"
# 1195 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "That's why I think it's necessary for\n"
# 1196 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "me to upgrade your POKéDEX to\l"
# 1197 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the NATIONAL Mode.\p"
# 1198 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Here, let me see your POKéDEX units.$"
# 1199 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1200 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MayUpgradeSoCool:
# 1201 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: Eheheh!\p"
# 1202 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's so cool that even my POKéDEX\n"
# 1203 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "is getting updated!\p"
# 1204 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's because you went out and caught\n"
# 1205 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "so many POKéMON, {PLAYER}{KUN}!$"
# 1206 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1207 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BrendanYouCanThankMe:
# 1208 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: I went out all over HOENN\n"
# 1209 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "and checked out POKéMON.\p"
# 1210 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You can thank me for getting\n"
# 1211 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the NATIONAL Mode POKéDEX.\p"
# 1212 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Yep, you're lucky, {PLAYER}!$"
# 1213 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1214 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_OkayAllDone:
# 1215 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Okay, all done!$"
# 1216 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1217 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_PokedexUpgradedToNational:
# 1218 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER}'s POKéDEX was upgraded\n"
# 1219 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "to the NATIONAL Mode!$"
# 1220 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1221 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting2:
# 1222 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: But listen.\n"
# 1223 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You've become the CHAMPION,\l"
# 1224 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "but your POKéMON journey isn't over.\p"
# 1225 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "There is no end to the road\n"
# 1226 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "that is POKéMON.\p"
# 1227 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Somewhere, there is a grassy patch\n"
# 1228 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "that's waiting for you!$"
# 1229 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1230 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MayTakeBreakFromFieldwork:
# 1231 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: I think I'll take a short break\n"
# 1232 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "from fieldwork.\p"
# 1233 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I think I'll help the PROF here for\n"
# 1234 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "a while.$"
# 1235 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1236 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BrendanTakeBreakFromFieldwork:
# 1237 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: For the time being,\n"
# 1238 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm taking a break from fieldwork.\p"
# 1239 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'll be helping out the PROF here\n"
# 1240 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "for a while.$"
# 1241 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1242 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_CompletedDexChoosePokemon:
# 1243 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Oh, {PLAYER}{KUN}!\n"
# 1244 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Let's have a look at your POKéDEX.\p"
# 1245 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "… … … … … …\n"
# 1246 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "… … … … … …\p"
# 1247 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Yes, there's no doubt about it.\p"
# 1248 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You really have completed the HOENN\n"
# 1249 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "region's POKéDEX.\p"
# 1250 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "That's more than just impressive.\p"
# 1251 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I have a gift for you.\p"
# 1252 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Consider it my show of appreciation\n"
# 1253 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "for the fantastic work you've done.\p"
# 1254 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "My gift is a rare POKéMON only found\n"
# 1255 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "in another region!\p"
# 1256 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You can have any one of these\n"
# 1257 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "three POKéMON!$"
# 1258 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1259 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_CanHaveAnyOneOfRarePokemon:
# 1260 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: These are rare POKéMON\n"
# 1261 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "only found in another region!\p"
# 1262 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You can have any one of these\n"
# 1263 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "three POKéMON!$"
# 1264 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1265 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_YoullTakeCyndaquil:
# 1266 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: The FIRE POKéMON\n"
# 1267 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "CYNDAQUIL caught your eye!\p"
# 1268 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You're as sharp as ever!\p"
# 1269 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "So the CYNDAQUIL is your choice?$"
# 1270 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1271 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_YoullTakeTotodile:
# 1272 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: The WATER POKéMON\n"
# 1273 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "TOTODILE is your choice!\p"
# 1274 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You know how to pick a good one.\p"
# 1275 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "So, you'll take the TOTODILE?$"
# 1276 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1277 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_YoullTakeChikorita:
# 1278 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: The GRASS POKéMON\n"
# 1279 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "CHIKORITA is your choice!\p"
# 1280 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You sure know what you're doing.\p"
# 1281 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "So, you'll take the CHIKORITA?$"
# 1282 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1283 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_TakeYourTimeAllInvaluable:
# 1284 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Take your time before\n"
# 1285 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you decide.\p"
# 1286 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "They're all invaluable POKéMON.$"
# 1287 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1288 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ Unused
# 1289 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_PickedFinePokemon:
# 1290 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: I see!\n"
# 1291 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You picked a fine POKéMON!$"
# 1292 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1293 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_ReceivedJohtoStarter:
# 1294 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER} received the {STR_VAR_1}\n"
# 1295 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "from PROF. ACACIA!$"
# 1296 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1297 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ Unused
# 1298 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_NicknameJohtoStarter:
# 1299 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Want to give a nickname to\n"
# 1300 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the {STR_VAR_1} you received?$"
# 1301 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1302 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_GrassyPatchWaiting:
# 1303 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Listen, {PLAYER}{KUN}.\n"
# 1304 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You've completed the HOENN POKéDEX,\l"
# 1305 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "but your POKéMON journey isn't over.\p"
# 1306 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "There is no end to the road\n"
# 1307 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "that is POKéMON.\p"
# 1308 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Somewhere, there is a grassy patch\n"
# 1309 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "that's waiting for you!$"
# 1310 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1311 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BetterLeaveOthersAlone:
# 1312 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You received the promised POKéMON.\n"
# 1313 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Better leave the others alone.$"
# 1314 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1315 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ Unused
# 1316 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_DontHaveAnyRoomForPokemon:
# 1317 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Oh, you don't have any room for\n"
# 1318 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "this POKéMON.$"
# 1319 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1320 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MayWhatNextImStayingHere:
# 1321 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}, after this…\n"
# 1322 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "What are you going to do?\p"
# 1323 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Are you going to keep battling\n"
# 1324 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "and sharpening your skills?\p"
# 1325 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Or are you going to try filling\n"
# 1326 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the NATIONAL POKéDEX?\p"
# 1327 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm staying here to help the PROF.$"
# 1328 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1329 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BrendanPreferCollectingSlowly:
# 1330 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: Rather than collecting\n"
# 1331 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "POKéMON, I prefer slowly and \l"
# 1332 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "steadily raising the one I chose.$"
# 1333 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1334 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_MayHaveYouGoneToBattleFrontier:
# 1335 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZINNIA: Oh, hi, {PLAYER}{KUN}!\n"
# 1336 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Have you gone to that place,\l"
# 1337 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the BATTLE FRONTIER?$"
# 1338 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1339 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BrendanHaveYouGoneToBattleFrontier:
# 1340 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "ZENNO: Hey, {PLAYER}!\n"
# 1341 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Have you gone out to that place,\l"
# 1342 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "the BATTLE FRONTIER?$"
# 1343 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1344 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_ScottAboardSSTidalCall:
# 1345 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "… … … … … …\n"
# 1346 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "… … … … … Beep!\p"
# 1347 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "SCOTT: Hi, hi, {PLAYER}!\n"
# 1348 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's me, SCOTT.\p"
# 1349 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm aboard the S.S. TIDAL now.\n"
# 1350 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It feels great to be on the sea!\p"
# 1351 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "By the way…\p"
# 1352 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "There's this place that I'd like to\n"
# 1353 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "invite you to for a visit.\p"
# 1354 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you're interested, board a ferry\n"
# 1355 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "at either SLATEPORT or LILYCOVE.\p"
# 1356 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'll fill you in on the details when\n"
# 1357 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "we meet. I'll be waiting!\p"
# 1358 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "… … … … … …\n"
# 1359 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "… … … … … Click!$"
# 1360 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1361 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_Register10PokemonForTogepiEgg:
# 1362 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "We're studying this different POKéMON\n"
# 1363 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "called TOGEPI.\p"
# 1364 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you register 10 POKéMON in your\n"
# 1365 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Pokédex, we'll give you a TOGEPI EGG!$"
# 1366 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1367 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_YouHave10PokemonHeresTogepiEgg:
# 1368 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Wow! You've already registered\n"
# 1369 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "10 POKéMON in your Pokédex!\p"
# 1370 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "As promised, here's the TOGEPI EGG!$"
# 1371 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1372 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_ReceivedTogepiEgg:
# 1373 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER} received the TOGEPI EGG!$"
# 1374 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1375 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_TakeGoodCareOfTogepi:
# 1376 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Take good care of that TOGEPI!\n"
# 1377 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's a very special POKéMON.$"
# 1378 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1379 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_NoRoomForEgg:
# 1380 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Oh, you don't have room for this EGG\n"
# 1381 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "in your party. Come back later!$"
# 1382 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1383 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_HowIsTogepiDoing:
# 1384 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "How is the TOGEPI doing?\n"
# 1385 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I hope it's growing well!$"
# 1386 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1387 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ Porygon gift dialogue.
# 1388 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_Register100PokemonForPorygon:
# 1389 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "A colleague from KANTO recently\n"
# 1390 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "brought us this strange POKéMON.\p"
# 1391 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It's supposedly made completely\n"
# 1392 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "out of code! How fascinating!\p"
# 1393 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you record full data on 100\n"
# 1394 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "different POKéMON, I would be glad\l"
# 1395 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "to give PORYGON to you.$"
# 1396 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1397 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_YouHave100PokemonHeresPorygon:
# 1398 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Wow! What a feat!\p"
# 1399 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "You recorded full data on 100\n"
# 1400 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "different POKéMON!\p"
# 1401 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "As promised, here is PORYGON.\n"
# 1402 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I know you'll take great care of it.$"
# 1403 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1404 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_ReceivedPorygon:
# 1405 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "{PLAYER} received PORYGON!$"
# 1406 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1407 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_TakeGoodCareOfPorygon:
# 1408 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm a little sad to see PORYGON go.\n"
# 1409 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "We made quite a few memories while\l"
# 1410 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "it was here, after all.\p"
# 1411 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "However, I know it will be much more\n"
# 1412 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "happy out in the world with a trainer.$"
# 1413 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1414 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_HowIsPorygonDoing:
# 1415 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Hello, {PLAYER}!\n"
# 1416 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Is PORYGON doing well?\p"
# 1417 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Bring it to visit sometime, okay?\n"
# 1418 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I miss that little buddy.\p"
# 1419 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you can also show me full data on\n"
# 1420 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "200 different POKéMON, I'll give you\l"
# 1421 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "something nice for PORYGON.$"
# 1422 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1423 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ Visiting-reward dialogue placeholders for the author to replace.
# 1424 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_PorygonVisitUpgrade:
# 1425 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Wow! A PORYGON came to visit!\p"
# 1426 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm so happy to see a PORYGON!\n"
# 1427 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Oh, right! I just developed this item,\l"
# 1428 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "and I think PORYGON might like it.\p"
# 1429 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Please, I would like you to have it.$"
# 1430 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1431 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_AfterUpgradeReward:
# 1432 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Try giving that UPGRADE to PORYGON.\p"
# 1433 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If you come back to show me what\n"
# 1434 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PORYGON evolved into after getting\l"
# 1435 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "full data on 300 POKéMON, I'll give\l"
# 1436 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "you something else too!\p"
# 1437 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Oh, or did you want to buy another\n"
# 1438 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "UPGRADE?$"
# 1439 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1440 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_Porygon2VisitDubiousDisc:
# 1441 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Wow! You've brought a PORYGON2!\n"
# 1442 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "And you've got data on 300 POKéMON!\p"
# 1443 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "With all this data, I can now make\n"
# 1444 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "another gift for PORYGON2.\p"
# 1445 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Please, take it.$"
# 1446 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1447 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_AfterDubiousDiscReward:
# 1448 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I can't thank you enough for your\n"
# 1449 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "help with my research and for showing\l"
# 1450 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "me so many fantastic forms of PORYGON.$"
# 1451 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1452 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
@ General repeat dialogue after all four successful gifts.
# 1453 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_AllGiftsGiven:
# 1454 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Hello, {PLAYER}! How are you?\n"
# 1455 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Are TOGEPI and PORYGON doing well?\p"
# 1456 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Or, perhaps…\p"
# 1457 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Would you like to buy an UPGRADE\n"
# 1458 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "or a DUBIOUS DISC?$"
# 1459 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1460 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BuyUpgrade:
# 1461 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Would you like to buy an UPGRADE\n"
# 1462 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "for ¥10,000?$"
# 1463 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1464 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_BuyDubiousDisc:
# 1465 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Would you like to buy a DUBIOUS DISC\n"
# 1466 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "for ¥10,000?$"
# 1467 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1468 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_AideNotEnoughMoney:
# 1469 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Sorry, you need ¥10,000 to buy one.$"
# 1470 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1471 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_WouldYouLikeInfiniteCandy:
# 1472 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Ah, before I forget!\p"
# 1473 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'm developing a new tool for\n"
# 1474 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "trainers called INFINITE CANDY.\p"
# 1475 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "It allows your POKéMON to level up\n"
# 1476 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "safely until the level cap.\p"
# 1477 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Would you like to try it?$"
# 1478 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1479 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_UseInfiniteCandyWisely:
# 1480 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Use the INFINITE CANDY\n"
# 1481 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "wisely! Remember that natural growth\l"
# 1482 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "is also important for your POKéMON\l"
# 1483 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "to develop strong bonds.$"
# 1484 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1485 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
DifficultySelection_Text_AskHardMode:
# 1486 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Do you want to play on\n"
# 1487 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "HARD mode where trainers are\l"
# 1488 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "optimized for competitive battle?$"
# 1489 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"

# 1490 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
DifficultySelection_Text_HardModeSelected:
# 1491 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA: Hard mode selected!\n"
# 1492 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "Good luck! You'll need it!$"
# 1493 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	
# 1494 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
LittlerootTown_ProfessorBirchsLab_Text_Intern:
# 1495 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I was lucky enough to land a\n"
# 1496 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "position as an intern here at\l"
# 1497 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "PROF. ACACIA's lab!\p"
# 1498 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "If I work here long enough, maybe\n"
# 1499 "data/maps/LittlerootTown_ProfessorBirchsLab/scripts.pory"
	.string "I'll even get paid!$"
