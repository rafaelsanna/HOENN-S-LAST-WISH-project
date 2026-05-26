# 1 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 2 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_MapScripts::
# 3 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 5 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_EventScript_OldMan::
# 6 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	msgbox RustboroCity_Flat2_2F_Text_DevonWasTinyInOldDays, MSGBOX_NPC
# 7 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	end
# 8 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 9 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_EventScript_NinjaBoy::
# 10 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	lock
# 11 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	faceplayer
# 12 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	goto_if_set FLAG_RECEIVED_PREMIER_BALL_RUSTBORO, RustboroCity_Flat2_2F_EventScript_GavePremierBall
# 13 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	msgbox RustboroCity_Flat2_2F_Text_MyDaddyMadeThisYouCanHaveIt, MSGBOX_DEFAULT
# 14 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	giveitem ITEM_EJECT_BUTTON
# 15 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 16 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	setflag FLAG_RECEIVED_PREMIER_BALL_RUSTBORO
# 17 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	release
# 18 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	end
# 19 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 20 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_EventScript_GavePremierBall::
# 21 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	msgbox RustboroCity_Flat2_2F_Text_GoingToWorkAtDevonToo, MSGBOX_DEFAULT
# 22 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	release
# 23 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	end
# 24 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 25 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_Text_DevonWasTinyInOldDays:
# 26 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "I gave my whole life to DEVON… Now my\n"
# 27 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "son works there too. Time just flies.\l"
# 28 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "That's why I spoil my grandson rotten,\l"
# 29 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "so he won't grow up lonely like his dad.$"
# 30 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 31 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_Text_MyDaddyMadeThisYouCanHaveIt:
# 32 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "WOW! Your cape is SO COOL!\p"
# 33 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "My dad said a young hero in a strange\n"
# 34 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "outfit saved him from TEAM AQUA!\p"
# 35 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "He makes awesome inventions at DEVON!\n"
# 36 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "Here, take this Eject Button!$"
# 37 "data/maps/RustboroCity_Flat2_2F/scripts.pory"

# 38 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
RustboroCity_Flat2_2F_Text_GoingToWorkAtDevonToo:
# 39 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "I LOVE playing with this Eject Button!\n"
# 40 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "When I press it, I jump SO HIGH!\p"
# 41 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "Wheeee! Watch me go!\n"
# 42 "data/maps/RustboroCity_Flat2_2F/scripts.pory"
	.string "BOING! BOING! BOING!$"
