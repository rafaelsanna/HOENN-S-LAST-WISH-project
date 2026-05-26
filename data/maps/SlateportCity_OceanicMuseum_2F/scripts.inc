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
	trainerbattle_no_intro TRAINER_ALEJANDRO_1, SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat
# 57 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_AlejandroAfterBattle, MSGBOX_DEFAULT
# 58 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 59 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	savebgm MUS_DUMMY
# 60 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadedefaultbgm
# 61 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 62 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_ARCHIE
# 63 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_GRUNT_1
# 64 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_GRUNT_2
# 65 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 66 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay 30
# 67 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_HIDE_SLATEPORT_CITY_OCEANIC_MUSEUM_AQUA_GRUNTS
# 68 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 69 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 70 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SternThankYouForSavingUs, MSGBOX_DEFAULT
# 71 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_0x8004, ITEM_DEVON_PARTS
# 72 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call Common_EventScript_PlayerHandedOverTheItem
# 73 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SternIveGotToGo, MSGBOX_DEFAULT
# 74 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 75 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 76 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	playfanfare MUS_HEAL
# 77 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitfanfare
# 78 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	special HealPlayerParty
# 79 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	callnative UpdateFollowingPokemon
# 80 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	removeobject LOCALID_OCEANIC_MUSEUM_2F_CAPT_STERN
# 81 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_HIDE_ROUTE_110_TEAM_AQUA
# 82 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	call_if_eq VAR_REGISTER_BIRCH_STATE, 0, SlateportCity_OceanicMuseum_2F_EventScript_ReadyRegisterBirch
# 83 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_DELIVERED_DEVON_GOODS
# 84 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_116_DEVON_EMPLOYEE
# 85 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_DEVON_CORP_3F_EMPLOYEE
# 86 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 1
# 87 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 88 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	release
# 89 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 90 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 91 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_ReadyRegisterBirch::
# 92 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	setvar VAR_REGISTER_BIRCH_STATE, 1
# 93 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 94 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 95 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PlayerFaceGrunts::
# 96 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 97 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 98 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 99 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 100 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SternFaceGrunts::
# 101 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_OCEANIC_MUSEUM_2F_CAPT_STERN, Common_Movement_WalkInPlaceFasterLeft
# 102 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 103 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 104 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 105 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PlayerApproachGruntSouth::
# 106 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntSouth
# 107 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 108 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 109 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 110 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PlayerApproachGruntWest::
# 111 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement LOCALID_PLAYER, SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntWest
# 112 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 113 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	return
# 114 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 115 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntSouth:
# 116 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 117 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 118 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_left
# 119 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 120 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 121 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_PlayerApproachGruntWest:
# 122 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 123 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 124 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 125 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 126 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_left
# 127 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 128 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 129 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_Unused:
# 130 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 131 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 132 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 133 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 134 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 135 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 136 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 137 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 138 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 139 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 140 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 141 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_up
# 142 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_8
# 143 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 144 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 145 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_ArchieApproachPlayer:
# 146 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 147 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 148 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 149 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_ArchieEnter:
# 150 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 151 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 152 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 153 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 154 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 155 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 156 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 157 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 158 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 159 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 160 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 161 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_GruntApproachToBattle:
# 162 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 163 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 164 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 165 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_FirstGruntEnter:
# 166 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 167 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 168 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_down
# 169 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 170 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 171 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_FirstGruntApproach:
# 172 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 173 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 174 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 175 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 176 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 177 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 178 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 179 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 180 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_GruntDefeated:
# 181 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	lock_facing_direction
# 182 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_left
# 183 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	unlock_facing_direction
# 184 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 185 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 186 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_SecondGruntEnter:
# 187 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 188 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 189 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 190 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_SecondGruntApproach:
# 191 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 192 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 193 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 194 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_down
# 195 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 196 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 197 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 198 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_right
# 199 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 200 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 201 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Movement_GruntMoveForArchie:
# 202 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 203 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 204 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 205 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 206 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 207 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 208 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 209 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_16
# 210 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	delay_8
# 211 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_fast_down
# 212 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	walk_in_place_faster_up
# 213 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	step_end
# 214 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 215 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_WaterQualitySample1::
# 216 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample1, MSGBOX_SIGN
# 217 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 218 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 219 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_WaterQualitySample2::
# 220 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample2, MSGBOX_SIGN
# 221 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 222 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 223 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_PressureExperiment::
# 224 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_PressureExperiment, MSGBOX_SIGN
# 225 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 226 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 227 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_HoennModel::
# 228 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_HoennModel, MSGBOX_SIGN
# 229 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 230 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 231 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_DeepSeawaterDisplay::
# 232 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_DeepSeawaterDisplay, MSGBOX_SIGN
# 233 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 234 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 235 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SurfaceSeawaterDisplay::
# 236 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SurfaceSeawaterDisplay, MSGBOX_SIGN
# 237 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 238 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 239 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SSTidalReplica::
# 240 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SSTidalReplica, MSGBOX_SIGN
# 241 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 242 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 243 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SubmarineReplica::
# 244 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SubmarineReplica, MSGBOX_SIGN
# 245 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 246 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 247 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SubmersibleReplica::
# 248 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SumbersibleReplica, MSGBOX_SIGN
# 249 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 250 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 251 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_SSAnneReplica::
# 252 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_SSAnneReplica, MSGBOX_SIGN
# 253 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 254 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 255 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_MuseumPatron1::
# 256 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_RemindsMeOfAbandonedShip, MSGBOX_NPC
# 257 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 258 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 259 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_MuseumPatron2::
# 260 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_DontRunInMuseum, MSGBOX_NPC
# 261 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 262 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 263 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_EventScript_MuseumPatron3::
# 264 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	lock
# 265 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	faceplayer
# 266 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	msgbox SlateportCity_OceanicMuseum_2F_Text_WantToRideSubmarine, MSGBOX_DEFAULT
# 267 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	closemessage
# 268 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 269 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	waitmovement 0
# 270 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	release
# 271 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	end
# 272 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 273 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_ThankYouForTheParts:
# 274 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Yes? If you're looking for STERN,\n"
# 275 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "that would be me.\p"
# 276 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Ah! Those must be the parts I ordered\n"
# 277 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "from MR. STONE of DEVON.\p"
# 278 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Thank you! That's great!\n"
# 279 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We can prepare for our expedition now.$"
# 280 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 281 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WellTakeThoseParts:
# 282 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Hehehe, hold it!\n"
# 283 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We'll take those parts!$"
# 284 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 285 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SternWhoAreYou:
# 286 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "CAPT. STERN: Wh-what?\n"
# 287 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Who are you people?$"
# 288 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 289 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WereTeamAqua:
# 290 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We're TEAM AQUA!\p"
# 291 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Our BOSS wants those parts!\n"
# 292 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Shut your yap and fork them over!$"
# 293 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 294 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_Grunt1Defeat:
# 295 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Awaaaah!\n"
# 296 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "A kid beat me!$"
# 297 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 298 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_BossGoingToBeFurious:
# 299 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Oh, man, what a disaster…\n"
# 300 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The BOSS is going to be furious…$"
# 301 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 302 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_LetMeTakeCareOfThis:
# 303 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Humph, sniveling wimp!\n"
# 304 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Let me take care of this!$"
# 305 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 306 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_Grunt2Defeat:
# 307 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "What?!\n"
# 308 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I lost, too!$"
# 309 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 310 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_MeddlingKid:
# 311 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Now what? If we don't get the parts,\n"
# 312 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "we're in for it!\p"
# 313 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Arrgh, I didn't count on being meddled\n"
# 314 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "with by some meddling kid!$"
# 315 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 316 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_CameToSeeWhatsTakingSoLong:
# 317 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I came to see what was taking so\n"
# 318 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "long to snatch some parts, and you\l"
# 319 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "simps are held up by a mere child?$"
# 320 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 321 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_ArchieWarning:
# 322 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We are TEAM AQUA.\n"
# 323 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The sea is our future.\p"
# 324 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I am a CAPTAIN of TEAM AQUA.\n"
# 325 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Why do you interfere with us?\p"
# 326 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "…No.\n"
# 327 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You're not with TEAM MAGMA.\p"
# 328 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Your eyes don't burn with greed.\n"
# 329 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You just don't understand.\p"
# 330 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "… … … … … …\n"
# 331 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "… … … … … …\p"
# 332 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "POKéMON, people… civilization itself\n"
# 333 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "all of it survives because of energy.\p"
# 334 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The land hoards it.\n"
# 335 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The sea produces it.\p"
# 336 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "TEAM AQUA seeks to expand the oceans,\n"
# 337 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "to awaken their true potential.\p"
# 338 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Endless tides.\n"
# 339 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Endless power.\p"
# 340 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Hydroelectric energy for the entire world\n"
# 341 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "shared, controlled, eternal.\p"
# 342 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "No more nations hoarding power.\n"
# 343 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "No more cities choking in darkness.\p"
# 344 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Yes… some land will sink.\n"
# 345 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Some cities will be lost.\p"
# 346 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "But progress always demands sacrifice.\n"
# 347 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "That is the price of a new world.\p"
# 348 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You’re too young to weigh lives\n"
# 349 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "against the future they buy.\p"
# 350 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "So listen carefully.\p"
# 351 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Interfere with TEAM AQUA again,\n"
# 352 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "and you will be treated as an enemy.\p"
# 353 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "History will move forward,\n"
# 354 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "with or without you.$"
# 355 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 356 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SternThankYouForSavingUs:
# 357 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "CAPT. STERN: You're…\n"
# 358 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Ah, okay, you're {PLAYER}{KUN}…\p"
# 359 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Anyway, that was a tense situation!\n"
# 360 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Thank you for saving us!\p"
# 361 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Oh, yes, I almost forgot that you\n"
# 362 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "even brought the parts from DEVON!$"
# 363 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 364 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SternIveGotToGo:
# 365 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "CAPT. STERN: Whoops!\n"
# 366 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "There's no time to lose!\p"
# 367 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "We have to set out on our ocean-floor\n"
# 368 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "expedition really soon.\p"
# 369 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Thanks again, but now I've got\n"
# 370 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "to go!\p"
# 371 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Feel free to wander around and check\n"
# 372 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "out our facilities, though.$"
# 373 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 374 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_RemindsMeOfAbandonedShip:
# 375 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I saw a model of a ship here.\p"
# 376 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It reminded me of the ABANDONED SHIP\n"
# 377 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "near DEWFORD TOWN…$"
# 378 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 379 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_DontRunInMuseum:
# 380 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Don't you dare run around inside\n"
# 381 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "the MUSEUM!$"
# 382 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 383 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WantToRideSubmarine:
# 384 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Wow, the submarine's awesome!\n"
# 385 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I want to go for a ride!$"
# 386 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 387 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample1:
# 388 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“WATER QUALITY SAMPLE 1,” the\n"
# 389 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "label says.\p"
# 390 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "The sea is all connected, but the\n"
# 391 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "water seems to differ by region.$"
# 392 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 393 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_WaterQualitySample2:
# 394 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“WATER QUALITY SAMPLE 2,” the\n"
# 395 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "label says.\p"
# 396 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Does the saltiness of seawater differ\n"
# 397 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "by region, too?$"
# 398 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 399 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_PressureExperiment:
# 400 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "A rubber ball is expanding and\n"
# 401 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "shrinking.\p"
# 402 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“In the sea, the weight of water itself\n"
# 403 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "exerts pressure.\p"
# 404 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“In shallow water, the pressure is not\n"
# 405 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "very heavy.\p"
# 406 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“However, in extremely deep water,\n"
# 407 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "the pressure can reach even tens of\l"
# 408 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "thousands of tons on a small area.”$"
# 409 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 410 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_HoennModel:
# 411 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“MODEL OF HOENN REGION”\p"
# 412 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It's a miniature diorama of the\n"
# 413 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "HOENN region.\p"
# 414 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Where is LITTLEROOT TOWN on this?$"
# 415 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 416 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_DeepSeawaterDisplay:
# 417 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It's a display on the flow of seawater.\p"
# 418 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“Near the bottom of the sea, water\n"
# 419 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "flows due to differences in such\l"
# 420 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "factors as temperature and salinity.”$"
# 421 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 422 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SurfaceSeawaterDisplay:
# 423 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "It's a display on the flow of seawater.\p"
# 424 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“Toward the surface, seawater flows\n"
# 425 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "as currents driven by the winds.”$"
# 426 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 427 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SSTidalReplica:
# 428 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“THE FERRY S.S. TIDAL\p"
# 429 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A scale replica of the ship under\n"
# 430 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "construction at STERN'S SHIPYARD.”$"
# 431 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 432 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SubmarineReplica:
# 433 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“SUBMARINE EXPLORER 1\p"
# 434 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A replica of the high-performance\n"
# 435 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "ocean floor exploration submarine.”$"
# 436 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 437 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SumbersibleReplica:
# 438 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“SUBMERSIBLE POD\p"
# 439 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A replica of a compact, unmanned\n"
# 440 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "pod for seafloor exploration.”$"
# 441 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 442 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_SSAnneReplica:
# 443 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“S.S. ANNE\p"
# 444 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "“A replica of the luxury liner that\n"
# 445 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "circles the globe.”$"
# 446 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 447 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
///////////// ALEJANDRO PART
# 448 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 449 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat:
# 450 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Impressive…$"
# 451 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"

# 452 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
SlateportCity_OceanicMuseum_2F_Text_AlejandroAfterBattle:
# 453 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "What a surprise, I didn't expect a\n"
# 454 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "competent trainer.\p"
# 455 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "You with those weird clothes there,\n"
# 456 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I heard about a young person who has\l"
# 457 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "been causing trouble for TEAM AQUA.\p"
# 458 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Well, I was careless and brought few\n"
# 459 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "POKéMON this time.\p"
# 460 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "I didn't think I would have problems.\p"
# 461 "data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory"
	.string "Next time won't be so easy!$"
