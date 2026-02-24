LavaridgeTown_Gym_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_Gym_1F_OnTransition
	.byte 0

LavaridgeTown_Gym_1F_OnTransition:
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
	call LavaridgeTown_Gym_1F_EventScript_CheckBuryTrainers
	end

@ Unclear where/if these temp vars are getting checked
LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars::
	setvar VAR_TEMP_B, 0
	setvar VAR_TEMP_C, 0
	setvar VAR_TEMP_D, 0
	setvar VAR_TEMP_E, 0
	setvar VAR_TEMP_F, 0
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar
	setvar VAR_TEMP_B, 1
LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar::
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar
	setvar VAR_TEMP_C, 1
LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar::
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar
	setvar VAR_TEMP_D, 1
LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar::
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars
	setvar VAR_TEMP_E, 1
LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars::
	return

LavaridgeTown_Gym_1F_EventScript_CheckBuryTrainers::
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald
	setobjectmovementtype LOCALID_COLE, MOVEMENT_TYPE_BURIED
LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald::
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle
	setobjectmovementtype LOCALID_GERALD, MOVEMENT_TYPE_BURIED
LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle::
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle
	setobjectmovementtype LOCALID_AXLE, MOVEMENT_TYPE_BURIED
LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle::
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers
	setobjectmovementtype LOCALID_DANIELLE, MOVEMENT_TYPE_BURIED
LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers::
	return

// Lavaridge Town Gym - Flannery
LavaridgeTown_Gym_1F_EventScript_Flannery::
    lock
    faceplayer
    getdifficulty VAR_RESULT
    goto_if_eq VAR_RESULT, 1, LavaridgeTown_Gym_1F_EventScript_FlanneryHard

    // Casual Mode
    trainerbattle_single TRAINER_FLANNERY_CASUAL, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
    goto LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle

LavaridgeTown_Gym_1F_EventScript_FlanneryHard::
    // Hard Mode
    trainerbattle_single TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
    // Fall through to AfterBattle

LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle::
    specialvar VAR_RESULT, ShouldTryRematchBattle
    goto_if_eq VAR_RESULT, TRUE, LavaridgeTown_Gym_1F_EventScript_FlanneryRematch
    goto_if_unset FLAG_RECEIVED_TM_OVERHEAT, LavaridgeTown_Gym_1F_EventScript_GiveOverheat2
    msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostBattle, MSGBOX_DEFAULT
    release
    end

LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated::
	message LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge
	waitmessage
	call Common_EventScript_PlayGymBadgeFanfare
	msgbox LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis, MSGBOX_DEFAULT
	setflag FLAG_WHITEOUT_TO_LAVARIDGE
	setflag FLAG_DEFEATED_LAVARIDGE_GYM
	setflag FLAG_BADGE04_GET
	addvar VAR_PETALBURG_GYM_STATE, 1
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
	setvar VAR_0x8008, 4
	call Common_EventScript_SetGymTrainers
	setflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
	setvar VAR_LAVARIDGE_TOWN_STATE, 1
	call LavaridgeTown_Gym_1F_EventScript_GiveOverheat
	closemessage
	delay 30
	playfanfare MUS_REGISTER_MATCH_CALL
	msgbox LavaridgeTown_Gym_1F_Text_RegisteredFlannery, MSGBOX_DEFAULT
	waitfanfare
	closemessage
	delay 30
	setflag FLAG_ENABLE_FLANNERY_MATCH_CALL
	release
	end

LavaridgeTown_Gym_1F_EventScript_GiveOverheat2::
	giveitem ITEM_TM_OVERHEAT
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_TM_OVERHEAT
	release
	end

LavaridgeTown_Gym_1F_EventScript_GiveOverheat::
	giveitem ITEM_TM_OVERHEAT
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_TM_OVERHEAT
	return

LavaridgeTown_Gym_1F_EventScript_FlanneryRematch::
	trainerbattle_rematch_double TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryPreRematch, LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat, LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons
	msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostRematch, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_1F_EventScript_Cole::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_COLE, TRAINER_COLE, LavaridgeTown_Gym_1F_Text_ColeIntro, LavaridgeTown_Gym_1F_Text_ColeDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_1F_Text_ColePostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_EventScript_CheckTrainerScript::
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
	release
	special ShouldTryGetTrainerScript
	goto_if_eq VAR_RESULT, 1, EventScript_GotoTrainerScript
	end

