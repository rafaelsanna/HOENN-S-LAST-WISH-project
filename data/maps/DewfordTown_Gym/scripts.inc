DewfordTown_Gym_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, DewfordTown_Gym_OnTransition
	.byte 0

DewfordTown_Gym_OnTransition:
	call DewfordTown_Gym_EventScript_SetFlashLevel
	end

DewfordTown_Gym_EventScript_SetFlashLevel::
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_SetLightsOn
	call DewfordTown_Gym_EventScript_CountTrainersDefeated
	copyvar VAR_0x8001, VAR_0x8000
	goto_if_eq VAR_0x8000, 0, DewfordTown_Gym_EventScript_SetFlashLevel7
	goto_if_eq VAR_0x8000, 1, DewfordTown_Gym_EventScript_SetFlashLevel6
	goto_if_eq VAR_0x8000, 2, DewfordTown_Gym_EventScript_SetFlashLevel5
	goto_if_eq VAR_0x8000, 3, DewfordTown_Gym_EventScript_SetFlashLevel4
	goto_if_eq VAR_0x8000, 4, DewfordTown_Gym_EventScript_SetFlashLevel3
	goto_if_eq VAR_0x8000, 5, DewfordTown_Gym_EventScript_SetFlashLevel2
	goto DewfordTown_Gym_EventScript_SetFlashLevel1

DewfordTown_Gym_EventScript_SetLightsOn::
	setflashlevel 0
	return

@ Brightest
DewfordTown_Gym_EventScript_SetFlashLevel1::
	setflashlevel 1
	return

DewfordTown_Gym_EventScript_SetFlashLevel2::
	setflashlevel 2
	return

DewfordTown_Gym_EventScript_SetFlashLevel3::
	setflashlevel 3
	return

DewfordTown_Gym_EventScript_SetFlashLevel4::
	setflashlevel 4
	return

DewfordTown_Gym_EventScript_SetFlashLevel5::
	setflashlevel 5
	return

DewfordTown_Gym_EventScript_SetFlashLevel6::
	setflashlevel 6
	return

@ Darkest
DewfordTown_Gym_EventScript_SetFlashLevel7::
	setflashlevel 7
	return

DewfordTown_Gym_EventScript_BrightenRoom::
	call DewfordTown_Gym_EventScript_CountTrainersDefeated
	nop1
	goto_if_eq VAR_0x8000, VAR_0x8001, DewfordTown_Gym_EventScript_NoLightChange
	copyvar VAR_0x8001, VAR_0x8000
	goto_if_eq VAR_0x8000, 1, DewfordTown_Gym_EventScript_AnimateFlash1Trainer
	goto_if_eq VAR_0x8000, 2, DewfordTown_Gym_EventScript_AnimateFlash2Trainers
	goto_if_eq VAR_0x8000, 3, DewfordTown_Gym_EventScript_AnimateFlash3Trainers
	goto_if_eq VAR_0x8000, 4, DewfordTown_Gym_EventScript_AnimateFlash4Trainers
	goto_if_eq VAR_0x8000, 5, DewfordTown_Gym_EventScript_AnimateFlash5Trainers
	goto_if_eq VAR_0x8000, 6, DewfordTown_Gym_EventScript_AnimateFlash6Trainers

DewfordTown_Gym_EventScript_NoLightChange::
	return

@ NOTE: A little confusingly, a larger animateflash param value is a smaller flash radius
DewfordTown_Gym_EventScript_AnimateFlash1Trainer::
	playse SE_SWITCH
	animateflash 6
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_AnimateFlash2Trainers::
	playse SE_SWITCH
	animateflash 5
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_AnimateFlash3Trainers::
	playse SE_SWITCH
	animateflash 4
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_AnimateFlash4Trainers::
	playse SE_SWITCH
	animateflash 3
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_AnimateFlash5Trainers::
	playse SE_SWITCH
	animateflash 2
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_AnimateFlash6Trainers::
	playse SE_SWITCH
	animateflash 1
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_AnimateFlashFullBrightness::
	playse SE_SWITCH
	animateflash 0
	call DewfordTown_Gym_EventScript_SetFlashLevel
	return

DewfordTown_Gym_EventScript_CountTrainersDefeated::
	setvar VAR_0x8000, 0
	goto_if_not_defeated TRAINER_TAKAO, DewfordTown_Gym_EventScript_CheckJocelyn
	addvar VAR_0x8000, 1
DewfordTown_Gym_EventScript_CheckJocelyn::
	goto_if_not_defeated TRAINER_JOCELYN, DewfordTown_Gym_EventScript_CheckLaura
	addvar VAR_0x8000, 1
