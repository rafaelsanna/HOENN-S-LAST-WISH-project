	.include "MPlayDef.s"

	.equ	mus_hope_grand_chase_grp, voicegroup_hope_grand_chase
	.equ	mus_hope_grand_chase_pri, 0
	.equ	mus_hope_grand_chase_rev, reverb_set+50
	.equ	mus_hope_grand_chase_mvl, 100
	.equ	mus_hope_grand_chase_key, 0
	.equ	mus_hope_grand_chase_tbs, 1
	.equ	mus_hope_grand_chase_exg, 1
	.equ	mus_hope_grand_chase_cmp, 1

	.section .rodata
	.global	mus_hope_grand_chase
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_hope_grand_chase_1:
	.byte	KEYSH , mus_hope_grand_chase_key+0
mus_hope_grand_chase_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 124*mus_hope_grand_chase_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_hope_grand_chase_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
mus_hope_grand_chase_1_010:
	.byte		N32   , As1 , v116, gtp3
	.byte	W36
	.byte		        As1 , v116, gtp3
	.byte	W36
	.byte		N23   , Fn2 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_hope_grand_chase_1_011:
	.byte		N32   , Fn1 , v116, gtp3
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N23   , Cn2 , v084
	.byte	W24
	.byte		N11   , Cn2 , v116
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_hope_grand_chase_1_012:
	.byte		N17   , Gn1 , v116
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N32   , Gn1 , v116, gtp3
	.byte	W36
	.byte		N23   , Fn1 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_hope_grand_chase_1_013:
	.byte		N17   , Ds2 , v116
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N23   , Ds2 
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_012
@ 017   ----------------------------------------
	.byte		N44   , Ds2 , v116, gtp3
	.byte	W48
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        Fn2 , v084
	.byte	W12
	.byte		N23   , Cn2 , v116
	.byte	W24
@ 018   ----------------------------------------
mus_hope_grand_chase_1_018:
	.byte		N11   , As1 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_hope_grand_chase_1_019:
	.byte		N11   , Fn2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
mus_hope_grand_chase_1_020:
	.byte		N11   , Gn1 , v116
	.byte	W12
	.byte		N02   , Gn2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N02   , Gn2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N02   , Gn2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N02   , Gn2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_hope_grand_chase_1_021:
	.byte		N11   , Ds2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 025   ----------------------------------------
mus_hope_grand_chase_1_025:
	.byte		N11   , Ds2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   , Fn2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N01   
	.byte	W01
	.byte		        En2 
	.byte	W02
	.byte		        Ds2 
	.byte	W01
	.byte		        Dn2 
	.byte	W02
	.byte		        Cs2 
	.byte	W01
	.byte		        Cn2 
	.byte	W02
	.byte		        Bn1 
	.byte	W01
	.byte		        As1 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        Gs2 
	.byte	W02
	.byte		N02   , Gn2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 027   ----------------------------------------
mus_hope_grand_chase_1_027:
	.byte		N11   , An1 , v116
	.byte	W12
	.byte		N02   , An2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N02   , An2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N02   , An2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N02   , An2 
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 029   ----------------------------------------
mus_hope_grand_chase_1_029:
	.byte		N11   , Dn2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
mus_hope_grand_chase_1_030:
	.byte		N11   , Ds2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 032   ----------------------------------------
mus_hope_grand_chase_1_032:
	.byte		N11   , Cn2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_032
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 044   ----------------------------------------
mus_hope_grand_chase_1_044:
	.byte		N11   , Gn2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 049   ----------------------------------------
mus_hope_grand_chase_1_049:
	.byte		N11   , Ds2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_025
@ 066   ----------------------------------------
mus_hope_grand_chase_1_066:
	.byte		N32   , As1 , v116
	.byte	W36
	.byte		N32   
	.byte	W36
	.byte		N20   , Fn2 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
