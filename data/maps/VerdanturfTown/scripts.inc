# 1 "data/maps/VerdanturfTown/scripts.pory"

# 2 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_MapScripts::
# 3 "data/maps/VerdanturfTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, VerdanturfTown_OnTransition
# 4 "data/maps/VerdanturfTown/scripts.pory"
	.byte 0
# 5 "data/maps/VerdanturfTown/scripts.pory"

# 6 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_OnTransition:
# 7 "data/maps/VerdanturfTown/scripts.pory"
	setflag FLAG_VISITED_VERDANTURF_TOWN
# 8 "data/maps/VerdanturfTown/scripts.pory"
	setvar VAR_CONTEST_HALL_STATE, 0
# 9 "data/maps/VerdanturfTown/scripts.pory"
	end
# 10 "data/maps/VerdanturfTown/scripts.pory"

# 11 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_Twin::
# 12 "data/maps/VerdanturfTown/scripts.pory"
	lock
# 13 "data/maps/VerdanturfTown/scripts.pory"
	faceplayer
# 14 "data/maps/VerdanturfTown/scripts.pory"
	goto_if_set FLAG_RUSTURF_TUNNEL_OPENED, VerdanturfTown_EventScript_TwinTunnelOpen
# 15 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_ManTryingToDigTunnel, MSGBOX_DEFAULT
# 16 "data/maps/VerdanturfTown/scripts.pory"
	applymovement LOCALID_VERDANTURF_TWIN, Common_Movement_FaceOriginalDirection
# 17 "data/maps/VerdanturfTown/scripts.pory"
	waitmovement 0
# 18 "data/maps/VerdanturfTown/scripts.pory"
	release
# 19 "data/maps/VerdanturfTown/scripts.pory"
	end
# 20 "data/maps/VerdanturfTown/scripts.pory"

# 21 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_TwinTunnelOpen::
# 22 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_ManDugTunnelForLove, MSGBOX_DEFAULT
# 23 "data/maps/VerdanturfTown/scripts.pory"
	applymovement LOCALID_VERDANTURF_TWIN, Common_Movement_FaceOriginalDirection
# 24 "data/maps/VerdanturfTown/scripts.pory"
	waitmovement 0
# 25 "data/maps/VerdanturfTown/scripts.pory"
	release
# 26 "data/maps/VerdanturfTown/scripts.pory"
	end
# 27 "data/maps/VerdanturfTown/scripts.pory"

# 28 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_Man::
# 29 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_AirCleanHere, MSGBOX_NPC
# 30 "data/maps/VerdanturfTown/scripts.pory"
	end
# 31 "data/maps/VerdanturfTown/scripts.pory"

# 32 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_House_EventScript_RedCardJudge::
# 33 "data/maps/VerdanturfTown/scripts.pory"
	lock
# 34 "data/maps/VerdanturfTown/scripts.pory"
	faceplayer
# 35 "data/maps/VerdanturfTown/scripts.pory"
	goto_if_set FLAG_RED_CARD_JUDGE, VerdanturfTown_EventScript_OldJudgeAfterReward
# 36 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_OldJudgeIntro, MSGBOX_YESNO
# 37 "data/maps/VerdanturfTown/scripts.pory"
	goto_if_eq VAR_RESULT, NO, VerdanturfTown_EventScript_OldJudgeNo
# 38 "data/maps/VerdanturfTown/scripts.pory"
	closemessage
# 39 "data/maps/VerdanturfTown/scripts.pory"
	checkitemspace ITEM_RED_CARD, 1
# 40 "data/maps/VerdanturfTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VerdanturfTown_EventScript_OldJudgeBagFull
# 41 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_OldJudgeYes, MSGBOX_DEFAULT
# 42 "data/maps/VerdanturfTown/scripts.pory"
	giveitem ITEM_RED_CARD
# 43 "data/maps/VerdanturfTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VerdanturfTown_EventScript_OldJudgeBagFull
# 44 "data/maps/VerdanturfTown/scripts.pory"
	setflag FLAG_RED_CARD_JUDGE
# 45 "data/maps/VerdanturfTown/scripts.pory"
	release
# 46 "data/maps/VerdanturfTown/scripts.pory"
	end
# 47 "data/maps/VerdanturfTown/scripts.pory"

# 48 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_OldJudgeNo::
# 49 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_OldJudgeNo, MSGBOX_DEFAULT
# 50 "data/maps/VerdanturfTown/scripts.pory"
	release
# 51 "data/maps/VerdanturfTown/scripts.pory"
	end
