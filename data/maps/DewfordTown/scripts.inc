# 1 "data/maps/DewfordTown/scripts.pory"

# 2 "data/maps/DewfordTown/scripts.pory"
DewfordTown_MapScripts::
# 3 "data/maps/DewfordTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, DewfordTown_OnTransition
# 4 "data/maps/DewfordTown/scripts.pory"
	.byte 0
# 5 "data/maps/DewfordTown/scripts.pory"

# 6 "data/maps/DewfordTown/scripts.pory"
DewfordTown_OnTransition:
# 7 "data/maps/DewfordTown/scripts.pory"
	setflag FLAG_VISITED_DEWFORD_TOWN
# 8 "data/maps/DewfordTown/scripts.pory"
	end
# 9 "data/maps/DewfordTown/scripts.pory"

# 10 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_Briney::
# 11 "data/maps/DewfordTown/scripts.pory"
	lock
# 12 "data/maps/DewfordTown/scripts.pory"
	faceplayer
# 13 "data/maps/DewfordTown/scripts.pory"
	goto_if_unset FLAG_DELIVERED_STEVEN_LETTER, DewfordTown_EventScript_ReturnToPetalburgPrompt
# 14 "data/maps/DewfordTown/scripts.pory"
	message DewfordTown_Text_WhereAreWeBound
# 15 "data/maps/DewfordTown/scripts.pory"
	waitmessage
# 16 "data/maps/DewfordTown/scripts.pory"
	multichoicedefault 21, 6, MULTI_BRINEY_ON_DEWFORD, 2, FALSE
# 17 "data/maps/DewfordTown/scripts.pory"
	switch VAR_RESULT
# 18 "data/maps/DewfordTown/scripts.pory"
	case 0, DewfordTown_EventScript_ChoosePetalburg
# 19 "data/maps/DewfordTown/scripts.pory"
	case 1, DewfordTown_EventScript_ChooseSlateport
# 20 "data/maps/DewfordTown/scripts.pory"
	case 2, DewfordTown_EventScript_CancelSailSelect
# 21 "data/maps/DewfordTown/scripts.pory"
	case MULTI_B_PRESSED, DewfordTown_EventScript_CancelSailSelect
# 22 "data/maps/DewfordTown/scripts.pory"
	end
# 23 "data/maps/DewfordTown/scripts.pory"

# 24 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_ChoosePetalburg::
# 25 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_PetalburgWereSettingSail, MSGBOX_DEFAULT
# 26 "data/maps/DewfordTown/scripts.pory"
	closemessage
# 27 "data/maps/DewfordTown/scripts.pory"
	goto DewfordTown_EventScript_SailToPetalburg
# 28 "data/maps/DewfordTown/scripts.pory"
	release
# 29 "data/maps/DewfordTown/scripts.pory"
	end
# 30 "data/maps/DewfordTown/scripts.pory"

# 31 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_ChooseSlateport::
# 32 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_SlateportWereSettingSail, MSGBOX_DEFAULT
# 33 "data/maps/DewfordTown/scripts.pory"
	closemessage
# 34 "data/maps/DewfordTown/scripts.pory"
	goto DewfordTown_EventScript_SailToSlateport
# 35 "data/maps/DewfordTown/scripts.pory"
	release
# 36 "data/maps/DewfordTown/scripts.pory"
	end
# 37 "data/maps/DewfordTown/scripts.pory"

# 38 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_CancelSailSelect::
# 39 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_JustTellMeWhenYouNeedToSetSail, MSGBOX_DEFAULT
# 40 "data/maps/DewfordTown/scripts.pory"
	closemessage
# 41 "data/maps/DewfordTown/scripts.pory"
	release
# 42 "data/maps/DewfordTown/scripts.pory"
	end
# 43 "data/maps/DewfordTown/scripts.pory"

# 44 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_ReturnToPetalburgPrompt::
# 45 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_SetSailBackToPetalburg, MSGBOX_YESNO
# 46 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, YES, DewfordTown_EventScript_SailBackToPetalburg
# 47 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_GoDeliverIllBeWaiting, MSGBOX_DEFAULT
# 48 "data/maps/DewfordTown/scripts.pory"
	release
# 49 "data/maps/DewfordTown/scripts.pory"
	end
# 50 "data/maps/DewfordTown/scripts.pory"

# 51 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_SailBackToPetalburg::
# 52 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_PetalburgWereSettingSail2, MSGBOX_DEFAULT
# 53 "data/maps/DewfordTown/scripts.pory"
	closemessage
# 54 "data/maps/DewfordTown/scripts.pory"
	goto DewfordTown_EventScript_SailToPetalburg
# 55 "data/maps/DewfordTown/scripts.pory"
	end
# 56 "data/maps/DewfordTown/scripts.pory"

# 57 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_Woman::
# 58 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_TinyIslandCommunity, MSGBOX_NPC
# 59 "data/maps/DewfordTown/scripts.pory"
	end
# 60 "data/maps/DewfordTown/scripts.pory"

# 61 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_Newpokemart::
# 62 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_Newpokemart, MSGBOX_NPC
# 63 "data/maps/DewfordTown/scripts.pory"
	end
# 64 "data/maps/DewfordTown/scripts.pory"

# 65 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_TownSign::
# 66 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_TownSign, MSGBOX_SIGN
# 67 "data/maps/DewfordTown/scripts.pory"
	end
# 68 "data/maps/DewfordTown/scripts.pory"

# 69 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_GymSign::
# 70 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_GymSign, MSGBOX_SIGN
# 71 "data/maps/DewfordTown/scripts.pory"
	end
# 72 "data/maps/DewfordTown/scripts.pory"