mus_hope_grand_chase_1_067:
	.byte		N32   , Fn1 , v116
	.byte	W36
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N23   , Cn2 , v084
	.byte	W24
	.byte		N11   , Fn2 , v116
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_hope_grand_chase_1_068:
	.byte		N17   , Gn1 , v116
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N56   , Gn1 
	.byte	W60
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_013
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_068
@ 073   ----------------------------------------
	.byte		N42   , Ds2 , v116
	.byte	W48
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        Fn2 , v084
	.byte	W12
	.byte		N20   , Cn2 , v116
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_030
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_032
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_032
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_049
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_049
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_049
@ 122   ----------------------------------------
	.byte		N17   , As1 , v116
	.byte	W18
	.byte		        Dn2 
	.byte	W18
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_021
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_018
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_019
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_1_044
@ 130   ----------------------------------------
	.byte	TEMPO , 123*mus_hope_grand_chase_tbs/2
	.byte		N11   , Ds2 , v116
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 131   ----------------------------------------
	.byte	TEMPO , 122*mus_hope_grand_chase_tbs/2
	.byte		N90   , As1 
	.byte	W96
@ 132   ----------------------------------------
	.byte	W90
	.byte	GOTO
	 .word	mus_hope_grand_chase_1_B1
mus_hope_grand_chase_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_hope_grand_chase_2:
	.byte	KEYSH , mus_hope_grand_chase_key+0
mus_hope_grand_chase_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_hope_grand_chase_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N90   , As2 , v056
	.byte	W96
@ 003   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 004   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 005   ----------------------------------------
	.byte		N66   , As2 
	.byte	W72
	.byte		N20   , Dn3 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N90   , As2 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        An2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 009   ----------------------------------------
	.byte		N90   
	.byte	W96
@ 010   ----------------------------------------
mus_hope_grand_chase_2_010:
	.byte		N17   , As2 , v064
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_hope_grand_chase_2_011:
	.byte		N17   , Cn3 , v064
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_hope_grand_chase_2_012:
	.byte		N17   , Dn2 , v064
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_hope_grand_chase_2_013:
	.byte		N17   , As2 , v064
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_012
@ 017   ----------------------------------------
	.byte		N17   , As2 , v064
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 020   ----------------------------------------
mus_hope_grand_chase_2_020:
	.byte		N17   , Dn2 , v064
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_012
@ 025   ----------------------------------------
	.byte		N17   , As2 , v064
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 026   ----------------------------------------
mus_hope_grand_chase_2_026:
	.byte		N32   , Fn2 , v064
	.byte	W36
	.byte		N54   
	.byte	W60
	.byte	PEND
@ 027   ----------------------------------------
mus_hope_grand_chase_2_027:
	.byte		N32   , An2 , v064
	.byte	W36
	.byte		N54   
	.byte	W60
	.byte	PEND
@ 028   ----------------------------------------
mus_hope_grand_chase_2_028:
	.byte		N32   , As2 , v064
	.byte	W36
	.byte		N54   
	.byte	W60
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 030   ----------------------------------------
mus_hope_grand_chase_2_030:
	.byte		N32   , Gn2 , v064
	.byte	W36
	.byte		N54   
	.byte	W60
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 042   ----------------------------------------
mus_hope_grand_chase_2_042:
	.byte		N11   , Dn3 , v064
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte	PEND
@ 043   ----------------------------------------
mus_hope_grand_chase_2_043:
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte	PEND
@ 044   ----------------------------------------
mus_hope_grand_chase_2_044:
	.byte		N11   , As2 , v064
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte	PEND
@ 045   ----------------------------------------
mus_hope_grand_chase_2_045:
	.byte		N11   , As2 , v064
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 049   ----------------------------------------
mus_hope_grand_chase_2_049:
	.byte		N17   , As2 , v064
	.byte	W18
	.byte		N05   
	.byte	W18
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
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_045
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_013
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_020
@ 065   ----------------------------------------
mus_hope_grand_chase_2_065:
	.byte		N17   , As2 , v064
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W24
	.byte		        Cn3 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_020
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_013
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_010
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_020
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_065
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_028
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_026
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_030
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_027
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_045
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_049
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_045
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_045
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_049
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_045
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_049
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 124   ----------------------------------------
	.byte		N11   , Fn3 , v064
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   
	.byte	W36
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_045
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_042
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_043
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_044
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_2_049
@ 131   ----------------------------------------
	.byte		TIE   , Dn3 , v064
	.byte	W96
