# 1 "data/maps/PhoenixTown/scripts.pory"

# 2 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_MapScripts::
# 3 "data/maps/PhoenixTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PhoenixTown_OnTransition
# 4 "data/maps/PhoenixTown/scripts.pory"
	.byte 0
# 5 "data/maps/PhoenixTown/scripts.pory"

# 6 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_OnTransition:
# 7 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_VISITED_PHOENIX_TOWN
# 8 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 9 "data/maps/PhoenixTown/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 10 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_HandlePetalburgQuakeEvent
# 11 "data/maps/PhoenixTown/scripts.pory"
	end
# 12 "data/maps/PhoenixTown/scripts.pory"

# 13 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_HandlePetalburgQuakeEvent::
# 14 "data/maps/PhoenixTown/scripts.pory"
	goto_if_unset FLAG_BADGE04_GET, PhoenixTown_EventScript_HidePetalburgEventGroup
# 15 "data/maps/PhoenixTown/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART1_CLEARED, PhoenixTown_EventScript_HidePetalburgEventGroup
# 16 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 17 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 18 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 19 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 20 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 0
# 21 "data/maps/PhoenixTown/scripts.pory"
	return
# 22 "data/maps/PhoenixTown/scripts.pory"

# 23 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_HidePetalburgEventGroup::
# 24 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 25 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 26 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 27 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 28 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 29 "data/maps/PhoenixTown/scripts.pory"
	return
# 30 "data/maps/PhoenixTown/scripts.pory"

# 31 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaPetalburgEvent::
# 32 "data/maps/PhoenixTown/scripts.pory"
	lock
# 33 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 34 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 35 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaWaitForPlayer, MSGBOX_DEFAULT
# 36 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 37 "data/maps/PhoenixTown/scripts.pory"
	release
# 38 "data/maps/PhoenixTown/scripts.pory"
	end
# 39 "data/maps/PhoenixTown/scripts.pory"

# 40 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_LukaPetalburgEvent::
# 41 "data/maps/PhoenixTown/scripts.pory"
	lock
# 42 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 43 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 44 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaPetalburgEvent, MSGBOX_DEFAULT
# 45 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 46 "data/maps/PhoenixTown/scripts.pory"
	release
# 47 "data/maps/PhoenixTown/scripts.pory"
	end
# 48 "data/maps/PhoenixTown/scripts.pory"

# 49 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalPetalburgEvent::
# 50 "data/maps/PhoenixTown/scripts.pory"
	lock
# 51 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 52 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineWait
# 53 "data/maps/PhoenixTown/scripts.pory"
	release
# 54 "data/maps/PhoenixTown/scripts.pory"
	end
# 55 "data/maps/PhoenixTown/scripts.pory"

# 56 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_AuroraPetalburgEvent::
# 57 "data/maps/PhoenixTown/scripts.pory"
	lock
# 58 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 59 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 60 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSilent, MSGBOX_DEFAULT
# 61 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 62 "data/maps/PhoenixTown/scripts.pory"
	release
# 63 "data/maps/PhoenixTown/scripts.pory"
	end
# 64 "data/maps/PhoenixTown/scripts.pory"

# 65 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ClearPetalburgPart1::
# 66 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_PART1_CLEARED
# 67 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 68 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 69 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 70 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 71 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 72 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 73 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 74 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 75 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 76 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 77 "data/maps/PhoenixTown/scripts.pory"
	return
# 78 "data/maps/PhoenixTown/scripts.pory"

# 79 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth17::
# 80 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 81 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 82 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 83 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth17
# 84 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 85 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 86 "data/maps/PhoenixTown/scripts.pory"
	end
# 87 "data/maps/PhoenixTown/scripts.pory"

# 88 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth18::
# 89 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 90 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 91 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 92 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth18
# 93 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 94 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 95 "data/maps/PhoenixTown/scripts.pory"
	end
# 96 "data/maps/PhoenixTown/scripts.pory"

# 97 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth19::
# 98 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 99 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 100 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 101 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth19
# 102 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 103 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 104 "data/maps/PhoenixTown/scripts.pory"
	end
# 105 "data/maps/PhoenixTown/scripts.pory"

# 106 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth20::
# 107 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 108 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 109 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 110 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth20
# 111 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 112 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 113 "data/maps/PhoenixTown/scripts.pory"
	end
# 114 "data/maps/PhoenixTown/scripts.pory"

# 115 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth21::
# 116 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 117 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 118 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 119 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth21
# 120 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 121 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 122 "data/maps/PhoenixTown/scripts.pory"
	end
