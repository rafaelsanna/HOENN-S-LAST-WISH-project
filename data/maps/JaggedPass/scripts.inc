JaggedPass_MapScripts::
# 2 "data/maps/JaggedPass/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, JaggedPass_OnResume
# 3 "data/maps/JaggedPass/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, JaggedPass_OnTransition
# 4 "data/maps/JaggedPass/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, JaggedPass_OnLoad
	.byte 0


JaggedPass_OnResume::
# 8 "data/maps/JaggedPass/scripts.pory"
	setstepcallback STEP_CB_ASH
# 9 "data/maps/JaggedPass/scripts.pory"
	compare VAR_JAGGED_PASS_STATE, 0
	goto_if_eq JaggedPass_OnResume_1
	return

JaggedPass_OnResume_1:
# 10 "data/maps/JaggedPass/scripts.pory"
	call JaggedPass_EventScript_CheckHasMagmaEmblem
	return


JaggedPass_EventScript_CheckHasMagmaEmblem::
# 15 "data/maps/JaggedPass/scripts.pory"
	checkitem ITEM_MAGMA_EMBLEM
# 16 "data/maps/JaggedPass/scripts.pory"
	compare VAR_RESULT, TRUE
	goto_if_eq JaggedPass_EventScript_CheckHasMagmaEmblem_2
JaggedPass_EventScript_CheckHasMagmaEmblem_1:
	return

JaggedPass_EventScript_CheckHasMagmaEmblem_2:
# 17 "data/maps/JaggedPass/scripts.pory"
	goto JaggedPass_EventScript_SetReadyToOpenHideout
	goto JaggedPass_EventScript_CheckHasMagmaEmblem_1


JaggedPass_EventScript_SetReadyToOpenHideout::
# 23 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_JAGGED_PASS_STATE, 1
	return


JaggedPass_OnTransition::
# 28 "data/maps/JaggedPass/scripts.pory"
	compare VAR_JAGGED_PASS_ASH_WEATHER, 1
	goto_if_eq JaggedPass_OnTransition_1
	return

JaggedPass_OnTransition_1:
# 29 "data/maps/JaggedPass/scripts.pory"
	call JaggedPass_EventScript_SetWeatherAsh
	return


JaggedPass_EventScript_SetWeatherAsh::
# 34 "data/maps/JaggedPass/scripts.pory"
	setweather WEATHER_VOLCANIC_ASH
# 35 "data/maps/JaggedPass/scripts.pory"
	doweather
	return


JaggedPass_OnLoad::
# 40 "data/maps/JaggedPass/scripts.pory"
	compare VAR_JAGGED_PASS_STATE, 1
	goto_if_le JaggedPass_OnLoad_1
	return

JaggedPass_OnLoad_1:
# 41 "data/maps/JaggedPass/scripts.pory"
	goto JaggedPass_EventScript_ConcealHideoutEntrance
	return


JaggedPass_EventScript_ConcealHideoutEntrance::
# 46 "data/maps/JaggedPass/scripts.pory"
	setmetatile 16, 17, METATILE_Lavaridge_RockWall, TRUE
# 47 "data/maps/JaggedPass/scripts.pory"
	setmetatile 16, 18, METATILE_Lavaridge_RockWall, TRUE
	return


JaggedPass_EventScript_OpenMagmaHideout::
# 51 "data/maps/JaggedPass/scripts.pory"
	lockall
# 52 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8004, 1
# 53 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8005, 1
# 54 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8006, 8
# 55 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8007, 5
# 56 "data/maps/JaggedPass/scripts.pory"
	special ShakeCamera
# 57 "data/maps/JaggedPass/scripts.pory"
	waitstate
# 58 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_BoulderShakingInResponseToEmblem
# 59 "data/maps/JaggedPass/scripts.pory"
	closemessage
