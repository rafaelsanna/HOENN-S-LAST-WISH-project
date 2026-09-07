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
	msgbox PhoenixTown_Text_AuroraPlayerHasGift, MSGBOX_DEFAULT
# 224 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 225 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 226 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraExit
# 227 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 228 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 229 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 230 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 231 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 232 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaWhatWasThat, MSGBOX_DEFAULT
# 233 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 234 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineCanWeTrust
# 235 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_CalendulaLineNoChoice
# 236 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineIUnderstand
# 237 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 238 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, PhoenixTown_Movement_RivalStepToPlayer
# 239 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 240 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 241 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 242 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineGoodLuck
# 243 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 244 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, PhoenixTown_Movement_RivalExit
# 245 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 246 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 247 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, PhoenixTown_Movement_LukaStepToPlayer
# 248 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 249 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 250 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 251 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 252 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaTrustYou, MSGBOX_DEFAULT
# 253 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 254 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 255 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, PhoenixTown_Movement_LukaExit
# 256 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 257 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 258 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 259 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 260 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 261 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaBeSafe, MSGBOX_DEFAULT
# 262 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 263 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 264 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT, PhoenixTown_Movement_CalendulaExit
# 265 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 266 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_ClearPetalburgPart1
# 267 "data/maps/PhoenixTown/scripts.pory"
	releaseall
# 268 "data/maps/PhoenixTown/scripts.pory"
	end
# 269 "data/maps/PhoenixTown/scripts.pory"

# 270 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoice::
# 271 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 272 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_CalendulaLineNoChoiceZinnia
# 273 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_CalendulaLineNoChoiceZenno
# 274 "data/maps/PhoenixTown/scripts.pory"
	return
# 275 "data/maps/PhoenixTown/scripts.pory"

# 276 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoiceZinnia::
# 277 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 278 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaNoChoiceZinnia, MSGBOX_DEFAULT
# 279 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 280 "data/maps/PhoenixTown/scripts.pory"
	return
# 281 "data/maps/PhoenixTown/scripts.pory"

# 282 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoiceZenno::
# 283 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 284 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaNoChoiceZenno, MSGBOX_DEFAULT
# 285 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 286 "data/maps/PhoenixTown/scripts.pory"
	return
# 287 "data/maps/PhoenixTown/scripts.pory"

# 288 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineWait::
# 289 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 290 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaWait
# 291 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoWait
# 292 "data/maps/PhoenixTown/scripts.pory"
	return
# 293 "data/maps/PhoenixTown/scripts.pory"

# 294 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaWait::
# 295 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 296 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaWait, MSGBOX_DEFAULT
# 297 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 298 "data/maps/PhoenixTown/scripts.pory"
	return
# 299 "data/maps/PhoenixTown/scripts.pory"

# 300 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoWait::
# 301 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 302 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoWait, MSGBOX_DEFAULT
# 303 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 304 "data/maps/PhoenixTown/scripts.pory"
	return
# 305 "data/maps/PhoenixTown/scripts.pory"

# 306 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineUnnaturalEvents::
# 307 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 308 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaUnnaturalEvents
# 309 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoUnnaturalEvents
# 310 "data/maps/PhoenixTown/scripts.pory"
	return
# 311 "data/maps/PhoenixTown/scripts.pory"

# 312 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaUnnaturalEvents::
# 313 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 314 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaUnnaturalEvents, MSGBOX_DEFAULT
# 315 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 316 "data/maps/PhoenixTown/scripts.pory"
	return
# 317 "data/maps/PhoenixTown/scripts.pory"

# 318 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoUnnaturalEvents::
# 319 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 320 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoUnnaturalEvents, MSGBOX_DEFAULT
# 321 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 322 "data/maps/PhoenixTown/scripts.pory"
	return
# 323 "data/maps/PhoenixTown/scripts.pory"

# 324 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineStopDisasters::
# 325 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 326 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaStopDisasters
# 327 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoStopDisasters
# 328 "data/maps/PhoenixTown/scripts.pory"
	return
# 329 "data/maps/PhoenixTown/scripts.pory"

# 330 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaStopDisasters::
# 331 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 332 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaStopDisasters, MSGBOX_DEFAULT
# 333 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 334 "data/maps/PhoenixTown/scripts.pory"
	return
# 335 "data/maps/PhoenixTown/scripts.pory"

# 336 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoStopDisasters::
# 337 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 338 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoStopDisasters, MSGBOX_DEFAULT
# 339 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 340 "data/maps/PhoenixTown/scripts.pory"
	return
# 341 "data/maps/PhoenixTown/scripts.pory"

