# 1 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 2 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_MapScripts::
# 3 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.byte 0
# 4 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 5 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_CaptStern::
# 6 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	lock
# 7 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	faceplayer
# 8 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_ThankYouForTheParts, MSGBOX_DEFAULT
# 9 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 10 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, TRUE
# 11 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	addobject LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1
# 12 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1, SlateportCity_OceanicMuseum_2F_Movement_FirstGruntEnter
# 13 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 14 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	addobject LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2
# 15 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2, SlateportCity_OceanicMuseum_2F_Movement_SecondGruntEnter
# 16 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 17 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1, SlateportCity_OceanicMuseum_2F_Movement_FirstGruntApproach
# 18 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2, SlateportCity_OceanicMuseum_2F_Movement_SecondGruntApproach
# 19 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 20 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, SlateportCity_OceanicMuseum_2F_EventScript_PlayerFaceGrunts
# 21 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, SlateportCity_OceanicMuseum_2F_EventScript_PlayerFaceGrunts
# 22 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WellTakeThoseParts, MSGBOX_DEFAULT
# 23 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_ne VAR_FACING, DIR_EAST, SlateportCity_OceanicMuseum_2F_EventScript_SternFaceGrunts
# 24 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SternWhoAreYou, MSGBOX_DEFAULT
# 25 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WereTeamAqua, MSGBOX_DEFAULT
# 26 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 27 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2, SlateportCity_OceanicMuseum_2F_Movement_GruntApproachToBattle
# 28 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 29 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, SlateportCity_OceanicMuseum_2F_EventScript_PlayerApproachGruntSouth
# 30 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, SlateportCity_OceanicMuseum_2F_EventScript_PlayerApproachGruntWest
# 31 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	trainerbattle_no_intro TRAINER_GRUNT_MUSEUM_1, SlateportCity_OceanicMuseum_2F_Text_Grunt1Defeat
# 32 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_BossGoingToBeFurious, MSGBOX_DEFAULT
# 33 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 34 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2, SlateportCity_OceanicMuseum_2F_Movement_GruntDefeated
# 35 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 36 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1, SlateportCity_OceanicMuseum_2F_Movement_GruntApproachToBattle
# 37 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 38 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_LetMeTakeCareOfThis, MSGBOX_DEFAULT
# 39 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	trainerbattle_no_intro TRAINER_GRUNT_MUSEUM_2, SlateportCity_OceanicMuseum_2F_Text_Grunt2Defeat
# 40 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1, SlateportCity_OceanicMuseum_2F_Movement_GruntDefeated
# 41 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 42 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1, Common_Movement_WalkInPlaceFasterDown
# 43 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2, Common_Movement_WalkInPlaceFasterUp
# 44 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 45 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_MeddlingKid, MSGBOX_DEFAULT
# 46 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 47 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay 35
# 48 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	addobject LOCALID_OCEANIC_MUSEUM_2F_ARCHIE
# 49 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_ARCHIE, SlateportCity_OceanicMuseum_2F_Movement_ArchieEnter
# 50 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2, SlateportCity_OceanicMuseum_2F_Movement_GruntMoveForArchie
# 51 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 52 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_CameToSeeWhatsTakingSoLong, MSGBOX_DEFAULT
# 53 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 54 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_ARCHIE, SlateportCity_OceanicMuseum_2F_Movement_ArchieApproachPlayer
# 55 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 56 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	@ Radio mercy is CASUAL-only. HARD skips the radio check entirely.
# 57 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	special Script_GetDifficulty
# 58 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	goto_if_eq VAR_RESULT, 2, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroBattleNormally @ DIFFICULTY_HARD
# 59 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_0x8004, 2 @ STATION_POP
# 60 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	special Special_IsRadioStationPlaying
# 61 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio
# 62 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_AlejandroBattleNormally::
# 63 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	trainerbattle_no_intro TRAINER_ALEJANDRO_1, SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat
# 64 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_AlejandroAfterBattle, MSGBOX_DEFAULT
# 65 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 66 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_AlejandroContinue::
# 67 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	savebgm MUS_DUMMY
# 68 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadedefaultbgm
# 69 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 70 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_ARCHIE
# 71 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1
# 72 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2
# 73 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 74 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay 30
# 75 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
# 76 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 77 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 78 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SternThankYouForSavingUs, MSGBOX_DEFAULT
# 79 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_0x8004, ITEM_DEVON_PARTS
# 80 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call Common_EventScript_PlayerHandedOverTheItem
# 81 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SternIveGotToGo, MSGBOX_DEFAULT
# 82 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 83 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 84 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	playfanfare MUS_HEAL
# 85 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitfanfare
# 86 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	special HealPlayerParty
# 87 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	callnative UpdateFollowingPokemon
# 88 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_CAPT_STERN
# 89 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_HIDE_ROUTE_110_TEAM_AQUA
# 90 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_eq VAR_REGISTER_BIRCH_STATE, 0, SlateportCity_OceanicMuseum_2F_EventScript_ReadyRegisterBirch
# 91 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_DELIVERED_DEVON_GOODS
# 92 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_116_DEVON_EMPLOYEE
# 93 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_DEVON_CORP_3F_EMPLOYEE
# 94 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 1
# 95 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 96 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	release
# 97 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 98 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 99 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio::
# 100 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_AlejandroLovesPop, MSGBOX_DEFAULT
# 101 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 102 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	goto SlateportCity_OceanicMuseum_2F_EventScript_AlejandroContinue
# 103 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 104 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 105 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_ReadyRegisterBirch::
# 106 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_REGISTER_BIRCH_STATE, 1
# 107 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 108 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 109 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PlayerFaceGrunts::
# 110 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 111 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 112 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 113 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 114 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SternFaceGrunts::
# 115 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_CAPT_STERN, Common_Movement_WalkInPlaceFasterLeft
# 116 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 117 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 118 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 119 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PlayerApproachGruntSouth::
# 120 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntSouth
# 121 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 122 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 123 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 124 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PlayerApproachGruntWest::
# 125 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntWest
# 126 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 127 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 128 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 129 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntSouth:
# 130 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 131 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 132 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_left
# 133 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 134 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 135 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntWest:
# 136 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 137 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 138 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 139 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 140 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_left
# 141 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 142 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 143 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_Unused:
# 144 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 145 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 146 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 147 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 148 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 149 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 150 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 151 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 152 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 153 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 154 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 155 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 156 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_8
# 157 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 158 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 159 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_ArchieApproachPlayer:
# 160 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 161 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 162 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 163 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_ArchieEnter:
# 164 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 165 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 166 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 167 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 168 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 169 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 170 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 171 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 172 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 173 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 174 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 175 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_GruntApproachToBattle:
# 176 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 177 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 178 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 179 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_FirstGruntEnter:
# 180 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 181 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 182 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_down
# 183 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 184 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 185 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_FirstGruntApproach:
# 186 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 187 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 188 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 189 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 190 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 191 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 192 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 193 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 194 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_GruntDefeated:
# 195 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	lock_facing_direction
# 196 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 197 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	unlock_facing_direction
# 198 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 199 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 200 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_SecondGruntEnter:
# 201 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 202 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 203 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 204 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_SecondGruntApproach:
# 205 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 206 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 207 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 208 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 209 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 210 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 211 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 212 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 213 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 214 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 215 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_GruntMoveForArchie:
# 216 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 217 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 218 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 219 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 220 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 221 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 222 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 223 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 224 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_8
# 225 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_fast_down
# 226 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_up
# 227 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 228 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 229 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_WaterQualitySample1::
# 230 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample1, MSGBOX_SIGN
# 231 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 232 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 233 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_WaterQualitySample2::
# 234 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample2, MSGBOX_SIGN
# 235 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 236 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 237 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PressureExperiment::
# 238 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_PressureExperiment, MSGBOX_SIGN
# 239 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 240 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 241 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_HoennModel::
# 242 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_HoennModel, MSGBOX_SIGN
# 243 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 244 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 245 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_DeepSeawaterDisplay::
# 246 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_DeepSeawaterDisplay, MSGBOX_SIGN
# 247 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 248 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 249 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SurfaceSeawaterDisplay::
# 250 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SurfaceSeawaterDisplay, MSGBOX_SIGN
# 251 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 252 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 253 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SSTidalReplica::
# 254 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SSTidalReplica, MSGBOX_SIGN
# 255 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 256 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 257 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SubmarineReplica::
# 258 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SubmarineReplica, MSGBOX_SIGN
# 259 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 260 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 261 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SubmersibleReplica::
# 262 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SumbersibleReplica, MSGBOX_SIGN
# 263 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 264 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 265 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SSAnneReplica::
# 266 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SSAnneReplica, MSGBOX_SIGN
# 267 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 268 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 269 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_MuseumPatron1::
# 270 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_RemindsMeOfAbandonedShip, MSGBOX_NPC
# 271 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 272 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 273 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_MuseumPatron2::
# 274 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_DontRunInMuseum, MSGBOX_NPC
# 275 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 276 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 277 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_MuseumPatron3::
# 278 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	lock
# 279 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	faceplayer
# 280 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WantToRideSubmarine, MSGBOX_DEFAULT
# 281 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 282 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 283 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 284 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	release
# 285 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 286 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 287 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_ThankYouForTheParts:
# 288 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Yes? If you're looking for STERN,\n"
# 289 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "that would be me.\p"
# 290 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I'm sorry for your trouble finding me.\n"
# 291 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I had just got word of a fantastic new\l"
# 292 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "discovery here and had to see it.\p"
# 293 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Ah! Those must be the parts I ordered\n"
# 294 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "from MR. STONE of DEVON.\p"
# 295 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Thank you! That's great!\n"
# 296 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We can prepare for our expedition now.$"
# 297 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 298 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WellTakeThoseParts:
# 299 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Hehehe, hold it!\n"
# 300 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We'll take those parts!$"
# 301 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 302 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SternWhoAreYou:
# 303 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "CAPT. STERN: Wh-what?\n"
# 304 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Who are you people?\p"
# 305 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "How did you know we would be here?$"
# 306 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 307 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WereTeamAqua:
# 308 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We're TEAM AQUA!\p"
# 309 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Our BOSS wants those parts!\n"
# 310 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Shut your yap and fork them over!$"
# 311 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 312 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_Grunt1Defeat:
# 313 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Awaaaah!\n"
# 314 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "A kid beat me!$"
# 315 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 316 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_BossGoingToBeFurious:
# 317 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Oh, man, what a disaster…\n"
# 318 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The BOSS is going to be furious…$"
# 319 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 320 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_LetMeTakeCareOfThis:
# 321 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Humph, sniveling wimp!\n"
# 322 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Let me take care of this!$"
# 323 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 324 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_Grunt2Defeat:
# 325 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "What?!\n"
# 326 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I lost, too!$"
# 327 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 328 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_MeddlingKid:
# 329 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Now what? If we don't get the parts,\n"
# 330 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "we're in for it!\p"
# 331 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Arrgh, I didn't count on being meddled\n"
# 332 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "with by some meddling kid!$"
# 333 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 334 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_CameToSeeWhatsTakingSoLong:
# 335 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I came to see what was taking so\n"
# 336 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "long to snatch some parts, and you\l"
# 337 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "simps are held up by a mere child?$"
# 338 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 339 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_ArchieWarning:
# 340 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We are TEAM AQUA.\n"
# 341 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The sea is our future.\p"
# 342 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I am a CAPTAIN of TEAM AQUA.\n"
# 343 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Why do you interfere with us?\p"
# 344 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "…No.\n"
# 345 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You're not with TEAM MAGMA.\p"
# 346 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Your eyes don't burn with greed.\n"
# 347 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You just don't understand.\p"
# 348 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "… … … … … …\n"
# 349 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "… … … … … …\p"
# 350 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "POKéMON, people… civilization itself\n"
# 351 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "all of it survives because of energy.\p"
# 352 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The land hoards it.\n"
# 353 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The sea produces it.\p"
# 354 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "TEAM AQUA seeks to expand the oceans,\n"
# 355 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "to awaken their true potential.\p"
# 356 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Endless tides.\n"
# 357 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Endless power.\p"
# 358 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Hydroelectric energy for the entire world\n"
# 359 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "shared, controlled, eternal.\p"
# 360 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "No more nations hoarding power.\n"
# 361 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "No more cities choking in darkness.\p"
# 362 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Yes… some land will sink.\n"
# 363 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Some cities will be lost.\p"
# 364 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "But progress always demands sacrifice.\n"
# 365 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "That is the price of a new world.\p"
# 366 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You’re too young to weigh lives\n"
# 367 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "against the future they buy.\p"
# 368 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "So listen carefully.\p"
# 369 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Interfere with TEAM AQUA again,\n"
# 370 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "and you will be treated as an enemy.\p"
# 371 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "History will move forward,\n"
# 372 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "with or without you.$"
# 373 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 374 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SternThankYouForSavingUs:
# 375 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "CAPT. STERN: You're…\n"
# 376 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Ah, okay, you're {PLAYER}{KUN}…\p"
# 377 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Anyway, that was a tense situation!\n"
# 378 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Thank you for saving us!\p"
# 379 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Oh, yes, I almost forgot that you\n"
# 380 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "even brought the parts from DEVON!$"
# 381 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 382 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SternIveGotToGo:
# 383 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "CAPT. STERN: Whoops!\n"
# 384 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "There's no time to lose!\p"
# 385 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We have to set out on our ocean-floor\n"
# 386 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "expedition really soon.\p"
# 387 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Thanks again, but now I've got\n"
# 388 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "to go!\p"
# 389 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Feel free to wander around and check\n"
# 390 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "out our facilities, though.$"
# 391 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 392 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_RemindsMeOfAbandonedShip:
# 393 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I saw a model of a ship here.\p"
# 394 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It reminded me of the ABANDONED SHIP\n"
# 395 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "near DEWFORD TOWN…$"
# 396 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 397 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_DontRunInMuseum:
# 398 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Don't you dare run around inside\n"
# 399 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "the MUSEUM!$"
# 400 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 401 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WantToRideSubmarine:
# 402 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Wow, the submarine's awesome!\n"
# 403 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I want to go for a ride!$"
# 404 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 405 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample1:
# 406 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“WATER QUALITY SAMPLE 1,” the\n"
# 407 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "label says.\p"
# 408 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The sea is all connected, but the\n"
# 409 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "water seems to differ by region.$"
# 410 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 411 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample2:
# 412 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“WATER QUALITY SAMPLE 2,” the\n"
# 413 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "label says.\p"
# 414 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Does the saltiness of seawater differ\n"
# 415 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "by region, too?$"
# 416 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 417 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_PressureExperiment:
# 418 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "A rubber ball is expanding and\n"
# 419 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "shrinking.\p"
# 420 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“In the sea, the weight of water itself\n"
# 421 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "exerts pressure.\p"
# 422 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“In shallow water, the pressure is not\n"
# 423 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "very heavy.\p"
# 424 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“However, in extremely deep water,\n"
# 425 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "the pressure can reach even tens of\l"
# 426 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "thousands of tons on a small area.”$"
# 427 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 428 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_HoennModel:
# 429 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“MODEL OF HOENN REGION”\p"
# 430 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It's a miniature diorama of the\n"
# 431 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "HOENN region.\p"
# 432 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Where is LITTLEROOT TOWN on this?$"
# 433 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 434 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_DeepSeawaterDisplay:
# 435 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It's a display on the flow of seawater.\p"
# 436 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“Near the bottom of the sea, water\n"
# 437 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "flows due to differences in such\l"
# 438 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "factors as temperature and salinity.”$"
# 439 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 440 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SurfaceSeawaterDisplay:
# 441 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It's a display on the flow of seawater.\p"
# 442 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“Toward the surface, seawater flows\n"
# 443 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "as currents driven by the winds.”$"
# 444 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 445 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SSTidalReplica:
# 446 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“THE FERRY S.S. TIDAL\p"
# 447 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A scale replica of the ship under\n"
# 448 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "construction at STERN'S SHIPYARD.”$"
# 449 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 450 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SubmarineReplica:
# 451 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“SUBMARINE EXPLORER 1\p"
# 452 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A replica of the high-performance\n"
# 453 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "ocean floor exploration submarine.”$"
# 454 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 455 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SumbersibleReplica:
# 456 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“SUBMERSIBLE POD\p"
# 457 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A replica of a compact, unmanned\n"
# 458 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "pod for seafloor exploration.”$"
# 459 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 460 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SSAnneReplica:
# 461 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“S.S. ANNE\p"
# 462 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A replica of the luxury liner that\n"
# 463 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "circles the globe.”$"
# 464 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 465 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
///////////// ALEJANDRO PART
# 466 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 467 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_AlejandroLovesPop:
# 468 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "ALEJANDRO: Wait... Is that POP\n"
# 469 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "you're listening to?\p"
# 470 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Heh, I love POP.\n"
# 471 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You've got really good taste.\p"
# 472 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "All right. Just this once,\n"
# 473 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I'll let you off.$"
# 474 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 475 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat:
# 476 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Impressive…$"
# 477 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 478 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_AlejandroAfterBattle:
# 479 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "What a surprise, I didn't expect a\n"
# 480 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "competent trainer.\p"
# 481 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You with those weird clothes there,\n"
# 482 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I heard about a young person who has\l"
# 483 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "been causing trouble for TEAM AQUA.\p"
# 484 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Well, I was careless and brought few\n"
# 485 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "POKéMON this time.\p"
# 486 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Everything was so carefully arranged,\n"
# 487 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I didn't think I would have problems.\p"
# 488 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Next time, we will be prepared.$"
