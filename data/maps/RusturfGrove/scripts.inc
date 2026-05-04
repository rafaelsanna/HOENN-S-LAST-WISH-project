# 1 "data/maps/RusturfGrove/scripts.pory"

# 2 "data/maps/RusturfGrove/scripts.pory"
RusturfGrove_MapScripts::
# 3 "data/maps/RusturfGrove/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, RusturfGrove_MapScripts_MAP_SCRIPT_ON_FRAME_TABLE
# 4 "data/maps/RusturfGrove/scripts.pory"
	.byte 0
# 5 "data/maps/RusturfGrove/scripts.pory"

# 6 "data/maps/RusturfGrove/scripts.pory"
RusturfGrove_MapScripts_MAP_SCRIPT_ON_FRAME_TABLE:
# 7 "data/maps/RusturfGrove/scripts.pory"
	map_script_2 VAR_TEMP_0, 0, EveryFrame
# 8 "data/maps/RusturfGrove/scripts.pory"
	.2byte 0
# 9 "data/maps/RusturfGrove/scripts.pory"

# 10 "data/maps/RusturfGrove/scripts.pory"

# 11 "data/maps/RusturfGrove/scripts.pory"
EveryFrame::
# 12 "data/maps/RusturfGrove/scripts.pory"
	return
# 13 "data/maps/RusturfGrove/scripts.pory"

# 14 "data/maps/RusturfGrove/scripts.pory"

# 15 "data/maps/RusturfGrove/scripts.pory"
ArtistFragonard::
# 16 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_single TRAINER_FRAGONARD, FragonardIntro, FragonardLose
# 17 "data/maps/RusturfGrove/scripts.pory"
	lock
# 18 "data/maps/RusturfGrove/scripts.pory"
	msgbox ArtistFragonard_Text_0
# 19 "data/maps/RusturfGrove/scripts.pory"
	release
# 20 "data/maps/RusturfGrove/scripts.pory"
	end
# 21 "data/maps/RusturfGrove/scripts.pory"

# 22 "data/maps/RusturfGrove/scripts.pory"

# 23 "data/maps/RusturfGrove/scripts.pory"
Cutter::
# 24 "data/maps/RusturfGrove/scripts.pory"
	applymovement LOCALID_CUTTER, CutterSurprised
# 25 "data/maps/RusturfGrove/scripts.pory"
	delay 15
# 26 "data/maps/RusturfGrove/scripts.pory"
	faceplayer
# 27 "data/maps/RusturfGrove/scripts.pory"
	lock
# 28 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueBefore, MSGBOX_NPC
# 29 "data/maps/RusturfGrove/scripts.pory"
	getdifficulty VAR_RESULT
# 30 "data/maps/RusturfGrove/scripts.pory"
	goto_if_eq VAR_RESULT, 1, Cutter_Hard
# 31 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_single TRAINER_TSUBAKI_CASUAL, CutterIntro, CutterLose, CutterPostBattle
# 32 "data/maps/RusturfGrove/scripts.pory"
	return
# 33 "data/maps/RusturfGrove/scripts.pory"

# 34 "data/maps/RusturfGrove/scripts.pory"
Cutter_Hard:
# 35 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_single TRAINER_TSUBAKI_HARD, CutterIntro, CutterLose, CutterPostBattle
# 36 "data/maps/RusturfGrove/scripts.pory"
	return
# 37 "data/maps/RusturfGrove/scripts.pory"

# 38 "data/maps/RusturfGrove/scripts.pory"
CutterPostBattle::
# 39 "data/maps/RusturfGrove/scripts.pory"
# 44 "data/maps/RusturfGrove/scripts.pory"
# 40 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueAfter1, MSGBOX_DEFAULT
# 41 "data/maps/RusturfGrove/scripts.pory"
# 45 "data/maps/RusturfGrove/scripts.pory"
# 42 "data/maps/RusturfGrove/scripts.pory"
	giveitem ITEM_HM01, 1
# 43 "data/maps/RusturfGrove/scripts.pory"
# 46 "data/maps/RusturfGrove/scripts.pory"
# 44 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueAfter2, MSGBOX_DEFAULT
# 45 "data/maps/RusturfGrove/scripts.pory"
# 47 "data/maps/RusturfGrove/scripts.pory"
# 46 "data/maps/RusturfGrove/scripts.pory"
	fadescreen FADE_TO_BLACK
# 47 "data/maps/RusturfGrove/scripts.pory"
# 48 "data/maps/RusturfGrove/scripts.pory"
# 48 "data/maps/RusturfGrove/scripts.pory"
	delay 45
# 49 "data/maps/RusturfGrove/scripts.pory"
# 49 "data/maps/RusturfGrove/scripts.pory"
# 50 "data/maps/RusturfGrove/scripts.pory"
	setflag FLAG_HIDE_CUTTER
# 51 "data/maps/RusturfGrove/scripts.pory"
# 50 "data/maps/RusturfGrove/scripts.pory"
# 52 "data/maps/RusturfGrove/scripts.pory"
	removeobject LOCALID_CUTTER
# 53 "data/maps/RusturfGrove/scripts.pory"
# 51 "data/maps/RusturfGrove/scripts.pory"
# 54 "data/maps/RusturfGrove/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 55 "data/maps/RusturfGrove/scripts.pory"
# 52 "data/maps/RusturfGrove/scripts.pory"
# 56 "data/maps/RusturfGrove/scripts.pory"
	release