# 60 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8004, 1
# 61 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8005, 1
# 62 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8006, 16
# 63 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_0x8007, 3
# 64 "data/maps/JaggedPass/scripts.pory"
	special ShakeCamera
# 65 "data/maps/JaggedPass/scripts.pory"
	waitstate
# 66 "data/maps/JaggedPass/scripts.pory"
	playse SE_EFFECTIVE
# 67 "data/maps/JaggedPass/scripts.pory"
	setmetatile 16, 17, METATILE_Lavaridge_CaveEntrance_Top, TRUE
# 68 "data/maps/JaggedPass/scripts.pory"
	setmetatile 16, 18, METATILE_Lavaridge_CaveEntrance_Bottom, FALSE
# 69 "data/maps/JaggedPass/scripts.pory"
	special DrawWholeMapView
# 70 "data/maps/JaggedPass/scripts.pory"
	delay 30
# 71 "data/maps/JaggedPass/scripts.pory"
	setvar VAR_JAGGED_PASS_STATE, 2
# 72 "data/maps/JaggedPass/scripts.pory"
	waitse
# 73 "data/maps/JaggedPass/scripts.pory"
	releaseall
	return


JaggedPass_EventScript_MagmaHideoutGuard::
# 77 "data/maps/JaggedPass/scripts.pory"
	lockall
# 78 "data/maps/JaggedPass/scripts.pory"
	goto_if_set FLAG_BEAT_MAGMA_GRUNT_JAGGED_PASS, JaggedPass_EventScript_MagmaHideoutGuard_2
JaggedPass_EventScript_MagmaHideoutGuard_1:
# 81 "data/maps/JaggedPass/scripts.pory"
	waitse
# 82 "data/maps/JaggedPass/scripts.pory"
	playse SE_PIN
# 83 "data/maps/JaggedPass/scripts.pory"
	applymovement LOCALID_MAGMA_HIDEOUT_GUARD, Common_Movement_ExclamationMark
# 84 "data/maps/JaggedPass/scripts.pory"
	waitmovement 0
# 85 "data/maps/JaggedPass/scripts.pory"
	applymovement LOCALID_MAGMA_HIDEOUT_GUARD, Common_Movement_Delay48
# 86 "data/maps/JaggedPass/scripts.pory"
	waitmovement 0
# 87 "data/maps/JaggedPass/scripts.pory"
	applymovement LOCALID_MAGMA_HIDEOUT_GUARD, Common_Movement_FacePlayer
# 88 "data/maps/JaggedPass/scripts.pory"
	waitmovement 0
# 89 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_GruntIntro
# 90 "data/maps/JaggedPass/scripts.pory"
	closemessage
# 91 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_no_intro TRAINER_GRUNT_JAGGED_PASS, JaggedPass_Text_GruntDefeat
# 92 "data/maps/JaggedPass/scripts.pory"
	setflag FLAG_BEAT_MAGMA_GRUNT_JAGGED_PASS
# 93 "data/maps/JaggedPass/scripts.pory"
	applymovement LOCALID_MAGMA_HIDEOUT_GUARD, Common_Movement_FaceOriginalDirection
# 94 "data/maps/JaggedPass/scripts.pory"
	waitmovement 0
# 95 "data/maps/JaggedPass/scripts.pory"
	releaseall
	return

JaggedPass_EventScript_MagmaHideoutGuard_2:
# 79 "data/maps/JaggedPass/scripts.pory"
	goto JaggedPass_EventScript_GuardDefeated
	goto JaggedPass_EventScript_MagmaHideoutGuard_1


JaggedPass_EventScript_GuardDefeated::
# 99 "data/maps/JaggedPass/scripts.pory"
	applymovement LOCALID_MAGMA_HIDEOUT_GUARD, Common_Movement_FacePlayer
# 100 "data/maps/JaggedPass/scripts.pory"
	waitmovement 0
# 101 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_GoWhereverYouWant
# 102 "data/maps/JaggedPass/scripts.pory"
	closemessage
