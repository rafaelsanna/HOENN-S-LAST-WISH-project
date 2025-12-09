PetalburgWoods_MapScripts::
	.byte 0

PetalburgWoods_EventScript_DevonResearcherLeft::
	lockall
	call PetalburgWoods_EventScript_DevonResearcherIntro
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherApproachPlayerLeft
	waitmovement 0
	msgbox PetalburgWoods_Text_HaveYouSeenShroomish, MSGBOX_DEFAULT
	closemessage
	playbgm MUS_ENCOUNTER_AQUA, FALSE
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaEntrance
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFEntrance
	waitmovement 0
	msgbox PetalburgWoods_Text_IWasGoingToAmbushYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaApproachResearcherLeft
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFApproachResearcherLeft
	waitmovement 0
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
	waitmovement 0
	msgbox PetalburgWoods_Text_HandOverThosePapers, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherFleeToPlayerLeft
	waitmovement 0
	msgbox PetalburgWoods_Text_YouHaveToHelpMe, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaApproachPlayer
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFApproachPlayer
	waitmovement 0
	msgbox PetalburgWoods_Text_NoOneCrossesTeamAqua, MSGBOX_DEFAULT
	trainerbattle_no_intro TRAINER_GRUNT_PETALBURG_WOODS, PetalburgWoods_Text_YoureKiddingMe
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaBackOff
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFBackOff
	waitmovement 0
	call PetalburgWoods_EventScript_DevonResearcherPostBattle
	applymovement LOCALID_PLAYER, PetalburgWoods_Movement_WatchResearcherLeave
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherExitLeft
	waitmovement 0
	goto PetalburgWoods_EventScript_RemoveDevonResearcher
	end

PetalburgWoods_EventScript_DevonResearcherRight::
	lockall
	call PetalburgWoods_EventScript_DevonResearcherIntro
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherApproachPlayerRight
	waitmovement 0
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
	waitmovement 0
	msgbox PetalburgWoods_Text_HaveYouSeenShroomish, MSGBOX_DEFAULT
	closemessage
	playbgm MUS_ENCOUNTER_AQUA, FALSE
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaEntrance
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFEntrance
	waitmovement 0
	msgbox PetalburgWoods_Text_IWasGoingToAmbushYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaApproachResearcherRight
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFApproachResearcherRight
	waitmovement 0
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
	waitmovement 0
	msgbox PetalburgWoods_Text_HandOverThosePapers, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherFleeToPlayerRight
	waitmovement 0
	msgbox PetalburgWoods_Text_YouHaveToHelpMe, MSGBOX_DEFAULT
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
	waitmovement 0
	msgbox PetalburgWoods_Text_NoOneCrossesTeamAqua, MSGBOX_DEFAULT
	trainerbattle_no_intro TRAINER_GRUNT_PETALBURG_WOODS, PetalburgWoods_Text_YoureKiddingMe
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaBackOff
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFBackOff
	waitmovement 0
	call PetalburgWoods_EventScript_DevonResearcherPostBattle
	applymovement LOCALID_PLAYER, PetalburgWoods_Movement_WatchResearcherLeave
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherExitRight
	waitmovement 0
	goto PetalburgWoods_EventScript_RemoveDevonResearcher
	end

PetalburgWoods_EventScript_DevonResearcherIntro::
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherLookAround
	waitmovement 0
	msgbox PetalburgWoods_Text_NotAOneToBeFound, MSGBOX_DEFAULT
	closemessage
	return

PetalburgWoods_EventScript_DevonResearcherPostBattle::
	msgbox PetalburgWoods_Text_YouveGotSomeNerve, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaRunAway
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFRunAway
	waitmovement 0
	removeobject LOCALID_PETALBURG_WOODS_GRUNT
	removeobject LOCALID_PETALBURG_WOODS_GRUNT_F
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
	waitmovement 0
	msgbox PetalburgWoods_Text_ThatWasAwfullyClose, MSGBOX_DEFAULT
	giveitem ITEM_ABILITY_PATCH
	goto_if_eq VAR_RESULT, FALSE, PetalburgWoods_EventScript_BagFull
	goto PetalburgWoods_EventScript_DevonResearcherFinish
	end

PetalburgWoods_EventScript_BagFull::
	msgbox PetalburgWoods_Text_YoureLoadedWithItems, MSGBOX_DEFAULT
	goto PetalburgWoods_EventScript_DevonResearcherFinish
	end