DewfordTown_Gym_EventScript_CheckLaura::
	goto_if_not_defeated TRAINER_LAURA, DewfordTown_Gym_EventScript_CheckBrenden
	addvar VAR_0x8000, 1
DewfordTown_Gym_EventScript_CheckBrenden::
	goto_if_not_defeated TRAINER_BRENDEN, DewfordTown_Gym_EventScript_CheckCristian
	addvar VAR_0x8000, 1
DewfordTown_Gym_EventScript_CheckCristian::
	goto_if_not_defeated TRAINER_CRISTIAN, DewfordTown_Gym_EventScript_CheckLilith
	addvar VAR_0x8000, 1
DewfordTown_Gym_EventScript_CheckLilith::
	goto_if_not_defeated TRAINER_LILITH, DewfordTown_Gym_EventScript_StopCountingTrainers
	addvar VAR_0x8000, 1
DewfordTown_Gym_EventScript_StopCountingTrainers::
	return

DewfordTown_Gym_EventScript_Brawly::
    lock
    faceplayer

    @ === MANUAL DIFFICULTY CHECK ===
    copyvar VAR_0x8000, 0x5050
    compare VAR_0x8000, 1
    goto_if_eq DewfordTown_Gym_BrawlyHard

    @ Normal - TRAINER_BRAWLY_1
    trainerbattle_single TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyIntro, DewfordTown_Gym_Text_BrawlyDefeat, DewfordTown_Gym_EventScript_BrawlyDefeated, NO_MUSIC
    goto DewfordTown_Gym_AfterBattle

DewfordTown_Gym_BrawlyHard::
    @ Hard - TRAINER_BRAWLY
    trainerbattle_single TRAINER_BRAWLY, DewfordTown_Gym_Text_BrawlyIntro, DewfordTown_Gym_Text_BrawlyDefeat, DewfordTown_Gym_EventScript_BrawlyDefeated, NO_MUSIC

DewfordTown_Gym_AfterBattle::
    specialvar VAR_RESULT, ShouldTryRematchBattle
    goto_if_eq VAR_RESULT, TRUE, DewfordTown_Gym_EventScript_BrawlyRematch
    goto_if_unset FLAG_RECEIVED_TM_BULK_UP, DewfordTown_Gym_EventScript_GiveBulkUp2
    msgbox DewfordTown_Gym_Text_BrawlyPostBattle, MSGBOX_DEFAULT
    release
    end	

DewfordTown_Gym_EventScript_BrawlyDefeated::
    call DewfordTown_Gym_EventScript_AnimateFlashFullBrightness
    message DewfordTown_Gym_Text_ReceivedKnuckleBadge
    waitmessage
    call Common_EventScript_PlayGymBadgeFanfare
    msgbox DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis, MSGBOX_DEFAULT
    setflag FLAG_DEFEATED_DEWFORD_GYM
    setflag FLAG_BADGE02_GET
    addvar VAR_PETALBURG_GYM_STATE, 1
    call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
    setvar VAR_0x8008, 2
    call Common_EventScript_SetGymTrainers
    call DewfordTown_Gym_EventScript_GiveBulkUp
    closemessage
    delay 30
    playfanfare MUS_REGISTER_MATCH_CALL
    msgbox DewfordTown_Gym_Text_RegisteredBrawly, MSGBOX_DEFAULT
    waitfanfare
    closemessage
    delay 30
    setflag FLAG_ENABLE_BRAWLY_MATCH_CALL
    setvar VAR_ROXANNE_CALL_STEP_COUNTER, 0
    setflag FLAG_ENABLE_ROXANNE_FIRST_CALL
    release
    end


DewfordTown_Gym_EventScript_GiveBulkUp::
	giveitem ITEM_TM_BULK_UP
	goto_if_eq VAR_RESULT, 0, Common_EventScript_BagIsFull
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_TM_BULK_UP
	return

DewfordTown_Gym_EventScript_GiveBulkUp2:
	giveitem ITEM_TM_BULK_UP
	goto_if_eq VAR_RESULT, 0, Common_EventScript_ShowBagIsFull
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_TM_BULK_UP
	release
	end

DewfordTown_Gym_EventScript_BrawlyRematch::
	trainerbattle_rematch_double TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyPreRematch, DewfordTown_Gym_Text_BrawlyRematchDefeat, DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons
	msgbox DewfordTown_Gym_Text_BrawlyPostRematch, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_Takao::
	trainerbattle_single TRAINER_TAKAO, DewfordTown_Gym_Text_TakaoIntro, DewfordTown_Gym_Text_TakaoDefeat, DewfordTown_Gym_EventScript_TakaoBrightenRoom
	msgbox DewfordTown_Gym_Text_TakaoPostBattle, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_TakaoBrightenRoom::
	call DewfordTown_Gym_EventScript_BrightenRoom
	release
	end