@ 132   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	GOTO
	 .word	mus_hope_grand_chase_2_B1
mus_hope_grand_chase_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_hope_grand_chase_3:
	.byte	KEYSH , mus_hope_grand_chase_key+0
mus_hope_grand_chase_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_hope_grand_chase_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W96
@ 001   ----------------------------------------
	.byte	W72
	.byte		N11   , Dn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 003   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Fn4 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Cn5 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N44   , Fn4 , v127, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N68   , Cn5 , v127, gtp3
	.byte	W72
	.byte		N23   , As4 
	.byte	W24
@ 008   ----------------------------------------
	.byte		N68   , As4 , v127, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
@ 009   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N28   , As4 , v127, gtp1
	.byte	W12
@ 010   ----------------------------------------
	.byte	W30
	.byte		N05   , An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		TIE   , As3 , v112
	.byte	W54
@ 011   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		N90   , As3 , v080
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte		N90   
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte		N90   
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Dn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 027   ----------------------------------------
mus_hope_grand_chase_3_027:
	.byte		N17   , Cn4 , v127
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N32   
	.byte	W60
	.byte	PEND
@ 028   ----------------------------------------
mus_hope_grand_chase_3_028:
	.byte	W12
	.byte		N05   , Dn4 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_hope_grand_chase_3_029:
	.byte		N17   , Cn4 , v127
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N32   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_hope_grand_chase_3_030:
	.byte		N32   , Ds4 , v127, gtp3
	.byte	W36
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N20   , As3 
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_hope_grand_chase_3_031:
	.byte	W12
	.byte		N11   , As3 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N32   , As3 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_hope_grand_chase_3_032:
	.byte		N20   , Gn4 , v127
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N68   , Fn4 , v127, gtp3
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_hope_grand_chase_3_033:
	.byte	W60
	.byte		N11   , Fn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_hope_grand_chase_3_034:
	.byte		N11   , Gn4 , v127
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_027
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_029
@ 038   ----------------------------------------
mus_hope_grand_chase_3_038:
	.byte		N32   , Ds4 , v127, gtp3
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N20   , Ds4 
	.byte	W24
	.byte		N23   , Fn4 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_hope_grand_chase_3_039:
	.byte	W12
	.byte		N11   , Fn4 , v127
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N32   , As3 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_hope_grand_chase_3_040:
	.byte		N20   , Gn4 , v127
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_hope_grand_chase_3_041:
	.byte	W24
	.byte		N20   , Fn4 , v127
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
mus_hope_grand_chase_3_042:
	.byte		N11   , As4 , v127
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 044   ----------------------------------------
mus_hope_grand_chase_3_044:
	.byte		N11   , Gn4 , v127
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		N32   , Gn4 
	.byte	W48
	.byte		N11   , Dn4 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N17   , Gn4 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 046   ----------------------------------------
mus_hope_grand_chase_3_046:
	.byte		N11   , Fn4 , v127
	.byte	W12
	.byte		N20   , Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N11   , As3 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
	.byte		        Fn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        As3 , v080
	.byte	W12
	.byte		N54   , As3 , v127
	.byte	W72
	.byte		N11   , Gn3 
	.byte	W12
@ 049   ----------------------------------------
mus_hope_grand_chase_3_049:
	.byte		N20   , Ds4 , v127
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_046
@ 051   ----------------------------------------
mus_hope_grand_chase_3_051:
	.byte		N11   , Fn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte		        As3 , v080
	.byte	W12
	.byte		N32   , Gn4 , v127
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 053   ----------------------------------------
mus_hope_grand_chase_3_053:
	.byte		N11   , Gn4 , v127
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N23   , As4 
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N20   , As4 
	.byte	W24
	.byte	PEND
@ 054   ----------------------------------------
mus_hope_grand_chase_3_054:
	.byte		N11   , As4 , v127
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte		N23   , Cn4 , v080
	.byte	W24
	.byte		N11   , Cn5 , v127
	.byte	W12
	.byte		N23   , As4 
	.byte	W24
	.byte		N20   , Cn5 
	.byte	W24
	.byte		N11   , Dn5 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        As3 , v080
	.byte	W12
	.byte		N05   , Cn5 , v127
	.byte	W06
	.byte		N40   , As4 , v127, gtp1
	.byte	W42
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 057   ----------------------------------------
	.byte		N20   , Ds5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		N44   , As4 , v127, gtp3
	.byte	W12
