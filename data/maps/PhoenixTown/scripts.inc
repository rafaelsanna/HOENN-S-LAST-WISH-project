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
	goto_if_unset FLAG_PETALBURG_QUAKE_EVENT_STARTED, PhoenixTown_EventScript_HidePetalburgEventGroup
# 16 "data/maps/PhoenixTown/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART1_CLEARED, PhoenixTown_EventScript_HidePetalburgEventGroup
# 17 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 18 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 19 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 20 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 21 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 0
# 22 "data/maps/PhoenixTown/scripts.pory"
	return
# 23 "data/maps/PhoenixTown/scripts.pory"

# 24 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_HidePetalburgEventGroup::
# 25 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 26 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 27 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 28 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 29 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 30 "data/maps/PhoenixTown/scripts.pory"
	return
# 31 "data/maps/PhoenixTown/scripts.pory"

# 32 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaPetalburgEvent::
# 33 "data/maps/PhoenixTown/scripts.pory"
	lock
# 34 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 35 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 36 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaWaitForPlayer, MSGBOX_DEFAULT
# 37 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 38 "data/maps/PhoenixTown/scripts.pory"
	release
# 39 "data/maps/PhoenixTown/scripts.pory"
	end
# 40 "data/maps/PhoenixTown/scripts.pory"

# 41 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_LukaPetalburgEvent::
# 42 "data/maps/PhoenixTown/scripts.pory"
	lock
# 43 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 44 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 45 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaPetalburgEvent, MSGBOX_DEFAULT
# 46 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 47 "data/maps/PhoenixTown/scripts.pory"
	release
# 48 "data/maps/PhoenixTown/scripts.pory"
	end
# 49 "data/maps/PhoenixTown/scripts.pory"

# 50 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalPetalburgEvent::
# 51 "data/maps/PhoenixTown/scripts.pory"
	lock
# 52 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 53 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineWait
# 54 "data/maps/PhoenixTown/scripts.pory"
	release
# 55 "data/maps/PhoenixTown/scripts.pory"
	end
# 56 "data/maps/PhoenixTown/scripts.pory"

# 57 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_AuroraPetalburgEvent::
# 58 "data/maps/PhoenixTown/scripts.pory"
	lock
# 59 "data/maps/PhoenixTown/scripts.pory"
	faceplayer
# 60 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 61 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSilent, MSGBOX_DEFAULT
# 62 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 63 "data/maps/PhoenixTown/scripts.pory"
	release
# 64 "data/maps/PhoenixTown/scripts.pory"
	end
# 65 "data/maps/PhoenixTown/scripts.pory"

# 66 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ClearPetalburgPart1::
# 67 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_PART1_CLEARED
# 68 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
# 69 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 70 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 71 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 72 "data/maps/PhoenixTown/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 73 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 74 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT
# 75 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 76 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 77 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 78 "data/maps/PhoenixTown/scripts.pory"
	return
# 79 "data/maps/PhoenixTown/scripts.pory"

# 80 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth17::
# 81 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 82 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 83 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 84 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth17
# 85 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 86 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 87 "data/maps/PhoenixTown/scripts.pory"
	end
# 88 "data/maps/PhoenixTown/scripts.pory"

# 89 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth18::
# 90 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 91 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 92 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 93 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth18
# 94 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 95 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 96 "data/maps/PhoenixTown/scripts.pory"
	end
# 97 "data/maps/PhoenixTown/scripts.pory"

# 98 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth19::
# 99 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 100 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 101 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 102 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth19
# 103 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 104 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 105 "data/maps/PhoenixTown/scripts.pory"
	end
# 106 "data/maps/PhoenixTown/scripts.pory"

# 107 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth20::
# 108 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 109 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 110 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 111 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth20
# 112 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 113 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 114 "data/maps/PhoenixTown/scripts.pory"
	end
# 115 "data/maps/PhoenixTown/scripts.pory"

# 116 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth21::
# 117 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 118 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 119 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 120 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth21
# 121 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 122 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 123 "data/maps/PhoenixTown/scripts.pory"
	end
# 124 "data/maps/PhoenixTown/scripts.pory"

# 125 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth22::
# 126 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 127 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 128 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 129 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth22
# 130 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 131 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 132 "data/maps/PhoenixTown/scripts.pory"
	end
# 133 "data/maps/PhoenixTown/scripts.pory"

# 134 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventApproachFromSouth23::
# 135 "data/maps/PhoenixTown/scripts.pory"
	lockall
# 136 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_TEMP_1, 1
# 137 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_PetalburgEventNoticePlayer
# 138 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, PhoenixTown_Movement_PlayerToCalendulaFromSouth23
# 139 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 140 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_PetalburgEventFullScene
# 141 "data/maps/PhoenixTown/scripts.pory"
	end
# 142 "data/maps/PhoenixTown/scripts.pory"