DewfordTown_Gym_EventScript_Jocelyn::
	trainerbattle_single TRAINER_JOCELYN, DewfordTown_Gym_Text_JocelynIntro, DewfordTown_Gym_Text_JocelynDefeat, DewfordTown_Gym_EventScript_JocelynBrightenRoom
	msgbox DewfordTown_Gym_Text_JocelynPostBattle, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_JocelynBrightenRoom::
	call DewfordTown_Gym_EventScript_BrightenRoom
	release
	end

DewfordTown_Gym_EventScript_Laura::
	trainerbattle_single TRAINER_LAURA, DewfordTown_Gym_Text_LauraIntro, DewfordTown_Gym_Text_LauraDefeat, DewfordTown_Gym_EventScript_LauraBrightenRoom
	msgbox DewfordTown_Gym_Text_LauraPostBattle, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_LauraBrightenRoom::
	call DewfordTown_Gym_EventScript_BrightenRoom
	release
	end

DewfordTown_Gym_EventScript_Brenden::
	trainerbattle_single TRAINER_BRENDEN, DewfordTown_Gym_Text_BrendenIntro, DewfordTown_Gym_Text_BrendenDefeat, DewfordTown_Gym_EventScript_BrendenBrightenRoom
	msgbox DewfordTown_Gym_Text_BrendenPostBattle, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_BrendenBrightenRoom::
	call DewfordTown_Gym_EventScript_BrightenRoom
	release
	end

DewfordTown_Gym_EventScript_Cristian::
	trainerbattle_single TRAINER_CRISTIAN, DewfordTown_Gym_Text_CristianIntro, DewfordTown_Gym_Text_CristianDefeat, DewfordTown_Gym_EventScript_CristianBrightenRoom
	msgbox DewfordTown_Gym_Text_CristianPostBattle, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_CristianBrightenRoom::
	call DewfordTown_Gym_EventScript_BrightenRoom
	release
	end

DewfordTown_Gym_EventScript_Lilith::
	trainerbattle_single TRAINER_LILITH, DewfordTown_Gym_Text_LilithIntro, DewfordTown_Gym_Text_LilithDefeat, DewfordTown_Gym_EventScript_LilithBrightenRoom
	msgbox DewfordTown_Gym_Text_LilithPostBattle, MSGBOX_AUTOCLOSE
	end

DewfordTown_Gym_EventScript_LilithBrightenRoom::
	call DewfordTown_Gym_EventScript_BrightenRoom
	release
	end

DewfordTown_Gym_EventScript_GymGuide::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_GymGuidePostVictory

	@ === PERGUNTA DE DIFICULDADE ===
	msgbox DewfordTown_Gym_Text_AskDifficulty, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq DewfordTown_Gym_HardMode
	goto DewfordTown_Gym_NormalMode

DewfordTown_Gym_HardMode::
	setvar 0x5050, 1   @ você pode trocar o número do var se quiser outro
	msgbox DewfordTown_Gym_Text_HardSelected, MSGBOX_DEFAULT
	goto DewfordTown_Gym_EventScript_GymGuideAdvice

DewfordTown_Gym_NormalMode::
	setvar 0x5050, 0
	msgbox DewfordTown_Gym_Text_NormalSelected, MSGBOX_DEFAULT
	goto DewfordTown_Gym_EventScript_GymGuideAdvice

DewfordTown_Gym_EventScript_GymGuideAdvice::
	msgbox DewfordTown_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
	release
	end

DewfordTown_Gym_EventScript_GymGuidePostVictory::
	msgbox DewfordTown_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
	release
	end


DewfordTown_Gym_EventScript_LeftGymStatue::
	lockall
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
	goto DewfordTown_Gym_EventScript_GymStatue
	end

DewfordTown_Gym_EventScript_RightGymStatue::
	lockall
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
	goto DewfordTown_Gym_EventScript_GymStatue
	end

DewfordTown_Gym_EventScript_GymStatueCertified::
	msgbox DewfordTown_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
	releaseall
	end

DewfordTown_Gym_EventScript_GymStatue::
	msgbox DewfordTown_Gym_Text_GymStatue, MSGBOX_DEFAULT
	releaseall
	end