# 123 "data/maps/PhoenixTown/scripts.pory"

# 124 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth22::
# 125 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 126 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 127 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 128 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth22
# 129 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 130 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 131 "data/maps/PhoenixTown/scripts.pory"
	end
# 132 "data/maps/PhoenixTown/scripts.pory"

# 133 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth23::
# 134 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 135 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 136 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 137 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth23
# 138 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 139 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 140 "data/maps/PhoenixTown/scripts.pory"
	end
# 141 "data/maps/PhoenixTown/scripts.pory"

# 142 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventNoticePlayer::
# 143 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT, Common_Movement_ExclamationMark
# 144 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, Common_Movement_ExclamationMark
# 145 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, Common_Movement_ExclamationMark
# 146 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 147 "data/maps/PhoenixTown/scripts.pory"
	delay 20
# 148 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 149 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaCallPlayerOver, MSGBOX_DEFAULT
# 150 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 151 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 152 "data/maps/PhoenixTown/scripts.pory"
	return
# 153 "data/maps/PhoenixTown/scripts.pory"

# 154 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventFullScene::
# 155 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 156 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 157 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 158 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaGladYoureHere, MSGBOX_DEFAULT
# 159 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 160 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineUnnaturalEvents
# 161 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 162 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaCometLead, MSGBOX_DEFAULT
# 163 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 164 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 165 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaLetterAndTrip, MSGBOX_DEFAULT
# 166 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 167 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 168 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaNoAnswers, MSGBOX_DEFAULT
# 169 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 170 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 171 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 172 "data/maps/PhoenixTown/scripts.pory"
	addobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 173 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraEnter
# 174 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 175 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 176 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, Common_Movement_FaceLeft
# 177 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 178 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 179 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSoYouCame, MSGBOX_DEFAULT
# 180 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 181 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineStopDisasters
# 182 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 183 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaTellUs, MSGBOX_DEFAULT
# 184 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 185 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 186 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaCometQuestion, MSGBOX_DEFAULT
# 187 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 188 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 189 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSilent, MSGBOX_DEFAULT
# 190 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraCometSavior, MSGBOX_DEFAULT
# 191 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 192 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineWhatDoesThatMean
# 193 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 194 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraGiftOnly, MSGBOX_DEFAULT
# 195 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 196 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 197 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaWhatGift, MSGBOX_DEFAULT
# 198 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 199 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 200 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, Common_Movement_FaceUp
# 201 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 202 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 203 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraNotYou, MSGBOX_DEFAULT
# 204 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 205 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 206 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraToRival
# 207 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 208 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 209 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, Common_Movement_FaceRight
# 210 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 211 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 212 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraNorYou, MSGBOX_DEFAULT
# 213 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 214 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 215 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraToPlayer
# 216 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 217 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 218 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, Common_Movement_FaceDown
# 219 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, Common_Movement_FaceDown
# 220 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 221 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 222 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSilent, MSGBOX_DEFAULT
# 223 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraFinalBattle, MSGBOX_DEFAULT
# 224 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 225 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 226 "data/maps/PhoenixTown/scripts.pory"
	@ The event has no progress flag yet. A loss triggers White Out, and
# 227 "data/maps/PhoenixTown/scripts.pory"
	@ PhoenixTown_OnTransition re-arms this entire scene on the next visit.
# 228 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_LAST_TALKED, LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 229 "data/maps/PhoenixTown/scripts.pory"
	getdifficulty VAR_RESULT
# 230 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, 1, PhoenixTown_EventScript_AuroraFinalBattleHard
# 231 "data/maps/PhoenixTown/scripts.pory"
	trainerbattle_no_intro TRAINER_AURORA_PHOENIX, PhoenixTown_Text_AuroraFinalBattleDefeat
# 232 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_AuroraConfirmed
# 233 "data/maps/PhoenixTown/scripts.pory"

# 234 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_AuroraFinalBattleHard::
# 235 "data/maps/PhoenixTown/scripts.pory"
	trainerbattle_no_intro TRAINER_AURORA_PHOENIX_HARD, PhoenixTown_Text_AuroraFinalBattleDefeat
# 236 "data/maps/PhoenixTown/scripts.pory"

