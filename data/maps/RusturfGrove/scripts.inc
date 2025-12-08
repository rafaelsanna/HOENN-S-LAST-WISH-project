RusturfGrove_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, RusturfGrove_MapScripts_MAP_SCRIPT_ON_FRAME_TABLE
	.byte 0

RusturfGrove_MapScripts_MAP_SCRIPT_ON_FRAME_TABLE:
	map_script_2 VAR_TEMP_0, 0, EveryFrame
	.2byte 0


EveryFrame::
	return


ArtistFragonard::
	trainerbattle_single TRAINER_FRAGONARD, FragonardIntro, FragonardLose
	lock
	msgbox ArtistFragonard_Text_0
	release
	end


Cutter::
	applymovement LOCALID_CUTTER, CutterSurprised
	delay 15
	faceplayer
	lock
	msgbox CutterDialogueBefore, MSGBOX_NPC
	getdifficulty VAR_RESULT
	goto_if_eq VAR_RESULT, 1, Cutter_Hard
	trainerbattle_no_intro TRAINER_TSUBAKI_CASUAL, CutterLose
	goto CutterPostBattle

Cutter_Hard:
	trainerbattle_no_intro TRAINER_TSUBAKI_HARD, CutterLose
	goto CutterPostBattle


CutterPostBattle::
# 44 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueAfter1, MSGBOX_DEFAULT
# 45 "data/maps/RusturfGrove/scripts.pory"
	giveitem ITEM_HM01, 1
# 46 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueAfter2, MSGBOX_DEFAULT
# 47 "data/maps/RusturfGrove/scripts.pory"
	fadescreen FADE_TO_BLACK
# 48 "data/maps/RusturfGrove/scripts.pory"
	delay 45
# 49 "data/maps/RusturfGrove/scripts.pory"
	setflag FLAG_HIDE_CUTTER
# 50 "data/maps/RusturfGrove/scripts.pory"
	removeobject LOCALID_CUTTER
# 51 "data/maps/RusturfGrove/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 52 "data/maps/RusturfGrove/scripts.pory"
	release
	end


# 56 "data/maps/RusturfGrove/scripts.pory"
CutterSurprised:
# 57 "data/maps/RusturfGrove/scripts.pory"
	emote_exclamation_mark
	step_end

ArtistFragonard_Text_0:
# 16 "data/maps/RusturfGrove/scripts.pory"
	.string "My favorite things to paint are\n"
	.string "forests, but I get jumped by wild\l"
	.string "pokémon sometimes!$"

FragonardIntro::
# 21 "data/maps/RusturfGrove/scripts.pory"
	.string "Isn't this place just beautiful?$"

FragonardLose::
# 25 "data/maps/RusturfGrove/scripts.pory"
	.string "If only I were as strong as this place was pretty...$"

CutterDialogueBefore::
# 60 "data/maps/RusturfGrove/scripts.pory"
	.string "Oh hey! I didn't see you there.\p"
	.string "My grandpa sent you here to battle me?\n"
	.string "Well then, let me introduce myself.\p"
	.string "I'm Tsubaki, and I'm training to be a\n"
	.string "ninja and a master of the hidden\l"
	.string "technique CUT!\p"
	.string "Now, let's stop yapping and battle!$"

CutterDialogueAfter1::
# 68 "data/maps/RusturfGrove/scripts.pory"
	.string "TSUBAKI: Wow, you're very strong!\n"
	.string "Here, I want you to have this.\p"
	.string "$"

CutterDialogueAfter2::
# 74 "data/maps/RusturfGrove/scripts.pory"
	.string "That is the hidden machine CUT!\n"
	.string "It can cut down small trees with ease!\p"
	.string "I'm gonna go elsewhere to train.\n"
	.string "Hope to battle you again someday!$"

CutterLose::
# 82 "data/maps/RusturfGrove/scripts.pory"
	.string "$"