DewfordTown_Gym_Text_GymGuideAdvice:
	.string "Hey, how's it going, CHAMPION-\n"
	.string "bound {PLAYER}?\p"
	.string "RENTON loves tough battles and\n"
	.string "hits hard. Prepare for FIGHTING power!\p"
	.string "NORMAL-types are asking for trouble.\n"
	.string "FIGHTING moves crush them!\p"
	.string "The Gym is super dark. RENTON likes\n"
	.string "it that way.\p"
	.string "Beat TRAINERS and it gets brighter.\n"
	.string "Good luck!$"

DewfordTown_Gym_Text_GymGuidePostVictory:
	.string "Whoah! It's way brighter in here now!\p"
	.string "Your future's looking bright too,\n"
	.string "CHAMPION-to-be!$"

DewfordTown_Gym_Text_TakaoIntro:
	.string "Might is right!\n"
	.string "Come on!$"

DewfordTown_Gym_Text_TakaoDefeat:
	.string "Not enough power...$"

DewfordTown_Gym_Text_TakaoPostBattle:
	.string "Your skill overcame my strength!\n"
	.string "Your technique is commendable!$"

DewfordTown_Gym_Text_JocelynIntro:
	.string "No way I'm letting RENTON handle this!\n"
	.string "You do NOT want that!\p"
	.string "I'd rather face wild Pokemon or even\n"
	.string "the ELITE FOUR than his street brawls!\p"
	.string "He demolished the old Gym Leader,\n"
	.string "and it wasn't even a Pokemon battle!\n"
	.string "Hahaha!$"

DewfordTown_Gym_Text_JocelynDefeat:
	.string "You're tough... but be careful!\n"
	.string "Don't get cocky around RENTON,\p"
	.string "or you'll end up in real trouble!\n"
	.string "But he respects fighters like you...$"

DewfordTown_Gym_Text_JocelynPostBattle:
	.string "That battle fired me up!\n"
	.string "I'm gonna train like crazy!\p"
	.string "One day I'll be totally badass...\n"
	.string "just like RENTON!$"

DewfordTown_Gym_Text_LauraIntro:
	.string "Don't brush me off!\n"
	.string "I blast ROCK music in here!\p"
	.string "The dark? I don't care about that!\n"
	.string "I grew up hanging with RENTON!\p"
	.string "Street fights, loud nights, bad lighting...\n"
	.string "This Gym is exactly my vibe!$"

DewfordTown_Gym_Text_LauraDefeat:
	.string "Waaaah!\n"
	.string "I lost! No way...$"

DewfordTown_Gym_Text_LauraPostBattle:
	.string "Huh? Me and RENTON?\n"
	.string "A thing? No way!\p"
	.string "We're just friends, don't be weird!\n"
	.string "Stop imagining stuff!$"

DewfordTown_Gym_Text_LilithIntro:
	.string "Ufufu...\n"
	.string "You, with those weird clothes!\n"
	.string "Stumbling around in the dark?$"

DewfordTown_Gym_Text_LilithDefeat:
	.string "Oh, you... weirdo...\n"
	.string "I don't want to know you!$"

DewfordTown_Gym_Text_LilithPostBattle:
	.string "You deserve to get lost and end up\n"
	.string "back at the entrance!\p"
	.string "We get used to the dark here.\n"
	.string "Just like street fights... the more,\n"
	.string "the better we become!$"

DewfordTown_Gym_Text_BrendenIntro:
	.string "HAHAHA! During one of RENTON's wild\n"
	.string "nights, we became friends!\p"
	.string "We threw hands, I got beat up bad,\n"
	.string "HAHAHA! But he saw I was tough!\p"
	.string "I'm a sailor! I've seen storms,\n"
	.string "ship brawls, bar fights, everything!\p"
	.string "So come on, cape guy!\n"
	.string "Show me what you got!$"

DewfordTown_Gym_Text_BrendenDefeat:
	.string "Not bad! But this was nothing compared\n"
	.string "to RENTON's beatdowns!\p"
	.string "That was easy stuff!\n"
	.string "You've got a long way to go!$"

DewfordTown_Gym_Text_BrendenPostBattle:
	.string "Rules are rules, y'know.\n"
	.string "Go on, take your beatdown from RENTON!\p"
	.string "After that, we can sail off and\n"
	.string "drink till sunrise! RENTON's the man!$"

DewfordTown_Gym_Text_CristianIntro:
	.string "If you want to pass, you fight me first!\p"
	.string "Strength matters here...\n"
	.string "just like in any street brawl!\p"
	.string "I'm a punk, and proud of it!\n"
	.string "I'm here because I grew up with RENTON!\n"
	.string "We've been scrapping since kindergarten!$"

DewfordTown_Gym_Text_CristianDefeat:
	.string "Grrrrr!\n"
	.string "You got lucky!$"