# 143 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventNoticePlayer::
# 144 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT, Common_Movement_ExclamationMark
# 145 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, Common_Movement_ExclamationMark
# 146 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, Common_Movement_ExclamationMark
# 147 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 148 "data/maps/PhoenixTown/scripts.pory"
	delay 20
# 149 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 150 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaCallPlayerOver, MSGBOX_DEFAULT
# 151 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 152 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 153 "data/maps/PhoenixTown/scripts.pory"
	return
# 154 "data/maps/PhoenixTown/scripts.pory"

# 155 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_PetalburgEventFullScene::
# 156 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 157 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 158 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 159 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaGladYoureHere, MSGBOX_DEFAULT
# 160 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 161 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineUnnaturalEvents
# 162 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 163 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaCometLead, MSGBOX_DEFAULT
# 164 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 165 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 166 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaLetterAndTrip, MSGBOX_DEFAULT
# 167 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 168 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 169 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaNoAnswers, MSGBOX_DEFAULT
# 170 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 171 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 172 "data/maps/PhoenixTown/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 173 "data/maps/PhoenixTown/scripts.pory"
	addobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 174 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraEnter
# 175 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 176 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 177 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, Common_Movement_FaceLeft
# 178 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 179 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 180 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSoYouCame, MSGBOX_DEFAULT
# 181 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 182 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineStopDisasters
# 183 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 184 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaTellUs, MSGBOX_DEFAULT
# 185 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 186 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 187 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaCometQuestion, MSGBOX_DEFAULT
# 188 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 189 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 190 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSilent, MSGBOX_DEFAULT
# 191 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraCometSavior, MSGBOX_DEFAULT
# 192 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 193 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineWhatDoesThatMean
# 194 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 195 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraGiftOnly, MSGBOX_DEFAULT
# 196 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 197 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 198 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaWhatGift, MSGBOX_DEFAULT
# 199 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 200 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 201 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, Common_Movement_FaceUp
# 202 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 203 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 204 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraNotYou, MSGBOX_DEFAULT
# 205 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 206 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 207 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraToRival
# 208 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 209 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 210 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, Common_Movement_FaceRight
# 211 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 212 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 213 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraNorYou, MSGBOX_DEFAULT
# 214 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 215 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 216 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraToPlayer
# 217 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 218 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 219 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, Common_Movement_FaceDown
# 220 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, Common_Movement_FaceDown
# 221 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 222 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 223 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraSilent, MSGBOX_DEFAULT
# 224 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraFinalBattle, MSGBOX_DEFAULT
# 225 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 226 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 227 "data/maps/PhoenixTown/scripts.pory"
	@ The event has no progress flag yet. A loss triggers White Out, and
# 228 "data/maps/PhoenixTown/scripts.pory"
	@ PhoenixTown_OnTransition re-arms this entire scene on the next visit.
# 229 "data/maps/PhoenixTown/scripts.pory"
	setvar VAR_LAST_TALKED, LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 230 "data/maps/PhoenixTown/scripts.pory"
	getdifficulty VAR_RESULT
# 231 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, 1, PhoenixTown_EventScript_AuroraFinalBattleHard
# 232 "data/maps/PhoenixTown/scripts.pory"
	trainerbattle_no_intro TRAINER_AURORA_PHOENIX, PhoenixTown_Text_AuroraFinalBattleDefeat
# 233 "data/maps/PhoenixTown/scripts.pory"
	goto PhoenixTown_EventScript_AuroraConfirmed
# 234 "data/maps/PhoenixTown/scripts.pory"

# 235 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_AuroraFinalBattleHard::
# 236 "data/maps/PhoenixTown/scripts.pory"
	trainerbattle_no_intro TRAINER_AURORA_PHOENIX_HARD, PhoenixTown_Text_AuroraFinalBattleDefeat
# 237 "data/maps/PhoenixTown/scripts.pory"

# 238 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_AuroraConfirmed::
# 239 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 240 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_AuroraPlayerHasGift, MSGBOX_DEFAULT
# 241 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 242 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 243 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT, PhoenixTown_Movement_AuroraExit
# 244 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 245 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT
# 246 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 247 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 248 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 249 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaWhatWasThat, MSGBOX_DEFAULT
# 250 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 251 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineCanWeTrust
# 252 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_CalendulaLineNoChoice
# 253 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineIUnderstand
# 254 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 255 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, PhoenixTown_Movement_RivalStepToPlayer
# 256 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 257 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 258 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 259 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_RivalLineGoodLuck
# 260 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 261 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT, PhoenixTown_Movement_RivalExit
# 262 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 263 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_RIVAL_PETALBURG_EVENT
# 264 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, PhoenixTown_Movement_LukaStepToPlayer
# 265 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 266 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 267 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 268 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 269 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LukaTrustYou, MSGBOX_DEFAULT
# 270 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 271 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 272 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT, PhoenixTown_Movement_LukaExit
# 273 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 274 "data/maps/PhoenixTown/scripts.pory"
	removeobject LOCALID_PHOENIX_TOWN_LUKA_PETALBURG_EVENT