@ 058   ----------------------------------------
	.byte	W36
	.byte		N05   , An3 , v100
	.byte	W06
	.byte		TIE   , As3 
	.byte	W54
@ 059   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	W06
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		N90   , As3 , v088
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		N90   
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte		N90   
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Dn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_028
@ 077   ----------------------------------------
	.byte		N17   , Cn4 , v127
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N32   
	.byte	W36
	.byte		N20   , Fn4 
	.byte	W24
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_030
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_031
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_032
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_033
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_034
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_038
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_039
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_040
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_041
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_042
@ 091   ----------------------------------------
mus_hope_grand_chase_3_091:
	.byte		N11   , An4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N20   , Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_044
@ 093   ----------------------------------------
mus_hope_grand_chase_3_093:
	.byte		N11   , Gn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N32   , Gn4 
	.byte	W36
	.byte		N20   , Fn4 
	.byte	W24
	.byte	PEND
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_046
@ 095   ----------------------------------------
mus_hope_grand_chase_3_095:
	.byte		N11   , Fn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 096   ----------------------------------------
mus_hope_grand_chase_3_096:
	.byte		N11   , As3 , v088
	.byte	W12
	.byte		N44   , As3 , v127
	.byte	W48
	.byte		N20   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_049
@ 098   ----------------------------------------
mus_hope_grand_chase_3_098:
	.byte		N11   , As3 , v088
	.byte	W12
	.byte		        Fn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N20   , Fn4 
	.byte	W24
	.byte	PEND
@ 099   ----------------------------------------
	.byte		N11   , Cn4 , v088
	.byte	W12
	.byte		N05   , Fn4 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
@ 100   ----------------------------------------
	.byte		N11   , Dn4 , v088
	.byte	W12
	.byte		        Gn4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N20   , Gn4 
	.byte	W24
@ 101   ----------------------------------------
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   , As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N20   , Fn4 
	.byte	W24
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_098
@ 103   ----------------------------------------
	.byte		N11   , An3 , v088
	.byte	W12
	.byte		N05   , Fn4 , v127
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 104   ----------------------------------------
	.byte		        Gn3 , v088
	.byte	W12
	.byte		N23   , An4 , v127
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 105   ----------------------------------------
	.byte		N17   , Gn4 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   , An4 
	.byte	W12
	.byte		N20   , As4 
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 106   ----------------------------------------
	.byte		        As3 , v088
	.byte	W12
	.byte		        As4 , v127
	.byte	W24
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W18
	.byte		N11   
	.byte	W12
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_091
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_044
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_093
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_046
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_095
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_096
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_049
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_046
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_051
@ 116   ----------------------------------------
	.byte		N11   , Dn4 , v088
	.byte	W12
	.byte		N32   , Gn4 , v127
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_053
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_054
@ 119   ----------------------------------------
	.byte		N23   , Cn4 , v088
	.byte	W24
	.byte		N11   , Cn5 , v127
	.byte	W12
	.byte		N23   , As4 
	.byte	W24
	.byte		N20   , Cn5 
	.byte	W24
	.byte		N11   , Dn5 
	.byte	W12
@ 120   ----------------------------------------
	.byte		        As3 , v088
	.byte	W12
	.byte		N05   , Cn5 , v127
	.byte	W06
	.byte		N40   , As4 , v127, gtp1
	.byte	W42
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 121   ----------------------------------------
	.byte		N20   , Ds5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		N11   , As4 
	.byte	W12
	.byte		        Cn4 , v088
	.byte	W12
	.byte		        Cn5 , v127
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 122   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		N32   , As4 
	.byte	W36
	.byte		N02   
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		N01   , Gs4 
	.byte	W01
	.byte		        An4 
	.byte	W02
	.byte		        As4 
	.byte	W01
	.byte		        Bn4 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte		        Cs5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		        Fs4 
	.byte	W01
	.byte		        Gn4 
	.byte	W02
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_3_042
@ 124   ----------------------------------------
	.byte		N11   , An4 , v127
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N20   , Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
@ 125   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        As4 
	.byte	W06
	.byte		N23   , Gn4 
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N05   , Dn5 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 126   ----------------------------------------
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   , As4 
	.byte	W06
	.byte		N17   , Gn4 
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N20   , Fn4 
	.byte	W24