# 73 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_HallSign::
# 74 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_HallSign, MSGBOX_SIGN
# 75 "data/maps/DewfordTown/scripts.pory"
	end
# 76 "data/maps/DewfordTown/scripts.pory"
	
# 77 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_OldRodFisherman::
# 78 "data/maps/DewfordTown/scripts.pory"
	lock
# 79 "data/maps/DewfordTown/scripts.pory"
	faceplayer
# 80 "data/maps/DewfordTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_OLD_ROD, DewfordTown_EventScript_HowsFishing
# 81 "data/maps/DewfordTown/scripts.pory"

# 82 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_FishingAncientArt, MSGBOX_DEFAULT
# 83 "data/maps/DewfordTown/scripts.pory"

# 84 "data/maps/DewfordTown/scripts.pory"
	special Special_CheckPartyHasWaterMon
# 85 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, DewfordTown_EventScript_GiveOldRod
# 86 "data/maps/DewfordTown/scripts.pory"

# 87 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_NoWaterMon, MSGBOX_DEFAULT
# 88 "data/maps/DewfordTown/scripts.pory"
	release
# 89 "data/maps/DewfordTown/scripts.pory"
	end
# 90 "data/maps/DewfordTown/scripts.pory"

# 91 "data/maps/DewfordTown/scripts.pory"
DewfordTown_CheckWaterResult::
# 92 "data/maps/DewfordTown/scripts.pory"
	compare VAR_TEMP_0, 1
# 93 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq DewfordTown_EventScript_GiveOldRod
# 94 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_NoWaterMon, MSGBOX_DEFAULT
# 95 "data/maps/DewfordTown/scripts.pory"
	release
# 96 "data/maps/DewfordTown/scripts.pory"
	end
# 97 "data/maps/DewfordTown/scripts.pory"

# 98 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_GiveOldRod::
# 99 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_GiveYouOneOfMyRods, MSGBOX_DEFAULT
# 100 "data/maps/DewfordTown/scripts.pory"
	giveitem ITEM_OLD_ROD
# 101 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 102 "data/maps/DewfordTown/scripts.pory"
	setflag FLAG_RECEIVED_OLD_ROD
# 103 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_ThrowInFishingAdvice, MSGBOX_DEFAULT
# 104 "data/maps/DewfordTown/scripts.pory"
	release
# 105 "data/maps/DewfordTown/scripts.pory"
	end
# 106 "data/maps/DewfordTown/scripts.pory"

# 107 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_NotGettingItchToFish::
# 108 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_ThatsTooBadThen, MSGBOX_DEFAULT
# 109 "data/maps/DewfordTown/scripts.pory"
	release
# 110 "data/maps/DewfordTown/scripts.pory"
	end
# 111 "data/maps/DewfordTown/scripts.pory"

# 112 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_HowsFishing::
# 113 "data/maps/DewfordTown/scripts.pory"
	message DewfordTown_Text_HowsYourFishing
# 114 "data/maps/DewfordTown/scripts.pory"
	waitmessage
# 115 "data/maps/DewfordTown/scripts.pory"
	multichoice 20, 8, MULTI_HOWS_FISHING, TRUE
# 116 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, 0, DewfordTown_EventScript_FishingExcellent
# 117 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, 1, DewfordTown_EventScript_FishingNotSoGood
# 118 "data/maps/DewfordTown/scripts.pory"
	end
# 119 "data/maps/DewfordTown/scripts.pory"

# 120 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_FishingExcellent::
# 121 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_GreatHaulInSomeBigOnes, MSGBOX_DEFAULT
# 122 "data/maps/DewfordTown/scripts.pory"
	release
# 123 "data/maps/DewfordTown/scripts.pory"
	end
# 124 "data/maps/DewfordTown/scripts.pory"

# 125 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_FishingNotSoGood::
# 126 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_FishingAdvice, MSGBOX_DEFAULT
# 127 "data/maps/DewfordTown/scripts.pory"
	release
# 128 "data/maps/DewfordTown/scripts.pory"
	end
# 129 "data/maps/DewfordTown/scripts.pory"

# 130 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_SailToPetalburg::
# 131 "data/maps/DewfordTown/scripts.pory"
	call EventScript_BackupMrBrineyLocation
# 132 "data/maps/DewfordTown/scripts.pory"
	setobjectsubpriority LOCALID_DEWFORD_BRINEY, MAP_DEWFORD_TOWN, 0
# 133 "data/maps/DewfordTown/scripts.pory"
	setobjectsubpriority LOCALID_PLAYER, MAP_DEWFORD_TOWN, 0
# 134 "data/maps/DewfordTown/scripts.pory"
	applymovement LOCALID_DEWFORD_BRINEY, DewfordTown_Movement_BrineyBoardBoat
# 135 "data/maps/DewfordTown/scripts.pory"
	waitmovement 0
# 136 "data/maps/DewfordTown/scripts.pory"
	removeobject LOCALID_DEWFORD_BRINEY
# 137 "data/maps/DewfordTown/scripts.pory"
	applymovement LOCALID_PLAYER, DewfordTown_Movement_PlayerBoardBoat
# 138 "data/maps/DewfordTown/scripts.pory"
	waitmovement 0
# 139 "data/maps/DewfordTown/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_DEWFORD_TOWN
# 140 "data/maps/DewfordTown/scripts.pory"
	call Common_EventScript_PlayBrineysBoatMusic
# 141 "data/maps/DewfordTown/scripts.pory"
	applymovement LOCALID_DEWFORD_BOAT, DewfordTown_Movement_SailToPetalburg
# 142 "data/maps/DewfordTown/scripts.pory"
	applymovement LOCALID_PLAYER, DewfordTown_Movement_SailToPetalburg