# 237 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_AuroraConfirmed::
# 238 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 239 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraPlayerHasGift, MSGBOX_DEFAULT
# 240 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 241 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 242 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraExit
# 243 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 244 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 245 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 246 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 247 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 248 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaWhatWasThat, MSGBOX_DEFAULT
# 249 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 250 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineCanWeTrust
# 251 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_CalendulaLineNoChoice
# 252 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineIUnderstand
# 253 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 254 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, PhoenixTown_Movement_RivalStepToPlayer
# 255 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 256 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 257 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 258 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineGoodLuck
# 259 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 260 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, PhoenixTown_Movement_RivalExit
# 261 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 262 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 263 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, PhoenixTown_Movement_LukaStepToPlayer
# 264 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 265 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 266 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 267 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 268 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaTrustYou, MSGBOX_DEFAULT
# 269 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 270 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 271 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, PhoenixTown_Movement_LukaExit
# 272 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 273 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 274 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 275 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 276 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 277 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaBeSafe, MSGBOX_DEFAULT
# 278 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 279 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 280 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT, PhoenixTown_Movement_CalendulaExit
# 281 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 282 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_ClearPetalburgPart1
# 283 "data/maps/PhoenixTown/scripts.pory"
	releaseall
# 284 "data/maps/PhoenixTown/scripts.pory"
	end
# 285 "data/maps/PhoenixTown/scripts.pory"

# 286 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoice::
# 287 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 288 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_CalendulaLineNoChoiceZinnia
# 289 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_CalendulaLineNoChoiceZenno
# 290 "data/maps/PhoenixTown/scripts.pory"
	return
# 291 "data/maps/PhoenixTown/scripts.pory"

# 292 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoiceZinnia::
# 293 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 294 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaNoChoiceZinnia, MSGBOX_DEFAULT
# 295 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 296 "data/maps/PhoenixTown/scripts.pory"
	return
# 297 "data/maps/PhoenixTown/scripts.pory"

# 298 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoiceZenno::
# 299 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 300 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaNoChoiceZenno, MSGBOX_DEFAULT
# 301 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 302 "data/maps/PhoenixTown/scripts.pory"
	return
# 303 "data/maps/PhoenixTown/scripts.pory"

# 304 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineWait::
# 305 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 306 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaWait
# 307 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoWait
# 308 "data/maps/PhoenixTown/scripts.pory"
	return
# 309 "data/maps/PhoenixTown/scripts.pory"

# 310 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaWait::
# 311 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 312 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaWait, MSGBOX_DEFAULT
# 313 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 314 "data/maps/PhoenixTown/scripts.pory"
	return
# 315 "data/maps/PhoenixTown/scripts.pory"

# 316 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoWait::
# 317 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 318 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoWait, MSGBOX_DEFAULT
# 319 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 320 "data/maps/PhoenixTown/scripts.pory"
	return
# 321 "data/maps/PhoenixTown/scripts.pory"

# 322 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineUnnaturalEvents::
# 323 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 324 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaUnnaturalEvents
# 325 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoUnnaturalEvents
# 326 "data/maps/PhoenixTown/scripts.pory"
	return
# 327 "data/maps/PhoenixTown/scripts.pory"

# 328 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaUnnaturalEvents::
# 329 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 330 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaUnnaturalEvents, MSGBOX_DEFAULT
# 331 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 332 "data/maps/PhoenixTown/scripts.pory"
	return
# 333 "data/maps/PhoenixTown/scripts.pory"

# 334 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoUnnaturalEvents::
# 335 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 336 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoUnnaturalEvents, MSGBOX_DEFAULT
# 337 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 338 "data/maps/PhoenixTown/scripts.pory"
	return
# 339 "data/maps/PhoenixTown/scripts.pory"

# 340 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineStopDisasters::
# 341 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 342 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaStopDisasters
# 343 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoStopDisasters
# 344 "data/maps/PhoenixTown/scripts.pory"
	return
# 345 "data/maps/PhoenixTown/scripts.pory"

# 346 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaStopDisasters::
# 347 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 348 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaStopDisasters, MSGBOX_DEFAULT
# 349 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 350 "data/maps/PhoenixTown/scripts.pory"
	return
# 351 "data/maps/PhoenixTown/scripts.pory"

# 352 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoStopDisasters::
# 353 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 354 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoStopDisasters, MSGBOX_DEFAULT
# 355 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 356 "data/maps/PhoenixTown/scripts.pory"
	return
# 357 "data/maps/PhoenixTown/scripts.pory"

# 358 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineWhatDoesThatMean::
# 359 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 360 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaWhatDoesThatMean
# 361 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoWhatDoesThatMean
# 362 "data/maps/PhoenixTown/scripts.pory"
	return
# 363 "data/maps/PhoenixTown/scripts.pory"

