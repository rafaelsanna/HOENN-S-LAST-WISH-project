RustboroCity_Gym_MapScripts::
	.byte 0

RustboroCity_Gym_EventScript_Roxanne::
	lock
	faceplayer
	@ === VERIFICAÇÃO MANUAL DA DIFICULDADE ===
	copyvar VAR_0x8000, 0x404E
	compare VAR_0x8000, 1
	goto_if_eq RustboroCity_Gym_RoxanneHard
	
	@ Modo Normal - TRAINER_ROXANNE 
	trainerbattle_single TRAINER_ROXANNE, RustboroCity_Gym_Text_RoxanneIntro, RustboroCity_Gym_Text_RoxanneDefeat, RustboroCity_Gym_EventScript_RoxanneDefeated, NO_MUSIC
	goto RustboroCity_Gym_AfterBattle

RustboroCity_Gym_RoxanneHard::
	@ Modo Hard - TRAINER_ROXANNE_1 
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

RustboroCity_Gym_EventScript_Raboutou::
	trainerbattle_single TRAINER_RABOUTOU, RustboroCity_Gym_Text_RaboutouIntro, RustboroCity_Gym_Text_RaboutouDefeat
	msgbox RustboroCity_Gym_Text_RaboutouPostBattle, MSGBOX_AUTOCLOSE
	end

RustboroCity_Gym_EventScript_Janja::
	trainerbattle_single TRAINER_JANJA, RustboroCity_Gym_Text_JanjaIntro, RustboroCity_Gym_Text_JanjaDefeat
	msgbox RustboroCity_Gym_Text_JanjaPostBattle, MSGBOX_AUTOCLOSE
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
	.string "I'm no TRAINER, but I can\n"
	.string "give you winning advice.\p"
	.string "We'll aim for the POKEMON\n"
	.string "CHAMPIONSHIP together!\p"
	.string "It's your job to collect\n"
	.string "GYM BADGES, am I right?\p"
	.string "But GYM LEADERS aren't pushovers!\n"
	.string "That's where I come in!\p"
	.string "TERRA uses ROCK-type POKEMON.\p"
	.string "ROCK type is durable, but\n"
	.string "can't stand WATER and GRASS moves.\p"
	.string "Come see me if you beat\n"
	.string "the GYM LEADER.\p"
	.string "Well, go for it!$"

RustboroCity_Gym_Text_GymGuidePostVictory:
	.string "Whoa! What a breathtaking victory!\n"
	.string "My cheering must've worked!\p"
	.string "Great! Check your TRAINER CARD.\p"
	.string "The STONE BADGE you got should be\n"
	.string "recorded on it.\p"
	.string "You've climbed the first step on\n"
	.string "the stairs to the CHAMPIONSHIP!\p"
	.string "That's got to feel awesome!$"

RustboroCity_Gym_Text_JoshIntro:
	.string "Heh... I'm a totally fearless CLIMBER!\n"
	.string "Yep, not scared of heights at all!\p"
	.string "Get ready to see some real skill!$"

RustboroCity_Gym_Text_JoshDefeat:
	.string "Oof... Guess my 'cool guy' act\n"
	.string "wasn't enough... What a fall!$"

RustboroCity_Gym_Text_JoshPostBattle:
	.string "Alright, alright... I admit it!\n"
	.string "I'm actually TERRIFIED of heights!\p"
	.string "I only carry this climbing gear\n"
	.string "to impress girls...$"

RustboroCity_Gym_Text_RaboutouIntro:
	.string "Think you can beat me?\n"
	.string "I've climbed HOENN's tallest peaks!\p"
	.string "Show me what you're made of!$"

RustboroCity_Gym_Text_RaboutouDefeat:
	.string "Wow! You've really got potential!$"

RustboroCity_Gym_Text_RaboutouPostBattle:
	.string "TERRA's strength is on a whole\n"
	.string "different level.\p"
	.string "You'd better come prepared!$"

RustboroCity_Gym_Text_JanjaIntro:
	.string "We're in town, sure...\n"
	.string "But mountains are in my heart!\p"
	.string "My ROCK POKEMON need room to\n"
	.string "stretch out and rampage!$"

RustboroCity_Gym_Text_JanjaDefeat:
	.string "Whoooa! Our challenger's got\n"
	.string "some real fire!$"

RustboroCity_Gym_Text_JanjaPostBattle:
	.string "I've explored Hoenn's peaks for years.\p"
	.string "That's how I met TERRA. Smart kid,\n"
	.string "chose ROCK type for its strength.$"

RustboroCity_Gym_Text_RoxanneIntro:
	.string "Hey! I'm TERRA, RUSTBORO CITY\n"
	.string "GYM LEADER and pro climber!\p"
	.string "I trained on cliffs and mountains,\n"
	.string "pushing my limits with my Rock-types.\p"
	.string "Show me how you battle, and which\n"
	.string "POKEMON you brought to climb this!$"

RustboroCity_Gym_Text_RoxanneDefeat:
	.string "Whoa... No way...\n"
	.string "So I really lost...\p"
	.string "Damn, this feels like failing a\n"
	.string "climbing route... Sucks...\p"
	.string "But... I get it.\n"
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
	.string "That TM39 contains ROCK TOMB.\p"
	.string "It inflicts damage and lowers SPEED.\p"
	.string "A TM instantly teaches the move\n"
	.string "to a POKEMON.\p"
	.string "Remember, a TM can be used only once,\n"
	.string "so think before you use it.$"

RustboroCity_Gym_Text_RoxannePostBattle:
	.string "If you want a real challenge, come\n"
	.string "back later - I'll have my true team ready.\p"
	.string "Maybe we can even hit a climbing\n"
	.string "route together someday!$"

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
	.string "RENTON called me - said there's some\n"
	.string "rookie with a cape who looks badass.\p"
	.string "Then he invited me for a night out\n"
	.string "to get into trouble around town.\p"
	.string "Obviously I said no! I've got rocks\n"
	.string "to climb and a Gym to run!\p"
	.string "But don't get too comfortable ahead!\n"
	.string "I'm training hard for our rematch!\p"
	.string "... ... ... ... ... ...\n"
	.string "... ... ... ... ... Click!$"

RustboroCity_Gym_Text_RegisteredRoxanne:
	.string "Registered GYM LEADER TERRA\n"
	.string "in the POKENAV.$"

RustboroCity_Gym_Text_RoxannePreRematch:
	.string "TERRA: Hey, you're back! Great to see\n"
	.string "you again on my mountain.\p"
	.string "I'm TERRA - since our last battle,\n"
	.string "I hit the summit and found some\l"
	.string "badass Rock-type POKEMON.\p"
	.string "I've been training nonstop.\n"
	.string "Let's see how much we've leveled up!\p"
	.string "Ready for a real rematch?\n"
	.string "Let's CLIMB!$"

RustboroCity_Gym_Text_RoxanneRematchDefeat:
	.string "Grr...\n"
	.string "Again, I have lost...$"

RustboroCity_Gym_Text_RoxannePostRematch:
	.string "TERRA: Guess I've still got some climbing\n"
	.string "to do in POKEMON battles.\p"
	.string "But that fires me up - there's always\n"
	.string "another peak to reach!$"

RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons:
	.string "TERRA: Hey, you're back! Always good\n"
	.string "to see you on my mountain.\p"
	.string "We've both climbed through tons\n"
	.string "of battles since last time, huh?\p"
	.string "Oh - hold up.\n"
	.string "You've only got one POKEMON?\p"
	.string "Come back with at least one more\n"
	.string "for a real climb of a battle!$"

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




