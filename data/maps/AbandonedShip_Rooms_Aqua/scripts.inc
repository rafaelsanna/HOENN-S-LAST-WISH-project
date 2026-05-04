AbandonedShip_Rooms_Aqua_MapScripts::
	.byte 0

AbandonedShip_Rooms_Aqua_EventScript_Keys::
	lockall
	checkflag FLAG_AQUA_SHIP_KEYS
	goto_if TRUE, AbandonedShip_Rooms_Aqua_Keys_AlreadyGot
	setflag FLAG_AQUA_SHIP_KEYS
	msgbox AbandonedShip_Rooms_Aqua_Text_FoundKeys, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	releaseall
	end

AbandonedShip_Rooms_Aqua_Keys_AlreadyGot::
	releaseall
	end

AbandonedShip_Rooms_Aqua_Text_FoundKeys::
	.string "You found old keys!$"
	