# 275 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 276 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 277 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 278 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaBeSafe, MSGBOX_DEFAULT
# 279 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 280 "data/maps/PhoenixTown/scripts.pory"
	closemessage
# 281 "data/maps/PhoenixTown/scripts.pory"
	applymovement LOCALID_PHOENIX_TOWN_CALENDULA_PETALBURG_EVENT, PhoenixTown_Movement_CalendulaExit
# 282 "data/maps/PhoenixTown/scripts.pory"
	waitmovement 0
# 283 "data/maps/PhoenixTown/scripts.pory"
	call PhoenixTown_EventScript_ClearPetalburgPart1
# 284 "data/maps/PhoenixTown/scripts.pory"
	releaseall
# 285 "data/maps/PhoenixTown/scripts.pory"
	end
# 286 "data/maps/PhoenixTown/scripts.pory"

# 287 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoice::
# 288 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 289 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_CalendulaLineNoChoiceZinnia
# 290 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_CalendulaLineNoChoiceZenno
# 291 "data/maps/PhoenixTown/scripts.pory"
	return
# 292 "data/maps/PhoenixTown/scripts.pory"

# 293 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoiceZinnia::
# 294 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 295 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaNoChoiceZinnia, MSGBOX_DEFAULT
# 296 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 297 "data/maps/PhoenixTown/scripts.pory"
	return
# 298 "data/maps/PhoenixTown/scripts.pory"

# 299 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_CalendulaLineNoChoiceZenno::
# 300 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 301 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_CalendulaNoChoiceZenno, MSGBOX_DEFAULT
# 302 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 303 "data/maps/PhoenixTown/scripts.pory"
	return
# 304 "data/maps/PhoenixTown/scripts.pory"

# 305 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineWait::
# 306 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 307 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaWait
# 308 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoWait
# 309 "data/maps/PhoenixTown/scripts.pory"
	return
# 310 "data/maps/PhoenixTown/scripts.pory"

# 311 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaWait::
# 312 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 313 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaWait, MSGBOX_DEFAULT
# 314 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 315 "data/maps/PhoenixTown/scripts.pory"
	return
# 316 "data/maps/PhoenixTown/scripts.pory"

# 317 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoWait::
# 318 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 319 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoWait, MSGBOX_DEFAULT
# 320 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 321 "data/maps/PhoenixTown/scripts.pory"
	return
# 322 "data/maps/PhoenixTown/scripts.pory"

# 323 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineUnnaturalEvents::
# 324 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 325 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaUnnaturalEvents
# 326 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoUnnaturalEvents
# 327 "data/maps/PhoenixTown/scripts.pory"
	return
# 328 "data/maps/PhoenixTown/scripts.pory"

# 329 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaUnnaturalEvents::
# 330 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 331 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaUnnaturalEvents, MSGBOX_DEFAULT
# 332 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 333 "data/maps/PhoenixTown/scripts.pory"
	return
# 334 "data/maps/PhoenixTown/scripts.pory"

# 335 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoUnnaturalEvents::
# 336 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 337 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoUnnaturalEvents, MSGBOX_DEFAULT
# 338 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 339 "data/maps/PhoenixTown/scripts.pory"
	return
# 340 "data/maps/PhoenixTown/scripts.pory"

# 341 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineStopDisasters::
# 342 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 343 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaStopDisasters
# 344 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoStopDisasters
# 345 "data/maps/PhoenixTown/scripts.pory"
	return
# 346 "data/maps/PhoenixTown/scripts.pory"

# 347 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaStopDisasters::
# 348 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 349 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaStopDisasters, MSGBOX_DEFAULT
# 350 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 351 "data/maps/PhoenixTown/scripts.pory"
	return
# 352 "data/maps/PhoenixTown/scripts.pory"

# 353 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoStopDisasters::
# 354 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 355 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoStopDisasters, MSGBOX_DEFAULT
# 356 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 357 "data/maps/PhoenixTown/scripts.pory"
	return
# 358 "data/maps/PhoenixTown/scripts.pory"

# 359 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineWhatDoesThatMean::
# 360 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 361 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaWhatDoesThatMean
# 362 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoWhatDoesThatMean
# 363 "data/maps/PhoenixTown/scripts.pory"
	return
# 364 "data/maps/PhoenixTown/scripts.pory"

# 365 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaWhatDoesThatMean::
# 366 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 367 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaWhatDoesThatMean, MSGBOX_DEFAULT
# 368 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 369 "data/maps/PhoenixTown/scripts.pory"
	return
