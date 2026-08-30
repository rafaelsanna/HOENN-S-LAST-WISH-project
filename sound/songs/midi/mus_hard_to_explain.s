	.include "MPlayDef.s"

	.equ	mus_hard_to_explain_grp, voicegroup_hard_to_explain
	.equ	mus_hard_to_explain_pri, 0
	.equ	mus_hard_to_explain_rev, reverb_set+50
	.equ	mus_hard_to_explain_mvl, 100
	.equ	mus_hard_to_explain_key, 0
	.equ	mus_hard_to_explain_tbs, 1
	.equ	mus_hard_to_explain_exg, 1
	.equ	mus_hard_to_explain_cmp, 1

	.section .rodata
	.global	mus_hard_to_explain
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_hard_to_explain_1:
	.byte	KEYSH , mus_hard_to_explain_key+0
mus_hard_to_explain_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 168*mus_hard_to_explain_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_hard_to_explain_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_hard_to_explain_1_005:
	.byte		N11   , Gn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_hard_to_explain_1_006:
	.byte		N11   , En2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_hard_to_explain_1_007:
	.byte		N11   , An1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 011   ----------------------------------------
mus_hard_to_explain_1_011:
	.byte		N11   , Dn2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 015   ----------------------------------------
mus_hard_to_explain_1_015:
	.byte		N11   , Cn2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 019   ----------------------------------------
mus_hard_to_explain_1_019:
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_hard_to_explain_1_020:
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 022   ----------------------------------------
mus_hard_to_explain_1_022:
	.byte		N11   , Gn2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_020
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_022
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 061   ----------------------------------------
mus_hard_to_explain_1_061:
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 063   ----------------------------------------
mus_hard_to_explain_1_063:
	.byte		N11   , An2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 087   ----------------------------------------
	.byte		N11   , Bn1 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W72
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_020
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_022
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_005
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_011
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_015
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_007
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_006
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_063
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_019
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_1_061
@ 154   ----------------------------------------
	.byte		N11   , An2 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_hard_to_explain_1_B1
mus_hard_to_explain_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_hard_to_explain_2:
	.byte	KEYSH , mus_hard_to_explain_key+0
mus_hard_to_explain_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_hard_to_explain_mvl/mxv
	.byte		PAN   , c_v-14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_hard_to_explain_2_004:
	.byte		N11   , Dn2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_hard_to_explain_2_005:
	.byte		N11   , Bn2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_hard_to_explain_2_006:
	.byte		N11   , En2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 010   ----------------------------------------
mus_hard_to_explain_2_010:
	.byte		N11   , An2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 014   ----------------------------------------
mus_hard_to_explain_2_014:
	.byte		N11   , Gn2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 018   ----------------------------------------
mus_hard_to_explain_2_018:
	.byte		N11   , Gn1 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 056   ----------------------------------------
mus_hard_to_explain_2_056:
	.byte		N11   , Dn3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 086   ----------------------------------------
	.byte		N11   , Dn3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W72
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_005
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_018
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_005
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_004
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_010
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_014
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_006
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_2_056
@ 153   ----------------------------------------
	.byte		N11   , Dn3 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_hard_to_explain_2_B1
mus_hard_to_explain_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_hard_to_explain_3:
	.byte	KEYSH , mus_hard_to_explain_key+0
mus_hard_to_explain_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_hard_to_explain_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_hard_to_explain_3_004:
	.byte		N11   , Gn3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_hard_to_explain_3_005:
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 008   ----------------------------------------
mus_hard_to_explain_3_008:
	.byte		N23   , Cn3 , v096
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N24   , An2 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_hard_to_explain_3_009:
	.byte	W48
	.byte		N44   , Gn2 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 010   ----------------------------------------
mus_hard_to_explain_3_010:
	.byte		N23   , Dn3 , v096
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_hard_to_explain_3_011:
	.byte		N23   , Fs3 , v096
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 013   ----------------------------------------
mus_hard_to_explain_3_013:
	.byte		N44   , Fs3 , v096, gtp3
	.byte	W48
	.byte		        En3 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_hard_to_explain_3_014:
	.byte		N44   , Gn2 , v096, gtp3
	.byte	W48
	.byte		        An2 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_hard_to_explain_3_015:
	.byte		N32   , Bn2 , v096, gtp3
	.byte	W36
	.byte		N48   , An2 
	.byte	W60
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 023   ----------------------------------------
mus_hard_to_explain_3_023:
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_008
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 029   ----------------------------------------
mus_hard_to_explain_3_029:
	.byte		N23   , Fs3 , v096
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 031   ----------------------------------------
mus_hard_to_explain_3_031:
	.byte		N32   , Fs3 , v096, gtp3
	.byte	W36
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , An2 
	.byte	W36
	.byte	PEND