# 52 "data/maps/VerdanturfTown/scripts.pory"

# 53 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_OldJudgeBagFull::
# 54 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_OldJudgeBagFull, MSGBOX_DEFAULT
# 55 "data/maps/VerdanturfTown/scripts.pory"
	release
# 56 "data/maps/VerdanturfTown/scripts.pory"
	end
# 57 "data/maps/VerdanturfTown/scripts.pory"

# 58 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_OldJudgeAfterReward::
# 59 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_OldJudgeAfterReward, MSGBOX_DEFAULT
# 60 "data/maps/VerdanturfTown/scripts.pory"
	release
# 61 "data/maps/VerdanturfTown/scripts.pory"
	end
# 62 "data/maps/VerdanturfTown/scripts.pory"

# 63 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_Camper::
# 64 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_MakeBattleTentDebut, MSGBOX_NPC
# 65 "data/maps/VerdanturfTown/scripts.pory"
	end
# 66 "data/maps/VerdanturfTown/scripts.pory"

# 67 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_Boy::
# 68 "data/maps/VerdanturfTown/scripts.pory"
	lock
# 69 "data/maps/VerdanturfTown/scripts.pory"
	faceplayer
# 70 "data/maps/VerdanturfTown/scripts.pory"
	goto_if_set FLAG_RUSTURF_TUNNEL_OPENED, VerdanturfTown_EventScript_BoyTunnelOpen
# 71 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_GuyTryingToBustThroughCave, MSGBOX_DEFAULT
# 72 "data/maps/VerdanturfTown/scripts.pory"
	release
# 73 "data/maps/VerdanturfTown/scripts.pory"
	end
# 74 "data/maps/VerdanturfTown/scripts.pory"

# 75 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_BoyTunnelOpen::
# 76 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_EasyToGetToRustboroNow, MSGBOX_DEFAULT
# 77 "data/maps/VerdanturfTown/scripts.pory"
	release
# 78 "data/maps/VerdanturfTown/scripts.pory"
	end
# 79 "data/maps/VerdanturfTown/scripts.pory"

# 80 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_TownSign::
# 81 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_TownSign, MSGBOX_SIGN
# 82 "data/maps/VerdanturfTown/scripts.pory"
	end
# 83 "data/maps/VerdanturfTown/scripts.pory"

# 84 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_WandasHouseSign::
# 85 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_WandasHouse, MSGBOX_SIGN
# 86 "data/maps/VerdanturfTown/scripts.pory"
	end
# 87 "data/maps/VerdanturfTown/scripts.pory"

# 88 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_BattleTentSign::
# 89 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_BattleTentSign, MSGBOX_SIGN
# 90 "data/maps/VerdanturfTown/scripts.pory"
	end
# 91 "data/maps/VerdanturfTown/scripts.pory"

# 92 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_RusturfTunnelSign::
# 93 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_RusturfTunnelSign, MSGBOX_SIGN
# 94 "data/maps/VerdanturfTown/scripts.pory"
	end
# 95 "data/maps/VerdanturfTown/scripts.pory"

# 96 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_EventScript_CafeSign::
# 97 "data/maps/VerdanturfTown/scripts.pory"
	msgbox VerdanturfTown_Text_CafeSign, MSGBOX_SIGN
# 98 "data/maps/VerdanturfTown/scripts.pory"
	end
# 99 "data/maps/VerdanturfTown/scripts.pory"

# 100 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_ManTryingToDigTunnel:
# 101 "data/maps/VerdanturfTown/scripts.pory"
	.string "My papa told me.\p"
# 102 "data/maps/VerdanturfTown/scripts.pory"
	.string "He says this tunnel is full of\n"
# 103 "data/maps/VerdanturfTown/scripts.pory"
	.string "timid POKéMON.\p"
# 104 "data/maps/VerdanturfTown/scripts.pory"
	.string "They get all scared of loud noise and\n"
# 105 "data/maps/VerdanturfTown/scripts.pory"
	.string "make a big uproar.\p"
# 106 "data/maps/VerdanturfTown/scripts.pory"
	.string "So they had to stop the big tunnel\n"
# 107 "data/maps/VerdanturfTown/scripts.pory"
	.string "project.\p"
# 108 "data/maps/VerdanturfTown/scripts.pory"
	.string "But there's one man. He's trying to dig\n"
# 109 "data/maps/VerdanturfTown/scripts.pory"
	.string "the tunnel by himself!$"
# 110 "data/maps/VerdanturfTown/scripts.pory"

