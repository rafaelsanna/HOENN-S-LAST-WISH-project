	.include "MPlayDef.s"

	.equ	mus_disorder_grp, voicegroup_hlw_indie_guitar
	.equ	mus_disorder_pri, 0
	.equ	mus_disorder_rev, reverb_set+35
	.equ	mus_disorder_mvl, 96
	.equ	mus_disorder_key, 0
	.equ	mus_disorder_tbs, 1
	.equ	mus_disorder_exg, 1
	.equ	mus_disorder_cmp, 1

	.section .rodata
	.global	mus_disorder
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_disorder_1:
	.byte		VOL   , 127*mus_disorder_mvl/mxv
	.byte	KEYSH , mus_disorder_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 170*mus_disorder_tbs/2
	.byte		VOICE , 33
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 002   ----------------------------------------
mus_disorder_1_002:
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_disorder_1_003:
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , As0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_disorder_1_004:
	.byte		N12   , As0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_disorder_1_005:
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 026   ----------------------------------------
mus_disorder_1_026:
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 036   ----------------------------------------
mus_disorder_1_036:
	.byte		N12   , As0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N24   , Gn0 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_026
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_005
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_003
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_004
@ 113   ----------------------------------------
	.byte		N12   , Gn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 114   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 115   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 116   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
@ 117   ----------------------------------------
	.byte		        Dn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 118   ----------------------------------------
mus_disorder_1_118:
	.byte		N12   , Ds1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 119   ----------------------------------------
mus_disorder_1_119:
	.byte		N12   , Ds1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_118
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_119
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_118
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_119
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_1_119
@ 125   ----------------------------------------
	.byte		N24   , Ds1 , v080
	.byte	W30
	.byte	TEMPO , 168*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 167*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 166*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 165*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 163*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 162*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 161*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 160*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 158*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 157*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 156*mus_disorder_tbs/2
	.byte	W06
@ 126   ----------------------------------------
	.byte	TEMPO , 155*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 153*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 152*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 151*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 150*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 148*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 147*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 146*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 145*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 143*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 142*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 136*mus_disorder_tbs/2
	.byte	W06
@ 127   ----------------------------------------
	.byte	TEMPO , 135*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 133*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 132*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 131*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 130*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 125*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 123*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 122*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 121*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 120*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 118*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 117*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 116*mus_disorder_tbs/2
	.byte	W06
@ 128   ----------------------------------------
	.byte	TEMPO , 115*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 113*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 112*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 111*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 110*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 107*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 105*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 102*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 100*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 97*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 95*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 92*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 90*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 87*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 85*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 82*mus_disorder_tbs/2
	.byte	W06
@ 129   ----------------------------------------
	.byte	TEMPO , 80*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 77*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 75*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 72*mus_disorder_tbs/2
	.byte	W06
	.byte	TEMPO , 30*mus_disorder_tbs/2
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_disorder_2:
	.byte		VOL   , 127*mus_disorder_mvl/mxv
	.byte	KEYSH , mus_disorder_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		N24   , As2 , v080
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 001   ----------------------------------------
mus_disorder_2_001:
	.byte		N24   , As2 , v080
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		N36   , Fn3 
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_disorder_2_002:
	.byte		N24   , Fn2 , v080
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_disorder_2_003:
	.byte		N24   , Fn2 , v080
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N36   , Fn3 
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
mus_disorder_2_004:
	.byte		N24   , As2 , v080
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 025   ----------------------------------------
mus_disorder_2_025:
	.byte		N24   , As2 , v080
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N12   , As2 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_disorder_2_026:
	.byte		N24   , Fn3 , v080
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N48   , Cn3 
	.byte	W48
	.byte	PEND
@ 027   ----------------------------------------
mus_disorder_2_027:
	.byte	W24
	.byte		N36   , As2 , v080
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte	PEND
@ 028   ----------------------------------------
mus_disorder_2_028:
	.byte		N24   , As2 , v080
	.byte	W48
	.byte		N36   , Cn3 
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_disorder_2_029:
	.byte		N24   , Cn3 , v080
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte	PEND
@ 030   ----------------------------------------
mus_disorder_2_030:
	.byte		N24   , Cn3 , v080
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N48   , Cn3 
	.byte	W48
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_029
@ 034   ----------------------------------------
mus_disorder_2_034:
	.byte		N24   , Cn3 , v080
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_disorder_2_035:
	.byte		N12   , Dn3 , v080
	.byte	W12
	.byte		        Ds3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_disorder_2_036:
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
mus_disorder_2_037:
	.byte		N12   , Ds3 , v080
	.byte	W12
	.byte		        Fn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_disorder_2_038:
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_037
@ 042   ----------------------------------------
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_030
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_027
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_028
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_029
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_035
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_037
@ 082   ----------------------------------------
	.byte		N12   , Fn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte	W24