# 143 "data/maps/DewfordTown/scripts.pory"
	waitmovement 0
# 144 "data/maps/DewfordTown/scripts.pory"
	showobjectat LOCALID_PLAYER, MAP_ROUTE104
# 145 "data/maps/DewfordTown/scripts.pory"
	call Common_EventScript_StopBrineysBoatMusic
# 146 "data/maps/DewfordTown/scripts.pory"
	applymovement LOCALID_PLAYER, DewfordTown_Movement_ExitBoatPetalburg
# 147 "data/maps/DewfordTown/scripts.pory"
	waitmovement 0
# 148 "data/maps/DewfordTown/scripts.pory"
	showobjectat LOCALID_PLAYER, MAP_ROUTE104
# 149 "data/maps/DewfordTown/scripts.pory"
	clearflag FLAG_HIDE_BRINEYS_HOUSE_MR_BRINEY
# 150 "data/maps/DewfordTown/scripts.pory"
	clearflag FLAG_HIDE_BRINEYS_HOUSE_PEEKO
# 151 "data/maps/DewfordTown/scripts.pory"
	clearflag FLAG_HIDE_ROUTE_104_MR_BRINEY_BOAT
# 152 "data/maps/DewfordTown/scripts.pory"
	setflag FLAG_HIDE_MR_BRINEY_BOAT_DEWFORD_TOWN
# 153 "data/maps/DewfordTown/scripts.pory"
	hideobjectat LOCALID_DEWFORD_BOAT, MAP_DEWFORD_TOWN
# 154 "data/maps/DewfordTown/scripts.pory"
	setvar VAR_BOARD_BRINEY_BOAT_STATE, 2
# 155 "data/maps/DewfordTown/scripts.pory"
	resetobjectsubpriority LOCALID_PLAYER, MAP_DEWFORD_TOWN
# 156 "data/maps/DewfordTown/scripts.pory"
	warp MAP_ROUTE104_MR_BRINEYS_HOUSE, 5, 4
# 157 "data/maps/DewfordTown/scripts.pory"
	copyvar VAR_BRINEY_LOCATION, VAR_0x8008
# 158 "data/maps/DewfordTown/scripts.pory"
	waitstate
# 159 "data/maps/DewfordTown/scripts.pory"
	release
# 160 "data/maps/DewfordTown/scripts.pory"
	end
# 161 "data/maps/DewfordTown/scripts.pory"

# 162 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_SailToSlateport::
# 163 "data/maps/DewfordTown/scripts.pory"
    call EventScript_BackupMrBrineyLocation
# 164 "data/maps/DewfordTown/scripts.pory"
    setobjectsubpriority LOCALID_DEWFORD_BRINEY, MAP_DEWFORD_TOWN, 0
# 165 "data/maps/DewfordTown/scripts.pory"
    setobjectsubpriority LOCALID_PLAYER, MAP_DEWFORD_TOWN, 1
# 166 "data/maps/DewfordTown/scripts.pory"
    applymovement LOCALID_DEWFORD_BRINEY, DewfordTown_Movement_BrineyBoardBoat
# 167 "data/maps/DewfordTown/scripts.pory"
    waitmovement 0
# 168 "data/maps/DewfordTown/scripts.pory"
    removeobject LOCALID_DEWFORD_BRINEY
# 169 "data/maps/DewfordTown/scripts.pory"
    applymovement LOCALID_PLAYER, DewfordTown_Movement_PlayerBoardBoat
# 170 "data/maps/DewfordTown/scripts.pory"
    waitmovement 0
# 171 "data/maps/DewfordTown/scripts.pory"
    hideobjectat LOCALID_PLAYER, MAP_DEWFORD_TOWN
# 172 "data/maps/DewfordTown/scripts.pory"
    call Common_EventScript_PlayBrineysBoatMusic
# 173 "data/maps/DewfordTown/scripts.pory"
    applymovement LOCALID_DEWFORD_BOAT, DewfordTown_Movement_SailToSlateport
# 174 "data/maps/DewfordTown/scripts.pory"
    applymovement LOCALID_PLAYER, DewfordTown_Movement_SailToSlateport
# 175 "data/maps/DewfordTown/scripts.pory"
    waitmovement 0
# 176 "data/maps/DewfordTown/scripts.pory"
    call Common_EventScript_StopBrineysBoatMusic
# 177 "data/maps/DewfordTown/scripts.pory"
    showobjectat LOCALID_PLAYER, MAP_ROUTE109
# 178 "data/maps/DewfordTown/scripts.pory"
    applymovement LOCALID_PLAYER, DewfordTown_Movement_ExitBoatSlateport
# 179 "data/maps/DewfordTown/scripts.pory"
    waitmovement 0
# 180 "data/maps/DewfordTown/scripts.pory"
    setobjectxyperm LOCALID_ROUTE109_BRINEY, 21, 28
# 181 "data/maps/DewfordTown/scripts.pory"
    addobject LOCALID_ROUTE109_BRINEY
# 182 "data/maps/DewfordTown/scripts.pory"
    setobjectsubpriority LOCALID_ROUTE109_BRINEY, MAP_ROUTE109, 0
# 183 "data/maps/DewfordTown/scripts.pory"
    // applymovement LOCALID_ROUTE109_BRINEY, DewfordTown_Movement_BrineyExitBoat  // REMOVER esta linha
# 184 "data/maps/DewfordTown/scripts.pory"
    // waitmovement 0  // REMOVER esta linha
# 185 "data/maps/DewfordTown/scripts.pory"
    clearflag FLAG_HIDE_ROUTE_109_MR_BRINEY