LavaridgeTown_Gym_1F_EventScript_Axle::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_AXLE, TRAINER_AXLE, LavaridgeTown_Gym_1F_Text_AxleIntro, LavaridgeTown_Gym_1F_Text_AxleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_1F_Text_AxlePostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_B1F_EventScript_Keegan::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_KEEGAN, TRAINER_KEEGAN, LavaridgeTown_Gym_B1F_Text_KeeganIntro, LavaridgeTown_Gym_B1F_Text_KeeganDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_B1F_Text_KeeganPostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_1F_EventScript_Danielle::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_DANIELLE, TRAINER_DANIELLE, LavaridgeTown_Gym_1F_Text_DanielleIntro, LavaridgeTown_Gym_1F_Text_DanielleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_1F_Text_DaniellePostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_1F_EventScript_Gerald::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_GERALD, TRAINER_GERALD, LavaridgeTown_Gym_1F_Text_GeraldIntro, LavaridgeTown_Gym_1F_Text_GeraldDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_1F_Text_GeraldPostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_B1F_EventScript_Jace::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JACE, TRAINER_JACE, LavaridgeTown_Gym_B1F_Text_JaceIntro, LavaridgeTown_Gym_B1F_Text_JaceDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_B1F_Text_JacePostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_B1F_EventScript_Jeff::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JEFF, TRAINER_JEFF, LavaridgeTown_Gym_B1F_Text_JeffIntro, LavaridgeTown_Gym_B1F_Text_JeffDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_B1F_Text_JeffPostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_B1F_EventScript_Eli::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_ELI, TRAINER_ELI, LavaridgeTown_Gym_B1F_Text_EliIntro, LavaridgeTown_Gym_B1F_Text_EliDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
	msgbox LavaridgeTown_Gym_B1F_Text_EliPostBattle, MSGBOX_AUTOCLOSE
	end

LavaridgeTown_Gym_1F_EventScript_GymGuide::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory
	msgbox LavaridgeTown_Gym_1F_Text_GymGuideAdvice, MSGBOX_DEFAULT
	release
	end

LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory::
	msgbox LavaridgeTown_Gym_1F_Text_GymGuidePostVictory, MSGBOX_DEFAULT
	release
	end

LavaridgeTown_Gym_1F_EventScript_LeftGymStatue::
	lockall
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
	end

LavaridgeTown_Gym_1F_EventScript_RightGymStatue::
	lockall
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
	end

LavaridgeTown_Gym_1F_EventScript_GymStatueCertified::
	msgbox LavaridgeTown_Gym_1F_Text_GymStatueCertified, MSGBOX_DEFAULT
	releaseall
	end

LavaridgeTown_Gym_1F_EventScript_GymStatue::
	msgbox LavaridgeTown_Gym_1F_Text_GymStatue, MSGBOX_DEFAULT
	releaseall
	end

LavaridgeTown_Gym_1F_Text_GymGuideAdvice:
	.string "Hey! How's it going,\n"
	.string "CHAMPION-bound {PLAYER}?\p"
	.string "LAVARIDGE's LEADER is AMATERASU,\n"
	.string "the blazing idol of Hoenn!\p"
	.string "She battles with fierce FIRE\n"
	.string "POKéMON, many like loyal hounds.\p"
	.string "Her passion burns hotter than\n"
	.string "the volcano itself!\p"
	.string "Water will cool the flames,\n"
	.string "but don't underestimate her rhythm!$"

LavaridgeTown_Gym_1F_Text_GymGuidePostVictory:
	.string "Yow! That was a scorching-hot battle!$"

LavaridgeTown_Gym_1F_Text_ColeIntro:
	.string "Owowowowow!\n"
	.string "It's so hot in here!\p"
	.string "I only came to get an autograph\n"
	.string "from AMATERASU…\p"
	.string "But I got burned instead!$"

LavaridgeTown_Gym_1F_Text_ColeDefeat:
	.string "Whoa… you're pretty tough…\p"
	.string "If you get close to AMATERASU,\n"
	.string "can you ask for her autograph\n"
	.string "for me?$"

LavaridgeTown_Gym_1F_Text_ColePostBattle:
	.string "AMATERASU is a rising idol star.\p"
	.string "Her voice warms every heart.\p"
	.string "But in battle, her flames\n"
	.string "burn fierce and wild.$"

LavaridgeTown_Gym_1F_Text_AxleIntro:
	.string "Hey! I'm not here because\n"
	.string "of AMATERASU, okay?\p"
	.string "I just like intense battles\n"
	.string "and blazing heat!$"

