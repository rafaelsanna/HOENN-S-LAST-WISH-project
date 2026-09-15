# 1 "data/maps/MeteorFalls_StevensCave/scripts.pory"

# 2 "data/maps/MeteorFalls_StevensCave/scripts.pory"
MeteorFalls_StevensCave_MapScripts::
# 3 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.byte 0
# 4 "data/maps/MeteorFalls_StevensCave/scripts.pory"

# 5 "data/maps/MeteorFalls_StevensCave/scripts.pory"
MeteorFalls_StevensCave_EventScript_Steven::
# 6 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	lock
# 7 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	goto_if_set FLAG_DEFEATED_METEOR_FALLS_STEVEN, MeteorFalls_StevensCave_EventScript_Defeated
# 8 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	waitse
# 9 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	playse SE_PIN
# 10 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_STEVEN, Common_Movement_ExclamationMark
# 11 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	waitmovement 0
# 12 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_STEVEN, Common_Movement_Delay48
# 13 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	waitmovement 0
# 14 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_STEVEN, Common_Movement_FacePlayer
# 15 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	waitmovement 0
# 16 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 17 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	msgbox MeteorFalls_StevensCave_Text_ShouldKnowHowGoodIAmExpectWorst, MSGBOX_DEFAULT
# 18 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	removefieldmugshot
# 19 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	trainerbattle_no_intro TRAINER_STEVEN, MeteorFalls_StevensCave_Text_StevenDefeat
# 20 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 21 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	msgbox MeteorFalls_StevensCave_Text_MyPredictionCameTrue, MSGBOX_DEFAULT
# 22 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	removefieldmugshot
# 23 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	setflag FLAG_DEFEATED_METEOR_FALLS_STEVEN
# 24 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	release
# 25 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	end
# 26 "data/maps/MeteorFalls_StevensCave/scripts.pory"

# 27 "data/maps/MeteorFalls_StevensCave/scripts.pory"
MeteorFalls_StevensCave_EventScript_Defeated::
# 28 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_STEVEN, Common_Movement_FacePlayer
# 29 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	waitmovement 0
# 30 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 31 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	msgbox MeteorFalls_StevensCave_Text_MyPredictionCameTrue, MSGBOX_DEFAULT
# 32 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	removefieldmugshot
# 33 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	release
# 34 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	end
# 35 "data/maps/MeteorFalls_StevensCave/scripts.pory"

# 36 "data/maps/MeteorFalls_StevensCave/scripts.pory"
MeteorFalls_StevensCave_Text_ShouldKnowHowGoodIAmExpectWorst:
# 37 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "STELLA: {PLAYER}!\p"
# 38 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "You found me! I came to study the\n"
# 39 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "stones in this cave.\p"
# 40 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "But you know I do more than study\n"
# 41 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "ancient ruins.\p"
# 42 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "We fought side by side at the\n"
# 43 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "MOSSDEEP SPACE CENTER.\p"
# 44 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "Now, let's see how far you've come!\p"
# 45 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "Give me everything you've got!$"
# 46 "data/maps/MeteorFalls_StevensCave/scripts.pory"

# 47 "data/maps/MeteorFalls_StevensCave/scripts.pory"
MeteorFalls_StevensCave_Text_StevenDefeat:
# 48 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "You've grown so strong...\p"
# 49 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "I'm proud of you!$"
# 50 "data/maps/MeteorFalls_StevensCave/scripts.pory"

# 51 "data/maps/MeteorFalls_StevensCave/scripts.pory"
MeteorFalls_StevensCave_Text_MyPredictionCameTrue:
# 52 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "STELLA: You've come so far.\p"
# 53 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "When we met in GRANITE CAVE, you had\n"
# 54 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "already stood up to MAGMA.\p"
# 55 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "I knew you had something special. Now\n"
# 56 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "you're the CHAMPION!\p"
# 57 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "So, what's next, weird friend?\p"
# 58 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "More mysteries? More battles?\p"
# 59 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "Whatever you choose, keep that\n"
# 60 "data/maps/MeteorFalls_StevensCave/scripts.pory"
	.string "courage of yours.$"