# 111 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_ManDugTunnelForLove:
# 112 "data/maps/VerdanturfTown/scripts.pory"
	.string "There was a man who dug a tunnel for\n"
# 113 "data/maps/VerdanturfTown/scripts.pory"
	.string "a lady he loved.\p"
# 114 "data/maps/VerdanturfTown/scripts.pory"
	.string "I don't really get it, but hey!$"
# 115 "data/maps/VerdanturfTown/scripts.pory"

# 116 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_AirCleanHere:
# 117 "data/maps/VerdanturfTown/scripts.pory"
	.string "The way the winds blow, volcanic ash\n"
# 118 "data/maps/VerdanturfTown/scripts.pory"
	.string "is never blown in this direction.\p"
# 119 "data/maps/VerdanturfTown/scripts.pory"
	.string "The air is clean and delicious here.\n"
# 120 "data/maps/VerdanturfTown/scripts.pory"
	.string "Living here should do wonders for even\l"
# 121 "data/maps/VerdanturfTown/scripts.pory"
	.string "frail and sickly people.$"
# 122 "data/maps/VerdanturfTown/scripts.pory"

# 123 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_MakeBattleTentDebut:
# 124 "data/maps/VerdanturfTown/scripts.pory"
	.string "Every time I get back from a camping\n"
# 125 "data/maps/VerdanturfTown/scripts.pory"
	.string "trip, I stop by the CAFE.\p"
# 126 "data/maps/VerdanturfTown/scripts.pory"
	.string "The HOT COFFEE is so comforting, and\n"
# 127 "data/maps/VerdanturfTown/scripts.pory"
	.string "the ICED COFFEE will perk you right up!.$"
# 128 "data/maps/VerdanturfTown/scripts.pory"

# 129 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_GuyTryingToBustThroughCave:
# 130 "data/maps/VerdanturfTown/scripts.pory"
	.string "Did you see the cave next to the\n"
# 131 "data/maps/VerdanturfTown/scripts.pory"
	.string "POKéMON MART?\p"
# 132 "data/maps/VerdanturfTown/scripts.pory"
	.string "There's a guy in there who's trying to\n"
# 133 "data/maps/VerdanturfTown/scripts.pory"
	.string "bust up boulders so he can bust out\l"
# 134 "data/maps/VerdanturfTown/scripts.pory"
	.string "through to the other side.\p"
# 135 "data/maps/VerdanturfTown/scripts.pory"
	.string "It'd be great if we could go through…\n"
# 136 "data/maps/VerdanturfTown/scripts.pory"
	.string "It'll make it easy to visit RUSTBORO.$"
# 137 "data/maps/VerdanturfTown/scripts.pory"

# 138 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_EasyToGetToRustboroNow:
# 139 "data/maps/VerdanturfTown/scripts.pory"
	.string "That cave next to the POKéMON MART\n"
# 140 "data/maps/VerdanturfTown/scripts.pory"
	.string "is now a tunnel to the other side.\p"
# 141 "data/maps/VerdanturfTown/scripts.pory"
	.string "It's great--it's easy to go shop for\n"
# 142 "data/maps/VerdanturfTown/scripts.pory"
	.string "new DEVON products in RUSTBORO now.$"
# 143 "data/maps/VerdanturfTown/scripts.pory"

# 144 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_TownSign:
# 145 "data/maps/VerdanturfTown/scripts.pory"
	.string "VERDANTURF TOWN\p"
# 146 "data/maps/VerdanturfTown/scripts.pory"
	.string "“The windswept highlands with the\n"
# 147 "data/maps/VerdanturfTown/scripts.pory"
	.string "sweet fragrance of grass.”$"
# 148 "data/maps/VerdanturfTown/scripts.pory"

# 149 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_WandasHouse:
# 150 "data/maps/VerdanturfTown/scripts.pory"
	.string "WANDA'S HOUSE$"
# 151 "data/maps/VerdanturfTown/scripts.pory"

# 152 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_BattleTentSign:
# 153 "data/maps/VerdanturfTown/scripts.pory"
	.string "BATTLE TENT VERDANTURF SITE\n"
# 154 "data/maps/VerdanturfTown/scripts.pory"
	.string "“Feast Your Eyes on Battles!”$"
# 155 "data/maps/VerdanturfTown/scripts.pory"

# 156 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_RusturfTunnelSign:
# 157 "data/maps/VerdanturfTown/scripts.pory"
	.string "RUSTURF TUNNEL\n"
# 158 "data/maps/VerdanturfTown/scripts.pory"
	.string "“Linking RUSTBORO and VERDANTURF\p"