PetalburgWoods_EventScript_DevonResearcherFinish::
	msgbox PetalburgWoods_Text_TeamAquaAfterSomethingInRustboro, MSGBOX_DEFAULT
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherStartExit
	waitmovement 0
	msgbox PetalburgWoods_Text_ICantBeWastingTime, MSGBOX_DEFAULT
	closemessage
	return

PetalburgWoods_EventScript_RemoveDevonResearcher::
	removeobject LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE
	setvar VAR_PETALBURG_WOODS_STATE, 1
	setflag FLAG_LEVELCAP9_AQUA_GRUNT_DEFEATED
	releaseall
	end

@ Movement scripts for Male Grunt
PetalburgWoods_Movement_AquaEntrance:
	walk_down
	walk_down
	delay_16
	delay_16
	step_end

PetalburgWoods_Movement_AquaApproachResearcherLeft:
	walk_fast_down
	walk_fast_down
	step_end

PetalburgWoods_Movement_AquaApproachResearcherRight:
	walk_fast_down
	walk_fast_down
	walk_fast_down
	step_end

PetalburgWoods_Movement_AquaApproachPlayer:
	walk_down
	step_end

PetalburgWoods_Movement_AquaBackOff:
	lock_facing_direction
	walk_up
	unlock_facing_direction
	step_end

PetalburgWoods_Movement_AquaRunAway:
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	delay_16
	delay_16
	step_end

@ Movement scripts for Female Grunt (mirror/synchronized)
PetalburgWoods_Movement_AquaFEntrance:
	walk_down
	walk_down
	delay_16
	delay_16
	step_end

PetalburgWoods_Movement_AquaFApproachResearcherLeft:
	walk_fast_down
	walk_fast_down
	step_end

PetalburgWoods_Movement_AquaFApproachResearcherRight:
	walk_fast_down
	walk_fast_down
	walk_fast_down
	step_end

PetalburgWoods_Movement_AquaFApproachPlayer:
	walk_down
	step_end

PetalburgWoods_Movement_AquaFBackOff:
	lock_facing_direction
	walk_up
	unlock_facing_direction
	step_end

PetalburgWoods_Movement_AquaFRunAway:
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	delay_16
	delay_16
	step_end

@ Researcher movements (unchanged)
PetalburgWoods_Movement_DevonResearcherLookAround:
	face_up
	delay_16
	delay_4
	face_right
	delay_16
	delay_8
	face_left
	delay_16
	delay_8
	face_down
	delay_16
	face_right
	delay_16
	delay_8
	face_up
	delay_16
	step_end

PetalburgWoods_Movement_DevonResearcherApproachPlayerLeft:
	delay_16
	face_player
	walk_down
	walk_down
	step_end

PetalburgWoods_Movement_DevonResearcherApproachPlayerRight:
	delay_16
	face_player
	walk_down
	walk_down
	walk_down
	walk_in_place_faster_right
	step_end

PetalburgWoods_Movement_DevonResearcherFleeToPlayerLeft:
	walk_fast_right
	walk_fast_down
	walk_fast_down
	walk_fast_left
	walk_in_place_faster_up
	step_end

PetalburgWoods_Movement_DevonResearcherFleeToPlayerRight:
	walk_fast_down
	walk_fast_right
	walk_in_place_faster_up
	step_end

PetalburgWoods_Movement_DevonResearcherExitLeft:
	walk_fast_right
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	step_end

PetalburgWoods_Movement_DevonResearcherExitRight:
	walk_fast_left
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	walk_fast_up
	step_end

PetalburgWoods_Movement_DevonResearcherStartExit:
	walk_in_place_faster_down
	delay_16
	delay_16
	delay_16
	delay_16
	delay_16
	face_up
	step_end

PetalburgWoods_Movement_WatchResearcherLeave:
	delay_16
	delay_16
	walk_in_place_faster_up
	step_end

@ Dialog Text with both grunts talking
PetalburgWoods_Text_NotAOneToBeFound:
	.string "Hmm…\n"
	.string "Not a one to be found…$"

PetalburgWoods_Text_HaveYouSeenShroomish:
	.string "Hello, have you seen any POKÉMON\n"
	.string "called SHROOMISH around here?\p"
	.string "I really love that POKÉMON.$"