# 364 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaWhatDoesThatMean::
# 365 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 366 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaWhatDoesThatMean, MSGBOX_DEFAULT
# 367 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 368 "data/maps/PhoenixTown/scripts.pory"
	return
# 369 "data/maps/PhoenixTown/scripts.pory"

# 370 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoWhatDoesThatMean::
# 371 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 372 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoWhatDoesThatMean, MSGBOX_DEFAULT
# 373 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 374 "data/maps/PhoenixTown/scripts.pory"
	return
# 375 "data/maps/PhoenixTown/scripts.pory"

# 376 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineCanWeTrust::
# 377 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 378 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaCanWeTrust
# 379 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoCanWeTrust
# 380 "data/maps/PhoenixTown/scripts.pory"
	return
# 381 "data/maps/PhoenixTown/scripts.pory"

# 382 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaCanWeTrust::
# 383 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 384 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaCanWeTrust, MSGBOX_DEFAULT
# 385 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 386 "data/maps/PhoenixTown/scripts.pory"
	return
# 387 "data/maps/PhoenixTown/scripts.pory"

# 388 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoCanWeTrust::
# 389 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 390 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoCanWeTrust, MSGBOX_DEFAULT
# 391 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 392 "data/maps/PhoenixTown/scripts.pory"
	return
# 393 "data/maps/PhoenixTown/scripts.pory"

# 394 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineIUnderstand::
# 395 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 396 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaIUnderstand
# 397 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoIUnderstand
# 398 "data/maps/PhoenixTown/scripts.pory"
	return
# 399 "data/maps/PhoenixTown/scripts.pory"

# 400 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaIUnderstand::
# 401 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 402 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaIUnderstand, MSGBOX_DEFAULT
# 403 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 404 "data/maps/PhoenixTown/scripts.pory"
	return
# 405 "data/maps/PhoenixTown/scripts.pory"

# 406 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoIUnderstand::
# 407 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 408 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoIUnderstand, MSGBOX_DEFAULT
# 409 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 410 "data/maps/PhoenixTown/scripts.pory"
	return
# 411 "data/maps/PhoenixTown/scripts.pory"

# 412 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineGoodLuck::
# 413 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 414 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaGoodLuck
# 415 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoGoodLuck
# 416 "data/maps/PhoenixTown/scripts.pory"
	return
# 417 "data/maps/PhoenixTown/scripts.pory"

# 418 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaGoodLuck::
# 419 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 420 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaGoodLuck, MSGBOX_DEFAULT
# 421 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 422 "data/maps/PhoenixTown/scripts.pory"
	return
# 423 "data/maps/PhoenixTown/scripts.pory"

# 424 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoGoodLuck::
# 425 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 426 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoGoodLuck, MSGBOX_DEFAULT
# 427 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 428 "data/maps/PhoenixTown/scripts.pory"
	return
# 429 "data/maps/PhoenixTown/scripts.pory"

# 430 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth17:
# 431 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 432 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 433 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 434 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 435 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 436 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 437 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 438 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 439 "data/maps/PhoenixTown/scripts.pory"

# 440 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth18:
# 441 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 442 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 443 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 444 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 445 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 446 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 447 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 448 "data/maps/PhoenixTown/scripts.pory"

# 449 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth19:
# 450 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 451 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 452 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 453 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 454 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 455 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 456 "data/maps/PhoenixTown/scripts.pory"

# 457 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth20:
# 458 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 459 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 460 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 461 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 462 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 463 "data/maps/PhoenixTown/scripts.pory"

# 464 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth21:
# 465 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 466 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 467 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 468 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 469 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 470 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 471 "data/maps/PhoenixTown/scripts.pory"

# 472 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth22:
# 473 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 474 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 475 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 476 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 477 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 478 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 479 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 480 "data/maps/PhoenixTown/scripts.pory"

# 481 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth23:
# 482 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 483 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 484 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 485 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 486 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 487 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 488 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 489 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 490 "data/maps/PhoenixTown/scripts.pory"

# 491 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraEnter:
# 492 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 493 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 494 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 495 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 496 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 497 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 498 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 499 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 500 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 501 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 502 "data/maps/PhoenixTown/scripts.pory"
	face_right
# 503 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 504 "data/maps/PhoenixTown/scripts.pory"

# 505 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraToRival:
# 506 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 507 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 508 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 509 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 510 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 511 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 512 "data/maps/PhoenixTown/scripts.pory"

# 513 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraToPlayer:
# 514 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 515 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 516 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 517 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 518 "data/maps/PhoenixTown/scripts.pory"

