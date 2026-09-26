# 1 "data/maps/bedrockmininginterior/scripts.pory"

# 2 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_MapScripts::
# 3 "data/maps/bedrockmininginterior/scripts.pory"
	.byte 0
# 4 "data/maps/bedrockmininginterior/scripts.pory"

# 5 "data/maps/bedrockmininginterior/scripts.pory"
@ NPC1: scientist at (6, 5)
# 6 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_NPC1::
# 7 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_NPC1, MSGBOX_NPC
# 8 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 9 "data/maps/bedrockmininginterior/scripts.pory"

# 10 "data/maps/bedrockmininginterior/scripts.pory"
@ NPC2: scientist at (1, 6)
# 11 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_NPC2::
# 12 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_NPC2, MSGBOX_NPC
# 13 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 14 "data/maps/bedrockmininginterior/scripts.pory"

# 15 "data/maps/bedrockmininginterior/scripts.pory"
@ NPC3: scientist at (1, 9)
# 16 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_NPC3::
# 17 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_NPC3, MSGBOX_NPC
# 18 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 19 "data/maps/bedrockmininginterior/scripts.pory"

# 20 "data/maps/bedrockmininginterior/scripts.pory"
@ NPC4: ruin maniac at (3, 3)
# 21 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_NPC4::
# 22 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_NPC4, MSGBOX_NPC
# 23 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 24 "data/maps/bedrockmininginterior/scripts.pory"

# 25 "data/maps/bedrockmininginterior/scripts.pory"
@ Sign1 at (6, 7)
# 26 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_Sign1::
# 27 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_Sign1, MSGBOX_SIGN
# 28 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 29 "data/maps/bedrockmininginterior/scripts.pory"

# 30 "data/maps/bedrockmininginterior/scripts.pory"
@ Sign2 at (6, 10)
# 31 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_Sign2::
# 32 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_Sign2, MSGBOX_SIGN
# 33 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 34 "data/maps/bedrockmininginterior/scripts.pory"

# 35 "data/maps/bedrockmininginterior/scripts.pory"
@ Sign3 at (1, 7)
# 36 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_Sign3::
# 37 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_Sign3, MSGBOX_SIGN
# 38 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 39 "data/maps/bedrockmininginterior/scripts.pory"

# 40 "data/maps/bedrockmininginterior/scripts.pory"
@ Sign4 at (2, 1)
# 41 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_EventScript_Sign4::
# 42 "data/maps/bedrockmininginterior/scripts.pory"
	msgbox bedrockmininginterior_Text_Sign4, MSGBOX_SIGN
# 43 "data/maps/bedrockmininginterior/scripts.pory"
	end
# 44 "data/maps/bedrockmininginterior/scripts.pory"

# 45 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_NPC1:
# 46 "data/maps/bedrockmininginterior/scripts.pory"
	.string "I manage the sale of our ore to\n"
# 47 "data/maps/bedrockmininginterior/scripts.pory"
	.string "other companies.\p"
# 48 "data/maps/bedrockmininginterior/scripts.pory"
	.string "We usually supply a variety of\n"
# 49 "data/maps/bedrockmininginterior/scripts.pory"
	.string "clients, but lately the higher-\l"
# 50 "data/maps/bedrockmininginterior/scripts.pory"
	.string "ups have told us to reroute all\l"
# 51 "data/maps/bedrockmininginterior/scripts.pory"
	.string "product to DEVON.$"
# 52 "data/maps/bedrockmininginterior/scripts.pory"

# 53 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_NPC2:
# 54 "data/maps/bedrockmininginterior/scripts.pory"
	.string "We have been instructed to create\n"
# 55 "data/maps/bedrockmininginterior/scripts.pory"
	.string "blueprints for a new machine.\p"
# 56 "data/maps/bedrockmininginterior/scripts.pory"
	.string "It is supposed to be able to map\n"
# 57 "data/maps/bedrockmininginterior/scripts.pory"
	.string "mineral veins within volcanic rock.$"
# 58 "data/maps/bedrockmininginterior/scripts.pory"

# 59 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_NPC3:
# 60 "data/maps/bedrockmininginterior/scripts.pory"
	.string "Sometimes, bossy people in red\n"
# 61 "data/maps/bedrockmininginterior/scripts.pory"
	.string "jumpsuits come in and insist on\l"