@ 032   ----------------------------------------
mus_hard_to_explain_3_032:
	.byte		N23   , Gn2 , v096
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_032
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_009
@ 046   ----------------------------------------
	.byte		N23   , Dn3 , v096
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_029
@ 048   ----------------------------------------
	.byte		N23   , Dn3 , v096
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_031
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_032
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_032
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
mus_hard_to_explain_3_056:
	.byte		N44   , Gn2 , v096, gtp3
	.byte	W48
	.byte		        Gn2 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 057   ----------------------------------------
mus_hard_to_explain_3_057:
	.byte		N44   , Dn3 , v096, gtp3
	.byte	W48
	.byte		        Dn3 , v096, gtp3
	.byte	W48
	.byte	PEND
@ 058   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W72
	.byte		        En3 
	.byte	W24
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
mus_hard_to_explain_3_061:
	.byte		N24   , Dn3 , v096
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
@ 062   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W84
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_057
@ 066   ----------------------------------------
mus_hard_to_explain_3_066:
	.byte		N48   , Fs3 , v096
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_061
@ 070   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 , v096
	.byte	W84
@ 071   ----------------------------------------
mus_hard_to_explain_3_071:
	.byte	W72
	.byte		N11   , Bn2 , v096
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
mus_hard_to_explain_3_072:
	.byte	W12
	.byte		N11   , Bn2 , v096
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
mus_hard_to_explain_3_073:
	.byte	W12
	.byte		N11   , Bn2 , v096
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
mus_hard_to_explain_3_074:
	.byte	W12
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
mus_hard_to_explain_3_075:
	.byte	W12
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_074
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_075
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_074
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_075
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 086   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N24   , An2 
	.byte	W72
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_005
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_013
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_014
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_014
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_023
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_004
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_008
@ 111   ----------------------------------------
	.byte	W48
	.byte		N32   , Gn2 , v096, gtp3
	.byte	W36
	.byte		N11   , An2 
	.byte	W12
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_011
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_010
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_031
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_032
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_014
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_015
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_056
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_057
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_066
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_061
@ 128   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 , v096
	.byte	W84
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_056
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_057
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_066
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_061
@ 136   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn2 , v096
	.byte	W84
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_071
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_074
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_075
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_074
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_075
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_074
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_075
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_072
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_073
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_3_074
@ 153   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn2 , v096
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte	GOTO
	 .word	mus_hard_to_explain_3_B1
mus_hard_to_explain_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_hard_to_explain_4:
	.byte	KEYSH , mus_hard_to_explain_key+0
mus_hard_to_explain_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_hard_to_explain_mvl/mxv
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
@ 001   ----------------------------------------
mus_hard_to_explain_4_001:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 040   ----------------------------------------
mus_hard_to_explain_4_040:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte		N01   , Ds2 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_040
@ 056   ----------------------------------------
mus_hard_to_explain_4_056:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 063   ----------------------------------------
mus_hard_to_explain_4_063:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 068   ----------------------------------------
mus_hard_to_explain_4_068:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_068
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_068
@ 071   ----------------------------------------
mus_hard_to_explain_4_071:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
mus_hard_to_explain_4_072:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 086   ----------------------------------------
	.byte		N01   , Cs2 , v068
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Dn1 
	.byte	W72
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_001
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_063
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_056
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_068
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_068
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_068
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_071
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_hard_to_explain_4_072
@ 153   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	GOTO
	 .word	mus_hard_to_explain_4_B1
mus_hard_to_explain_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_hard_to_explain:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_hard_to_explain_pri	@ Priority
	.byte	mus_hard_to_explain_rev	@ Reverb.

	.word	mus_hard_to_explain_grp

	.word	mus_hard_to_explain_1
	.word	mus_hard_to_explain_2
	.word	mus_hard_to_explain_3
	.word	mus_hard_to_explain_4

	.end