DewfordTown_Gym_Text_CristianPostBattle:
	.string "Fine! You win!\n"
	.string "Go after that BADGE!\p"
	.string "With moves like that, you'd survive\n"
	.string "a real street fight too!$"

DewfordTown_Gym_Text_BrawlyIntro:
	.string "Yo! I'm RENTON!\n"
	.string "DEWFORD's new GYM LEADER!\p"
	.string "I'm forged in street brawls and\n"
	.string "back-alley fights. Fists fly harder\l"
	.string "than any fancy cave move!\p"
	.string "I took down the last Leader here\n"
	.string "with my own fists. Forgot his name!\p"
	.string "So, you wanna challenge me?\n"
	.string "Show me what you're made of!$"

DewfordTown_Gym_Text_BrawlyDefeat:
	.string "Whoah, damn! You hit way harder than\n"
	.string "I thought you would!\p"
	.string "You totally wrecked me!\n"
	.string "Alright, take this GYM BADGE!\p"
	.string "But you'd better run along now...\n"
	.string "or you might pick a real fight with me!\n"
	.string "HAHAHAHAHA!$"

DewfordTown_Gym_Text_ReceivedKnuckleBadge:
	.string "{PLAYER} received the KNUCKLE BADGE\n"
	.string "from RENTON.$"

DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis:
	.string "The KNUCKLE BADGE makes all POKéMON\n"
	.string "up to Level 30 obey without question.\p"
	.string "And you can use FLASH outside\n"
	.string "of battle.\p"
	.string "If you'd like, use this TECHNICAL\n"
	.string "MACHINE, too.$"

DewfordTown_Gym_Text_ExplainBulkUp:
	.string "That TM08 contains BULK UP.\p"
	.string "It raises both ATTACK and DEFENSE.\p"
	.string "… … … … … …$"

DewfordTown_Gym_Text_RegisteredBrawly:
	.string "Registered GYM LEADER RENTON\n"
	.string "in the POKéNAV.$"

DewfordTown_Gym_Text_BrawlyPostBattle:
	.string "Heh, I can tell you've been in plenty\n"
	.string "of fights, kid... HAHAHA!\l"
	.string "You know how to have fun!\p"
	.string "Let's clash again someday, yeah?\n"
	.string "Or hang out and trade street stories!\n"
	.string "HAHAHAHAHA!$"

DewfordTown_Gym_Text_GymStatue:
	.string "DEWFORD TOWN POKéMON GYM$"

DewfordTown_Gym_Text_GymStatueCertified:
	.string "DEWFORD TOWN POKéMON GYM\p"
	.string "RENTON'S CERTIFIED TRAINERS:\n"
	.string "{PLAYER}$"

DewfordTown_Gym_Text_BrawlyPreRematch:
	.string "RENTON: Heh, look who showed up.\n"
	.string "A real fighter always comes back.\p"
	.string "I knew you'd return, kiddo!\n"
	.string "Saw it in how you threw down!\p"
	.string "Now show me how much tougher\n"
	.string "you've gotten!$"

DewfordTown_Gym_Text_BrawlyRematchDefeat:
	.string "HAHAHAHA! That was insane!\n"
	.string "Now THAT was a real fight!\p"
	.string "I'm so pumped I'm gonna go get\n"
	.string "wasted after this! Maybe find a\l"
	.string "brawl with some sailor out there!\n"
	.string "HAHAHAHAHA!$"

DewfordTown_Gym_Text_BrawlyPostRematch:
	.string "RENTON: Fighting's wild and endless,\n"
	.string "kid. You never see the bottom.\p"
	.string "There's always someone tougher\n"
	.string "waiting to throw down!$"

DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons:
	.string "RENTON: Heh, knew you'd come back,\n"
	.string "kid! Real fighters always do.\p"
	.string "But hold up... You've only got one\n"
	.string "POKéMON ready to throw down.\p"
	.string "Bring at least two POKéMON and\n"
	.string "then we'll have a real fight!$"

DewfordTown_Gym_Text_AskDifficulty:
	.string "GYM GUIDE: Before you face RENTON,\n"
	.string "I can adjust the challenge!\p"
	.string "Want HARD mode where TRAINERS\n"
	.string "use optimized teams?$"

DewfordTown_Gym_Text_HardSelected:
	.string "GYM GUIDE: Hard mode selected!\n"
	.string "RENTON won't hold back!$"

DewfordTown_Gym_Text_NormalSelected:
	.string "GYM GUIDE: Casual mode selected!\n"
	.string "RENTON is waiting!$"