# 62 "data/maps/bedrockmininginterior/scripts.pory"
	.string "looking through all our work.\p"
# 63 "data/maps/bedrockmininginterior/scripts.pory"
	.string "The boss tells us to comply and\n"
# 64 "data/maps/bedrockmininginterior/scripts.pory"
	.string "not ask questions...\p"
# 65 "data/maps/bedrockmininginterior/scripts.pory"
	.string "Is this really okay?$"
# 66 "data/maps/bedrockmininginterior/scripts.pory"

# 67 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_NPC4:
# 68 "data/maps/bedrockmininginterior/scripts.pory"
	.string "Hello! I am the president of the\n"
# 69 "data/maps/bedrockmininginterior/scripts.pory"
	.string "BEDROCK MINING COMPANY.\p"
# 70 "data/maps/bedrockmininginterior/scripts.pory"
	.string "Please forgive the mess. We move\n"
# 71 "data/maps/bedrockmininginterior/scripts.pory"
	.string "to a new location whenever we\l"
# 72 "data/maps/bedrockmininginterior/scripts.pory"
	.string "find something worth mining.\p"
# 73 "data/maps/bedrockmininginterior/scripts.pory"
	.string "Setting up a new HQ every time\n"
# 74 "data/maps/bedrockmininginterior/scripts.pory"
	.string "doesn't allow for the nicest\l"
# 75 "data/maps/bedrockmininginterior/scripts.pory"
	.string "of amenities.$"
# 76 "data/maps/bedrockmininginterior/scripts.pory"

# 77 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_Sign1:
# 78 "data/maps/bedrockmininginterior/scripts.pory"
	.string "It's the company's financial\n"
# 79 "data/maps/bedrockmininginterior/scripts.pory"
	.string "records. Sales to DEVON have\l"
# 80 "data/maps/bedrockmininginterior/scripts.pory"
	.string "increased substantially.\p"
# 81 "data/maps/bedrockmininginterior/scripts.pory"
	.string "DEVON now accounts for nearly\n"
# 82 "data/maps/bedrockmininginterior/scripts.pory"
	.string "all of their income.$"
# 83 "data/maps/bedrockmininginterior/scripts.pory"

# 84 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_Sign2:
# 85 "data/maps/bedrockmininginterior/scripts.pory"
	.string "The boss's email is left open.\n"
# 86 "data/maps/bedrockmininginterior/scripts.pory"
	.string "A little peek couldn't hurt.\p"
# 87 "data/maps/bedrockmininginterior/scripts.pory"
	.string "...\p"
# 88 "data/maps/bedrockmininginterior/scripts.pory"
	.string "An anonymous sender is offering\n"
# 89 "data/maps/bedrockmininginterior/scripts.pory"
	.string "mining rights to all of HOENN in\l"
# 90 "data/maps/bedrockmininginterior/scripts.pory"
	.string "exchange for his cooperation.\p"
# 91 "data/maps/bedrockmininginterior/scripts.pory"
	.string "Who could possibly have that much\n"
# 92 "data/maps/bedrockmininginterior/scripts.pory"
	.string "authority?$"
# 93 "data/maps/bedrockmininginterior/scripts.pory"

# 94 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_Sign3:
# 95 "data/maps/bedrockmininginterior/scripts.pory"
	.string "There's a document sticking out\n"
# 96 "data/maps/bedrockmininginterior/scripts.pory"
	.string "of the drawer.\p"
# 97 "data/maps/bedrockmininginterior/scripts.pory"
	.string "A substantial number of payments\n"
# 98 "data/maps/bedrockmininginterior/scripts.pory"
	.string "have been made to someone called\l"
# 99 "data/maps/bedrockmininginterior/scripts.pory"
	.string "MAGNUS.$"
# 100 "data/maps/bedrockmininginterior/scripts.pory"

# 101 "data/maps/bedrockmininginterior/scripts.pory"
bedrockmininginterior_Text_Sign4:
# 102 "data/maps/bedrockmininginterior/scripts.pory"
	.string "It's a cabinet containing a\n"
# 103 "data/maps/bedrockmininginterior/scripts.pory"
	.string "number of labelled drawers.\p"
# 104 "data/maps/bedrockmininginterior/scripts.pory"
	.string "One seems to be dedicated to DEVON.$"
