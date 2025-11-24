RusturfGrove_MapScripts::
# 2 "data/maps/RusturfGrove/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, RusturfGrove_MapScripts_MAP_SCRIPT_ON_FRAME_TABLE
	.byte 0

RusturfGrove_MapScripts_MAP_SCRIPT_ON_FRAME_TABLE:
# 3 "data/maps/RusturfGrove/scripts.pory"
	map_script_2 VAR_TEMP_0, 0, EveryFrame
	.2byte 0


EveryFrame::
	return


ArtistFragonard::
# 14 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_single TRAINER_FRAGONARD, FragonardIntro, FragonardLose
# 15 "data/maps/RusturfGrove/scripts.pory"
	lock
# 16 "data/maps/RusturfGrove/scripts.pory"
	msgbox ArtistFragonard_Text_0
# 17 "data/maps/RusturfGrove/scripts.pory"
	release
	end


Cutter::
# 30 "data/maps/RusturfGrove/scripts.pory"
	applymovement LOCALID_CUTTER, CutterSurprised
# 31 "data/maps/RusturfGrove/scripts.pory"
	delay 15
# 32 "data/maps/RusturfGrove/scripts.pory"
	faceplayer
# 33 "data/maps/RusturfGrove/scripts.pory"
	lock
# 34 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueBefore, MSGBOX_NPC
# 35 "data/maps/RusturfGrove/scripts.pory"
	copyvar VAR_DIFFICULTY, 0x404E
# 36 "data/maps/RusturfGrove/scripts.pory"
	compare VAR_DIFFICULTY, 0
	goto_if_eq Cutter_2
# 39 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_no_intro TRAINER_TSUBAKI_HARD, CutterLose
Cutter_1:
# 41 "data/maps/RusturfGrove/scripts.pory"
	goto CutterPostBattle
	return

Cutter_2:
# 37 "data/maps/RusturfGrove/scripts.pory"
	trainerbattle_no_intro TRAINER_TSUBAKI_EASY, CutterLose
	goto Cutter_1


CutterPostBattle::
# 45 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueAfter1, MSGBOX_DEFAULT
# 46 "data/maps/RusturfGrove/scripts.pory"
	giveitem ITEM_HM01, 1
# 47 "data/maps/RusturfGrove/scripts.pory"
	msgbox CutterDialogueAfter2, MSGBOX_DEFAULT
# 48 "data/maps/RusturfGrove/scripts.pory"
	fadescreen FADE_TO_BLACK
# 49 "data/maps/RusturfGrove/scripts.pory"
	delay 45
# 50 "data/maps/RusturfGrove/scripts.pory"
	setflag FLAG_HIDE_CUTTER
# 51 "data/maps/RusturfGrove/scripts.pory"
	removeobject LOCALID_CUTTER
# 52 "data/maps/RusturfGrove/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 53 "data/maps/RusturfGrove/scripts.pory"
	release
	end


# 57 "data/maps/RusturfGrove/scripts.pory"
CutterSurprised:
# 58 "data/maps/RusturfGrove/scripts.pory"
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
# 61 "data/maps/RusturfGrove/scripts.pory"
	.string "Oh hey! I didn't see you there.\p"
	.string "My grandpa sent you here to battle me?\n"
	.string "Well then, let me introduce myself.\p"
	.string "I'm Tsubaki, and I'm training to be a\n"
	.string "ninja and a master of the hidden\l"
	.string "technique CUT!\p"
	.string "Now, let's stop yapping and battle!$"

CutterDialogueAfter1::
# 69 "data/maps/RusturfGrove/scripts.pory"
	.string "TSUBAKI: Wow, you're very strong!\n"
	.string "Here, I want you to have this.\p"
	.string "$"

CutterDialogueAfter2::
# 75 "data/maps/RusturfGrove/scripts.pory"
	.string "That is the hidden machine CUT!\n"
	.string "It can cut down small trees with ease!\p"
	.string "I'm gonna go elsewhere to train.\n"
	.string "Hope to battle you again someday!$"

CutterLose::
# 83 "data/maps/RusturfGrove/scripts.pory"
	.string "$"

