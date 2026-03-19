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
# 50 "data/maps/LittlerootCoast/scripts.pory"
	trainerbattle_single TRAINER_PORTINARI, PortinariIntro, PortinariLose
# 51 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 52 "data/maps/LittlerootCoast/scripts.pory"
	msgbox PortinariDialogue
# 53 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


LeeDialogue::
# 29 "data/maps/LittlerootCoast/scripts.pory"
	.string "I'm trying to catch a WINGULL!\n All my other birds get crushed by ROCK-types,\n so I need one that can actually fight back!$"

LeeIntro::
# 35 "data/maps/LittlerootCoast/scripts.pory"
	.string "Birds are amazing, you know?\n Some glide, some dive, some just scream.\n But every one of them has style!\n Think you can handle me?$"

LeeLose::
# 42 "data/maps/LittlerootCoast/scripts.pory"
	.string "That's why I need a WINGULL!\n Terra, the Rustboro Gym Leader's ROCK-types\n flatten every other bird I have!\p But a WINGULL… THAT one might stand a chance!$"

PortinariDialogue::
# 57 "data/maps/LittlerootCoast/scripts.pory"
	.string "I came here to watch the waves.\n This peaceful coast always inspires my art.$"

PortinariIntro::
# 62 "data/maps/LittlerootCoast/scripts.pory"
	.string "The rhythm of the sea… the waves...\n All of it fuels my creativity!\p Let me capture your style in battle!$"

PortinariLose::
# 68 "data/maps/LittlerootCoast/scripts.pory"
	.string "Defeated… yet inspired.\n Your technique has given me a new idea\n for my next painting!$"