# 370 "data/maps/PhoenixTown/scripts.pory"

# 371 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoWhatDoesThatMean::
# 372 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 373 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoWhatDoesThatMean, MSGBOX_DEFAULT
# 374 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 375 "data/maps/PhoenixTown/scripts.pory"
	return
# 376 "data/maps/PhoenixTown/scripts.pory"

# 377 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineCanWeTrust::
# 378 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 379 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaCanWeTrust
# 380 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoCanWeTrust
# 381 "data/maps/PhoenixTown/scripts.pory"
	return
# 382 "data/maps/PhoenixTown/scripts.pory"

# 383 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaCanWeTrust::
# 384 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 385 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaCanWeTrust, MSGBOX_DEFAULT
# 386 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 387 "data/maps/PhoenixTown/scripts.pory"
	return
# 388 "data/maps/PhoenixTown/scripts.pory"

# 389 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoCanWeTrust::
# 390 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 391 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoCanWeTrust, MSGBOX_DEFAULT
# 392 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 393 "data/maps/PhoenixTown/scripts.pory"
	return
# 394 "data/maps/PhoenixTown/scripts.pory"

# 395 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineIUnderstand::
# 396 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 397 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaIUnderstand
# 398 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoIUnderstand
# 399 "data/maps/PhoenixTown/scripts.pory"
	return
# 400 "data/maps/PhoenixTown/scripts.pory"

# 401 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaIUnderstand::
# 402 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 403 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaIUnderstand, MSGBOX_DEFAULT
# 404 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 405 "data/maps/PhoenixTown/scripts.pory"
	return
# 406 "data/maps/PhoenixTown/scripts.pory"

# 407 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoIUnderstand::
# 408 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 409 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoIUnderstand, MSGBOX_DEFAULT
# 410 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 411 "data/maps/PhoenixTown/scripts.pory"
	return
# 412 "data/maps/PhoenixTown/scripts.pory"

# 413 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_RivalLineGoodLuck::
# 414 "data/maps/PhoenixTown/scripts.pory"
	checkplayergender
# 415 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, PhoenixTown_EventScript_ZinniaGoodLuck
# 416 "data/maps/PhoenixTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, PhoenixTown_EventScript_ZennoGoodLuck
# 417 "data/maps/PhoenixTown/scripts.pory"
	return
# 418 "data/maps/PhoenixTown/scripts.pory"

# 419 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZinniaGoodLuck::
# 420 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 421 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZinniaGoodLuck, MSGBOX_DEFAULT
# 422 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 423 "data/maps/PhoenixTown/scripts.pory"
	return
# 424 "data/maps/PhoenixTown/scripts.pory"

# 425 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_ZennoGoodLuck::
# 426 "data/maps/PhoenixTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 427 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_ZennoGoodLuck, MSGBOX_DEFAULT
# 428 "data/maps/PhoenixTown/scripts.pory"
	removefieldmugshot
# 429 "data/maps/PhoenixTown/scripts.pory"
	return
# 430 "data/maps/PhoenixTown/scripts.pory"

# 431 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth17:
# 432 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 433 "data/maps/PhoenixTown/scripts.pory"
	walk_right
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
PhoenixTown_Movement_PlayerToCalendulaFromSouth18:
# 442 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 443 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 444 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 445 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 446 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 447 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 448 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 449 "data/maps/PhoenixTown/scripts.pory"

# 450 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth19:
# 451 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 452 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 453 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 454 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 455 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 456 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 457 "data/maps/PhoenixTown/scripts.pory"

# 458 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth20:
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
PhoenixTown_Movement_PlayerToCalendulaFromSouth21:
# 466 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 467 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 468 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 469 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 470 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 471 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 472 "data/maps/PhoenixTown/scripts.pory"

# 473 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth22:
# 474 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 475 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 476 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 477 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 478 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 479 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 480 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 481 "data/maps/PhoenixTown/scripts.pory"

# 482 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_PlayerToCalendulaFromSouth23:
# 483 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 484 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 485 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 486 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 487 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 488 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 489 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 490 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 491 "data/maps/PhoenixTown/scripts.pory"

# 492 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraEnter:
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
	walk_down
# 501 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 502 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 503 "data/maps/PhoenixTown/scripts.pory"
	face_right
# 504 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 505 "data/maps/PhoenixTown/scripts.pory"

# 506 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraToRival:
# 507 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 508 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 509 "data/maps/PhoenixTown/scripts.pory"
	walk_right
# 510 "data/maps/PhoenixTown/scripts.pory"
	walk_up
# 511 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 512 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 513 "data/maps/PhoenixTown/scripts.pory"

# 514 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraToPlayer:
# 515 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 516 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 517 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 518 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 519 "data/maps/PhoenixTown/scripts.pory"

