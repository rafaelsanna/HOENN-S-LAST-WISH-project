	.include "MPlayDef.s"

	.equ	mus_aint_no_rest_for_the_wicked_grp, voicegroup_aint_no_rest_for_the_wicked
	.equ	mus_aint_no_rest_for_the_wicked_pri, 0
	.equ	mus_aint_no_rest_for_the_wicked_rev, reverb_set+50
	.equ	mus_aint_no_rest_for_the_wicked_mvl, 100
	.equ	mus_aint_no_rest_for_the_wicked_key, 0
	.equ	mus_aint_no_rest_for_the_wicked_tbs, 1
	.equ	mus_aint_no_rest_for_the_wicked_exg, 1
	.equ	mus_aint_no_rest_for_the_wicked_cmp, 1

	.section .rodata
	.global	mus_aint_no_rest_for_the_wicked
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_aint_no_rest_for_the_wicked_1:
	.byte	KEYSH , mus_aint_no_rest_for_the_wicked_key+0
mus_aint_no_rest_for_the_wicked_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 135*mus_aint_no_rest_for_the_wicked_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_aint_no_rest_for_the_wicked_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
mus_aint_no_rest_for_the_wicked_1_041:
	.byte		N11   , Gn0 , v104
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 042   ----------------------------------------
mus_aint_no_rest_for_the_wicked_1_042:
	.byte		N11   , As0 , v104
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 043   ----------------------------------------
mus_aint_no_rest_for_the_wicked_1_043:
	.byte		N11   , Cn1 , v104
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 044   ----------------------------------------
mus_aint_no_rest_for_the_wicked_1_044:
	.byte		N11   , As0 , v104
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N11   , Fn0 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 058   ----------------------------------------
mus_aint_no_rest_for_the_wicked_1_058:
	.byte		N12   , As0 , v104
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_042
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_043
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_044
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_058
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_1_041
@ 112   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_aint_no_rest_for_the_wicked_1_B1
mus_aint_no_rest_for_the_wicked_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_aint_no_rest_for_the_wicked_2:
	.byte	KEYSH , mus_aint_no_rest_for_the_wicked_key+0
mus_aint_no_rest_for_the_wicked_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 42*mus_aint_no_rest_for_the_wicked_mvl/mxv
	.byte		PAN   , c_v-14
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
mus_aint_no_rest_for_the_wicked_2_008:
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
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
@ 009   ----------------------------------------
mus_aint_no_rest_for_the_wicked_2_009:
	.byte		N11   , Fn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
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
@ 010   ----------------------------------------
mus_aint_no_rest_for_the_wicked_2_010:
	.byte		N11   , En2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
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
mus_aint_no_rest_for_the_wicked_2_011:
	.byte		N11   , Fn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_aint_no_rest_for_the_wicked_2_012:
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
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
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 025   ----------------------------------------
mus_aint_no_rest_for_the_wicked_2_025:
	.byte		N11   , Fn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 070   ----------------------------------------
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_025
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_2_012
@ 111   ----------------------------------------
	.byte		N11   , Dn2 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N48   
	.byte	W48
	.byte	GOTO
	 .word	mus_aint_no_rest_for_the_wicked_2_B1
mus_aint_no_rest_for_the_wicked_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_aint_no_rest_for_the_wicked_3:
	.byte	KEYSH , mus_aint_no_rest_for_the_wicked_key+0
mus_aint_no_rest_for_the_wicked_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 72*mus_aint_no_rest_for_the_wicked_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		N11   , Gn2 , v064
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
@ 001   ----------------------------------------
mus_aint_no_rest_for_the_wicked_3_001:
	.byte		N11   , As2 , v064
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		        Cn3 
	.byte	W60
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
@ 003   ----------------------------------------
mus_aint_no_rest_for_the_wicked_3_003:
	.byte	W12
	.byte		N23   , As2 , v064
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W48
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_001
@ 006   ----------------------------------------
	.byte		N11   , Gn2 , v064
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W72
@ 007   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , As2 
	.byte	W36
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W36
	.byte		N48   , Cn3 
	.byte	W60
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_003
@ 028   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn3 , v064
	.byte	W48
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_003
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
mus_aint_no_rest_for_the_wicked_3_035:
	.byte	W36
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N12   
	.byte	W48
	.byte	PEND
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W36
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W36
	.byte		N48   , Cn3 
	.byte	W60
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_003
@ 060   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn3 , v064
	.byte	W48
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_003
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_035
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
mus_aint_no_rest_for_the_wicked_3_072:
	.byte		N44   , As3 , v064, gtp3
	.byte	W48
	.byte		N23   , Fn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 073   ----------------------------------------