@ 083   ----------------------------------------
mus_disorder_2_083:
	.byte		N12   , Fn2 , v080
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 084   ----------------------------------------
mus_disorder_2_084:
	.byte		N12   , Fn2 , v080
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
mus_disorder_2_085:
	.byte		N12   , Fn2 , v080
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Dn3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
mus_disorder_2_086:
	.byte		N12   , Gn2 , v080
	.byte		N12   , Dn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , As2 
	.byte		N24   , Fn3 
	.byte	W24
	.byte	PEND
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_084
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_085
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_086
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_2_083
@ 124   ----------------------------------------
	.byte		N12   , Fn2 , v080
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W84
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_disorder_3:
	.byte		VOL   , 127*mus_disorder_mvl/mxv
	.byte	KEYSH , mus_disorder_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
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
mus_disorder_3_008:
	.byte	W48
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_disorder_3_009:
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_disorder_3_010:
	.byte		N12   , Fn2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , As1 
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_disorder_3_012:
	.byte	W36
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_008
@ 017   ----------------------------------------
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W36
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
mus_disorder_3_020:
	.byte	W36
	.byte		N12   , As1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_disorder_3_021:
	.byte		N12   , Dn2 , v080
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
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
	.byte	PATT
	 .word	mus_disorder_3_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_008
@ 053   ----------------------------------------
mus_disorder_3_053:
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 054   ----------------------------------------
mus_disorder_3_054:
	.byte		N12   , Fn2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		        As1 
	.byte	W36
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_053
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_054
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_020
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_021
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
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
	.byte	PATT
	 .word	mus_disorder_3_012
@ 089   ----------------------------------------
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W60
	.byte		N12   
	.byte	W12
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_008
@ 097   ----------------------------------------
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   
	.byte	W48
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_010
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_012
@ 101   ----------------------------------------
mus_disorder_3_101:
	.byte		N12   , Ds2 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N36   , Fn2 
	.byte	W12
	.byte	PEND
@ 102   ----------------------------------------
mus_disorder_3_102:
	.byte	W24
	.byte		N12   , Dn2 , v080
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , As1 
	.byte	W48
	.byte	PEND
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_012
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_101
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_102
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_101
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_102
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W84
	.byte		N12   , Cn3 , v080
	.byte	W12
@ 114   ----------------------------------------
mus_disorder_3_114:
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 115   ----------------------------------------
	.byte	W84
	.byte		N12   , Cn3 
	.byte	W12
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_114
@ 117   ----------------------------------------
	.byte	W84
	.byte		N12   , Cn3 , v080
	.byte	W12
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_114
@ 119   ----------------------------------------
	.byte	W84
	.byte		N12   , Cn3 , v080
	.byte	W12
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_114
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 123   ----------------------------------------
mus_disorder_3_123:
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_3_123
@ 125   ----------------------------------------
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		N48   
	.byte	W48
	.byte		        As2 
	.byte	W24
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_disorder_4:
	.byte		VOL   , 127*mus_disorder_mvl/mxv
	.byte	KEYSH , mus_disorder_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
@ 001   ----------------------------------------
mus_disorder_4_001:
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_disorder_4_002:
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 004   ----------------------------------------
mus_disorder_4_004:
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 025   ----------------------------------------
mus_disorder_4_025:
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Dn1 , v080
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		N12   , Dn1 , v044
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_disorder_4_026:
	.byte		N06   , Dn1 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_025
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_026
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_025
@ 074   ----------------------------------------
	.byte		N06   , Dn1 , v044
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_004
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_026
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_026
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_026
@ 115   ----------------------------------------
mus_disorder_4_115:
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W12
	.byte	PEND
@ 116   ----------------------------------------
mus_disorder_4_116:
	.byte		N12   , Dn1 , v044
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fs1 , v052
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_026
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_115
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_116
@ 121   ----------------------------------------
	.byte		N12   , Dn1 , v080
	.byte		N12   , Fs1 , v052
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn1 , v080
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Cn1 
	.byte	W24
@ 122   ----------------------------------------
mus_disorder_4_122:
	.byte		N06   , Dn1 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Cn1 
	.byte	W24
	.byte	PEND
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_122
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_122
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_122
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_disorder_4_122
@ 127   ----------------------------------------
	.byte		N06   , Dn1 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N48   , Cn1 
	.byte	W48
	.byte		N48   
	.byte	W24
@ 128   ----------------------------------------
	.byte	W24
	.byte		N96   
	.byte	W72
@ 129   ----------------------------------------
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

mus_disorder:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_disorder_pri	@ Priority
	.byte	mus_disorder_rev	@ Reverb.

	.word	mus_disorder_grp

	.word	mus_disorder_1
	.word	mus_disorder_2
	.word	mus_disorder_3
	.word	mus_disorder_4

	.end
