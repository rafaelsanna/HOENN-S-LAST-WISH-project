FortreeCity_Gym_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_Gym_OnTransition
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, FortreeCity_Gym_OnWarp
	.byte 0

FortreeCity_Gym_OnTransition:
	special RotatingGate_InitPuzzle
	setflag FLAG_TEMP_HIDE_FOLLOWER @ Hide follower bc of rotating gates
	end

FortreeCity_Gym_OnWarp:
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, FortreeCity_Gym_EventScript_InitRotatingGates
	.2byte 0

@ NOTE: This rotating gate puzzle makes use of VAR_TEMP_0 - VAR_TEMP_3
FortreeCity_Gym_EventScript_InitRotatingGates::
	special RotatingGate_InitPuzzleAndGraphics
	end

// Fortree City Gym - Winona
FortreeCity_Gym_EventScript_Winona::
    lock
    faceplayer
    getdifficulty VAR_RESULT
    goto_if_eq VAR_RESULT, 1, FortreeCity_Gym_EventScript_WinonaHard

    // Casual Mode
    trainerbattle_single TRAINER_TAKA_CASUAL, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
    goto FortreeCity_Gym_EventScript_WinonaAfterBattle

FortreeCity_Gym_EventScript_WinonaHard::
    // Hard Mode
    trainerbattle_single TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
    // Fall through to AfterBattle

FortreeCity_Gym_EventScript_WinonaAfterBattle::
    specialvar VAR_RESULT, ShouldTryRematchBattle
    goto_if_eq VAR_RESULT, TRUE, FortreeCity_Gym_EventScript_WinonaRematch
    goto_if_unset FLAG_RECEIVED_TM_AERIAL_ACE, FortreeCity_Gym_EventScript_GiveAerialAce2
    msgbox FortreeCity_Gym_Text_WinonaPostBattle, MSGBOX_DEFAULT
    release
    end

FortreeCity_Gym_EventScript_WinonaDefeated::
	message FortreeCity_Gym_Text_ReceivedFeatherBadge
	waitmessage
	call Common_EventScript_PlayGymBadgeFanfare
	msgbox FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis, MSGBOX_DEFAULT
	setflag FLAG_DEFEATED_FORTREE_GYM
	setflag FLAG_BADGE06_GET
	setvar VAR_0x8008, 6
	call Common_EventScript_SetGymTrainers
	call FortreeCity_Gym_EventScript_GiveAerialAce
	closemessage
	delay 30
	playfanfare MUS_REGISTER_MATCH_CALL
	msgbox FortreeCity_Gym_Text_RegisteredWinona, MSGBOX_DEFAULT
	waitfanfare
	closemessage
	delay 30
	setflag FLAG_ENABLE_WINONA_MATCH_CALL
	setvar VAR_SCOTT_FORTREE_CALL_STEP_COUNTER, 0
	setflag FLAG_SCOTT_CALL_FORTREE_GYM
	release
	end

FortreeCity_Gym_EventScript_GiveAerialAce2::
	giveitem ITEM_TM_AERIAL_ACE
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
	release
	end

FortreeCity_Gym_EventScript_GiveAerialAce::
	giveitem ITEM_TM_AERIAL_ACE
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
	return

FortreeCity_Gym_EventScript_WinonaRematch::
	trainerbattle_rematch_double TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaPreRematch, FortreeCity_Gym_Text_WinonaRematchDefeat, FortreeCity_Gym_Text_WinonaRematchNeedTwoMons
	msgbox FortreeCity_Gym_Text_WinonaPostRematch, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_Jared::
	trainerbattle_single TRAINER_JARED, FortreeCity_Gym_Text_JaredIntro, FortreeCity_Gym_Text_JaredDefeat
	msgbox FortreeCity_Gym_Text_JaredPostBattle, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_Edwardo::
	trainerbattle_single TRAINER_EDWARDO, FortreeCity_Gym_Text_EdwardoIntro, FortreeCity_Gym_Text_EdwardoDefeat
	msgbox FortreeCity_Gym_Text_EdwardoPostBattle, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_Flint::
	trainerbattle_single TRAINER_FLINT, FortreeCity_Gym_Text_FlintIntro, FortreeCity_Gym_Text_FlintDefeat
	msgbox FortreeCity_Gym_Text_FlintPostBattle, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_Ashley::
	trainerbattle_single TRAINER_ASHLEY, FortreeCity_Gym_Text_AshleyIntro, FortreeCity_Gym_Text_AshleyDefeat
	msgbox FortreeCity_Gym_Text_AshleyPostBattle, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_Humberto::
	trainerbattle_single TRAINER_HUMBERTO, FortreeCity_Gym_Text_HumbertoIntro, FortreeCity_Gym_Text_HumbertoDefeat
	msgbox FortreeCity_Gym_Text_HumbertoPostBattle, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_Darius::
	trainerbattle_single TRAINER_DARIUS, FortreeCity_Gym_Text_DariusIntro, FortreeCity_Gym_Text_DariusDefeat
	msgbox FortreeCity_Gym_Text_DariusPostBattle, MSGBOX_AUTOCLOSE
	end