# 520 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_AuroraExit:
# 521 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 522 "data/maps/PhoenixTown/scripts.pory"
	walk_left
# 523 "data/maps/PhoenixTown/scripts.pory"
	walk_left
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
	walk_up
# 545 "data/maps/PhoenixTown/scripts.pory"
	face_up
# 546 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 547 "data/maps/PhoenixTown/scripts.pory"

# 548 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_RivalStepToPlayer:
# 549 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 550 "data/maps/PhoenixTown/scripts.pory"
	face_left
# 551 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 552 "data/maps/PhoenixTown/scripts.pory"

# 553 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_RivalExit:
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
	walk_down
# 564 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 565 "data/maps/PhoenixTown/scripts.pory"

# 566 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_LukaStepToPlayer:
# 567 "data/maps/PhoenixTown/scripts.pory"
	walk_down
# 568 "data/maps/PhoenixTown/scripts.pory"
	face_right
# 569 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 570 "data/maps/PhoenixTown/scripts.pory"

# 571 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_LukaExit:
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
	walk_down
# 582 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 583 "data/maps/PhoenixTown/scripts.pory"

# 584 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Movement_CalendulaExit:
# 585 "data/maps/PhoenixTown/scripts.pory"
	walk_left
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
	walk_down
# 596 "data/maps/PhoenixTown/scripts.pory"
	step_end
# 597 "data/maps/PhoenixTown/scripts.pory"

# 598 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaCallPlayerOver:
# 599 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: {PLAYER}! Over here!$"
# 600 "data/maps/PhoenixTown/scripts.pory"

# 601 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaWaitForPlayer:
# 602 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: We should speak near the\n"
# 603 "data/maps/PhoenixTown/scripts.pory"
	.string "others, {PLAYER}.$"
# 604 "data/maps/PhoenixTown/scripts.pory"

# 605 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaPetalburgEvent:
# 606 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: CALENDULA is waiting for you.$"
# 607 "data/maps/PhoenixTown/scripts.pory"

# 608 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaWait:
# 609 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: CALENDULA is waiting for you.$"
# 610 "data/maps/PhoenixTown/scripts.pory"

# 611 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoWait:
# 612 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: CALENDULA is waiting for you.$"
# 613 "data/maps/PhoenixTown/scripts.pory"

# 614 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraSilent:
# 615 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: ...$"
# 616 "data/maps/PhoenixTown/scripts.pory"

# 617 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaGladYoureHere:
# 618 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: {PLAYER}! I'm glad\n"
# 619 "data/maps/PhoenixTown/scripts.pory"
	.string "you're here.\p"
# 620 "data/maps/PhoenixTown/scripts.pory"
	.string "Did you come from PETALBURG?$"
# 621 "data/maps/PhoenixTown/scripts.pory"

# 622 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaUnnaturalEvents:
# 623 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: I've been hearing of\n"
# 624 "data/maps/PhoenixTown/scripts.pory"
	.string "unnatural events occurring lately,\l"
# 625 "data/maps/PhoenixTown/scripts.pory"
	.string "but I didn't expect it to happen\l"
# 626 "data/maps/PhoenixTown/scripts.pory"
	.string "so close to home.$"
# 627 "data/maps/PhoenixTown/scripts.pory"

# 628 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoUnnaturalEvents:
# 629 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: I've been hearing of\n"
# 630 "data/maps/PhoenixTown/scripts.pory"
	.string "unnatural events occurring lately,\l"
# 631 "data/maps/PhoenixTown/scripts.pory"
	.string "but I didn't expect it to happen\l"
# 632 "data/maps/PhoenixTown/scripts.pory"
	.string "so close to home.$"
# 633 "data/maps/PhoenixTown/scripts.pory"

# 634 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaCometLead:
# 635 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: It was only a matter of\n"
# 636 "data/maps/PhoenixTown/scripts.pory"
	.string "time.\p"
# 637 "data/maps/PhoenixTown/scripts.pory"
	.string "I've been chasing every lead I\n"
# 638 "data/maps/PhoenixTown/scripts.pory"
	.string "could find about that comet, and\l"
# 639 "data/maps/PhoenixTown/scripts.pory"
	.string "it seems to be connected to all\l"
# 640 "data/maps/PhoenixTown/scripts.pory"
	.string "of these events.$"
# 641 "data/maps/PhoenixTown/scripts.pory"

# 642 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaLetterAndTrip:
# 643 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: I received a letter\n"
# 644 "data/maps/PhoenixTown/scripts.pory"
	.string "recently from someone who claimed\l"
# 645 "data/maps/PhoenixTown/scripts.pory"
	.string "there would be answers in\l"
# 646 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX TOWN.\p"
# 647 "data/maps/PhoenixTown/scripts.pory"
	.string "When the earthquakes and rain\n"
# 648 "data/maps/PhoenixTown/scripts.pory"
	.string "started in PETALBURG, I knew we\l"