# 342 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineWhatDoesThatMean::
# 343 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 344 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaWhatDoesThatMean
# 345 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoWhatDoesThatMean
# 346 "data/maps/PhoenixTown/scripts.pory"
	return
# 347 "data/maps/PhoenixTown/scripts.pory"

# 348 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaWhatDoesThatMean::
# 349 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 350 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaWhatDoesThatMean, MSGBOX_DEFAULT
# 351 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 352 "data/maps/PhoenixTown/scripts.pory"
	return
# 353 "data/maps/PhoenixTown/scripts.pory"

# 354 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoWhatDoesThatMean::
# 355 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 356 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoWhatDoesThatMean, MSGBOX_DEFAULT
# 357 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 358 "data/maps/PhoenixTown/scripts.pory"
	return
# 359 "data/maps/PhoenixTown/scripts.pory"

# 360 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineCanWeTrust::
# 361 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 362 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaCanWeTrust
# 363 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoCanWeTrust
# 364 "data/maps/PhoenixTown/scripts.pory"
	return
# 365 "data/maps/PhoenixTown/scripts.pory"

# 366 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaCanWeTrust::
# 367 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 368 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaCanWeTrust, MSGBOX_DEFAULT
# 369 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 370 "data/maps/PhoenixTown/scripts.pory"
	return
# 371 "data/maps/PhoenixTown/scripts.pory"

# 372 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoCanWeTrust::
# 373 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 374 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoCanWeTrust, MSGBOX_DEFAULT
# 375 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 376 "data/maps/PhoenixTown/scripts.pory"
	return
# 377 "data/maps/PhoenixTown/scripts.pory"

# 378 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineIUnderstand::
# 379 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 380 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaIUnderstand
# 381 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoIUnderstand
# 382 "data/maps/PhoenixTown/scripts.pory"
	return
# 383 "data/maps/PhoenixTown/scripts.pory"

# 384 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaIUnderstand::
# 385 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 386 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaIUnderstand, MSGBOX_DEFAULT
# 387 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 388 "data/maps/PhoenixTown/scripts.pory"
	return
# 389 "data/maps/PhoenixTown/scripts.pory"

# 390 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoIUnderstand::
# 391 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 392 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoIUnderstand, MSGBOX_DEFAULT
# 393 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 394 "data/maps/PhoenixTown/scripts.pory"
	return
# 395 "data/maps/PhoenixTown/scripts.pory"

# 396 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineGoodLuck::
# 397 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 398 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaGoodLuck
# 399 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoGoodLuck
# 400 "data/maps/PhoenixTown/scripts.pory"
	return
# 401 "data/maps/PhoenixTown/scripts.pory"

# 402 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaGoodLuck::
# 403 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 404 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaGoodLuck, MSGBOX_DEFAULT
# 405 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 406 "data/maps/PhoenixTown/scripts.pory"
	return
# 407 "data/maps/PhoenixTown/scripts.pory"

# 408 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoGoodLuck::
# 409 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 410 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoGoodLuck, MSGBOX_DEFAULT
# 411 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 412 "data/maps/PhoenixTown/scripts.pory"
	return
# 413 "data/maps/PhoenixTown/scripts.pory"

# 414 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth17:
# 415 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 416 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 417 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 418 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 419 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 420 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 421 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 422 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 423 "data/maps/PhoenixTown/scripts.pory"

# 424 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth18:
# 425 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 426 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 427 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 428 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 429 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 430 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 431 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 432 "data/maps/PhoenixTown/scripts.pory"

# 433 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth19:
# 434 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 435 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 436 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 437 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 438 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 439 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 440 "data/maps/PhoenixTown/scripts.pory"

# 441 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth20:
# 442 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 443 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 444 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 445 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 446 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 447 "data/maps/PhoenixTown/scripts.pory"

# 448 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth21:
# 449 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 450 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 451 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 452 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 453 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 454 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 455 "data/maps/PhoenixTown/scripts.pory"

# 456 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth22:
# 457 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 458 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 459 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 460 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 461 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 462 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 463 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 464 "data/maps/PhoenixTown/scripts.pory"

# 465 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth23:
# 466 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 467 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 468 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 469 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 470 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 471 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 472 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 473 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 474 "data/maps/PhoenixTown/scripts.pory"

# 475 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraEnter:
# 476 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 477 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 478 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 479 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 480 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 481 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 482 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 483 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 484 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 485 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 486 "data/maps/PhoenixTown/scripts.pory"
	face_right
# 487 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 488 "data/maps/PhoenixTown/scripts.pory"