# 57 "data/maps/RusturfGrove/scripts.pory"
	end
# 58 "data/maps/RusturfGrove/scripts.pory"

# 59 "data/maps/RusturfGrove/scripts.pory"

# 60 "data/maps/RusturfGrove/scripts.pory"
# 56 "data/maps/RusturfGrove/scripts.pory"
# 61 "data/maps/RusturfGrove/scripts.pory"
CutterSurprised:
# 62 "data/maps/RusturfGrove/scripts.pory"
# 57 "data/maps/RusturfGrove/scripts.pory"
# 63 "data/maps/RusturfGrove/scripts.pory"
	emote_exclamation_mark
# 64 "data/maps/RusturfGrove/scripts.pory"
	step_end
# 65 "data/maps/RusturfGrove/scripts.pory"

# 66 "data/maps/RusturfGrove/scripts.pory"
ArtistFragonard_Text_0:
# 67 "data/maps/RusturfGrove/scripts.pory"
# 16 "data/maps/RusturfGrove/scripts.pory"
# 68 "data/maps/RusturfGrove/scripts.pory"
	.string "My favorite things to paint are\n"
# 69 "data/maps/RusturfGrove/scripts.pory"
	.string "forests, but I get jumped by wild\l"
# 70 "data/maps/RusturfGrove/scripts.pory"
	.string "pokémon sometimes!$"
# 71 "data/maps/RusturfGrove/scripts.pory"

# 72 "data/maps/RusturfGrove/scripts.pory"
FragonardIntro::
# 73 "data/maps/RusturfGrove/scripts.pory"
# 21 "data/maps/RusturfGrove/scripts.pory"
# 74 "data/maps/RusturfGrove/scripts.pory"
	.string "Isn't this place just beautiful?$"
# 75 "data/maps/RusturfGrove/scripts.pory"

# 76 "data/maps/RusturfGrove/scripts.pory"
FragonardLose::
# 77 "data/maps/RusturfGrove/scripts.pory"
# 25 "data/maps/RusturfGrove/scripts.pory"
# 78 "data/maps/RusturfGrove/scripts.pory"
	.string "If only I were as strong as\n"
# 79 "data/maps/RusturfGrove/scripts.pory"
	.string "this place was pretty...$"
# 80 "data/maps/RusturfGrove/scripts.pory"

# 81 "data/maps/RusturfGrove/scripts.pory"
CutterDialogueBefore::
# 82 "data/maps/RusturfGrove/scripts.pory"
# 60 "data/maps/RusturfGrove/scripts.pory"
# 83 "data/maps/RusturfGrove/scripts.pory"
	.string "Oh hey! I didn't see you there.\p"
# 84 "data/maps/RusturfGrove/scripts.pory"
	.string "My grandpa sent you here to battle me?\n"
# 85 "data/maps/RusturfGrove/scripts.pory"
	.string "Well then, let me introduce myself.\p"
# 86 "data/maps/RusturfGrove/scripts.pory"
	.string "I'm Tsubaki, and I'm training to be a\n"
# 87 "data/maps/RusturfGrove/scripts.pory"
	.string "ninja and a master of the hidden\l"
# 88 "data/maps/RusturfGrove/scripts.pory"
	.string "technique CUT!\p"
# 89 "data/maps/RusturfGrove/scripts.pory"
	.string "Now, enough yapping. Let's battle!$"
# 90 "data/maps/RusturfGrove/scripts.pory"

# 91 "data/maps/RusturfGrove/scripts.pory"
CutterDialogueAfter1::
# 92 "data/maps/RusturfGrove/scripts.pory"
# 68 "data/maps/RusturfGrove/scripts.pory"
# 93 "data/maps/RusturfGrove/scripts.pory"
	.string "TSUBAKI: Wow, you're very strong!\n"
# 94 "data/maps/RusturfGrove/scripts.pory"
	.string "Here, I want you to have this.\p"
# 95 "data/maps/RusturfGrove/scripts.pory"
	.string "$"
# 96 "data/maps/RusturfGrove/scripts.pory"

# 97 "data/maps/RusturfGrove/scripts.pory"
CutterDialogueAfter2::
# 98 "data/maps/RusturfGrove/scripts.pory"
# 74 "data/maps/RusturfGrove/scripts.pory"
# 99 "data/maps/RusturfGrove/scripts.pory"
	.string "That is the hidden machine CUT!\n"
# 100 "data/maps/RusturfGrove/scripts.pory"
	.string "It can cut down small trees with ease!\p"
# 101 "data/maps/RusturfGrove/scripts.pory"
	.string "I'm gonna go elsewhere to train.\n"
# 102 "data/maps/RusturfGrove/scripts.pory"
	.string "Hope to battle you again someday!$"
# 103 "data/maps/RusturfGrove/scripts.pory"

# 104 "data/maps/RusturfGrove/scripts.pory"
CutterIntro::
# 105 "data/maps/RusturfGrove/scripts.pory"
	.string "You want to test your strength against\n"
# 106 "data/maps/RusturfGrove/scripts.pory"
	.string "a ninja-in-training? Bring it on!$"
# 107 "data/maps/RusturfGrove/scripts.pory"

# 108 "data/maps/RusturfGrove/scripts.pory"
CutterLose::
# 109 "data/maps/RusturfGrove/scripts.pory"
	.string "I wasn't expecting a defeat...$"