# 519 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraExit:
# 520 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 521 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 522 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 523 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 524 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 525 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 526 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 527 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 528 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 529 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 530 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 531 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 532 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 533 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 534 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 535 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 536 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 537 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 538 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 539 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 540 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 541 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 542 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 543 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 544 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 545 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 546 "data/maps/PhoenixTown/scripts.pory"

# 547 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_RivalStepToPlayer:
# 548 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 549 "data/maps/PhoenixTown/scripts.pory"
	face_left
# 550 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 551 "data/maps/PhoenixTown/scripts.pory"

# 552 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_RivalExit:
# 553 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 554 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 555 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 556 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 557 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 558 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 559 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 560 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 561 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 562 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 563 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 564 "data/maps/PhoenixTown/scripts.pory"

# 565 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_LukaStepToPlayer:
# 566 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 567 "data/maps/PhoenixTown/scripts.pory"
	face_right
# 568 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 569 "data/maps/PhoenixTown/scripts.pory"

# 570 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_LukaExit:
# 571 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 572 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 573 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 574 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 575 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 576 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 577 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 578 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 579 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 580 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 581 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 582 "data/maps/PhoenixTown/scripts.pory"

# 583 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_CalendulaExit:
# 584 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 585 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 586 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 587 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 588 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 589 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 590 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 591 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 592 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 593 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 594 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 595 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 596 "data/maps/PhoenixTown/scripts.pory"

# 597 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaCallPlayerOver:
# 598 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: {PLAYER}! Over here!$"
# 599 "data/maps/PhoenixTown/scripts.pory"

# 600 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaWaitForPlayer:
# 601 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: We should speak near the\n"
# 602 "data/maps/PhoenixTown/scripts.pory"
	.string "others, {PLAYER}.$"
# 603 "data/maps/PhoenixTown/scripts.pory"

# 604 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaPetalburgEvent:
# 605 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: CALENDULA is waiting for you.$"
# 606 "data/maps/PhoenixTown/scripts.pory"

# 607 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaWait:
# 608 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: CALENDULA is waiting for you.$"
# 609 "data/maps/PhoenixTown/scripts.pory"

# 610 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoWait:
# 611 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: CALENDULA is waiting for you.$"
# 612 "data/maps/PhoenixTown/scripts.pory"

# 613 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraSilent:
# 614 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: ...$"
# 615 "data/maps/PhoenixTown/scripts.pory"

# 616 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaGladYoureHere:
# 617 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: {PLAYER}! I'm glad\n"
# 618 "data/maps/PhoenixTown/scripts.pory"
	.string "you're here.\p"
# 619 "data/maps/PhoenixTown/scripts.pory"
	.string "Did you come from PETALBURG?$"
# 620 "data/maps/PhoenixTown/scripts.pory"

# 621 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaUnnaturalEvents:
# 622 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: I've been hearing of\n"
# 623 "data/maps/PhoenixTown/scripts.pory"
	.string "unnatural events occurring lately,\l"
# 624 "data/maps/PhoenixTown/scripts.pory"
	.string "but I didn't expect it to happen\l"
# 625 "data/maps/PhoenixTown/scripts.pory"
	.string "so close to home.$"
# 626 "data/maps/PhoenixTown/scripts.pory"

# 627 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoUnnaturalEvents:
# 628 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: I've been hearing of\n"
# 629 "data/maps/PhoenixTown/scripts.pory"
	.string "unnatural events occurring lately,\l"
# 630 "data/maps/PhoenixTown/scripts.pory"
	.string "but I didn't expect it to happen\l"
# 631 "data/maps/PhoenixTown/scripts.pory"
	.string "so close to home.$"
# 632 "data/maps/PhoenixTown/scripts.pory"

# 633 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaCometLead:
# 634 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: It was only a matter of\n"
# 635 "data/maps/PhoenixTown/scripts.pory"
	.string "time.\p"
# 636 "data/maps/PhoenixTown/scripts.pory"
	.string "I've been chasing every lead I\n"
# 637 "data/maps/PhoenixTown/scripts.pory"
	.string "could find about that comet, and\l"
# 638 "data/maps/PhoenixTown/scripts.pory"
	.string "it seems to be connected to all\l"
# 639 "data/maps/PhoenixTown/scripts.pory"
	.string "of these events.$"
# 640 "data/maps/PhoenixTown/scripts.pory"

# 641 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaLetterAndTrip:
# 642 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: I received a letter\n"
# 643 "data/maps/PhoenixTown/scripts.pory"
	.string "recently from someone who claimed\l"