# 489 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraToRival:
# 490 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 491 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 492 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 493 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 494 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 495 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 496 "data/maps/PhoenixTown/scripts.pory"

# 497 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraToPlayer:
# 498 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 499 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 500 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 501 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 502 "data/maps/PhoenixTown/scripts.pory"

# 503 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraExit:
# 504 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 505 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 506 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 507 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 508 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 509 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 510 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 511 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 512 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 513 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 514 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 515 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 516 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 517 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 518 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 519 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 520 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 521 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 522 "data/maps/PhoenixTown/scripts.pory"
	walk_up
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
	face_up
# 529 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 530 "data/maps/PhoenixTown/scripts.pory"

# 531 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_RivalStepToPlayer:
# 532 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 533 "data/maps/PhoenixTown/scripts.pory"
	face_left
# 534 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 535 "data/maps/PhoenixTown/scripts.pory"

# 536 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_RivalExit:
# 537 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 538 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 539 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 540 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 541 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 542 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 543 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 544 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 545 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 546 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 547 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 548 "data/maps/PhoenixTown/scripts.pory"

# 549 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_LukaStepToPlayer:
# 550 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 551 "data/maps/PhoenixTown/scripts.pory"
	face_right
# 552 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 553 "data/maps/PhoenixTown/scripts.pory"

# 554 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_LukaExit:
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
	walk_down
# 564 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 565 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 566 "data/maps/PhoenixTown/scripts.pory"

# 567 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_CalendulaExit:
# 568 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 569 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 570 "data/maps/PhoenixTown/scripts.pory"
	walk_down
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
	step_end
# 580 "data/maps/PhoenixTown/scripts.pory"

# 581 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaCallPlayerOver:
# 582 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: {PLAYER}! Over here!$"
# 583 "data/maps/PhoenixTown/scripts.pory"

# 584 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaWaitForPlayer:
# 585 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: We should speak near the\n"
# 586 "data/maps/PhoenixTown/scripts.pory"
	.string "others, {PLAYER}.$"
# 587 "data/maps/PhoenixTown/scripts.pory"

# 588 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaPetalburgEvent:
# 589 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: CALENDULA is waiting for you.$"
# 590 "data/maps/PhoenixTown/scripts.pory"

# 591 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaWait:
# 592 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: CALENDULA is waiting for you.$"
# 593 "data/maps/PhoenixTown/scripts.pory"

# 594 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoWait:
# 595 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: CALENDULA is waiting for you.$"
# 596 "data/maps/PhoenixTown/scripts.pory"

# 597 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraSilent:
# 598 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: ...$"
# 599 "data/maps/PhoenixTown/scripts.pory"

# 600 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaGladYoureHere:
# 601 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: {PLAYER}! I'm glad\n"
# 602 "data/maps/PhoenixTown/scripts.pory"
	.string "you're here.\p"
# 603 "data/maps/PhoenixTown/scripts.pory"
	.string "Did you come from PETALBURG?$"
# 604 "data/maps/PhoenixTown/scripts.pory"

# 605 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaUnnaturalEvents:
# 606 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: I've been hearing of\n"
# 607 "data/maps/PhoenixTown/scripts.pory"
	.string "unnatural events occurring lately,\l"
# 608 "data/maps/PhoenixTown/scripts.pory"
	.string "but I didn't expect it to happen\l"
# 609 "data/maps/PhoenixTown/scripts.pory"
	.string "so close to home.$"
# 610 "data/maps/PhoenixTown/scripts.pory"

# 611 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoUnnaturalEvents:
# 612 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: I've been hearing of\n"
# 613 "data/maps/PhoenixTown/scripts.pory"
	.string "unnatural events occurring lately,\l"
# 614 "data/maps/PhoenixTown/scripts.pory"
	.string "but I didn't expect it to happen\l"
# 615 "data/maps/PhoenixTown/scripts.pory"
	.string "so close to home.$"
# 616 "data/maps/PhoenixTown/scripts.pory"

# 617 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaCometLead:
# 618 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: It was only a matter of\n"
# 619 "data/maps/PhoenixTown/scripts.pory"
	.string "time.\p"
# 620 "data/maps/PhoenixTown/scripts.pory"
	.string "I've been chasing every lead I\n"
# 621 "data/maps/PhoenixTown/scripts.pory"
	.string "could find about that comet, and\l"
# 622 "data/maps/PhoenixTown/scripts.pory"
	.string "it seems to be connected to all\l"
# 623 "data/maps/PhoenixTown/scripts.pory"
	.string "of these events.$"
# 624 "data/maps/PhoenixTown/scripts.pory"