PetalburgWoods_Text_IWasGoingToAmbushYou:
	.string "MALE GRUNT: We were going to ambush\n"
	.string "you, but you had to dawdle in\l"
	.string "PETALBURG WOODS forever, didn't you?\p"
	.string "FEMALE GRUNT: Yeah! We got sick of\n"
	.string "waiting, so here we are!$"

PetalburgWoods_Text_HandOverThosePapers:
	.string "MALE GRUNT: You! DEVON RESEARCHER!\p"
	.string "FEMALE GRUNT: Hand over those papers!\n"
	.string "Now!$"

PetalburgWoods_Text_YouHaveToHelpMe:
	.string "Aiyeeeh!\p"
	.string "You with that funny outfit,\n"
	.string "almost like a hero cape!\p"
	.string "HELP ME! You must be a TRAINER,\n"
	.string "there's no way a normal person\l"
	.string "would wear clothes like that!\p"
	.string "Give me a hand here!$"

PetalburgWoods_Text_NoOneCrossesTeamAqua:
	.string "FEMALE GRUNT: Hunh? What do you think\n"
	.string "you're doing? Trying to play hero?\p"
	.string "MALE GRUNT: And what's with that\n"
	.string "ridiculous outfit you're draped in?\l"
	.string "Some kind of costume party reject?\p"
	.string "FEMALE GRUNT: Those colors! That cape!\n"
	.string "Did you get dressed in the dark?\p"
	.string "MALE GRUNT: No one who crosses TEAM\n"
	.string "AQUA gets any mercy, fashion disaster!\p"
	.string "BOTH: Come on and battle us!$"

PetalburgWoods_Text_YoureKiddingMe:
	.string "BOTH: You're kidding us! You're tough!$"

PetalburgWoods_Text_YouveGotSomeNerve:
	.string "MALE GRUNT: Grrr… You've got some\n"
	.string "nerve meddling with TEAM AQUA!\p"
	.string "FEMALE GRUNT: Don't think this is over!\n"
	.string "We have business in RUSTBORO too.\p"
	.string "MALE GRUNT: Consider this a temporary\n"
	.string "retreat. We'll meet again!\p"
	.string "FEMALE GRUNT: And maybe next time,\n"
	.string "wear something less embarrassing!$"

PetalburgWoods_Text_ThatWasAwfullyClose:
	.string "Whew…\n"
	.string "That was awfully close!\p"
	.string "Thanks to you, they didn't rob me of\n"
	.string "these important papers.\p"
	.string "I know, I'll give you this ABILITY\n"
	.string "PATCH as my thanks!\p"
	.string "It can change a POKÉMON's ability\n"
	.string "to its rare hidden ability!$"

PetalburgWoods_Text_TeamAquaAfterSomethingInRustboro:
	.string "Didn't those TEAM AQUA thugs say\n"
	.string "they were after something in\l"
	.string "RUSTBORO, too?$"

PetalburgWoods_Text_ICantBeWastingTime:
	.string "Uh-oh! It's a crisis!\n"
	.string "I can't be wasting time!$"

PetalburgWoods_Text_YoureLoadedWithItems:
	.string "You're loaded with items.\n"
	.string "I can't give you this ABILITY PATCH.$"

@ Other NPCs (unchanged)
PetalburgWoods_EventScript_Boy1::
	msgbox PetalburgWoods_Text_StayOutOfTallGrass, MSGBOX_NPC
	end

PetalburgWoods_EventScript_Boy2::
	msgbox PetalburgWoods_Text_HiddenItemsExplanation, MSGBOX_NPC
	end

PetalburgWoods_EventScript_Girl::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_MIRACLE_SEED, PetalburgWoods_EventScript_ExplainMiracleSeed
	msgbox PetalburgWoods_Text_TryUsingThisItem, MSGBOX_DEFAULT
	giveitem ITEM_MIRACLE_SEED
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	setflag FLAG_RECEIVED_MIRACLE_SEED
	release
	end

PetalburgWoods_EventScript_ExplainMiracleSeed::
	msgbox PetalburgWoods_Text_MiracleSeedExplanation, MSGBOX_DEFAULT
	release
	end

PetalburgWoods_EventScript_Sign1::
	msgbox PetalburgWoods_Text_TrainerTipsExperience, MSGBOX_SIGN
	end