mus_aint_no_rest_for_the_wicked_3_073:
	.byte		N68   , As2 , v064, gtp3
	.byte	W72
	.byte		N23   , Fn3 
	.byte	W24
	.byte	PEND
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_072
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_073
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_072
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_072
@ 079   ----------------------------------------
	.byte		N44   , As3 , v064, gtp3
	.byte	W48
	.byte		N24   , Fn3 
	.byte	W48
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W36
	.byte		N48   , Cn3 
	.byte	W60
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_003
@ 100   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn3 , v064
	.byte	W48
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_003
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_3_035
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_aint_no_rest_for_the_wicked_3_B1
mus_aint_no_rest_for_the_wicked_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_aint_no_rest_for_the_wicked_4:
	.byte	KEYSH , mus_aint_no_rest_for_the_wicked_key+0
mus_aint_no_rest_for_the_wicked_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 104*mus_aint_no_rest_for_the_wicked_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W96
@ 001   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_001:
	.byte	W60
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_001
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_001
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_007:
	.byte	W72
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_008:
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_009:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_010:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_011:
	.byte		N24   , Dn3 , v092
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_012:
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N32   , Cn3 , v092, gtp3
	.byte	W36
	.byte		N11   , Bn2 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_013:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_014:
	.byte		N11   , Cn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_015:
	.byte	W12
	.byte		N36   , Gn2 , v092
	.byte	W60
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_015
@ 024   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_024:
	.byte		N23   , Gn2 , v092
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_025:
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W84
	.byte	PEND
@ 026   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_026:
	.byte		N11   , Gn2 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , As2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_027:
	.byte	W60
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_028:
	.byte		N23   , Gn2 , v092
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_029:
	.byte		N23   , Fn3 , v092
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_030:
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_031:
	.byte	W60
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_032:
	.byte		N23   , Gn2 , v092
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N24   , Dn3 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_033:
	.byte		N11   , Fn3 , v092
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_034:
	.byte		N24   , Dn3 , v092
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_035:
	.byte		N24   , Gn2 , v092
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_024
@ 037   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_037:
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W48
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_aint_no_rest_for_the_wicked_4_038:
	.byte		N11   , Dn3 , v092
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_013
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_012
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_013
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_031
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_032
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_024
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_038
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_007
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_008
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_013
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_014
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_015
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_013
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_024
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_025
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_026
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_027
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_028
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_029
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_030
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_031
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_032
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_033
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_034
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_035
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_024
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_037
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_4_038
@ 111   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_aint_no_rest_for_the_wicked_4_B1
mus_aint_no_rest_for_the_wicked_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_aint_no_rest_for_the_wicked_5:
	.byte	KEYSH , mus_aint_no_rest_for_the_wicked_key+0
mus_aint_no_rest_for_the_wicked_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 78*mus_aint_no_rest_for_the_wicked_mvl/mxv
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
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
mus_aint_no_rest_for_the_wicked_5_040:
	.byte		N01   , Cn1 , v052
	.byte	W24
	.byte		N01   
	.byte	W72
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_040
@ 056   ----------------------------------------
mus_aint_no_rest_for_the_wicked_5_056:
	.byte		N01   , Cn1 , v052
	.byte	W24
	.byte		N01   
	.byte	W60
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	W12
	.byte		N01   
	.byte	W84
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_056
@ 059   ----------------------------------------
	.byte	W12
	.byte		N01   , Cn1 , v052
	.byte	W84
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_056
@ 061   ----------------------------------------
	.byte	W12
	.byte		N01   , Cn1 , v052
	.byte	W84
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_056
@ 063   ----------------------------------------
	.byte	W12
	.byte		N01   , Cn1 , v052
	.byte	W84
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_056
@ 065   ----------------------------------------
	.byte	W12
	.byte		N01   , Cn1 , v052
	.byte	W84
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_056
@ 067   ----------------------------------------
	.byte	W12
	.byte		N01   , Cn1 , v052
	.byte	W84
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_056
@ 069   ----------------------------------------
	.byte	W12
	.byte		N01   , Cn1 , v052
	.byte	W84
@ 070   ----------------------------------------
mus_aint_no_rest_for_the_wicked_5_070:
	.byte		N01   , Cn1 , v052
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte	PEND
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 080   ----------------------------------------
mus_aint_no_rest_for_the_wicked_5_080:
	.byte		N01   , Cn1 , v052
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		N01   
	.byte	W36
	.byte	PEND
@ 081   ----------------------------------------
mus_aint_no_rest_for_the_wicked_5_081:
	.byte		N01   , Cn1 , v052
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_080
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_081
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_aint_no_rest_for_the_wicked_5_070
@ 109   ----------------------------------------
	.byte		N01   , Cn1 , v052
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_aint_no_rest_for_the_wicked_5_B1
mus_aint_no_rest_for_the_wicked_5_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_aint_no_rest_for_the_wicked:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_aint_no_rest_for_the_wicked_pri	@ Priority
	.byte	mus_aint_no_rest_for_the_wicked_rev	@ Reverb.

	.word	mus_aint_no_rest_for_the_wicked_grp

	.word	mus_aint_no_rest_for_the_wicked_1
	.word	mus_aint_no_rest_for_the_wicked_2
	.word	mus_aint_no_rest_for_the_wicked_3
	.word	mus_aint_no_rest_for_the_wicked_4
	.word	mus_aint_no_rest_for_the_wicked_5

	.end