FortreeCity_Gym_EventScript_GymGuide::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_FORTREE_GYM, FortreeCity_Gym_EventScript_GymGuidePostVictory
	msgbox FortreeCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
	release
	end

FortreeCity_Gym_EventScript_GymGuidePostVictory::
	msgbox FortreeCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
	release
	end

FortreeCity_Gym_EventScript_LeftGymStatue::
	lockall
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
	goto FortreeCity_Gym_EventScript_GymStatue
	end

FortreeCity_Gym_EventScript_RightGymStatue::
	lockall
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
	goto FortreeCity_Gym_EventScript_GymStatue
	end

FortreeCity_Gym_EventScript_GymStatueCertified::
	msgbox FortreeCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
	releaseall
	end

FortreeCity_Gym_EventScript_GymStatue::
	msgbox FortreeCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
	releaseall
	end

FortreeCity_Gym_Text_GymGuideAdvice:
	.string "Yo, CHAMPION-bound {PLAYER}!\p"
	.string "TAKA, our LEADER, lives\n"
	.string "for the open sky.\p"
	.string "He says battle should feel\n"
	.string "like riding the wind.\p"
	.string "Keep your footing steady,\n"
	.string "or you'll fall fast!$"

FortreeCity_Gym_Text_GymGuidePostVictory:
	.string "You did it!\n"
	.string "You soared past gravity!$"

FortreeCity_Gym_Text_JaredIntro:
	.string "Feel that breeze?\n"
	.string "That's freedom calling!\p"
	.string "Let's see if you can\n"
	.string "stay airborne!$"

FortreeCity_Gym_Text_JaredDefeat:
	.string "Wow…\n"
	.string "The wind slipped away…$"

FortreeCity_Gym_Text_JaredPostBattle:
	.string "Battles shift like currents.\p"
	.string "If you panic midair,\n"
	.string "you'll lose control.\p"
	.string "Can you stay steady\n"
	.string "against TAKA?$"

FortreeCity_Gym_Text_EdwardoIntro:
	.string "Only those who love the sky\n"
	.string "truly belong here.\p"
	.string "I won't fall easily!$"

FortreeCity_Gym_Text_EdwardoDefeat:
	.string "The height overwhelmed me…$"

FortreeCity_Gym_Text_EdwardoPostBattle:
	.string "The world below looks small\n"
	.string "from up high.\p"
	.string "But the fall is always\n"
	.string "a risk.\p"
	.string "I'll fly higher again.$"

FortreeCity_Gym_Text_FlintIntro:
	.string "You think you can face TAKA?\p"
	.string "You'll have to get past\n"
	.string "this gust first!$"

FortreeCity_Gym_Text_FlintDefeat:
	.string "TAKA, I…\n"
	.string "I lost!$"

FortreeCity_Gym_Text_FlintPostBattle:
	.string "TAKA doesn't fear heights.\n"
	.string "He embraces them.\p"
	.string "Up there, he's untouchable.$"

FortreeCity_Gym_Text_AshleyIntro:
	.string "TAKA taught me to trust\n"
	.string "the wind beneath me!\p"
	.string "I won't lose balance!$"

FortreeCity_Gym_Text_AshleyDefeat:
	.string "I couldn't keep altitude…$"

FortreeCity_Gym_Text_AshleyPostBattle:
	.string "Because of TAKA,\n"
	.string "we're not afraid of falling.\p"
	.string "We learn to rise again.$"

FortreeCity_Gym_Text_HumbertoIntro:
	.string "When TAKA battles,\n"
	.string "he looks completely free.\p"
	.string "I won't let you\n"
	.string "see that sky today!$"

