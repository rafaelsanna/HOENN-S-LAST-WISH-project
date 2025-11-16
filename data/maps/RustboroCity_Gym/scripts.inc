RustboroCity_Gym_MapScripts::
	.byte 0

RustboroCity_Gym_EventScript_Roxanne::
	lock
	faceplayer
	@ === VERIFICAÇÃO MANUAL DA DIFICULDADE ===
	copyvar VAR_0x8000, 0x404E
	compare VAR_0x8000, 1
	goto_if_eq RustboroCity_Gym_RoxanneHard
	
	@ Modo Normal - TRAINER_ROXANNE (3 Eevee)
	trainerbattle_single TRAINER_ROXANNE, RustboroCity_Gym_Text_RoxanneIntro, RustboroCity_Gym_Text_RoxanneDefeat, RustboroCity_Gym_EventScript_RoxanneDefeated, NO_MUSIC
	goto RustboroCity_Gym_AfterBattle

RustboroCity_Gym_RoxanneHard::
	@ Modo Hard - TRAINER_ROXANNE_1 (3 Pikachu)
	trainerbattle_single TRAINER_ROXANNE_1, RustboroCity_Gym_Text_RoxanneIntro, RustboroCity_Gym_Text_RoxanneDefeat, RustboroCity_Gym_EventScript_RoxanneDefeated, NO_MUSIC

RustboroCity_Gym_AfterBattle::
	specialvar VAR_RESULT, ShouldTryRematchBattle
	goto_if_eq VAR_RESULT, TRUE, RustboroCity_Gym_EventScript_RoxanneRematch
	goto_if_unset FLAG_RECEIVED_TM_ROCK_TOMB, RustboroCity_Gym_EventScript_GiveRockTomb
	msgbox RustboroCity_Gym_Text_RoxannePostBattle, MSGBOX_DEFAULT
	release
	end
	
RustboroCity_Gym_EventScript_RoxanneDefeated::
	message RustboroCity_Gym_Text_ReceivedStoneBadge
	waitmessage
	call Common_EventScript_PlayGymBadgeFanfare
	msgbox RustboroCity_Gym_Text_StoneBadgeInfoTakeThis, MSGBOX_DEFAULT
	setflag FLAG_DEFEATED_RUSTBORO_GYM
	setflag FLAG_BADGE01_GET
	setvar VAR_RUSTBORO_CITY_STATE, 1
	addvar VAR_PETALBURG_GYM_STATE, 1
	setvar VAR_0x8008, 1
	call Common_EventScript_SetGymTrainers
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
	goto RustboroCity_Gym_EventScript_GiveRockTomb
	end

RustboroCity_Gym_EventScript_GiveRockTomb::
	giveitem ITEM_TM_ROCK_TOMB
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	setflag FLAG_RECEIVED_TM_ROCK_TOMB
	msgbox RustboroCity_Gym_Text_ExplainRockTomb, MSGBOX_DEFAULT
	release
	end

RustboroCity_Gym_EventScript_RoxanneRematch::
	trainerbattle_rematch_double TRAINER_ROXANNE_1, RustboroCity_Gym_Text_RoxannePreRematch, RustboroCity_Gym_Text_RoxanneRematchDefeat, RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons
	msgbox RustboroCity_Gym_Text_RoxannePostRematch, MSGBOX_AUTOCLOSE
	end

RustboroCity_Gym_EventScript_Josh::
	trainerbattle_single TRAINER_JOSH, RustboroCity_Gym_Text_JoshIntro, RustboroCity_Gym_Text_JoshDefeat
	msgbox RustboroCity_Gym_Text_JoshPostBattle, MSGBOX_AUTOCLOSE
	end

RustboroCity_Gym_EventScript_Tommy::
	trainerbattle_single TRAINER_TOMMY, RustboroCity_Gym_Text_TommyIntro, RustboroCity_Gym_Text_TommyDefeat
	msgbox RustboroCity_Gym_Text_TommyPostBattle, MSGBOX_AUTOCLOSE
	end

RustboroCity_Gym_EventScript_Marc::
	trainerbattle_single TRAINER_MARC, RustboroCity_Gym_Text_MarcIntro, RustboroCity_Gym_Text_MarcDefeat
	msgbox RustboroCity_Gym_Text_MarcPostBattle, MSGBOX_AUTOCLOSE
	end

RustboroCity_Gym_EventScript_GymGuide::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_GymGuidePostVictory
	
	@ === PERGUNTA DE DIFICULDADE ===
	msgbox RustboroCity_Gym_Text_AskDifficulty, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq RustboroCity_Gym_HardMode
	goto RustboroCity_Gym_NormalMode

RustboroCity_Gym_HardMode::
	setvar 0x404E, 1
	msgbox RustboroCity_Gym_Text_HardSelected, MSGBOX_DEFAULT
	goto RustboroCity_Gym_EventScript_GymGuideAdvice

RustboroCity_Gym_NormalMode::
	setvar 0x404E, 0
	msgbox RustboroCity_Gym_Text_NormalSelected, MSGBOX_DEFAULT
	goto RustboroCity_Gym_EventScript_GymGuideAdvice