# 103 "data/maps/JaggedPass/scripts.pory"
	applymovement LOCALID_MAGMA_HIDEOUT_GUARD, Common_Movement_FaceOriginalDirection
# 104 "data/maps/JaggedPass/scripts.pory"
	waitmovement 0
# 105 "data/maps/JaggedPass/scripts.pory"
	releaseall
	return


JaggedPass_EventScript_Eric::
# 109 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_single TRAINER_ERIC, JaggedPass_Text_EricIntro, JaggedPass_Text_EricDefeat
# 110 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_EricPostBattle, MSGBOX_AUTOCLOSE
	return


JaggedPass_EventScript_Diana::
# 114 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_single TRAINER_DIANA_1, JaggedPass_Text_DianaIntro, JaggedPass_Text_DianaDefeat
# 115 "data/maps/JaggedPass/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 116 "data/maps/JaggedPass/scripts.pory"
	compare VAR_RESULT, TRUE
	goto_if_eq JaggedPass_EventScript_Diana_2
JaggedPass_EventScript_Diana_1:
# 119 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_DianaPostBattle
# 120 "data/maps/JaggedPass/scripts.pory"
	release
	return

JaggedPass_EventScript_Diana_2:
# 117 "data/maps/JaggedPass/scripts.pory"
	goto JaggedPass_EventScript_DianaRematch
	goto JaggedPass_EventScript_Diana_1


JaggedPass_EventScript_RegisterDiana::
# 124 "data/maps/JaggedPass/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 127 "data/maps/JaggedPass/scripts.pory"
	release
	return


JaggedPass_EventScript_DianaRematch::
# 131 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_rematch TRAINER_DIANA_1, JaggedPass_Text_DianaRematchIntro, JaggedPass_Text_DianaRematchDefeat
# 132 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_DianaPostRematch, MSGBOX_AUTOCLOSE
	return


JaggedPass_EventScript_Ethan::
# 136 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_single TRAINER_ETHAN_1, JaggedPass_Text_EthanIntro, JaggedPass_Text_EthanDefeat
# 137 "data/maps/JaggedPass/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 138 "data/maps/JaggedPass/scripts.pory"
	compare VAR_RESULT, TRUE
	goto_if_eq JaggedPass_EventScript_Ethan_2
JaggedPass_EventScript_Ethan_1:
# 141 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_EthanPostBattle
# 142 "data/maps/JaggedPass/scripts.pory"
	release
	return

JaggedPass_EventScript_Ethan_2:
# 139 "data/maps/JaggedPass/scripts.pory"
	goto JaggedPass_EventScript_EthanRematch
	goto JaggedPass_EventScript_Ethan_1


JaggedPass_EventScript_RegisterEthan::
# 146 "data/maps/JaggedPass/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 149 "data/maps/JaggedPass/scripts.pory"
	release
	return


JaggedPass_EventScript_EthanRematch::
# 153 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_rematch TRAINER_ETHAN_1, JaggedPass_Text_EthanRematchIntro, JaggedPass_Text_EthanRematchDefeat
# 154 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_EthanPostRematch, MSGBOX_AUTOCLOSE
	return


JaggedPass_EventScript_Julio::
# 158 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_single TRAINER_JULIO, JaggedPass_Text_JulioIntro, JaggedPass_Text_JulioDefeat
# 159 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_JulioPostBattle, MSGBOX_AUTOCLOSE
	return


JaggedPass_EventScript_Autumn::
# 163 "data/maps/JaggedPass/scripts.pory"
	trainerbattle_single TRAINER_AUTUMN, JaggedPass_Text_AutumnIntro, JaggedPass_Text_AutumnDefeat
# 164 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_AutumnPostBattle, MSGBOX_AUTOCLOSE
	return


JaggedPass_EventScript_MinerNPC::
# 171 "data/maps/JaggedPass/scripts.pory"
	lock
