OldaleTown_House2_MapScripts::
	.byte 0

OldaleTown_House2_EventScript_Woman::
	msgbox OldaleTown_House2_Text_PokemonLevelUp, MSGBOX_NPC
	end

OldaleTown_House2_EventScript_Man::
	msgbox OldaleTown_House2_Text_YoullGoFurtherWithStrongPokemon, MSGBOX_NPC
	end

OldaleTown_House2_Text_PokemonLevelUp:
    .string "Things have been really strange lately.\n"
    .string "I was walking around and saw a cave to\n"
    .string "the east.\p"
    .string "I must be going crazy, but I swear I\n"
    .string "don't remember that cave being there.\p"
    .string "And I've lived here since I was a kid!$"

OldaleTown_House2_Text_YoullGoFurtherWithStrongPokemon:
    .string "My wife keeps talking about some new\n"
    .string "cave that suddenly appeared.\p"
    .string "But honestly, I swear it's always been\n"
    .string "there. She's just imagining things.\p"
    .string "Don't mind her too much...$"
	