# 625 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaLetterAndTrip:
# 626 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: I received a letter\n"
# 627 "data/maps/PhoenixTown/scripts.pory"
	.string "recently from someone who claimed\l"
# 628 "data/maps/PhoenixTown/scripts.pory"
	.string "there would be answers in\l"
# 629 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX TOWN.\p"
# 630 "data/maps/PhoenixTown/scripts.pory"
	.string "When the earthquakes and rain\n"
# 631 "data/maps/PhoenixTown/scripts.pory"
	.string "started in PETALBURG, I knew we\l"
# 632 "data/maps/PhoenixTown/scripts.pory"
	.string "had to do something.\p"
# 633 "data/maps/PhoenixTown/scripts.pory"
	.string "Even if it seemed like a long\n"
# 634 "data/maps/PhoenixTown/scripts.pory"
	.string "shot, we made the trip.$"
# 635 "data/maps/PhoenixTown/scripts.pory"

# 636 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaNoAnswers:
# 637 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: But so far we haven't\n"
# 638 "data/maps/PhoenixTown/scripts.pory"
	.string "found anyone here who knows\l"
# 639 "data/maps/PhoenixTown/scripts.pory"
	.string "anything!$"
# 640 "data/maps/PhoenixTown/scripts.pory"

# 641 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraSoYouCame:
# 642 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: So you came.\p"
# 643 "data/maps/PhoenixTown/scripts.pory"
	.string "It happened again, then.$"
# 644 "data/maps/PhoenixTown/scripts.pory"

# 645 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaStopDisasters:
# 646 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: You sent that letter?\p"
# 647 "data/maps/PhoenixTown/scripts.pory"
	.string "Do you know how to stop the\n"
# 648 "data/maps/PhoenixTown/scripts.pory"
	.string "disasters in our city?$"
# 649 "data/maps/PhoenixTown/scripts.pory"

# 650 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoStopDisasters:
# 651 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: You sent that letter?\p"
# 652 "data/maps/PhoenixTown/scripts.pory"
	.string "Do you know how to stop the\n"
# 653 "data/maps/PhoenixTown/scripts.pory"
	.string "disasters in our city?$"
# 654 "data/maps/PhoenixTown/scripts.pory"

# 655 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaTellUs:
# 656 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Please, tell us what\n"
# 657 "data/maps/PhoenixTown/scripts.pory"
	.string "you know.$"
# 658 "data/maps/PhoenixTown/scripts.pory"

# 659 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaCometQuestion:
# 660 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: It has to do with the\n"
# 661 "data/maps/PhoenixTown/scripts.pory"
	.string "comet, right?$"
# 662 "data/maps/PhoenixTown/scripts.pory"

# 663 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraCometSavior:
# 664 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: You are correct.\p"
# 665 "data/maps/PhoenixTown/scripts.pory"
	.string "The comet is our savior, but\n"
# 666 "data/maps/PhoenixTown/scripts.pory"
	.string "there are forces trying to return\l"
# 667 "data/maps/PhoenixTown/scripts.pory"
	.string "us to the path of ruin.$"
# 668 "data/maps/PhoenixTown/scripts.pory"

# 669 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaWhatDoesThatMean:
# 670 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: What...?\p"
# 671 "data/maps/PhoenixTown/scripts.pory"
	.string "What is that supposed to mean?$"
# 672 "data/maps/PhoenixTown/scripts.pory"

# 673 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoWhatDoesThatMean:
# 674 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: What...?\p"
# 675 "data/maps/PhoenixTown/scripts.pory"
	.string "What is that supposed to mean?$"
# 676 "data/maps/PhoenixTown/scripts.pory"

# 677 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraGiftOnly:
# 678 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: It is possible to save\n"
# 679 "data/maps/PhoenixTown/scripts.pory"
	.string "your home, but I can only teach\l"
# 680 "data/maps/PhoenixTown/scripts.pory"
	.string "those who have the gift.$"
# 681 "data/maps/PhoenixTown/scripts.pory"

# 682 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaWhatGift:
# 683 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: What is this gift?$"
# 684 "data/maps/PhoenixTown/scripts.pory"

# 685 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraNotYou:
# 686 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Not you.$"
# 687 "data/maps/PhoenixTown/scripts.pory"

# 688 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraNorYou:
# 689 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Nor you.$"
# 690 "data/maps/PhoenixTown/scripts.pory"

# 691 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraPlayerHasGift:
# 692 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: You.\p"
# 693 "data/maps/PhoenixTown/scripts.pory"
	.string "You have it. I will teach you.\p"
# 694 "data/maps/PhoenixTown/scripts.pory"
	.string "Come through the cave to learn.$"