PetalburgWoods_EventScript_Sign2::
	msgbox PetalburgWoods_Text_TrainerTipsPP, MSGBOX_SIGN
	end

PetalburgWoods_EventScript_Lyle::
	trainerbattle_single TRAINER_LYLE, PetalburgWoods_Text_GoBugPokemonTeam, PetalburgWoods_Text_ICouldntWin
	msgbox PetalburgWoods_Text_ImOutOfPokeBalls, MSGBOX_AUTOCLOSE
	end

PetalburgWoods_EventScript_Lyla::
	lock
	faceplayer
	trainerbattle_single TRAINER_LYLA, PetalburgWoods_Text_GoBugPokemonTeamF, PetalburgWoods_Text_ICouldntWinF
	msgbox PetalburgWoods_Text_ImOutOfPokeBallsF, MSGBOX_AUTOCLOSE
	release
	end

PetalburgWoods_EventScript_James::
	trainerbattle_single TRAINER_JAMES_1, PetalburgWoods_Text_InstantlyPopularWithBugPokemon, PetalburgWoods_Text_CantBePopularIfILose, PetalburgWoods_EventScript_TryRegisterJames
	specialvar VAR_RESULT, ShouldTryRematchBattle
	goto_if_eq VAR_RESULT, TRUE, PetalburgWoods_EventScript_JamesRematch
	setvar VAR_0x8004, TRAINER_JAMES_1
	specialvar VAR_RESULT, IsTrainerRegistered
	goto_if_eq VAR_RESULT, FALSE, PetalburgWoods_EventScript_TryRegisterJames2
	lock
	msgbox PetalburgWoods_Text_PeopleRespectYou, MSGBOX_DEFAULT
	release
	end

PetalburgWoods_EventScript_TryRegisterJames::
	special PlayerFaceTrainerAfterBattle
	waitmovement 0
	goto_if_set FLAG_HAS_MATCH_CALL, PetalburgWoods_EventScript_RegisterJames
	lock
	release
	end

PetalburgWoods_EventScript_RegisterJames::
	lock
	msgbox PetalburgWoods_Text_IWantRematch1, MSGBOX_DEFAULT
	register_matchcall TRAINER_JAMES_1
	release
	end

PetalburgWoods_EventScript_TryRegisterJames2::
	goto_if_set FLAG_HAS_MATCH_CALL, PetalburgWoods_EventScript_RegisterJames2
	msgbox PetalburgWoods_Text_PeopleRespectYou, MSGBOX_DEFAULT
	release
	end

PetalburgWoods_EventScript_RegisterJames2::
	msgbox PetalburgWoods_Text_IWantRematch2, MSGBOX_DEFAULT
	register_matchcall TRAINER_JAMES_1
	release
	end

PetalburgWoods_EventScript_JamesRematch::
	trainerbattle_rematch TRAINER_JAMES_1, PetalburgWoods_Text_MyPokemonHaveGrown, PetalburgWoods_Text_CantBePopularIfLose
	msgbox PetalburgWoods_Text_IveBeenTrainingHard, MSGBOX_AUTOCLOSE
	end

PetalburgWoods_EventScript_WURMPLEpw::
	lock
	faceplayer
	playmoncry SPECIES_WURMPLE, CRY_MODE_NORMAL
	waitmoncry
	release
	end

PetalburgWoods_EventScript_SHROOMISHpw::
	lock
	faceplayer
	playmoncry SPECIES_SHROOMISH, CRY_MODE_NORMAL
	waitmoncry
	release
	end

@ Remaining text strings (keeping your custom ones)
PetalburgWoods_Text_GoBugPokemonTeam:
	.string "I caught a whole bunch of POKÉMON!\p"
	.string "Go, go, go!\n"
	.string "My BUG POKÉMON team!$"

PetalburgWoods_Text_ICouldntWin:
	.string "I have all these POKÉMON,\n"
	.string "but I couldn't win…$"

PetalburgWoods_Text_ImOutOfPokeBalls:
	.string "I came here last night searching for\n"
	.string "rare POKÉMON…\p"
	.string "And I found something terrifying -\n"
	.string "a black, masked insect POKÉMON.\p"
	.string "It looked like some twisted form of\n"
	.string "beetle… so unsettling…\p"
	.string "I threw all my POKÉ BALLS at it,\n"
	.string "but none could contain it.$"

