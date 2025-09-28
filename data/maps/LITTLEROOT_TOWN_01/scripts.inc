LITTLEROOT_TOWN_01_MapScripts::
	.byte 0

LittlerootTown_01_EventScript_JirachiCelebi::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_Hello, MSGBOX_DEFAULT
	release
	end

LittlerootTown_01_Text_Hello:
	.string "Ola! Bem-vindo!$"




