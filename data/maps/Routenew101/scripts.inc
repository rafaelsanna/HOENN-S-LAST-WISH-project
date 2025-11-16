Routenew101_MapScripts::
	.byte 0

Routenew101_EventScript_Zig01::
	lock
	faceplayer
	playmoncry SPECIES_ZIGZAGOON, CRY_MODE_NORMAL
	waitmoncry
	release
	end

