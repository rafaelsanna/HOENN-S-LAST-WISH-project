# 1 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 2 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_MapScripts::
# 3 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, RustboroCity_DevonCorp_3F_OnTransition
# 4 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, RustboroCity_DevonCorp_3F_OnWarp
# 5 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, RustboroCity_DevonCorp_3F_OnFrame
# 6 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.byte 0
# 7 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 8 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_OnTransition:
# 9 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	call_if_eq VAR_DEVON_CORP_3F_STATE, 0, RustboroCity_DevonCorp_3F_EventScript_SetEmployeePos
# 10 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 11 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 12 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_SetEmployeePos::
# 13 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setobjectxyperm LOCALID_DEVON_CORP_3F_EMPLOYEE, 3, 2
# 14 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setobjectmovementtype LOCALID_DEVON_CORP_3F_EMPLOYEE, MOVEMENT_TYPE_FACE_LEFT
# 15 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	return
# 16 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 17 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_OnWarp:
# 18 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	map_script_2 VAR_DEVON_CORP_3F_STATE, 0, RustboroCity_DevonCorp_3F_EventScript_PlayerFaceEast
# 19 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.2byte 0
# 20 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 21 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_PlayerFaceEast::
# 22 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_EAST
# 23 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 24 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 25 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_OnFrame:
# 26 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	map_script_2 VAR_DEVON_CORP_3F_STATE, 0, RustboroCity_DevonCorp_3F_EventScript_MeetPresident
# 27 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.2byte 0
# 28 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 29 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_MeetPresident::
# 30 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	lockall
# 31 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_ThisIs3rdFloorWaitHere, MSGBOX_DEFAULT
# 32 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 33 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement LOCALID_DEVON_CORP_3F_EMPLOYEE, RustboroCity_DevonCorp_3F_Movement_EmployeeWalkOffscreen
# 34 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 35 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	delay 80
# 36 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement LOCALID_DEVON_CORP_3F_EMPLOYEE, RustboroCity_DevonCorp_3F_Movement_EmployeeReturnToPlayer
# 37 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 38 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_WordWithPresidentComeWithMe, MSGBOX_DEFAULT
# 39 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 40 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 41 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement LOCALID_DEVON_CORP_3F_EMPLOYEE, RustboroCity_DevonCorp_3F_Movement_LeadPlayerToPresident
# 42 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement LOCALID_PLAYER, RustboroCity_DevonCorp_3F_Movement_PlayerFollowToPresident
# 43 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 44 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_PleaseGoAhead, MSGBOX_DEFAULT
# 45 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 46 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	fadedefaultbgm
# 47 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement LOCALID_DEVON_CORP_3F_EMPLOYEE, RustboroCity_DevonCorp_3F_Movement_EmployeeFaceDesk
# 48 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement LOCALID_PLAYER, RustboroCity_DevonCorp_3F_Movement_PlayerApproachDesk
# 49 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 50 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_MrStoneIHaveFavor, MSGBOX_DEFAULT
# 51 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	giveitem ITEM_LETTER
# 52 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 53 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_MrStoneWantYouToHaveThis, MSGBOX_DEFAULT
# 54 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 55 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 56 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	message RustboroCity_DevonCorp_3F_Text_ReceivedDexnav
# 57 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitfanfare
# 58 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setflag DN_FLAG_DEXNAV_GET
# 59 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setflag FLAG_HIDE_RUSTBORO_CITY_POKEMON_SCHOOL_SCOTT
# 60 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 61 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_MrStoneExplainDexnavRestUp, MSGBOX_DEFAULT
# 62 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 63 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 64 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	call Common_EventScript_OutOfCenterPartyHeal
# 65 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 66 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_MrStoneGoWithCautionAndCare, MSGBOX_DEFAULT
# 67 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 68 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setflag FLAG_HIDE_ROUTE_116_WANDAS_BOYFRIEND
# 69 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_WANDAS_BOYFRIEND
# 70 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag FLAG_HIDE_RUSTURF_TUNNEL_WANDA
# 71 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag FLAG_HIDE_BRINEYS_HOUSE_MR_BRINEY
# 72 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag FLAG_HIDE_BRINEYS_HOUSE_PEEKO
# 73 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setvar VAR_BRINEY_LOCATION, 1
# 74 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag FLAG_HIDE_RUSTBORO_CITY_RIVAL
# 75 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setvar VAR_DEVON_CORP_3F_STATE, 1
# 76 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 7
# 77 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 78 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 79 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	releaseall
# 80 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 81 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 82 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_Unused:
# 83 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_up
# 84 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_up
# 85 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_up
# 86 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_in_place_faster_left
# 87 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 88 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 89 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_LeadPlayerToPresident:
# 90 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 91 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 92 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 93 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_down
# 94 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 95 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 96 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 97 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 98 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 99 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 100 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 101 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 102 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 103 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_in_place_faster_left
# 104 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 105 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 106 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_EmployeeFaceDesk:
# 107 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	delay_16
# 108 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_in_place_faster_down
# 109 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 110 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 111 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_EmployeeWalkOffscreen:
# 112 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 113 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 114 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 115 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_down
# 116 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 117 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 118 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 119 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 120 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 121 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 122 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_EmployeeReturnToPlayer:
# 123 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 124 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 125 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 126 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 127 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_up
# 128 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 129 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 130 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_left
# 131 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 132 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 133 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_PlayerFollowToPresident:
# 134 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 135 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 136 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 137 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 138 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_down
# 139 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 140 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 141 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 142 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 143 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 144 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 145 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 146 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_right
# 147 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 148 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 149 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Movement_PlayerApproachDesk:
# 150 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	delay_16
# 151 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	delay_16
# 152 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_down
# 153 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_down
# 154 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	walk_in_place_faster_right
# 155 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	step_end
# 156 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 157 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_MrStone::
# 158 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	lock
# 159 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	faceplayer
# 160 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	goto_if_set FLAG_RECEIVED_EXP_SHARE, RustboroCity_DevonCorp_3F_EventScript_MrStoneAfterFavor
# 161 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	goto_if_set FLAG_DELIVERED_STEVEN_LETTER, RustboroCity_DevonCorp_3F_EventScript_GiveShinyStone
# 162 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 163 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_CountingOnYou, MSGBOX_DEFAULT
# 164 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 165 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 166 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 167 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 168 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	release
# 169 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 170 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 171 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_GiveShinyStone::
# 172 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 173 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_ThankYouForDeliveringLetter, MSGBOX_DEFAULT
# 174 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 175 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	giveitem ITEM_SHINY_STONE
# 176 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 177 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	setflag FLAG_RECEIVED_EXP_SHARE
# 178 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 179 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_ExplainShinyStone, MSGBOX_DEFAULT
# 180 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 181 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 182 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 183 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 184 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	release
# 185 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 186 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 187 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_MrStoneAfterFavor::
# 188 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	createfieldmugshot MUGSHOT_MRSTONE, EMOTE_NORMAL
# 189 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_NotFamiliarWithTrends, MSGBOX_DEFAULT
# 190 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	removefieldmugshot
# 191 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	closemessage
# 192 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 193 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	waitmovement 0
# 194 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	release
# 195 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 196 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 197 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_Employee::
# 198 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	lock
# 199 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	faceplayer
# 200 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	goto_if_set FLAG_RECEIVED_REPEAT_BALL, RustboroCity_DevonCorp_3F_EventScript_EmployeeBalls
# 201 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_VisitCaptSternShipyard, MSGBOX_DEFAULT
# 202 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	release
# 203 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 204 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 205 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_EmployeeBalls::
# 206 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_RepeatAndTimerHugelyPopular, MSGBOX_DEFAULT
# 207 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	release
# 208 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 209 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 210 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_EventScript_RareRocksDisplay::
# 211 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	msgbox RustboroCity_DevonCorp_3F_Text_RareRocksDisplay, MSGBOX_SIGN
# 212 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	end
# 213 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 214 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_MrStoneIHaveFavor:
# 215 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I'm MR. STONE, the PRESIDENT of\n"
# 216 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "the DEVON CORPORATION.\p"
# 217 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I'd just got word about you!\p"
# 218 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "You saved our staff not just once,\n"
# 219 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "but twice!\p"
# 220 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I have a favor to ask of an amazing\n"
# 221 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "person like you.\p"
# 222 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I understand that you're delivering\n"
# 223 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "a package to SLATEPORT's SHIPYARD.\p"
# 224 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Well, on the way, could you stop off in\n"
# 225 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "DEWFORD TOWN?\p"
# 226 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I was hoping that you'd deliver a\n"
# 227 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "LETTER to STELLA in DEWFORD.$"
# 228 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 229 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_MrStoneWantYouToHaveThis:
# 230 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "MR. STONE: Now, you should know that\n"
# 231 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I am a great PRESIDENT.\p"
# 232 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "So, I'd never be so cheap as to ask\n"
# 233 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "a favor for nothing in return.\p"
# 234 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "That's why I want you to have this\n"
# 235 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "prototype device the DEXéNAV!$"
# 236 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 237 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_ReceivedDexnav:
# 238 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "{PLAYER} received the DEXéNAV!$"
# 239 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 240 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_MrStoneExplainDexnavRestUp:
# 241 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "MR. STONE: That device is the\n"
# 242 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "DEXéNAV a DEVON prototype.\p"
# 243 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "It's an advanced scanner that\n"
# 244 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "detects POKéMON hiding nearby.\p"
# 245 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "It can reveal their moves, traits,\n"
# 246 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "and hidden strengths.\p"
# 247 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "The more you explore, the more\n"
# 248 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "data it collects.\p"
# 249 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "By the way, I've heard that sinister\n"
# 250 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "criminals--MAGMA and AQUA, I believe--\l"
# 251 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "have been making trouble far and wide.\p"
# 252 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "I think it would be best if you rested\n"
# 253 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "up before you go on your way.$"
# 254 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 255 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_MrStoneGoWithCautionAndCare:
# 256 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "MR. STONE: Well, then, {PLAYER}{KUN},\n"
# 257 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "go with caution and care!$"
# 258 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 259 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_CountingOnYou:
# 260 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "MR. STONE: I'm counting on you!$"
# 261 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 262 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_ThankYouForDeliveringLetter:
# 263 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "MR. STONE: Ah, you delivered my\n"
# 264 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "LETTER? Wonderful!\p"
# 265 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "You've helped our family greatly.\n"
# 266 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Please take this as my thanks.$"
# 267 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 268 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_ExplainShinyStone:
# 269 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "MR. STONE: This is a SHINY STONE,\n"
# 270 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "a rare gem that has been in\l"
# 271 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "our family for generations.\p"
# 272 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "It's said to enable the evolution\n"
# 273 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "of certain POKéMON...\p"
# 274 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "It may not be as flashy as modern\n"
# 275 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "devices, but it carries our\l"
# 276 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "family's pride.\p"
# 277 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
    .string "Use it well, {PLAYER}.$"
