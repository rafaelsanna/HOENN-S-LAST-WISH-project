RusturfGrove_MapScripts::
	.byte 0


ArtistFragonard::
# 4 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_single TRAINER_FRAGONARD, FragonardIntro, FragonardLose
# 5 "data/maps/RusturfGrove/scripts.pory"
	lock
# 6 "data/maps/RusturfGrove/scripts.pory"
	msgbox ArtistFragonard_Text_0
# 7 "data/maps/RusturfGrove/scripts.pory"
	release
	end


ArtistFragonard_Text_0:
# 6 "data/maps/RusturfGrove/scripts.pory"
	.string "My favorite thing to paint are forests,\n"
	.string "but I get jumped by wild pokémon\l"
	.string "sometimes!$"

FragonardIntro::
# 11 "data/maps/RusturfGrove/scripts.pory"
	.string "Isn't this place just beautiful?$"

FragonardLose::
# 15 "data/maps/RusturfGrove/scripts.pory"
	.string "If only I were as strong as this place was pretty...$"
