FieryPath_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FieryPath_OnTransition
	.byte 0

FieryPath_OnTransition:
	call_if_unset FLAG_LANDMARK_FIERY_PATH, FieryPath_EventScript_MoveScottToFallarbor
	setflag FLAG_LANDMARK_FIERY_PATH
	end

FieryPath_EventScript_MoveScottToFallarbor::
	setflag FLAG_HIDE_VERDANTURF_TOWN_SCOTT
	clearflag FLAG_HIDE_FALLARBOR_TOWN_BATTLE_TENT_SCOTT
	return


FieryPath_EventScript_FisherGotBurned::
	lock
	faceplayer
	msgbox FieryPath_Text_FisherGotBurned, MSGBOX_AUTOCLOSE
	release
	end

FieryPath__EventScript_HikerDaxon::
	trainerbattle_single TRAINER_DAXON, FieryPath_Text_DaxonIntro, FieryPath_Text_DaxonDefeated
	msgbox FieryPath_Text_DaxonPostBattle, MSGBOX_AUTOCLOSE
	end	

FieryPath__EventScript_KinlderFleming::
	trainerbattle_single TRAINER_FLEMING, FieryPath_Text_FlemingIntro, FieryPath_Text_FlemingDefeated
	msgbox FieryPath_Text_FlemingPostBattle, MSGBOX_AUTOCLOSE
	end	

FieryPath__EventScript_PunkGirlEva::
	trainerbattle_single TRAINER_EVA, FieryPath_Text_EvaIntro, FieryPath_Text_EvaDefeated
	msgbox FieryPath_Text_EvaPostBattle, MSGBOX_AUTOCLOSE
	end	

FieryPath__EventScript_PicsGuyJaime::
	trainerbattle_single TRAINER_JAIME, FieryPath_Text_JaimeIntro, FieryPath_Text_JaimeDefeated
	msgbox FieryPath_Text_JaimePostBattle, MSGBOX_AUTOCLOSE
	end	

FieryPath__EventScript_LavaManiacLoch::
	trainerbattle_single TRAINER_LOCH, FieryPath_Text_LochIntro, FieryPath_Text_LochDefeated
	msgbox FieryPath_Text_LochPostBattle, MSGBOX_AUTOCLOSE
	end	

FieryPath__EventScript_ChanelerSatsuki::
	lock
	faceplayer
	trainerbattle_single TRAINER_SATSUKI, FieryPath_Text_SatsukiIntro, FieryPath_Text_SatsukiDefeated
	msgbox FieryPath_Text_SatsukiPostBattle, MSGBOX_AUTOCLOSE
	release
	end	

///// TEXT STRINGS /////

FieryPath_Text_FisherGotBurned:
	.string "My fishing buddies warned me:\n"
	.string "Don't go fishing in the lava...\n" 
	.string "But I heard SHARPEDO swim in these\n"
	.string "magma rivers! LAVA SHARKS!\p"
	.string "I just wanted to catch one…\n"
	.string "Just ONE! IMAGINE IT!\p"
	.string "But my rod melted in seconds.\n"
	.string "Poof. Gone. Just like that.\p"
	.string "Now I'm burned, my rod's destroyed,\n"
	.string "and I've got no story to tell…\p"
	.string "Guess I'll just sit here and\n"
	.string "watch the lava flow...$"