# 649 "data/maps/PhoenixTown/scripts.pory"
	.string "had to do something.\p"
# 650 "data/maps/PhoenixTown/scripts.pory"
	.string "Even if it seemed like a long\n"
# 651 "data/maps/PhoenixTown/scripts.pory"
	.string "shot, we made the trip.$"
# 652 "data/maps/PhoenixTown/scripts.pory"

# 653 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaNoAnswers:
# 654 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: But so far we haven't\n"
# 655 "data/maps/PhoenixTown/scripts.pory"
	.string "found anyone here who knows\l"
# 656 "data/maps/PhoenixTown/scripts.pory"
	.string "anything!$"
# 657 "data/maps/PhoenixTown/scripts.pory"

# 658 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraSoYouCame:
# 659 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: So you came.\p"
# 660 "data/maps/PhoenixTown/scripts.pory"
	.string "It happened again, then.$"
# 661 "data/maps/PhoenixTown/scripts.pory"

# 662 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaStopDisasters:
# 663 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: You sent that letter?\p"
# 664 "data/maps/PhoenixTown/scripts.pory"
	.string "Do you know how to stop the\n"
# 665 "data/maps/PhoenixTown/scripts.pory"
	.string "disasters in our city?$"
# 666 "data/maps/PhoenixTown/scripts.pory"

# 667 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoStopDisasters:
# 668 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: You sent that letter?\p"
# 669 "data/maps/PhoenixTown/scripts.pory"
	.string "Do you know how to stop the\n"
# 670 "data/maps/PhoenixTown/scripts.pory"
	.string "disasters in our city?$"
# 671 "data/maps/PhoenixTown/scripts.pory"

# 672 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaTellUs:
# 673 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Please, tell us what\n"
# 674 "data/maps/PhoenixTown/scripts.pory"
	.string "you know.$"
# 675 "data/maps/PhoenixTown/scripts.pory"

# 676 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaCometQuestion:
# 677 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: It has to do with the\n"
# 678 "data/maps/PhoenixTown/scripts.pory"
	.string "comet, right?$"
# 679 "data/maps/PhoenixTown/scripts.pory"

# 680 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraCometSavior:
# 681 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: You are correct.\p"
# 682 "data/maps/PhoenixTown/scripts.pory"
	.string "The comet is our savior, but\n"
# 683 "data/maps/PhoenixTown/scripts.pory"
	.string "there are forces trying to return\l"
# 684 "data/maps/PhoenixTown/scripts.pory"
	.string "us to the path of ruin.$"
# 685 "data/maps/PhoenixTown/scripts.pory"

# 686 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaWhatDoesThatMean:
# 687 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: What...?\p"
# 688 "data/maps/PhoenixTown/scripts.pory"
	.string "What is that supposed to mean?$"
# 689 "data/maps/PhoenixTown/scripts.pory"

# 690 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoWhatDoesThatMean:
# 691 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: What...?\p"
# 692 "data/maps/PhoenixTown/scripts.pory"
	.string "What is that supposed to mean?$"
# 693 "data/maps/PhoenixTown/scripts.pory"

# 694 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraGiftOnly:
# 695 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: It is possible to save\n"
# 696 "data/maps/PhoenixTown/scripts.pory"
	.string "your home, but I can only teach\l"
# 697 "data/maps/PhoenixTown/scripts.pory"
	.string "those who have the gift.$"
# 698 "data/maps/PhoenixTown/scripts.pory"

# 699 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaWhatGift:
# 700 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: What is this gift?$"
# 701 "data/maps/PhoenixTown/scripts.pory"

# 702 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraNotYou:
# 703 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Not you.$"
# 704 "data/maps/PhoenixTown/scripts.pory"

# 705 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraNorYou:
# 706 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Nor you.$"
# 707 "data/maps/PhoenixTown/scripts.pory"

# 708 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraFinalBattle:
# 709 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: Hm...\p"
# 710 "data/maps/PhoenixTown/scripts.pory"
	.string "I sense it in you. You have\n"
# 711 "data/maps/PhoenixTown/scripts.pory"
	.string "the gift.\p"
# 712 "data/maps/PhoenixTown/scripts.pory"
	.string "But that alone is not enough.\n"
# 713 "data/maps/PhoenixTown/scripts.pory"
	.string "You must have the strength\l"
# 714 "data/maps/PhoenixTown/scripts.pory"
	.string "to weather the challenges\l"
# 715 "data/maps/PhoenixTown/scripts.pory"
	.string "before you.\p"
# 716 "data/maps/PhoenixTown/scripts.pory"
	.string "Prove it to me in battle.$"
# 717 "data/maps/PhoenixTown/scripts.pory"

# 718 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraFinalBattleDefeat:
# 719 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: I see it now...$"
# 720 "data/maps/PhoenixTown/scripts.pory"

