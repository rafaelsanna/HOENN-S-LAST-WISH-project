LittlerootCoast_MapScripts::
	.byte 0


BirdKeeperLee::
# 4 "data/maps/LittlerootCoast/scripts.pory"
	trainerbattle_single TRAINER_LEE, LeeIntro, LeeLose
# 5 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 6 "data/maps/LittlerootCoast/scripts.pory"
	msgbox BirdKeeperLee_Text_0
# 7 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


BirdKeeperLee_Text_0:
    .string "I'm trying to catch a WINGULL!\n"
    .string "All my other birds get crushed by ROCK-types,\n"
    .string "so I need one that can actually fight back!$"

LeeIntro::
    .string "Birds are amazing, you know?\n"
    .string "Some glide, some dive, some just scream.\n"
    .string "But every one of them has style!\p"
    .string "Think you can handle me?$"

LeeLose::
    .string "That's why I need a WINGULL!\n"
    .string "Terra, Rustboro Gym Leader her ROCK-types\n"
    .string "flatten every other bird I have!\p"
    .string "But a WINGULL… THAT one might stand a chance!$"

ArtistPortinari::
# 4 "data/maps/LittlerootCoast/scripts.pory"
	trainerbattle_single TRAINER_PORTINARI, PortinariIntro, PortinariLose
# 5 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 6 "data/maps/LittlerootCoast/scripts.pory"
	msgbox ArtistPortinari_Text_0
# 7 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


ArtistPortinari_Text_0:
# 6 "data/maps/LittlerootCoast/scripts.pory"
	.string "I came here to watch the waves.\n"
	.string "This peaceful coast always inspires my art.$"

PortinariIntro::
# 11 "data/maps/LittlerootCoast/scripts.pory"
	.string "The rhythm of the sea… the waves...\n"
	.string "All of it fuels my creativity!\p"
	.string "Let me capture your style in battle!$"

PortinariLose::
# 15 "data/maps/LittlerootCoast/scripts.pory"
	.string "Defeated… yet inspired.\n"
	.string "Your technique has given me a new idea\n"
	.string "for my next painting!$"


	