# 186 "data/maps/DewfordTown/scripts.pory"
    addobject LOCALID_ROUTE109_BOAT
# 187 "data/maps/DewfordTown/scripts.pory"
    clearflag FLAG_HIDE_ROUTE_109_MR_BRINEY_BOAT
# 188 "data/maps/DewfordTown/scripts.pory"
    setflag FLAG_HIDE_MR_BRINEY_BOAT_DEWFORD_TOWN
# 189 "data/maps/DewfordTown/scripts.pory"
    hideobjectat LOCALID_DEWFORD_BOAT, MAP_DEWFORD_TOWN
# 190 "data/maps/DewfordTown/scripts.pory"
    call_if_unset FLAG_DELIVERED_DEVON_GOODS, DewfordTown_EventScript_LandedSlateportDeliverGoods
# 191 "data/maps/DewfordTown/scripts.pory"
    call_if_set FLAG_DELIVERED_DEVON_GOODS, DewfordTown_EventScript_LandedSlateport
# 192 "data/maps/DewfordTown/scripts.pory"
    closemessage
# 193 "data/maps/DewfordTown/scripts.pory"
    copyvar VAR_BRINEY_LOCATION, VAR_0x8008
# 194 "data/maps/DewfordTown/scripts.pory"
    resetobjectsubpriority LOCALID_PLAYER, MAP_DEWFORD_TOWN
# 195 "data/maps/DewfordTown/scripts.pory"
    resetobjectsubpriority LOCALID_ROUTE109_BRINEY, MAP_ROUTE109
# 196 "data/maps/DewfordTown/scripts.pory"
    copyobjectxytoperm LOCALID_ROUTE109_BRINEY
# 197 "data/maps/DewfordTown/scripts.pory"
    release
# 198 "data/maps/DewfordTown/scripts.pory"
    end
# 199 "data/maps/DewfordTown/scripts.pory"

# 200 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_LandedSlateportDeliverGoods::
# 201 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_BrineyLandedInSlateportDeliverGoods, MSGBOX_DEFAULT
# 202 "data/maps/DewfordTown/scripts.pory"
	return
# 203 "data/maps/DewfordTown/scripts.pory"

# 204 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_LandedSlateport::
# 205 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_BrineyLandedInSlateport, MSGBOX_DEFAULT
# 206 "data/maps/DewfordTown/scripts.pory"
	return
# 207 "data/maps/DewfordTown/scripts.pory"

# 208 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_SailToPetalburg:
# 209 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 210 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 211 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 212 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 213 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 214 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 215 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 216 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 217 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 218 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 219 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 220 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 221 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 222 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 223 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 224 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 225 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 226 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 227 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 228 "data/maps/DewfordTown/scripts.pory"
	walk_left
# 229 "data/maps/DewfordTown/scripts.pory"
	walk_left
# 230 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 231 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 232 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 233 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 234 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 235 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 236 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 237 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 238 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 239 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 240 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 241 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 242 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 243 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 244 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 245 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 246 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 247 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 248 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 249 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 250 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 251 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 252 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 253 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 254 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 255 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 256 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 257 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 258 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 259 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 260 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 261 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 262 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 263 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 264 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 265 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 266 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 267 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 268 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 269 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 270 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 271 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 272 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 273 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 274 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 275 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 276 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 277 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 278 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 279 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 280 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 281 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 282 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 283 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 284 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 285 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 286 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 287 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 288 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 289 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 290 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 291 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 292 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 293 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 294 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 295 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 296 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 297 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 298 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 299 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 300 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 301 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 302 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 303 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 304 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 305 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 306 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 307 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 308 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 309 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 310 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 311 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 312 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 313 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 314 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 315 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 316 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 317 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 318 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 319 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 320 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 321 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 322 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 323 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 324 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 325 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 326 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 327 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 328 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 329 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 330 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 331 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 332 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 333 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 334 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 335 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 336 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 337 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 338 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 339 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 340 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 341 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 342 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 343 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 344 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 345 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 346 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 347 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 348 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 349 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 350 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 351 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 352 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 353 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 354 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 355 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 356 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 357 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 358 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 359 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 360 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 361 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 362 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 363 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 364 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 365 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 366 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 367 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 368 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 369 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 370 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 371 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 372 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 373 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 374 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 375 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 376 "data/maps/DewfordTown/scripts.pory"
	walk_faster_left
# 377 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 378 "data/maps/DewfordTown/scripts.pory"
	walk_fast_left
# 379 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 380 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 381 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 382 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 383 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 384 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 385 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 386 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 387 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 388 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 389 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 390 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 391 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 392 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 393 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 394 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 395 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 396 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 397 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 398 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 399 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 400 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 401 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 402 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 403 "data/maps/DewfordTown/scripts.pory"
	step_end
# 404 "data/maps/DewfordTown/scripts.pory"

# 405 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_SailToSlateport:
# 406 "data/maps/DewfordTown/scripts.pory"
	walk_right
# 407 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 408 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 409 "data/maps/DewfordTown/scripts.pory"
	walk_down
