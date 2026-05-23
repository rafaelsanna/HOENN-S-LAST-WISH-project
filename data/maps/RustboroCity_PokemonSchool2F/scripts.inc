RustboroCity_PokemonSchool2F_MapScripts::
	.byte 0

RustboroCity_PokemonSchool2F_EventScript_Boy1::
	msgbox RustboroCity_PokemonSchool2F_Text_Boy1, MSGBOX_NPC
	end

RustboroCity_PokemonSchool2F_EventScript_Girl::
	msgbox RustboroCity_PokemonSchool2F_Text_Girl, MSGBOX_NPC
	end

RustboroCity_PokemonSchool2F_EventScript_LittleBoy::
	msgbox RustboroCity_PokemonSchool2F_Text_LittleBoy, MSGBOX_NPC
	end

RustboroCity_PokemonSchool2F_EventScript_LittleGirl::
	msgbox RustboroCity_PokemonSchool2F_Text_LittleGirl, MSGBOX_NPC
	end

RustboroCity_PokemonSchool2F_EventScript_Boy2::
	msgbox RustboroCity_PokemonSchool2F_Text_Boy2, MSGBOX_NPC
	end

RustboroCity_PokemonSchool2F_EventScript_NinjaBoy::
	msgbox RustboroCity_PokemonSchool2F_Text_NinjaBoy, MSGBOX_NPC
	end

RustboroCity_PokemonSchool2F_EventScript_QoL1::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder1, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL2::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder2, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL3::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder3, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL4::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder4, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL5::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder5, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL6::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder6, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL7::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder7, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL8::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder8, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL9::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder9, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL10::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder10, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL11::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder11, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_QoL12::
	msgbox RustboroCity_PokemonSchool2F_Text_QoLPlaceholder12, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_EventScript_GummyWurmples::
	goto_if_set FLAG_HIDDEN_ITEM_RUSTBORO_CITY_POKEMON_SCHOOL_2F_GUMMY_WURMPLES, RustboroCity_PokemonSchool2F_EventScript_GummyWurmplesTaken
	msgbox RustboroCity_PokemonSchool2F_Text_GummyWurmples, MSGBOX_SIGN
	giveitem ITEM_GUMMY_WURMPLES
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	setflag FLAG_HIDDEN_ITEM_RUSTBORO_CITY_POKEMON_SCHOOL_2F_GUMMY_WURMPLES
	end

RustboroCity_PokemonSchool2F_EventScript_GummyWurmplesTaken::
	msgbox RustboroCity_PokemonSchool2F_Text_GummyWurmplesTaken, MSGBOX_SIGN
	end

RustboroCity_PokemonSchool2F_Text_Boy1:
	.string "These chairs are so soft!\p"
	.string "When I sit down, I sink right in\n"
	.string "and never want to get back up.$"

RustboroCity_PokemonSchool2F_Text_Girl:
	.string "I like studying in the library.\p"
	.string "It's quiet enough that I can hear\n"
	.string "my own ideas forming.$"

RustboroCity_PokemonSchool2F_Text_LittleBoy:
	.string "I'm looking for a book with lots\n"
	.string "of pictures of POKéMON moves.$"

RustboroCity_PokemonSchool2F_Text_LittleGirl:
	.string "The library books are sorted by\n"
	.string "topic, but I still get lost.\p"
	.string "There are so many shelves!$"

RustboroCity_PokemonSchool2F_Text_Boy2:
	.string "There are lots of helpful books\n"
	.string "in this library.\p"
	.string "They'll make your adventure much\n"
	.string "easier if you read them!$"

RustboroCity_PokemonSchool2F_Text_NinjaBoy:
	.string "A true library master can pull\n"
	.string "the exact book they need without\l"
	.string "making a sound.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder1:
	.string "You can change various difficulty\n"
	.string "settings in the OPTION menu.\p"
	.string "Open the OPTION menu and press R to\n"
	.string "swap to the DIFFICULTY menu.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder2:
	.string "You can use the INFINITE CANDY\n"
	.string "to level any POKéMON up to your\l"
	.string "current LEVEL CAP.\p"
	.string "You can't use the INFINITE\n"
	.string "CANDY unless you have LEVEL CAPS\l"
	.string "enabled.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder3:
	.string "The WISH MENU may be turned on\n"
	.string "from the DIFFICULTY menu.\p"
	.string "It contains dev tools that\n"
	.string "would normally not be available\l"
	.string "to players.\p"
	.string "Proceed with caution. Reckless\n"
	.string "use may result in a broken save.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder4:
	.string "The game features an AUTO FISH\n"
	.string "feature that may be turned on\l"
	.string "in the DIFFICULTY menu.\p"
	.string "Simply equip a fishing rod,\n"
	.string "cast into the water, and wait.\p"
	.string "AUTO FISH will pull the POKéMON\n"
	.string "in for you if you get a bite!$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder5:
	.string "Most HM moves can be used as\n"
	.string "long as you have a POKéMON in\l"
	.string "your party that can use the move\l"
	.string "even if you don't teach it.\p"
	.string "You will still need to fulfill\n"
	.string "the gym badge requirements to\l"
	.string "use the field move.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder6:
	.string "EVs are disabled in this game.\p"
	.string "You can check a POKéMON's IVs\n"
	.string "by pressing SELECT on a POKéMON's\l"
	.string "SKILLS SUMMARY page.\p"
	.string "IVs can be permanently raised\n"
	.string "using items that previously\l"
	.string "raised EVs, such as PROTEIN,\l"
	.string "CARBOS, IRON, etc.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder7:
	.string "You can register up to three\n"
	.string "items from your bag to hotkeys\l"
	.string "for easy use.\p"
	.string "In the bag, press L or R with\n"
	.string "the cursor over the item to\l"
	.string "register it.\p"
	.string "You can still register an item\n"
	.string "to the SELECT button normally\l"
	.string "as well.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder8:
	.string "There are various shortcuts\n"
	.string "to quickly access the menus.\p"
	.string "Open BAG: A + START\p"
	.string "Open OPTIONS menu: R + START\p"
	.string "Open PARTY menu: L + START$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder9:
	.string "The TIME GEAR can be used to\n"
	.string "progress time.\p"
	.string "This can be used to easily find\n"
	.string "POKéMON that only appear at\l"
	.string "certain times of day.$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder10:
	.string "placeholder$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder11:
	.string "placeholder$"

RustboroCity_PokemonSchool2F_Text_QoLPlaceholder12:
	.string "There is an extensive\n"
	.string "documentation sheet for this\l"
	.string "game. You can find the link to\l"
	.string "it on our official website or\l"
	.string "Hackdex page.$"

RustboroCity_PokemonSchool2F_Text_GummyWurmples:
	.string "A package of gummy wurmples is\n"
	.string "shoved in between the cushions!$"

RustboroCity_PokemonSchool2F_Text_GummyWurmplesTaken:
	.string "There is nothing else between\n"
	.string "the cushions.$"