# 695 "data/maps/PhoenixTown/scripts.pory"

# 696 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaWhatWasThat:
# 697 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: What... was that?$"
# 698 "data/maps/PhoenixTown/scripts.pory"

# 699 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaCanWeTrust:
# 700 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: Can we really trust\n"
# 701 "data/maps/PhoenixTown/scripts.pory"
	.string "someone we know so little about?$"
# 702 "data/maps/PhoenixTown/scripts.pory"

# 703 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoCanWeTrust:
# 704 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: Can we really trust\n"
# 705 "data/maps/PhoenixTown/scripts.pory"
	.string "someone we know so little about?$"
# 706 "data/maps/PhoenixTown/scripts.pory"

# 707 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaNoChoiceZinnia:
# 708 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Right now, we have no\n"
# 709 "data/maps/PhoenixTown/scripts.pory"
	.string "choice.\p"
# 710 "data/maps/PhoenixTown/scripts.pory"
	.string "{PLAYER} is the only one who she\n"
# 711 "data/maps/PhoenixTown/scripts.pory"
	.string "will teach, so they should stay\l"
# 712 "data/maps/PhoenixTown/scripts.pory"
	.string "here and see what they can learn.\p"
# 713 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA, ZINNIA, we will go back to\n"
# 714 "data/maps/PhoenixTown/scripts.pory"
	.string "PETALBURG.\p"
# 715 "data/maps/PhoenixTown/scripts.pory"
	.string "We must do whatever we can to\n"
# 716 "data/maps/PhoenixTown/scripts.pory"
	.string "protect the city and its people\l"
# 717 "data/maps/PhoenixTown/scripts.pory"
	.string "until {PLAYER} returns.$"
# 718 "data/maps/PhoenixTown/scripts.pory"

# 719 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaNoChoiceZenno:
# 720 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Right now, we have no\n"
# 721 "data/maps/PhoenixTown/scripts.pory"
	.string "choice.\p"
# 722 "data/maps/PhoenixTown/scripts.pory"
	.string "{PLAYER} is the only one who she\n"
# 723 "data/maps/PhoenixTown/scripts.pory"
	.string "will teach, so they should stay\l"
# 724 "data/maps/PhoenixTown/scripts.pory"
	.string "here and see what they can learn.\p"
# 725 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA, ZENNO, we will go back to\n"
# 726 "data/maps/PhoenixTown/scripts.pory"
	.string "PETALBURG.\p"
# 727 "data/maps/PhoenixTown/scripts.pory"
	.string "We must do whatever we can to\n"
# 728 "data/maps/PhoenixTown/scripts.pory"
	.string "protect the city and its people\l"
# 729 "data/maps/PhoenixTown/scripts.pory"
	.string "until {PLAYER} returns.$"
# 730 "data/maps/PhoenixTown/scripts.pory"

# 731 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaIUnderstand:
# 732 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: I understand.$"
# 733 "data/maps/PhoenixTown/scripts.pory"

# 734 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoIUnderstand:
# 735 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: I understand.$"
# 736 "data/maps/PhoenixTown/scripts.pory"

# 737 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaGoodLuck:
# 738 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: Good luck, {PLAYER}.\p"
# 739 "data/maps/PhoenixTown/scripts.pory"
	.string "I'll see you soon in PETALBURG,\n"
# 740 "data/maps/PhoenixTown/scripts.pory"
	.string "hopefully.$"
# 741 "data/maps/PhoenixTown/scripts.pory"

# 742 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoGoodLuck:
# 743 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: Good luck, {PLAYER}.\p"
# 744 "data/maps/PhoenixTown/scripts.pory"
	.string "I'll see you soon in PETALBURG,\n"
# 745 "data/maps/PhoenixTown/scripts.pory"
	.string "hopefully.$"
# 746 "data/maps/PhoenixTown/scripts.pory"

# 747 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaTrustYou:
# 748 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: I trust you, {PLAYER}.\p"
# 749 "data/maps/PhoenixTown/scripts.pory"
	.string "Once you get back, make sure you\n"
# 750 "data/maps/PhoenixTown/scripts.pory"
	.string "tell me everything!$"
# 751 "data/maps/PhoenixTown/scripts.pory"

# 752 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaBeSafe:
# 753 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: I know you won't let\n"
# 754 "data/maps/PhoenixTown/scripts.pory"
	.string "us down, {PLAYER}.\p"
# 755 "data/maps/PhoenixTown/scripts.pory"
	.string "Be safe, and return as soon as\n"
# 756 "data/maps/PhoenixTown/scripts.pory"
	.string "you can.$"