# 410 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 411 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 412 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 413 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 414 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 415 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 416 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 417 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 418 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 419 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 420 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 421 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 422 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 423 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 424 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 425 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 426 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 427 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 428 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 429 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 430 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 431 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 432 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 433 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 434 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 435 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 436 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 437 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 438 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 439 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 440 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 441 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 442 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 443 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 444 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 445 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 446 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 447 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 448 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 449 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 450 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 451 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 452 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 453 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 454 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 455 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 456 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 457 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 458 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 459 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 460 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 461 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 462 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 463 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 464 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 465 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 466 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 467 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 468 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 469 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 470 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 471 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 472 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 473 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 474 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 475 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 476 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 477 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 478 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 479 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 480 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 481 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 482 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 483 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 484 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 485 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 486 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 487 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 488 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 489 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 490 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 491 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 492 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 493 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 494 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 495 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 496 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 497 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 498 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 499 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 500 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 501 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 502 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 503 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 504 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 505 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 506 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 507 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 508 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 509 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 510 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 511 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 512 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 513 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 514 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 515 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 516 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 517 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 518 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 519 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 520 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 521 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 522 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 523 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 524 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 525 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 526 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 527 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 528 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 529 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 530 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 531 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 532 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 533 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 534 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 535 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 536 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 537 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 538 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 539 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 540 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 541 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 542 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 543 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 544 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 545 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 546 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 547 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 548 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 549 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 550 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 551 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 552 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 553 "data/maps/DewfordTown/scripts.pory"
	walk_faster_right
# 554 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 555 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 556 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 557 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 558 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 559 "data/maps/DewfordTown/scripts.pory"
	walk_fast_right
# 560 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 561 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 562 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 563 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 564 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 565 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 566 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 567 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 568 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 569 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 570 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 571 "data/maps/DewfordTown/scripts.pory"
	walk_faster_up
# 572 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 573 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 574 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 575 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 576 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 577 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 578 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 579 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 580 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 581 "data/maps/DewfordTown/scripts.pory"
	walk_fast_up
# 582 "data/maps/DewfordTown/scripts.pory"
	step_end
# 583 "data/maps/DewfordTown/scripts.pory"

# 584 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_PlayerBoardBoat:
# 585 "data/maps/DewfordTown/scripts.pory"
	walk_right
# 586 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 587 "data/maps/DewfordTown/scripts.pory"
	step_end
# 588 "data/maps/DewfordTown/scripts.pory"

# 589 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_ExitBoatPetalburg:
# 590 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 591 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 592 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 593 "data/maps/DewfordTown/scripts.pory"
	step_end
# 594 "data/maps/DewfordTown/scripts.pory"

# 595 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_ExitBoatSlateport:
# 596 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 597 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 598 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 599 "data/maps/DewfordTown/scripts.pory"
	walk_in_place_faster_down
# 600 "data/maps/DewfordTown/scripts.pory"
	step_end
# 601 "data/maps/DewfordTown/scripts.pory"

# 602 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_BrineyBoardBoat:
# 603 "data/maps/DewfordTown/scripts.pory"
	walk_up
# 604 "data/maps/DewfordTown/scripts.pory"
	step_end
# 605 "data/maps/DewfordTown/scripts.pory"

# 606 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Movement_BrineyExitBoat:
# 607 "data/maps/DewfordTown/scripts.pory"
	step_end
# 608 "data/maps/DewfordTown/scripts.pory"

# 609 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_TrendyPhraseBoy::
# 610 "data/maps/DewfordTown/scripts.pory"
	lock
# 611 "data/maps/DewfordTown/scripts.pory"
	faceplayer
# 612 "data/maps/DewfordTown/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 613 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_XIsTheBiggestHappeningThingRight, MSGBOX_YESNO
# 614 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, YES, DewfordTown_EventScript_ConfirmTrendyPhrase
# 615 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, NO, DewfordTown_EventScript_RejectTrendyPhrase
# 616 "data/maps/DewfordTown/scripts.pory"
	end
# 617 "data/maps/DewfordTown/scripts.pory"

# 618 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_ConfirmTrendyPhrase::
# 619 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_YeahDefinitionOfInRightNow, MSGBOX_DEFAULT
# 620 "data/maps/DewfordTown/scripts.pory"
	release
# 621 "data/maps/DewfordTown/scripts.pory"
	end
# 622 "data/maps/DewfordTown/scripts.pory"

# 623 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_RejectTrendyPhrase::
# 624 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_TellMeWhatsNewAndIn, MSGBOX_DEFAULT
# 625 "data/maps/DewfordTown/scripts.pory"
	setvar VAR_0x8004, EASY_CHAT_TYPE_TRENDY_PHRASE
# 626 "data/maps/DewfordTown/scripts.pory"
	call Common_ShowEasyChatScreen
# 627 "data/maps/DewfordTown/scripts.pory"
	lock
# 628 "data/maps/DewfordTown/scripts.pory"
	faceplayer
# 629 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, DewfordTown_EventScript_GiveNewTrendyPhrase
# 630 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, DewfordTown_EventScript_CancelNewTrendyPhrase
# 631 "data/maps/DewfordTown/scripts.pory"
	end
# 632 "data/maps/DewfordTown/scripts.pory"

# 633 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_GiveNewTrendyPhrase::
# 634 "data/maps/DewfordTown/scripts.pory"
	incrementgamestat GAME_STAT_STARTED_TRENDS
# 635 "data/maps/DewfordTown/scripts.pory"
	goto_if_eq VAR_0x8004, FALSE, DewfordTown_EventScript_PhraseNotTrendyEnough
# 636 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_OfCourseIKnowAboutThat, MSGBOX_DEFAULT
# 637 "data/maps/DewfordTown/scripts.pory"
	release
# 638 "data/maps/DewfordTown/scripts.pory"
	end
# 639 "data/maps/DewfordTown/scripts.pory"

# 640 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_CancelNewTrendyPhrase::
# 641 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_HearOfAnyTrendsComeShareWithMe, MSGBOX_DEFAULT
# 642 "data/maps/DewfordTown/scripts.pory"
	release
# 643 "data/maps/DewfordTown/scripts.pory"
	end
# 644 "data/maps/DewfordTown/scripts.pory"