LavaridgeTown_Gym_1F_Text_AxleDefeat:
	.string "I hope AMATERASU flames you good!$"

LavaridgeTown_Gym_1F_Text_AxlePostBattle:
	.string "Okay… maybe I'm a little\n"
	.string "bit of an AMATERASU simp…\p"
	.string "But I've got my own fire\n"
	.string "burning inside!\p"
	.string "Get too close to us,\n"
	.string "and that strange cape of yours\n"
	.string "might catch flame!$"

LavaridgeTown_Gym_B1F_Text_KeeganIntro:
	.string "You must be getting tired by now.\n"
	.string "You'd like to rest in the hot sand,\l"
	.string "wouldn't you?\p"
	.string "But you should know that maintaining\n"
	.string "your willpower is an important ability\l"
	.string "for all TRAINERS.$"

LavaridgeTown_Gym_B1F_Text_KeeganDefeat:
	.string "Play with fire, and be burned…$"

LavaridgeTown_Gym_B1F_Text_KeeganPostBattle:
	.string "Your skill is real…\n"
	.string "But our LEADER AMATERASU is strong.\p"
	.string "If you don't watch yourself, you'll be\n"
	.string "burned seriously.$"

LavaridgeTown_Gym_1F_Text_GeraldIntro:
	.string "Can your POKéMON withstand\n"
	.string "392-degree heat?$"

LavaridgeTown_Gym_1F_Text_GeraldDefeat:
	.string "It didn't burn hotly enough…$"

LavaridgeTown_Gym_1F_Text_GeraldPostBattle:
	.string "The temperature of magma is\n"
	.string "392 degrees.\p"
	.string "Your POKéMON beat me, so they should\n"
	.string "easily survive in magma.$"

LavaridgeTown_Gym_1F_Text_DanielleIntro:
	.string "Um… hi wierdo…\n"
	.string "I'll battle you now!$"

LavaridgeTown_Gym_1F_Text_DanielleDefeat:
	.string "Oh, but you're too strong.$"

LavaridgeTown_Gym_1F_Text_DaniellePostBattle:
	.string "AMATERASU shines on stage\n"
	.string "with flames and fireworks.\p"
	.string "I want to be strong and radiant\n"
	.string "just like her someday!$"

LavaridgeTown_Gym_B1F_Text_JaceIntro:
	.string "Have you ever seen her show?\n"
	.string "Flames dancing in the dark!\p"
	.string "That night changed my life.\n"
	.string "Let's burn bright!$"

LavaridgeTown_Gym_B1F_Text_JaceDefeat:
	.string "The fireworks faded…\n"
	.string "and so did my spark…$"

LavaridgeTown_Gym_B1F_Text_JacePostBattle:
	.string "AMATERASU's stage is pure fire!\p"
	.string "The night I saw her perform,\n"
	.string "I fell in love with flames!\p"
	.string "If your spirit burns like that,\n"
	.string "you might rival her.$"

LavaridgeTown_Gym_B1F_Text_JeffIntro:
	.string "You see those flames?\n"
	.string "They burn with loyalty!\p"
	.string "Just like AMATERASU's\n"
	.string "faithful POKéMON!$"

LavaridgeTown_Gym_B1F_Text_JeffDefeat:
	.string "Heh… So that's your strength.\n"
	.string "No wonder you made it this far.$"

LavaridgeTown_Gym_B1F_Text_JeffPostBattle:
	.string "AMATERASU loves cute and\n"
	.string "loyal FIRE POKéMON.\p"
	.string "But don't mistake that\n"
	.string "for weakness.\p"
	.string "She's a natural talent.\n"
	.string "Born to command flames.$"

LavaridgeTown_Gym_B1F_Text_EliIntro:
	.string "Did you see the comet that day?\n"
	.string "It streaked across the sky!\p"
	.string "It reminded me of AMATERASU!$"

LavaridgeTown_Gym_B1F_Text_EliDefeat:
	.string "Just like that comet…\n"
	.string "you burned past me.$"

LavaridgeTown_Gym_B1F_Text_EliPostBattle:
	.string "When I saw that comet blaze,\n"
	.string "I thought of AMATERASU.\p"
	.string "Her shows light up the night\n"
	.string "just like that burning star.$"