# 172 "data/maps/JaggedPass/scripts.pory"
	faceplayer
# 173 "data/maps/JaggedPass/scripts.pory"
	goto_if_set FLAG_LEARNED_MINING, JaggedPass_EventScript_MinerNPC_1
# 180 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_MinerNPC_Teach
# 181 "data/maps/JaggedPass/scripts.pory"
	closemessage
# 182 "data/maps/JaggedPass/scripts.pory"
	setflag FLAG_LEARNED_MINING
# 183 "data/maps/JaggedPass/scripts.pory"
	fadescreen FADE_TO_BLACK
# 184 "data/maps/JaggedPass/scripts.pory"
	special StartMining
# 185 "data/maps/JaggedPass/scripts.pory"
	release
	return

JaggedPass_EventScript_MinerNPC_1:
# 174 "data/maps/JaggedPass/scripts.pory"
	msgbox JaggedPass_Text_MinerNPC_AlreadyKnows
# 175 "data/maps/JaggedPass/scripts.pory"
	closemessage
# 176 "data/maps/JaggedPass/scripts.pory"
	fadescreen FADE_TO_BLACK
# 177 "data/maps/JaggedPass/scripts.pory"
	special StartMining
# 178 "data/maps/JaggedPass/scripts.pory"
	release
	return


JaggedPass_Text_EricIntro::
# 189 "data/maps/JaggedPass/scripts.pory"
	.string "MT. CHIMNEY's JAGGED PASS…\p"
	.string "Now this is what I've always wanted\n"
	.string "in a mountain.\p"
	.string "This jagged bumpiness…\n"
	.string "It rocks my soul!$"

JaggedPass_Text_EricDefeat::
# 197 "data/maps/JaggedPass/scripts.pory"
	.string "Losing left me bitter!$"

JaggedPass_Text_EricPostBattle::
# 201 "data/maps/JaggedPass/scripts.pory"
	.string "Yes, I did lose at POKéMON…\p"
	.string "But, when it comes to the love of\n"
	.string "the mountains, I have you beat!$"

JaggedPass_Text_DianaIntro::
# 207 "data/maps/JaggedPass/scripts.pory"
	.string "This place isn't your casual hike.\n"
	.string "It's not suited for a picnic.$"

JaggedPass_Text_DianaDefeat::
# 212 "data/maps/JaggedPass/scripts.pory"
	.string "Ohhh, no!\n"
	.string "The ground is too bumpy…$"

JaggedPass_Text_DianaPostBattle::
# 217 "data/maps/JaggedPass/scripts.pory"
	.string "Did you know?\p"
	.string "Some people cleverly ride their\n"
	.string "bicycles up this horribly bumpy pass.$"

JaggedPass_Text_DianaRegister::
# 223 "data/maps/JaggedPass/scripts.pory"
	.string "Will you ever be back in this area?\n"
	.string "If you do return, I'd like a rematch.$"

JaggedPass_Text_DianaRematchIntro::
# 228 "data/maps/JaggedPass/scripts.pory"
	.string "Picnics are fun wherever you go.\n"
	.string "Just like POKéMON!$"

JaggedPass_Text_DianaRematchDefeat::
# 233 "data/maps/JaggedPass/scripts.pory"
	.string "I only lost because the ground is\n"
	.string "too bumpy!$"

JaggedPass_Text_DianaPostRematch::
# 238 "data/maps/JaggedPass/scripts.pory"
	.string "I'll forget about losing and just\n"
	.string "enjoy this bumpy hike.$"

JaggedPass_Text_EthanIntro::
# 243 "data/maps/JaggedPass/scripts.pory"
	.string "JAGGED PASS is hard to walk on.\n"
	.string "It's a good place for training.$"

JaggedPass_Text_EthanDefeat::
# 248 "data/maps/JaggedPass/scripts.pory"
	.string "It was all over while we were still\n"
	.string "trying to find a good footing…$"