# 645 "data/maps/DewfordTown/scripts.pory"
DewfordTown_EventScript_PhraseNotTrendyEnough::
# 646 "data/maps/DewfordTown/scripts.pory"
	msgbox DewfordTown_Text_XHuhIThinkYIsCool, MSGBOX_DEFAULT
# 647 "data/maps/DewfordTown/scripts.pory"
	release
# 648 "data/maps/DewfordTown/scripts.pory"
	end
# 649 "data/maps/DewfordTown/scripts.pory"

# 650 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_TinyIslandCommunity:
# 651 "data/maps/DewfordTown/scripts.pory"
	.string "DEWFORD is a tiny island community.\n"
# 652 "data/maps/DewfordTown/scripts.pory"
	.string "If something gets trendy here,\l"
# 653 "data/maps/DewfordTown/scripts.pory"
	.string "everyone picks up on it right away.$"
# 654 "data/maps/DewfordTown/scripts.pory"

# 655 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_TownSign:
# 656 "data/maps/DewfordTown/scripts.pory"
	.string "DEWFORD TOWN\n"
# 657 "data/maps/DewfordTown/scripts.pory"
	.string "“A tiny island in the blue sea.”$"
# 658 "data/maps/DewfordTown/scripts.pory"

# 659 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_GymSign:
# 660 "data/maps/DewfordTown/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM\n"
# 661 "data/maps/DewfordTown/scripts.pory"
	.string "The sign has graffiti all over it,\l"
# 662 "data/maps/DewfordTown/scripts.pory"
	.string "but it seems to have previously said:\p"
# 663 "data/maps/DewfordTown/scripts.pory"
	.string "LEADER: BRAWLY\l"
# 664 "data/maps/DewfordTown/scripts.pory"
	.string "“A big wave in fighting!”$"
# 665 "data/maps/DewfordTown/scripts.pory"

# 666 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_HallSign:
# 667 "data/maps/DewfordTown/scripts.pory"
	.string "DEWFORD HALL\n"
# 668 "data/maps/DewfordTown/scripts.pory"
	.string "“Everyone's information exchange!”$"
# 669 "data/maps/DewfordTown/scripts.pory"

# 670 "data/maps/DewfordTown/scripts.pory"
Route104_Text_LandedInDewfordDeliverLetter:
# 671 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: Ahoy!\n"
# 672 "data/maps/DewfordTown/scripts.pory"
	.string "We've hit land in DEWFORD.\p"
# 673 "data/maps/DewfordTown/scripts.pory"
	.string "I suppose you're off to deliver that\n"
# 674 "data/maps/DewfordTown/scripts.pory"
	.string "LETTER to, who was it now, STELLA!$"
# 675 "data/maps/DewfordTown/scripts.pory"

# 676 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_SetSailBackToPetalburg:
# 677 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: Have you delivered your\n"
# 678 "data/maps/DewfordTown/scripts.pory"
	.string "LETTER?\p"
# 679 "data/maps/DewfordTown/scripts.pory"
	.string "Or were you meaning to sail back to\n"
# 680 "data/maps/DewfordTown/scripts.pory"
	.string "PETALBURG?$"
# 681 "data/maps/DewfordTown/scripts.pory"

# 682 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_PetalburgWereSettingSail2:
# 683 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: PETALBURG it is, then!\p"
# 684 "data/maps/DewfordTown/scripts.pory"
	.string "Anchors aweigh!\n"
# 685 "data/maps/DewfordTown/scripts.pory"
	.string "NAMI, we're setting sail, my darling!$"
# 686 "data/maps/DewfordTown/scripts.pory"

# 687 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_GoDeliverIllBeWaiting:
# 688 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: Then you go on and deliver\n"
# 689 "data/maps/DewfordTown/scripts.pory"
	.string "the LETTER. I'll be waiting.$"
# 690 "data/maps/DewfordTown/scripts.pory"

# 691 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_BrineyLandedInDewford:
# 692 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: Ahoy!\n"
# 693 "data/maps/DewfordTown/scripts.pory"
	.string "We've hit land in DEWFORD!\p"
# 694 "data/maps/DewfordTown/scripts.pory"
	.string "You just go on and tell me whenever\n"
# 695 "data/maps/DewfordTown/scripts.pory"
	.string "you want to set sail again!$"
# 696 "data/maps/DewfordTown/scripts.pory"

# 697 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_WhereAreWeBound:
# 698 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: Ahoy!\n"
# 699 "data/maps/DewfordTown/scripts.pory"
	.string "For you, I'll go out to sea anytime!\p"
# 700 "data/maps/DewfordTown/scripts.pory"
	.string "Now, my friend, where are we bound?$"
# 701 "data/maps/DewfordTown/scripts.pory"

# 702 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_PetalburgWereSettingSail:
# 703 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: PETALBURG, is it?\p"
# 704 "data/maps/DewfordTown/scripts.pory"
	.string "Anchors aweigh!\n"
# 705 "data/maps/DewfordTown/scripts.pory"
	.string "NAMI, we're setting sail, my darling!$"
# 706 "data/maps/DewfordTown/scripts.pory"

# 707 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_SlateportWereSettingSail:
# 708 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: SLATEPORT, is it?\p"
# 709 "data/maps/DewfordTown/scripts.pory"
	.string "Anchors aweigh!\n"
# 710 "data/maps/DewfordTown/scripts.pory"
	.string "NAMI, we're setting sail, my darling!$"
# 711 "data/maps/DewfordTown/scripts.pory"

# 712 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_JustTellMeWhenYouNeedToSetSail:
# 713 "data/maps/DewfordTown/scripts.pory"
	.string "MR. BRINEY: You just tell me whenever\n"