RustboroCity_Gym_EventScript_GymGuideAdvice::
	msgbox RustboroCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
	release
	end

RustboroCity_Gym_EventScript_GymGuidePostVictory::
	msgbox RustboroCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
	release
	end

RustboroCity_Gym_EventScript_LeftGymStatue::
	lockall
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
	goto RustboroCity_Gym_EventScript_GymStatue
	end

RustboroCity_Gym_EventScript_RightGymStatue::
	lockall
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
	goto RustboroCity_Gym_EventScript_GymStatue
	end

RustboroCity_Gym_EventScript_GymStatueCertified::
	msgbox RustboroCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
	releaseall
	end

RustboroCity_Gym_EventScript_GymStatue::
	msgbox RustboroCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
	releaseall
	end

RustboroCity_Gym_EventScript_RegisterRoxanne::
	lockall
	pokenavcall RustboroCity_Gym_Text_RoxanneRegisterCall
	waitmessage
	delay 30
	playfanfare MUS_REGISTER_MATCH_CALL
	msgbox RustboroCity_Gym_Text_RegisteredRoxanne, MSGBOX_DEFAULT
	waitfanfare
	closemessage
	delay 30
	setflag FLAG_ENABLE_ROXANNE_MATCH_CALL
	clearflag FLAG_ENABLE_ROXANNE_FIRST_CALL
	releaseall
	end

RustboroCity_Gym_Text_GymGuideAdvice:
	.string "Yo, how's it going?\p"
	.string "Listen, my friend!\n"
	.string "Would you like to become the CHAMPION?\p"
	.string "I'm no TRAINER, not me, but I can\n"
	.string "sure give you winning advice.\p"
	.string "That's settled, then! We'll aim for the\n"
	.string "POKEMON CHAMPIONSHIP together!\p"
	.string "It's your job as a TRAINER to collect\n"
	.string "GYM BADGES, am I right?\p"
	.string "But GYM LEADERS aren't pushovers!\p"
	.string "And that's where I come in!\n"
	.string "I'm here to provide expert advice!\p"
	.string "TERRA, the GYM LEADER, is a user\n"
	.string "of ROCK-type POKEMON.\p"
	.string "The ROCK type is very durable, but\n"
	.string "it can't stand WATER-type and\n"
	.string "GRASS-type moves.\p"
	.string "Come see me afterwards, if you beat\n"
	.string "the GYM LEADER.\p"
	.string "Well, go for it!$"

RustboroCity_Gym_Text_GymGuidePostVictory:
	.string "Whoa! What a breathtaking victory!\n"
	.string "My cheering must've worked!\p"
	.string "Great!\n"
	.string "Check your TRAINER CARD.\p"
	.string "The STONE BADGE you got should be\n"
	.string "properly recorded on it.\p"
	.string "In other words...\p"
	.string "You've climbed the first step on\n"
	.string "the stairs to the CHAMPIONSHIP!\p"
	.string "That's got to feel awesome!$"

RustboroCity_Gym_Text_JoshIntro:
	.string "Don't take us GYM TRAINERS lightly!\n"
	.string "I'll show you why we're better!$"

RustboroCity_Gym_Text_JoshDefeat:
	.string "You were too good for me...$"

RustboroCity_Gym_Text_JoshPostBattle:
	.string "You haven't seen anything of the ROCK\n"
	.string "type's terrifying power!$"

RustboroCity_Gym_Text_TommyIntro:
	.string "If you can't beat me, you won't stand\n"
	.string "a chance against TERRA!$"

RustboroCity_Gym_Text_TommyDefeat:
	.string "Wow! You've got some potential!$"

RustboroCity_Gym_Text_TommyPostBattle:
	.string "TERRA is stronger than me by\n"
	.string "several times.\p"
	.string "You'd better be on your guard!$"

RustboroCity_Gym_Text_MarcIntro:
	.string "We might be in the middle of town,\n"
	.string "but so what?\p"
	.string "My ROCK POKEMON need room to\n"
	.string "rampage!$"

RustboroCity_Gym_Text_MarcDefeat:
	.string "Oh man, oh man!\n"
	.string "Our challenger is one feisty customer!$"

RustboroCity_Gym_Text_MarcPostBattle:
	.string "I have to hand it to our LEADER.\p"
	.string "It took smarts and sense for her to\n"
	.string "pick the ROCK type at her young age.$"

RustboroCity_Gym_Text_RoxanneIntro:
	.string "Hey! I'm TERRA, the RUSTBORO CITY\n"
	.string "POKEMON GYM LEADER and pro climber!\p"
	.string "I trained on cliffs and mountains,\n"
	.string "always pushing my limits alongside my\n"
	.string "Rock-type POKEMON.\p"
	.string "Show me how you battle, and which\n"
	.string "POKEMON you brought to climb this!$"