FortreeCity_Gym_Text_HumbertoDefeat:
	.string "Urk!\n"
	.string "I couldn't stop you.$"

FortreeCity_Gym_Text_HumbertoPostBattle:
	.string "Careful up there.\n"
	.string "One wrong move,\l"
	.string "and you plummet.\p"
	.string "Freedom demands courage!$"

FortreeCity_Gym_Text_DariusIntro:
	.string "Flying POKEMON aren't\n"
	.string "all the same.\p"
	.string "Some soar.\n"
	.string "Some dive.\p"
	.string "Can you handle both?$"

FortreeCity_Gym_Text_DariusDefeat:
	.string "You handled the air well.$"

FortreeCity_Gym_Text_DariusPostBattle:
	.string "Sure, you beat me.\p"
	.string "But TAKA moves like\n"
	.string "a shifting gale.\p"
	.string "Stay sharp up there.$"

FortreeCity_Gym_Text_WinonaIntro:
	.string "So you've made it this high.\p"
	.string "I am TAKA, Leader of\n"
	.string "the FORTREE GYM.\p"
	.string "The sky is my true home.\n"
	.string "Up there, I feel limitless.\p"
	.string "With my FLYING POKEMON,\n"
	.string "I chase the wind itself.\p"
	.string "Show me, can you battle\n"
	.string "with the same freedom?$"

FortreeCity_Gym_Text_WinonaDefeat:
	.string "Incredible…\n"
	.string "You rode the wind perfectly.\p"
	.string "Very well.\n"
	.string "You have earned this GYM BADGE.$"

FortreeCity_Gym_Text_ReceivedFeatherBadge:
	.string "{PLAYER} received the FEATHER BADGE\n"
	.string "from TAKA.$"

FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis:
	.string "With the FEATHER BADGE, all POKéMON up\n"
	.string "to LV 70, even those received through\l"
	.string "trades, will obey your every command.\p"
	.string "You will also be able to use\n"
	.string "the HM move FLY outside of battle.\p"
	.string "And this…\n"
	.string "This is a gift from me.$"

FortreeCity_Gym_Text_ExplainAerialAce:
	.string "TM40 contains AERIAL ACE.\p"
	.string "Its speed…\n"
	.string "No POKéMON should be able to avoid it.\p"
	.string "… … … … … …$"

FortreeCity_Gym_Text_RegisteredWinona:
	.string "Registered GYM LEADER TAKA\n"
	.string "in the POKéNAV.$"

FortreeCity_Gym_Text_WinonaPostBattle:
	.string "Even in defeat, I feel lighter.\p"
	.string "A true battle is like flight,\n"
	.string "you must trust the wind.\p"
	.string "Keep chasing new heights!$"

FortreeCity_Gym_Text_GymStatue:
	.string "FORTREE CITY POKéMON GYM$"

FortreeCity_Gym_Text_GymStatueCertified:
	.string "FORTREE CITY POKéMON GYM\p"
	.string "TAKA'S CERTIFIED TRAINERS:\n"
	.string "{PLAYER}$"

FortreeCity_Gym_Text_WinonaPreRematch:
	.string "TAKA: We humans can never escape\n"
	.string "gravity's pull on the ground.\p"
	.string "But by striving for excellence,\n"
	.string "we have the power to soar!\p"
	.string "You have scaled the pinnacle as\n"
	.string "the reigning CHAMPION.\p"
	.string "Please, allow me to see your power\n"
	.string "at full flight!$"

FortreeCity_Gym_Text_WinonaRematchDefeat:
	.string "I failed to reach your height again…$"

FortreeCity_Gym_Text_WinonaPostRematch:
	.string "TAKA: Even though I have lost,\n"
	.string "the wings of my heart remain unbroken.\p"
	.string "I can rise and soar again and\n"
	.string "yet again.\p"
	.string "I am convinced of it!$"

FortreeCity_Gym_Text_WinonaRematchNeedTwoMons:
	.string "TAKA: We humans can never escape\n"
	.string "gravity's pull on the ground.\p"
	.string "But by striving for excellence,\n"
	.string "we have the power to soar!\p"
	.string "You have scaled the pinnacle as\n"
	.string "the reigning CHAMPION.\p"
	.string "Please, allow me to see your power\n"
	.string "at full flight!\p"
	.string "Oh, no… Do you have but one\n"
	.string "POKéMON with you?\p"
	.string "Please return with two POKéMON\n"
	.string "at the very least.$"
