RogueCanyon_MapScripts::
	.byte 0

RogueCanyon_EventScript_Lillo::
	trainerbattle_single TRAINER_LILLO, RogueCanyon_Text_LilloIntro, RogueCanyon_Text_LilloDefeat
	msgbox RogueCanyon_Text_LilloPostBattle, MSGBOX_AUTOCLOSE
	end

RogueCanyon_EventScript_Pedro::
	trainerbattle_single TRAINER_PEDRO, RogueCanyon_Text_PedroIntro, RogueCanyon_Text_PedroDefeat
	msgbox RogueCanyon_Text_PedroPostBattle, MSGBOX_AUTOCLOSE
	end

RogueCanyon_EventScript_Agatha::
	trainerbattle_single TRAINER_AGATHA, RogueCanyon_Text_AgathaIntro, RogueCanyon_Text_AgathaDefeat
	msgbox RogueCanyon_Text_AgathaPostBattle, MSGBOX_AUTOCLOSE
	end



	
