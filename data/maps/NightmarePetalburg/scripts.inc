NightmarePetalburg_MapScripts::
	.byte 0

doorwontbudge::
	msgbox NightmarePetalburg_Text_DoorWontBudge, MSGBOX_SIGN
	end

whoswally::
	msgbox NightmarePetalburg_Text_WhosWally, MSGBOX_SIGN
	end

petalburgcity::
	msgbox NightmarePetalburg_Text_PetalburgCity, MSGBOX_SIGN
	end

norman::
	msgbox NightmarePetalburg_Text_Norman, MSGBOX_SIGN
	end

NightmarePetalburg_EventScript_CorviknightExit::
	lock
	faceplayer
	msgbox NightmarePetalburg_Text_CorviknightPlaceholder, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_PETALBURG_QUAKE_STORM_CLEARED
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
	setvar VAR_PETALBURG_GYM_STATE, 6
	call Common_EventScript_ReadyPetalburgGymForBattle
	playse SE_WARP_OUT
	fadescreenspeed FADE_TO_WHITE, 4
	delay 20
	warp MAP_PETALBURG_CITY, 20, 10
	waitstate
	release
	end

NightmarePetalburg_Text_CorviknightPlaceholder:
	.string "placeholder$"

NightmarePetalburg_Text_DoorWontBudge:
	.string "The door is shut tight. It won't\n"
	.string "even budge.$"

NightmarePetalburg_Text_WhosWally:
	.string "WALLY's house.\p"
	.string "...\p"
	.string "Who is WALLY?$"

NightmarePetalburg_Text_PetalburgCity:
	.string "PETALBURG CITY\n"
	.string "Where people mingle with nature.$"

NightmarePetalburg_Text_Norman:
	.string "PETALBURG GYM - LEADER: NORMAN\p"
	.string "NORMAN???$"