RustboroCity_Gym_Text_RoxanneDefeat:
	.string "Whoa... No way...\n"
	.string "So I really lost...\p"
	.string "Damn, this feels just like failing a\n"
	.string "climbing route... Sucks...\p"
	.string "But... I get it.\p"
	.string "According to the POKEMON LEAGUE rules,\n"
	.string "TRAINERS who defeat a GYM LEADER must\n"
	.string "be awarded this.\p"
	.string "Please accept the official POKEMON\n"
	.string "LEAGUE STONE BADGE.$"

RustboroCity_Gym_Text_ReceivedStoneBadge:
	.string "{PLAYER} received the STONE BADGE\n"
	.string "from TERRA.$"

RustboroCity_Gym_Text_StoneBadgeInfoTakeThis:
	.string "The STONE BADGE heightens the ATTACK\n"
	.string "power of your POKEMON.\p"
	.string "It also enables them to use the HM move\n"
	.string "CUT outside of battle.\p"
	.string "Please take this with you, too.$"

RustboroCity_Gym_Text_ExplainRockTomb:
	.string "That TECHNICAL MACHINE, TM39,\n"
	.string "contains ROCK TOMB.\p"
	.string "It not only inflicts damage by dropping\n"
	.string "rocks, it also lowers SPEED.\p"
	.string "If you use a TM, it instantly teaches\n"
	.string "the move to a POKEMON.\p"
	.string "Remember, a TM can be used only once,\n"
	.string "so think before you use it.$"

RustboroCity_Gym_Text_RoxannePostBattle:
	.string "If you ever want a real challenge, come\n"
	.string "back later - I'll have my true team ready.\p"
	.string "And who knows? Maybe we can even hit a\n"
	.string "climbing route together someday!$"

RustboroCity_Gym_Text_GymStatue:
	.string "RUSTBORO CITY POKEMON GYM$"

RustboroCity_Gym_Text_GymStatueCertified:
	.string "RUSTBORO CITY POKEMON GYM\p"
	.string "TERRA'S CERTIFIED TRAINERS:\n"
	.string "{PLAYER}$"

RustboroCity_Gym_Text_RoxanneRegisterCall:
	.string "... ... ... ... ... ...\n"
	.string "... ... ... ... ... Beep!\p"
	.string "TERRA: Hey, {PLAYER}!\n"
	.string "It's TERRA from RUSTBORO CITY.\p"
	.string "I heard from BRAWLY that you're\n"
	.string "climbing the ranks crazy fast.\n"
	.string "Nice work!\p"
	.string "But don't think for a second that\n"
	.string "I'm letting you stay ahead of me.\p"
	.string "I'm training hard and tuning up my\n"
	.string "GYM - next time, I'll have a real wall\n"
	.string "for you to climb!\p"
	.string "I hope you're as excited for our\n"
	.string "rematch as I am!\p"
	.string "... ... ... ... ... ...\n"
	.string "... ... ... ... ... Click!$"

RustboroCity_Gym_Text_RegisteredRoxanne:
	.string "Registered GYM LEADER TERRA\n"
	.string "in the POKENAV.$"

RustboroCity_Gym_Text_RoxannePreRematch:
	.string "TERRA: Hey, you're back! Great to see\n"
	.string "you again on my mountain.\p"
	.string "I'm TERRA, the GYM LEADER here - and since\n"
	.string "our last battle, I hit the summit and\n"
	.string "encountered some badass Rock-type POKEMON.\p"
	.string "I've been training nonstop with them.\n"
	.string "Now I want to see how much we've both\n"
	.string "leveled up!\p"
	.string "Ready for a real rematch?\n"
	.string "Let's CLIMB!$"

RustboroCity_Gym_Text_RoxanneRematchDefeat:
	.string "Grr...\n"
	.string "Again, I have lost...$"

RustboroCity_Gym_Text_RoxannePostRematch:
	.string "TERRA: Guess I've still got some climbing\n"
	.string "to do when it comes to POKEMON battles.\p"
	.string "But realizing that just fires me up even\n"
	.string "more - there's always another peak to reach!$"

RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons:
	.string "TERRA: Hey, you're back! Always good to\n"
	.string "see you on my mountain.\p"
	.string "We've both climbed through tons of\n"
	.string "battles since last time, huh?\p"
	.string "I was hoping to see how much stronger\n"
	.string "we've both become...\p"
	.string "Oh - hold up.\n"
	.string "You've only got one POKEMON with you?\p"
	.string "Come back with at least one more so we\n"
	.string "can have a real climb of a battle!$"

RustboroCity_Gym_Text_AskDifficulty:
	.string "GYM GUIDE: Before you challenge\n"
	.string "TERRA, I can adjust the difficulty!\p"
	.string "Play on HARD mode where trainers\n"
	.string "have optimized teams?$"

RustboroCity_Gym_Text_HardSelected:
	.string "GYM GUIDE: Hard mode selected!\n"
	.string "TERRA is waiting!$"

RustboroCity_Gym_Text_NormalSelected:
	.string "GYM GUIDE: Casual mode selected!\n"
	.string "TERRA is waiting!$"


