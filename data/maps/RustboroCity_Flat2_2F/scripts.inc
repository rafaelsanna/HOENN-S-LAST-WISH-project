RustboroCity_Flat2_2F_MapScripts::
	.byte 0

RustboroCity_Flat2_2F_EventScript_OldMan::
	msgbox RustboroCity_Flat2_2F_Text_DevonWasTinyInOldDays, MSGBOX_NPC
	end

RustboroCity_Flat2_2F_EventScript_NinjaBoy::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_PREMIER_BALL_RUSTBORO, RustboroCity_Flat2_2F_EventScript_GavePremierBall
	msgbox RustboroCity_Flat2_2F_Text_MyDaddyMadeThisYouCanHaveIt, MSGBOX_DEFAULT
	giveitem ITEM_EJECT_BUTTON
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	setflag FLAG_RECEIVED_PREMIER_BALL_RUSTBORO
	release
	end

RustboroCity_Flat2_2F_EventScript_GavePremierBall::
	msgbox RustboroCity_Flat2_2F_Text_GoingToWorkAtDevonToo, MSGBOX_DEFAULT
	release
	end

RustboroCity_Flat2_2F_Text_DevonWasTinyInOldDays:
	.string "I gave my whole life to DEVON… Now my\n"
	.string "son works there too. Time just… flies.\l"
	.string "That's why I spoil my grandson rotten,\n"
	.string "so he won't grow up lonely like his dad.$"

RustboroCity_Flat2_2F_Text_MyDaddyMadeThisYouCanHaveIt:
	.string "WOW! Your cape is SO COOL!\p"
	.string "My dad said a young hero in a strange\n"
	.string "outfit saved him from TEAM AQUA!\p"
	.string "He makes awesome inventions at DEVON!\n"
	.string "Here, take this Eject Button!$"

RustboroCity_Flat2_2F_Text_GoingToWorkAtDevonToo:
	.string "I LOVE playing with this Eject Button!\n"
	.string "When I press it, I jump SO HIGH!\p"
	.string "Wheeee! Watch me go!\n"
	.string "BOING! BOING! BOING!$"

