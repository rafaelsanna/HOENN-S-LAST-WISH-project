LittlerootCoast_MapScripts::
	.byte 0


NidoranMOverworld::
# 4 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 5 "data/maps/LittlerootCoast/scripts.pory"
	faceplayer
# 6 "data/maps/LittlerootCoast/scripts.pory"
	playmoncry SPECIES_NIDORAN_M, CRY_MODE_NORMAL
# 7 "data/maps/LittlerootCoast/scripts.pory"
	waitmoncry
# 8 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


NidoranFOverworld::
# 13 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 14 "data/maps/LittlerootCoast/scripts.pory"
	faceplayer
# 15 "data/maps/LittlerootCoast/scripts.pory"
	playmoncry SPECIES_NIDORAN_F, CRY_MODE_NORMAL
# 16 "data/maps/LittlerootCoast/scripts.pory"
	waitmoncry
# 17 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


BirdKeeperLee::
# 22 "data/maps/LittlerootCoast/scripts.pory"
	trainerbattle_single TRAINER_LEE, LeeIntro, LeeLose
# 23 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 24 "data/maps/LittlerootCoast/scripts.pory"
	msgbox LeeDialogue
# 25 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


ArtistPortinari::
# 53 "data/maps/LittlerootCoast/scripts.pory"
	trainerbattle_single TRAINER_PORTINARI, PortinariIntro, PortinariLose
# 54 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 55 "data/maps/LittlerootCoast/scripts.pory"
	msgbox PortinariDialogue
# 56 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


LeeDialogue::
# 32 "data/maps/LittlerootCoast/scripts.pory"
	.string "I'm trying to catch a WINGULL! All my\n"
	.string "other birds get crushed by ROCK-types,\l"
	.string "so I need one that can actually fight\l"
	.string "back!$"

LeeIntro::
# 38 "data/maps/LittlerootCoast/scripts.pory"
	.string "Birds are amazing, you know? Some glide,\n"
	.string "some dive, some just scream. But every\l"
	.string "one of them has style! Think you can\l"
	.string "handle me?$"

LeeLose::
# 45 "data/maps/LittlerootCoast/scripts.pory"
	.string "That's why I need a WINGULL! Terra, the\n"
	.string "Rustboro Gym Leader's ROCK-types\l"
	.string "flatten every other bird I have!\p"
	.string "But a WINGULL… THAT one might stand a\n"
	.string "chance!$"

PortinariDialogue::
# 60 "data/maps/LittlerootCoast/scripts.pory"
	.string "I came here to watch the waves. This\n"
	.string "peaceful coast always inspires my art.$"

PortinariIntro::
# 65 "data/maps/LittlerootCoast/scripts.pory"
	.string "The rhythm of the sea… the waves… All\n"
	.string "of it fuels my creativity!\p"
	.string "Let me capture your style in battle!$"

PortinariLose::
# 71 "data/maps/LittlerootCoast/scripts.pory"
	.string "Defeated… yet inspired. Your technique\n"
	.string "has given me a new idea for my next\l"
	.string "painting!$"