# 721 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_AuroraPlayerHasGift:
# 722 "data/maps/PhoenixTown/scripts.pory"
	.string "AURORA: You.\p"
# 723 "data/maps/PhoenixTown/scripts.pory"
	.string "You have it. I will teach you.\p"
# 724 "data/maps/PhoenixTown/scripts.pory"
	.string "Come through the cave to learn.$"
# 725 "data/maps/PhoenixTown/scripts.pory"

# 726 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaWhatWasThat:
# 727 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: What... was that?$"
# 728 "data/maps/PhoenixTown/scripts.pory"

# 729 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaCanWeTrust:
# 730 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: Can we really trust\n"
# 731 "data/maps/PhoenixTown/scripts.pory"
	.string "someone we know so little about?$"
# 732 "data/maps/PhoenixTown/scripts.pory"

# 733 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoCanWeTrust:
# 734 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: Can we really trust\n"
# 735 "data/maps/PhoenixTown/scripts.pory"
	.string "someone we know so little about?$"
# 736 "data/maps/PhoenixTown/scripts.pory"

# 737 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaNoChoiceZinnia:
# 738 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Right now, we have no\n"
# 739 "data/maps/PhoenixTown/scripts.pory"
	.string "choice.\p"
# 740 "data/maps/PhoenixTown/scripts.pory"
	.string "{PLAYER} is the only one who she\n"
# 741 "data/maps/PhoenixTown/scripts.pory"
	.string "will teach, so they should stay\l"
# 742 "data/maps/PhoenixTown/scripts.pory"
	.string "here and see what they can learn.\p"
# 743 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA, ZINNIA, we will go back to\n"
# 744 "data/maps/PhoenixTown/scripts.pory"
	.string "PETALBURG.\p"
# 745 "data/maps/PhoenixTown/scripts.pory"
	.string "We must do whatever we can to\n"
# 746 "data/maps/PhoenixTown/scripts.pory"
	.string "protect the city and its people\l"
# 747 "data/maps/PhoenixTown/scripts.pory"
	.string "until {PLAYER} returns.$"
# 748 "data/maps/PhoenixTown/scripts.pory"

# 749 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaNoChoiceZenno:
# 750 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: Right now, we have no\n"
# 751 "data/maps/PhoenixTown/scripts.pory"
	.string "choice.\p"
# 752 "data/maps/PhoenixTown/scripts.pory"
	.string "{PLAYER} is the only one who she\n"
# 753 "data/maps/PhoenixTown/scripts.pory"
	.string "will teach, so they should stay\l"
# 754 "data/maps/PhoenixTown/scripts.pory"
	.string "here and see what they can learn.\p"
# 755 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA, ZENNO, we will go back to\n"
# 756 "data/maps/PhoenixTown/scripts.pory"
	.string "PETALBURG.\p"
# 757 "data/maps/PhoenixTown/scripts.pory"
	.string "We must do whatever we can to\n"
# 758 "data/maps/PhoenixTown/scripts.pory"
	.string "protect the city and its people\l"
# 759 "data/maps/PhoenixTown/scripts.pory"
	.string "until {PLAYER} returns.$"
# 760 "data/maps/PhoenixTown/scripts.pory"

# 761 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaIUnderstand:
# 762 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: I understand.$"
# 763 "data/maps/PhoenixTown/scripts.pory"

# 764 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoIUnderstand:
# 765 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: I understand.$"
# 766 "data/maps/PhoenixTown/scripts.pory"

# 767 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZinniaGoodLuck:
# 768 "data/maps/PhoenixTown/scripts.pory"
	.string "ZINNIA: Good luck, {PLAYER}.\p"
# 769 "data/maps/PhoenixTown/scripts.pory"
	.string "I'll see you soon in PETALBURG,\n"
# 770 "data/maps/PhoenixTown/scripts.pory"
	.string "hopefully.$"
# 771 "data/maps/PhoenixTown/scripts.pory"

# 772 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_ZennoGoodLuck:
# 773 "data/maps/PhoenixTown/scripts.pory"
	.string "ZENNO: Good luck, {PLAYER}.\p"
# 774 "data/maps/PhoenixTown/scripts.pory"
	.string "I'll see you soon in PETALBURG,\n"
# 775 "data/maps/PhoenixTown/scripts.pory"
	.string "hopefully.$"
# 776 "data/maps/PhoenixTown/scripts.pory"

# 777 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LukaTrustYou:
# 778 "data/maps/PhoenixTown/scripts.pory"
	.string "LUKA: I trust you, {PLAYER}.\p"
# 779 "data/maps/PhoenixTown/scripts.pory"
	.string "Once you get back, make sure you\n"
# 780 "data/maps/PhoenixTown/scripts.pory"
	.string "tell me everything!$"