# 278 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 279 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_NotFamiliarWithTrends:
# 280 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "MR. STONE: Since my youth, I've immersed\n"
# 281 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "myself in work.\p"
# 282 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Consequently, I'm not familiar with\n"
# 283 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "trends and that sort of thing.\p"
# 284 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "But do young people all want to be\n"
# 285 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "TRAINERS in the POKéMON LEAGUE?$"
# 286 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 287 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_ThisIs3rdFloorWaitHere:
# 288 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "This is the DEVON CORPORATION's\n"
# 289 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "third floor.\p"
# 290 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Our PRESIDENT's OFFICE is on\n"
# 291 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "this floor.\p"
# 292 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Anyway, I can't tell you how much I'm\n"
# 293 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "grateful for what you've done.\p"
# 294 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "By the way, that parcel\n"
# 295 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "you got back for us.\p"
# 296 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Could I get you to deliver that to\n"
# 297 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "the SHIPYARD in SLATEPORT?\p"
# 298 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "It would be awful if those robbers\n"
# 299 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "tried to take it again.\p"
# 300 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Uh, Hehehe, so, uh, could I count\n"
# 301 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "on you to do that for me?\p"
# 302 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Oh, that's right.\n"
# 303 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Could you wait here a second?$"
# 304 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 305 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_WordWithPresidentComeWithMe:
# 306 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Our PRESIDENT would like to have\n"
# 307 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "a word with you.\p"
# 308 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Please come with me.$"
# 309 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 310 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_PleaseGoAhead:
# 311 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "Please, go ahead.$"
# 312 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 313 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_VisitCaptSternShipyard:
# 314 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "If you visit the SHIPYARD in SLATEPORT,\n"
# 315 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "you should go see CAPT. STERN.$"
# 316 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 317 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_RepeatAndTimerHugelyPopular:
# 318 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "DEVON's new products, the REPEAT BALL\n"
# 319 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "and TIMER BALL, have become hugely\l"
# 320 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "popular among TRAINERS.$"
# 321 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"

# 322 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
RustboroCity_DevonCorp_3F_Text_RareRocksDisplay:
# 323 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "It's a collection of rare rocks and\n"
# 324 "data/maps/RustboroCity_DevonCorp_3F/scripts.pory"
	.string "stones assembled by the PRESIDENT.$"