# 644 "data/maps/PhoenixTown/scripts.pory"
	.string "there would be answers in\l"
# 645 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX TOWN.\p"
# 646 "data/maps/PhoenixTown/scripts.pory"
	.string "When the earthquakes and rain\n"
# 647 "data/maps/PhoenixTown/scripts.pory"
	.string "started in PETALBURG, I knew we\l"
# 648 "data/maps/PhoenixTown/scripts.pory"
	.string "had to do something.\p"
# 649 "data/maps/PhoenixTown/scripts.pory"
	.string "Even if it seemed like a long\n"
# 650 "data/maps/PhoenixTown/scripts.pory"
	.string "shot, we made the trip.$"
# 651 "data/maps/PhoenixTown/scripts.pory"

# 652 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaNoAnswers:
# 653 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: But so far we haven't\n"
# 654 "data/maps/PhoenixTown/scripts.pory"
	.string "found anyone here who knows\l"
# 655 "data/maps/PhoenixTown/scripts.pory"
	.string "anything!$"
# 656 "data/maps/PhoenixTown/scripts.pory"

# 657 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraSoYouCame:
# 658 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: So you came.\p"
# 659 "data/maps/PhoenixTown/scripts.pory"
	.string "It happened again, then.$"
# 660 "data/maps/PhoenixTown/scripts.pory"

# 661 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaStopDisasters:
# 662 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: You sent that letter?\p"
# 663 "data/maps/PhoenixTown/scripts.pory"
	.string "Do you know how to stop the\n"
# 664 "data/maps/PhoenixTown/scripts.pory"
	.string "disasters in our city?$"
# 665 "data/maps/PhoenixTown/scripts.pory"

# 666 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoStopDisasters:
# 667 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: You sent that letter?\p"
# 668 "data/maps/PhoenixTown/scripts.pory"
	.string "Do you know how to stop the\n"
# 669 "data/maps/PhoenixTown/scripts.pory"
	.string "disasters in our city?$"
# 670 "data/maps/PhoenixTown/scripts.pory"

# 671 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaTellUs:
# 672 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Please, tell us what\n"
# 673 "data/maps/PhoenixTown/scripts.pory"
	.string "you know.$"
# 674 "data/maps/PhoenixTown/scripts.pory"

# 675 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaCometQuestion:
# 676 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: It has to do with the\n"
# 677 "data/maps/PhoenixTown/scripts.pory"
	.string "comet, right?$"
# 678 "data/maps/PhoenixTown/scripts.pory"

# 679 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraCometSavior:
# 680 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: You are correct.\p"
# 681 "data/maps/PhoenixTown/scripts.pory"
	.string "The comet is our savior, but\n"
# 682 "data/maps/PhoenixTown/scripts.pory"
	.string "there are forces trying to return\l"
# 683 "data/maps/PhoenixTown/scripts.pory"
	.string "us to the path of ruin.$"
# 684 "data/maps/PhoenixTown/scripts.pory"

# 685 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaWhatDoesThatMean:
# 686 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: What...?\p"
# 687 "data/maps/PhoenixTown/scripts.pory"
	.string "What is that supposed to mean?$"
# 688 "data/maps/PhoenixTown/scripts.pory"

# 689 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoWhatDoesThatMean:
# 690 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: What...?\p"
# 691 "data/maps/PhoenixTown/scripts.pory"
	.string "What is that supposed to mean?$"
# 692 "data/maps/PhoenixTown/scripts.pory"

# 693 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraGiftOnly:
# 694 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: It is possible to save\n"
# 695 "data/maps/PhoenixTown/scripts.pory"
	.string "your home, but I can only teach\l"
# 696 "data/maps/PhoenixTown/scripts.pory"
	.string "those who have the gift.$"
# 697 "data/maps/PhoenixTown/scripts.pory"

# 698 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaWhatGift:
# 699 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: What is this gift?$"
# 700 "data/maps/PhoenixTown/scripts.pory"

# 701 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraNotYou:
# 702 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Not you.$"
# 703 "data/maps/PhoenixTown/scripts.pory"

# 704 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraNorYou:
# 705 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Nor you.$"
# 706 "data/maps/PhoenixTown/scripts.pory"

# 707 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraFinalBattle:
# 708 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: But to be certain you\n"
# 709 "data/maps/PhoenixTown/scripts.pory"
	.string "are truly the chosen one,\p"
# 710 "data/maps/PhoenixTown/scripts.pory"
	.string "we must have one final battle.$"
# 711 "data/maps/PhoenixTown/scripts.pory"