# 781 "data/maps/PhoenixTown/scripts.pory"

# 782 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_CalendulaBeSafe:
# 783 "data/maps/PhoenixTown/scripts.pory"
	.string "CALENDULA: I know you won't let\n"
# 784 "data/maps/PhoenixTown/scripts.pory"
	.string "us down, {PLAYER}.\p"
# 785 "data/maps/PhoenixTown/scripts.pory"
	.string "Be safe, and return as soon as\n"
# 786 "data/maps/PhoenixTown/scripts.pory"
	.string "you can.$"
# 787 "data/maps/PhoenixTown/scripts.pory"

# 788 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Hiker::
# 789 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Hiker, MSGBOX_NPC
# 790 "data/maps/PhoenixTown/scripts.pory"
	end
# 791 "data/maps/PhoenixTown/scripts.pory"

# 792 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Woman::
# 793 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Woman, MSGBOX_NPC
# 794 "data/maps/PhoenixTown/scripts.pory"
	end
# 795 "data/maps/PhoenixTown/scripts.pory"

# 796 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Youngster::
# 797 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Youngster, MSGBOX_NPC
# 798 "data/maps/PhoenixTown/scripts.pory"
	end
# 799 "data/maps/PhoenixTown/scripts.pory"

# 800 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Man::
# 801 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Man, MSGBOX_NPC
# 802 "data/maps/PhoenixTown/scripts.pory"
	end
# 803 "data/maps/PhoenixTown/scripts.pory"

# 804 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_LittleGirl::
# 805 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_LittleGirl, MSGBOX_NPC
# 806 "data/maps/PhoenixTown/scripts.pory"
	end
# 807 "data/maps/PhoenixTown/scripts.pory"

# 808 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_EventScript_Gentleman::
# 809 "data/maps/PhoenixTown/scripts.pory"
	msgbox PhoenixTown_Text_Gentleman, MSGBOX_NPC
# 810 "data/maps/PhoenixTown/scripts.pory"
	end
# 811 "data/maps/PhoenixTown/scripts.pory"

# 812 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Hiker:
# 813 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX TOWN rose when the\n"
# 814 "data/maps/PhoenixTown/scripts.pory"
	.string "canyon split in a great quake.\p"
# 815 "data/maps/PhoenixTown/scripts.pory"
	.string "The first settlers followed\n"
# 816 "data/maps/PhoenixTown/scripts.pory"
	.string "the new springs to safety.$"
# 817 "data/maps/PhoenixTown/scripts.pory"

# 818 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Woman:
# 819 "data/maps/PhoenixTown/scripts.pory"
	.string "At night, the earth hums\n"
# 820 "data/maps/PhoenixTown/scripts.pory"
	.string "beneath these streets.\p"
# 821 "data/maps/PhoenixTown/scripts.pory"
	.string "We say the canyon is\n"
# 822 "data/maps/PhoenixTown/scripts.pory"
	.string "dreaming.$"
# 823 "data/maps/PhoenixTown/scripts.pory"

# 824 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Youngster:
# 825 "data/maps/PhoenixTown/scripts.pory"
	.string "It is quiet here, far from\n"
# 826 "data/maps/PhoenixTown/scripts.pory"
	.string "every busy road.\p"
# 827 "data/maps/PhoenixTown/scripts.pory"
	.string "That is why I love this\n"
# 828 "data/maps/PhoenixTown/scripts.pory"
	.string "isolated desert town.$"
# 829 "data/maps/PhoenixTown/scripts.pory"

# 830 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Man:
# 831 "data/maps/PhoenixTown/scripts.pory"
	.string "A tremor can reveal a path\n"
# 832 "data/maps/PhoenixTown/scripts.pory"
	.string "the desert hid for years.\p"
# 833 "data/maps/PhoenixTown/scripts.pory"
	.string "Never cross the canyon\n"
# 834 "data/maps/PhoenixTown/scripts.pory"
	.string "without water.$"
# 835 "data/maps/PhoenixTown/scripts.pory"

# 836 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_LittleGirl:
# 837 "data/maps/PhoenixTown/scripts.pory"
	.string "At sunset, the canyon walls\n"
# 838 "data/maps/PhoenixTown/scripts.pory"
	.string "glow like a sleeping\n"
# 839 "data/maps/PhoenixTown/scripts.pory"
	.string "PHOENIX.$"
# 840 "data/maps/PhoenixTown/scripts.pory"

# 841 "data/maps/PhoenixTown/scripts.pory"
PhoenixTown_Text_Gentleman:
# 842 "data/maps/PhoenixTown/scripts.pory"
	.string "No city lights reach us here.\p"
# 843 "data/maps/PhoenixTown/scripts.pory"
	.string "The stars make the desert\n"
# 844 "data/maps/PhoenixTown/scripts.pory"
	.string "feel less lonely.$"