# 714 "data/maps/DewfordTown/scripts.pory"
	.string "you need to set sail again!$"
# 715 "data/maps/DewfordTown/scripts.pory"

# 716 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_GettingItchToFish:
# 717 "data/maps/DewfordTown/scripts.pory"
	.string "This is a renowned fishing spot.\n"
# 718 "data/maps/DewfordTown/scripts.pory"
	.string "Are you getting the itch to fish?$"
# 719 "data/maps/DewfordTown/scripts.pory"

# 720 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_GiveYouOneOfMyRods:
# 721 "data/maps/DewfordTown/scripts.pory"
	.string "Incredible!\n"
# 722 "data/maps/DewfordTown/scripts.pory"
	.string "Without even a fishing rod...\p"
# 723 "data/maps/DewfordTown/scripts.pory"
	.string "you managed to catch\n"
# 724 "data/maps/DewfordTown/scripts.pory"
	.string "a fine one like that!\p"
# 725 "data/maps/DewfordTown/scripts.pory"
	.string "Hahaha! I like you!\n"
# 726 "data/maps/DewfordTown/scripts.pory"
	.string "Here, take one of my OLD RODS!$"
# 727 "data/maps/DewfordTown/scripts.pory"

# 728 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_ThrowInFishingAdvice:
# 729 "data/maps/DewfordTown/scripts.pory"
	.string "And, as an added bonus, I'll even throw\n"
# 730 "data/maps/DewfordTown/scripts.pory"
	.string "in a little fishing advice!\p"
# 731 "data/maps/DewfordTown/scripts.pory"
	.string "First, you want to face the water,\n"
# 732 "data/maps/DewfordTown/scripts.pory"
	.string "then use the ROD.\p"
# 733 "data/maps/DewfordTown/scripts.pory"
	.string "Focus your mind…\n"
# 734 "data/maps/DewfordTown/scripts.pory"
	.string "If you get a bite, pull on the ROD.\p"
# 735 "data/maps/DewfordTown/scripts.pory"
	.string "Sometimes you can snag something\n"
# 736 "data/maps/DewfordTown/scripts.pory"
	.string "immediately, but with bigger catches,\l"
# 737 "data/maps/DewfordTown/scripts.pory"
	.string "you need to time the pulls on your ROD\l"
# 738 "data/maps/DewfordTown/scripts.pory"
	.string "to haul them in.$"
# 739 "data/maps/DewfordTown/scripts.pory"

# 740 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_ThatsTooBadThen:
# 741 "data/maps/DewfordTown/scripts.pory"
	.string "Oh, is that so?\n"
# 742 "data/maps/DewfordTown/scripts.pory"
	.string "That's too bad, then.$"
# 743 "data/maps/DewfordTown/scripts.pory"

# 744 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_HowsYourFishing:
# 745 "data/maps/DewfordTown/scripts.pory"
	.string "Yo!\n"
# 746 "data/maps/DewfordTown/scripts.pory"
	.string "How's your fishing?$"
# 747 "data/maps/DewfordTown/scripts.pory"

# 748 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_GreatHaulInSomeBigOnes:
# 749 "data/maps/DewfordTown/scripts.pory"
	.string "Is that right! That's great!\n"
# 750 "data/maps/DewfordTown/scripts.pory"
	.string "Haul in some big ones!$"
# 751 "data/maps/DewfordTown/scripts.pory"

# 752 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_FishingAdvice:
# 753 "data/maps/DewfordTown/scripts.pory"
	.string "Oh, hey, don't get down on yourself!\n"
# 754 "data/maps/DewfordTown/scripts.pory"
	.string "I'll give you a little fishing advice.\p"
# 755 "data/maps/DewfordTown/scripts.pory"
	.string "First, you want to face the water,\n"
# 756 "data/maps/DewfordTown/scripts.pory"
	.string "then use the ROD.\p"
# 757 "data/maps/DewfordTown/scripts.pory"
	.string "Focus your mind…\n"
# 758 "data/maps/DewfordTown/scripts.pory"
	.string "If you get a bite, pull the ROD.\p"
# 759 "data/maps/DewfordTown/scripts.pory"
	.string "Sometimes you can snag something\n"
# 760 "data/maps/DewfordTown/scripts.pory"
	.string "immediately, but with bigger catches,\l"
# 761 "data/maps/DewfordTown/scripts.pory"
	.string "you need to time the pulls on your ROD\l"
# 762 "data/maps/DewfordTown/scripts.pory"
	.string "to haul them in.$"
# 763 "data/maps/DewfordTown/scripts.pory"

# 764 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_XIsTheBiggestHappeningThingRight:
# 765 "data/maps/DewfordTown/scripts.pory"
	.string "I like what's hip, happening, and trendy.\n"
# 766 "data/maps/DewfordTown/scripts.pory"
	.string "I'm always checking it out.\p"
# 767 "data/maps/DewfordTown/scripts.pory"
	.string "Listen, have you heard about this new\n"
# 768 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_1}”?\p"
# 769 "data/maps/DewfordTown/scripts.pory"
	.string "That's right!\n"
# 770 "data/maps/DewfordTown/scripts.pory"
	.string "Of course you know!\p"
# 771 "data/maps/DewfordTown/scripts.pory"
	.string "I mean, sheesh,\n"
# 772 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_1}”…\l"
# 773 "data/maps/DewfordTown/scripts.pory"
	.string "It's the hottest thing in cool!\p"
# 774 "data/maps/DewfordTown/scripts.pory"
	.string "Wherever you're from,\n"
# 775 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_1}”\l"
# 776 "data/maps/DewfordTown/scripts.pory"
	.string "is the biggest happening thing, right?$"