# 712 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraFinalBattleDefeat:
# 713 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: I see it now...$"
# 714 "data/maps/PhoenixTown/scripts.pory"

# 715 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraPlayerHasGift:
# 716 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: You.\p"
# 717 "data/maps/PhoenixTown/scripts.pory"
	.string "You have it. I will teach you.\p"
# 718 "data/maps/PhoenixTown/scripts.pory"
	.string "Come through the cave to learn.$"
# 719 "data/maps/PhoenixTown/scripts.pory"

# 720 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaWhatWasThat:
# 721 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: What... was that?$"
# 722 "data/maps/PhoenixTown/scripts.pory"

# 723 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaCanWeTrust:
# 724 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: Can we really trust\n"
# 725 "data/maps/PhoenixTown/scripts.pory"
	.string "someone we know so little about?$"
# 726 "data/maps/PhoenixTown/scripts.pory"

# 727 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoCanWeTrust:
# 728 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: Can we really trust\n"
# 729 "data/maps/PhoenixTown/scripts.pory"
	.string "someone we know so little about?$"
# 730 "data/maps/PhoenixTown/scripts.pory"

# 731 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaNoChoiceZinnia:
# 732 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Right now, we have no\n"
# 733 "data/maps/PhoenixTown/scripts.pory"
	.string "choice.\p"
# 734 "data/maps/PhoenixTown/scripts.pory"
	.string "{PLAYER} is the only one who she\n"
# 735 "data/maps/PhoenixTown/scripts.pory"
	.string "will teach, so they should stay\l"
# 736 "data/maps/PhoenixTown/scripts.pory"
	.string "here and see what they can learn.\p"
# 737 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA, ZINNIA, we will go back to\n"
# 738 "data/maps/PhoenixTown/scripts.pory"
	.string "PETALBURG.\p"
# 739 "data/maps/PhoenixTown/scripts.pory"
	.string "We must do whatever we can to\n"
# 740 "data/maps/PhoenixTown/scripts.pory"
	.string "protect the city and its people\l"
# 741 "data/maps/PhoenixTown/scripts.pory"
	.string "until {PLAYER} returns.$"
# 742 "data/maps/PhoenixTown/scripts.pory"

# 743 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaNoChoiceZenno:
# 744 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Right now, we have no\n"
# 745 "data/maps/PhoenixTown/scripts.pory"
	.string "choice.\p"
# 746 "data/maps/PhoenixTown/scripts.pory"
	.string "{PLAYER} is the only one who she\n"
# 747 "data/maps/PhoenixTown/scripts.pory"
	.string "will teach, so they should stay\l"
# 748 "data/maps/PhoenixTown/scripts.pory"
	.string "here and see what they can learn.\p"
# 749 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA, ZENNO, we will go back to\n"
# 750 "data/maps/PhoenixTown/scripts.pory"
	.string "PETALBURG.\p"
# 751 "data/maps/PhoenixTown/scripts.pory"
	.string "We must do whatever we can to\n"
# 752 "data/maps/PhoenixTown/scripts.pory"
	.string "protect the city and its people\l"
# 753 "data/maps/PhoenixTown/scripts.pory"
	.string "until {PLAYER} returns.$"
# 754 "data/maps/PhoenixTown/scripts.pory"

# 755 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaIUnderstand:
# 756 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: I understand.$"
# 757 "data/maps/PhoenixTown/scripts.pory"

# 758 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoIUnderstand:
# 759 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: I understand.$"
# 760 "data/maps/PhoenixTown/scripts.pory"

# 761 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaGoodLuck:
# 762 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: Good luck, {PLAYER}.\p"
# 763 "data/maps/PhoenixTown/scripts.pory"
	.string "I'll see you soon in PETALBURG,\n"
# 764 "data/maps/PhoenixTown/scripts.pory"
	.string "hopefully.$"
# 765 "data/maps/PhoenixTown/scripts.pory"

# 766 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoGoodLuck:
# 767 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: Good luck, {PLAYER}.\p"
# 768 "data/maps/PhoenixTown/scripts.pory"
	.string "I'll see you soon in PETALBURG,\n"
# 769 "data/maps/PhoenixTown/scripts.pory"
	.string "hopefully.$"
# 770 "data/maps/PhoenixTown/scripts.pory"

# 771 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaTrustYou:
# 772 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: I trust you, {PLAYER}.\p"
# 773 "data/maps/PhoenixTown/scripts.pory"
	.string "Once you get back, make sure you\n"