LavaridgeTown_Gym_1F_Text_FlanneryIntro:
	.string "La la la…\n"
	.string "Ah… The stage is set.\p"
	.string "Welcome, darling TRAINER!\p"
	.string "You should feel honored.\n"
	.string "Tonight's performance is\l"
	.string "live… and exclusive!\p"
	.string "I am AMATERASU! Bet you know me!\p"
	.string "The idol whose flames light\n"
	.string "both the stage and the battlefield!\p"
	.string "I adore music…\n"
	.string "And I adore loyal FIRE POKéMON,\l"
	.string "especially my beloved canines!\p"
	.string "Their howls, their pride,\n"
	.string "their blazing devotion…\p"
	.string "They burn with me in perfect harmony!\p"
	.string "So listen closely.\p"
	.string "Can you hear it?\p"
	.string "The rhythm of drums…\n"
	.string "The roar of the flames…\p"
	.string "Let us begin our duet!\p"
	.string "Try not to get burned\n"
	.string "by my blazing passion!$"

LavaridgeTown_Gym_1F_Text_FlanneryDefeat:
	.string "Ahh… What a performance!\n"
	.string "My heart is racing!\p"
	.string "You didn't just battle me,\n"
	.string "you matched my rhythm perfectly!\p"
	.string "Battles like this are why I\n"
	.string "love the stage so much.\p"
	.string "When flames clash and spirits\n"
	.string "ignite… that's true passion!\p"
	.string "You pushed me to burn brighter.\n"
	.string "And I respect that.\p"
	.string "Take this BADGE.\n"
	.string "You earned it fair and square.$"

LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge:
	.string "{PLAYER} received the HEAT BADGE\n"
	.string "from AMATERASU.$"

LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis:
	.string "If you have a HEAT BADGE, all POKéMON\n"
	.string "up to Level 50, even those you get in\l"
	.string "trades from other people, will obey\l"
	.string "you completely.\p"
	.string "And, it lets POKéMON use the HM move\n"
	.string "STRENGTH outside of battle.\p"
	.string "This is a token of my appreciation.\n"
	.string "Don't be shy about taking it!$"

LavaridgeTown_Gym_1F_Text_ExplainOverheat:
	.string "That TM50 contains OVERHEAT.\p"
	.string "That move inflicts serious damage on\n"
	.string "the opponent.\p"
	.string "But it also sharply cuts the SP. ATK\n"
	.string "of the POKéMON using it. It might not\l"
	.string "be suitable for longer battles.$"

LavaridgeTown_Gym_1F_Text_RegisteredFlannery:
	.string "Registered GYM LEADER AMATERASU\n"
	.string "in the POKéNAV.$"

LavaridgeTown_Gym_1F_Text_FlanneryPostBattle:
	.string "WOW… That battle was CRAZY!\n"
	.string "My heart is still pounding!\p"
	.string "The flames, the pressure,\n"
	.string "the emotion! It was perfect!\p"
	.string "I'm seriously impressed.\n"
	.string "That was incredible!\p"
	.string "I need to write a song about\n"
	.string "this moment right now!\p"
	.string "Hey! Do you have paper?\n"
	.string "A pen? Inspiration can't wait!$"

LavaridgeTown_Gym_1F_Text_GymStatue:
	.string "LAVARIDGE TOWN POKéMON GYM$"

LavaridgeTown_Gym_1F_Text_GymStatueCertified:
	.string "LAVARIDGE TOWN POKéMON GYM\p"
	.string "AMATERASU'S CERTIFIED TRAINERS:\n"
	.string "{PLAYER}$"

LavaridgeTown_Gym_1F_Text_FlanneryPreRematch:
	.string "AMATERASU: Losing a battle isn't going\n"
	.string "to deflate me.\p"
	.string "I love POKéMON.\n"
	.string "I love to battle.\l"
	.string "And… I love this GYM!\p"
	.string "Let's exchange superhot moves\n"
	.string "in another battle!$"

LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat:
	.string "Whew!\n"
	.string "On the verge of eruption!$"

LavaridgeTown_Gym_1F_Text_FlanneryPostRematch:
	.string "FLANNERY: I lost the match,\n"
	.string "but I'm completely satisfied.\p"
	.string "It's not often I get to enjoy a battle\n"
	.string "this heated.\p"
	.string "Let's have another one like this\n"
	.string "again sometime!$"

LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons:
	.string "FLANNERY: Losing a battle isn't going\n"
	.string "to deflate me.\p"
	.string "I love POKéMON.\n"
	.string "I love to battle.\l"
	.string "And… I love this GYM!\p"
	.string "Let's exchange superhot moves\n"
	.string "in another battle!\p"
	.string "Oh, wait. Do you only have one POKéMON\n"
	.string "that can battle?\p"
	.string "I hate to say this, but when you come\n"
	.string "see me, bring at least two POKéMON.$"