JaggedPass_Text_EthanPostBattle::
# 253 "data/maps/JaggedPass/scripts.pory"
	.string "If I had an ACRO BIKE, I'd be able to\n"
	.string "jump ledges.$"

JaggedPass_Text_EthanRegister::
# 258 "data/maps/JaggedPass/scripts.pory"
	.string "When I get more used to this bumpiness,\n"
	.string "I'll be sure to win!\p"
	.string "Can you register me in your POKéNAV?$"

JaggedPass_Text_EthanRematchIntro::
# 264 "data/maps/JaggedPass/scripts.pory"
	.string "I got used to this bumpiness.\n"
	.string "I sing while I climb now.$"

JaggedPass_Text_EthanRematchDefeat::
# 269 "data/maps/JaggedPass/scripts.pory"
	.string "It's still not easy to battle on this\n"
	.string "bumpy ground…$"

JaggedPass_Text_EthanPostRematch::
# 274 "data/maps/JaggedPass/scripts.pory"
	.string "I should get an ACRO BIKE from RYDEL\n"
	.string "in MAUVILLE CITY…$"

JaggedPass_Text_GruntIntro::
# 279 "data/maps/JaggedPass/scripts.pory"
	.string "Wah!\n"
	.string "What are you doing here?\p"
	.string "What am I doing in a place like this?\p"
	.string "What business is it of yours?$"

JaggedPass_Text_GruntDefeat::
# 286 "data/maps/JaggedPass/scripts.pory"
	.string "Urrrgh…\p"
	.string "I should've ducked into our HIDEOUT\n"
	.string "right away…$"

JaggedPass_Text_GoWhereverYouWant::
# 292 "data/maps/JaggedPass/scripts.pory"
	.string "Okay, oh-kay!\n"
	.string "I admit it--you're strong!\p"
	.string "Don't worry about me.\n"
	.string "Go wherever you want!$"

JaggedPass_Text_BoulderShakingInResponseToEmblem::
# 299 "data/maps/JaggedPass/scripts.pory"
	.string "Oh! This boulder is shaking in response\n"
	.string "to the MAGMA EMBLEM!$"

JaggedPass_Text_JulioIntro::
# 304 "data/maps/JaggedPass/scripts.pory"
	.string "Aiyeeh! It's awfully scary to shoot\n"
	.string "down the mountain in one go!$"

JaggedPass_Text_JulioDefeat::
# 309 "data/maps/JaggedPass/scripts.pory"
	.string "I feel like I'm falling apart…$"

JaggedPass_Text_JulioPostBattle::
# 313 "data/maps/JaggedPass/scripts.pory"
	.string "My bicycle bounced around so much,\n"
	.string "my rear end's sore…$"

JaggedPass_Text_AutumnIntro::
# 318 "data/maps/JaggedPass/scripts.pory"
	.string "I climb this hill every day.\n"
	.string "I have confidence in my strength!$"

JaggedPass_Text_AutumnDefeat::
# 323 "data/maps/JaggedPass/scripts.pory"
	.string "Hmm…\n"
	.string "What went wrong?$"

JaggedPass_Text_AutumnPostBattle::
# 328 "data/maps/JaggedPass/scripts.pory"
	.string "What is that odd rock protrusion\n"
	.string "a little up the hill from here?$"

JaggedPass_Text_MinerNPC_Teach::
# 333 "data/maps/JaggedPass/scripts.pory"
	.string "Hm? You want to know how to dig\n"
	.string "for treasure in the rocks?\p"
	.string "It's easy! Just tap the rock where\n"
	.string "you think something's buried.\p"
	.string "Watch closely, I'll show you how\n"
	.string "it's done!$"

JaggedPass_Text_MinerNPC_AlreadyKnows::
# 342 "data/maps/JaggedPass/scripts.pory"
	.string "Go on, give the rocks a try!\n"
	.string "You never know what you'll dig up.$"