# 774 "data/maps/PhoenixTown/scripts.pory"
	.string "tell me everything!$"
# 775 "data/maps/PhoenixTown/scripts.pory"

# 776 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaBeSafe:
# 777 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: I know you won't let\n"
# 778 "data/maps/PhoenixTown/scripts.pory"
	.string "us down, {PLAYER}.\p"
# 779 "data/maps/PhoenixTown/scripts.pory"
	.string "Be safe, and return as soon as\n"
# 780 "data/maps/PhoenixTown/scripts.pory"
	.string "you can.$"
# 781 "data/maps/PhoenixTown/scripts.pory"

# 782 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Hiker::
# 783 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Hiker, MSGBOX_NPC
# 784 "data/maps/PhoenixTown/scripts.pory"
	end
# 785 "data/maps/PhoenixTown/scripts.pory"

# 786 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Woman::
# 787 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Woman, MSGBOX_NPC
# 788 "data/maps/PhoenixTown/scripts.pory"
	end
# 789 "data/maps/PhoenixTown/scripts.pory"

# 790 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Youngster::
# 791 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Youngster, MSGBOX_NPC
# 792 "data/maps/PhoenixTown/scripts.pory"
	end
# 793 "data/maps/PhoenixTown/scripts.pory"

# 794 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Man::
# 795 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Man, MSGBOX_NPC
# 796 "data/maps/PhoenixTown/scripts.pory"
	end
# 797 "data/maps/PhoenixTown/scripts.pory"

# 798 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_LittleGirl::
# 799 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LittleGirl, MSGBOX_NPC
# 800 "data/maps/PhoenixTown/scripts.pory"
	end
# 801 "data/maps/PhoenixTown/scripts.pory"

# 802 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Gentleman::
# 803 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Gentleman, MSGBOX_NPC
# 804 "data/maps/PhoenixTown/scripts.pory"
	end
# 805 "data/maps/PhoenixTown/scripts.pory"

# 806 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Hiker:
# 807 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX TOWN rose when the\n"
# 808 "data/maps/PhoenixTown/scripts.pory"
	.string "canyon split in a great quake.\p"
# 809 "data/maps/PhoenixTown/scripts.pory"
	.string "The first settlers followed\n"
# 810 "data/maps/PhoenixTown/scripts.pory"
	.string "the new springs to safety.$"
# 811 "data/maps/PhoenixTown/scripts.pory"

# 812 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Woman:
# 813 "data/maps/PhoenixTown/scripts.pory"
	.string "At night, the earth hums\n"
# 814 "data/maps/PhoenixTown/scripts.pory"
	.string "beneath these streets.\p"
# 815 "data/maps/PhoenixTown/scripts.pory"
	.string "We say the canyon is\n"
# 816 "data/maps/PhoenixTown/scripts.pory"
	.string "dreaming.$"
# 817 "data/maps/PhoenixTown/scripts.pory"

# 818 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Youngster:
# 819 "data/maps/PhoenixTown/scripts.pory"
	.string "It is quiet here, far from\n"
# 820 "data/maps/PhoenixTown/scripts.pory"
	.string "every busy road.\p"
# 821 "data/maps/PhoenixTown/scripts.pory"
	.string "That is why I love this\n"
# 822 "data/maps/PhoenixTown/scripts.pory"
	.string "isolated desert town.$"
# 823 "data/maps/PhoenixTown/scripts.pory"

# 824 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Man:
# 825 "data/maps/PhoenixTown/scripts.pory"
	.string "A tremor can reveal a path\n"
# 826 "data/maps/PhoenixTown/scripts.pory"
	.string "the desert hid for years.\p"
# 827 "data/maps/PhoenixTown/scripts.pory"
	.string "Never cross the canyon\n"
# 828 "data/maps/PhoenixTown/scripts.pory"
	.string "without water.$"
# 829 "data/maps/PhoenixTown/scripts.pory"

# 830 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LittleGirl:
# 831 "data/maps/PhoenixTown/scripts.pory"
	.string "At sunset, the canyon walls\n"
# 832 "data/maps/PhoenixTown/scripts.pory"
	.string "glow like a sleeping\n"
# 833 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX.$"
# 834 "data/maps/PhoenixTown/scripts.pory"

# 835 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Gentleman:
# 836 "data/maps/PhoenixTown/scripts.pory"
	.string "No city lights reach us here.\p"
# 837 "data/maps/PhoenixTown/scripts.pory"
	.string "The stars make the desert\n"
# 838 "data/maps/PhoenixTown/scripts.pory"
	.string "feel less lonely.$"
