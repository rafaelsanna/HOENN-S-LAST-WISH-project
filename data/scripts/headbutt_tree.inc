HeadbuttTree::
# 2 "data/scripts/headbutt_tree.pory"
	msgbox HeadbuttTree_Text_0, MSGBOX_YESNO
# 3 "data/scripts/headbutt_tree.pory"
	compare VAR_RESULT, YES
	goto_if_eq HeadbuttTree_2
HeadbuttTree_1:
	end

HeadbuttTree_2:
# 4 "data/scripts/headbutt_tree.pory"
	closemessage
# 5 "data/scripts/headbutt_tree.pory"
	msgbox HeadbuttTree_Text_1, MSGBOX_YESNO
	goto HeadbuttTree_1


HeadbuttTree_Text_0:
# 2 "data/scripts/headbutt_tree.pory"
	.string "Headbutt this tree?$"

HeadbuttTree_Text_1:
# 5 "data/scripts/headbutt_tree.pory"
	.string "Use headbutt on this tree?$"