PetalburgWoods_Text_GoBugPokemonTeamF:
	.string "I’ve been gathering BUG POKéMON\n"
	.string "all morning!\p"
	.string "Come on, let’s see what my tiny\n"
	.string "partners can do!$"

PetalburgWoods_Text_ICouldntWinF:
	.string "Aww… even with all my BUG POKéMON,\n"
	.string "I still couldn't win.$"

PetalburgWoods_Text_ImOutOfPokeBallsF:
	.string "I came here looking for mushrooms\n"
	.string "for my BUG POKéMON!\p"
	.string "This forest is so peaceful during the\n"
	.string "day… almost magical.\p"
	.string "But at night?\n"
	.string "I get this strange chill, like the whole\l"
	.string "woods are holding their breath.\p"
	.string "If you're exploring after sunset,\n"
	.string "be careful, okay?$"

PetalburgWoods_Text_InstantlyPopularWithBugPokemon:
	.string "If you take BUG POKÉMON to school,\n"
	.string "you get to be instantly popular!$"

PetalburgWoods_Text_CantBePopularIfILose:
	.string "I can't be popular if I lose.$"

PetalburgWoods_Text_PeopleRespectYou:
	.string "This forest has grown more sinister\n"
	.string "in recent years…\p"
	.string "At night, people tell frightening\n"
	.string "legends about shadowy figures\l"
	.string "moving between the trees.\p"
	.string "Some say the woods themselves\n"
	.string "have become alive and watchful…$"

PetalburgWoods_Text_IWantRematch1:
	.string "I want a rematch when my BUG\n"
	.string "POKÉMON grow up!\p"
	.string "I'm registering you in my POKÉNAV!$"

PetalburgWoods_Text_IWantRematch2:
	.string "I want a rematch when my BUG \n"
	.string "POKÉMON grow up!\p"
	.string "I'm registering you in my POKÉNAV!$"

PetalburgWoods_Text_MyPokemonHaveGrown:
	.string "My BUG POKÉMON have grown.\n"
	.string "I'll be popular again.$"

PetalburgWoods_Text_CantBePopularIfLose:
	.string "I can't be popular if I lose.$"

PetalburgWoods_Text_IveBeenTrainingHard:
	.string "You get to be popular if you have\n"
	.string "strong POKÉMON, right?\l"
	.string "So, I've been training hard.$"

PetalburgWoods_Text_StayOutOfTallGrass:
	.string "You know, despite all the rumors\n"
	.string "and legends about this forest…\p"
	.string "I'm not afraid to come here.\n"
	.string "In fact, I find it peaceful.\p"
	.string "Being surrounded by nature like this…\n"
	.string "It's so relaxing and tranquil.\p"
	.string "Isn't it wonderful?$"

PetalburgWoods_Text_HiddenItemsExplanation:
	.string "Sometimes, there are things on the\n"
	.string "ground even if you can't see them.\p"
	.string "That's why I always check where I'm\n"
	.string "walking.$"

PetalburgWoods_Text_TryUsingThisItem:
	.string "Oh, neat!\n"
	.string "That's the BADGE from RUSTBORO GYM!\p"
	.string "You must be a TRAINER.\n"
	.string "You should try using this item.$"

PetalburgWoods_Text_MiracleSeedExplanation:
	.string "It's a MIRACLE SEED.\n"
	.string "If a POKÉMON holds that item, its\l"
	.string "GRASS-type moves become stronger.\p"
	.string "Besides MIRACLE SEED, I think there are\n"
	.string "other convenient items for POKÉMON\l"
	.string "to hold.$"

PetalburgWoods_Text_TrainerTipsExperience:
	.string "FOREST WHISPERS\p"
	.string "They say this forest remembers every\n"
	.string "step taken within its shadowy depths.\p"
	.string "Ancient tales speak of travelers who\n"
	.string "entered and emerged changed…\p"
	.string "Their eyes holding secrets the woods\n"
	.string "had whispered to them in the dark.$"

PetalburgWoods_Text_TrainerTipsPP:
	.string "FOREST LEGENDS\p"
	.string "Local folklore tells of a time when\n"
	.string "the trees themselves would move,\p"
	.string "shifting paths to lead wanderers\n"
	.string "toward hidden clearings where rare\l"
	.string "POKÉMON gathered under moonlight.\p"
	.string "Some say the forest still tests those\n"
	.string "who walk its tangled paths today.$"

