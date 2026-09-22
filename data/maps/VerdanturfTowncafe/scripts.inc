# 1 "data/maps/VerdanturfTowncafe/scripts.pory"

# 2 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_MapScripts::
# 3 "data/maps/VerdanturfTowncafe/scripts.pory"
	.byte 0
# 4 "data/maps/VerdanturfTowncafe/scripts.pory"

# 5 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Cashier::
# 6 "data/maps/VerdanturfTowncafe/scripts.pory"
	lock
# 7 "data/maps/VerdanturfTowncafe/scripts.pory"
	faceplayer
# 8 "data/maps/VerdanturfTowncafe/scripts.pory"
	message VerdanturfTowncafe_Text_Cashier
# 9 "data/maps/VerdanturfTowncafe/scripts.pory"
	waitmessage
# 10 "data/maps/VerdanturfTowncafe/scripts.pory"
	pokemart VerdanturfTowncafe_Pokemart_Coffee
# 11 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_CashierFarewell, MSGBOX_DEFAULT
# 12 "data/maps/VerdanturfTowncafe/scripts.pory"
	release
# 13 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 14 "data/maps/VerdanturfTowncafe/scripts.pory"

# 15 "data/maps/VerdanturfTowncafe/scripts.pory"
	.align 2
# 16 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Pokemart_Coffee:
# 17 "data/maps/VerdanturfTowncafe/scripts.pory"
	.2byte ITEM_HOT_COFFEE
# 18 "data/maps/VerdanturfTowncafe/scripts.pory"
	.2byte ITEM_ICED_COFFEE
# 19 "data/maps/VerdanturfTowncafe/scripts.pory"
	pokemartlistend
# 20 "data/maps/VerdanturfTowncafe/scripts.pory"

# 21 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Barista::
# 22 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Barista, MSGBOX_NPC
# 23 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 24 "data/maps/VerdanturfTowncafe/scripts.pory"

# 25 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Boy::
# 26 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Boy, MSGBOX_NPC
# 27 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 28 "data/maps/VerdanturfTowncafe/scripts.pory"

# 29 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Lass::
# 30 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Lass, MSGBOX_NPC
# 31 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 32 "data/maps/VerdanturfTowncafe/scripts.pory"

# 33 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Daughter::
# 34 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Daughter, MSGBOX_NPC
# 35 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 36 "data/maps/VerdanturfTowncafe/scripts.pory"

# 37 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Mother::
# 38 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Mother, MSGBOX_NPC
# 39 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 40 "data/maps/VerdanturfTowncafe/scripts.pory"

# 41 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_EventScript_Father::
# 42 "data/maps/VerdanturfTowncafe/scripts.pory"
	msgbox VerdanturfTowncafe_Text_Father, MSGBOX_NPC
# 43 "data/maps/VerdanturfTowncafe/scripts.pory"
	end
# 44 "data/maps/VerdanturfTowncafe/scripts.pory"

# 45 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Cashier:
# 46 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Welcome to the VERDANTURF CAFE!\p"
# 47 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "HOT COFFEE or ICED COFFEE?\n"
# 48 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "What can I get for you?$"
# 49 "data/maps/VerdanturfTowncafe/scripts.pory"

# 50 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_CashierFarewell:
# 51 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Thanks! Come back whenever you\n"
# 52 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "need a little pick-me-up.$"
# 53 "data/maps/VerdanturfTowncafe/scripts.pory"

# 54 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Barista:
# 55 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "One HOT COFFEE coming up!\p"
# 56 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "The whole cafe smells wonderful\n"
# 57 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "when the beans are brewing.$"
# 58 "data/maps/VerdanturfTowncafe/scripts.pory"

# 59 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Boy:
# 60 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I asked her here for coffee...\p"
# 61 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Now I've forgotten everything\n"
# 62 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I was going to say.$"
# 63 "data/maps/VerdanturfTowncafe/scripts.pory"

# 64 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Lass:
# 65 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "He keeps stirring his coffee,\n"
# 66 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "even though he finished it.\p"
# 67 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "It's kind of cute.$"
# 68 "data/maps/VerdanturfTowncafe/scripts.pory"

# 69 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Daughter:
# 70 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "Mom and Dad won't let me have\n"
# 71 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "coffee!\p"
# 72 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "They say I'd bounce off walls.\n"
# 73 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "I can already do that!$"
# 74 "data/maps/VerdanturfTowncafe/scripts.pory"

# 75 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Mother:
# 76 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We brought her out for a treat.\p"
# 77 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "She's not stopped asking for\n"
# 78 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "coffee since we arrived.$"
# 79 "data/maps/VerdanturfTowncafe/scripts.pory"

# 80 "data/maps/VerdanturfTowncafe/scripts.pory"
VerdanturfTowncafe_Text_Father:
# 81 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "She's having berry juice.\n"
# 82 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "We thought she'd like it better.\p"
# 83 "data/maps/VerdanturfTowncafe/scripts.pory"
	.string "She disagrees.$"
