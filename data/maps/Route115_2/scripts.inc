Route115_2_MapScripts::
	.byte 0

Route115_EventScript_Sinister_Woman::
	lock
	faceplayer
	msgbox Route115_Text_Sinister_Woman, MSGBOX_NPC
	release
	end

Route115_Text_Sinister_Woman:
	.string "I come here when I want to relax...\n"
	.string "There's something calm here...\p"
	.string "Lonely Cave, right?\n"
	.string "I can relate to this name...$"
	