@ 127   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 128   ----------------------------------------
	.byte		        An3 , v088
	.byte	W12
	.byte		        An4 , v127
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N23   , Cn5 
	.byte	W24
	.byte		N20   , An4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 129   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		N32   , Gn4 
	.byte	W48
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 130   ----------------------------------------
	.byte		N17   , Gn4 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An3 , v088
	.byte	W12
	.byte		        Cn5 , v127
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 131   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		TIE   , As4 
	.byte	W84
@ 132   ----------------------------------------
	.byte	W90
	.byte		EOT   
	.byte	GOTO
	 .word	mus_hope_grand_chase_3_B1
mus_hope_grand_chase_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_hope_grand_chase_4:
	.byte	KEYSH , mus_hope_grand_chase_key+0
mus_hope_grand_chase_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 88*mus_hope_grand_chase_mvl/mxv
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
@ 001   ----------------------------------------
mus_hope_grand_chase_4_001:
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 006   ----------------------------------------
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_001
@ 010   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        An4 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v048
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        An4 , v056
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        An4 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v068
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        An4 , v072
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		        An4 , v076
	.byte	W12
@ 012   ----------------------------------------
mus_hope_grand_chase_4_012:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte		N02   , An4 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_012
@ 016   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Dn1 
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v052
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W01
	.byte		N01   , Dn1 , v092
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N02   , Cn1 
	.byte		N02   , An4 , v044
	.byte	W01
	.byte		N01   , Dn1 , v092
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N02   , Cn1 
	.byte		N01   , Dn1 
	.byte	W01
	.byte		N01   
	.byte	W02
	.byte		N01   
	.byte	W01
	.byte		N01   
	.byte	W02
@ 018   ----------------------------------------
mus_hope_grand_chase_4_018:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
mus_hope_grand_chase_4_019:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 025   ----------------------------------------
mus_hope_grand_chase_4_025:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 041   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 048   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 057   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 065   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
@ 066   ----------------------------------------
mus_hope_grand_chase_4_066:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte	PEND
@ 067   ----------------------------------------
mus_hope_grand_chase_4_067:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_066
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_067
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_066
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_066
@ 073   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Cn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_025
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 089   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 097   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
@ 098   ----------------------------------------
mus_hope_grand_chase_4_098:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte	PEND
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_098
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_098
@ 101   ----------------------------------------
mus_hope_grand_chase_4_101:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte	PEND
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_101
@ 103   ----------------------------------------
mus_hope_grand_chase_4_103:
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v064
	.byte	W12
	.byte		        An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte	PEND
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_103
@ 105   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        An4 , v044
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        An4 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_025
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 122   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An2 
	.byte	W12
	.byte		        An4 , v080
	.byte	W24
	.byte		        An4 , v064
	.byte	W36
	.byte		        Cn1 , v092
	.byte		N02   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_019
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_hope_grand_chase_4_018
@ 130   ----------------------------------------
	.byte		N02   , Cn1 , v092
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W12
	.byte		        Gs1 , v092
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Gs1 , v092
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N02   , An4 , v064
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N02   , An4 , v052
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v044
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N02   , Gs1 
	.byte	W06
@ 131   ----------------------------------------
	.byte		        Cn1 
	.byte		N02   , An4 , v080
	.byte	W96
@ 132   ----------------------------------------
	.byte	W90
	.byte	GOTO
	 .word	mus_hope_grand_chase_4_B1
mus_hope_grand_chase_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_hope_grand_chase:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_hope_grand_chase_pri	@ Priority
	.byte	mus_hope_grand_chase_rev	@ Reverb.

	.word	mus_hope_grand_chase_grp

	.word	mus_hope_grand_chase_1
	.word	mus_hope_grand_chase_2
	.word	mus_hope_grand_chase_3
	.word	mus_hope_grand_chase_4

	.end