# 777 "data/maps/DewfordTown/scripts.pory"

# 778 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_TellMeWhatsNewAndIn:
# 779 "data/maps/DewfordTown/scripts.pory"
	.string "Hunh?\n"
# 780 "data/maps/DewfordTown/scripts.pory"
	.string "It's not the hip and happening thing?\p"
# 781 "data/maps/DewfordTown/scripts.pory"
	.string "Well, hey, you have to tell me,\n"
# 782 "data/maps/DewfordTown/scripts.pory"
	.string "what's new and what's “in”?$"
# 783 "data/maps/DewfordTown/scripts.pory"

# 784 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_OfCourseIKnowAboutThat:
# 785 "data/maps/DewfordTown/scripts.pory"
	.string "Hunh?\n"
# 786 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_2}”?\p"
# 787 "data/maps/DewfordTown/scripts.pory"
	.string "… …\p"
# 788 "data/maps/DewfordTown/scripts.pory"
	.string "…Uh… Yeah! That's right!\n"
# 789 "data/maps/DewfordTown/scripts.pory"
	.string "Yeah, I knew that! Knew it all along!\p"
# 790 "data/maps/DewfordTown/scripts.pory"
	.string "Of course I know about that!\n"
# 791 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_2},” right?\p"
# 792 "data/maps/DewfordTown/scripts.pory"
	.string "Yeah, that's it, it's there!\n"
# 793 "data/maps/DewfordTown/scripts.pory"
	.string "Isn't “{STR_VAR_2}”\l"
# 794 "data/maps/DewfordTown/scripts.pory"
	.string "the coolest, or what?\p"
# 795 "data/maps/DewfordTown/scripts.pory"
	.string "It's the hippest thing in hip.\n"
# 796 "data/maps/DewfordTown/scripts.pory"
	.string "You think I'd not know about it?\p"
# 797 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_1}”…\n"
# 798 "data/maps/DewfordTown/scripts.pory"
	.string "It's, like, so five minutes ago.\p"
# 799 "data/maps/DewfordTown/scripts.pory"
	.string "Now, “{STR_VAR_2}” is\n"
# 800 "data/maps/DewfordTown/scripts.pory"
	.string "what's vital and in tune with the times!$"
# 801 "data/maps/DewfordTown/scripts.pory"

# 802 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_XHuhIThinkYIsCool:
# 803 "data/maps/DewfordTown/scripts.pory"
	.string "Hmm…\n"
# 804 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_2},” huh?\p"
# 805 "data/maps/DewfordTown/scripts.pory"
	.string "But personally, I think\n"
# 806 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_1}”\l"
# 807 "data/maps/DewfordTown/scripts.pory"
	.string "is what's real in cool.$"
# 808 "data/maps/DewfordTown/scripts.pory"

# 809 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_HearOfAnyTrendsComeShareWithMe:
# 810 "data/maps/DewfordTown/scripts.pory"
	.string "Well, if you hear of any happening new\n"
# 811 "data/maps/DewfordTown/scripts.pory"
	.string "trends, come share them with me, okay?$"
# 812 "data/maps/DewfordTown/scripts.pory"

# 813 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_YeahDefinitionOfInRightNow:
# 814 "data/maps/DewfordTown/scripts.pory"
	.string "Yeah, absolutely right!\p"
# 815 "data/maps/DewfordTown/scripts.pory"
	.string "“{STR_VAR_1}” is the\n"
# 816 "data/maps/DewfordTown/scripts.pory"
	.string "definition of “in” right now.$"
# 817 "data/maps/DewfordTown/scripts.pory"

# 818 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_Newpokemart:
# 819 "data/maps/DewfordTown/scripts.pory"
	.string "When RENTON showed up, he brought\n"
# 820 "data/maps/DewfordTown/scripts.pory"
	.string "tons of new people with him too.\p"
# 821 "data/maps/DewfordTown/scripts.pory"
	.string "This POKEMART was recently built\n"
# 822 "data/maps/DewfordTown/scripts.pory"
	.string "as a result.$"
# 823 "data/maps/DewfordTown/scripts.pory"

# 824 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_FishingAncientArt:
# 825 "data/maps/DewfordTown/scripts.pory"
	.string "Fishing... it's an ancient art.\n"
# 826 "data/maps/DewfordTown/scripts.pory"
	.string "A tradition here in DEWFORD.\p"
# 827 "data/maps/DewfordTown/scripts.pory"
	.string "But these days...\n"
# 828 "data/maps/DewfordTown/scripts.pory"
	.string "fewer folks truly respect it.\p"
# 829 "data/maps/DewfordTown/scripts.pory"
	.string "Hm... those clothes...\n"
# 830 "data/maps/DewfordTown/scripts.pory"
	.string "They look rather old-fashioned.\p"
# 831 "data/maps/DewfordTown/scripts.pory"
	.string "Maybe you do understand\n"
# 832 "data/maps/DewfordTown/scripts.pory"
	.string "the value of old traditions.\p"
# 833 "data/maps/DewfordTown/scripts.pory"
	.string "Tell you what!\n"
# 834 "data/maps/DewfordTown/scripts.pory"
	.string "Show me a WATER-type POKeMON,\n"
# 835 "data/maps/DewfordTown/scripts.pory"
	.string "and I'll give you an OLD ROD!$"
# 836 "data/maps/DewfordTown/scripts.pory"

# 837 "data/maps/DewfordTown/scripts.pory"
DewfordTown_Text_NoWaterMon:
# 838 "data/maps/DewfordTown/scripts.pory"
	.string "No WATER-type?\n"
# 839 "data/maps/DewfordTown/scripts.pory"
	.string "Come back when you have one.$"