# 159 "data/maps/VerdanturfTown/scripts.pory"
	.string "“The tunnel project has been\n"
# 160 "data/maps/VerdanturfTown/scripts.pory"
	.string "canceled.”$"
# 161 "data/maps/VerdanturfTown/scripts.pory"

# 162 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_CafeSign:
# 163 "data/maps/VerdanturfTown/scripts.pory"
	.string "VERDANTURF CAFE\n"
# 164 "data/maps/VerdanturfTown/scripts.pory"
	.string "Fresh coffee brewed daily!$"
# 165 "data/maps/VerdanturfTown/scripts.pory"

# 166 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_OldJudgeIntro:
# 167 "data/maps/VerdanturfTown/scripts.pory"
	.string "OLD JUDGE: I used to be a battle\n"
# 168 "data/maps/VerdanturfTown/scripts.pory"
	.string "JUDGE, you know.\p"
# 169 "data/maps/VerdanturfTown/scripts.pory"
	.string "I even served as a JUDGE for the\n"
# 170 "data/maps/VerdanturfTown/scripts.pory"
	.string "ELITE FOUR once.\p"
# 171 "data/maps/VerdanturfTown/scripts.pory"
	.string "But when I retired, I realized\n"
# 172 "data/maps/VerdanturfTown/scripts.pory"
	.string "something rather sad...\p"
# 173 "data/maps/VerdanturfTown/scripts.pory"
	.string "The glory always goes to the\n"
# 174 "data/maps/VerdanturfTown/scripts.pory"
	.string "TRAINERS and their POKéMON.\p"
# 175 "data/maps/VerdanturfTown/scripts.pory"
	.string "Hardly anyone remembers the people\n"
# 176 "data/maps/VerdanturfTown/scripts.pory"
	.string "who make the difficult calls.\p"
# 177 "data/maps/VerdanturfTown/scripts.pory"
	.string "Tell me... Do you think a JUDGE's\n"
# 178 "data/maps/VerdanturfTown/scripts.pory"
	.string "work is important?$"
# 179 "data/maps/VerdanturfTown/scripts.pory"

# 180 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_OldJudgeNo:
# 181 "data/maps/VerdanturfTown/scripts.pory"
	.string "OLD JUDGE: Yeah... I understand.\n"
# 182 "data/maps/VerdanturfTown/scripts.pory"
	.string "The fame belongs to the battlers.\p"
# 183 "data/maps/VerdanturfTown/scripts.pory"
	.string "That's how it's always been.$"
# 184 "data/maps/VerdanturfTown/scripts.pory"

# 185 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_OldJudgeYes:
# 186 "data/maps/VerdanturfTown/scripts.pory"
	.string "OLD JUDGE: You... really think so?\n"
# 187 "data/maps/VerdanturfTown/scripts.pory"
	.string "You think serving the ELITE FOUR\p"
# 188 "data/maps/VerdanturfTown/scripts.pory"
	.string "as a JUDGE was impressive?\p"
# 189 "data/maps/VerdanturfTown/scripts.pory"
	.string "Heh... Thank you. I haven't heard\n"
# 190 "data/maps/VerdanturfTown/scripts.pory"
	.string "words like that in a long time.\p"
# 191 "data/maps/VerdanturfTown/scripts.pory"
	.string "Please, take this RED CARD.\n"
# 192 "data/maps/VerdanturfTown/scripts.pory"
	.string "Consider it an old JUDGE's thanks.$"
# 193 "data/maps/VerdanturfTown/scripts.pory"

# 194 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_OldJudgeBagFull:
# 195 "data/maps/VerdanturfTown/scripts.pory"
	.string "OLD JUDGE: Ah, your BAG is full.\n"
# 196 "data/maps/VerdanturfTown/scripts.pory"
	.string "Make some room and come back.\p"
# 197 "data/maps/VerdanturfTown/scripts.pory"
	.string "I still want you to have this.$"
# 198 "data/maps/VerdanturfTown/scripts.pory"

# 199 "data/maps/VerdanturfTown/scripts.pory"
VerdanturfTown_Text_OldJudgeAfterReward:
# 200 "data/maps/VerdanturfTown/scripts.pory"
	.string "OLD JUDGE: Every battle needs\n"
# 201 "data/maps/VerdanturfTown/scripts.pory"
	.string "someone willing to make hard calls.\p"
# 202 "data/maps/VerdanturfTown/scripts.pory"
	.string "Thank you for remembering that.$"
